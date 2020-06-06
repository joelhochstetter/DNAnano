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
	<24.435991, 35.192417, 35.263321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262857, 34.981949, 34.970528>,  <24.158978, 34.855667, 34.794853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262857, 34.981949, 34.970528>,  <24.435991, 35.192417, 35.263321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262857, 34.981949, 34.970528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685320, 0.719576, -0.112011,
		0.585654, 0.453159, -0.672054,
		-0.432835, -0.526172, -0.731982,
		24.133007, 34.824097, 34.750935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925091, 35.667538, 34.791370>,  <24.435991, 35.192417, 35.263321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925091, 35.667538, 34.791370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227152, 35.411346, 34.735458>,  <25.408388, 35.257633, 34.701912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227152, 35.411346, 34.735458>,  <24.925091, 35.667538, 34.791370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227152, 35.411346, 34.735458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001501, 0.211533, -0.977370,
		0.655549, 0.738272, 0.158778,
		0.755151, -0.640475, -0.139778,
		25.453697, 35.219204, 34.693523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445772, 36.076283, 34.498386>,  <24.925091, 35.667538, 34.791370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445772, 36.076283, 34.498386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420990, 35.693657, 34.384441>,  <25.406120, 35.464081, 34.316074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420990, 35.693657, 34.384441>,  <25.445772, 36.076283, 34.498386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420990, 35.693657, 34.384441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162276, 0.291266, -0.942778,
		0.984799, -0.012183, -0.173272,
		-0.061954, -0.956565, -0.284861,
		25.402403, 35.406689, 34.298985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892374, 35.934826, 33.940910>,  <25.445772, 36.076283, 34.498386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892374, 35.934826, 33.940910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578316, 35.687122, 33.937645>,  <25.389881, 35.538502, 33.935684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578316, 35.687122, 33.937645>,  <25.892374, 35.934826, 33.940910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578316, 35.687122, 33.937645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046794, 0.072461, -0.996273,
		0.617541, -0.781837, -0.085870,
		-0.785146, -0.619258, -0.008162,
		25.342772, 35.501347, 33.935196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916750, 35.290276, 33.449066>,  <25.892374, 35.934826, 33.940910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916750, 35.290276, 33.449066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559105, 35.450291, 33.529598>,  <25.344519, 35.546299, 33.577915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559105, 35.450291, 33.529598>,  <25.916750, 35.290276, 33.449066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559105, 35.450291, 33.529598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096513, 0.266869, -0.958888,
		-0.437319, -0.876785, -0.200002,
		-0.894113, 0.400037, 0.201328,
		25.290871, 35.570301, 33.589996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232714, 34.895508, 33.275982>,  <25.916750, 35.290276, 33.449066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232714, 34.895508, 33.275982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208929, 35.294125, 33.252796>,  <25.194658, 35.533295, 33.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208929, 35.294125, 33.252796>,  <25.232714, 34.895508, 33.275982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208929, 35.294125, 33.252796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053476, -0.061167, -0.996694,
		-0.996797, -0.056165, 0.056929,
		-0.059461, 0.996546, -0.057968,
		25.191092, 35.593090, 33.235405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641851, 35.164162, 33.004665>,  <25.232714, 34.895508, 33.275982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641851, 35.164162, 33.004665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926939, 35.428360, 32.910198>,  <25.097992, 35.586880, 32.853519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926939, 35.428360, 32.910198>,  <24.641851, 35.164162, 33.004665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926939, 35.428360, 32.910198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021429, -0.316027, -0.948508,
		-0.701120, 0.681082, -0.211085,
		0.712721, 0.660495, -0.236168,
		25.140755, 35.626507, 32.839348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485619, 35.515148, 32.531372>,  <24.641851, 35.164162, 33.004665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485619, 35.515148, 32.531372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880854, 35.547504, 32.479004>,  <25.117994, 35.566917, 32.447582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880854, 35.547504, 32.479004>,  <24.485619, 35.515148, 32.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880854, 35.547504, 32.479004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126328, -0.059531, -0.990201,
		-0.087894, 0.994943, -0.048603,
		0.988087, 0.080893, -0.130922,
		25.177280, 35.571774, 32.439728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539730, 35.922958, 31.988649>,  <24.485619, 35.515148, 32.531372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539730, 35.922958, 31.988649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875692, 35.706047, 31.997494>,  <25.077271, 35.575901, 32.002800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875692, 35.706047, 31.997494>,  <24.539730, 35.922958, 31.988649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875692, 35.706047, 31.997494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075285, -0.156755, -0.984764,
		0.537483, 0.825446, -0.172485,
		0.839907, -0.542280, 0.022109,
		25.127665, 35.543362, 32.004128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822468, 36.029545, 31.316122>,  <24.539730, 35.922958, 31.988649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822468, 36.029545, 31.316122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010592, 35.703869, 31.452299>,  <25.123466, 35.508461, 31.534006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010592, 35.703869, 31.452299>,  <24.822468, 36.029545, 31.316122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010592, 35.703869, 31.452299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006858, -0.389131, -0.921157,
		0.882475, 0.430893, -0.188596,
		0.470309, -0.814191, 0.340443,
		25.151684, 35.459610, 31.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459736, 35.953819, 30.952744>,  <24.822468, 36.029545, 31.316122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459736, 35.953819, 30.952744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367346, 35.590794, 31.093019>,  <25.311913, 35.372978, 31.177185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367346, 35.590794, 31.093019>,  <25.459736, 35.953819, 30.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367346, 35.590794, 31.093019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119519, -0.384170, -0.915493,
		0.965591, -0.169543, 0.197205,
		-0.230975, -0.907562, 0.350688,
		25.298054, 35.318523, 31.198225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953678, 35.368870, 30.699289>,  <25.459736, 35.953819, 30.952744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953678, 35.368870, 30.699289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637024, 35.150368, 30.808769>,  <25.447031, 35.019264, 30.874458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637024, 35.150368, 30.808769>,  <25.953678, 35.368870, 30.699289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637024, 35.150368, 30.808769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016100, -0.429157, -0.903087,
		0.610779, -0.719324, 0.330942,
		-0.791638, -0.546258, 0.273701,
		25.399532, 34.986492, 30.890879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239197, 34.704975, 30.651524>,  <25.953678, 35.368870, 30.699289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239197, 34.704975, 30.651524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839411, 34.699280, 30.639721>,  <25.599539, 34.695862, 30.632639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839411, 34.699280, 30.639721>,  <26.239197, 34.704975, 30.651524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839411, 34.699280, 30.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032488, -0.546914, -0.836558,
		-0.004223, -0.837068, 0.547083,
		-0.999463, -0.014241, -0.029504,
		25.539572, 34.695007, 30.630869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097231, 34.078205, 30.308495>,  <26.239197, 34.704975, 30.651524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097231, 34.078205, 30.308495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738384, 34.251930, 30.276104>,  <25.523077, 34.356167, 30.256670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738384, 34.251930, 30.276104>,  <26.097231, 34.078205, 30.308495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738384, 34.251930, 30.276104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192057, -0.548443, -0.813833,
		-0.397868, -0.714550, 0.575430,
		-0.897115, 0.434313, -0.080974,
		25.469250, 34.382225, 30.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482368, 33.549610, 30.232927>,  <26.097231, 34.078205, 30.308495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482368, 33.549610, 30.232927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333929, 33.888336, 30.080507>,  <25.244865, 34.091572, 29.989056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333929, 33.888336, 30.080507>,  <25.482368, 33.549610, 30.232927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333929, 33.888336, 30.080507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151542, -0.460077, -0.874851,
		-0.916145, -0.266910, 0.299061,
		-0.371098, 0.846811, -0.381049,
		25.222599, 34.142380, 29.966192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840689, 33.296917, 29.796143>,  <25.482368, 33.549610, 30.232927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840689, 33.296917, 29.796143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937710, 33.654621, 29.645699>,  <24.995922, 33.869244, 29.555431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937710, 33.654621, 29.645699>,  <24.840689, 33.296917, 29.796143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937710, 33.654621, 29.645699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182210, -0.338794, -0.923048,
		-0.952873, 0.292420, 0.080768,
		0.242554, 0.894264, -0.376109,
		25.010475, 33.922901, 29.532866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484236, 33.415714, 29.205759>,  <24.840689, 33.296917, 29.796143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484236, 33.415714, 29.205759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780661, 33.681973, 29.170582>,  <24.958515, 33.841728, 29.149475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780661, 33.681973, 29.170582>,  <24.484236, 33.415714, 29.205759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780661, 33.681973, 29.170582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110401, -0.249997, -0.961932,
		-0.662295, 0.703144, -0.258752,
		0.741064, 0.665650, -0.087944,
		25.002979, 33.881668, 29.144199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293245, 33.785046, 28.634621>,  <24.484236, 33.415714, 29.205759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293245, 33.785046, 28.634621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676916, 33.890148, 28.676447>,  <24.907120, 33.953209, 28.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676916, 33.890148, 28.676447>,  <24.293245, 33.785046, 28.634621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676916, 33.890148, 28.676447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140005, -0.119946, -0.982859,
		-0.245714, 0.957377, -0.151837,
		0.959179, 0.262760, 0.104565,
		24.964670, 33.968975, 28.707817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377756, 34.345924, 28.186529>,  <24.293245, 33.785046, 28.634621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377756, 34.345924, 28.186529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749035, 34.214809, 28.256960>,  <24.971802, 34.136139, 28.299219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749035, 34.214809, 28.256960>,  <24.377756, 34.345924, 28.186529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749035, 34.214809, 28.256960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192497, 0.018061, -0.981131,
		0.318427, 0.944577, 0.079863,
		0.928197, -0.327792, 0.176077,
		25.027494, 34.116470, 28.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872599, 34.812939, 27.875648>,  <24.377756, 34.345924, 28.186529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872599, 34.812939, 27.875648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018229, 34.440952, 27.896118>,  <25.105606, 34.217762, 27.908400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018229, 34.440952, 27.896118>,  <24.872599, 34.812939, 27.875648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018229, 34.440952, 27.896118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164916, 0.010295, -0.986254,
		0.916652, 0.367511, 0.157114,
		0.364076, -0.929962, 0.051172,
		25.127451, 34.161964, 27.911470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571159, 34.833565, 27.509941>,  <24.872599, 34.812939, 27.875648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571159, 34.833565, 27.509941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488689, 34.442631, 27.529175>,  <25.439207, 34.208073, 27.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488689, 34.442631, 27.529175>,  <25.571159, 34.833565, 27.509941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488689, 34.442631, 27.529175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161544, -0.082462, -0.983414,
		0.965089, -0.194987, 0.174884,
		-0.206174, -0.977333, 0.048085,
		25.426838, 34.149429, 27.543600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019197, 34.585857, 27.107704>,  <25.571159, 34.833565, 27.509941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019197, 34.585857, 27.107704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737612, 34.302273, 27.124729>,  <25.568661, 34.132122, 27.134945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737612, 34.302273, 27.124729>,  <26.019197, 34.585857, 27.107704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737612, 34.302273, 27.124729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076416, -0.135184, -0.987869,
		0.706115, -0.692170, 0.149340,
		-0.703962, -0.708961, 0.042563,
		25.526423, 34.089584, 27.137499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183203, 34.238190, 26.479010>,  <26.019197, 34.585857, 27.107704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183203, 34.238190, 26.479010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838535, 34.064037, 26.583292>,  <25.631735, 33.959545, 26.645861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838535, 34.064037, 26.583292>,  <26.183203, 34.238190, 26.479010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838535, 34.064037, 26.583292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157090, -0.259655, -0.952839,
		0.482542, -0.861987, 0.155343,
		-0.861670, -0.435382, 0.260705,
		25.580034, 33.933422, 26.661503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233437, 33.580933, 26.242142>,  <26.183203, 34.238190, 26.479010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233437, 33.580933, 26.242142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861603, 33.728230, 26.235641>,  <25.638502, 33.816608, 26.231741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861603, 33.728230, 26.235641>,  <26.233437, 33.580933, 26.242142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861603, 33.728230, 26.235641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064636, -0.206248, -0.976363,
		-0.362895, -0.906562, 0.215527,
		-0.929586, 0.368248, -0.016250,
		25.582727, 33.838703, 26.230766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922302, 33.094280, 25.901794>,  <26.233437, 33.580933, 26.242142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922302, 33.094280, 25.901794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674034, 33.404438, 25.855270>,  <25.525074, 33.590534, 25.827356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674034, 33.404438, 25.855270>,  <25.922302, 33.094280, 25.901794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674034, 33.404438, 25.855270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055891, -0.191720, -0.979857,
		-0.782077, -0.601668, 0.162333,
		-0.620671, 0.775396, -0.116312,
		25.487833, 33.637058, 25.820377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426277, 32.808285, 25.540749>,  <25.922302, 33.094280, 25.901794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426277, 32.808285, 25.540749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469254, 33.202785, 25.490519>,  <25.495039, 33.439484, 25.460381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469254, 33.202785, 25.490519>,  <25.426277, 32.808285, 25.540749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469254, 33.202785, 25.490519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084512, -0.134911, -0.987247,
		-0.990613, 0.095459, -0.097844,
		0.107442, 0.986249, -0.125577,
		25.501486, 33.498661, 25.452845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970879, 33.058132, 24.914436>,  <25.426277, 32.808285, 25.540749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970879, 33.058132, 24.914436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293684, 33.281952, 24.989939>,  <25.487368, 33.416245, 25.035240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293684, 33.281952, 24.989939>,  <24.970879, 33.058132, 24.914436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293684, 33.281952, 24.989939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241903, -0.021654, -0.970059,
		-0.538710, 0.828513, -0.152832,
		0.807016, 0.559551, 0.188755,
		25.535789, 33.449818, 25.046566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960283, 33.458660, 24.329420>,  <24.970879, 33.058132, 24.914436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960283, 33.458660, 24.329420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328974, 33.527943, 24.468227>,  <25.550188, 33.569511, 24.551512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328974, 33.527943, 24.468227>,  <24.960283, 33.458660, 24.329420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328974, 33.527943, 24.468227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336693, 0.086759, -0.937609,
		-0.192503, 0.981057, 0.021652,
		0.921727, 0.173203, 0.347016,
		25.605492, 33.579903, 24.572332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231619, 33.964962, 23.986702>,  <24.960283, 33.458660, 24.329420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231619, 33.964962, 23.986702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526606, 33.737511, 24.132471>,  <25.703598, 33.601040, 24.219933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526606, 33.737511, 24.132471>,  <25.231619, 33.964962, 23.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526606, 33.737511, 24.132471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177518, -0.357413, -0.916921,
		0.651635, 0.740892, -0.162639,
		0.737468, -0.568626, 0.364424,
		25.747847, 33.566921, 24.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860907, 34.154743, 23.676836>,  <25.231619, 33.964962, 23.986702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860907, 34.154743, 23.676836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876284, 33.761925, 23.750715>,  <25.885509, 33.526234, 23.795042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876284, 33.761925, 23.750715>,  <25.860907, 34.154743, 23.676836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876284, 33.761925, 23.750715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054725, -0.186627, -0.980906,
		0.997761, 0.027602, -0.060917,
		0.038444, -0.982043, 0.184698,
		25.887817, 33.467312, 23.806126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881754, 34.925186, 23.585701>,  <25.860907, 34.154743, 23.676836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881754, 34.925186, 23.585701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982807, 35.164375, 23.889967>,  <26.043440, 35.307888, 24.072527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982807, 35.164375, 23.889967>,  <25.881754, 34.925186, 23.585701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982807, 35.164375, 23.889967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579891, 0.722901, -0.375687,
		-0.774534, -0.346191, 0.529386,
		0.252634, 0.597968, 0.760664,
		26.058598, 35.343765, 24.118166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354902, 35.253052, 24.036148>,  <25.881754, 34.925186, 23.585701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354902, 35.253052, 24.036148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665577, 35.503586, 24.009428>,  <25.851982, 35.653908, 23.993397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665577, 35.503586, 24.009428>,  <25.354902, 35.253052, 24.036148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665577, 35.503586, 24.009428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616375, 0.733884, -0.285477,
		-0.129783, 0.262898, 0.956055,
		0.776684, 0.626338, -0.066798,
		25.898582, 35.691486, 23.989389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186262, 35.590515, 24.663836>,  <25.354902, 35.253052, 24.036148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186262, 35.590515, 24.663836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867607, 35.392448, 24.525169>,  <24.676414, 35.273609, 24.441969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867607, 35.392448, 24.525169>,  <25.186262, 35.590515, 24.663836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867607, 35.392448, 24.525169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529819, 0.848088, 0.006150,
		0.290959, 0.188571, -0.937968,
		-0.796640, -0.495164, -0.346668,
		24.628614, 35.243900, 24.421169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813272, 35.925159, 24.022078>,  <25.186262, 35.590515, 24.663836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813272, 35.925159, 24.022078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566034, 35.752029, 24.284565>,  <24.417692, 35.648151, 24.442057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566034, 35.752029, 24.284565>,  <24.813272, 35.925159, 24.022078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566034, 35.752029, 24.284565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664166, 0.734094, -0.141387,
		-0.420528, -0.523227, -0.741208,
		-0.618094, -0.432828, 0.656216,
		24.380606, 35.622181, 24.481430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345098, 35.871086, 23.506878>,  <24.813272, 35.925159, 24.022078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345098, 35.871086, 23.506878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409916, 36.183956, 23.266232>,  <25.448807, 36.371677, 23.121843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409916, 36.183956, 23.266232>,  <25.345098, 35.871086, 23.506878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409916, 36.183956, 23.266232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838038, 0.212808, 0.502400,
		0.520994, -0.585589, -0.621009,
		0.162044, 0.782176, -0.601617,
		25.458529, 36.418610, 23.085747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094063, 35.878651, 23.272457>,  <25.345098, 35.871086, 23.506878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094063, 35.878651, 23.272457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956266, 36.254147, 23.268497>,  <25.873589, 36.479443, 23.266121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956266, 36.254147, 23.268497>,  <26.094063, 35.878651, 23.272457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956266, 36.254147, 23.268497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750169, 0.281601, 0.598288,
		0.564422, 0.198680, -0.801220,
		-0.344492, 0.938737, -0.009899,
		25.852919, 36.535767, 23.265528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750305, 36.368492, 23.222794>,  <26.094063, 35.878651, 23.272457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750305, 36.368492, 23.222794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436007, 36.556458, 23.383684>,  <26.247427, 36.669235, 23.480219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436007, 36.556458, 23.383684>,  <26.750305, 36.368492, 23.222794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436007, 36.556458, 23.383684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576399, 0.320331, 0.751766,
		0.224417, 0.822541, -0.522554,
		-0.785749, 0.469909, 0.402224,
		26.200281, 36.697430, 23.504351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012859, 36.928593, 23.544100>,  <26.750305, 36.368492, 23.222794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012859, 36.928593, 23.544100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657299, 36.891560, 23.723560>,  <26.443964, 36.869339, 23.831236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657299, 36.891560, 23.723560>,  <27.012859, 36.928593, 23.544100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657299, 36.891560, 23.723560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364808, 0.449305, 0.815500,
		-0.277080, 0.888568, -0.365613,
		-0.888899, -0.092580, 0.448650,
		26.390629, 36.863785, 23.858156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064995, 37.462540, 23.854977>,  <27.012859, 36.928593, 23.544100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064995, 37.462540, 23.854977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772089, 37.256969, 24.033716>,  <26.596346, 37.133629, 24.140961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772089, 37.256969, 24.033716>,  <27.064995, 37.462540, 23.854977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772089, 37.256969, 24.033716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188945, 0.477072, 0.858314,
		-0.654287, 0.712940, -0.252239,
		-0.732262, -0.513925, 0.446848,
		26.552410, 37.102791, 24.167770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596102, 37.934513, 24.361759>,  <27.064995, 37.462540, 23.854977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596102, 37.934513, 24.361759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574501, 37.549973, 24.469753>,  <26.561541, 37.319248, 24.534550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574501, 37.549973, 24.469753>,  <26.596102, 37.934513, 24.361759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574501, 37.549973, 24.469753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147910, 0.259694, 0.954297,
		-0.987526, 0.091465, 0.128170,
		-0.054000, -0.961350, 0.269983,
		26.558300, 37.261566, 24.550749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139145, 37.980537, 24.980970>,  <26.596102, 37.934513, 24.361759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139145, 37.980537, 24.980970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344757, 37.637428, 24.981487>,  <26.468124, 37.431564, 24.981798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344757, 37.637428, 24.981487>,  <26.139145, 37.980537, 24.980970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344757, 37.637428, 24.981487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099966, 0.061404, 0.993094,
		-0.851928, -0.510350, 0.117311,
		0.514029, -0.857772, 0.001294,
		26.498966, 37.380096, 24.981876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907616, 37.495667, 25.548714>,  <26.139145, 37.980537, 24.980970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907616, 37.495667, 25.548714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276505, 37.368481, 25.460714>,  <26.497839, 37.292168, 25.407915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276505, 37.368481, 25.460714>,  <25.907616, 37.495667, 25.548714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276505, 37.368481, 25.460714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166667, -0.186502, 0.968214,
		-0.348893, -0.929577, -0.119002,
		0.922223, -0.317969, -0.219998,
		26.553171, 37.273090, 25.394714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932695, 36.918476, 25.985647>,  <25.907616, 37.495667, 25.548714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932695, 36.918476, 25.985647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318886, 36.985863, 25.906176>,  <26.550600, 37.026295, 25.858492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318886, 36.985863, 25.906176>,  <25.932695, 36.918476, 25.985647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318886, 36.985863, 25.906176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228004, -0.177690, 0.957309,
		0.125971, -0.969559, -0.209967,
		0.965477, 0.168466, -0.198679,
		26.608528, 37.036404, 25.846571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312059, 36.429478, 26.458902>,  <25.932695, 36.918476, 25.985647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312059, 36.429478, 26.458902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567743, 36.715939, 26.346807>,  <26.721153, 36.887814, 26.279551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567743, 36.715939, 26.346807>,  <26.312059, 36.429478, 26.458902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567743, 36.715939, 26.346807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372387, 0.030587, 0.927573,
		0.672857, -0.697272, -0.247135,
		0.639212, 0.716154, -0.280236,
		26.759506, 36.930786, 26.262737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991379, 36.143745, 26.623686>,  <26.312059, 36.429478, 26.458902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991379, 36.143745, 26.623686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017927, 36.542465, 26.605822>,  <27.033855, 36.781696, 26.595102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017927, 36.542465, 26.605822>,  <26.991379, 36.143745, 26.623686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017927, 36.542465, 26.605822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418723, 0.012803, 0.908024,
		0.905685, -0.078967, -0.416531,
		0.066371, 0.996795, -0.044660,
		27.037838, 36.841503, 26.592424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557959, 36.199142, 26.929195>,  <26.991379, 36.143745, 26.623686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557959, 36.199142, 26.929195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388174, 36.560249, 26.957014>,  <27.286304, 36.776913, 26.973705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388174, 36.560249, 26.957014>,  <27.557959, 36.199142, 26.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388174, 36.560249, 26.957014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139792, -0.010551, 0.990125,
		0.894590, 0.429991, -0.121721,
		-0.424461, 0.902771, 0.069548,
		27.260836, 36.831081, 26.977879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003914, 36.660297, 27.243685>,  <27.557959, 36.199142, 26.929195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003914, 36.660297, 27.243685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661795, 36.859211, 27.301886>,  <27.456522, 36.978558, 27.336807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661795, 36.859211, 27.301886>,  <28.003914, 36.660297, 27.243685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661795, 36.859211, 27.301886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185735, 0.032101, 0.982075,
		0.483699, 0.866994, -0.119819,
		-0.855300, 0.497284, 0.145504,
		27.405205, 37.008396, 27.345537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126741, 37.278671, 27.593824>,  <28.003914, 36.660297, 27.243685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126741, 37.278671, 27.593824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746235, 37.210911, 27.696896>,  <27.517931, 37.170254, 27.758738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746235, 37.210911, 27.696896>,  <28.126741, 37.278671, 27.593824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746235, 37.210911, 27.696896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231934, 0.157647, 0.959872,
		-0.203229, 0.972856, -0.110673,
		-0.951265, -0.169405, 0.257676,
		27.460855, 37.160088, 27.774199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093910, 37.540520, 28.284580>,  <28.126741, 37.278671, 27.593824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093910, 37.540520, 28.284580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749910, 37.337585, 28.262642>,  <27.543510, 37.215824, 28.249479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749910, 37.337585, 28.262642>,  <28.093910, 37.540520, 28.284580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749910, 37.337585, 28.262642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012934, -0.129114, 0.991545,
		-0.510131, 0.852019, 0.117600,
		-0.859999, -0.507340, -0.054845,
		27.491911, 37.185383, 28.246189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604805, 37.845798, 28.686064>,  <28.093910, 37.540520, 28.284580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604805, 37.845798, 28.686064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470745, 37.469330, 28.668783>,  <27.390308, 37.243446, 28.658415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470745, 37.469330, 28.668783>,  <27.604805, 37.845798, 28.686064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470745, 37.469330, 28.668783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023096, -0.054047, 0.998271,
		-0.941882, 0.333573, 0.039852,
		-0.335150, -0.941174, -0.043202,
		27.370199, 37.186977, 28.655823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076777, 37.853924, 29.231482>,  <27.604805, 37.845798, 28.686064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076777, 37.853924, 29.231482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154381, 37.464851, 29.180494>,  <27.200943, 37.231407, 29.149902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154381, 37.464851, 29.180494>,  <27.076777, 37.853924, 29.231482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154381, 37.464851, 29.180494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030170, -0.123960, 0.991828,
		-0.980535, -0.196271, 0.005296,
		0.194010, -0.972683, -0.127468,
		27.212584, 37.173046, 29.142254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548824, 37.426304, 29.529257>,  <27.076777, 37.853924, 29.231482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548824, 37.426304, 29.529257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870251, 37.190929, 29.493427>,  <27.063107, 37.049706, 29.471930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870251, 37.190929, 29.493427>,  <26.548824, 37.426304, 29.529257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870251, 37.190929, 29.493427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, -0.155789, 0.987782,
		-0.595201, -0.793393, -0.127525,
		0.803567, -0.588436, -0.089574,
		27.111320, 37.014400, 29.466555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348797, 36.860279, 29.863398>,  <26.548824, 37.426304, 29.529257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348797, 36.860279, 29.863398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748165, 36.840290, 29.853146>,  <26.987785, 36.828297, 29.846994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748165, 36.840290, 29.853146>,  <26.348797, 36.860279, 29.863398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748165, 36.840290, 29.853146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020567, -0.099308, 0.994844,
		-0.052261, -0.993801, -0.098123,
		0.998421, -0.049973, -0.025630,
		27.047691, 36.825298, 29.845457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483009, 36.257008, 30.200586>,  <26.348797, 36.860279, 29.863398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483009, 36.257008, 30.200586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845083, 36.426998, 30.198282>,  <27.062328, 36.528992, 30.196899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845083, 36.426998, 30.198282>,  <26.483009, 36.257008, 30.200586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845083, 36.426998, 30.198282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081268, -0.159758, 0.983805,
		0.417175, -0.890995, -0.179147,
		0.905186, 0.424978, -0.005762,
		27.116638, 36.554493, 30.196554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896654, 35.854435, 30.568825>,  <26.483009, 36.257008, 30.200586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896654, 35.854435, 30.568825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080809, 36.208500, 30.595770>,  <27.191301, 36.420937, 30.611937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080809, 36.208500, 30.595770>,  <26.896654, 35.854435, 30.568825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080809, 36.208500, 30.595770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140724, -0.147693, 0.978971,
		0.876494, -0.441226, -0.192559,
		0.460387, 0.885159, 0.067361,
		27.218925, 36.474049, 30.615978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563787, 35.754742, 30.975954>,  <26.896654, 35.854435, 30.568825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563787, 35.754742, 30.975954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521275, 36.152042, 30.994482>,  <27.495766, 36.390423, 31.005598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521275, 36.152042, 30.994482>,  <27.563787, 35.754742, 30.975954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521275, 36.152042, 30.994482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273020, -0.015640, 0.961881,
		0.956119, 0.114878, -0.269517,
		-0.106284, 0.993256, 0.046318,
		27.489389, 36.450020, 31.008377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176811, 35.969345, 31.184528>,  <27.563787, 35.754742, 30.975954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176811, 35.969345, 31.184528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912998, 36.258392, 31.267313>,  <27.754709, 36.431820, 31.316984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912998, 36.258392, 31.267313>,  <28.176811, 35.969345, 31.184528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912998, 36.258392, 31.267313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219805, -0.077895, 0.972429,
		0.718818, 0.686842, -0.107461,
		-0.659535, 0.722620, 0.206963,
		27.715137, 36.475178, 31.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540354, 36.414551, 31.552338>,  <28.176811, 35.969345, 31.184528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540354, 36.414551, 31.552338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158817, 36.493420, 31.642948>,  <27.929895, 36.540741, 31.697313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158817, 36.493420, 31.642948>,  <28.540354, 36.414551, 31.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158817, 36.493420, 31.642948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215436, -0.076270, 0.973535,
		0.209227, 0.977398, 0.030273,
		-0.953840, 0.197168, 0.226525,
		27.872665, 36.552570, 31.710905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485874, 36.860420, 32.180710>,  <28.540354, 36.414551, 31.552338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485874, 36.860420, 32.180710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134420, 36.675228, 32.133965>,  <27.923548, 36.564114, 32.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134420, 36.675228, 32.133965>,  <28.485874, 36.860420, 32.180710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134420, 36.675228, 32.133965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044749, -0.323496, 0.945171,
		-0.475395, 0.825230, 0.304952,
		-0.878633, -0.462976, -0.116860,
		27.870831, 36.536335, 32.098907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929455, 36.235100, 32.465195>,  <28.485874, 36.860420, 32.180710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929455, 36.235100, 32.465195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967974, 36.588017, 32.649490>,  <28.991085, 36.799767, 32.760067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967974, 36.588017, 32.649490>,  <28.929455, 36.235100, 32.465195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967974, 36.588017, 32.649490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625406, -0.306473, 0.717594,
		0.774334, -0.357254, 0.522279,
		0.096299, 0.882294, 0.460741,
		28.996864, 36.852703, 32.787712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061701, 36.141579, 33.175495>,  <28.929455, 36.235100, 32.465195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061701, 36.141579, 33.175495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899471, 36.505806, 33.143566>,  <28.802134, 36.724342, 33.124409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899471, 36.505806, 33.143566>,  <29.061701, 36.141579, 33.175495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899471, 36.505806, 33.143566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501287, -0.148550, 0.852434,
		0.764345, 0.385737, 0.516706,
		-0.405572, 0.910571, -0.079821,
		28.777800, 36.778976, 33.119621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365154, 36.683933, 33.635284>,  <29.061701, 36.141579, 33.175495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365154, 36.683933, 33.635284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972792, 36.662033, 33.560642>,  <28.737373, 36.648891, 33.515858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972792, 36.662033, 33.560642>,  <29.365154, 36.683933, 33.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972792, 36.662033, 33.560642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161152, -0.308268, 0.937550,
		-0.108856, 0.949722, 0.293560,
		-0.980908, -0.054751, -0.186606,
		28.678520, 36.645607, 33.504662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743666, 37.144882, 34.064137>,  <29.365154, 36.683933, 33.635284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743666, 37.144882, 34.064137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630514, 36.779259, 33.947876>,  <28.562624, 36.559883, 33.878120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630514, 36.779259, 33.947876>,  <28.743666, 37.144882, 34.064137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630514, 36.779259, 33.947876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264189, -0.217055, 0.939729,
		-0.922054, 0.342616, -0.180084,
		-0.282878, -0.914058, -0.290652,
		28.545650, 36.505043, 33.860680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985561, 37.019543, 34.200157>,  <28.743666, 37.144882, 34.064137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985561, 37.019543, 34.200157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271450, 36.741978, 34.235157>,  <28.442984, 36.575439, 34.256157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271450, 36.741978, 34.235157>,  <27.985561, 37.019543, 34.200157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271450, 36.741978, 34.235157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294040, -0.184607, 0.937796,
		-0.634599, -0.695989, -0.335982,
		0.714720, -0.693916, 0.087497,
		28.485867, 36.533802, 34.261406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647593, 36.637287, 34.537315>,  <27.985561, 37.019543, 34.200157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647593, 36.637287, 34.537315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998482, 36.456699, 34.602619>,  <28.209015, 36.348347, 34.641800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998482, 36.456699, 34.602619>,  <27.647593, 36.637287, 34.537315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998482, 36.456699, 34.602619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255149, -0.150375, 0.955137,
		-0.406668, -0.879522, -0.247106,
		0.877223, -0.451473, 0.163256,
		28.261648, 36.321259, 34.651596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488264, 36.076969, 34.967300>,  <27.647593, 36.637287, 34.537315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488264, 36.076969, 34.967300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874411, 36.166634, 35.020691>,  <28.106098, 36.220432, 35.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874411, 36.166634, 35.020691>,  <27.488264, 36.076969, 34.967300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874411, 36.166634, 35.020691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139021, 0.009065, 0.990248,
		0.220763, -0.974510, 0.039914,
		0.965368, 0.224159, 0.133477,
		28.164021, 36.233883, 35.060734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667227, 35.642647, 35.498650>,  <27.488264, 36.076969, 34.967300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667227, 35.642647, 35.498650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960001, 35.913429, 35.467682>,  <28.135666, 36.075901, 35.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960001, 35.913429, 35.467682>,  <27.667227, 35.642647, 35.498650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960001, 35.913429, 35.467682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096843, 0.009107, 0.995258,
		0.674455, -0.735963, -0.058893,
		0.731937, 0.676960, -0.077415,
		28.179583, 36.116516, 35.444458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027508, 35.388008, 35.995541>,  <27.667227, 35.642647, 35.498650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027508, 35.388008, 35.995541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158457, 35.764530, 35.962620>,  <28.237026, 35.990444, 35.942867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158457, 35.764530, 35.962620>,  <28.027508, 35.388008, 35.995541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158457, 35.764530, 35.962620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026462, 0.096196, 0.995011,
		0.944524, -0.323563, 0.056401,
		0.327374, 0.941304, -0.082298,
		28.256668, 36.046921, 35.937931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593330, 35.442142, 36.390392>,  <28.027508, 35.388008, 35.995541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593330, 35.442142, 36.390392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500916, 35.830341, 36.362831>,  <28.445465, 36.063263, 36.346294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500916, 35.830341, 36.362831>,  <28.593330, 35.442142, 36.390392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500916, 35.830341, 36.362831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012670, 0.073813, 0.997191,
		0.972862, 0.229518, -0.029350,
		-0.231040, 0.970501, -0.068902,
		28.431604, 36.121490, 36.342159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984568, 35.735504, 36.838451>,  <28.593330, 35.442142, 36.390392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984568, 35.735504, 36.838451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677053, 35.986572, 36.789467>,  <28.492544, 36.137215, 36.760075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677053, 35.986572, 36.789467>,  <28.984568, 35.735504, 36.838451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677053, 35.986572, 36.789467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039027, 0.145089, 0.988649,
		0.638312, 0.764840, -0.087047,
		-0.768788, 0.627669, -0.122461,
		28.446417, 36.174873, 36.752728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112284, 36.275345, 37.210545>,  <28.984568, 35.735504, 36.838451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112284, 36.275345, 37.210545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714676, 36.257771, 37.170547>,  <28.476112, 36.247227, 37.146549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714676, 36.257771, 37.170547>,  <29.112284, 36.275345, 37.210545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714676, 36.257771, 37.170547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104994, 0.132306, 0.985632,
		-0.030071, 0.990235, -0.136127,
		-0.994018, -0.043932, -0.099990,
		28.416470, 36.244591, 37.140549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928137, 36.810661, 37.621841>,  <29.112284, 36.275345, 37.210545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928137, 36.810661, 37.621841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595016, 36.597534, 37.561779>,  <28.395144, 36.469658, 37.525742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595016, 36.597534, 37.561779>,  <28.928137, 36.810661, 37.621841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595016, 36.597534, 37.561779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170962, -0.010436, 0.985222,
		-0.526510, 0.846166, -0.082400,
		-0.832802, -0.532817, -0.150157,
		28.345177, 36.437691, 37.516731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340769, 37.211433, 37.826477>,  <28.928137, 36.810661, 37.621841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340769, 37.211433, 37.826477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172808, 36.848488, 37.834244>,  <28.072031, 36.630722, 37.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172808, 36.848488, 37.834244>,  <28.340769, 37.211433, 37.826477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172808, 36.848488, 37.834244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097976, 0.066591, 0.992958,
		-0.902265, 0.415043, -0.116861,
		-0.419902, -0.907362, 0.019418,
		28.046837, 36.576279, 37.840069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811230, 37.311626, 38.183578>,  <28.340769, 37.211433, 37.826477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811230, 37.311626, 38.183578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907047, 36.924023, 38.207695>,  <27.964537, 36.691460, 38.222164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907047, 36.924023, 38.207695>,  <27.811230, 37.311626, 38.183578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907047, 36.924023, 38.207695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037448, 0.071271, 0.996754,
		-0.970164, -0.236506, 0.053360,
		0.239541, -0.969012, 0.060288,
		27.978910, 36.633320, 38.225780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175663, 36.839085, 38.621807>,  <27.811230, 37.311626, 38.183578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175663, 36.839085, 38.621807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515011, 36.629143, 38.649521>,  <27.718620, 36.503178, 38.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515011, 36.629143, 38.649521>,  <27.175663, 36.839085, 38.621807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515011, 36.629143, 38.649521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070631, 0.017496, 0.997349,
		-0.524672, -0.851014, -0.022228,
		0.848369, -0.524851, 0.069288,
		27.769522, 36.471687, 38.670307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053129, 36.381512, 39.181492>,  <27.175663, 36.839085, 38.621807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053129, 36.381512, 39.181492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450163, 36.357838, 39.139011>,  <27.688383, 36.343632, 39.113525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450163, 36.357838, 39.139011>,  <27.053129, 36.381512, 39.181492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450163, 36.357838, 39.139011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095032, -0.167111, 0.981347,
		-0.075824, -0.984160, -0.160247,
		0.992582, -0.059181, -0.106198,
		27.747938, 36.340084, 39.107151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314520, 35.770878, 39.593407>,  <27.053129, 36.381512, 39.181492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314520, 35.770878, 39.593407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627819, 36.015800, 39.550323>,  <27.815798, 36.162754, 39.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627819, 36.015800, 39.550323>,  <27.314520, 35.770878, 39.593407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627819, 36.015800, 39.550323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219526, -0.110296, 0.969352,
		0.581664, -0.782887, -0.220807,
		0.783247, 0.612310, -0.107709,
		27.862793, 36.199493, 39.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883305, 35.476063, 39.854843>,  <27.314520, 35.770878, 39.593407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883305, 35.476063, 39.854843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956884, 35.869091, 39.865559>,  <28.001032, 36.104908, 39.871986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956884, 35.869091, 39.865559>,  <27.883305, 35.476063, 39.854843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956884, 35.869091, 39.865559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140073, -0.053178, 0.988712,
		0.972904, -0.178123, -0.147414,
		0.183951, 0.982570, 0.026787,
		28.012070, 36.163860, 39.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452616, 35.562851, 40.208744>,  <27.883305, 35.476063, 39.854843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452616, 35.562851, 40.208744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300041, 35.926895, 40.273491>,  <28.208496, 36.145321, 40.312340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300041, 35.926895, 40.273491>,  <28.452616, 35.562851, 40.208744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300041, 35.926895, 40.273491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213849, -0.083475, 0.973294,
		0.899319, 0.405863, -0.162786,
		-0.381436, 0.910114, 0.161864,
		28.185610, 36.199928, 40.322052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928097, 35.847706, 40.667034>,  <28.452616, 35.562851, 40.208744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928097, 35.847706, 40.667034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592638, 36.065571, 40.665562>,  <28.391363, 36.196289, 40.664677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592638, 36.065571, 40.665562>,  <28.928097, 35.847706, 40.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592638, 36.065571, 40.665562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038968, 0.066739, 0.997009,
		0.543281, 0.835994, -0.077195,
		-0.838646, 0.544664, -0.003681,
		28.341043, 36.228970, 40.664459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100140, 36.453068, 41.047592>,  <28.928097, 35.847706, 40.667034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100140, 36.453068, 41.047592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701221, 36.423668, 41.047550>,  <28.461870, 36.406029, 41.047523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701221, 36.423668, 41.047550>,  <29.100140, 36.453068, 41.047592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701221, 36.423668, 41.047550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003656, 0.048170, 0.998832,
		-0.073411, 0.996131, -0.048308,
		-0.997295, -0.073502, -0.000106,
		28.402033, 36.401619, 41.047520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906794, 36.928268, 41.548985>,  <29.100140, 36.453068, 41.047592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906794, 36.928268, 41.548985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601557, 36.672718, 41.509953>,  <28.418415, 36.519386, 41.486534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601557, 36.672718, 41.509953>,  <28.906794, 36.928268, 41.548985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601557, 36.672718, 41.509953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198975, 0.088586, 0.975993,
		-0.614898, 0.764189, -0.194720,
		-0.763092, -0.638880, -0.097583,
		28.372629, 36.481052, 41.480679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398891, 37.232250, 41.989822>,  <28.906794, 36.928268, 41.548985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398891, 37.232250, 41.989822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264200, 36.861870, 41.921432>,  <28.183386, 36.639641, 41.880398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264200, 36.861870, 41.921432>,  <28.398891, 37.232250, 41.989822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264200, 36.861870, 41.921432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477479, 0.011412, 0.878569,
		-0.811560, 0.377474, -0.445964,
		-0.336726, -0.925950, -0.170975,
		28.163183, 36.584084, 41.870140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607962, 37.205158, 42.202698>,  <28.398891, 37.232250, 41.989822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607962, 37.205158, 42.202698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750832, 36.831543, 42.201664>,  <27.836554, 36.607376, 42.201042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750832, 36.831543, 42.201664>,  <27.607962, 37.205158, 42.202698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750832, 36.831543, 42.201664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313854, -0.122625, 0.941519,
		-0.879729, -0.335474, -0.336949,
		0.357174, -0.934034, -0.002587,
		27.857985, 36.551334, 42.200890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057646, 36.822479, 42.586452>,  <27.607962, 37.205158, 42.202698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057646, 36.822479, 42.586452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388500, 36.597683, 42.588264>,  <27.587013, 36.462807, 42.589352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388500, 36.597683, 42.588264>,  <27.057646, 36.822479, 42.586452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388500, 36.597683, 42.588264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238889, -0.344281, 0.907966,
		-0.508705, -0.752092, -0.419019,
		0.827134, -0.561987, 0.004529,
		27.636641, 36.429089, 42.589622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948879, 36.106735, 42.904568>,  <27.057646, 36.822479, 42.586452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948879, 36.106735, 42.904568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342716, 36.148823, 42.960430>,  <27.579020, 36.174076, 42.993950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342716, 36.148823, 42.960430>,  <26.948879, 36.106735, 42.904568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342716, 36.148823, 42.960430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116787, -0.198739, 0.973069,
		0.130141, -0.974388, -0.183389,
		0.984593, 0.105219, 0.139660,
		27.638094, 36.180389, 43.002327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250645, 35.509350, 43.317909>,  <26.948879, 36.106735, 42.904568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250645, 35.509350, 43.317909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505465, 35.811993, 43.376850>,  <27.658356, 35.993580, 43.412212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505465, 35.811993, 43.376850>,  <27.250645, 35.509350, 43.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505465, 35.811993, 43.376850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066092, -0.244069, 0.967503,
		0.767985, -0.606607, -0.205490,
		0.637048, 0.756609, 0.147350,
		27.696579, 36.038975, 43.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592371, 35.315826, 43.874260>,  <27.250645, 35.509350, 43.317909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592371, 35.315826, 43.874260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703691, 35.698765, 43.843204>,  <27.770483, 35.928528, 43.824570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703691, 35.698765, 43.843204>,  <27.592371, 35.315826, 43.874260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703691, 35.698765, 43.843204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207889, 0.018878, 0.977970,
		0.937726, -0.288311, -0.193769,
		0.278302, 0.957351, -0.077639,
		27.787182, 35.985970, 43.819912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314495, 35.352402, 44.091892>,  <27.592371, 35.315826, 43.874260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314495, 35.352402, 44.091892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192772, 35.726776, 44.162796>,  <28.119738, 35.951401, 44.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192772, 35.726776, 44.162796>,  <28.314495, 35.352402, 44.091892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192772, 35.726776, 44.162796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246018, -0.102556, 0.963824,
		0.920256, 0.336909, -0.199048,
		-0.304308, 0.935935, 0.177264,
		28.101479, 36.007557, 44.215977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780869, 35.584099, 44.640945>,  <28.314495, 35.352402, 44.091892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780869, 35.584099, 44.640945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491743, 35.860470, 44.645943>,  <28.318268, 36.026295, 44.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491743, 35.860470, 44.645943>,  <28.780869, 35.584099, 44.640945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491743, 35.860470, 44.645943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097917, 0.084509, 0.991600,
		0.684070, 0.717966, -0.128738,
		-0.722814, 0.690930, 0.012491,
		28.274899, 36.067749, 44.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999168, 36.097733, 45.043587>,  <28.780869, 35.584099, 44.640945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999168, 36.097733, 45.043587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603285, 36.151859, 45.024956>,  <28.365755, 36.184334, 45.013779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603285, 36.151859, 45.024956>,  <28.999168, 36.097733, 45.043587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603285, 36.151859, 45.024956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036738, 0.074315, 0.996558,
		0.138312, 0.988011, -0.068579,
		-0.989707, 0.135316, -0.046576,
		28.306374, 36.192455, 45.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898048, 36.638359, 45.428242>,  <28.999168, 36.097733, 45.043587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898048, 36.638359, 45.428242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550293, 36.440895, 45.436844>,  <28.341640, 36.322414, 45.442005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550293, 36.440895, 45.436844>,  <28.898048, 36.638359, 45.428242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550293, 36.440895, 45.436844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009874, 0.026157, 0.999609,
		-0.494033, 0.869260, -0.017866,
		-0.869387, -0.493663, 0.021505,
		28.289476, 36.292797, 45.443295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395388, 37.102928, 45.858311>,  <28.898048, 36.638359, 45.428242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395388, 37.102928, 45.858311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287169, 36.718079, 45.844925>,  <28.222237, 36.487167, 45.836895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287169, 36.718079, 45.844925>,  <28.395388, 37.102928, 45.858311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287169, 36.718079, 45.844925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102397, -0.005802, 0.994727,
		-0.957245, 0.272549, -0.096949,
		-0.270550, -0.962124, -0.033462,
		28.206003, 36.429440, 45.834885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810650, 37.121002, 46.235710>,  <28.395388, 37.102928, 45.858311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810650, 37.121002, 46.235710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948948, 36.745674, 46.237213>,  <28.031927, 36.520477, 46.238113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948948, 36.745674, 46.237213>,  <27.810650, 37.121002, 46.235710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948948, 36.745674, 46.237213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015635, -0.001760, 0.999876,
		-0.938198, -0.345762, -0.015279,
		0.345746, -0.938321, 0.003755,
		28.052671, 36.464176, 46.238338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386078, 36.790585, 46.777309>,  <27.810650, 37.121002, 46.235710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386078, 36.790585, 46.777309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677855, 36.523869, 46.716251>,  <27.852921, 36.363838, 46.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677855, 36.523869, 46.716251>,  <27.386078, 36.790585, 46.777309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677855, 36.523869, 46.716251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022573, -0.246496, 0.968881,
		-0.683670, -0.703297, -0.194856,
		0.729442, -0.666793, -0.152646,
		27.896687, 36.323830, 46.670456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153448, 36.180717, 47.090164>,  <27.386078, 36.790585, 46.777309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153448, 36.180717, 47.090164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551596, 36.206306, 47.061459>,  <27.790483, 36.221661, 47.044235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551596, 36.206306, 47.061459>,  <27.153448, 36.180717, 47.090164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551596, 36.206306, 47.061459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082018, -0.175668, 0.981027,
		0.050157, -0.982368, -0.180102,
		0.995368, 0.063977, -0.071761,
		27.850206, 36.225498, 47.039928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388885, 35.682053, 47.584927>,  <27.153448, 36.180717, 47.090164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388885, 35.682053, 47.584927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700989, 35.916321, 47.497124>,  <27.888250, 36.056881, 47.444443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700989, 35.916321, 47.497124>,  <27.388885, 35.682053, 47.584927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700989, 35.916321, 47.497124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158805, 0.153949, 0.975234,
		0.604959, -0.795795, 0.027112,
		0.780260, 0.585670, -0.219509,
		27.935066, 36.092022, 47.431271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950378, 35.454144, 47.948898>,  <27.388885, 35.682053, 47.584927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950378, 35.454144, 47.948898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058168, 35.832684, 47.877567>,  <28.122843, 36.059807, 47.834766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058168, 35.832684, 47.877567>,  <27.950378, 35.454144, 47.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058168, 35.832684, 47.877567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251040, 0.109745, 0.961735,
		0.929711, -0.303931, -0.207999,
		0.269475, 0.946352, -0.178330,
		28.139011, 36.116589, 47.824070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521263, 35.579964, 48.346722>,  <27.950378, 35.454144, 47.948898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521263, 35.579964, 48.346722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444994, 35.962124, 48.256519>,  <28.399233, 36.191422, 48.202400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444994, 35.962124, 48.256519>,  <28.521263, 35.579964, 48.346722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444994, 35.962124, 48.256519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375756, 0.283254, 0.882369,
		0.906891, 0.083509, -0.413006,
		-0.190671, 0.955402, -0.225502,
		28.387793, 36.248745, 48.188869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136709, 35.981712, 48.497387>,  <28.521263, 35.579964, 48.346722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136709, 35.981712, 48.497387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835890, 36.245354, 48.498676>,  <28.655397, 36.403538, 48.499451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835890, 36.245354, 48.498676>,  <29.136709, 35.981712, 48.497387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835890, 36.245354, 48.498676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230515, 0.258441, 0.938121,
		0.617482, 0.706256, -0.346293,
		-0.752050, 0.659099, 0.003220,
		28.610275, 36.443085, 48.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425669, 36.389774, 48.932987>,  <29.136709, 35.981712, 48.497387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425669, 36.389774, 48.932987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038639, 36.486946, 48.905308>,  <28.806421, 36.545250, 48.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038639, 36.486946, 48.905308>,  <29.425669, 36.389774, 48.932987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038639, 36.486946, 48.905308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005800, 0.252526, 0.967573,
		0.252526, 0.936599, -0.242928,
		-0.967573, 0.242928, -0.069201,
		28.748367, 36.559826, 48.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408932, 36.969337, 49.329880>,  <29.425669, 36.389774, 48.932987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408932, 36.969337, 49.329880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031708, 36.839432, 49.301140>,  <28.805372, 36.761486, 49.283894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031708, 36.839432, 49.301140>,  <29.408932, 36.969337, 49.329880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031708, 36.839432, 49.301140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053527, -0.065024, 0.996447,
		-0.328285, 0.943557, 0.043938,
		-0.943061, -0.324766, -0.071852,
		28.748789, 36.742001, 49.279583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011848, 37.476498, 49.767998>,  <29.408932, 36.969337, 49.329880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011848, 37.476498, 49.767998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803339, 37.137688, 49.726372>,  <28.678234, 36.934402, 49.701397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803339, 37.137688, 49.726372>,  <29.011848, 37.476498, 49.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803339, 37.137688, 49.726372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091124, -0.066005, 0.993650,
		-0.848511, 0.527446, -0.042777,
		-0.521273, -0.847021, -0.104069,
		28.646957, 36.883583, 49.695152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407728, 37.575367, 50.192463>,  <29.011848, 37.476498, 49.767998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407728, 37.575367, 50.192463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453056, 37.178772, 50.166805>,  <28.480253, 36.940815, 50.151409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453056, 37.178772, 50.166805>,  <28.407728, 37.575367, 50.192463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453056, 37.178772, 50.166805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156181, -0.081534, 0.984358,
		-0.981206, -0.101530, -0.164091,
		0.113321, -0.991486, -0.064145,
		28.487053, 36.881325, 50.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818497, 37.174084, 50.513210>,  <28.407728, 37.575367, 50.192463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818497, 37.174084, 50.513210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156330, 36.960564, 50.529858>,  <28.359030, 36.832451, 50.539845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156330, 36.960564, 50.529858>,  <27.818497, 37.174084, 50.513210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156330, 36.960564, 50.529858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123368, -0.118371, 0.985276,
		-0.521019, -0.837281, -0.165829,
		0.844583, -0.533805, 0.041620,
		28.409704, 36.800423, 50.542343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934511, 37.370975, 51.304035>,  <27.818497, 37.174084, 50.513210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934511, 37.370975, 51.304035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720741, 37.032894, 51.305862>,  <27.592480, 36.830044, 51.306961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720741, 37.032894, 51.305862>,  <27.934511, 37.370975, 51.304035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720741, 37.032894, 51.305862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816910, -0.515131, 0.259418,
		-0.216906, 0.142374, 0.965755,
		-0.534424, -0.845204, 0.004572,
		27.560413, 36.779331, 51.307236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138523, 36.941399, 51.863583>,  <27.934511, 37.370975, 51.304035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138523, 36.941399, 51.863583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005486, 36.684673, 51.587189>,  <27.925663, 36.530636, 51.421352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005486, 36.684673, 51.587189>,  <28.138523, 36.941399, 51.863583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005486, 36.684673, 51.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907411, -0.417365, -0.049100,
		-0.256878, -0.643335, 0.721203,
		-0.332593, -0.641815, -0.690981,
		27.905708, 36.492130, 51.379894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144089, 36.219486, 52.074375>,  <28.138523, 36.941399, 51.863583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144089, 36.219486, 52.074375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195154, 36.336609, 51.695332>,  <28.225794, 36.406883, 51.467903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195154, 36.336609, 51.695332>,  <28.144089, 36.219486, 52.074375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195154, 36.336609, 51.695332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988004, -0.121239, 0.095646,
		-0.086882, -0.948454, -0.304772,
		0.127666, 0.292807, -0.947610,
		28.233454, 36.424450, 51.411049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560217, 35.737850, 51.579975>,  <28.144089, 36.219486, 52.074375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560217, 35.737850, 51.579975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636417, 36.119167, 51.486221>,  <28.682138, 36.347958, 51.429970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636417, 36.119167, 51.486221>,  <28.560217, 35.737850, 51.579975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636417, 36.119167, 51.486221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961313, -0.132765, 0.241352,
		0.198963, -0.271292, -0.941708,
		0.190503, 0.953296, -0.234381,
		28.693569, 36.405155, 51.415909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224678, 36.024727, 51.604492>,  <28.560217, 35.737850, 51.579975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224678, 36.024727, 51.604492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137711, 35.797333, 51.921871>,  <29.085529, 35.660896, 52.112297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137711, 35.797333, 51.921871>,  <29.224678, 36.024727, 51.604492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137711, 35.797333, 51.921871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626023, -0.542463, -0.560204,
		0.748882, -0.618515, -0.237941,
		-0.217420, -0.568483, 0.793445,
		29.072485, 35.626789, 52.159904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454893, 36.505634, 52.081852>,  <29.224678, 36.024727, 51.604492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454893, 36.505634, 52.081852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761993, 36.437885, 52.329037>,  <29.946253, 36.397236, 52.477348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761993, 36.437885, 52.329037>,  <29.454893, 36.505634, 52.081852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761993, 36.437885, 52.329037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402297, -0.623225, -0.670632,
		0.498716, 0.763480, -0.410342,
		0.767750, -0.169376, 0.617958,
		29.992319, 36.387074, 52.514423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071392, 36.639683, 51.719830>,  <29.454893, 36.505634, 52.081852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071392, 36.639683, 51.719830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110632, 36.372162, 52.014606>,  <30.134176, 36.211651, 52.191471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110632, 36.372162, 52.014606>,  <30.071392, 36.639683, 51.719830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110632, 36.372162, 52.014606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234901, -0.704026, -0.670201,
		0.967056, 0.238856, 0.088037,
		0.098101, -0.668802, 0.736940,
		30.140062, 36.171520, 52.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746040, 36.295120, 51.604660>,  <30.071392, 36.639683, 51.719830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746040, 36.295120, 51.604660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445452, 36.088844, 51.769268>,  <30.265099, 35.965076, 51.868031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445452, 36.088844, 51.769268>,  <30.746040, 36.295120, 51.604660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445452, 36.088844, 51.769268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063698, -0.677531, -0.732731,
		0.656681, -0.524415, 0.541996,
		-0.751474, -0.515695, 0.411518,
		30.220009, 35.934135, 51.892723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920424, 35.612049, 51.319618>,  <30.746040, 36.295120, 51.604660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920424, 35.612049, 51.319618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542315, 35.667530, 51.437752>,  <30.315449, 35.700817, 51.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542315, 35.667530, 51.437752>,  <30.920424, 35.612049, 51.319618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542315, 35.667530, 51.437752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297528, -0.737959, -0.605717,
		0.133934, -0.660438, 0.738839,
		-0.945272, 0.138699, 0.295337,
		30.258734, 35.709141, 51.526352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597097, 34.937122, 51.469769>,  <30.920424, 35.612049, 51.319618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597097, 34.937122, 51.469769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313898, 35.204384, 51.378284>,  <30.143978, 35.364742, 51.323395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313898, 35.204384, 51.378284>,  <30.597097, 34.937122, 51.469769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313898, 35.204384, 51.378284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321466, -0.593266, -0.738034,
		-0.628812, -0.448999, 0.634819,
		-0.707993, 0.668158, -0.228715,
		30.101500, 35.404831, 51.309669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034809, 34.553585, 51.375938>,  <30.597097, 34.937122, 51.469769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034809, 34.553585, 51.375938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981609, 34.888809, 51.164291>,  <29.949690, 35.089943, 51.037304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981609, 34.888809, 51.164291>,  <30.034809, 34.553585, 51.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981609, 34.888809, 51.164291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263228, -0.544555, -0.796349,
		-0.955522, 0.033367, 0.293025,
		-0.132997, 0.838061, -0.529117,
		29.941710, 35.140228, 51.005558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699945, 34.401596, 50.730015>,  <30.034809, 34.553585, 51.375938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699945, 34.401596, 50.730015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826969, 34.765907, 50.624454>,  <29.903183, 34.984493, 50.561119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826969, 34.765907, 50.624454>,  <29.699945, 34.401596, 50.730015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826969, 34.765907, 50.624454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043985, -0.263861, -0.963557,
		-0.947218, 0.317595, -0.043732,
		0.317560, 0.910775, -0.263904,
		29.922237, 35.039139, 50.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267820, 34.629597, 50.113518>,  <29.699945, 34.401596, 50.730015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267820, 34.629597, 50.113518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621010, 34.815575, 50.087643>,  <29.832924, 34.927162, 50.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621010, 34.815575, 50.087643>,  <29.267820, 34.629597, 50.113518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621010, 34.815575, 50.087643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005226, -0.128058, -0.991753,
		-0.469390, 0.876031, -0.110642,
		0.882975, 0.464941, -0.064687,
		29.885902, 34.955055, 50.068237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162594, 35.044254, 49.489494>,  <29.267820, 34.629597, 50.113518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162594, 35.044254, 49.489494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556496, 35.045357, 49.559063>,  <29.792837, 35.046017, 49.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556496, 35.045357, 49.559063>,  <29.162594, 35.044254, 49.489494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556496, 35.045357, 49.559063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172985, -0.120253, -0.977556,
		0.018221, 0.992739, -0.118897,
		0.984756, 0.002756, 0.173920,
		29.851923, 35.046185, 49.611240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452141, 35.347088, 48.932865>,  <29.162594, 35.044254, 49.489494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452141, 35.347088, 48.932865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777391, 35.188526, 49.103363>,  <29.972542, 35.093388, 49.205662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777391, 35.188526, 49.103363>,  <29.452141, 35.347088, 48.932865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777391, 35.188526, 49.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417333, -0.113465, -0.901642,
		0.405779, 0.911038, 0.073171,
		0.813128, -0.396404, 0.426248,
		30.021330, 35.069607, 49.231236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140017, 35.784664, 48.750961>,  <29.452141, 35.347088, 48.932865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140017, 35.784664, 48.750961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231407, 35.403225, 48.829391>,  <30.286242, 35.174362, 48.876450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231407, 35.403225, 48.829391>,  <30.140017, 35.784664, 48.750961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231407, 35.403225, 48.829391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338031, -0.111169, -0.934546,
		0.912981, 0.279800, 0.296947,
		0.228475, -0.953600, 0.196076,
		30.299950, 35.117146, 48.888214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761063, 35.682426, 48.527336>,  <30.140017, 35.784664, 48.750961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761063, 35.682426, 48.527336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604055, 35.314529, 48.527771>,  <30.509851, 35.093792, 48.528034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604055, 35.314529, 48.527771>,  <30.761063, 35.682426, 48.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604055, 35.314529, 48.527771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357653, -0.153727, -0.921115,
		0.847357, -0.361164, 0.389290,
		-0.392518, -0.919743, 0.001091,
		30.486300, 35.038605, 48.528099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281473, 35.316948, 48.189865>,  <30.761063, 35.682426, 48.527336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281473, 35.316948, 48.189865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977434, 35.058556, 48.161701>,  <30.795012, 34.903519, 48.144802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977434, 35.058556, 48.161701>,  <31.281473, 35.316948, 48.189865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977434, 35.058556, 48.161701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325276, -0.284442, -0.901825,
		0.562538, -0.708376, 0.426327,
		-0.760097, -0.645984, -0.070408,
		30.749405, 34.864761, 48.140579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474722, 34.677368, 48.091942>,  <31.281473, 35.316948, 48.189865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474722, 34.677368, 48.091942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101543, 34.599335, 47.970913>,  <30.877636, 34.552513, 47.898296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101543, 34.599335, 47.970913>,  <31.474722, 34.677368, 48.091942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101543, 34.599335, 47.970913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354239, -0.347522, -0.868184,
		0.064221, -0.917153, 0.393327,
		-0.932947, -0.195088, -0.302573,
		30.821659, 34.540810, 47.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537041, 34.140530, 47.681969>,  <31.474722, 34.677368, 48.091942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537041, 34.140530, 47.681969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165535, 34.263462, 47.599075>,  <30.942633, 34.337223, 47.549339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165535, 34.263462, 47.599075>,  <31.537041, 34.140530, 47.681969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165535, 34.263462, 47.599075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086153, -0.364792, -0.927095,
		-0.360489, -0.878917, 0.312336,
		-0.928776, 0.307298, -0.207225,
		30.886906, 34.355663, 47.536903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231619, 33.687199, 47.139423>,  <31.537041, 34.140530, 47.681969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231619, 33.687199, 47.139423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986523, 34.002083, 47.111580>,  <30.839464, 34.191013, 47.094875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986523, 34.002083, 47.111580>,  <31.231619, 33.687199, 47.139423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986523, 34.002083, 47.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028762, -0.110236, -0.993489,
		-0.789761, -0.606749, 0.090188,
		-0.612740, 0.787213, -0.069608,
		30.802700, 34.238247, 47.090698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711397, 33.429783, 46.757538>,  <31.231619, 33.687199, 47.139423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711397, 33.429783, 46.757538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738688, 33.827503, 46.724766>,  <30.755062, 34.066135, 46.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738688, 33.827503, 46.724766>,  <30.711397, 33.429783, 46.757538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738688, 33.827503, 46.724766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152267, -0.091539, -0.984091,
		-0.985982, 0.054664, -0.157644,
		0.068225, 0.994300, -0.081932,
		30.759155, 34.125793, 46.700188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317116, 33.555645, 46.220669>,  <30.711397, 33.429783, 46.757538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317116, 33.555645, 46.220669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537994, 33.888081, 46.247108>,  <30.670521, 34.087543, 46.262974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537994, 33.888081, 46.247108>,  <30.317116, 33.555645, 46.220669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537994, 33.888081, 46.247108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057377, 0.041214, -0.997502,
		-0.831738, 0.554608, -0.024927,
		0.552195, 0.831090, 0.066101,
		30.703653, 34.137409, 46.266937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933016, 34.128670, 45.918133>,  <30.317116, 33.555645, 46.220669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933016, 34.128670, 45.918133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315979, 34.243813, 45.927135>,  <30.545757, 34.312897, 45.932537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315979, 34.243813, 45.927135>,  <29.933016, 34.128670, 45.918133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315979, 34.243813, 45.927135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029762, 0.175923, -0.983954,
		-0.287198, 0.941377, 0.176997,
		0.957409, 0.287857, 0.022508,
		30.603201, 34.330170, 45.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940893, 34.744289, 45.541275>,  <29.933016, 34.128670, 45.918133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940893, 34.744289, 45.541275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307772, 34.586563, 45.518410>,  <30.527899, 34.491928, 45.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307772, 34.586563, 45.518410>,  <29.940893, 34.744289, 45.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307772, 34.586563, 45.518410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055716, 0.015125, -0.998332,
		0.394525, 0.918850, -0.008097,
		0.917195, -0.394318, -0.057162,
		30.582930, 34.468269, 45.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233698, 35.135227, 44.994900>,  <29.940893, 34.744289, 45.541275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233698, 35.135227, 44.994900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488121, 34.828556, 45.029858>,  <30.640774, 34.644554, 45.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488121, 34.828556, 45.029858>,  <30.233698, 35.135227, 44.994900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488121, 34.828556, 45.029858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137696, -0.224210, -0.964764,
		0.759258, 0.601611, -0.248178,
		0.636056, -0.766678, 0.087394,
		30.678938, 34.598553, 45.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814789, 35.168411, 44.541512>,  <30.233698, 35.135227, 44.994900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814789, 35.168411, 44.541512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772242, 34.777416, 44.614395>,  <30.746714, 34.542820, 44.658127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772242, 34.777416, 44.614395>,  <30.814789, 35.168411, 44.541512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772242, 34.777416, 44.614395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026206, -0.185942, -0.982211,
		0.993981, -0.099703, 0.045394,
		-0.106370, -0.977489, 0.182210,
		30.740330, 34.484169, 44.669060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202467, 34.930561, 44.039387>,  <30.814789, 35.168411, 44.541512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202467, 34.930561, 44.039387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982840, 34.615608, 44.151501>,  <30.851063, 34.426636, 44.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982840, 34.615608, 44.151501>,  <31.202467, 34.930561, 44.039387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982840, 34.615608, 44.151501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010378, -0.328906, -0.944306,
		0.835714, -0.521396, 0.172420,
		-0.549067, -0.787380, 0.280282,
		30.818119, 34.379395, 44.235584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370377, 34.470936, 43.553024>,  <31.202467, 34.930561, 44.039387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370377, 34.470936, 43.553024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070230, 34.267029, 43.721352>,  <30.890142, 34.144684, 43.822350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070230, 34.267029, 43.721352>,  <31.370377, 34.470936, 43.553024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070230, 34.267029, 43.721352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180820, -0.454042, -0.872439,
		0.635814, -0.730739, 0.248519,
		-0.750363, -0.509772, 0.420819,
		30.845121, 34.114098, 43.847599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394657, 33.750008, 43.334202>,  <31.370377, 34.470936, 43.553024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394657, 33.750008, 43.334202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018311, 33.822624, 43.448616>,  <30.792503, 33.866196, 43.517265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018311, 33.822624, 43.448616>,  <31.394657, 33.750008, 43.334202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018311, 33.822624, 43.448616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334695, -0.367384, -0.867760,
		-0.052453, -0.912179, 0.406421,
		-0.940865, 0.181544, 0.286031,
		30.736052, 33.877087, 43.534424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114305, 33.146336, 43.252666>,  <31.394657, 33.750008, 43.334202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114305, 33.146336, 43.252666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847517, 33.442818, 43.222301>,  <30.687445, 33.620708, 43.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847517, 33.442818, 43.222301>,  <31.114305, 33.146336, 43.252666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847517, 33.442818, 43.222301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155215, -0.237864, -0.958817,
		-0.728738, -0.627720, 0.273695,
		-0.666970, 0.741208, -0.075909,
		30.647427, 33.665180, 43.199528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656685, 32.939995, 42.771046>,  <31.114305, 33.146336, 43.252666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656685, 32.939995, 42.771046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546909, 33.324406, 42.784401>,  <30.481043, 33.555050, 42.792416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546909, 33.324406, 42.784401>,  <30.656685, 32.939995, 42.771046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546909, 33.324406, 42.784401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359551, -0.070352, -0.930469,
		-0.891855, -0.267362, 0.364845,
		-0.274440, 0.961024, 0.033387,
		30.464577, 33.612713, 42.794418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912039, 33.085079, 42.523266>,  <30.656685, 32.939995, 42.771046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912039, 33.085079, 42.523266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124033, 33.416813, 42.452469>,  <30.251230, 33.615852, 42.409988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124033, 33.416813, 42.452469>,  <29.912039, 33.085079, 42.523266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124033, 33.416813, 42.452469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305981, -0.007639, -0.952007,
		-0.790880, 0.558707, 0.249710,
		0.529986, 0.829330, -0.176995,
		30.283030, 33.665611, 42.399372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422117, 33.531727, 42.165810>,  <29.912039, 33.085079, 42.523266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422117, 33.531727, 42.165810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779966, 33.704102, 42.118580>,  <29.994677, 33.807526, 42.090244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779966, 33.704102, 42.118580>,  <29.422117, 33.531727, 42.165810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779966, 33.704102, 42.118580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292121, 0.364138, -0.884346,
		-0.338105, 0.825648, 0.451653,
		0.894623, 0.430939, -0.118072,
		30.048353, 33.833382, 42.083157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267397, 34.180141, 41.845158>,  <29.422117, 33.531727, 42.165810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267397, 34.180141, 41.845158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654545, 34.137680, 41.753983>,  <29.886833, 34.112206, 41.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654545, 34.137680, 41.753983>,  <29.267397, 34.180141, 41.845158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654545, 34.137680, 41.753983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165123, 0.415328, -0.894560,
		0.189626, 0.903457, 0.384457,
		0.967872, -0.106149, -0.227938,
		29.944906, 34.105835, 41.685600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445370, 34.838188, 41.488300>,  <29.267397, 34.180141, 41.845158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445370, 34.838188, 41.488300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734715, 34.578491, 41.394295>,  <29.908321, 34.422672, 41.337891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734715, 34.578491, 41.394295>,  <29.445370, 34.838188, 41.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734715, 34.578491, 41.394295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129912, 0.462267, -0.877173,
		0.678140, 0.603980, 0.418730,
		0.723360, -0.649244, -0.235017,
		29.951723, 34.383717, 41.323788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968826, 35.252728, 41.164448>,  <29.445370, 34.838188, 41.488300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968826, 35.252728, 41.164448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056080, 34.876839, 41.059116>,  <30.108433, 34.651306, 40.995918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056080, 34.876839, 41.059116>,  <29.968826, 35.252728, 41.164448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056080, 34.876839, 41.059116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322043, 0.324025, -0.889548,
		0.921253, 0.109237, 0.373311,
		0.218133, -0.939721, -0.263330,
		30.121519, 34.594921, 40.980118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471645, 35.353798, 40.584972>,  <29.968826, 35.252728, 41.164448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471645, 35.353798, 40.584972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375080, 34.966381, 40.560829>,  <30.317141, 34.733932, 40.546345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375080, 34.966381, 40.560829>,  <30.471645, 35.353798, 40.584972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375080, 34.966381, 40.560829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392909, -0.040683, -0.918677,
		0.887323, -0.245496, 0.390370,
		-0.241413, -0.968544, -0.060359,
		30.302656, 34.675819, 40.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071024, 34.926704, 40.367973>,  <30.471645, 35.353798, 40.584972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071024, 34.926704, 40.367973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728334, 34.739853, 40.280506>,  <30.522720, 34.627743, 40.228027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728334, 34.739853, 40.280506>,  <31.071024, 34.926704, 40.367973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728334, 34.739853, 40.280506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318921, -0.146582, -0.936378,
		0.405352, -0.871957, 0.274557,
		-0.856726, -0.467124, -0.218668,
		30.471317, 34.599716, 40.214905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285543, 34.366486, 39.867359>,  <31.071024, 34.926704, 40.367973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285543, 34.366486, 39.867359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891367, 34.415085, 39.819786>,  <30.654861, 34.444244, 39.791241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891367, 34.415085, 39.819786>,  <31.285543, 34.366486, 39.867359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891367, 34.415085, 39.819786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119459, -0.003000, -0.992835,
		-0.120989, -0.992587, -0.011558,
		-0.985440, 0.121503, -0.118936,
		30.595736, 34.451534, 39.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991699, 33.824574, 39.230972>,  <31.285543, 34.366486, 39.867359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991699, 33.824574, 39.230972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738760, 34.126312, 39.301510>,  <30.586996, 34.307354, 39.343834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738760, 34.126312, 39.301510>,  <30.991699, 33.824574, 39.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738760, 34.126312, 39.301510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004196, 0.230968, -0.972952,
		-0.774672, -0.614505, -0.149218,
		-0.632349, 0.754345, 0.176347,
		30.549055, 34.352615, 39.354412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681667, 33.863167, 38.615757>,  <30.991699, 33.824574, 39.230972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681667, 33.863167, 38.615757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569977, 34.206501, 38.787941>,  <30.502962, 34.412502, 38.891251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569977, 34.206501, 38.787941>,  <30.681667, 33.863167, 38.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569977, 34.206501, 38.787941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132488, 0.409563, -0.902610,
		-0.951041, -0.309063, -0.000642,
		-0.279227, 0.858334, 0.430459,
		30.486208, 34.464001, 38.917080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937607, 33.978062, 38.480221>,  <30.681667, 33.863167, 38.615757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937607, 33.978062, 38.480221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090528, 34.336304, 38.571198>,  <30.182281, 34.551250, 38.625782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090528, 34.336304, 38.571198>,  <29.937607, 33.978062, 38.480221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090528, 34.336304, 38.571198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116678, 0.290953, -0.949596,
		-0.916641, 0.336498, 0.215730,
		0.382304, 0.895609, 0.227437,
		30.205219, 34.604988, 38.639427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543341, 34.469151, 38.068935>,  <29.937607, 33.978062, 38.480221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543341, 34.469151, 38.068935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864220, 34.687771, 38.165073>,  <30.056747, 34.818943, 38.222755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864220, 34.687771, 38.165073>,  <29.543341, 34.469151, 38.068935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864220, 34.687771, 38.165073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030763, 0.364171, -0.930824,
		-0.596267, 0.754097, 0.275324,
		0.802196, 0.546550, 0.240341,
		30.104879, 34.851734, 38.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367481, 35.107567, 37.971298>,  <29.543341, 34.469151, 38.068935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367481, 35.107567, 37.971298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766888, 35.121914, 37.954914>,  <30.006533, 35.130520, 37.945084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766888, 35.121914, 37.954914>,  <29.367481, 35.107567, 37.971298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766888, 35.121914, 37.954914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050434, 0.326175, -0.943963,
		-0.020495, 0.944629, 0.327500,
		0.998517, 0.035864, -0.040957,
		30.066442, 35.132671, 37.942627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504532, 35.614353, 37.525654>,  <29.367481, 35.107567, 37.971298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504532, 35.614353, 37.525654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846113, 35.406509, 37.514565>,  <30.051062, 35.281803, 37.507912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846113, 35.406509, 37.514565>,  <29.504532, 35.614353, 37.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846113, 35.406509, 37.514565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193322, 0.366277, -0.910202,
		0.483108, 0.771909, 0.413236,
		0.853952, -0.519613, -0.027725,
		30.102299, 35.250626, 37.506248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854254, 35.987793, 37.049614>,  <29.504532, 35.614353, 37.525654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854254, 35.987793, 37.049614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087612, 35.664738, 37.083939>,  <30.227627, 35.470905, 37.104534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087612, 35.664738, 37.083939>,  <29.854254, 35.987793, 37.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087612, 35.664738, 37.083939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384586, 0.181649, -0.905040,
		0.715361, 0.560998, 0.416582,
		0.583397, -0.807641, 0.085807,
		30.262630, 35.422443, 37.109680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641659, 36.108658, 36.743225>,  <29.854254, 35.987793, 37.049614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641659, 36.108658, 36.743225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537125, 35.722618, 36.736473>,  <30.474405, 35.490993, 36.732422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537125, 35.722618, 36.736473>,  <30.641659, 36.108658, 36.743225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537125, 35.722618, 36.736473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394585, -0.090858, -0.914356,
		0.880913, -0.245612, 0.404559,
		-0.261334, -0.965101, -0.016877,
		30.458725, 35.433086, 36.731411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203724, 35.763927, 36.605747>,  <30.641659, 36.108658, 36.743225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203724, 35.763927, 36.605747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906641, 35.514534, 36.508049>,  <30.728392, 35.364899, 36.449429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906641, 35.514534, 36.508049>,  <31.203724, 35.763927, 36.605747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906641, 35.514534, 36.508049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356498, -0.059405, -0.932406,
		0.566827, -0.779580, 0.266390,
		-0.742709, -0.623480, -0.244247,
		30.683828, 35.327492, 36.434776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372482, 35.004730, 36.325371>,  <31.203724, 35.763927, 36.605747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372482, 35.004730, 36.325371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025080, 35.099022, 36.150955>,  <30.816639, 35.155598, 36.046307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025080, 35.099022, 36.150955>,  <31.372482, 35.004730, 36.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025080, 35.099022, 36.150955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410955, -0.149429, -0.899326,
		-0.277151, -0.960263, 0.032907,
		-0.868506, 0.235726, -0.436039,
		30.764528, 35.169739, 36.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547197, 34.208069, 36.147564>,  <31.372482, 35.004730, 36.325371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547197, 34.208069, 36.147564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884644, 34.150898, 35.940533>,  <32.087112, 34.116596, 35.816315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884644, 34.150898, 35.940533>,  <31.547197, 34.208069, 36.147564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884644, 34.150898, 35.940533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521329, -0.012781, 0.853260,
		-0.128571, -0.989650, 0.063731,
		0.843614, -0.142930, -0.517577,
		32.137730, 34.108021, 35.785259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923092, 33.649040, 36.442860>,  <31.547197, 34.208069, 36.147564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923092, 33.649040, 36.442860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199799, 33.872253, 36.259529>,  <32.365822, 34.006180, 36.149532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199799, 33.872253, 36.259529>,  <31.923092, 33.649040, 36.442860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199799, 33.872253, 36.259529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560962, -0.015587, 0.827695,
		0.454735, -0.829674, -0.323816,
		0.691765, 0.558031, -0.458327,
		32.407330, 34.039661, 36.122032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616367, 33.363628, 36.522064>,  <31.923092, 33.649040, 36.442860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616367, 33.363628, 36.522064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684933, 33.744934, 36.422546>,  <32.726070, 33.973717, 36.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684933, 33.744934, 36.422546>,  <32.616367, 33.363628, 36.522064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684933, 33.744934, 36.422546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574136, 0.108559, 0.811531,
		0.800616, -0.281947, -0.528697,
		0.171414, 0.953268, -0.248790,
		32.736359, 34.030914, 36.347908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397968, 33.519070, 36.542389>,  <32.616367, 33.363628, 36.522064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397968, 33.519070, 36.542389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213562, 33.870640, 36.591290>,  <33.102917, 34.081581, 36.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213562, 33.870640, 36.591290>,  <33.397968, 33.519070, 36.542389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213562, 33.870640, 36.591290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618790, 0.219660, 0.754220,
		0.636052, 0.423358, -0.645140,
		-0.461017, 0.878930, 0.122255,
		33.075256, 34.134319, 36.627964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995953, 33.922966, 36.688545>,  <33.397968, 33.519070, 36.542389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995953, 33.922966, 36.688545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681606, 34.137676, 36.811367>,  <33.492996, 34.266502, 36.885059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681606, 34.137676, 36.811367>,  <33.995953, 33.922966, 36.688545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681606, 34.137676, 36.811367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524572, 0.315708, 0.790666,
		0.327467, 0.782434, -0.529682,
		-0.785868, 0.536774, 0.307059,
		33.445847, 34.298710, 36.903484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236839, 34.537331, 37.035904>,  <33.995953, 33.922966, 36.688545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236839, 34.537331, 37.035904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856197, 34.560047, 37.156712>,  <33.627811, 34.573677, 37.229195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856197, 34.560047, 37.156712>,  <34.236839, 34.537331, 37.035904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856197, 34.560047, 37.156712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301887, 0.356594, 0.884141,
		-0.057486, 0.932532, -0.356483,
		-0.951609, 0.056792, 0.302019,
		33.570713, 34.577084, 37.247318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242802, 35.138069, 37.384109>,  <34.236839, 34.537331, 37.035904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242802, 35.138069, 37.384109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931553, 34.926369, 37.519413>,  <33.744804, 34.799347, 37.600594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931553, 34.926369, 37.519413>,  <34.242802, 35.138069, 37.384109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931553, 34.926369, 37.519413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269839, 0.204636, 0.940910,
		-0.567196, 0.823419, -0.016419,
		-0.778123, -0.529250, 0.338259,
		33.698116, 34.767593, 37.620892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937077, 35.576065, 37.915085>,  <34.242802, 35.138069, 37.384109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937077, 35.576065, 37.915085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782597, 35.212387, 37.977329>,  <33.689907, 34.994183, 38.014675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782597, 35.212387, 37.977329>,  <33.937077, 35.576065, 37.915085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782597, 35.212387, 37.977329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125484, 0.115349, 0.985367,
		-0.913839, 0.400078, 0.069541,
		-0.386203, -0.909193, 0.155614,
		33.666737, 34.939629, 38.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364079, 35.687180, 38.415211>,  <33.937077, 35.576065, 37.915085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364079, 35.687180, 38.415211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482193, 35.305122, 38.424236>,  <33.553062, 35.075890, 38.429653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482193, 35.305122, 38.424236>,  <33.364079, 35.687180, 38.415211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482193, 35.305122, 38.424236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179089, 0.078537, 0.980693,
		-0.938475, -0.285540, 0.194247,
		0.295282, -0.955143, 0.022568,
		33.570778, 35.018578, 38.431007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963711, 35.396336, 38.866154>,  <33.364079, 35.687180, 38.415211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963711, 35.396336, 38.866154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283901, 35.156681, 38.872803>,  <33.476017, 35.012890, 38.876793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283901, 35.156681, 38.872803>,  <32.963711, 35.396336, 38.866154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283901, 35.156681, 38.872803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038494, 0.079069, 0.996126,
		-0.598128, -0.796735, 0.086356,
		0.800476, -0.599135, 0.016624,
		33.524044, 34.976940, 38.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833897, 34.944149, 39.438946>,  <32.963711, 35.396336, 38.866154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833897, 34.944149, 39.438946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222893, 34.885563, 39.366501>,  <33.456291, 34.850410, 39.323032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222893, 34.885563, 39.366501>,  <32.833897, 34.944149, 39.438946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222893, 34.885563, 39.366501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169923, -0.085724, 0.981722,
		-0.159316, -0.985494, -0.058478,
		0.972494, -0.146467, -0.181116,
		33.514641, 34.841625, 39.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024483, 34.362663, 39.730122>,  <32.833897, 34.944149, 39.438946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024483, 34.362663, 39.730122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365074, 34.570202, 39.699688>,  <33.569427, 34.694725, 39.681427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365074, 34.570202, 39.699688>,  <33.024483, 34.362663, 39.730122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365074, 34.570202, 39.699688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150655, -0.103060, 0.983200,
		0.502287, -0.848633, -0.165920,
		0.851476, 0.518845, -0.076085,
		33.620518, 34.725857, 39.676861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361462, 34.015301, 40.092148>,  <33.024483, 34.362663, 39.730122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361462, 34.015301, 40.092148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586288, 34.344345, 40.057735>,  <33.721184, 34.541771, 40.037086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586288, 34.344345, 40.057735>,  <33.361462, 34.015301, 40.092148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586288, 34.344345, 40.057735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262110, -0.078499, 0.961840,
		0.784463, -0.563165, -0.259735,
		0.562064, 0.822608, -0.086032,
		33.754906, 34.591125, 40.031925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993092, 33.824451, 40.365593>,  <33.361462, 34.015301, 40.092148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993092, 33.824451, 40.365593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944679, 34.218666, 40.413048>,  <33.915634, 34.455193, 40.441521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944679, 34.218666, 40.413048>,  <33.993092, 33.824451, 40.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944679, 34.218666, 40.413048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255961, -0.084485, 0.962988,
		0.959081, 0.146915, -0.242033,
		-0.121029, 0.985534, 0.118632,
		33.908371, 34.514328, 40.448639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575623, 34.000626, 40.696857>,  <33.993092, 33.824451, 40.365593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575623, 34.000626, 40.696857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331852, 34.310585, 40.763947>,  <34.185589, 34.496559, 40.804199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331852, 34.310585, 40.763947>,  <34.575623, 34.000626, 40.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331852, 34.310585, 40.763947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258743, -0.005580, 0.965930,
		0.749432, 0.632064, -0.197099,
		-0.609429, 0.774896, 0.167724,
		34.149025, 34.543053, 40.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026402, 34.331875, 41.241791>,  <34.575623, 34.000626, 40.696857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026402, 34.331875, 41.241791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649761, 34.463379, 41.270943>,  <34.423779, 34.542282, 41.288433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649761, 34.463379, 41.270943>,  <35.026402, 34.331875, 41.241791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649761, 34.463379, 41.270943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061327, -0.045385, 0.997085,
		0.331107, 0.943323, 0.022573,
		-0.941598, 0.328758, 0.072879,
		34.367283, 34.562008, 41.292805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973194, 34.604393, 41.870831>,  <35.026402, 34.331875, 41.241791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973194, 34.604393, 41.870831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580669, 34.570904, 41.801537>,  <34.345154, 34.550812, 41.759960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580669, 34.570904, 41.801537>,  <34.973194, 34.604393, 41.870831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580669, 34.570904, 41.801537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161011, -0.135566, 0.977598,
		-0.105332, 0.987225, 0.119553,
		-0.981316, -0.083723, -0.173233,
		34.286274, 34.545788, 41.749565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619736, 35.239185, 42.284115>,  <34.973194, 34.604393, 41.870831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619736, 35.239185, 42.284115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351688, 34.951984, 42.208839>,  <34.190861, 34.779663, 42.163673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351688, 34.951984, 42.208839>,  <34.619736, 35.239185, 42.284115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351688, 34.951984, 42.208839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216519, -0.053427, 0.974815,
		-0.709977, 0.693984, -0.119659,
		-0.670114, -0.718005, -0.188193,
		34.150654, 34.736584, 42.152382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060661, 35.475986, 42.567108>,  <34.619736, 35.239185, 42.284115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060661, 35.475986, 42.567108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964352, 35.091454, 42.513634>,  <33.906567, 34.860733, 42.481548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964352, 35.091454, 42.513634>,  <34.060661, 35.475986, 42.567108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964352, 35.091454, 42.513634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455485, -0.009715, 0.890190,
		-0.857065, 0.275228, -0.435532,
		-0.240775, -0.961330, -0.133689,
		33.892120, 34.803055, 42.473526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356476, 35.350979, 42.876877>,  <34.060661, 35.475986, 42.567108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356476, 35.350979, 42.876877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500439, 34.978123, 42.860970>,  <33.586815, 34.754410, 42.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500439, 34.978123, 42.860970>,  <33.356476, 35.350979, 42.876877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500439, 34.978123, 42.860970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246587, -0.136145, 0.959510,
		-0.899814, -0.335524, -0.278853,
		0.359903, -0.932142, -0.039769,
		33.608410, 34.698479, 42.849037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817341, 34.920570, 43.129673>,  <33.356476, 35.350979, 42.876877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817341, 34.920570, 43.129673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177822, 34.752193, 43.170921>,  <33.394112, 34.651169, 43.195671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177822, 34.752193, 43.170921>,  <32.817341, 34.920570, 43.129673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177822, 34.752193, 43.170921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208353, -0.212174, 0.954762,
		-0.380022, -0.881923, -0.278918,
		0.901207, -0.420944, 0.103120,
		33.448185, 34.625912, 43.201859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775883, 34.191769, 43.456600>,  <32.817341, 34.920570, 43.129673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775883, 34.191769, 43.456600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129414, 34.356190, 43.545940>,  <33.341530, 34.454842, 43.599545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129414, 34.356190, 43.545940>,  <32.775883, 34.191769, 43.456600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129414, 34.356190, 43.545940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099744, -0.300880, 0.948432,
		0.457063, -0.860525, -0.224924,
		0.883824, 0.411058, 0.223353,
		33.394562, 34.479507, 43.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176338, 33.694202, 43.871063>,  <32.775883, 34.191769, 43.456600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176338, 33.694202, 43.871063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300201, 34.069153, 43.934853>,  <33.374519, 34.294125, 43.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300201, 34.069153, 43.934853>,  <33.176338, 33.694202, 43.871063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300201, 34.069153, 43.934853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080382, -0.141307, 0.986697,
		0.947444, -0.318358, 0.031592,
		0.309658, 0.937379, 0.159471,
		33.393101, 34.350368, 43.982693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791229, 33.732216, 44.395397>,  <33.176338, 33.694202, 43.871063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791229, 33.732216, 44.395397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630997, 34.098694, 44.399937>,  <33.534859, 34.318581, 44.402660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630997, 34.098694, 44.399937>,  <33.791229, 33.732216, 44.395397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630997, 34.098694, 44.399937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105793, -0.058554, 0.992663,
		0.910135, 0.396438, 0.120382,
		-0.400578, 0.916192, 0.011351,
		33.510822, 34.373550, 44.403343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156258, 34.082977, 44.932259>,  <33.791229, 33.732216, 44.395397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156258, 34.082977, 44.932259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836914, 34.319229, 44.885311>,  <33.645309, 34.460979, 44.857143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836914, 34.319229, 44.885311>,  <34.156258, 34.082977, 44.932259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836914, 34.319229, 44.885311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087437, 0.079134, 0.993022,
		0.595799, 0.803051, -0.011534,
		-0.798360, 0.590633, -0.117364,
		33.597404, 34.496418, 44.850101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237461, 34.663647, 45.415649>,  <34.156258, 34.082977, 44.932259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237461, 34.663647, 45.415649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849049, 34.651119, 45.320889>,  <33.616001, 34.643604, 45.264030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849049, 34.651119, 45.320889>,  <34.237461, 34.663647, 45.415649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849049, 34.651119, 45.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233444, 0.336183, 0.912406,
		0.051067, 0.941276, -0.333754,
		-0.971028, -0.031319, -0.236903,
		33.557739, 34.641724, 45.249817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993763, 35.385662, 45.457821>,  <34.237461, 34.663647, 45.415649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993763, 35.385662, 45.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672092, 35.159550, 45.531303>,  <33.479088, 35.023880, 45.575394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672092, 35.159550, 45.531303>,  <33.993763, 35.385662, 45.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672092, 35.159550, 45.531303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175000, 0.520549, 0.835706,
		-0.568040, 0.639908, -0.517540,
		-0.804180, -0.565284, 0.183709,
		33.430840, 34.989964, 45.586414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449993, 35.900299, 45.577133>,  <33.993763, 35.385662, 45.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449993, 35.900299, 45.577133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364323, 35.549644, 45.749474>,  <33.312920, 35.339252, 45.852879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364323, 35.549644, 45.749474>,  <33.449993, 35.900299, 45.577133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364323, 35.549644, 45.749474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152644, 0.465706, 0.871675,
		-0.964794, 0.120928, -0.233558,
		-0.214179, -0.876638, 0.430851,
		33.300068, 35.286652, 45.878731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783207, 36.049774, 45.989727>,  <33.449993, 35.900299, 45.577133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783207, 36.049774, 45.989727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958134, 35.720707, 46.135036>,  <33.063091, 35.523266, 46.222221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958134, 35.720707, 46.135036>,  <32.783207, 36.049774, 45.989727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958134, 35.720707, 46.135036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066126, 0.373436, 0.925296,
		-0.896872, -0.428671, 0.108911,
		0.437319, -0.822671, 0.363271,
		33.089329, 35.473907, 46.244019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402657, 35.787640, 46.466244>,  <32.783207, 36.049774, 45.989727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402657, 35.787640, 46.466244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752480, 35.624359, 46.570953>,  <32.962372, 35.526390, 46.633778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752480, 35.624359, 46.570953>,  <32.402657, 35.787640, 46.466244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752480, 35.624359, 46.570953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175742, 0.236322, 0.955650,
		-0.451958, -0.881774, 0.134939,
		0.874556, -0.408200, 0.261773,
		33.014847, 35.501900, 46.649487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227665, 35.474243, 47.043594>,  <32.402657, 35.787640, 46.466244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227665, 35.474243, 47.043594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626305, 35.507202, 47.044743>,  <32.865486, 35.526978, 47.045433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626305, 35.507202, 47.044743>,  <32.227665, 35.474243, 47.043594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626305, 35.507202, 47.044743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029094, 0.318845, 0.947360,
		0.077147, -0.944218, 0.320156,
		0.996595, 0.082401, 0.002873,
		32.925282, 35.531921, 47.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415569, 35.175777, 47.659607>,  <32.227665, 35.474243, 47.043594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415569, 35.175777, 47.659607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749676, 35.375950, 47.568478>,  <32.950138, 35.496052, 47.513802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749676, 35.375950, 47.568478>,  <32.415569, 35.175777, 47.659607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749676, 35.375950, 47.568478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001762, 0.411895, 0.911230,
		0.549845, -0.761519, 0.343160,
		0.835265, 0.500431, -0.227820,
		33.000256, 35.526077, 47.500134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863823, 35.076061, 48.196400>,  <32.415569, 35.175777, 47.659607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863823, 35.076061, 48.196400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020737, 35.403851, 48.029270>,  <33.114883, 35.600525, 47.928993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020737, 35.403851, 48.029270>,  <32.863823, 35.076061, 48.196400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020737, 35.403851, 48.029270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188083, 0.373174, 0.908497,
		0.900412, -0.434970, -0.007741,
		0.392280, 0.819477, -0.417821,
		33.138420, 35.649693, 47.903923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579857, 35.133560, 48.477108>,  <32.863823, 35.076061, 48.196400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579857, 35.133560, 48.477108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439369, 35.481491, 48.338516>,  <33.355076, 35.690250, 48.255363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439369, 35.481491, 48.338516>,  <33.579857, 35.133560, 48.477108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439369, 35.481491, 48.338516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217897, 0.435827, 0.873256,
		0.910585, 0.231210, -0.342605,
		-0.351221, 0.869826, -0.346478,
		33.334003, 35.742439, 48.234573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111515, 35.613541, 48.699665>,  <33.579857, 35.133560, 48.477108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111515, 35.613541, 48.699665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813053, 35.851025, 48.579155>,  <33.633976, 35.993515, 48.506851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813053, 35.851025, 48.579155>,  <34.111515, 35.613541, 48.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813053, 35.851025, 48.579155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096347, 0.544037, 0.833511,
		0.658768, 0.592899, -0.463136,
		-0.746151, 0.593712, -0.301271,
		33.589207, 36.029137, 48.488773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341911, 36.235561, 48.788277>,  <34.111515, 35.613541, 48.699665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341911, 36.235561, 48.788277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946529, 36.295208, 48.777504>,  <33.709301, 36.330997, 48.771038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946529, 36.295208, 48.777504>,  <34.341911, 36.235561, 48.788277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946529, 36.295208, 48.777504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064002, 0.571961, 0.817780,
		0.137351, 0.806613, -0.574900,
		-0.988453, 0.149117, -0.026935,
		33.649994, 36.339943, 48.769424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159870, 36.966751, 48.851574>,  <34.341911, 36.235561, 48.788277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159870, 36.966751, 48.851574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818085, 36.789677, 48.960335>,  <33.613014, 36.683434, 49.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818085, 36.789677, 48.960335>,  <34.159870, 36.966751, 48.851574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818085, 36.789677, 48.960335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068880, 0.615283, 0.785291,
		-0.514933, 0.652271, -0.556226,
		-0.854459, -0.442685, 0.271901,
		33.561749, 36.656872, 49.041904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704113, 37.539509, 48.977051>,  <34.159870, 36.966751, 48.851574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704113, 37.539509, 48.977051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541153, 37.228611, 49.168850>,  <33.443378, 37.042072, 49.283928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541153, 37.228611, 49.168850>,  <33.704113, 37.539509, 48.977051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541153, 37.228611, 49.168850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013327, 0.530048, 0.847863,
		-0.913152, 0.339029, -0.226300,
		-0.407400, -0.777244, 0.479496,
		33.418934, 36.995438, 49.312698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072849, 38.233391, 49.194164>,  <33.704113, 37.539509, 48.977051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072849, 38.233391, 49.194164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093300, 38.632862, 49.196484>,  <34.105572, 38.872543, 49.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093300, 38.632862, 49.196484>,  <34.072849, 38.233391, 49.194164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093300, 38.632862, 49.196484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243397, -0.006827, -0.969903,
		-0.968578, 0.050999, -0.243424,
		0.051126, 0.998675, 0.005800,
		34.108639, 38.932465, 49.198223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924488, 38.416241, 48.561844>,  <34.072849, 38.233391, 49.194164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924488, 38.416241, 48.561844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092400, 38.749126, 48.706734>,  <34.193146, 38.948856, 48.793667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092400, 38.749126, 48.706734>,  <33.924488, 38.416241, 48.561844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092400, 38.749126, 48.706734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506568, 0.116325, -0.854317,
		-0.753107, 0.542120, -0.372740,
		0.419783, 0.832211, 0.362226,
		34.218334, 38.998791, 48.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767437, 38.891171, 48.087612>,  <33.924488, 38.416241, 48.561844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767437, 38.891171, 48.087612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109013, 38.967266, 48.281353>,  <34.313957, 39.012924, 48.397598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109013, 38.967266, 48.281353>,  <33.767437, 38.891171, 48.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109013, 38.967266, 48.281353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509558, -0.116899, -0.852458,
		-0.105554, 0.974753, -0.196764,
		0.853937, 0.190243, 0.484354,
		34.365192, 39.024338, 48.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977413, 39.142612, 47.557880>,  <33.767437, 38.891171, 48.087612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977413, 39.142612, 47.557880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288364, 39.121025, 47.808567>,  <34.474934, 39.108070, 47.958981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288364, 39.121025, 47.808567>,  <33.977413, 39.142612, 47.557880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288364, 39.121025, 47.808567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608526, -0.187832, -0.770983,
		0.159330, 0.980717, -0.113172,
		0.777374, -0.053973, 0.626720,
		34.521576, 39.104832, 47.996582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441727, 39.519047, 47.282051>,  <33.977413, 39.142612, 47.557880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441727, 39.519047, 47.282051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638237, 39.260300, 47.515362>,  <34.756142, 39.105053, 47.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638237, 39.260300, 47.515362>,  <34.441727, 39.519047, 47.282051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638237, 39.260300, 47.515362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641107, -0.184756, -0.744880,
		0.589602, 0.739884, 0.323945,
		0.491274, -0.646867, 0.583278,
		34.785618, 39.066238, 47.690346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182011, 39.617897, 47.139580>,  <34.441727, 39.519047, 47.282051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182011, 39.617897, 47.139580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141308, 39.254093, 47.300797>,  <35.116886, 39.035812, 47.397526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141308, 39.254093, 47.300797>,  <35.182011, 39.617897, 47.139580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141308, 39.254093, 47.300797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596728, -0.379971, -0.706780,
		0.795965, 0.168586, 0.581393,
		-0.101759, -0.909506, 0.403044,
		35.110779, 38.981243, 47.421711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885178, 39.287174, 47.108078>,  <35.182011, 39.617897, 47.139580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885178, 39.287174, 47.108078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606861, 39.001549, 47.139042>,  <35.439873, 38.830173, 47.157619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606861, 39.001549, 47.139042>,  <35.885178, 39.287174, 47.108078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606861, 39.001549, 47.139042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428698, -0.499345, -0.752910,
		0.576276, -0.490684, 0.653556,
		-0.695790, -0.714062, 0.077405,
		35.398125, 38.787331, 47.162262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225292, 38.631233, 46.807915>,  <35.885178, 39.287174, 47.108078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225292, 38.631233, 46.807915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839790, 38.524658, 46.813526>,  <35.608490, 38.460712, 46.816895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839790, 38.524658, 46.813526>,  <36.225292, 38.631233, 46.807915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839790, 38.524658, 46.813526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164041, -0.633192, -0.756412,
		0.210420, -0.726690, 0.653945,
		-0.963750, -0.266438, 0.014030,
		35.550667, 38.444725, 46.817734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272823, 37.948570, 46.710381>,  <36.225292, 38.631233, 46.807915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272823, 37.948570, 46.710381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911568, 38.062386, 46.581768>,  <35.694813, 38.130672, 46.504601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911568, 38.062386, 46.581768>,  <36.272823, 37.948570, 46.710381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911568, 38.062386, 46.581768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191232, -0.403907, -0.894589,
		-0.384402, -0.869427, 0.310374,
		-0.903142, 0.284528, -0.321525,
		35.640625, 38.147747, 46.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044037, 37.476688, 46.283092>,  <36.272823, 37.948570, 46.710381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044037, 37.476688, 46.283092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813862, 37.780228, 46.161091>,  <35.675755, 37.962349, 46.087891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813862, 37.780228, 46.161091>,  <36.044037, 37.476688, 46.283092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813862, 37.780228, 46.161091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102702, -0.302931, -0.947462,
		-0.811370, -0.576532, 0.096384,
		-0.575440, 0.758844, -0.305000,
		35.641232, 38.007881, 46.069592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540810, 37.252838, 45.802338>,  <36.044037, 37.476688, 46.283092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540810, 37.252838, 45.802338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558105, 37.647018, 45.736588>,  <35.568481, 37.883526, 45.697136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558105, 37.647018, 45.736588>,  <35.540810, 37.252838, 45.802338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558105, 37.647018, 45.736588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160688, -0.169246, -0.972386,
		-0.986058, 0.015633, -0.165668,
		0.043240, 0.985450, -0.164374,
		35.571075, 37.942654, 45.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012142, 37.381351, 45.417255>,  <35.540810, 37.252838, 45.802338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012142, 37.381351, 45.417255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255756, 37.688007, 45.335926>,  <35.401924, 37.872002, 45.287128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255756, 37.688007, 45.335926>,  <35.012142, 37.381351, 45.417255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255756, 37.688007, 45.335926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037036, -0.228578, -0.972821,
		-0.792277, 0.600014, -0.110819,
		0.609037, 0.766639, -0.203319,
		35.438469, 37.917999, 45.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672970, 37.867294, 45.019104>,  <35.012142, 37.381351, 45.417255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672970, 37.867294, 45.019104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044369, 37.992889, 44.939800>,  <35.267208, 38.068245, 44.892220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044369, 37.992889, 44.939800>,  <34.672970, 37.867294, 45.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044369, 37.992889, 44.939800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161641, -0.138930, -0.977021,
		-0.334314, 0.939208, -0.078243,
		0.928497, 0.313985, -0.198261,
		35.322918, 38.087086, 44.880322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585846, 38.431442, 44.688362>,  <34.672970, 37.867294, 45.019104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585846, 38.431442, 44.688362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956570, 38.307014, 44.604202>,  <35.179005, 38.232357, 44.553707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956570, 38.307014, 44.604202>,  <34.585846, 38.431442, 44.688362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956570, 38.307014, 44.604202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281089, -0.203087, -0.937947,
		0.249036, 0.928436, -0.275660,
		0.926806, -0.311067, -0.210397,
		35.234612, 38.213696, 44.541084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711414, 38.803661, 44.093006>,  <34.585846, 38.431442, 44.688362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711414, 38.803661, 44.093006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972675, 38.500832, 44.099136>,  <35.129433, 38.319134, 44.102814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972675, 38.500832, 44.099136>,  <34.711414, 38.803661, 44.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972675, 38.500832, 44.099136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212739, -0.202883, -0.955814,
		0.726726, 0.621035, -0.293572,
		0.653154, -0.757070, 0.015322,
		35.168621, 38.273712, 44.103733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052326, 38.871349, 43.512058>,  <34.711414, 38.803661, 44.093006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052326, 38.871349, 43.512058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105755, 38.484848, 43.600166>,  <35.137810, 38.252949, 43.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105755, 38.484848, 43.600166>,  <35.052326, 38.871349, 43.512058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105755, 38.484848, 43.600166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409692, -0.256218, -0.875503,
		0.902393, 0.026695, -0.430087,
		0.133568, -0.966250, 0.220273,
		35.145824, 38.194973, 43.666248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419231, 38.523430, 42.907516>,  <35.052326, 38.871349, 43.512058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419231, 38.523430, 42.907516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231052, 38.240288, 43.118275>,  <35.118145, 38.070404, 43.244732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231052, 38.240288, 43.118275>,  <35.419231, 38.523430, 42.907516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231052, 38.240288, 43.118275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227207, -0.479801, -0.847448,
		0.852677, -0.518392, 0.064890,
		-0.470445, -0.707856, 0.526897,
		35.089920, 38.027931, 43.276344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697208, 37.887493, 42.764835>,  <35.419231, 38.523430, 42.907516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697208, 37.887493, 42.764835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330105, 37.787048, 42.887897>,  <35.109840, 37.726780, 42.961735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330105, 37.787048, 42.887897>,  <35.697208, 37.887493, 42.764835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330105, 37.787048, 42.887897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135772, -0.529617, -0.837300,
		0.373201, -0.810213, 0.451968,
		-0.917762, -0.251117, 0.307658,
		35.054775, 37.711712, 42.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719566, 37.194683, 42.619793>,  <35.697208, 37.887493, 42.764835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719566, 37.194683, 42.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 37.309212, 42.653698>,  <35.108765, 37.377930, 42.674042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 37.309212, 42.653698>,  <35.719566, 37.194683, 42.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337814, 37.309212, 42.653698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212752, -0.452819, -0.865847,
		-0.209526, -0.844379, 0.493075,
		-0.954377, 0.286320, 0.084766,
		35.051502, 37.395107, 42.679127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314983, 36.515804, 42.585274>,  <35.719566, 37.194683, 42.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314983, 36.515804, 42.585274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100510, 36.839733, 42.490025>,  <34.971825, 37.034088, 42.432877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100510, 36.839733, 42.490025>,  <35.314983, 36.515804, 42.585274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100510, 36.839733, 42.490025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301682, -0.447315, -0.841961,
		-0.788352, -0.379606, 0.484149,
		-0.536181, 0.809820, -0.238122,
		34.939655, 37.082680, 42.418587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824856, 36.274067, 42.170704>,  <35.314983, 36.515804, 42.585274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824856, 36.274067, 42.170704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761852, 36.655693, 42.068756>,  <34.724049, 36.884666, 42.007587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761852, 36.655693, 42.068756>,  <34.824856, 36.274067, 42.170704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761852, 36.655693, 42.068756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361744, -0.295895, -0.884074,
		-0.918876, -0.047052, 0.391732,
		-0.157509, 0.954061, -0.254870,
		34.714600, 36.941910, 41.992294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202984, 36.291874, 41.784595>,  <34.824856, 36.274067, 42.170704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202984, 36.291874, 41.784595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401451, 36.623276, 41.680756>,  <34.520531, 36.822117, 41.618450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401451, 36.623276, 41.680756>,  <34.202984, 36.291874, 41.784595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401451, 36.623276, 41.680756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037442, -0.319144, -0.946966,
		-0.867421, 0.460130, -0.189369,
		0.496164, 0.828509, -0.259604,
		34.550301, 36.871830, 41.602875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959694, 36.430691, 41.130428>,  <34.202984, 36.291874, 41.784595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959694, 36.430691, 41.130428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285000, 36.663414, 41.134628>,  <34.480183, 36.803047, 41.137150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285000, 36.663414, 41.134628>,  <33.959694, 36.430691, 41.130428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285000, 36.663414, 41.134628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183389, -0.239131, -0.953512,
		-0.552245, 0.777380, -0.301173,
		0.813261, 0.581804, 0.010504,
		34.528976, 36.837955, 41.137779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940029, 36.882885, 40.584507>,  <33.959694, 36.430691, 41.130428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940029, 36.882885, 40.584507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331818, 36.870918, 40.664238>,  <34.566891, 36.863739, 40.712078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331818, 36.870918, 40.664238>,  <33.940029, 36.882885, 40.584507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331818, 36.870918, 40.664238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198843, -0.018465, -0.979857,
		0.032993, 0.999382, -0.012138,
		0.979476, -0.029915, 0.199329,
		34.625660, 36.861942, 40.724037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273300, 37.427044, 40.206650>,  <33.940029, 36.882885, 40.584507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273300, 37.427044, 40.206650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549347, 37.148750, 40.286335>,  <34.714973, 36.981773, 40.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549347, 37.148750, 40.286335>,  <34.273300, 37.427044, 40.206650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549347, 37.148750, 40.286335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420149, 0.161041, -0.893051,
		0.589248, 0.700010, 0.403451,
		0.690117, -0.695739, 0.199215,
		34.756382, 36.940029, 40.346100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819939, 37.755779, 39.962799>,  <34.273300, 37.427044, 40.206650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819939, 37.755779, 39.962799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893291, 37.362659, 39.954006>,  <34.937302, 37.126789, 39.948730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893291, 37.362659, 39.954006>,  <34.819939, 37.755779, 39.962799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893291, 37.362659, 39.954006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360094, 0.087967, -0.928759,
		0.914715, 0.162403, 0.370030,
		0.183384, -0.982795, -0.021985,
		34.948307, 37.067822, 39.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334846, 37.712181, 39.561939>,  <34.819939, 37.755779, 39.962799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334846, 37.712181, 39.561939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223190, 37.328148, 39.554832>,  <35.156197, 37.097729, 39.550568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223190, 37.328148, 39.554832>,  <35.334846, 37.712181, 39.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223190, 37.328148, 39.554832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417293, -0.104619, -0.902730,
		0.864840, -0.259401, 0.429840,
		-0.279138, -0.960086, -0.017767,
		35.139450, 37.040123, 39.549503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884323, 37.436844, 39.245773>,  <35.334846, 37.712181, 39.561939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884323, 37.436844, 39.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 37.167980, 39.198921>,  <35.416428, 37.006660, 39.170811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 37.167980, 39.198921>,  <35.884323, 37.436844, 39.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591888, 37.167980, 39.198921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287978, -0.148363, -0.946074,
		0.618534, -0.725391, 0.302033,
		-0.731084, -0.672158, -0.117129,
		35.372562, 36.966331, 39.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183590, 36.913841, 38.891479>,  <35.884323, 37.436844, 39.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183590, 36.913841, 38.891479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794498, 36.847279, 38.826855>,  <35.561043, 36.807343, 38.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794498, 36.847279, 38.826855>,  <36.183590, 36.913841, 38.891479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794498, 36.847279, 38.826855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157846, 0.035409, -0.986829,
		0.169932, -0.985422, -0.008178,
		-0.972732, -0.166403, -0.161562,
		35.502678, 36.797359, 38.778385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152637, 36.388248, 38.445988>,  <36.183590, 36.913841, 38.891479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152637, 36.388248, 38.445988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805161, 36.578838, 38.391804>,  <35.596676, 36.693192, 38.359295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805161, 36.578838, 38.391804>,  <36.152637, 36.388248, 38.445988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805161, 36.578838, 38.391804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127970, -0.048308, -0.990601,
		-0.478537, -0.877861, -0.019009,
		-0.868692, 0.476472, -0.135457,
		35.544552, 36.721779, 38.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724594, 36.076874, 37.966991>,  <36.152637, 36.388248, 38.445988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724594, 36.076874, 37.966991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562798, 36.442604, 37.959003>,  <35.465721, 36.662041, 37.954212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562798, 36.442604, 37.959003>,  <35.724594, 36.076874, 37.966991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562798, 36.442604, 37.959003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004531, -0.023835, -0.999705,
		-0.914530, -0.404283, 0.013784,
		-0.404492, 0.914323, -0.019966,
		35.441448, 36.716900, 37.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312817, 35.993092, 37.425831>,  <35.724594, 36.076874, 37.966991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312817, 35.993092, 37.425831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380352, 36.383389, 37.481583>,  <35.420872, 36.617565, 37.515034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380352, 36.383389, 37.481583>,  <35.312817, 35.993092, 37.425831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380352, 36.383389, 37.481583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094429, 0.124742, -0.987686,
		-0.981110, 0.179921, -0.071077,
		0.168839, 0.975740, 0.139375,
		35.431004, 36.676109, 37.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940266, 36.336563, 36.887310>,  <35.312817, 35.993092, 37.425831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940266, 36.336563, 36.887310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191036, 36.615871, 37.025513>,  <35.341499, 36.783455, 37.108437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191036, 36.615871, 37.025513>,  <34.940266, 36.336563, 36.887310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191036, 36.615871, 37.025513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377780, 0.115387, -0.918678,
		-0.681354, 0.706472, -0.191453,
		0.626929, 0.698272, 0.345510,
		35.379116, 36.825352, 37.129166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921219, 36.790207, 36.309006>,  <34.940266, 36.336563, 36.887310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921219, 36.790207, 36.309006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221294, 36.904781, 36.547390>,  <35.401340, 36.973526, 36.690422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221294, 36.904781, 36.547390>,  <34.921219, 36.790207, 36.309006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221294, 36.904781, 36.547390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577464, 0.155252, -0.801519,
		-0.322106, 0.945438, -0.048936,
		0.750189, 0.286433, 0.595964,
		35.446350, 36.990711, 36.726181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091648, 37.569004, 36.256489>,  <34.921219, 36.790207, 36.309006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091648, 37.569004, 36.256489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423222, 37.373085, 36.364540>,  <35.622166, 37.255535, 36.429371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423222, 37.373085, 36.364540>,  <35.091648, 37.569004, 36.256489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423222, 37.373085, 36.364540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399786, 0.181043, -0.898552,
		0.391200, 0.852834, 0.345886,
		0.828935, -0.489794, 0.270127,
		35.671902, 37.226147, 36.445580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616589, 37.985851, 35.976265>,  <35.091648, 37.569004, 36.256489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616589, 37.985851, 35.976265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765251, 37.620022, 36.040043>,  <35.854450, 37.400524, 36.078308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765251, 37.620022, 36.040043>,  <35.616589, 37.985851, 35.976265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765251, 37.620022, 36.040043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547580, 0.077265, -0.833178,
		0.749685, 0.396966, 0.529519,
		0.371657, -0.914575, 0.159446,
		35.876747, 37.345650, 36.087875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219383, 38.076027, 35.695030>,  <35.616589, 37.985851, 35.976265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219383, 38.076027, 35.695030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221241, 37.676983, 35.722603>,  <36.222355, 37.437557, 35.739147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221241, 37.676983, 35.722603>,  <36.219383, 38.076027, 35.695030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221241, 37.676983, 35.722603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622768, -0.051049, -0.780739,
		0.782393, 0.046553, 0.621043,
		0.004642, -0.997611, 0.068932,
		36.222633, 37.377701, 35.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952801, 37.926445, 35.660309>,  <36.219383, 38.076027, 35.695030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952801, 37.926445, 35.660309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764980, 37.596825, 35.533531>,  <36.652287, 37.399052, 35.457462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764980, 37.596825, 35.533531>,  <36.952801, 37.926445, 35.660309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764980, 37.596825, 35.533531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582171, -0.019092, -0.812842,
		0.663774, -0.566191, 0.488704,
		-0.469554, -0.824053, -0.316947,
		36.624115, 37.349609, 35.438446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463196, 37.475983, 35.509094>,  <36.952801, 37.926445, 35.660309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463196, 37.475983, 35.509094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143742, 37.333916, 35.314758>,  <36.952068, 37.248676, 35.198158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143742, 37.333916, 35.314758>,  <37.463196, 37.475983, 35.509094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143742, 37.333916, 35.314758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454558, 0.173071, -0.873741,
		0.394411, -0.918640, 0.023225,
		-0.798634, -0.355171, -0.485837,
		36.904152, 37.227364, 35.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749256, 36.795860, 35.497326>,  <37.463196, 37.475983, 35.509094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749256, 36.795860, 35.497326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994827, 37.054203, 35.678856>,  <38.142170, 37.209209, 35.787773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994827, 37.054203, 35.678856>,  <37.749256, 36.795860, 35.497326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994827, 37.054203, 35.678856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657990, -0.101133, -0.746204,
		-0.436046, 0.756729, -0.487057,
		0.613932, 0.645858, 0.453822,
		38.179008, 37.247959, 35.815002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157497, 37.142029, 34.943962>,  <37.749256, 36.795860, 35.497326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157497, 37.142029, 34.943962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330036, 37.233459, 35.293060>,  <38.433559, 37.288319, 35.502522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330036, 37.233459, 35.293060>,  <38.157497, 37.142029, 34.943962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330036, 37.233459, 35.293060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842549, 0.243808, -0.480280,
		-0.322565, 0.942501, -0.087423,
		0.431350, 0.228580, 0.872748,
		38.459442, 37.302032, 35.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436665, 37.877327, 34.997936>,  <38.157497, 37.142029, 34.943962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436665, 37.877327, 34.997936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636726, 37.628551, 35.238945>,  <38.756763, 37.479286, 35.383553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636726, 37.628551, 35.238945>,  <38.436665, 37.877327, 34.997936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636726, 37.628551, 35.238945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847379, 0.208248, -0.488449,
		0.178310, 0.754868, 0.631174,
		0.500155, -0.621938, 0.602526,
		38.786774, 37.441971, 35.419704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043442, 38.212227, 35.127445>,  <38.436665, 37.877327, 34.997936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043442, 38.212227, 35.127445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085522, 37.817501, 35.176640>,  <39.110767, 37.580666, 35.206158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085522, 37.817501, 35.176640>,  <39.043442, 38.212227, 35.127445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085522, 37.817501, 35.176640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957127, 0.066906, -0.281836,
		0.269892, 0.147363, 0.951547,
		0.105196, -0.986817, 0.122987,
		39.117081, 37.521458, 35.213535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587639, 38.051193, 35.606144>,  <39.043442, 38.212227, 35.127445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587639, 38.051193, 35.606144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554054, 37.726131, 35.375481>,  <39.533901, 37.531094, 35.237083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554054, 37.726131, 35.375481>,  <39.587639, 38.051193, 35.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554054, 37.726131, 35.375481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990993, -0.007514, -0.133706,
		0.104325, -0.582694, 0.805968,
		-0.083966, -0.812657, -0.576661,
		39.528866, 37.482334, 35.202480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987572, 37.542568, 35.853241>,  <39.587639, 38.051193, 35.606144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987572, 37.542568, 35.853241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949421, 37.523579, 35.455517>,  <39.926533, 37.512184, 35.216881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949421, 37.523579, 35.455517>,  <39.987572, 37.542568, 35.853241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949421, 37.523579, 35.455517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995304, -0.021161, -0.094460,
		-0.016556, -0.998648, 0.049268,
		-0.095375, -0.047473, -0.994309,
		39.920807, 37.509338, 35.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298210, 36.878422, 35.620621>,  <39.987572, 37.542568, 35.853241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298210, 36.878422, 35.620621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310146, 37.202713, 35.386753>,  <40.317307, 37.397285, 35.246433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310146, 37.202713, 35.386753>,  <40.298210, 36.878422, 35.620621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310146, 37.202713, 35.386753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999467, -0.031956, 0.006695,
		-0.013256, -0.584556, -0.811245,
		0.029838, 0.810724, -0.584667,
		40.319099, 37.445930, 35.211353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704105, 36.745518, 35.002510>,  <40.298210, 36.878422, 35.620621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704105, 36.745518, 35.002510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694675, 37.130112, 35.112045>,  <40.689018, 37.360870, 35.177765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694675, 37.130112, 35.112045>,  <40.704105, 36.745518, 35.002510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694675, 37.130112, 35.112045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978766, -0.033595, 0.202211,
		0.203624, 0.272785, -0.940280,
		-0.023571, 0.961488, 0.273834,
		40.687603, 37.418560, 35.194195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485409, 36.617985, 34.819050>,  <40.704105, 36.745518, 35.002510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485409, 36.617985, 34.819050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877262, 36.581470, 34.890579>,  <42.112373, 36.559563, 34.933495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877262, 36.581470, 34.890579>,  <41.485409, 36.617985, 34.819050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877262, 36.581470, 34.890579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199768, 0.532248, -0.822681,
		-0.020075, 0.841652, 0.539647,
		0.979638, -0.091289, 0.178820,
		42.171154, 36.554085, 34.944225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768398, 37.229408, 34.609535>,  <41.485409, 36.617985, 34.819050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768398, 37.229408, 34.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098942, 37.004959, 34.628582>,  <42.297268, 36.870289, 34.640011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098942, 37.004959, 34.628582>,  <41.768398, 37.229408, 34.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098942, 37.004959, 34.628582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369981, 0.477225, -0.797101,
		0.424544, 0.676313, 0.601965,
		0.826363, -0.561120, 0.047620,
		42.346851, 36.836624, 34.642868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426197, 37.659615, 34.438839>,  <41.768398, 37.229408, 34.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426197, 37.659615, 34.438839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534851, 37.279148, 34.380192>,  <42.600044, 37.050869, 34.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534851, 37.279148, 34.380192>,  <42.426197, 37.659615, 34.438839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534851, 37.279148, 34.380192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402110, 0.250579, -0.880635,
		0.874371, 0.180251, 0.450539,
		0.271631, -0.951167, -0.146619,
		42.616341, 36.993797, 34.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098576, 37.620239, 34.290314>,  <42.426197, 37.659615, 34.438839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098576, 37.620239, 34.290314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974121, 37.271263, 34.139557>,  <42.899448, 37.061878, 34.049103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974121, 37.271263, 34.139557>,  <43.098576, 37.620239, 34.290314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974121, 37.271263, 34.139557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316231, 0.278938, -0.906748,
		0.896209, -0.401309, 0.189103,
		-0.311138, -0.872436, -0.376893,
		42.880779, 37.009533, 34.026489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568584, 37.465809, 33.723583>,  <43.098576, 37.620239, 34.290314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568584, 37.465809, 33.723583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260887, 37.224655, 33.638924>,  <43.076267, 37.079964, 33.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260887, 37.224655, 33.638924>,  <43.568584, 37.465809, 33.723583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260887, 37.224655, 33.638924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174306, 0.120680, -0.977269,
		0.614719, -0.788651, 0.012253,
		-0.769245, -0.602881, -0.211651,
		43.030113, 37.043789, 33.575428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758099, 37.115147, 33.141132>,  <43.568584, 37.465809, 33.723583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758099, 37.115147, 33.141132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361534, 37.068222, 33.118011>,  <43.123596, 37.040070, 33.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361534, 37.068222, 33.118011>,  <43.758099, 37.115147, 33.141132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361534, 37.068222, 33.118011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056498, 0.014447, -0.998298,
		0.117945, -0.992990, -0.007695,
		-0.991411, -0.117310, -0.057806,
		43.064110, 37.033028, 33.100670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646332, 36.524853, 32.826782>,  <43.758099, 37.115147, 33.141132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646332, 36.524853, 32.826782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306862, 36.725353, 32.759258>,  <43.103180, 36.845654, 32.718742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306862, 36.725353, 32.759258>,  <43.646332, 36.524853, 32.826782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306862, 36.725353, 32.759258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135947, -0.101722, -0.985480,
		-0.511142, -0.859304, 0.018186,
		-0.848676, 0.501248, -0.168814,
		43.052258, 36.875729, 32.708614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286884, 36.083652, 32.335854>,  <43.646332, 36.524853, 32.826782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286884, 36.083652, 32.335854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133190, 36.452538, 32.318459>,  <43.040974, 36.673866, 32.308022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133190, 36.452538, 32.318459>,  <43.286884, 36.083652, 32.335854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133190, 36.452538, 32.318459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090001, -0.009460, -0.995897,
		-0.918837, -0.386574, -0.079365,
		-0.384237, 0.922210, -0.043484,
		43.017918, 36.729202, 32.305412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771519, 36.097351, 31.877522>,  <43.286884, 36.083652, 32.335854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771519, 36.097351, 31.877522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859169, 36.487629, 31.876373>,  <42.911758, 36.721794, 31.875685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859169, 36.487629, 31.876373>,  <42.771519, 36.097351, 31.877522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859169, 36.487629, 31.876373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103933, -0.026268, -0.994237,
		-0.970145, 0.217565, -0.107163,
		0.219126, 0.975692, -0.002871,
		42.924908, 36.780338, 31.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377220, 36.411278, 31.292656>,  <42.771519, 36.097351, 31.877522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377220, 36.411278, 31.292656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665840, 36.679966, 31.359768>,  <42.839012, 36.841179, 31.400036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665840, 36.679966, 31.359768>,  <42.377220, 36.411278, 31.292656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665840, 36.679966, 31.359768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020127, 0.262579, -0.964701,
		-0.692068, 0.692705, 0.202984,
		0.721552, 0.671724, 0.167780,
		42.882305, 36.881485, 31.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151611, 37.100147, 30.950193>,  <42.377220, 36.411278, 31.292656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151611, 37.100147, 30.950193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549770, 37.075981, 30.979927>,  <42.788666, 37.061481, 30.997768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549770, 37.075981, 30.979927>,  <42.151611, 37.100147, 30.950193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549770, 37.075981, 30.979927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088451, 0.281797, -0.955388,
		0.036773, 0.957570, 0.285845,
		0.995401, -0.060416, 0.074336,
		42.848392, 37.057858, 31.002228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373276, 37.610485, 30.643063>,  <42.151611, 37.100147, 30.950193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373276, 37.610485, 30.643063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689880, 37.366150, 30.635292>,  <42.879845, 37.219547, 30.630629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689880, 37.366150, 30.635292>,  <42.373276, 37.610485, 30.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689880, 37.366150, 30.635292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069104, 0.121038, -0.990240,
		0.607229, 0.782448, 0.138016,
		0.791516, -0.610840, -0.019428,
		42.927334, 37.182899, 30.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825409, 37.878006, 30.139889>,  <42.373276, 37.610485, 30.643063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825409, 37.878006, 30.139889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992802, 37.518620, 30.192995>,  <43.093239, 37.302986, 30.224859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992802, 37.518620, 30.192995>,  <42.825409, 37.878006, 30.139889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992802, 37.518620, 30.192995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299314, -0.001585, -0.954153,
		0.857487, 0.439035, 0.268261,
		0.418482, -0.898468, 0.132768,
		43.118347, 37.249081, 30.232826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544743, 37.920990, 29.898537>,  <42.825409, 37.878006, 30.139889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544743, 37.920990, 29.898537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443493, 37.535156, 29.868883>,  <43.382744, 37.303654, 29.851091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443493, 37.535156, 29.868883>,  <43.544743, 37.920990, 29.898537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443493, 37.535156, 29.868883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337165, -0.016135, -0.941307,
		0.906778, -0.263267, 0.329309,
		-0.253129, -0.964588, -0.074134,
		43.367554, 37.245781, 29.846643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133583, 37.668240, 29.499548>,  <43.544743, 37.920990, 29.898537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133583, 37.668240, 29.499548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816551, 37.424667, 29.486776>,  <43.626331, 37.278522, 29.479115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816551, 37.424667, 29.486776>,  <44.133583, 37.668240, 29.499548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816551, 37.424667, 29.486776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057149, -0.022051, -0.998122,
		0.607084, -0.792916, 0.052277,
		-0.792580, -0.608932, -0.031928,
		43.578777, 37.241989, 29.477198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314087, 37.156593, 29.178598>,  <44.133583, 37.668240, 29.499548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314087, 37.156593, 29.178598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918194, 37.131985, 29.127001>,  <43.680656, 37.117222, 29.096043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918194, 37.131985, 29.127001>,  <44.314087, 37.156593, 29.178598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918194, 37.131985, 29.127001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132953, -0.065313, -0.988968,
		0.052415, -0.995967, 0.072822,
		-0.989735, -0.061519, -0.128994,
		43.621273, 37.113529, 29.088303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213230, 36.666630, 28.779528>,  <44.314087, 37.156593, 29.178598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213230, 36.666630, 28.779528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854485, 36.837086, 28.732138>,  <43.639236, 36.939362, 28.703705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854485, 36.837086, 28.732138>,  <44.213230, 36.666630, 28.779528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854485, 36.837086, 28.732138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050719, -0.167003, -0.984651,
		-0.439387, -0.889108, 0.128166,
		-0.896865, 0.426142, -0.118473,
		43.585426, 36.964928, 28.696596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863705, 36.278591, 28.105690>,  <44.213230, 36.666630, 28.779528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863705, 36.278591, 28.105690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630657, 36.596977, 28.171412>,  <43.490829, 36.788010, 28.210844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630657, 36.596977, 28.171412>,  <43.863705, 36.278591, 28.105690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630657, 36.596977, 28.171412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187006, 0.065448, -0.980176,
		-0.790937, -0.601798, 0.110719,
		-0.582622, 0.795962, 0.164305,
		43.455872, 36.835766, 28.220703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193569, 36.170006, 27.803825>,  <43.863705, 36.278591, 28.105690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193569, 36.170006, 27.803825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261097, 36.563927, 27.820103>,  <43.301613, 36.800282, 27.829868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261097, 36.563927, 27.820103>,  <43.193569, 36.170006, 27.803825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261097, 36.563927, 27.820103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183733, 0.072006, -0.980335,
		-0.968370, 0.158027, 0.193098,
		0.168823, 0.984806, 0.040694,
		43.311745, 36.859367, 27.832312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608532, 36.555847, 27.499413>,  <43.193569, 36.170006, 27.803825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608532, 36.555847, 27.499413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917709, 36.809490, 27.490711>,  <43.103214, 36.961674, 27.485491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917709, 36.809490, 27.490711>,  <42.608532, 36.555847, 27.499413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917709, 36.809490, 27.490711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104072, 0.092889, -0.990223,
		-0.625885, 0.767647, 0.137790,
		0.772940, 0.634105, -0.021753,
		43.149593, 36.999722, 27.484186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336544, 37.159382, 27.091311>,  <42.608532, 36.555847, 27.499413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336544, 37.159382, 27.091311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733707, 37.112236, 27.085121>,  <42.972004, 37.083950, 27.081408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733707, 37.112236, 27.085121>,  <42.336544, 37.159382, 27.091311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733707, 37.112236, 27.085121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004882, 0.089608, -0.995965,
		0.118775, 0.988978, 0.088397,
		0.992909, -0.117864, -0.015471,
		43.031582, 37.076878, 27.080481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575733, 37.693642, 26.652786>,  <42.336544, 37.159382, 27.091311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575733, 37.693642, 26.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868191, 37.421066, 26.665840>,  <43.043667, 37.257519, 26.673674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868191, 37.421066, 26.665840>,  <42.575733, 37.693642, 26.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868191, 37.421066, 26.665840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020008, -0.026398, -0.999451,
		0.681928, 0.731398, -0.005666,
		0.731146, -0.681440, 0.032636,
		43.087536, 37.216633, 26.675631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726444, 37.780643, 25.976578>,  <42.575733, 37.693642, 26.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726444, 37.780643, 25.976578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953053, 37.481762, 26.115566>,  <43.089016, 37.302433, 26.198959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953053, 37.481762, 26.115566>,  <42.726444, 37.780643, 25.976578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953053, 37.481762, 26.115566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434493, -0.087433, -0.896421,
		0.700194, 0.658813, 0.275124,
		0.566520, -0.747208, 0.347470,
		43.123009, 37.257599, 26.219807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363770, 37.741371, 25.595823>,  <42.726444, 37.780643, 25.976578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363770, 37.741371, 25.595823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370857, 37.389812, 25.786497>,  <43.375111, 37.178879, 25.900902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370857, 37.389812, 25.786497>,  <43.363770, 37.741371, 25.595823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370857, 37.389812, 25.786497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565696, -0.384301, -0.729589,
		0.824423, 0.282587, 0.490378,
		0.017719, -0.878896, 0.476685,
		43.376171, 37.126144, 25.929502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024471, 37.404999, 25.548002>,  <43.363770, 37.741371, 25.595823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024471, 37.404999, 25.548002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741268, 37.125690, 25.590233>,  <43.571346, 36.958107, 25.615572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741268, 37.125690, 25.590233>,  <44.024471, 37.404999, 25.548002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741268, 37.125690, 25.590233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408892, -0.527217, -0.744883,
		0.575792, -0.484212, 0.658789,
		-0.708005, -0.698271, 0.105577,
		43.528866, 36.916210, 25.621906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362862, 36.664787, 25.531876>,  <44.024471, 37.404999, 25.548002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362862, 36.664787, 25.531876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983566, 36.665821, 25.404861>,  <43.755989, 36.666439, 25.328653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983566, 36.665821, 25.404861>,  <44.362862, 36.664787, 25.531876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983566, 36.665821, 25.404861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285009, -0.434018, -0.854633,
		-0.140022, -0.900901, 0.410819,
		-0.948242, 0.002580, -0.317537,
		43.699093, 36.666595, 25.309601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135143, 36.775417, 25.723490>,  <44.362862, 36.664787, 25.531876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135143, 36.775417, 25.723490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356934, 36.458740, 25.826071>,  <45.490009, 36.268734, 25.887619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356934, 36.458740, 25.826071>,  <45.135143, 36.775417, 25.723490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356934, 36.458740, 25.826071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011457, 0.315398, 0.948890,
		-0.832118, -0.523203, 0.183952,
		0.554480, -0.791696, 0.256454,
		45.523277, 36.221230, 25.903008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882515, 36.385563, 26.288853>,  <45.135143, 36.775417, 25.723490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882515, 36.385563, 26.288853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280193, 36.342548, 26.287851>,  <45.518803, 36.316738, 26.287251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280193, 36.342548, 26.287851>,  <44.882515, 36.385563, 26.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280193, 36.342548, 26.287851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031452, 0.268373, 0.962802,
		-0.102867, -0.957294, 0.270198,
		0.994198, -0.107539, -0.002502,
		45.578453, 36.310287, 26.287100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124851, 36.026459, 26.856323>,  <44.882515, 36.385563, 26.288853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124851, 36.026459, 26.856323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444355, 36.246754, 26.759443>,  <45.636059, 36.378933, 26.701315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444355, 36.246754, 26.759443>,  <45.124851, 36.026459, 26.856323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444355, 36.246754, 26.759443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180706, 0.164367, 0.969706,
		0.573866, -0.818333, 0.031769,
		0.798764, 0.550740, -0.242202,
		45.683983, 36.411976, 26.686783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414886, 36.211311, 27.491051>,  <45.124851, 36.026459, 26.856323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414886, 36.211311, 27.491051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663933, 36.459068, 27.299759>,  <45.813358, 36.607723, 27.184984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663933, 36.459068, 27.299759>,  <45.414886, 36.211311, 27.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663933, 36.459068, 27.299759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202941, 0.462417, 0.863126,
		0.755756, -0.634446, 0.162207,
		0.622613, 0.619394, -0.478229,
		45.850716, 36.644886, 27.156290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106728, 36.157383, 27.759909>,  <45.414886, 36.211311, 27.491051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106728, 36.157383, 27.759909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047272, 36.531197, 27.630569>,  <46.011597, 36.755486, 27.552965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047272, 36.531197, 27.630569>,  <46.106728, 36.157383, 27.759909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047272, 36.531197, 27.630569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241932, 0.351412, 0.904422,
		0.958840, 0.056206, -0.278328,
		-0.148642, 0.934532, -0.323350,
		46.002678, 36.811558, 27.533564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702400, 36.638260, 27.757708>,  <46.106728, 36.157383, 27.759909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702400, 36.638260, 27.757708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369232, 36.853100, 27.811022>,  <46.169331, 36.982006, 27.843010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369232, 36.853100, 27.811022>,  <46.702400, 36.638260, 27.757708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369232, 36.853100, 27.811022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219752, 0.099965, 0.970421,
		0.507892, 0.837572, -0.201292,
		-0.832919, 0.537103, 0.133286,
		46.119358, 37.014233, 27.851007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955944, 37.300617, 28.053370>,  <46.702400, 36.638260, 27.757708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955944, 37.300617, 28.053370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570633, 37.257221, 28.151619>,  <46.339447, 37.231186, 28.210569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570633, 37.257221, 28.151619>,  <46.955944, 37.300617, 28.053370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570633, 37.257221, 28.151619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228382, 0.150068, 0.961936,
		-0.141217, 0.982706, -0.119781,
		-0.963275, -0.108486, 0.245624,
		46.281651, 37.224674, 28.225306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795544, 37.919865, 28.459808>,  <46.955944, 37.300617, 28.053370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795544, 37.919865, 28.459808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 37.649929, 28.535542>,  <46.339054, 37.487968, 28.580980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 37.649929, 28.535542>,  <46.795544, 37.919865, 28.459808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510239, 37.649929, 28.535542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105121, 0.164074, 0.980831,
		-0.692966, 0.719495, -0.046088,
		-0.713265, -0.674838, 0.189332,
		46.296261, 37.447479, 28.592340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424904, 38.233612, 28.893671>,  <46.795544, 37.919865, 28.459808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424904, 38.233612, 28.893671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289093, 37.862961, 28.958261>,  <46.207607, 37.640568, 28.997017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289093, 37.862961, 28.958261>,  <46.424904, 38.233612, 28.893671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289093, 37.862961, 28.958261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097165, 0.136205, 0.985904,
		-0.935564, 0.350431, 0.043791,
		-0.339527, -0.926631, 0.161478,
		46.187233, 37.584972, 29.006704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843868, 38.239414, 29.453669>,  <46.424904, 38.233612, 28.893671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843868, 38.239414, 29.453669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025688, 37.883461, 29.438251>,  <46.134781, 37.669888, 29.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025688, 37.883461, 29.438251>,  <45.843868, 38.239414, 29.453669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025688, 37.883461, 29.438251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006864, -0.039769, 0.999185,
		-0.890694, -0.454446, -0.011969,
		0.454551, -0.889886, -0.038542,
		46.162052, 37.616493, 29.426689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477982, 37.898926, 29.949408>,  <45.843868, 38.239414, 29.453669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477982, 37.898926, 29.949408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806953, 37.685020, 29.871798>,  <46.004337, 37.556679, 29.825232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806953, 37.685020, 29.871798>,  <45.477982, 37.898926, 29.949408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806953, 37.685020, 29.871798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104986, -0.192529, 0.975659,
		-0.559099, -0.822778, -0.102199,
		0.822427, -0.534761, -0.194023,
		46.053680, 37.524593, 29.813591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331558, 37.209976, 30.051331>,  <45.477982, 37.898926, 29.949408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331558, 37.209976, 30.051331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723724, 37.269646, 30.102751>,  <45.959026, 37.305447, 30.133602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723724, 37.269646, 30.102751>,  <45.331558, 37.209976, 30.051331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723724, 37.269646, 30.102751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073771, -0.327032, 0.942129,
		0.182580, -0.933165, -0.309624,
		0.980420, 0.149173, 0.128550,
		46.017849, 37.314396, 30.141315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676571, 36.515850, 30.290720>,  <45.331558, 37.209976, 30.051331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676571, 36.515850, 30.290720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920506, 36.817715, 30.387535>,  <46.066868, 36.998833, 30.445625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920506, 36.817715, 30.387535>,  <45.676571, 36.515850, 30.290720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920506, 36.817715, 30.387535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034899, -0.330677, 0.943098,
		0.791758, -0.566690, -0.227996,
		0.609837, 0.754662, 0.242040,
		46.103458, 37.044113, 30.460148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268692, 36.204021, 30.660734>,  <45.676571, 36.515850, 30.290720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268692, 36.204021, 30.660734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 36.593803, 30.749302>,  <46.244579, 36.827671, 30.802443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 36.593803, 30.749302>,  <46.268692, 36.204021, 30.660734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253620, 36.593803, 30.749302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039839, -0.222867, 0.974034,
		0.998496, 0.027878, 0.047218,
		-0.037677, 0.974450, 0.221421,
		46.242317, 36.886139, 30.815729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768448, 36.265934, 31.184637>,  <46.268692, 36.204021, 30.660734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768448, 36.265934, 31.184637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505714, 36.566494, 31.209820>,  <46.348076, 36.746830, 31.224930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505714, 36.566494, 31.209820>,  <46.768448, 36.265934, 31.184637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505714, 36.566494, 31.209820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070303, -0.144156, 0.987054,
		0.750753, 0.643902, 0.147513,
		-0.656831, 0.751405, 0.062957,
		46.308666, 36.791916, 31.228706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986660, 36.701599, 31.813126>,  <46.768448, 36.265934, 31.184637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986660, 36.701599, 31.813126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.599644, 36.758801, 31.729786>,  <46.367432, 36.793121, 31.679783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.599644, 36.758801, 31.729786>,  <46.986660, 36.701599, 31.813126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.599644, 36.758801, 31.729786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239334, -0.253939, 0.937142,
		0.081109, 0.956590, 0.279923,
		-0.967544, 0.143006, -0.208347,
		46.309380, 36.801701, 31.667282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735844, 37.081348, 32.400349>,  <46.986660, 36.701599, 31.813126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735844, 37.081348, 32.400349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388756, 36.976383, 32.231495>,  <46.180504, 36.913403, 32.130184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388756, 36.976383, 32.231495>,  <46.735844, 37.081348, 32.400349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388756, 36.976383, 32.231495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337377, -0.312729, 0.887906,
		-0.365014, 0.912874, 0.182829,
		-0.867722, -0.262416, -0.422133,
		46.128441, 36.897659, 32.104855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236187, 37.359413, 32.884262>,  <46.735844, 37.081348, 32.400349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236187, 37.359413, 32.884262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047573, 37.073040, 32.678310>,  <45.934402, 36.901218, 32.554741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047573, 37.073040, 32.678310>,  <46.236187, 37.359413, 32.884262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047573, 37.073040, 32.678310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449223, -0.307413, 0.838866,
		-0.758848, 0.626852, -0.176654,
		-0.471539, -0.715929, -0.514876,
		45.906113, 36.858261, 32.523849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531742, 37.381386, 33.107693>,  <46.236187, 37.359413, 32.884262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531742, 37.381386, 33.107693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582542, 37.009178, 32.970284>,  <45.613022, 36.785854, 32.887836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582542, 37.009178, 32.970284>,  <45.531742, 37.381386, 33.107693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582542, 37.009178, 32.970284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451097, -0.362625, 0.815484,
		-0.883393, 0.051401, -0.465806,
		0.126997, -0.930516, -0.343527,
		45.620640, 36.730022, 32.867226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870373, 37.067375, 33.113480>,  <45.531742, 37.381386, 33.107693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870373, 37.067375, 33.113480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105701, 36.744282, 33.098225>,  <45.246899, 36.550426, 33.089069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105701, 36.744282, 33.098225>,  <44.870373, 37.067375, 33.113480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105701, 36.744282, 33.098225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560085, -0.441058, 0.701265,
		-0.583255, -0.391204, -0.711880,
		0.588318, -0.807729, -0.038142,
		45.282196, 36.501965, 33.086781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444130, 36.496876, 33.198421>,  <44.870373, 37.067375, 33.113480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444130, 36.496876, 33.198421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802547, 36.352589, 33.301945>,  <45.017597, 36.266018, 33.364059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802547, 36.352589, 33.301945>,  <44.444130, 36.496876, 33.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802547, 36.352589, 33.301945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409548, -0.446579, 0.795511,
		-0.171371, -0.818812, -0.547886,
		0.896048, -0.360713, 0.258813,
		45.071362, 36.244373, 33.379589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368767, 35.825005, 33.324509>,  <44.444130, 36.496876, 33.198421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368767, 35.825005, 33.324509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696819, 35.897575, 33.541569>,  <44.893650, 35.941120, 33.671803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696819, 35.897575, 33.541569>,  <44.368767, 35.825005, 33.324509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696819, 35.897575, 33.541569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386949, -0.522759, 0.759600,
		0.421488, -0.832950, -0.358528,
		0.820133, 0.181431, 0.542646,
		44.942860, 35.952003, 33.704361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386135, 35.233215, 33.685993>,  <44.368767, 35.825005, 33.324509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386135, 35.233215, 33.685993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661034, 35.446941, 33.882851>,  <44.825974, 35.575176, 34.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661034, 35.446941, 33.882851>,  <44.386135, 35.233215, 33.685993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661034, 35.446941, 33.882851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343250, -0.358228, 0.868246,
		0.640217, -0.765624, -0.062786,
		0.687242, 0.534315, 0.492145,
		44.867207, 35.607235, 34.030495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905914, 34.713097, 34.074154>,  <44.386135, 35.233215, 33.685993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905914, 34.713097, 34.074154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898800, 35.073265, 34.248020>,  <44.894531, 35.289364, 34.352341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898800, 35.073265, 34.248020>,  <44.905914, 34.713097, 34.074154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898800, 35.073265, 34.248020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166390, -0.431337, 0.886715,
		0.985899, -0.056549, 0.157494,
		-0.017790, 0.900417, 0.434664,
		44.893463, 35.343391, 34.378418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342152, 34.618725, 34.714714>,  <44.905914, 34.713097, 34.074154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342152, 34.618725, 34.714714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098278, 34.930714, 34.771191>,  <44.951954, 35.117908, 34.805077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098278, 34.930714, 34.771191>,  <45.342152, 34.618725, 34.714714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098278, 34.930714, 34.771191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350724, -0.425192, 0.834388,
		0.710832, 0.459191, 0.532786,
		-0.609680, 0.779971, 0.141191,
		44.915375, 35.164703, 34.813549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337574, 34.894131, 35.412106>,  <45.342152, 34.618725, 34.714714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337574, 34.894131, 35.412106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983917, 34.972183, 35.242298>,  <44.771721, 35.019016, 35.140415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983917, 34.972183, 35.242298>,  <45.337574, 34.894131, 35.412106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983917, 34.972183, 35.242298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465317, -0.449561, 0.762480,
		-0.042060, 0.871676, 0.488275,
		-0.884144, 0.195133, -0.424514,
		44.718674, 35.030724, 35.114944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157776, 34.767216, 35.160870>,  <45.337574, 34.894131, 35.412106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157776, 34.767216, 35.160870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341465, 34.460274, 34.981861>,  <46.451679, 34.276108, 34.874454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341465, 34.460274, 34.981861>,  <46.157776, 34.767216, 35.160870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341465, 34.460274, 34.981861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331748, 0.615486, -0.714927,
		0.824047, 0.179849, 0.537216,
		0.459228, -0.767354, -0.447524,
		46.479233, 34.230068, 34.847603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862282, 34.752647, 35.156712>,  <46.157776, 34.767216, 35.160870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862282, 34.752647, 35.156712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753876, 34.557827, 34.824608>,  <46.688831, 34.440933, 34.625347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753876, 34.557827, 34.824608>,  <46.862282, 34.752647, 35.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753876, 34.557827, 34.824608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308937, 0.772897, -0.554245,
		0.911652, -0.406706, -0.058998,
		-0.271014, -0.487052, -0.830260,
		46.672573, 34.411713, 34.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347115, 35.100765, 35.565594>,  <46.862282, 34.752647, 35.156712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347115, 35.100765, 35.565594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242989, 35.095669, 35.951771>,  <47.180511, 35.092609, 36.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242989, 35.095669, 35.951771>,  <47.347115, 35.100765, 35.565594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242989, 35.095669, 35.951771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097138, -0.995185, 0.013055,
		0.960624, 0.097179, 0.260301,
		-0.260317, -0.012744, 0.965439,
		47.164894, 35.091846, 36.241402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704605, 34.611141, 35.176537>,  <47.347115, 35.100765, 35.565594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704605, 34.611141, 35.176537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659786, 34.953754, 34.975025>,  <47.632896, 35.159325, 34.854118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659786, 34.953754, 34.975025>,  <47.704605, 34.611141, 35.176537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659786, 34.953754, 34.975025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679367, 0.303956, 0.667886,
		0.725195, 0.417083, 0.547845,
		-0.112043, 0.856535, -0.503780,
		47.626175, 35.210716, 34.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.404203, 39.744450, 43.161079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.038185, 39.583118, 43.159206>,  <28.818575, 39.486320, 43.158085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.038185, 39.583118, 43.159206>,  <29.404203, 39.744450, 43.161079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038185, 39.583118, 43.159206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108973, -0.236029, -0.965616,
		0.388356, -0.884091, 0.259929,
		-0.915043, -0.403328, -0.004679,
		28.763672, 39.462120, 43.157803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391285, 39.042007, 42.829765>,  <29.404203, 39.744450, 43.161079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391285, 39.042007, 42.829765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.010162, 39.156647, 42.789719>,  <28.781488, 39.225430, 42.765690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.010162, 39.156647, 42.789719>,  <29.391285, 39.042007, 42.829765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010162, 39.156647, 42.789719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030869, -0.419544, -0.907210,
		-0.302008, -0.861304, 0.408591,
		-0.952805, 0.286597, -0.100118,
		28.724321, 39.242626, 42.759682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007141, 38.457520, 42.694214>,  <29.391285, 39.042007, 42.829765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007141, 38.457520, 42.694214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.781588, 38.750546, 42.541698>,  <28.646255, 38.926361, 42.450191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.781588, 38.750546, 42.541698>,  <29.007141, 38.457520, 42.694214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781588, 38.750546, 42.541698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004252, -0.459105, -0.888372,
		-0.825842, -0.502560, 0.255768,
		-0.563885, 0.732567, -0.381285,
		28.612423, 38.970314, 42.427315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572069, 38.101994, 42.198231>,  <29.007141, 38.457520, 42.694214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572069, 38.101994, 42.198231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.565624, 38.493610, 42.117031>,  <28.561756, 38.728580, 42.068310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.565624, 38.493610, 42.117031>,  <28.572069, 38.101994, 42.198231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565624, 38.493610, 42.117031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141797, -0.198737, -0.969741,
		-0.989765, -0.044411, -0.135623,
		-0.016114, 0.979046, -0.203000,
		28.560789, 38.787323, 42.056129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096172, 38.175293, 41.627243>,  <28.572069, 38.101994, 42.198231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096172, 38.175293, 41.627243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.352087, 38.482559, 41.617455>,  <28.505636, 38.666920, 41.611584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.352087, 38.482559, 41.617455>,  <28.096172, 38.175293, 41.627243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352087, 38.482559, 41.617455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214011, -0.208642, -0.954289,
		-0.738155, 0.605305, -0.297882,
		0.639786, 0.768163, -0.024468,
		28.544024, 38.713009, 41.610115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959715, 38.450390, 40.970757>,  <28.096172, 38.175293, 41.627243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959715, 38.450390, 40.970757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309963, 38.589989, 41.104317>,  <28.520113, 38.673748, 41.184452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309963, 38.589989, 41.104317>,  <27.959715, 38.450390, 40.970757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309963, 38.589989, 41.104317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327294, 0.079662, -0.941559,
		-0.355198, 0.933733, -0.044470,
		0.875621, 0.348995, 0.333901,
		28.572649, 38.694687, 41.204487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105284, 38.974781, 40.450581>,  <27.959715, 38.450390, 40.970757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105284, 38.974781, 40.450581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.444969, 38.852180, 40.622578>,  <28.648781, 38.778622, 40.725777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.444969, 38.852180, 40.622578>,  <28.105284, 38.974781, 40.450581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444969, 38.852180, 40.622578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373124, -0.227910, -0.899353,
		0.373650, 0.924184, -0.079183,
		0.849214, -0.306498, 0.429994,
		28.699734, 38.760231, 40.751575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669052, 39.239975, 40.177380>,  <28.105284, 38.974781, 40.450581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669052, 39.239975, 40.177380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.852287, 38.925896, 40.344051>,  <28.962229, 38.737446, 40.444054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.852287, 38.925896, 40.344051>,  <28.669052, 39.239975, 40.177380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852287, 38.925896, 40.344051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509259, -0.152377, -0.847017,
		0.728569, 0.600202, 0.330068,
		0.458086, -0.785200, 0.416675,
		28.989714, 38.690334, 40.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343750, 39.349991, 40.067696>,  <28.669052, 39.239975, 40.177380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343750, 39.349991, 40.067696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.349785, 38.956860, 40.141266>,  <29.353405, 38.720982, 40.185410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.349785, 38.956860, 40.141266>,  <29.343750, 39.349991, 40.067696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349785, 38.956860, 40.141266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620432, -0.135051, -0.772545,
		0.784115, 0.125769, 0.607738,
		0.015087, -0.982824, 0.183927,
		29.354311, 38.662014, 40.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022774, 39.225227, 39.977863>,  <29.343750, 39.349991, 40.067696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022774, 39.225227, 39.977863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.868273, 38.856739, 39.996456>,  <29.775572, 38.635647, 40.007610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.868273, 38.856739, 39.996456>,  <30.022774, 39.225227, 39.977863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868273, 38.856739, 39.996456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717625, -0.331784, -0.612318,
		0.579502, -0.203152, 0.789244,
		-0.386252, -0.921221, 0.046483,
		29.752398, 38.580372, 40.010403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568811, 38.759956, 40.170528>,  <30.022774, 39.225227, 39.977863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568811, 38.759956, 40.170528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292427, 38.541428, 39.981171>,  <30.126596, 38.410309, 39.867558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292427, 38.541428, 39.981171>,  <30.568811, 38.759956, 40.170528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292427, 38.541428, 39.981171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705837, -0.368479, -0.604993,
		0.156088, -0.752165, 0.640222,
		-0.690963, -0.546324, -0.473391,
		30.085138, 38.377529, 39.839153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882689, 38.103268, 39.964909>,  <30.568811, 38.759956, 40.170528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882689, 38.103268, 39.964909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.553282, 38.109989, 39.738091>,  <30.355639, 38.114021, 39.602001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.553282, 38.109989, 39.738091>,  <30.882689, 38.103268, 39.964909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553282, 38.109989, 39.738091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519599, -0.378831, -0.765836,
		-0.227682, -0.925313, 0.303243,
		-0.823516, 0.016803, -0.567045,
		30.306227, 38.115032, 39.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983511, 37.444000, 39.496685>,  <30.882689, 38.103268, 39.964909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983511, 37.444000, 39.496685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.721064, 37.674065, 39.301254>,  <30.563595, 37.812103, 39.183998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.721064, 37.674065, 39.301254>,  <30.983511, 37.444000, 39.496685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721064, 37.674065, 39.301254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379963, -0.307589, -0.872363,
		-0.652026, -0.758012, -0.016724,
		-0.656118, 0.575157, -0.488572,
		30.524227, 37.846611, 39.154682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574505, 36.998287, 39.051926>,  <30.983511, 37.444000, 39.496685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574505, 36.998287, 39.051926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.568623, 37.376030, 38.920490>,  <30.565094, 37.602676, 38.841629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.568623, 37.376030, 38.920490>,  <30.574505, 36.998287, 39.051926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568623, 37.376030, 38.920490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220992, -0.317425, -0.922174,
		-0.975165, -0.086176, -0.204028,
		-0.014705, 0.944360, -0.328586,
		30.564211, 37.659336, 38.821915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456156, 36.863934, 38.318981>,  <30.574505, 36.998287, 39.051926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456156, 36.863934, 38.318981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.567999, 37.247574, 38.336647>,  <30.635105, 37.477757, 38.347248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.567999, 37.247574, 38.336647>,  <30.456156, 36.863934, 38.318981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567999, 37.247574, 38.336647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237833, -0.024621, -0.970994,
		-0.930191, 0.282001, -0.234990,
		0.279607, 0.959098, 0.044167,
		30.651880, 37.535305, 38.349895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272034, 37.149918, 37.747868>,  <30.456156, 36.863934, 38.318981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272034, 37.149918, 37.747868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550629, 37.431793, 37.802006>,  <30.717787, 37.600918, 37.834488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550629, 37.431793, 37.802006>,  <30.272034, 37.149918, 37.747868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550629, 37.431793, 37.802006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225500, -0.035889, -0.973582,
		-0.681214, 0.708609, -0.183904,
		0.696489, 0.704688, 0.135343,
		30.759575, 37.643200, 37.842609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172836, 37.486362, 37.135105>,  <30.272034, 37.149918, 37.747868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172836, 37.486362, 37.135105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.532455, 37.583504, 37.280834>,  <30.748228, 37.641788, 37.368271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.532455, 37.583504, 37.280834>,  <30.172836, 37.486362, 37.135105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532455, 37.583504, 37.280834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337331, 0.146295, -0.929949,
		-0.279139, 0.958969, 0.049605,
		0.899049, 0.242851, 0.364327,
		30.802170, 37.656361, 37.390133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345076, 38.172344, 36.853035>,  <30.172836, 37.486362, 37.135105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345076, 38.172344, 36.853035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.682514, 37.973606, 36.934509>,  <30.884977, 37.854362, 36.983395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.682514, 37.973606, 36.934509>,  <30.345076, 38.172344, 36.853035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682514, 37.973606, 36.934509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351651, 0.224493, -0.908815,
		0.405815, 0.838300, 0.364098,
		0.843597, -0.496846, 0.203687,
		30.935593, 37.824551, 36.995617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773621, 38.415894, 36.363438>,  <30.345076, 38.172344, 36.853035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773621, 38.415894, 36.363438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015270, 38.132030, 36.508442>,  <31.160259, 37.961712, 36.595444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015270, 38.132030, 36.508442>,  <30.773621, 38.415894, 36.363438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015270, 38.132030, 36.508442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405389, -0.117961, -0.906502,
		0.686072, 0.694597, 0.216426,
		0.604123, -0.709662, 0.362511,
		31.196507, 37.919132, 36.617195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451019, 38.534615, 36.160210>,  <30.773621, 38.415894, 36.363438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451019, 38.534615, 36.160210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.447201, 38.139015, 36.219246>,  <31.444910, 37.901653, 36.254669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.447201, 38.139015, 36.219246>,  <31.451019, 38.534615, 36.160210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447201, 38.139015, 36.219246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605473, -0.123182, -0.786275,
		0.795808, 0.081857, 0.599990,
		-0.009546, -0.989002, 0.147592,
		31.444338, 37.842316, 36.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158352, 38.272434, 35.950493>,  <31.451019, 38.534615, 36.160210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158352, 38.272434, 35.950493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.905691, 37.962402, 35.956928>,  <31.754095, 37.776382, 35.960789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.905691, 37.962402, 35.956928>,  <32.158352, 38.272434, 35.950493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905691, 37.962402, 35.956928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359299, -0.311079, -0.879849,
		0.686962, -0.549978, 0.474981,
		-0.631654, -0.775083, 0.016093,
		31.716194, 37.729877, 35.961758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519848, 37.731335, 35.693993>,  <32.158352, 38.272434, 35.950493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519848, 37.731335, 35.693993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148216, 37.592415, 35.643085>,  <31.925238, 37.509064, 35.612541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148216, 37.592415, 35.643085>,  <32.519848, 37.731335, 35.693993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148216, 37.592415, 35.643085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243625, -0.315676, -0.917058,
		0.278317, -0.883025, 0.377899,
		-0.929078, -0.347298, -0.127269,
		31.869493, 37.488224, 35.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210396, 37.531326, 36.200706>,  <32.519848, 37.731335, 35.693993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210396, 37.531326, 36.200706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487736, 37.739208, 36.001038>,  <33.654140, 37.863937, 35.881237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487736, 37.739208, 36.001038>,  <33.210396, 37.531326, 36.200706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487736, 37.739208, 36.001038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127998, 0.592881, 0.795053,
		0.709146, -0.615139, 0.344550,
		0.693345, 0.519707, -0.499176,
		33.695740, 37.895119, 35.851284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823334, 37.526848, 36.603924>,  <33.210396, 37.531326, 36.200706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823334, 37.526848, 36.603924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879807, 37.833088, 36.352871>,  <33.913689, 38.016830, 36.202240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879807, 37.833088, 36.352871>,  <33.823334, 37.526848, 36.603924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879807, 37.833088, 36.352871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294359, 0.572845, 0.764984,
		0.945209, -0.292750, -0.144487,
		0.141181, 0.765601, -0.627633,
		33.922161, 38.062767, 36.164581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453342, 37.736420, 36.827835>,  <33.823334, 37.526848, 36.603924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453342, 37.736420, 36.827835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.287525, 38.034996, 36.619614>,  <34.188034, 38.214142, 36.494678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.287525, 38.034996, 36.619614>,  <34.453342, 37.736420, 36.827835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287525, 38.034996, 36.619614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352324, 0.659057, 0.664464,
		0.839059, 0.092045, -0.536197,
		-0.414545, 0.746440, -0.520558,
		34.163162, 38.258926, 36.463448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022064, 38.191792, 36.856163>,  <34.453342, 37.736420, 36.827835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022064, 38.191792, 36.856163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662872, 38.358898, 36.800873>,  <34.447357, 38.459160, 36.767700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662872, 38.358898, 36.800873>,  <35.022064, 38.191792, 36.856163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662872, 38.358898, 36.800873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093975, 0.488936, 0.867243,
		0.429885, 0.765776, -0.478314,
		-0.897979, 0.417765, -0.138222,
		34.393478, 38.484226, 36.759407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086712, 38.979733, 36.964600>,  <35.022064, 38.191792, 36.856163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086712, 38.979733, 36.964600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695843, 38.904064, 37.003262>,  <34.461319, 38.858662, 37.026459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695843, 38.904064, 37.003262>,  <35.086712, 38.979733, 36.964600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695843, 38.904064, 37.003262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021287, 0.539887, 0.841468,
		-0.211366, 0.820204, -0.531591,
		-0.977175, -0.189174, 0.096654,
		34.402691, 38.847313, 37.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760426, 39.648289, 37.291588>,  <35.086712, 38.979733, 36.964600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760426, 39.648289, 37.291588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461861, 39.383343, 37.317348>,  <34.282722, 39.224377, 37.332806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461861, 39.383343, 37.317348>,  <34.760426, 39.648289, 37.291588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461861, 39.383343, 37.317348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158975, 0.271445, 0.949234,
		-0.646218, 0.698280, -0.307908,
		-0.746411, -0.662362, 0.064404,
		34.237938, 39.184635, 37.336670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228081, 40.047646, 37.625961>,  <34.760426, 39.648289, 37.291588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228081, 40.047646, 37.625961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145664, 39.659836, 37.678986>,  <34.096214, 39.427151, 37.710800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145664, 39.659836, 37.678986>,  <34.228081, 40.047646, 37.625961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145664, 39.659836, 37.678986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251030, 0.183304, 0.950465,
		-0.945796, 0.162558, -0.281148,
		-0.206041, -0.969523, 0.132562,
		34.083851, 39.368980, 37.718754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519890, 40.010471, 37.973583>,  <34.228081, 40.047646, 37.625961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519890, 40.010471, 37.973583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678688, 39.652412, 38.054688>,  <33.773968, 39.437576, 38.103352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678688, 39.652412, 38.054688>,  <33.519890, 40.010471, 37.973583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678688, 39.652412, 38.054688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390533, 0.035176, 0.919917,
		-0.830590, -0.444387, -0.335618,
		0.396994, -0.895144, 0.202765,
		33.797787, 39.383869, 38.115517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934948, 39.561951, 38.209187>,  <33.519890, 40.010471, 37.973583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934948, 39.561951, 38.209187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.271717, 39.416794, 38.368923>,  <33.473778, 39.329700, 38.464764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.271717, 39.416794, 38.368923>,  <32.934948, 39.561951, 38.209187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271717, 39.416794, 38.368923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444449, -0.046705, 0.894586,
		-0.305990, -0.930659, -0.200611,
		0.841924, -0.362896, 0.399338,
		33.524296, 39.307926, 38.488724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710747, 39.058578, 38.618061>,  <32.934948, 39.561951, 38.209187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710747, 39.058578, 38.618061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089924, 39.093449, 38.740574>,  <33.317429, 39.114372, 38.814083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089924, 39.093449, 38.740574>,  <32.710747, 39.058578, 38.618061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089924, 39.093449, 38.740574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, -0.075838, 0.950843,
		0.106119, -0.993302, -0.045716,
		0.947941, 0.087177, 0.306281,
		33.374306, 39.119602, 38.832458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911373, 38.461464, 39.129173>,  <32.710747, 39.058578, 38.618061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911373, 38.461464, 39.129173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155319, 38.774170, 39.181175>,  <33.301689, 38.961796, 39.212376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155319, 38.774170, 39.181175>,  <32.911373, 38.461464, 39.129173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155319, 38.774170, 39.181175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233987, 0.020895, 0.972015,
		0.757174, -0.623219, 0.195667,
		0.609867, 0.781768, 0.130004,
		33.338280, 39.008701, 39.220177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290714, 38.319344, 39.656197>,  <32.911373, 38.461464, 39.129173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290714, 38.319344, 39.656197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311848, 38.718380, 39.638218>,  <33.324528, 38.957802, 39.627430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311848, 38.718380, 39.638218>,  <33.290714, 38.319344, 39.656197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311848, 38.718380, 39.638218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247396, 0.056680, 0.967255,
		0.967473, -0.039985, 0.249795,
		0.052834, 0.997592, -0.044944,
		33.327698, 39.017658, 39.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615261, 38.566090, 40.319054>,  <33.290714, 38.319344, 39.656197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615261, 38.566090, 40.319054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.411312, 38.871765, 40.161045>,  <33.288944, 39.055172, 40.066238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.411312, 38.871765, 40.161045>,  <33.615261, 38.566090, 40.319054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411312, 38.871765, 40.161045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389511, 0.204344, 0.898068,
		0.767015, 0.611766, 0.193471,
		-0.509872, 0.764190, -0.395024,
		33.258350, 39.101021, 40.042538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793011, 39.028900, 40.819229>,  <33.615261, 38.566090, 40.319054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793011, 39.028900, 40.819229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.468147, 39.166916, 40.631042>,  <33.273228, 39.249725, 40.518131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.468147, 39.166916, 40.631042>,  <33.793011, 39.028900, 40.819229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468147, 39.166916, 40.631042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434135, 0.181314, 0.882413,
		0.389774, 0.920907, 0.002540,
		-0.812159, 0.345044, -0.470470,
		33.224499, 39.270428, 40.489902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532661, 39.596115, 41.280975>,  <33.793011, 39.028900, 40.819229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532661, 39.596115, 41.280975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227093, 39.493675, 41.044048>,  <33.043751, 39.432213, 40.901894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227093, 39.493675, 41.044048>,  <33.532661, 39.596115, 41.280975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227093, 39.493675, 41.044048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641252, 0.198494, 0.741213,
		-0.072251, 0.946052, -0.315855,
		-0.763922, -0.256096, -0.592316,
		32.997917, 39.416847, 40.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105659, 40.172161, 41.282223>,  <33.532661, 39.596115, 41.280975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105659, 40.172161, 41.282223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879822, 39.859921, 41.174969>,  <32.744320, 39.672577, 41.110615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879822, 39.859921, 41.174969>,  <33.105659, 40.172161, 41.282223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879822, 39.859921, 41.174969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646712, 0.216536, 0.731352,
		-0.512830, 0.586326, -0.627078,
		-0.564596, -0.780598, -0.268138,
		32.710442, 39.625740, 41.094528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455944, 40.389359, 41.371895>,  <33.105659, 40.172161, 41.282223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455944, 40.389359, 41.371895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391922, 39.994675, 41.360672>,  <32.353508, 39.757866, 41.353939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391922, 39.994675, 41.360672>,  <32.455944, 40.389359, 41.371895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391922, 39.994675, 41.360672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556164, 0.066661, 0.828394,
		-0.815515, 0.148192, -0.559442,
		-0.160054, -0.986709, -0.028056,
		32.343906, 39.698662, 41.352257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761938, 40.311131, 41.336998>,  <32.455944, 40.389359, 41.371895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761938, 40.311131, 41.336998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.900507, 39.956444, 41.459461>,  <31.983648, 39.743633, 41.532940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.900507, 39.956444, 41.459461>,  <31.761938, 40.311131, 41.336998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900507, 39.956444, 41.459461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574146, 0.057680, 0.816719,
		-0.741854, -0.458707, -0.489122,
		0.346422, -0.886714, 0.306155,
		32.004433, 39.690430, 41.551308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.103951, 40.048107, 41.587097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.388346, 39.815308, 41.744972>,  <31.558983, 39.675629, 41.839699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.388346, 39.815308, 41.744972>,  <31.103951, 40.048107, 41.587097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388346, 39.815308, 41.744972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451549, 0.052415, 0.890705,
		-0.539075, -0.811500, -0.225534,
		0.710986, -0.581997, 0.394688,
		31.601643, 39.640709, 41.863380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811018, 39.544144, 41.914379>,  <31.103951, 40.048107, 41.587097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811018, 39.544144, 41.914379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165474, 39.552864, 42.099541>,  <31.378147, 39.558098, 42.210636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165474, 39.552864, 42.099541>,  <30.811018, 39.544144, 41.914379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165474, 39.552864, 42.099541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463397, 0.033047, 0.885534,
		0.003997, -0.999216, 0.039381,
		0.886142, 0.021789, 0.462902,
		31.431316, 39.559402, 42.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845375, 39.133881, 42.467731>,  <30.811018, 39.544144, 41.914379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845375, 39.133881, 42.467731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134150, 39.399422, 42.545815>,  <31.307415, 39.558746, 42.592667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134150, 39.399422, 42.545815>,  <30.845375, 39.133881, 42.467731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134150, 39.399422, 42.545815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296151, 0.041460, 0.954241,
		0.625380, -0.746715, 0.226531,
		0.721938, 0.663851, 0.195212,
		31.350731, 39.598576, 42.604378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117390, 38.854626, 43.079456>,  <30.845375, 39.133881, 42.467731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117390, 38.854626, 43.079456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275974, 39.221474, 43.062897>,  <31.371124, 39.441582, 43.052959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275974, 39.221474, 43.062897>,  <31.117390, 38.854626, 43.079456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275974, 39.221474, 43.062897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170425, 0.117836, 0.978300,
		0.902095, -0.380800, 0.203017,
		0.396460, 0.917118, -0.041401,
		31.394913, 39.496609, 43.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591709, 38.940998, 43.641850>,  <31.117390, 38.854626, 43.079456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591709, 38.940998, 43.641850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474430, 39.317642, 43.575630>,  <31.404062, 39.543629, 43.535900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474430, 39.317642, 43.575630>,  <31.591709, 38.940998, 43.641850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474430, 39.317642, 43.575630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195078, 0.110592, 0.974533,
		0.935938, 0.318024, 0.151262,
		-0.293196, 0.941611, -0.165547,
		31.386471, 39.600124, 43.525967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698689, 39.407803, 44.234386>,  <31.591709, 38.940998, 43.641850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698689, 39.407803, 44.234386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449165, 39.655483, 44.043617>,  <31.299452, 39.804092, 43.929157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449165, 39.655483, 44.043617>,  <31.698689, 39.407803, 44.234386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449165, 39.655483, 44.043617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460720, 0.201593, 0.864348,
		0.631347, 0.758916, 0.159522,
		-0.623809, 0.619199, -0.476923,
		31.262022, 39.841244, 43.900539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886581, 40.044502, 44.499786>,  <31.698689, 39.407803, 44.234386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886581, 40.044502, 44.499786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514519, 40.088234, 44.359585>,  <31.291281, 40.114475, 44.275463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514519, 40.088234, 44.359585>,  <31.886581, 40.044502, 44.499786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514519, 40.088234, 44.359585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305377, 0.299627, 0.903863,
		0.203841, 0.947771, -0.245313,
		-0.930158, 0.109331, -0.350504,
		31.235472, 40.121033, 44.254433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597265, 40.745560, 44.567249>,  <31.886581, 40.044502, 44.499786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597265, 40.745560, 44.567249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288931, 40.490757, 44.564747>,  <31.103930, 40.337875, 44.563244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288931, 40.490757, 44.564747>,  <31.597265, 40.745560, 44.567249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288931, 40.490757, 44.564747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358365, 0.425494, 0.830981,
		-0.526674, 0.642793, -0.556266,
		-0.770836, -0.637003, -0.006258,
		31.057680, 40.299656, 44.562870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085024, 41.111511, 44.866028>,  <31.597265, 40.745560, 44.567249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085024, 41.111511, 44.866028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901947, 40.756035, 44.876926>,  <30.792101, 40.542747, 44.883465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.901947, 40.756035, 44.876926>,  <31.085024, 41.111511, 44.866028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901947, 40.756035, 44.876926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175783, 0.120485, 0.977028,
		-0.871560, 0.442390, -0.211362,
		-0.457693, -0.888692, 0.027246,
		30.764639, 40.489426, 44.885101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481043, 41.282509, 45.157574>,  <31.085024, 41.111511, 44.866028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481043, 41.282509, 45.157574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500923, 40.889629, 45.230034>,  <30.512852, 40.653900, 45.273510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500923, 40.889629, 45.230034>,  <30.481043, 41.282509, 45.157574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500923, 40.889629, 45.230034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286424, 0.159736, 0.944694,
		-0.956813, -0.098838, -0.273386,
		0.049702, -0.982199, 0.181147,
		30.515833, 40.594971, 45.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904589, 41.109135, 45.589226>,  <30.481043, 41.282509, 45.157574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904589, 41.109135, 45.589226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176977, 40.822212, 45.648209>,  <30.340410, 40.650059, 45.683598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176977, 40.822212, 45.648209>,  <29.904589, 41.109135, 45.589226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176977, 40.822212, 45.648209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071871, 0.134928, 0.988245,
		-0.728775, -0.683565, 0.040329,
		0.680971, -0.717310, 0.147461,
		30.381269, 40.607018, 45.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634180, 40.666828, 46.069397>,  <29.904589, 41.109135, 45.589226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634180, 40.666828, 46.069397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028215, 40.600128, 46.086327>,  <30.264637, 40.560108, 46.096485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028215, 40.600128, 46.086327>,  <29.634180, 40.666828, 46.069397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028215, 40.600128, 46.086327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020245, 0.131958, 0.991049,
		-0.170847, -0.977128, 0.126615,
		0.985089, -0.166755, 0.042326,
		30.323742, 40.550102, 46.099026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711237, 40.178894, 46.590656>,  <29.634180, 40.666828, 46.069397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711237, 40.178894, 46.590656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074366, 40.340176, 46.544552>,  <30.292244, 40.436943, 46.516888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074366, 40.340176, 46.544552>,  <29.711237, 40.178894, 46.590656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074366, 40.340176, 46.544552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134487, -0.019593, 0.990722,
		0.397205, -0.914900, -0.072013,
		0.907822, 0.403204, -0.115260,
		30.346712, 40.461136, 46.509975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111862, 39.808746, 47.129021>,  <29.711237, 40.178894, 46.590656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111862, 39.808746, 47.129021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331501, 40.120731, 47.008923>,  <30.463285, 40.307922, 46.936863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331501, 40.120731, 47.008923>,  <30.111862, 39.808746, 47.129021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331501, 40.120731, 47.008923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357707, 0.105349, 0.927873,
		0.755338, -0.616892, -0.221152,
		0.549099, 0.779965, -0.300241,
		30.496231, 40.354721, 46.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820560, 39.717747, 47.395218>,  <30.111862, 39.808746, 47.129021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820560, 39.717747, 47.395218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847803, 40.107182, 47.308048>,  <30.864149, 40.340843, 47.255745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847803, 40.107182, 47.308048>,  <30.820560, 39.717747, 47.395218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847803, 40.107182, 47.308048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495279, 0.156622, 0.854499,
		0.866060, -0.166131, -0.471530,
		0.068107, 0.973586, -0.217925,
		30.868235, 40.399258, 47.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556854, 39.895664, 47.689011>,  <30.820560, 39.717747, 47.395218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556854, 39.895664, 47.689011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334255, 40.224121, 47.638367>,  <31.200695, 40.421196, 47.607979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334255, 40.224121, 47.638367>,  <31.556854, 39.895664, 47.689011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334255, 40.224121, 47.638367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334686, 0.361029, 0.870427,
		0.760457, 0.442017, -0.475738,
		-0.556499, 0.821145, -0.126610,
		31.167305, 40.470463, 47.600384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984110, 40.510468, 47.812111>,  <31.556854, 39.895664, 47.689011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984110, 40.510468, 47.812111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604986, 40.616211, 47.883408>,  <31.377512, 40.679657, 47.926186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604986, 40.616211, 47.883408>,  <31.984110, 40.510468, 47.812111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604986, 40.616211, 47.883408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243036, 0.237191, 0.940571,
		0.206372, 0.934802, -0.289061,
		-0.947810, 0.264360, 0.178240,
		31.320642, 40.695518, 47.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973068, 41.260124, 48.024845>,  <31.984110, 40.510468, 47.812111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973068, 41.260124, 48.024845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631384, 41.094620, 48.150776>,  <31.426373, 40.995316, 48.226334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631384, 41.094620, 48.150776>,  <31.973068, 41.260124, 48.024845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631384, 41.094620, 48.150776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237320, 0.228476, 0.944181,
		-0.462601, 0.881247, -0.096973,
		-0.854213, -0.413765, 0.314831,
		31.375120, 40.970490, 48.245224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628914, 41.785576, 48.248524>,  <31.973068, 41.260124, 48.024845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628914, 41.785576, 48.248524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449387, 41.484032, 48.440468>,  <31.341671, 41.303104, 48.555634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449387, 41.484032, 48.440468>,  <31.628914, 41.785576, 48.248524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449387, 41.484032, 48.440468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128434, 0.476989, 0.869475,
		-0.884346, 0.451866, -0.117261,
		-0.448818, -0.753856, 0.479858,
		31.314741, 41.257874, 48.584427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184483, 41.987545, 48.799381>,  <31.628914, 41.785576, 48.248524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184483, 41.987545, 48.799381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.261265, 41.609810, 48.906250>,  <31.307333, 41.383167, 48.970371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.261265, 41.609810, 48.906250>,  <31.184483, 41.987545, 48.799381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261265, 41.609810, 48.906250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203322, 0.304596, 0.930528,
		-0.960112, -0.124295, 0.250472,
		0.191953, -0.944337, 0.267174,
		31.318851, 41.326508, 48.986401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970802, 41.886639, 49.516109>,  <31.184483, 41.987545, 48.799381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970802, 41.886639, 49.516109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217434, 41.572693, 49.491379>,  <31.365412, 41.384327, 49.476540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217434, 41.572693, 49.491379>,  <30.970802, 41.886639, 49.516109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217434, 41.572693, 49.491379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154403, 0.043547, 0.987048,
		-0.772005, -0.618137, 0.148036,
		0.616577, -0.784863, -0.061824,
		31.402407, 41.337234, 49.472832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789906, 41.378094, 50.126148>,  <30.970802, 41.886639, 49.516109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789906, 41.378094, 50.126148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167324, 41.282337, 50.034573>,  <31.393776, 41.224884, 49.979626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167324, 41.282337, 50.034573>,  <30.789906, 41.378094, 50.126148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167324, 41.282337, 50.034573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194269, -0.159881, 0.967831,
		-0.268291, -0.957669, -0.104349,
		0.943546, -0.239389, -0.228940,
		31.450388, 41.210522, 49.965889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901379, 40.813892, 50.537113>,  <30.789906, 41.378094, 50.126148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901379, 40.813892, 50.537113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276604, 40.927410, 50.457619>,  <31.501740, 40.995522, 50.409920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276604, 40.927410, 50.457619>,  <30.901379, 40.813892, 50.537113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276604, 40.927410, 50.457619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255775, -0.180326, 0.949769,
		0.233706, -0.941775, -0.241745,
		0.938062, 0.283799, -0.198740,
		31.558022, 41.012550, 50.397995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710403, 40.380798, 51.034096>,  <30.901379, 40.813892, 50.537113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710403, 40.380798, 51.034096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467943, 40.070312, 51.103462>,  <30.322468, 39.884022, 51.145081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467943, 40.070312, 51.103462>,  <30.710403, 40.380798, 51.034096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467943, 40.070312, 51.103462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055315, -0.176368, -0.982769,
		0.793424, -0.605299, 0.063969,
		-0.606151, -0.776214, 0.173417,
		30.286098, 39.837448, 51.155487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818333, 39.861816, 50.560833>,  <30.710403, 40.380798, 51.034096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818333, 39.861816, 50.560833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462763, 39.746059, 50.702854>,  <30.249420, 39.676605, 50.788067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462763, 39.746059, 50.702854>,  <30.818333, 39.861816, 50.560833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462763, 39.746059, 50.702854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201546, -0.448959, -0.870526,
		0.411327, -0.845392, 0.340766,
		-0.888926, -0.289391, 0.355054,
		30.196085, 39.659241, 50.809372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771103, 39.232414, 50.300121>,  <30.818333, 39.861816, 50.560833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771103, 39.232414, 50.300121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395855, 39.334721, 50.393517>,  <30.170706, 39.396103, 50.449554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395855, 39.334721, 50.393517>,  <30.771103, 39.232414, 50.300121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395855, 39.334721, 50.393517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323158, -0.404148, -0.855706,
		-0.124495, -0.878209, 0.461791,
		-0.938120, 0.255763, 0.233486,
		30.114418, 39.411449, 50.463562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304104, 38.647877, 49.990582>,  <30.771103, 39.232414, 50.300121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304104, 38.647877, 49.990582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049971, 38.942829, 50.082340>,  <29.897491, 39.119801, 50.137394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049971, 38.942829, 50.082340>,  <30.304104, 38.647877, 49.990582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049971, 38.942829, 50.082340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564056, -0.240221, -0.790022,
		-0.527440, -0.631319, 0.568545,
		-0.635333, 0.737380, 0.229397,
		29.859371, 39.164043, 50.151161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538536, 38.347084, 50.078400>,  <30.304104, 38.647877, 49.990582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538536, 38.347084, 50.078400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522484, 38.736500, 49.988411>,  <29.512854, 38.970150, 49.934418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522484, 38.736500, 49.988411>,  <29.538536, 38.347084, 50.078400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522484, 38.736500, 49.988411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623811, -0.200297, -0.755474,
		-0.780544, 0.110026, 0.615342,
		-0.040129, 0.973537, -0.224976,
		29.510445, 39.028561, 49.920918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857868, 38.421745, 49.943508>,  <29.538536, 38.347084, 50.078400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857868, 38.421745, 49.943508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047680, 38.727871, 49.769558>,  <29.161568, 38.911549, 49.665188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047680, 38.727871, 49.769558>,  <28.857868, 38.421745, 49.943508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047680, 38.727871, 49.769558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554556, -0.123740, -0.822895,
		-0.683586, 0.631649, 0.365692,
		0.474530, 0.765316, -0.434871,
		29.190039, 38.957466, 49.639095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273672, 38.803288, 49.520702>,  <28.857868, 38.421745, 49.943508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273672, 38.803288, 49.520702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.635904, 38.897758, 49.379765>,  <28.853243, 38.954441, 49.295200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.635904, 38.897758, 49.379765>,  <28.273672, 38.803288, 49.520702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635904, 38.897758, 49.379765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333402, -0.117225, -0.935469,
		-0.262242, 0.964613, -0.027413,
		0.905578, 0.236180, -0.352345,
		28.907578, 38.968613, 49.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091587, 39.325432, 48.975063>,  <28.273672, 38.803288, 49.520702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091587, 39.325432, 48.975063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.440836, 39.147121, 48.896130>,  <28.650385, 39.040134, 48.848770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.440836, 39.147121, 48.896130>,  <28.091587, 39.325432, 48.975063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440836, 39.147121, 48.896130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231647, -0.023203, -0.972523,
		0.428949, 0.894844, -0.123521,
		0.873122, -0.445776, -0.197335,
		28.702772, 39.013390, 48.836929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370136, 39.729092, 48.352905>,  <28.091587, 39.325432, 48.975063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370136, 39.729092, 48.352905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569096, 39.382153, 48.359978>,  <28.688471, 39.173988, 48.364220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569096, 39.382153, 48.359978>,  <28.370136, 39.729092, 48.352905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569096, 39.382153, 48.359978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129245, 0.053936, -0.990145,
		0.857842, 0.494780, 0.138927,
		0.497397, -0.867343, 0.017679,
		28.718315, 39.121948, 48.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908358, 39.798080, 47.932327>,  <28.370136, 39.729092, 48.352905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908358, 39.798080, 47.932327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847944, 39.402977, 47.947960>,  <28.811697, 39.165916, 47.957340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847944, 39.402977, 47.947960>,  <28.908358, 39.798080, 47.932327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847944, 39.402977, 47.947960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062747, -0.049034, -0.996824,
		0.986535, -0.148101, 0.069385,
		-0.151033, -0.987756, 0.039081,
		28.802635, 39.106651, 47.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478287, 39.547470, 47.748482>,  <28.908358, 39.798080, 47.932327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478287, 39.547470, 47.748482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218807, 39.252068, 47.674950>,  <29.063120, 39.074825, 47.630829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218807, 39.252068, 47.674950>,  <29.478287, 39.547470, 47.748482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218807, 39.252068, 47.674950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197288, 0.070112, -0.977835,
		0.735028, -0.670590, 0.100217,
		-0.648700, -0.738508, -0.183834,
		29.024197, 39.030514, 47.619801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766310, 39.081127, 47.288628>,  <29.478287, 39.547470, 47.748482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766310, 39.081127, 47.288628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370062, 39.058071, 47.239079>,  <29.132313, 39.044235, 47.209347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370062, 39.058071, 47.239079>,  <29.766310, 39.081127, 47.288628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370062, 39.058071, 47.239079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124657, -0.010138, -0.992148,
		0.055940, -0.998286, 0.017229,
		-0.990622, -0.057648, -0.123876,
		29.072876, 39.040779, 47.201916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782701, 38.819839, 46.644447>,  <29.766310, 39.081127, 47.288628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782701, 38.819839, 46.644447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.394707, 38.906765, 46.688080>,  <29.161909, 38.958920, 46.714260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.394707, 38.906765, 46.688080>,  <29.782701, 38.819839, 46.644447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394707, 38.906765, 46.688080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100511, 0.050155, -0.993671,
		-0.221406, -0.974813, -0.026807,
		-0.969988, 0.217310, 0.109084,
		29.103710, 38.971958, 46.720806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437269, 38.300537, 46.280987>,  <29.782701, 38.819839, 46.644447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437269, 38.300537, 46.280987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178606, 38.603386, 46.318081>,  <29.023409, 38.785095, 46.340336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178606, 38.603386, 46.318081>,  <29.437269, 38.300537, 46.280987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178606, 38.603386, 46.318081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145140, -0.002779, -0.989407,
		-0.748846, -0.653265, 0.111687,
		-0.646656, 0.757124, 0.092734,
		28.984610, 38.830524, 46.345901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862797, 38.152054, 45.808411>,  <29.437269, 38.300537, 46.280987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862797, 38.152054, 45.808411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838282, 38.544712, 45.880657>,  <28.823572, 38.780308, 45.924004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838282, 38.544712, 45.880657>,  <28.862797, 38.152054, 45.808411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838282, 38.544712, 45.880657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157543, 0.169174, -0.972913,
		-0.985608, -0.088084, 0.144282,
		-0.061289, 0.981642, 0.180617,
		28.819895, 38.839203, 45.934841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175049, 38.425083, 45.602146>,  <28.862797, 38.152054, 45.808411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175049, 38.425083, 45.602146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399828, 38.755898, 45.596077>,  <28.534697, 38.954384, 45.592434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399828, 38.755898, 45.596077>,  <28.175049, 38.425083, 45.602146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399828, 38.755898, 45.596077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297913, 0.185242, -0.936447,
		-0.771661, 0.530756, 0.350480,
		0.561949, 0.827033, -0.015176,
		28.568413, 39.004009, 45.591526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779928, 38.866837, 45.282059>,  <28.175049, 38.425083, 45.602146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779928, 38.866837, 45.282059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.133429, 39.046993, 45.231258>,  <28.345530, 39.155087, 45.200779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.133429, 39.046993, 45.231258>,  <27.779928, 38.866837, 45.282059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133429, 39.046993, 45.231258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285144, 0.303099, -0.909299,
		-0.371046, 0.839809, 0.396291,
		0.883752, 0.450392, -0.127003,
		28.398554, 39.182110, 45.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653749, 39.490559, 44.964958>,  <27.779928, 38.866837, 45.282059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653749, 39.490559, 44.964958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042061, 39.448643, 44.878597>,  <28.275047, 39.423492, 44.826782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042061, 39.448643, 44.878597>,  <27.653749, 39.490559, 44.964958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042061, 39.448643, 44.878597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188357, 0.224771, -0.956033,
		0.148710, 0.968761, 0.198465,
		0.970776, -0.104789, -0.215899,
		28.333294, 39.417206, 44.813828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010397, 40.036530, 44.545013>,  <27.653749, 39.490559, 44.964958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010397, 40.036530, 44.545013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269608, 39.739864, 44.475731>,  <28.425133, 39.561867, 44.434162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269608, 39.739864, 44.475731>,  <28.010397, 40.036530, 44.545013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269608, 39.739864, 44.475731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006847, 0.221741, -0.975082,
		0.761588, 0.633064, 0.138615,
		0.648026, -0.741661, -0.173210,
		28.464016, 39.517365, 44.423767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463963, 40.293663, 44.061417>,  <28.010397, 40.036530, 44.545013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463963, 40.293663, 44.061417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.491554, 39.895420, 44.036110>,  <28.508110, 39.656475, 44.020927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.491554, 39.895420, 44.036110>,  <28.463963, 40.293663, 44.061417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491554, 39.895420, 44.036110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091943, 0.069492, -0.993337,
		0.993372, 0.062705, 0.096333,
		0.068981, -0.995610, -0.063266,
		28.512249, 39.596737, 44.017132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027172, 40.253136, 43.596268>,  <28.463963, 40.293663, 44.061417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027172, 40.253136, 43.596268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818499, 39.912079, 43.584595>,  <28.693295, 39.707447, 43.577591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818499, 39.912079, 43.584595>,  <29.027172, 40.253136, 43.596268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818499, 39.912079, 43.584595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133760, -0.047957, -0.989853,
		0.842588, -0.520293, 0.139068,
		-0.521683, -0.852640, -0.029186,
		28.661993, 39.656288, 43.575840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.273373, 37.374355, 26.981556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878822, 37.310455, 26.997269>,  <43.642094, 37.272114, 27.006697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878822, 37.310455, 26.997269>,  <44.273373, 37.374355, 26.981556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878822, 37.310455, 26.997269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000899, 0.233539, 0.972347,
		-0.164511, 0.959134, -0.230213,
		-0.986375, -0.159754, 0.039282,
		43.582909, 37.262527, 27.009054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021233, 37.917847, 27.423285>,  <44.273373, 37.374355, 26.981556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021233, 37.917847, 27.423285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755795, 37.618778, 27.433376>,  <43.596531, 37.439339, 27.439430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755795, 37.618778, 27.433376>,  <44.021233, 37.917847, 27.423285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755795, 37.618778, 27.433376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031408, 0.061538, 0.997610,
		-0.747432, 0.661217, -0.064319,
		-0.663595, -0.747666, 0.025228,
		43.556717, 37.394478, 27.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453049, 38.143585, 27.945009>,  <44.021233, 37.917847, 27.423285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453049, 38.143585, 27.945009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422939, 37.746861, 27.903725>,  <43.404873, 37.508827, 27.878954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422939, 37.746861, 27.903725>,  <43.453049, 38.143585, 27.945009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422939, 37.746861, 27.903725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240485, -0.082395, 0.967149,
		-0.967730, 0.097619, -0.232313,
		-0.075270, -0.991807, -0.103212,
		43.400356, 37.449318, 27.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839840, 37.957367, 28.333933>,  <43.453049, 38.143585, 27.945009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839840, 37.957367, 28.333933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034393, 37.610126, 28.294256>,  <43.151127, 37.401783, 28.270451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034393, 37.610126, 28.294256>,  <42.839840, 37.957367, 28.333933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034393, 37.610126, 28.294256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226644, -0.234986, 0.945206,
		-0.843839, -0.437252, -0.311042,
		0.486384, -0.868097, -0.099190,
		43.180309, 37.349697, 28.264500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441051, 37.578827, 28.688923>,  <42.839840, 37.957367, 28.333933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441051, 37.578827, 28.688923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791435, 37.387218, 28.666189>,  <43.001667, 37.272255, 28.652548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791435, 37.387218, 28.666189>,  <42.441051, 37.578827, 28.688923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791435, 37.387218, 28.666189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098346, -0.292695, 0.951135,
		-0.472248, -0.827569, -0.303499,
		0.875962, -0.479020, -0.056836,
		43.054222, 37.243511, 28.649139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296124, 37.018711, 28.992699>,  <42.441051, 37.578827, 28.688923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296124, 37.018711, 28.992699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693817, 37.048454, 29.023619>,  <42.932434, 37.066299, 29.042171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693817, 37.048454, 29.023619>,  <42.296124, 37.018711, 28.992699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693817, 37.048454, 29.023619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060689, -0.204232, 0.977040,
		0.088437, -0.976095, -0.198542,
		0.994231, 0.074357, 0.077300,
		42.992088, 37.070763, 29.046808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565861, 36.445274, 29.381701>,  <42.296124, 37.018711, 28.992699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565861, 36.445274, 29.381701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882202, 36.685825, 29.427134>,  <43.072006, 36.830154, 29.454393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882202, 36.685825, 29.427134>,  <42.565861, 36.445274, 29.381701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882202, 36.685825, 29.427134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023100, -0.156124, 0.987467,
		0.611571, -0.783564, -0.109579,
		0.790852, 0.601376, 0.113581,
		43.119457, 36.866238, 29.461208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943550, 36.036236, 29.806967>,  <42.565861, 36.445274, 29.381701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943550, 36.036236, 29.806967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045757, 36.422310, 29.829372>,  <43.107082, 36.653954, 29.842815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045757, 36.422310, 29.829372>,  <42.943550, 36.036236, 29.806967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045757, 36.422310, 29.829372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052862, -0.043903, 0.997636,
		0.965359, -0.257872, 0.039804,
		0.255515, 0.965181, 0.056014,
		43.122414, 36.711864, 29.846176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500019, 36.024055, 30.308979>,  <42.943550, 36.036236, 29.806967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500019, 36.024055, 30.308979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385334, 36.406551, 30.285639>,  <43.316525, 36.636047, 30.271635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385334, 36.406551, 30.285639>,  <43.500019, 36.024055, 30.308979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385334, 36.406551, 30.285639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096528, 0.089430, 0.991304,
		0.953141, 0.278587, -0.117944,
		-0.286712, 0.956238, -0.058348,
		43.299320, 36.693424, 30.268135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008331, 36.416977, 30.811058>,  <43.500019, 36.024055, 30.308979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008331, 36.416977, 30.811058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683815, 36.641945, 30.747194>,  <43.489105, 36.776924, 30.708876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683815, 36.641945, 30.747194>,  <44.008331, 36.416977, 30.811058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683815, 36.641945, 30.747194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151544, 0.061452, 0.986539,
		0.564657, 0.824567, 0.035375,
		-0.811293, 0.562417, -0.159657,
		43.440426, 36.810669, 30.699297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088638, 37.067471, 31.201477>,  <44.008331, 36.416977, 30.811058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088638, 37.067471, 31.201477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696941, 37.041515, 31.124670>,  <43.461922, 37.025940, 31.078585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696941, 37.041515, 31.124670>,  <44.088638, 37.067471, 31.201477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696941, 37.041515, 31.124670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202641, 0.293413, 0.934262,
		-0.004283, 0.953781, -0.300472,
		-0.979244, -0.064890, -0.192019,
		43.403168, 37.022049, 31.067064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810898, 37.688580, 31.569944>,  <44.088638, 37.067471, 31.201477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810898, 37.688580, 31.569944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509228, 37.430916, 31.518902>,  <43.328224, 37.276318, 31.488277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509228, 37.430916, 31.518902>,  <43.810898, 37.688580, 31.569944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509228, 37.430916, 31.518902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264183, 0.119723, 0.957013,
		-0.601188, 0.755466, -0.260467,
		-0.754175, -0.644156, -0.127605,
		43.282974, 37.237671, 31.480619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326786, 37.999931, 32.032146>,  <43.810898, 37.688580, 31.569944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326786, 37.999931, 32.032146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203762, 37.626549, 31.958319>,  <43.129948, 37.402519, 31.914022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203762, 37.626549, 31.958319>,  <43.326786, 37.999931, 32.032146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203762, 37.626549, 31.958319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384769, -0.055396, 0.921349,
		-0.870263, 0.354390, -0.342127,
		-0.307564, -0.933456, -0.184567,
		43.111492, 37.346512, 31.902948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588997, 37.982697, 32.154961>,  <43.326786, 37.999931, 32.032146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588997, 37.982697, 32.154961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721661, 37.609421, 32.210335>,  <42.801258, 37.385456, 32.243561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721661, 37.609421, 32.210335>,  <42.588997, 37.982697, 32.154961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721661, 37.609421, 32.210335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439580, -0.023027, 0.897909,
		-0.834730, -0.358650, -0.417848,
		0.331656, -0.933188, 0.138434,
		42.821159, 37.329464, 32.251865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007805, 37.558189, 32.471523>,  <42.588997, 37.982697, 32.154961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007805, 37.558189, 32.471523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341835, 37.354965, 32.555935>,  <42.542252, 37.233032, 32.606583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341835, 37.354965, 32.555935>,  <42.007805, 37.558189, 32.471523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341835, 37.354965, 32.555935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332460, -0.160430, 0.929372,
		-0.438319, -0.846251, -0.302880,
		0.835073, -0.508057, 0.211025,
		42.592358, 37.202549, 32.619244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920452, 36.861839, 32.717716>,  <42.007805, 37.558189, 32.471523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920452, 36.861839, 32.717716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268459, 36.978405, 32.876785>,  <42.477264, 37.048344, 32.972229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268459, 36.978405, 32.876785>,  <41.920452, 36.861839, 32.717716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268459, 36.978405, 32.876785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366347, -0.157677, 0.917021,
		0.329940, -0.943512, -0.030422,
		0.870017, 0.291418, 0.397676,
		42.529465, 37.065830, 32.996090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070057, 36.287148, 33.188885>,  <41.920452, 36.861839, 32.717716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070057, 36.287148, 33.188885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349716, 36.539318, 33.323788>,  <42.517513, 36.690620, 33.404732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349716, 36.539318, 33.323788>,  <42.070057, 36.287148, 33.188885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349716, 36.539318, 33.323788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071193, -0.407979, 0.910211,
		0.711420, -0.660387, -0.240357,
		0.699152, 0.630431, 0.337260,
		42.559464, 36.728447, 33.424965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508469, 35.876751, 33.526844>,  <42.070057, 36.287148, 33.188885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508469, 35.876751, 33.526844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610367, 36.228786, 33.687115>,  <42.671505, 36.440010, 33.783276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610367, 36.228786, 33.687115>,  <42.508469, 35.876751, 33.526844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610367, 36.228786, 33.687115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060430, -0.399048, 0.914937,
		0.965117, -0.257291, -0.048473,
		0.254748, 0.880092, 0.400676,
		42.686790, 36.492813, 33.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928448, 35.751839, 34.116196>,  <42.508469, 35.876751, 33.526844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928448, 35.751839, 34.116196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809612, 36.129635, 34.172298>,  <42.738312, 36.356312, 34.205959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809612, 36.129635, 34.172298>,  <42.928448, 35.751839, 34.116196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809612, 36.129635, 34.172298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079894, -0.170963, 0.982033,
		0.951502, 0.280544, 0.126250,
		-0.297087, 0.944493, 0.140258,
		42.720486, 36.412983, 34.214375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325798, 35.981720, 34.677586>,  <42.928448, 35.751839, 34.116196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325798, 35.981720, 34.677586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004551, 36.219692, 34.664581>,  <42.811802, 36.362476, 34.656780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004551, 36.219692, 34.664581>,  <43.325798, 35.981720, 34.677586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004551, 36.219692, 34.664581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151403, -0.151003, 0.976870,
		0.576259, 0.789466, 0.211347,
		-0.803120, 0.594929, -0.032510,
		42.763615, 36.398170, 34.654827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430130, 36.294987, 35.265129>,  <43.325798, 35.981720, 34.677586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430130, 36.294987, 35.265129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047836, 36.361607, 35.168110>,  <42.818459, 36.401577, 35.109898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047836, 36.361607, 35.168110>,  <43.430130, 36.294987, 35.265129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047836, 36.361607, 35.168110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259363, -0.087644, 0.961795,
		0.138930, 0.982130, 0.126962,
		-0.955735, 0.166551, -0.242552,
		42.761116, 36.411572, 35.095345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956024, 35.869991, 35.463730>,  <43.430130, 36.294987, 35.265129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956024, 35.869991, 35.463730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317444, 35.708874, 35.405285>,  <44.534298, 35.612202, 35.370216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317444, 35.708874, 35.405285>,  <43.956024, 35.869991, 35.463730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317444, 35.708874, 35.405285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029726, 0.399113, -0.916420,
		0.427449, 0.823688, 0.372593,
		0.903551, -0.402798, -0.146115,
		44.588509, 35.588036, 35.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227268, 36.199322, 34.888523>,  <43.956024, 35.869991, 35.463730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227268, 36.199322, 34.888523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502388, 35.909645, 34.908447>,  <44.667461, 35.735840, 34.920403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502388, 35.909645, 34.908447>,  <44.227268, 36.199322, 34.888523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502388, 35.909645, 34.908447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329775, 0.250602, -0.910190,
		0.646667, 0.642456, 0.411184,
		0.687801, -0.724189, 0.049809,
		44.708729, 35.692387, 34.923389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907619, 36.558414, 34.821304>,  <44.227268, 36.199322, 34.888523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907619, 36.558414, 34.821304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917076, 36.173923, 34.711411>,  <44.922752, 35.943230, 34.645473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917076, 36.173923, 34.711411>,  <44.907619, 36.558414, 34.821304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917076, 36.173923, 34.711411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491437, 0.250488, -0.834113,
		0.870592, -0.115291, 0.478307,
		0.023644, -0.961230, -0.274731,
		44.924168, 35.885555, 34.628990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570717, 36.489243, 34.631287>,  <44.907619, 36.558414, 34.821304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570717, 36.489243, 34.631287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386456, 36.180290, 34.456367>,  <45.275898, 35.994919, 34.351418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386456, 36.180290, 34.456367>,  <45.570717, 36.489243, 34.631287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386456, 36.180290, 34.456367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449262, 0.222003, -0.865377,
		0.765480, -0.595100, 0.244735,
		-0.460655, -0.772380, -0.437295,
		45.248260, 35.948578, 34.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094830, 36.147243, 34.233593>,  <45.570717, 36.489243, 34.631287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094830, 36.147243, 34.233593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728302, 36.087486, 34.084972>,  <45.508385, 36.051632, 33.995800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728302, 36.087486, 34.084972>,  <46.094830, 36.147243, 34.233593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728302, 36.087486, 34.084972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353775, 0.132773, -0.925859,
		0.187648, -0.979823, -0.068811,
		-0.916314, -0.149392, -0.371551,
		45.453407, 36.042671, 33.973507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209164, 35.696236, 33.738644>,  <46.094830, 36.147243, 34.233593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209164, 35.696236, 33.738644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861835, 35.867760, 33.638931>,  <45.653439, 35.970673, 33.579102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861835, 35.867760, 33.638931>,  <46.209164, 35.696236, 33.738644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861835, 35.867760, 33.638931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361696, 0.203509, -0.909813,
		-0.339405, -0.880174, -0.331810,
		-0.868320, 0.428810, -0.249284,
		45.601341, 35.996403, 33.564148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092972, 35.495106, 33.098305>,  <46.209164, 35.696236, 33.738644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092972, 35.495106, 33.098305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858459, 35.819092, 33.104233>,  <45.717751, 36.013485, 33.107788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858459, 35.819092, 33.104233>,  <46.092972, 35.495106, 33.098305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858459, 35.819092, 33.104233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279146, 0.219158, -0.934905,
		-0.760491, -0.543985, -0.354589,
		-0.586285, 0.809969, 0.014816,
		45.682575, 36.062084, 33.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697712, 35.496792, 32.384808>,  <46.092972, 35.495106, 33.098305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697712, 35.496792, 32.384808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691952, 35.872890, 32.520885>,  <45.688496, 36.098549, 32.602531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691952, 35.872890, 32.520885>,  <45.697712, 35.496792, 32.384808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691952, 35.872890, 32.520885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032363, 0.340488, -0.939692,
		-0.999372, -0.002525, -0.035334,
		-0.014404, 0.940246, 0.340192,
		45.687630, 36.154964, 32.622944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323170, 35.900146, 31.860535>,  <45.697712, 35.496792, 32.384808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323170, 35.900146, 31.860535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504852, 36.190960, 32.066490>,  <45.613861, 36.365448, 32.190063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504852, 36.190960, 32.066490>,  <45.323170, 35.900146, 31.860535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504852, 36.190960, 32.066490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147375, 0.508666, -0.848257,
		-0.878622, 0.461166, 0.123893,
		0.454208, 0.727038, 0.514889,
		45.641113, 36.409073, 32.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146721, 36.455574, 31.464754>,  <45.323170, 35.900146, 31.860535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146721, 36.455574, 31.464754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460701, 36.588287, 31.674046>,  <45.649090, 36.667915, 31.799620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460701, 36.588287, 31.674046>,  <45.146721, 36.455574, 31.464754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460701, 36.588287, 31.674046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305158, 0.527930, -0.792571,
		-0.539189, 0.781799, 0.313155,
		0.784954, 0.331784, 0.523226,
		45.696186, 36.687824, 31.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110836, 37.210770, 31.491158>,  <45.146721, 36.455574, 31.464754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110836, 37.210770, 31.491158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.479332, 37.058662, 31.523939>,  <45.700428, 36.967396, 31.543608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.479332, 37.058662, 31.523939>,  <45.110836, 37.210770, 31.491158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479332, 37.058662, 31.523939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320917, 0.623876, -0.712595,
		0.219852, 0.682768, 0.696773,
		0.921237, -0.380272, 0.081952,
		45.755703, 36.944580, 31.548525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553783, 37.825436, 31.319065>,  <45.110836, 37.210770, 31.491158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553783, 37.825436, 31.319065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767838, 37.489384, 31.283703>,  <45.896271, 37.287754, 31.262486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767838, 37.489384, 31.283703>,  <45.553783, 37.825436, 31.319065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767838, 37.489384, 31.283703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356146, 0.319268, -0.878196,
		0.766022, 0.438468, 0.470059,
		0.535136, -0.840127, -0.088407,
		45.928379, 37.237347, 31.257181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150974, 38.194004, 31.060366>,  <45.553783, 37.825436, 31.319065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150974, 38.194004, 31.060366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181377, 37.800861, 30.993177>,  <46.199619, 37.564976, 30.952866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181377, 37.800861, 30.993177>,  <46.150974, 38.194004, 31.060366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181377, 37.800861, 30.993177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378668, 0.184290, -0.906999,
		0.922406, 0.005339, 0.386185,
		0.076012, -0.982858, -0.167968,
		46.204182, 37.506004, 30.942787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875259, 38.066650, 30.758535>,  <46.150974, 38.194004, 31.060366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875259, 38.066650, 30.758535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657993, 37.741722, 30.673590>,  <46.527634, 37.546764, 30.622622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657993, 37.741722, 30.673590>,  <46.875259, 38.066650, 30.758535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657993, 37.741722, 30.673590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280407, 0.062903, -0.957818,
		0.791416, -0.579805, 0.193615,
		-0.543169, -0.812324, -0.212364,
		46.495041, 37.498024, 30.609880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285122, 37.440338, 30.385473>,  <46.875259, 38.066650, 30.758535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285122, 37.440338, 30.385473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.895100, 37.422741, 30.298458>,  <46.661087, 37.412182, 30.246248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.895100, 37.422741, 30.298458>,  <47.285122, 37.440338, 30.385473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895100, 37.422741, 30.298458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219490, -0.045803, -0.974539,
		0.032912, -0.997981, 0.054317,
		-0.975060, -0.043997, -0.217540,
		46.602581, 37.409542, 30.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206306, 36.869415, 29.828836>,  <47.285122, 37.440338, 30.385473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206306, 36.869415, 29.828836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.864491, 37.077034, 29.821293>,  <46.659401, 37.201607, 29.816767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.864491, 37.077034, 29.821293>,  <47.206306, 36.869415, 29.828836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864491, 37.077034, 29.821293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207912, -0.375116, -0.903361,
		-0.475965, -0.768033, 0.428466,
		-0.854535, 0.519051, -0.018859,
		46.608131, 37.232750, 29.815636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732002, 36.433193, 29.404993>,  <47.206306, 36.869415, 29.828836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732002, 36.433193, 29.404993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552895, 36.790173, 29.427019>,  <46.445431, 37.004360, 29.440235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552895, 36.790173, 29.427019>,  <46.732002, 36.433193, 29.404993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552895, 36.790173, 29.427019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473197, -0.184260, -0.861471,
		-0.758676, -0.411796, 0.504812,
		-0.447767, 0.892453, 0.055067,
		46.418564, 37.057907, 29.443539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992096, 36.324562, 29.315859>,  <46.732002, 36.433193, 29.404993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992096, 36.324562, 29.315859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085087, 36.699768, 29.213041>,  <46.140881, 36.924892, 29.151350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085087, 36.699768, 29.213041>,  <45.992096, 36.324562, 29.315859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085087, 36.699768, 29.213041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502309, -0.110511, -0.857597,
		-0.832849, 0.328491, 0.445484,
		0.232482, 0.938020, -0.257043,
		46.154831, 36.981174, 29.135929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408447, 36.589542, 28.964071>,  <45.992096, 36.324562, 29.315859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408447, 36.589542, 28.964071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694107, 36.841591, 28.842123>,  <45.865501, 36.992821, 28.768955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694107, 36.841591, 28.842123>,  <45.408447, 36.589542, 28.964071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694107, 36.841591, 28.842123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297036, -0.121584, -0.947094,
		-0.633848, 0.766922, 0.100339,
		0.714147, 0.630117, -0.304869,
		45.908352, 37.030624, 28.750662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043957, 37.169525, 28.627771>,  <45.408447, 36.589542, 28.964071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043957, 37.169525, 28.627771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418007, 37.200771, 28.489529>,  <45.642437, 37.219521, 28.406584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418007, 37.200771, 28.489529>,  <45.043957, 37.169525, 28.627771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418007, 37.200771, 28.489529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342512, -0.050447, -0.938158,
		-0.090722, 0.995667, -0.020418,
		0.935123, 0.078118, -0.345605,
		45.698544, 37.224205, 28.385847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071953, 37.682384, 28.082047>,  <45.043957, 37.169525, 28.627771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071953, 37.682384, 28.082047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389477, 37.449085, 28.013132>,  <45.579990, 37.309105, 27.971783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389477, 37.449085, 28.013132>,  <45.071953, 37.682384, 28.082047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389477, 37.449085, 28.013132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358907, -0.220578, -0.906935,
		0.490967, 0.781770, -0.384430,
		0.793812, -0.583250, -0.172286,
		45.627621, 37.274109, 27.961447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.591156, 40.309673, 39.608143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485157, 39.924099, 39.617912>,  <33.421558, 39.692753, 39.623775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485157, 39.924099, 39.617912>,  <33.591156, 40.309673, 39.608143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485157, 39.924099, 39.617912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564447, -0.175611, -0.806574,
		0.781778, -0.199951, 0.590629,
		-0.264996, -0.963940, 0.024428,
		33.405659, 39.634918, 39.625240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203171, 39.944271, 39.399979>,  <33.591156, 40.309673, 39.608143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203171, 39.944271, 39.399979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938328, 39.648788, 39.349514>,  <33.779423, 39.471497, 39.319233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938328, 39.648788, 39.349514>,  <34.203171, 39.944271, 39.399979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938328, 39.648788, 39.349514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507309, -0.317900, -0.800985,
		0.551589, -0.594344, 0.585239,
		-0.662109, -0.738711, -0.126166,
		33.739697, 39.427174, 39.311665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597717, 39.386742, 39.281075>,  <34.203171, 39.944271, 39.399979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597717, 39.386742, 39.281075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231388, 39.292164, 39.151237>,  <34.011589, 39.235416, 39.073334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231388, 39.292164, 39.151237>,  <34.597717, 39.386742, 39.281075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231388, 39.292164, 39.151237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398418, -0.433675, -0.808201,
		0.050326, -0.869494, 0.491373,
		-0.915822, -0.236445, -0.324597,
		33.956642, 39.221230, 39.053860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582546, 38.702393, 39.002808>,  <34.597717, 39.386742, 39.281075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582546, 38.702393, 39.002808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286644, 38.902271, 38.822556>,  <34.109100, 39.022198, 38.714405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286644, 38.902271, 38.822556>,  <34.582546, 38.702393, 39.002808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286644, 38.902271, 38.822556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291029, -0.366214, -0.883849,
		-0.606679, -0.784980, 0.125485,
		-0.739758, 0.499693, -0.450627,
		34.064716, 39.052177, 38.687366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380928, 38.296257, 38.510990>,  <34.582546, 38.702393, 39.002808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380928, 38.296257, 38.510990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195057, 38.623226, 38.374813>,  <34.083534, 38.819408, 38.293106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195057, 38.623226, 38.374813>,  <34.380928, 38.296257, 38.510990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195057, 38.623226, 38.374813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173575, -0.292923, -0.940249,
		-0.868302, -0.496003, -0.005770,
		-0.464676, 0.817421, -0.340440,
		34.055653, 38.868454, 38.272682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882957, 38.075138, 37.962692>,  <34.380928, 38.296257, 38.510990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882957, 38.075138, 37.962692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916325, 38.466232, 37.885681>,  <33.936344, 38.700890, 37.839474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916325, 38.466232, 37.885681>,  <33.882957, 38.075138, 37.962692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916325, 38.466232, 37.885681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052907, -0.188579, -0.980632,
		-0.995109, 0.091991, 0.035998,
		0.083421, 0.977740, -0.192524,
		33.941353, 38.759556, 37.827923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428707, 38.174217, 37.467693>,  <33.882957, 38.075138, 37.962692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428707, 38.174217, 37.467693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658989, 38.498024, 37.421658>,  <33.797157, 38.692307, 37.394035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658989, 38.498024, 37.421658>,  <33.428707, 38.174217, 37.467693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658989, 38.498024, 37.421658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084984, -0.080757, -0.993104,
		-0.813229, 0.581517, 0.022304,
		0.575705, 0.809516, -0.115094,
		33.831699, 38.740879, 37.387131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108974, 38.610962, 36.946934>,  <33.428707, 38.174217, 37.467693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108974, 38.610962, 36.946934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491703, 38.720963, 36.984600>,  <33.721340, 38.786964, 37.007198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491703, 38.720963, 36.984600>,  <33.108974, 38.610962, 36.946934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491703, 38.720963, 36.984600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107057, -0.032210, -0.993731,
		-0.270245, 0.960904, -0.060260,
		0.956821, 0.275002, 0.094167,
		33.778748, 38.803463, 37.012852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245365, 39.130142, 36.478344>,  <33.108974, 38.610962, 36.946934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245365, 39.130142, 36.478344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602287, 38.961094, 36.541828>,  <33.816441, 38.859665, 36.579918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602287, 38.961094, 36.541828>,  <33.245365, 39.130142, 36.478344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602287, 38.961094, 36.541828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003656, -0.344793, -0.938672,
		0.451422, 0.838160, -0.306115,
		0.892303, -0.422618, 0.158711,
		33.869980, 38.834309, 36.589443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655067, 39.253323, 35.874622>,  <33.245365, 39.130142, 36.478344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655067, 39.253323, 35.874622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812592, 38.929993, 36.049679>,  <33.907104, 38.735996, 36.154713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812592, 38.929993, 36.049679>,  <33.655067, 39.253323, 35.874622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812592, 38.929993, 36.049679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028339, -0.465208, -0.884748,
		0.918755, 0.360824, -0.160296,
		0.393809, -0.808324, 0.437638,
		33.930733, 38.687496, 36.180969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096516, 39.047405, 35.323948>,  <33.655067, 39.253323, 35.874622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096516, 39.047405, 35.323948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061470, 38.732834, 35.568523>,  <34.040443, 38.544090, 35.715271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061470, 38.732834, 35.568523>,  <34.096516, 39.047405, 35.323948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061470, 38.732834, 35.568523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016285, -0.614851, -0.788475,
		0.996022, -0.059122, 0.066675,
		-0.087611, -0.786424, 0.611442,
		34.035187, 38.496906, 35.751957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564835, 38.602810, 35.199112>,  <34.096516, 39.047405, 35.323948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564835, 38.602810, 35.199112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285866, 38.377403, 35.376225>,  <34.118484, 38.242161, 35.482491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285866, 38.377403, 35.376225>,  <34.564835, 38.602810, 35.199112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285866, 38.377403, 35.376225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032795, -0.592095, -0.805201,
		0.715913, -0.576083, 0.394457,
		-0.697419, -0.563517, 0.442781,
		34.076641, 38.208347, 35.509060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726383, 37.813663, 35.172581>,  <34.564835, 38.602810, 35.199112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726383, 37.813663, 35.172581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648232, 37.421425, 35.166172>,  <34.601341, 37.186081, 35.162327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648232, 37.421425, 35.166172>,  <34.726383, 37.813663, 35.172581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648232, 37.421425, 35.166172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352704, 0.085499, -0.931821,
		0.915111, -0.176405, -0.362565,
		-0.195377, -0.980597, -0.016022,
		34.589619, 37.127247, 35.161366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065079, 37.394073, 34.503593>,  <34.726383, 37.813663, 35.172581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065079, 37.394073, 34.503593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732906, 37.198734, 34.610851>,  <34.533604, 37.081532, 34.675205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732906, 37.198734, 34.610851>,  <35.065079, 37.394073, 34.503593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732906, 37.198734, 34.610851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227107, -0.142760, -0.963349,
		0.508726, -0.860894, 0.007646,
		-0.830434, -0.488345, 0.268141,
		34.483776, 37.052231, 34.691292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855503, 37.514378, 34.486820>,  <35.065079, 37.394073, 34.503593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855503, 37.514378, 34.486820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230717, 37.378777, 34.515594>,  <36.455845, 37.297417, 34.532860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230717, 37.378777, 34.515594>,  <35.855503, 37.514378, 34.486820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230717, 37.378777, 34.515594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188150, -0.323882, 0.927200,
		-0.291012, -0.883281, -0.367594,
		0.938036, -0.338989, 0.071935,
		36.512127, 37.277077, 34.537174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761848, 36.699398, 34.609825>,  <35.855503, 37.514378, 34.486820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761848, 36.699398, 34.609825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108006, 36.826290, 34.764980>,  <36.315701, 36.902424, 34.858074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108006, 36.826290, 34.764980>,  <35.761848, 36.699398, 34.609825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108006, 36.826290, 34.764980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351027, -0.168619, 0.921058,
		0.357592, -0.933238, -0.034566,
		0.865394, 0.317229, 0.387889,
		36.367622, 36.921459, 34.881348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906090, 36.340904, 35.202595>,  <35.761848, 36.699398, 34.609825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906090, 36.340904, 35.202595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157486, 36.643494, 35.274986>,  <36.308323, 36.825047, 35.318420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157486, 36.643494, 35.274986>,  <35.906090, 36.340904, 35.202595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157486, 36.643494, 35.274986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184452, -0.081085, 0.979491,
		0.755632, -0.648980, 0.088572,
		0.628489, 0.756472, 0.180977,
		36.346031, 36.870434, 35.329281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163734, 36.139462, 35.758698>,  <35.906090, 36.340904, 35.202595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163734, 36.139462, 35.758698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198410, 36.537663, 35.773945>,  <36.219215, 36.776585, 35.783092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198410, 36.537663, 35.773945>,  <36.163734, 36.139462, 35.758698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198410, 36.537663, 35.773945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110809, -0.028393, 0.993436,
		0.990053, -0.090346, 0.107850,
		0.086691, 0.995506, 0.038122,
		36.224419, 36.836315, 35.785381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634197, 36.266739, 36.285030>,  <36.163734, 36.139462, 35.758698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634197, 36.266739, 36.285030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407082, 36.592335, 36.235970>,  <36.270813, 36.787693, 36.206532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407082, 36.592335, 36.235970>,  <36.634197, 36.266739, 36.285030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407082, 36.592335, 36.235970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083096, 0.091562, 0.992326,
		0.818970, 0.573623, 0.015651,
		-0.567788, 0.813986, -0.122652,
		36.236744, 36.836529, 36.199173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744923, 36.593124, 36.889271>,  <36.634197, 36.266739, 36.285030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744923, 36.593124, 36.889271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424618, 36.787701, 36.749466>,  <36.232433, 36.904446, 36.665585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424618, 36.787701, 36.749466>,  <36.744923, 36.593124, 36.889271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424618, 36.787701, 36.749466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381157, 0.036306, 0.923797,
		0.462059, 0.872961, 0.156336,
		-0.800763, 0.486437, -0.349511,
		36.184387, 36.933632, 36.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649265, 37.209053, 37.265903>,  <36.744923, 36.593124, 36.889271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649265, 37.209053, 37.265903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292950, 37.129017, 37.102711>,  <36.079159, 37.080994, 37.004795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292950, 37.129017, 37.102711>,  <36.649265, 37.209053, 37.265903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292950, 37.129017, 37.102711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430938, 0.087165, 0.898162,
		-0.144151, 0.975893, -0.163873,
		-0.890793, -0.200090, -0.407985,
		36.025711, 37.068989, 36.980316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216381, 37.707680, 37.502190>,  <36.649265, 37.209053, 37.265903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216381, 37.707680, 37.502190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965462, 37.422577, 37.376667>,  <35.814911, 37.251514, 37.301353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965462, 37.422577, 37.376667>,  <36.216381, 37.707680, 37.502190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965462, 37.422577, 37.376667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494362, 0.053096, 0.867633,
		-0.601748, 0.699401, -0.385666,
		-0.627301, -0.712755, -0.313806,
		35.777271, 37.208752, 37.282524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610146, 37.954296, 37.739792>,  <36.216381, 37.707680, 37.502190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610146, 37.954296, 37.739792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558147, 37.566269, 37.657745>,  <35.526947, 37.333454, 37.608517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558147, 37.566269, 37.657745>,  <35.610146, 37.954296, 37.739792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558147, 37.566269, 37.657745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597220, -0.088529, 0.797177,
		-0.791473, 0.226131, -0.567835,
		-0.129996, -0.970066, -0.205118,
		35.519150, 37.275249, 37.596210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836449, 37.838116, 37.864262>,  <35.610146, 37.954296, 37.739792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836449, 37.838116, 37.864262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021885, 37.484512, 37.888290>,  <35.133148, 37.272350, 37.902706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021885, 37.484512, 37.888290>,  <34.836449, 37.838116, 37.864262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021885, 37.484512, 37.888290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539545, -0.227871, 0.810535,
		-0.702833, -0.408168, -0.582602,
		0.463592, -0.884010, 0.060070,
		35.160961, 37.219311, 37.906311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381973, 37.411987, 38.260639>,  <34.836449, 37.838116, 37.864262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381973, 37.411987, 38.260639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731697, 37.219723, 38.287617>,  <34.941532, 37.104362, 38.303802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731697, 37.219723, 38.287617>,  <34.381973, 37.411987, 38.260639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731697, 37.219723, 38.287617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137830, -0.112636, 0.984030,
		-0.465393, -0.869640, -0.164729,
		0.874307, -0.480665, 0.067443,
		34.993988, 37.075523, 38.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222778, 36.710659, 38.557259>,  <34.381973, 37.411987, 38.260639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222778, 36.710659, 38.557259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615799, 36.735786, 38.627274>,  <34.851612, 36.750862, 38.669285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615799, 36.735786, 38.627274>,  <34.222778, 36.710659, 38.557259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615799, 36.735786, 38.627274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134838, -0.407601, 0.903150,
		0.128079, -0.910997, -0.392020,
		0.982556, 0.062815, 0.175042,
		34.910564, 36.754631, 38.679787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485294, 36.088024, 38.855053>,  <34.222778, 36.710659, 38.557259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485294, 36.088024, 38.855053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754238, 36.361633, 38.968216>,  <34.915604, 36.525799, 39.036114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754238, 36.361633, 38.968216>,  <34.485294, 36.088024, 38.855053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754238, 36.361633, 38.968216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118557, -0.277751, 0.953309,
		0.730666, -0.674510, -0.105654,
		0.672362, 0.684025, 0.282912,
		34.955948, 36.566841, 39.053089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906136, 35.782471, 39.451687>,  <34.485294, 36.088024, 38.855053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906136, 35.782471, 39.451687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962471, 36.177578, 39.478474>,  <34.996273, 36.414642, 39.494545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962471, 36.177578, 39.478474>,  <34.906136, 35.782471, 39.451687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962471, 36.177578, 39.478474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036342, -0.062433, 0.997387,
		0.989366, -0.142900, 0.027104,
		0.140835, 0.987766, 0.066963,
		35.004723, 36.473907, 39.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839672, 35.164009, 39.606995>,  <34.906136, 35.782471, 39.451687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839672, 35.164009, 39.606995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460747, 35.036297, 39.617214>,  <34.233391, 34.959671, 39.623344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460747, 35.036297, 39.617214>,  <34.839672, 35.164009, 39.606995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460747, 35.036297, 39.617214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040326, -0.198020, -0.979368,
		0.317752, -0.926741, 0.200463,
		-0.947316, -0.319280, 0.025549,
		34.176552, 34.940514, 39.624878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820465, 34.807167, 38.974445>,  <34.839672, 35.164009, 39.606995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820465, 34.807167, 38.974445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440289, 34.808075, 39.098801>,  <34.212181, 34.808620, 39.173412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440289, 34.808075, 39.098801>,  <34.820465, 34.807167, 38.974445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440289, 34.808075, 39.098801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305196, -0.197410, -0.931604,
		0.059255, -0.980319, 0.188320,
		-0.950444, 0.002272, 0.310886,
		34.155155, 34.808758, 39.192066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536282, 34.284004, 38.694229>,  <34.820465, 34.807167, 38.974445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536282, 34.284004, 38.694229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197311, 34.478569, 38.779335>,  <33.993927, 34.595306, 38.830399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197311, 34.478569, 38.779335>,  <34.536282, 34.284004, 38.694229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197311, 34.478569, 38.779335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271116, -0.051911, -0.961146,
		-0.456468, -0.872186, 0.175865,
		-0.847428, 0.486412, 0.212767,
		33.943085, 34.624493, 38.843166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964714, 33.790493, 38.422707>,  <34.536282, 34.284004, 38.694229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964714, 33.790493, 38.422707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848961, 34.173111, 38.437008>,  <33.779507, 34.402683, 38.445591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848961, 34.173111, 38.437008>,  <33.964714, 33.790493, 38.422707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848961, 34.173111, 38.437008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243128, -0.037322, -0.969276,
		-0.925821, -0.289187, 0.243364,
		-0.289384, 0.956545, 0.035756,
		33.762146, 34.460075, 38.447735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229694, 33.781544, 38.314846>,  <33.964714, 33.790493, 38.422707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229694, 33.781544, 38.314846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393066, 34.125385, 38.192036>,  <33.491089, 34.331688, 38.118351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393066, 34.125385, 38.192036>,  <33.229694, 33.781544, 38.314846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393066, 34.125385, 38.192036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482185, -0.082413, -0.872184,
		-0.775035, 0.504274, 0.380827,
		0.408435, 0.859602, -0.307026,
		33.515598, 34.383266, 38.099926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675446, 34.069996, 38.013985>,  <33.229694, 33.781544, 38.314846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675446, 34.069996, 38.013985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986580, 34.293556, 37.899029>,  <33.173260, 34.427692, 37.830055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986580, 34.293556, 37.899029>,  <32.675446, 34.069996, 38.013985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986580, 34.293556, 37.899029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381494, 0.056503, -0.922643,
		-0.499428, 0.827307, 0.257168,
		0.777839, 0.558902, -0.287393,
		33.219933, 34.461227, 37.812809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343575, 34.708344, 37.635609>,  <32.675446, 34.069996, 38.013985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343575, 34.708344, 37.635609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726780, 34.684315, 37.523464>,  <32.956703, 34.669899, 37.456177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726780, 34.684315, 37.523464>,  <32.343575, 34.708344, 37.635609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726780, 34.684315, 37.523464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277993, 0.044862, -0.959535,
		0.070216, 0.997186, 0.026279,
		0.958013, -0.060070, -0.280360,
		33.014183, 34.666294, 37.439358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578251, 35.257973, 37.267868>,  <32.343575, 34.708344, 37.635609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578251, 35.257973, 37.267868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798172, 34.949516, 37.139454>,  <32.930126, 34.764442, 37.062405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798172, 34.949516, 37.139454>,  <32.578251, 35.257973, 37.267868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798172, 34.949516, 37.139454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488244, 0.015152, -0.872576,
		0.677739, 0.636490, -0.368172,
		0.549807, -0.771136, -0.321031,
		32.963116, 34.718174, 37.043144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665604, 35.353748, 36.604160>,  <32.578251, 35.257973, 37.267868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665604, 35.353748, 36.604160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821560, 34.985405, 36.604004>,  <32.915134, 34.764397, 36.603912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821560, 34.985405, 36.604004>,  <32.665604, 35.353748, 36.604160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821560, 34.985405, 36.604004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282474, -0.119199, -0.951840,
		0.876468, 0.371221, -0.306594,
		0.389889, -0.920862, -0.000386,
		32.938526, 34.709145, 36.603889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926193, 35.278839, 35.919403>,  <32.665604, 35.353748, 36.604160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926193, 35.278839, 35.919403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887012, 34.905113, 36.056496>,  <32.863503, 34.680878, 36.138752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887012, 34.905113, 36.056496>,  <32.926193, 35.278839, 35.919403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887012, 34.905113, 36.056496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375143, -0.284317, -0.882288,
		0.921777, -0.214999, -0.322650,
		-0.097956, -0.934312, 0.342732,
		32.857624, 34.624821, 36.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173183, 34.719032, 35.406013>,  <32.926193, 35.278839, 35.919403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173183, 34.719032, 35.406013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975365, 34.475258, 35.653889>,  <32.856674, 34.328995, 35.802612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975365, 34.475258, 35.653889>,  <33.173183, 34.719032, 35.406013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975365, 34.475258, 35.653889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417129, -0.459080, -0.784378,
		0.762512, -0.646403, -0.027174,
		-0.494549, -0.609433, 0.619687,
		32.827000, 34.292427, 35.839794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284256, 34.016933, 35.217316>,  <33.173183, 34.719032, 35.406013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284256, 34.016933, 35.217316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920628, 34.034523, 35.383041>,  <32.702450, 34.045074, 35.482475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920628, 34.034523, 35.383041>,  <33.284256, 34.016933, 35.217316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920628, 34.034523, 35.383041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414351, -0.199552, -0.887971,
		0.043634, -0.978900, 0.199625,
		-0.909070, 0.043970, 0.414316,
		32.647907, 34.047714, 35.507336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.645309, 34.123310, 43.304619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.265224, 34.247036, 43.289516>,  <34.037174, 34.321270, 43.280457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.265224, 34.247036, 43.289516>,  <34.645309, 34.123310, 43.304619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265224, 34.247036, 43.289516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042000, 0.007086, -0.999092,
		-0.308763, -0.950935, -0.019724,
		-0.950211, 0.309311, -0.037752,
		33.980160, 34.339828, 43.278191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286423, 33.590328, 42.906555>,  <34.645309, 34.123310, 43.304619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286423, 33.590328, 42.906555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079609, 33.932533, 42.895462>,  <33.955521, 34.137856, 42.888805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079609, 33.932533, 42.895462>,  <34.286423, 33.590328, 42.906555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079609, 33.932533, 42.895462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024974, -0.047465, -0.998561,
		-0.855598, -0.515601, 0.045907,
		-0.517038, 0.855513, -0.027735,
		33.924496, 34.189186, 42.887142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809521, 33.492798, 42.347301>,  <34.286423, 33.590328, 42.906555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809521, 33.492798, 42.347301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830757, 33.887489, 42.408684>,  <33.843498, 34.124306, 42.445515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830757, 33.887489, 42.408684>,  <33.809521, 33.492798, 42.347301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830757, 33.887489, 42.408684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003489, 0.153856, -0.988087,
		-0.998583, 0.051926, 0.011612,
		0.053094, 0.986728, 0.153456,
		33.846684, 34.183506, 42.454720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222221, 33.819431, 41.968079>,  <33.809521, 33.492798, 42.347301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222221, 33.819431, 41.968079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501640, 34.100136, 42.024033>,  <33.669292, 34.268559, 42.057606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501640, 34.100136, 42.024033>,  <33.222221, 33.819431, 41.968079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501640, 34.100136, 42.024033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054674, 0.247257, -0.967406,
		-0.713474, 0.668129, 0.211088,
		0.698545, 0.701761, 0.139882,
		33.711205, 34.310665, 42.065998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068180, 34.314690, 41.496555>,  <33.222221, 33.819431, 41.968079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068180, 34.314690, 41.496555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.452122, 34.398624, 41.571018>,  <33.682487, 34.448986, 41.615696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.452122, 34.398624, 41.571018>,  <33.068180, 34.314690, 41.496555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452122, 34.398624, 41.571018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123300, 0.280489, -0.951905,
		-0.251961, 0.936640, 0.243355,
		0.959850, 0.209837, 0.186161,
		33.740078, 34.461575, 41.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190292, 35.081974, 41.400387>,  <33.068180, 34.314690, 41.496555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190292, 35.081974, 41.400387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.549492, 34.912529, 41.352795>,  <33.765011, 34.810863, 41.324238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.549492, 34.912529, 41.352795>,  <33.190292, 35.081974, 41.400387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549492, 34.912529, 41.352795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007674, 0.285454, -0.958362,
		0.439935, 0.859692, 0.259588,
		0.897997, -0.423609, -0.118984,
		33.818890, 34.785446, 41.317101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573093, 35.589401, 41.154171>,  <33.190292, 35.081974, 41.400387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573093, 35.589401, 41.154171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766438, 35.256699, 41.044964>,  <33.882442, 35.057076, 40.979439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766438, 35.256699, 41.044964>,  <33.573093, 35.589401, 41.154171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766438, 35.256699, 41.044964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011783, 0.318028, -0.948008,
		0.875341, 0.455014, 0.163523,
		0.483362, -0.831758, -0.273022,
		33.911446, 35.007172, 40.963058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058064, 35.759964, 40.614197>,  <33.573093, 35.589401, 41.154171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058064, 35.759964, 40.614197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008221, 35.370975, 40.535431>,  <33.978317, 35.137581, 40.488171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008221, 35.370975, 40.535431>,  <34.058064, 35.759964, 40.614197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008221, 35.370975, 40.535431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183296, 0.172488, -0.967807,
		0.975129, -0.156685, 0.156758,
		-0.124602, -0.972470, -0.196917,
		33.970840, 35.079235, 40.476357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434128, 35.671932, 40.026340>,  <34.058064, 35.759964, 40.614197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434128, 35.671932, 40.026340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214195, 35.338028, 40.038078>,  <34.082237, 35.137684, 40.045120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214195, 35.338028, 40.038078>,  <34.434128, 35.671932, 40.026340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214195, 35.338028, 40.038078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074378, -0.083919, -0.993693,
		0.831959, -0.544179, 0.108229,
		-0.549829, -0.834762, 0.029342,
		34.049248, 35.087601, 40.046883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185467, 35.801868, 40.112755>,  <34.434128, 35.671932, 40.026340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185467, 35.801868, 40.112755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116009, 36.188412, 40.036858>,  <35.074333, 36.420338, 39.991322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116009, 36.188412, 40.036858>,  <35.185467, 35.801868, 40.112755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116009, 36.188412, 40.036858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061794, 0.202977, 0.977232,
		0.982868, 0.157964, -0.094960,
		-0.173642, 0.966358, -0.189739,
		35.063915, 36.478317, 39.979935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680706, 36.088310, 40.610260>,  <35.185467, 35.801868, 40.112755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680706, 36.088310, 40.610260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422192, 36.381733, 40.526157>,  <35.267082, 36.557785, 40.475697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422192, 36.381733, 40.526157>,  <35.680706, 36.088310, 40.610260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422192, 36.381733, 40.526157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108221, 0.184644, 0.976829,
		0.755379, 0.654069, -0.039947,
		-0.646290, 0.733553, -0.210260,
		35.228306, 36.601799, 40.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887657, 36.796032, 40.884277>,  <35.680706, 36.088310, 40.610260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887657, 36.796032, 40.884277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490307, 36.797031, 40.838341>,  <35.251896, 36.797630, 40.810780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490307, 36.797031, 40.838341>,  <35.887657, 36.796032, 40.884277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490307, 36.797031, 40.838341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106721, 0.349754, 0.930743,
		0.042495, 0.936838, -0.347171,
		-0.993380, 0.002501, -0.114843,
		35.192291, 36.797783, 40.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699802, 37.456078, 41.192802>,  <35.887657, 36.796032, 40.884277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699802, 37.456078, 41.192802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346943, 37.267696, 41.190781>,  <35.135227, 37.154667, 41.189568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346943, 37.267696, 41.190781>,  <35.699802, 37.456078, 41.192802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346943, 37.267696, 41.190781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243932, 0.447690, 0.860273,
		-0.402884, 0.760119, -0.509808,
		-0.882146, -0.470949, -0.005051,
		35.082298, 37.126411, 41.189266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224285, 37.882420, 41.438374>,  <35.699802, 37.456078, 41.192802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224285, 37.882420, 41.438374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970615, 37.575016, 41.472370>,  <34.818413, 37.390575, 41.492767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970615, 37.575016, 41.472370>,  <35.224285, 37.882420, 41.438374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970615, 37.575016, 41.472370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333387, 0.370966, 0.866739,
		-0.697622, 0.521329, -0.491467,
		-0.634174, -0.768505, 0.084990,
		34.780365, 37.344463, 41.497868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509869, 38.190662, 41.636974>,  <35.224285, 37.882420, 41.438374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509869, 38.190662, 41.636974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.537327, 37.811577, 41.761635>,  <34.553802, 37.584126, 41.836433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.537327, 37.811577, 41.761635>,  <34.509869, 38.190662, 41.636974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537327, 37.811577, 41.761635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249588, 0.286142, 0.925110,
		-0.965916, -0.141286, -0.216897,
		0.068642, -0.947713, 0.311653,
		34.557919, 37.527264, 41.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159714, 38.146069, 42.141582>,  <34.509869, 38.190662, 41.636974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159714, 38.146069, 42.141582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371365, 37.816364, 42.222191>,  <34.498356, 37.618542, 42.270554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371365, 37.816364, 42.222191>,  <34.159714, 38.146069, 42.141582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371365, 37.816364, 42.222191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061745, 0.199458, 0.977959,
		-0.846291, -0.529911, 0.054645,
		0.529131, -0.824264, 0.201519,
		34.530106, 37.569084, 42.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818710, 37.841167, 42.660244>,  <34.159714, 38.146069, 42.141582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818710, 37.841167, 42.660244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.184502, 37.679848, 42.673416>,  <34.403976, 37.583057, 42.681320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.184502, 37.679848, 42.673416>,  <33.818710, 37.841167, 42.660244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184502, 37.679848, 42.673416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036913, 0.164193, 0.985737,
		-0.402955, -0.900216, 0.165037,
		0.914475, -0.403300, 0.032933,
		34.458843, 37.558857, 42.683296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866467, 37.538452, 43.419098>,  <33.818710, 37.841167, 42.660244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866467, 37.538452, 43.419098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235802, 37.597488, 43.277306>,  <34.457405, 37.632912, 43.192230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235802, 37.597488, 43.277306>,  <33.866467, 37.538452, 43.419098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235802, 37.597488, 43.277306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320739, 0.211114, 0.923340,
		0.211114, -0.966254, 0.147592,
		-0.923340, -0.147592, 0.354485,
		34.512802, 37.641766, 43.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361675, 37.177254, 43.836571>,  <33.866467, 37.538452, 43.419098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361675, 37.177254, 43.836571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606693, 37.431454, 43.648560>,  <34.753704, 37.583973, 43.535751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606693, 37.431454, 43.648560>,  <34.361675, 37.177254, 43.836571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606693, 37.431454, 43.648560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492433, 0.158341, 0.855826,
		0.618306, -0.755687, -0.215953,
		0.612541, 0.635505, -0.470029,
		34.790455, 37.622105, 43.507549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073563, 36.978390, 43.993061>,  <34.361675, 37.177254, 43.836571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073563, 36.978390, 43.993061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073662, 37.368454, 43.904465>,  <35.073723, 37.602493, 43.851307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073662, 37.368454, 43.904465>,  <35.073563, 36.978390, 43.993061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073662, 37.368454, 43.904465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446606, 0.198069, 0.872532,
		0.894731, -0.099141, -0.435463,
		0.000252, 0.975161, -0.221495,
		35.073738, 37.661003, 43.838017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821922, 37.148407, 44.093487>,  <35.073563, 36.978390, 43.993061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821922, 37.148407, 44.093487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.618073, 37.492184, 44.109699>,  <35.495762, 37.698448, 44.119427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.618073, 37.492184, 44.109699>,  <35.821922, 37.148407, 44.093487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618073, 37.492184, 44.109699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448228, 0.224985, 0.865143,
		0.734421, 0.459067, -0.499884,
		-0.509625, 0.859441, 0.040533,
		35.465183, 37.750015, 44.121861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316730, 37.685673, 44.185654>,  <35.821922, 37.148407, 44.093487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316730, 37.685673, 44.185654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975590, 37.857327, 44.304646>,  <35.770905, 37.960320, 44.376041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975590, 37.857327, 44.304646>,  <36.316730, 37.685673, 44.185654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975590, 37.857327, 44.304646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469424, 0.380638, 0.796716,
		0.228663, 0.819123, -0.526071,
		-0.852851, 0.429130, 0.297478,
		35.719734, 37.986065, 44.393890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539211, 38.288029, 44.572830>,  <36.316730, 37.685673, 44.185654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539211, 38.288029, 44.572830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158123, 38.238808, 44.683952>,  <35.929470, 38.209274, 44.750626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158123, 38.238808, 44.683952>,  <36.539211, 38.288029, 44.572830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158123, 38.238808, 44.683952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228984, 0.310193, 0.922684,
		-0.199714, 0.942676, -0.267350,
		-0.952723, -0.123054, 0.277808,
		35.872307, 38.201893, 44.767296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.009588, 36.349529, 45.185886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.402588, 36.307713, 45.124218>,  <27.638388, 36.282623, 45.087215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.402588, 36.307713, 45.124218>,  <27.009588, 36.349529, 45.185886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402588, 36.307713, 45.124218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133649, 0.180921, -0.974374,
		0.129752, 0.977926, 0.163783,
		0.982498, -0.104537, -0.154174,
		27.697338, 36.276352, 45.077965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241224, 36.883129, 44.806103>,  <27.009588, 36.349529, 45.185886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241224, 36.883129, 44.806103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.523695, 36.607529, 44.740879>,  <27.693178, 36.442169, 44.701744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.523695, 36.607529, 44.740879>,  <27.241224, 36.883129, 44.806103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523695, 36.607529, 44.740879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019635, 0.249266, -0.968236,
		0.707764, 0.680544, 0.189555,
		0.706176, -0.689004, -0.163059,
		27.735548, 36.400829, 44.691963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598082, 37.224529, 44.322300>,  <27.241224, 36.883129, 44.806103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598082, 37.224529, 44.322300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.729074, 36.847221, 44.300385>,  <27.807671, 36.620838, 44.287235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.729074, 36.847221, 44.300385>,  <27.598082, 37.224529, 44.322300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729074, 36.847221, 44.300385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129575, 0.102274, -0.986281,
		0.935930, 0.315892, 0.155717,
		0.327484, -0.943267, -0.054789,
		27.827320, 36.564240, 44.283947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117378, 37.247524, 43.930321>,  <27.598082, 37.224529, 44.322300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117378, 37.247524, 43.930321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.025787, 36.859108, 43.903030>,  <27.970833, 36.626060, 43.886658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.025787, 36.859108, 43.903030>,  <28.117378, 37.247524, 43.930321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025787, 36.859108, 43.903030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218840, 0.016939, -0.975614,
		0.948514, -0.238323, 0.208623,
		-0.228977, -0.971038, -0.068221,
		27.957094, 36.567795, 43.882565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561565, 36.961563, 43.464745>,  <28.117378, 37.247524, 43.930321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561565, 36.961563, 43.464745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.311131, 36.650368, 43.443771>,  <28.160870, 36.463650, 43.431187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.311131, 36.650368, 43.443771>,  <28.561565, 36.961563, 43.464745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311131, 36.650368, 43.443771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279814, -0.161401, -0.946390,
		0.727820, -0.607191, 0.318743,
		-0.626085, -0.777990, -0.052430,
		28.123304, 36.416969, 43.428043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906345, 36.394066, 43.144077>,  <28.561565, 36.961563, 43.464745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906345, 36.394066, 43.144077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.515617, 36.336414, 43.080765>,  <28.281181, 36.301823, 43.042778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.515617, 36.336414, 43.080765>,  <28.906345, 36.394066, 43.144077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515617, 36.336414, 43.080765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174474, -0.107617, -0.978763,
		0.124033, -0.983690, 0.130268,
		-0.976819, -0.144127, -0.158281,
		28.222572, 36.293175, 43.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797956, 35.840626, 42.659653>,  <28.906345, 36.394066, 43.144077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797956, 35.840626, 42.659653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.445969, 36.029591, 42.639732>,  <28.234776, 36.142971, 42.627781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.445969, 36.029591, 42.639732>,  <28.797956, 35.840626, 42.659653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445969, 36.029591, 42.639732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001659, -0.107895, -0.994161,
		-0.475027, -0.874749, 0.095728,
		-0.879970, 0.472412, -0.049802,
		28.181978, 36.171314, 42.624790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338617, 35.355583, 42.301456>,  <28.797956, 35.840626, 42.659653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338617, 35.355583, 42.301456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204634, 35.729622, 42.255146>,  <28.124245, 35.954044, 42.227360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204634, 35.729622, 42.255146>,  <28.338617, 35.355583, 42.301456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204634, 35.729622, 42.255146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054979, -0.103272, -0.993132,
		-0.940628, -0.339023, -0.016818,
		-0.334958, 0.935093, -0.115780,
		28.104147, 36.010151, 42.220413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847784, 35.273346, 41.694939>,  <28.338617, 35.355583, 42.301456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847784, 35.273346, 41.694939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922358, 35.662689, 41.748329>,  <27.967102, 35.896294, 41.780365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922358, 35.662689, 41.748329>,  <27.847784, 35.273346, 41.694939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922358, 35.662689, 41.748329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028759, 0.130395, -0.991045,
		-0.982046, 0.188605, -0.003683,
		0.186436, 0.973358, 0.133479,
		27.978289, 35.954697, 41.788372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307980, 35.686600, 41.418652>,  <27.847784, 35.273346, 41.694939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307980, 35.686600, 41.418652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.625628, 35.929703, 41.417858>,  <27.816216, 36.075565, 41.417381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.625628, 35.929703, 41.417858>,  <27.307980, 35.686600, 41.418652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625628, 35.929703, 41.417858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079983, 0.101271, -0.991639,
		-0.602478, 0.787636, 0.129032,
		0.794118, 0.607761, -0.001983,
		27.863863, 36.112030, 41.417263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142124, 36.161503, 40.946529>,  <27.307980, 35.686600, 41.418652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142124, 36.161503, 40.946529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.531998, 36.240150, 40.989105>,  <27.765923, 36.287338, 41.014648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.531998, 36.240150, 40.989105>,  <27.142124, 36.161503, 40.946529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531998, 36.240150, 40.989105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058488, 0.235239, -0.970176,
		-0.215796, 0.951842, 0.217784,
		0.974685, 0.196622, 0.106435,
		27.824404, 36.299137, 41.021034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220427, 36.910599, 40.683117>,  <27.142124, 36.161503, 40.946529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220427, 36.910599, 40.683117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.564373, 36.706402, 40.680763>,  <27.770741, 36.583885, 40.679352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.564373, 36.706402, 40.680763>,  <27.220427, 36.910599, 40.683117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564373, 36.706402, 40.680763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, 0.170000, -0.980930,
		0.501754, 0.842912, 0.194274,
		0.859864, -0.510489, -0.005881,
		27.822332, 36.553253, 40.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676018, 37.332981, 40.215809>,  <27.220427, 36.910599, 40.683117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676018, 37.332981, 40.215809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.847853, 36.973438, 40.250458>,  <27.950953, 36.757713, 40.271248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.847853, 36.973438, 40.250458>,  <27.676018, 37.332981, 40.215809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847853, 36.973438, 40.250458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290773, 0.046871, -0.955643,
		0.854931, 0.435719, 0.281500,
		0.429586, -0.898861, 0.086624,
		27.976728, 36.703781, 40.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281454, 37.407860, 39.916534>,  <27.676018, 37.332981, 40.215809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281454, 37.407860, 39.916534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.186382, 37.019684, 39.899776>,  <28.129339, 36.786777, 39.889721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.186382, 37.019684, 39.899776>,  <28.281454, 37.407860, 39.916534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186382, 37.019684, 39.899776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223228, -0.012597, -0.974685,
		0.945345, -0.241015, 0.219623,
		-0.237680, -0.970439, -0.041893,
		28.115078, 36.728554, 39.887207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052746, 37.463535, 39.993073>,  <28.281454, 37.407860, 39.916534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052746, 37.463535, 39.993073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277311, 37.794437, 40.001633>,  <29.412050, 37.992981, 40.006771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277311, 37.794437, 40.001633>,  <29.052746, 37.463535, 39.993073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277311, 37.794437, 40.001633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438343, 0.275341, 0.855595,
		0.701905, -0.489724, 0.517204,
		0.561413, 0.827259, 0.021404,
		29.445736, 38.042614, 40.008053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200804, 37.465462, 40.672848>,  <29.052746, 37.463535, 39.993073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200804, 37.465462, 40.672848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.285297, 37.826416, 40.522602>,  <29.335993, 38.042988, 40.432453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.285297, 37.826416, 40.522602>,  <29.200804, 37.465462, 40.672848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285297, 37.826416, 40.522602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366338, 0.429367, 0.825495,
		0.906188, -0.036769, 0.421273,
		0.211233, 0.902382, -0.375617,
		29.348667, 38.097130, 40.409916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648468, 37.858818, 41.237381>,  <29.200804, 37.465462, 40.672848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648468, 37.858818, 41.237381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.438843, 38.094143, 40.991051>,  <29.313068, 38.235336, 40.843250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.438843, 38.094143, 40.991051>,  <29.648468, 37.858818, 41.237381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438843, 38.094143, 40.991051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330129, 0.526225, 0.783647,
		0.785095, 0.613983, -0.081555,
		-0.524062, 0.588314, -0.615830,
		29.281624, 38.270638, 40.806301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816380, 38.486576, 41.356209>,  <29.648468, 37.858818, 41.237381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816380, 38.486576, 41.356209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469761, 38.559448, 41.170345>,  <29.261789, 38.603172, 41.058826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469761, 38.559448, 41.170345>,  <29.816380, 38.486576, 41.356209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469761, 38.559448, 41.170345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317355, 0.517418, 0.794710,
		0.385206, 0.836115, -0.390549,
		-0.866546, 0.182185, -0.464658,
		29.209797, 38.614105, 41.030949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725809, 39.197132, 41.442387>,  <29.816380, 38.486576, 41.356209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725809, 39.197132, 41.442387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365294, 39.041199, 41.366795>,  <29.148985, 38.947639, 41.321438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365294, 39.041199, 41.366795>,  <29.725809, 39.197132, 41.442387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365294, 39.041199, 41.366795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341857, 0.372016, 0.862982,
		-0.266112, 0.842400, -0.468559,
		-0.901287, -0.389830, -0.188982,
		29.094908, 38.924252, 41.310101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298719, 39.737804, 41.633160>,  <29.725809, 39.197132, 41.442387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298719, 39.737804, 41.633160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.071381, 39.409534, 41.609554>,  <28.934977, 39.212574, 41.595390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.071381, 39.409534, 41.609554>,  <29.298719, 39.737804, 41.633160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071381, 39.409534, 41.609554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506622, 0.292539, 0.811021,
		-0.648318, 0.490837, -0.582033,
		-0.568347, -0.820670, -0.059010,
		28.900877, 39.163334, 41.591850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575878, 40.077942, 41.721870>,  <29.298719, 39.737804, 41.633160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575878, 40.077942, 41.721870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557035, 39.691578, 41.823692>,  <28.545731, 39.459759, 41.884785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557035, 39.691578, 41.823692>,  <28.575878, 40.077942, 41.721870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557035, 39.691578, 41.823692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423813, 0.250090, 0.870539,
		-0.904524, -0.066876, -0.421146,
		-0.047106, -0.965910, 0.254556,
		28.542904, 39.401806, 41.900059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869404, 39.944973, 42.023846>,  <28.575878, 40.077942, 41.721870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869404, 39.944973, 42.023846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.096510, 39.640976, 42.150368>,  <28.232775, 39.458576, 42.226280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.096510, 39.640976, 42.150368>,  <27.869404, 39.944973, 42.023846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096510, 39.640976, 42.150368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268877, 0.191951, 0.943854,
		-0.778040, -0.620935, -0.095362,
		0.567767, -0.759996, 0.316301,
		28.266840, 39.412975, 42.245258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485435, 39.587440, 42.586693>,  <27.869404, 39.944973, 42.023846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485435, 39.587440, 42.586693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865379, 39.477402, 42.646137>,  <28.093346, 39.411377, 42.681805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865379, 39.477402, 42.646137>,  <27.485435, 39.587440, 42.586693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865379, 39.477402, 42.646137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129366, 0.086942, 0.987778,
		-0.284655, -0.957478, 0.046995,
		0.949861, -0.275096, 0.148613,
		28.150337, 39.394875, 42.690720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536869, 39.011738, 43.064209>,  <27.485435, 39.587440, 42.586693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536869, 39.011738, 43.064209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.908775, 39.155167, 43.097588>,  <28.131920, 39.241222, 43.117615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.908775, 39.155167, 43.097588>,  <27.536869, 39.011738, 43.064209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908775, 39.155167, 43.097588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038818, -0.129921, 0.990764,
		0.366099, -0.924418, -0.106878,
		0.929766, 0.358569, 0.083448,
		28.187706, 39.262737, 43.122623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947134, 38.552132, 43.515259>,  <27.536869, 39.011738, 43.064209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947134, 38.552132, 43.515259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.154589, 38.893143, 43.541237>,  <28.279060, 39.097748, 43.556824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.154589, 38.893143, 43.541237>,  <27.947134, 38.552132, 43.515259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154589, 38.893143, 43.541237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228831, -0.211598, 0.950191,
		0.823804, -0.477941, -0.304826,
		0.518636, 0.852525, 0.064948,
		28.310179, 39.148899, 43.560722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524384, 38.338963, 43.973446>,  <27.947134, 38.552132, 43.515259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524384, 38.338963, 43.973446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529501, 38.738731, 43.960808>,  <28.532572, 38.978592, 43.953224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529501, 38.738731, 43.960808>,  <28.524384, 38.338963, 43.973446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529501, 38.738731, 43.960808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303435, 0.026223, 0.952491,
		0.952766, -0.021771, -0.302924,
		0.012793, 0.999419, -0.031591,
		28.533339, 39.038559, 43.951332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157328, 38.503380, 44.186619>,  <28.524384, 38.338963, 43.973446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157328, 38.503380, 44.186619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930349, 38.824471, 44.259972>,  <28.794163, 39.017124, 44.303982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930349, 38.824471, 44.259972>,  <29.157328, 38.503380, 44.186619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930349, 38.824471, 44.259972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325700, 0.014269, 0.945366,
		0.756256, 0.596173, -0.269546,
		-0.567448, 0.802729, 0.183382,
		28.760115, 39.065289, 44.314987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558546, 39.156639, 44.488930>,  <29.157328, 38.503380, 44.186619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558546, 39.156639, 44.488930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.175756, 39.212406, 44.590725>,  <28.946083, 39.245865, 44.651802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.175756, 39.212406, 44.590725>,  <29.558546, 39.156639, 44.488930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175756, 39.212406, 44.590725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244953, -0.082024, 0.966059,
		0.155560, 0.986831, 0.044345,
		-0.956974, 0.139417, 0.254487,
		28.888664, 39.254230, 44.667072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945358, 39.659740, 44.333923>,  <29.558546, 39.156639, 44.488930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945358, 39.659740, 44.333923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.279015, 39.860638, 44.425102>,  <30.479208, 39.981178, 44.479809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.279015, 39.860638, 44.425102>,  <29.945358, 39.659740, 44.333923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279015, 39.860638, 44.425102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237654, 0.045672, -0.970276,
		-0.497727, 0.863518, -0.081263,
		0.834139, 0.502245, 0.227951,
		30.529257, 40.011311, 44.493488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025026, 40.164337, 43.805794>,  <29.945358, 39.659740, 44.333923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025026, 40.164337, 43.805794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399488, 40.178181, 43.945747>,  <30.624165, 40.186485, 44.029720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399488, 40.178181, 43.945747>,  <30.025026, 40.164337, 43.805794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399488, 40.178181, 43.945747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346894, 0.071240, -0.935195,
		-0.057289, 0.996859, 0.054687,
		0.936153, 0.034606, 0.349886,
		30.680334, 40.188560, 44.050713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425915, 40.498211, 43.209496>,  <30.025026, 40.164337, 43.805794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425915, 40.498211, 43.209496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706659, 40.329178, 43.438866>,  <30.875105, 40.227757, 43.576488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706659, 40.329178, 43.438866>,  <30.425915, 40.498211, 43.209496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706659, 40.329178, 43.438866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591663, -0.102413, -0.799654,
		0.396645, 0.900520, 0.178146,
		0.701860, -0.422581, 0.573426,
		30.917217, 40.202404, 43.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068136, 40.848049, 43.143852>,  <30.425915, 40.498211, 43.209496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068136, 40.848049, 43.143852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.152418, 40.471127, 43.247902>,  <31.202988, 40.244972, 43.310333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.152418, 40.471127, 43.247902>,  <31.068136, 40.848049, 43.143852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152418, 40.471127, 43.247902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453371, -0.141551, -0.880010,
		0.866060, 0.303353, 0.397389,
		0.210703, -0.942306, 0.260123,
		31.215630, 40.188435, 43.325939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797441, 40.794357, 42.847008>,  <31.068136, 40.848049, 43.143852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797441, 40.794357, 42.847008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661613, 40.429741, 42.939774>,  <31.580116, 40.210972, 42.995434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661613, 40.429741, 42.939774>,  <31.797441, 40.794357, 42.847008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661613, 40.429741, 42.939774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524687, -0.388215, -0.757623,
		0.780638, -0.135583, 0.610100,
		-0.339570, -0.911541, 0.231917,
		31.559742, 40.156281, 43.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340660, 40.318092, 42.879528>,  <31.797441, 40.794357, 42.847008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340660, 40.318092, 42.879528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032753, 40.071739, 42.812420>,  <31.848009, 39.923927, 42.772156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032753, 40.071739, 42.812420>,  <32.340660, 40.318092, 42.879528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032753, 40.071739, 42.812420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484223, -0.392147, -0.782144,
		0.415922, -0.683304, 0.600087,
		-0.769765, -0.615887, -0.167769,
		31.801823, 39.886974, 42.762089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577667, 39.650364, 42.714970>,  <32.340660, 40.318092, 42.879528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577667, 39.650364, 42.714970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204247, 39.600204, 42.580654>,  <31.980194, 39.570107, 42.500065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204247, 39.600204, 42.580654>,  <32.577667, 39.650364, 42.714970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204247, 39.600204, 42.580654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350733, -0.512787, -0.783605,
		-0.073921, -0.849308, 0.522697,
		-0.933554, -0.125402, -0.335786,
		31.924181, 39.562584, 42.479919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489853, 39.010845, 42.523220>,  <32.577667, 39.650364, 42.714970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489853, 39.010845, 42.523220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221416, 39.207329, 42.301105>,  <32.060356, 39.325218, 42.167835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221416, 39.207329, 42.301105>,  <32.489853, 39.010845, 42.523220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221416, 39.207329, 42.301105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329947, -0.472849, -0.817036,
		-0.663906, -0.731523, 0.155252,
		-0.671091, 0.491211, -0.555291,
		32.020088, 39.354691, 42.134518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405094, 38.551304, 41.985847>,  <32.489853, 39.010845, 42.523220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405094, 38.551304, 41.985847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259670, 38.899158, 41.852242>,  <32.172417, 39.107872, 41.772079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259670, 38.899158, 41.852242>,  <32.405094, 38.551304, 41.985847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259670, 38.899158, 41.852242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196298, -0.278985, -0.940018,
		-0.910656, -0.407316, -0.069280,
		-0.363556, 0.869633, -0.334015,
		32.150604, 39.160049, 41.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072811, 38.409698, 41.334652>,  <32.405094, 38.551304, 41.985847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072811, 38.409698, 41.334652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177242, 38.795666, 41.345722>,  <32.239899, 39.027248, 41.352364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177242, 38.795666, 41.345722>,  <32.072811, 38.409698, 41.334652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177242, 38.795666, 41.345722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198021, -0.025472, -0.979867,
		-0.944790, 0.261300, -0.197724,
		0.261075, 0.964922, 0.027677,
		32.255566, 39.085144, 41.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983086, 38.626629, 40.687691>,  <32.072811, 38.409698, 41.334652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983086, 38.626629, 40.687691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214386, 38.927399, 40.814327>,  <32.353165, 39.107861, 40.890308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214386, 38.927399, 40.814327>,  <31.983086, 38.626629, 40.687691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214386, 38.927399, 40.814327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411180, 0.066564, -0.909121,
		-0.704667, 0.655876, -0.270687,
		0.578252, 0.751928, 0.316588,
		32.387863, 39.152977, 40.909306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922508, 39.152794, 40.161728>,  <31.983086, 38.626629, 40.687691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922508, 39.152794, 40.161728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244236, 39.225933, 40.387875>,  <32.437271, 39.269817, 40.523563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244236, 39.225933, 40.387875>,  <31.922508, 39.152794, 40.161728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244236, 39.225933, 40.387875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526320, 0.222384, -0.820690,
		-0.275788, 0.957660, 0.082633,
		0.804319, 0.182845, 0.565366,
		32.485531, 39.280788, 40.557484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134178, 39.659481, 39.824402>,  <31.922508, 39.152794, 40.161728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134178, 39.659481, 39.824402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463737, 39.575493, 40.034966>,  <32.661472, 39.525101, 40.161304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463737, 39.575493, 40.034966>,  <32.134178, 39.659481, 39.824402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463737, 39.575493, 40.034966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565462, 0.242267, -0.788390,
		0.038004, 0.947217, 0.318332,
		0.823898, -0.209966, 0.526408,
		32.710907, 39.512505, 40.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693748, 40.171375, 39.610554>,  <32.134178, 39.659481, 39.824402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693748, 40.171375, 39.610554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877613, 39.841042, 39.741226>,  <32.987930, 39.642841, 39.819630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877613, 39.841042, 39.741226>,  <32.693748, 40.171375, 39.610554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877613, 39.841042, 39.741226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685937, 0.096491, -0.721235,
		0.564096, 0.555602, 0.610820,
		0.459658, -0.825831, 0.326678,
		33.015511, 39.593292, 39.839230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.481531, 34.346279, 25.637568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.788210, 34.102997, 25.719801>,  <24.972218, 33.957027, 25.769140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.788210, 34.102997, 25.719801>,  <24.481531, 34.346279, 25.637568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788210, 34.102997, 25.719801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341242, -0.114817, 0.932937,
		-0.543812, -0.785432, -0.295575,
		0.766696, -0.608205, 0.205584,
		25.018219, 33.920536, 25.781477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285847, 34.160213, 26.308252>,  <24.481531, 34.346279, 25.637568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285847, 34.160213, 26.308252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.632305, 33.961388, 26.287399>,  <24.840179, 33.842091, 26.274887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.632305, 33.961388, 26.287399>,  <24.285847, 34.160213, 26.308252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632305, 33.961388, 26.287399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053838, -0.196495, 0.979026,
		-0.496884, -0.845172, -0.196954,
		0.866145, -0.497066, -0.052133,
		24.892149, 33.812267, 26.271759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305458, 33.677906, 26.873949>,  <24.285847, 34.160213, 26.308252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305458, 33.677906, 26.873949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.698067, 33.720493, 26.810354>,  <24.933632, 33.746044, 26.772198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.698067, 33.720493, 26.810354>,  <24.305458, 33.677906, 26.873949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698067, 33.720493, 26.810354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161504, -0.015380, 0.986752,
		0.102614, -0.994197, -0.032291,
		0.981523, 0.106470, -0.158989,
		24.992523, 33.752434, 26.762657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606632, 33.156879, 27.301613>,  <24.305458, 33.677906, 26.873949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606632, 33.156879, 27.301613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.885561, 33.435944, 27.235876>,  <25.052919, 33.603382, 27.196434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.885561, 33.435944, 27.235876>,  <24.606632, 33.156879, 27.301613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885561, 33.435944, 27.235876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393366, -0.180833, 0.901422,
		0.599169, -0.693230, -0.400536,
		0.697323, 0.697662, -0.164343,
		25.094757, 33.645241, 27.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166468, 32.863972, 27.603392>,  <24.606632, 33.156879, 27.301613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166468, 32.863972, 27.603392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.212296, 33.260326, 27.575033>,  <25.239792, 33.498138, 27.558018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.212296, 33.260326, 27.575033>,  <25.166468, 32.863972, 27.603392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212296, 33.260326, 27.575033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471660, 0.008552, 0.881739,
		0.874306, -0.134460, -0.466379,
		0.114570, 0.990882, -0.070897,
		25.246666, 33.557590, 27.553764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730911, 32.997505, 28.019032>,  <25.166468, 32.863972, 27.603392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730911, 32.997505, 28.019032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.542379, 33.349735, 27.999266>,  <25.429260, 33.561073, 27.987406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.542379, 33.349735, 27.999266>,  <25.730911, 32.997505, 28.019032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542379, 33.349735, 27.999266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384487, 0.255576, 0.887046,
		0.793736, 0.399095, -0.459029,
		-0.471332, 0.880571, -0.049413,
		25.400980, 33.613907, 27.984442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128717, 33.457653, 28.517824>,  <25.730911, 32.997505, 28.019032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128717, 33.457653, 28.517824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806881, 33.683445, 28.444073>,  <25.613779, 33.818920, 28.399822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806881, 33.683445, 28.444073>,  <26.128717, 33.457653, 28.517824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806881, 33.683445, 28.444073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063317, 0.227174, 0.971793,
		0.590441, 0.793573, -0.147042,
		-0.804594, 0.564476, -0.184380,
		25.565502, 33.852787, 28.388760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278505, 34.165741, 28.833982>,  <26.128717, 33.457653, 28.517824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278505, 34.165741, 28.833982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885138, 34.114708, 28.782436>,  <25.649117, 34.084087, 28.751509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885138, 34.114708, 28.782436>,  <26.278505, 34.165741, 28.833982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885138, 34.114708, 28.782436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170589, 0.409855, 0.896057,
		-0.061510, 0.903184, -0.424825,
		-0.983420, -0.127587, -0.128864,
		25.590111, 34.076431, 28.743778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908422, 34.794338, 28.996927>,  <26.278505, 34.165741, 28.833982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908422, 34.794338, 28.996927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642504, 34.500309, 29.050175>,  <25.482952, 34.323891, 29.082123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642504, 34.500309, 29.050175>,  <25.908422, 34.794338, 28.996927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642504, 34.500309, 29.050175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263598, 0.397562, 0.878897,
		-0.698973, 0.549197, -0.458060,
		-0.664795, -0.735069, 0.133118,
		25.443066, 34.279789, 29.090111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356245, 35.158020, 29.210926>,  <25.908422, 34.794338, 28.996927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356245, 35.158020, 29.210926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244452, 34.786137, 29.306870>,  <25.177376, 34.563007, 29.364435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244452, 34.786137, 29.306870>,  <25.356245, 35.158020, 29.210926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244452, 34.786137, 29.306870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125152, 0.282960, 0.950931,
		-0.951958, 0.235753, -0.195438,
		-0.279486, -0.929707, 0.239861,
		25.160606, 34.507225, 29.378828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768332, 35.268238, 29.567574>,  <25.356245, 35.158020, 29.210926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768332, 35.268238, 29.567574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888935, 34.908241, 29.693497>,  <24.961298, 34.692242, 29.769051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888935, 34.908241, 29.693497>,  <24.768332, 35.268238, 29.567574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888935, 34.908241, 29.693497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122235, 0.363934, 0.923369,
		-0.945595, -0.239925, 0.219740,
		0.301511, -0.899993, 0.314807,
		24.979389, 34.638245, 29.787939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312220, 35.008724, 30.127645>,  <24.768332, 35.268238, 29.567574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312220, 35.008724, 30.127645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.659834, 34.816978, 30.176611>,  <24.868402, 34.701931, 30.205990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.659834, 34.816978, 30.176611>,  <24.312220, 35.008724, 30.127645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659834, 34.816978, 30.176611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056038, 0.341208, 0.938316,
		-0.491567, -0.808570, 0.323384,
		0.869035, -0.479367, 0.122416,
		24.920544, 34.673168, 30.213335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206999, 34.614624, 30.699171>,  <24.312220, 35.008724, 30.127645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206999, 34.614624, 30.699171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.603987, 34.639599, 30.657019>,  <24.842180, 34.654583, 30.631727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.603987, 34.639599, 30.657019>,  <24.206999, 34.614624, 30.699171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603987, 34.639599, 30.657019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083088, 0.288987, 0.953721,
		0.090002, -0.955295, 0.281623,
		0.992470, 0.062438, -0.105383,
		24.901728, 34.658329, 30.625404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393921, 34.324203, 31.341240>,  <24.206999, 34.614624, 30.699171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393921, 34.324203, 31.341240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.706505, 34.519901, 31.186342>,  <24.894056, 34.637321, 31.093403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.706505, 34.519901, 31.186342>,  <24.393921, 34.324203, 31.341240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706505, 34.519901, 31.186342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254503, 0.316724, 0.913736,
		0.569690, -0.812604, 0.122993,
		0.781461, 0.489244, -0.387245,
		24.940943, 34.666676, 31.070169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963531, 34.133221, 31.822243>,  <24.393921, 34.324203, 31.341240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963531, 34.133221, 31.822243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.046026, 34.478043, 31.637058>,  <25.095524, 34.684937, 31.525948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.046026, 34.478043, 31.637058>,  <24.963531, 34.133221, 31.822243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046026, 34.478043, 31.637058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284034, 0.400018, 0.871384,
		0.936371, -0.311209, -0.162354,
		0.206238, 0.862052, -0.462960,
		25.107897, 34.736660, 31.498171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559114, 34.379627, 32.159714>,  <24.963531, 34.133221, 31.822243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559114, 34.379627, 32.159714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434429, 34.711628, 31.974707>,  <25.359617, 34.910828, 31.863701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434429, 34.711628, 31.974707>,  <25.559114, 34.379627, 32.159714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434429, 34.711628, 31.974707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358386, 0.553523, 0.751779,
		0.879996, 0.068579, -0.470003,
		-0.311714, 0.830006, -0.462520,
		25.340916, 34.960629, 31.835951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238152, 34.788849, 32.033649>,  <25.559114, 34.379627, 32.159714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238152, 34.788849, 32.033649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893444, 34.991760, 32.031689>,  <25.686619, 35.113506, 32.030514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893444, 34.991760, 32.031689>,  <26.238152, 34.788849, 32.033649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893444, 34.991760, 32.031689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317885, 0.547507, 0.774071,
		0.395348, 0.665514, -0.633080,
		-0.861771, 0.507274, -0.004899,
		25.634912, 35.143944, 32.030220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326254, 35.529545, 31.913303>,  <26.238152, 34.788849, 32.033649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326254, 35.529545, 31.913303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992292, 35.455589, 32.120667>,  <25.791916, 35.411217, 32.245087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992292, 35.455589, 32.120667>,  <26.326254, 35.529545, 31.913303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992292, 35.455589, 32.120667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360265, 0.528497, 0.768700,
		-0.416105, 0.828556, -0.374635,
		-0.834905, -0.184892, 0.518410,
		25.741821, 35.400120, 32.276188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749554, 36.109730, 32.051834>,  <26.326254, 35.529545, 31.913303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749554, 36.109730, 32.051834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099052, 36.296482, 32.106377>,  <27.308752, 36.408535, 32.139103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099052, 36.296482, 32.106377>,  <26.749554, 36.109730, 32.051834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099052, 36.296482, 32.106377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078325, 0.411749, -0.907925,
		-0.480037, 0.782614, 0.396332,
		0.873745, 0.466880, 0.136356,
		27.361176, 36.436546, 32.147285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585285, 36.768890, 31.860537>,  <26.749554, 36.109730, 32.051834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585285, 36.768890, 31.860537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980648, 36.717121, 31.828772>,  <27.217865, 36.686062, 31.809713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980648, 36.717121, 31.828772>,  <26.585285, 36.768890, 31.860537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980648, 36.717121, 31.828772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012080, 0.454306, -0.890764,
		0.151359, 0.881395, 0.447475,
		0.988405, -0.129419, -0.079410,
		27.277170, 36.678295, 31.804949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814644, 37.423126, 31.489893>,  <26.585285, 36.768890, 31.860537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814644, 37.423126, 31.489893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088160, 37.134277, 31.447989>,  <27.252270, 36.960968, 31.422846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088160, 37.134277, 31.447989>,  <26.814644, 37.423126, 31.489893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088160, 37.134277, 31.447989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098133, 0.233275, -0.967446,
		0.723051, 0.651249, 0.230375,
		0.683789, -0.722120, -0.104761,
		27.293297, 36.917641, 31.416561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278713, 37.730080, 31.024124>,  <26.814644, 37.423126, 31.489893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278713, 37.730080, 31.024124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345076, 37.335625, 31.023981>,  <27.384893, 37.098949, 31.023895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345076, 37.335625, 31.023981>,  <27.278713, 37.730080, 31.024124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345076, 37.335625, 31.023981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121859, 0.020859, -0.992328,
		0.978584, 0.164590, 0.123631,
		0.165906, -0.986142, -0.000356,
		27.394848, 37.039783, 31.023874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849415, 37.622532, 30.616919>,  <27.278713, 37.730080, 31.024124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849415, 37.622532, 30.616919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655355, 37.272758, 30.617664>,  <27.538919, 37.062897, 30.618111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655355, 37.272758, 30.617664>,  <27.849415, 37.622532, 30.616919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655355, 37.272758, 30.617664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200660, -0.113404, -0.973075,
		0.851096, -0.471713, 0.230480,
		-0.485150, -0.874429, 0.001863,
		27.509809, 37.010429, 30.618223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233442, 37.235107, 30.132551>,  <27.849415, 37.622532, 30.616919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233442, 37.235107, 30.132551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899153, 37.020458, 30.179203>,  <27.698580, 36.891670, 30.207195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899153, 37.020458, 30.179203>,  <28.233442, 37.235107, 30.132551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899153, 37.020458, 30.179203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073174, -0.101673, -0.992123,
		0.544256, -0.837673, 0.045703,
		-0.835722, -0.536625, 0.116632,
		27.648436, 36.859470, 30.214193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309790, 36.659698, 29.865986>,  <28.233442, 37.235107, 30.132551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309790, 36.659698, 29.865986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914019, 36.712017, 29.840925>,  <27.676556, 36.743408, 29.825888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914019, 36.712017, 29.840925>,  <28.309790, 36.659698, 29.865986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914019, 36.712017, 29.840925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061962, -0.009347, -0.998035,
		-0.131129, -0.991365, 0.001143,
		-0.989427, 0.130801, -0.062653,
		27.617191, 36.751255, 29.822130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102772, 36.147152, 29.319523>,  <28.309790, 36.659698, 29.865986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102772, 36.147152, 29.319523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808235, 36.415592, 29.353977>,  <27.631514, 36.576656, 29.374649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808235, 36.415592, 29.353977>,  <28.102772, 36.147152, 29.319523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808235, 36.415592, 29.353977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065693, 0.055793, -0.996279,
		-0.673412, -0.739262, 0.003003,
		-0.736344, 0.671103, 0.086136,
		27.587332, 36.616924, 29.379818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439955, 35.918491, 29.005264>,  <28.102772, 36.147152, 29.319523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439955, 35.918491, 29.005264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389029, 36.314220, 29.033657>,  <27.358473, 36.551659, 29.050694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389029, 36.314220, 29.033657>,  <27.439955, 35.918491, 29.005264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389029, 36.314220, 29.033657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416323, 0.011653, -0.909142,
		-0.900259, -0.145301, 0.410392,
		-0.127317, 0.989319, 0.070983,
		27.350834, 36.611015, 29.054953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866747, 35.995117, 28.601585>,  <27.439955, 35.918491, 29.005264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866747, 35.995117, 28.601585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014038, 36.366413, 28.622692>,  <27.102413, 36.589191, 28.635357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014038, 36.366413, 28.622692>,  <26.866747, 35.995117, 28.601585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014038, 36.366413, 28.622692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201530, 0.135095, -0.970121,
		-0.907631, 0.346591, 0.236813,
		0.368227, 0.928237, 0.052768,
		27.124506, 36.644886, 28.638523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361685, 36.459808, 28.279499>,  <26.866747, 35.995117, 28.601585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361685, 36.459808, 28.279499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705727, 36.662884, 28.259607>,  <26.912151, 36.784729, 28.247671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705727, 36.662884, 28.259607>,  <26.361685, 36.459808, 28.279499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705727, 36.662884, 28.259607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270584, 0.371407, -0.888167,
		-0.432445, 0.777371, 0.456821,
		0.860102, 0.507692, -0.049731,
		26.963757, 36.815193, 28.244688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202694, 37.061390, 27.990583>,  <26.361685, 36.459808, 28.279499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202694, 37.061390, 27.990583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597498, 37.048943, 27.927538>,  <26.834381, 37.041473, 27.889711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597498, 37.048943, 27.927538>,  <26.202694, 37.061390, 27.990583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597498, 37.048943, 27.927538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145913, 0.236871, -0.960522,
		0.067227, 0.971043, 0.229253,
		0.987011, -0.031122, -0.157612,
		26.893600, 37.039604, 27.880255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237711, 37.503784, 27.422201>,  <26.202694, 37.061390, 27.990583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237711, 37.503784, 27.422201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.610922, 37.361286, 27.402018>,  <26.834848, 37.275787, 27.389908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.610922, 37.361286, 27.402018>,  <26.237711, 37.503784, 27.422201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610922, 37.361286, 27.402018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025479, 0.205309, -0.978366,
		0.358900, 0.911557, 0.200636,
		0.933028, -0.356247, -0.050460,
		26.890831, 37.254414, 27.386879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630121, 37.965340, 27.001152>,  <26.237711, 37.503784, 27.422201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630121, 37.965340, 27.001152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847197, 37.629528, 26.990694>,  <26.977442, 37.428043, 26.984419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847197, 37.629528, 26.990694>,  <26.630121, 37.965340, 27.001152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847197, 37.629528, 26.990694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048467, 0.062375, -0.996875,
		0.838534, 0.539727, 0.074539,
		0.542690, -0.839526, -0.026145,
		27.010004, 37.377670, 26.982851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206057, 38.111767, 26.500229>,  <26.630121, 37.965340, 27.001152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206057, 38.111767, 26.500229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163792, 37.714600, 26.521925>,  <27.138433, 37.476299, 26.534943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163792, 37.714600, 26.521925>,  <27.206057, 38.111767, 26.500229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163792, 37.714600, 26.521925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038523, -0.058591, -0.997539,
		0.993656, -0.103313, 0.044441,
		-0.105662, -0.992922, 0.054239,
		27.132093, 37.416721, 26.538197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663061, 37.815655, 25.917309>,  <27.206057, 38.111767, 26.500229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663061, 37.815655, 25.917309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398420, 37.532722, 26.016882>,  <27.239635, 37.362965, 26.076626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398420, 37.532722, 26.016882>,  <27.663061, 37.815655, 25.917309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398420, 37.532722, 26.016882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048865, -0.290603, -0.955595,
		0.748260, -0.644389, 0.157700,
		-0.661604, -0.707328, 0.248934,
		27.199940, 37.320522, 26.091562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854469, 37.256283, 25.559927>,  <27.663061, 37.815655, 25.917309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854469, 37.256283, 25.559927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483891, 37.143936, 25.660177>,  <27.261543, 37.076527, 25.720327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483891, 37.143936, 25.660177>,  <27.854469, 37.256283, 25.559927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483891, 37.143936, 25.660177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171698, -0.277206, -0.945345,
		0.334989, -0.918842, 0.208593,
		-0.926446, -0.280865, 0.250624,
		27.205957, 37.059677, 25.735365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666819, 36.617504, 25.169155>,  <27.854469, 37.256283, 25.559927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666819, 36.617504, 25.169155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323498, 36.800438, 25.262247>,  <27.117506, 36.910198, 25.318102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323498, 36.800438, 25.262247>,  <27.666819, 36.617504, 25.169155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323498, 36.800438, 25.262247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336273, -0.158700, -0.928297,
		-0.387611, -0.875018, 0.290002,
		-0.858300, 0.457338, 0.232731,
		27.066008, 36.937637, 25.332066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958008, 36.141094, 25.150064>,  <27.666819, 36.617504, 25.169155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958008, 36.141094, 25.150064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818029, 36.512367, 25.099442>,  <26.734043, 36.735130, 25.069069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818029, 36.512367, 25.099442>,  <26.958008, 36.141094, 25.150064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818029, 36.512367, 25.099442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497631, -0.298652, -0.814352,
		-0.793664, -0.222000, 0.566404,
		-0.349944, 0.928183, -0.126555,
		26.713047, 36.790821, 25.061476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228910, 36.059750, 24.996000>,  <26.958008, 36.141094, 25.150064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228910, 36.059750, 24.996000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339119, 36.421162, 24.864719>,  <26.405245, 36.638008, 24.785952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339119, 36.421162, 24.864719>,  <26.228910, 36.059750, 24.996000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339119, 36.421162, 24.864719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439797, -0.185110, -0.878814,
		-0.854791, 0.386473, 0.346369,
		0.275521, 0.903533, -0.328200,
		26.421776, 36.692223, 24.766260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588476, 36.491581, 24.809782>,  <26.228910, 36.059750, 24.996000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588476, 36.491581, 24.809782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883709, 36.670582, 24.607800>,  <26.060848, 36.777981, 24.486610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883709, 36.670582, 24.607800>,  <25.588476, 36.491581, 24.809782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883709, 36.670582, 24.607800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563132, -0.003660, -0.826359,
		-0.371644, 0.894276, 0.249300,
		0.738081, 0.447500, -0.504955,
		26.105133, 36.804832, 24.456312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213980, 36.850620, 24.399370>,  <25.588476, 36.491581, 24.809782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213980, 36.850620, 24.399370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.582291, 36.879616, 24.246052>,  <25.803278, 36.897015, 24.154060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.582291, 36.879616, 24.246052>,  <25.213980, 36.850620, 24.399370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582291, 36.879616, 24.246052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387754, 0.062716, -0.919627,
		-0.042625, 0.995396, 0.085855,
		0.920777, 0.072489, -0.383295,
		25.858524, 36.901363, 24.131063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198734, 37.418125, 23.867813>,  <25.213980, 36.850620, 24.399370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198734, 37.418125, 23.867813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526083, 37.217613, 23.755394>,  <25.722492, 37.097305, 23.687943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526083, 37.217613, 23.755394>,  <25.198734, 37.418125, 23.867813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526083, 37.217613, 23.755394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411481, -0.169718, -0.895477,
		0.401182, 0.848480, -0.345158,
		0.818374, -0.501276, -0.281046,
		25.771595, 37.067230, 23.671080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365831, 37.743031, 23.227848>,  <25.198734, 37.418125, 23.867813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365831, 37.743031, 23.227848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.509710, 37.370064, 23.241785>,  <25.596037, 37.146282, 23.250147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.509710, 37.370064, 23.241785>,  <25.365831, 37.743031, 23.227848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509710, 37.370064, 23.241785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462143, -0.210471, -0.861467,
		0.810582, 0.293763, -0.506616,
		0.359695, -0.932419, 0.034843,
		25.617619, 37.090340, 23.252237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.285267, 38.942364, 45.089108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042000, 38.634403, 45.166439>,  <35.896038, 38.449627, 45.212837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042000, 38.634403, 45.166439>,  <36.285267, 38.942364, 45.089108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042000, 38.634403, 45.166439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154429, 0.353642, 0.922545,
		-0.778639, 0.531210, -0.333970,
		-0.608171, -0.769904, 0.193325,
		35.859547, 38.403431, 45.224438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723663, 39.213966, 45.521500>,  <36.285267, 38.942364, 45.089108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723663, 39.213966, 45.521500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669849, 38.820324, 45.567848>,  <35.637562, 38.584137, 45.595657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669849, 38.820324, 45.567848>,  <35.723663, 39.213966, 45.521500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669849, 38.820324, 45.567848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304021, 0.152293, 0.940414,
		-0.943118, 0.091292, -0.319679,
		-0.134537, -0.984110, 0.115876,
		35.629490, 38.525089, 45.602612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972515, 39.072033, 45.690777>,  <35.723663, 39.213966, 45.521500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972515, 39.072033, 45.690777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173447, 38.750519, 45.818272>,  <35.294006, 38.557610, 45.894768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173447, 38.750519, 45.818272>,  <34.972515, 39.072033, 45.690777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173447, 38.750519, 45.818272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524906, 0.009463, 0.851108,
		-0.687127, -0.594840, -0.417160,
		0.502325, -0.803789, 0.318737,
		35.324142, 38.509380, 45.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489864, 38.657852, 46.113754>,  <34.972515, 39.072033, 45.690777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489864, 38.657852, 46.113754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844387, 38.505810, 46.219566>,  <35.057102, 38.414585, 46.283054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844387, 38.505810, 46.219566>,  <34.489864, 38.657852, 46.113754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844387, 38.505810, 46.219566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307632, -0.056291, 0.949839,
		-0.346151, -0.923228, -0.166825,
		0.886308, -0.380108, 0.264529,
		35.110279, 38.391777, 46.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325809, 38.148525, 46.630455>,  <34.489864, 38.657852, 46.113754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325809, 38.148525, 46.630455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702335, 38.260277, 46.706215>,  <34.928249, 38.327328, 46.751671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702335, 38.260277, 46.706215>,  <34.325809, 38.148525, 46.630455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702335, 38.260277, 46.706215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245935, 0.183399, 0.951778,
		0.231174, -0.942503, 0.241346,
		0.941315, 0.279381, 0.189398,
		34.984730, 38.344090, 46.763035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605057, 37.784454, 47.313244>,  <34.325809, 38.148525, 46.630455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605057, 37.784454, 47.313244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854851, 38.094490, 47.274780>,  <35.004726, 38.280514, 47.251701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854851, 38.094490, 47.274780>,  <34.605057, 37.784454, 47.313244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854851, 38.094490, 47.274780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179317, 0.262108, 0.948232,
		0.760172, -0.574916, 0.302671,
		0.624487, 0.775094, -0.096155,
		35.042198, 38.327019, 47.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059841, 37.835701, 47.959690>,  <34.605057, 37.784454, 47.313244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059841, 37.835701, 47.959690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084541, 38.200600, 47.797707>,  <35.099361, 38.419540, 47.700516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084541, 38.200600, 47.797707>,  <35.059841, 37.835701, 47.959690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084541, 38.200600, 47.797707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223965, 0.408047, 0.885063,
		0.972639, 0.036044, 0.229508,
		0.061749, 0.912249, -0.404955,
		35.103065, 38.474274, 47.676220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511551, 38.294880, 48.457573>,  <35.059841, 37.835701, 47.959690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511551, 38.294880, 48.457573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289032, 38.532547, 48.225193>,  <35.155521, 38.675148, 48.085766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289032, 38.532547, 48.225193>,  <35.511551, 38.294880, 48.457573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289032, 38.532547, 48.225193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351399, 0.465327, 0.812397,
		0.753031, 0.656078, -0.050070,
		-0.556294, 0.594165, -0.580951,
		35.122143, 38.710796, 48.050907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580406, 38.925152, 48.747875>,  <35.511551, 38.294880, 48.457573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580406, 38.925152, 48.747875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265751, 39.014557, 48.517658>,  <35.076958, 39.068199, 48.379528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265751, 39.014557, 48.517658>,  <35.580406, 38.925152, 48.747875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265751, 39.014557, 48.517658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446653, 0.437579, 0.780401,
		0.426272, 0.870958, -0.244384,
		-0.786634, 0.223508, -0.575544,
		35.029762, 39.081608, 48.344994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349369, 39.573845, 49.055336>,  <35.580406, 38.925152, 48.747875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349369, 39.573845, 49.055336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031162, 39.423622, 48.865131>,  <34.840237, 39.333488, 48.751011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031162, 39.423622, 48.865131>,  <35.349369, 39.573845, 49.055336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031162, 39.423622, 48.865131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568983, 0.193162, 0.799341,
		-0.208345, 0.906448, -0.367348,
		-0.795519, -0.375553, -0.475510,
		34.792507, 39.310955, 48.722477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848587, 40.081806, 49.142696>,  <35.349369, 39.573845, 49.055336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848587, 40.081806, 49.142696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654388, 39.741341, 49.062885>,  <34.537868, 39.537060, 49.014999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654388, 39.741341, 49.062885>,  <34.848587, 40.081806, 49.142696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654388, 39.741341, 49.062885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624795, 0.178176, 0.760187,
		-0.611497, 0.493726, -0.618309,
		-0.485492, -0.851168, -0.199523,
		34.508739, 39.485989, 49.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087955, 40.210213, 49.170689>,  <34.848587, 40.081806, 49.142696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087955, 40.210213, 49.170689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129772, 39.812790, 49.188179>,  <34.154861, 39.574337, 49.198673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129772, 39.812790, 49.188179>,  <34.087955, 40.210213, 49.170689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129772, 39.812790, 49.188179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409110, -0.002888, 0.912480,
		-0.906476, -0.113283, -0.406777,
		0.104544, -0.993558, 0.043727,
		34.161137, 39.514721, 49.201298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511494, 40.510563, 49.454960>,  <34.087955, 40.210213, 49.170689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511494, 40.510563, 49.454960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803902, 40.770542, 49.538074>,  <33.979347, 40.926529, 49.587944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803902, 40.770542, 49.538074>,  <33.511494, 40.510563, 49.454960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803902, 40.770542, 49.538074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680299, 0.670576, 0.295840,
		0.052944, -0.357623, 0.932364,
		0.731020, 0.649949, 0.207787,
		34.023209, 40.965527, 49.600410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306656, 40.880280, 50.048023>,  <33.511494, 40.510563, 49.454960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306656, 40.880280, 50.048023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565708, 41.121597, 49.861855>,  <33.721138, 41.266388, 49.750153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565708, 41.121597, 49.861855>,  <33.306656, 40.880280, 50.048023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565708, 41.121597, 49.861855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494332, 0.797499, 0.345877,
		0.579835, 0.006070, 0.814712,
		0.647632, 0.603290, -0.465418,
		33.759998, 41.302586, 49.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585133, 40.732460, 49.646294>,  <33.306656, 40.880280, 50.048023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585133, 40.732460, 49.646294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222752, 40.868725, 49.746857>,  <32.005325, 40.950485, 49.807194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222752, 40.868725, 49.746857>,  <32.585133, 40.732460, 49.646294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222752, 40.868725, 49.746857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305036, -0.113392, -0.945566,
		-0.293610, -0.933323, 0.206641,
		-0.905950, 0.340661, 0.251404,
		31.950966, 40.970924, 49.822277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004398, 40.205090, 49.380402>,  <32.585133, 40.732460, 49.646294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004398, 40.205090, 49.380402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818518, 40.557072, 49.419849>,  <31.706989, 40.768261, 49.443520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818518, 40.557072, 49.419849>,  <32.004398, 40.205090, 49.380402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818518, 40.557072, 49.419849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355078, -0.083161, -0.931130,
		-0.811155, -0.467715, 0.351099,
		-0.464701, 0.879959, 0.098619,
		31.679108, 40.821060, 49.449436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385963, 40.029129, 49.244999>,  <32.004398, 40.205090, 49.380402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385963, 40.029129, 49.244999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389612, 40.423962, 49.181015>,  <31.391802, 40.660862, 49.142624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389612, 40.423962, 49.181015>,  <31.385963, 40.029129, 49.244999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389612, 40.423962, 49.181015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554200, -0.128163, -0.822458,
		-0.832333, 0.096152, 0.545872,
		0.009120, 0.987081, -0.159962,
		31.392347, 40.720085, 49.133026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732553, 40.207047, 49.122025>,  <31.385963, 40.029129, 49.244999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732553, 40.207047, 49.122025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898596, 40.537617, 48.969860>,  <30.998222, 40.735958, 48.878563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898596, 40.537617, 48.969860>,  <30.732553, 40.207047, 49.122025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898596, 40.537617, 48.969860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401854, -0.208574, -0.891633,
		-0.816211, 0.522991, 0.245521,
		0.415107, 0.826424, -0.380407,
		31.023129, 40.785545, 48.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233522, 40.487526, 48.632034>,  <30.732553, 40.207047, 49.122025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233522, 40.487526, 48.632034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577051, 40.668804, 48.536510>,  <30.783169, 40.777573, 48.479195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577051, 40.668804, 48.536510>,  <30.233522, 40.487526, 48.632034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577051, 40.668804, 48.536510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211728, -0.110471, -0.971065,
		-0.466468, 0.884537, 0.001080,
		0.858824, 0.453199, -0.238812,
		30.834698, 40.804764, 48.464867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129332, 41.098804, 48.216042>,  <30.233522, 40.487526, 48.632034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129332, 41.098804, 48.216042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488037, 40.954910, 48.112968>,  <30.703260, 40.868572, 48.051125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488037, 40.954910, 48.112968>,  <30.129332, 41.098804, 48.216042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488037, 40.954910, 48.112968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285183, -0.024572, -0.958158,
		0.338355, 0.932729, -0.124626,
		0.896765, -0.359739, -0.257684,
		30.757067, 40.846989, 48.035664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427069, 41.535534, 47.685997>,  <30.129332, 41.098804, 48.216042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427069, 41.535534, 47.685997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615059, 41.184288, 47.650143>,  <30.727854, 40.973541, 47.628628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615059, 41.184288, 47.650143>,  <30.427069, 41.535534, 47.685997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615059, 41.184288, 47.650143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218133, -0.017140, -0.975769,
		0.855301, 0.478142, -0.199602,
		0.469977, -0.878115, -0.089639,
		30.756052, 40.920853, 47.623253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698700, 41.669331, 47.045990>,  <30.427069, 41.535534, 47.685997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698700, 41.669331, 47.045990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767467, 41.280586, 47.110394>,  <30.808727, 41.047340, 47.149036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767467, 41.280586, 47.110394>,  <30.698700, 41.669331, 47.045990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767467, 41.280586, 47.110394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152074, -0.187669, -0.970388,
		0.973302, 0.142342, -0.180058,
		0.171918, -0.971864, 0.161012,
		30.819042, 40.989029, 47.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962379, 41.499695, 46.403660>,  <30.698700, 41.669331, 47.045990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962379, 41.499695, 46.403660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839479, 41.165173, 46.585297>,  <30.765739, 40.964458, 46.694279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839479, 41.165173, 46.585297>,  <30.962379, 41.499695, 46.403660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839479, 41.165173, 46.585297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037704, -0.487493, -0.872313,
		0.950882, -0.250897, 0.181314,
		-0.307250, -0.836302, 0.454088,
		30.747305, 40.914284, 46.721523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495434, 41.005497, 46.272770>,  <30.962379, 41.499695, 46.403660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495434, 41.005497, 46.272770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159599, 40.801529, 46.347687>,  <30.958099, 40.679150, 46.392635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159599, 40.801529, 46.347687>,  <31.495434, 41.005497, 46.272770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159599, 40.801529, 46.347687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027097, -0.383656, -0.923078,
		0.542553, -0.769927, 0.335929,
		-0.839584, -0.509922, 0.187291,
		30.907724, 40.648552, 46.403873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614882, 40.315830, 46.039124>,  <31.495434, 41.005497, 46.272770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614882, 40.315830, 46.039124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219357, 40.373306, 46.055126>,  <30.982040, 40.407791, 46.064728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219357, 40.373306, 46.055126>,  <31.614882, 40.315830, 46.039124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219357, 40.373306, 46.055126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087532, -0.341860, -0.935665,
		-0.120774, -0.928700, 0.350614,
		-0.988813, 0.143694, 0.040004,
		30.922712, 40.416416, 46.067127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320976, 39.724785, 45.849083>,  <31.614882, 40.315830, 46.039124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320976, 39.724785, 45.849083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026432, 39.989883, 45.794624>,  <30.849705, 40.148945, 45.761948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026432, 39.989883, 45.794624>,  <31.320976, 39.724785, 45.849083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026432, 39.989883, 45.794624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138111, -0.344226, -0.928673,
		-0.662343, -0.665035, 0.345007,
		-0.736361, 0.662749, -0.136147,
		30.805523, 40.188709, 45.753780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849077, 39.362053, 45.547749>,  <31.320976, 39.724785, 45.849083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849077, 39.362053, 45.547749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.746977, 39.736156, 45.449657>,  <30.685717, 39.960617, 45.390800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.746977, 39.736156, 45.449657>,  <30.849077, 39.362053, 45.547749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746977, 39.736156, 45.449657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063002, -0.269183, -0.961026,
		-0.964820, -0.229852, 0.127632,
		-0.255250, 0.935258, -0.245232,
		30.670403, 40.016735, 45.376087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188721, 39.330513, 45.076908>,  <30.849077, 39.362053, 45.547749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188721, 39.330513, 45.076908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371754, 39.684109, 45.038593>,  <30.481573, 39.896267, 45.015606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371754, 39.684109, 45.038593>,  <30.188721, 39.330513, 45.076908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371754, 39.684109, 45.038593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127282, -0.041497, -0.990998,
		-0.880011, 0.465654, 0.093528,
		0.457581, 0.883993, -0.095787,
		30.509027, 39.949306, 45.009857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611654, 39.678020, 45.061749>,  <30.188721, 39.330513, 45.076908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611654, 39.678020, 45.061749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253878, 39.499775, 45.076721>,  <29.039211, 39.392830, 45.085705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253878, 39.499775, 45.076721>,  <29.611654, 39.678020, 45.061749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253878, 39.499775, 45.076721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095559, -0.108700, 0.989471,
		-0.436851, 0.888603, 0.139808,
		-0.894444, -0.445612, 0.037428,
		28.985544, 39.366093, 45.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267574, 40.052155, 45.585026>,  <29.611654, 39.678020, 45.061749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267574, 40.052155, 45.585026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.032280, 39.728752, 45.578114>,  <28.891104, 39.534710, 45.573967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.032280, 39.728752, 45.578114>,  <29.267574, 40.052155, 45.585026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032280, 39.728752, 45.578114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005918, -0.025670, 0.999653,
		-0.808668, 0.587929, 0.019885,
		-0.588236, -0.808505, -0.017279,
		28.855810, 39.486202, 45.572929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712446, 40.132385, 46.180008>,  <29.267574, 40.052155, 45.585026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712446, 40.132385, 46.180008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719873, 39.738926, 46.108349>,  <28.724331, 39.502850, 46.065353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719873, 39.738926, 46.108349>,  <28.712446, 40.132385, 46.180008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719873, 39.738926, 46.108349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107667, -0.180108, 0.977737,
		-0.994014, 0.001133, -0.109251,
		0.018569, -0.983646, -0.179151,
		28.725445, 39.443832, 46.054604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241508, 39.848164, 46.724903>,  <28.712446, 40.132385, 46.180008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241508, 39.848164, 46.724903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.438658, 39.525963, 46.593307>,  <28.556948, 39.332642, 46.514351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.438658, 39.525963, 46.593307>,  <28.241508, 39.848164, 46.724903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438658, 39.525963, 46.593307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242495, -0.490291, 0.837144,
		-0.835626, -0.332828, -0.436983,
		0.492873, -0.805506, -0.328990,
		28.586519, 39.284309, 46.494610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884283, 39.355476, 46.933777>,  <28.241508, 39.848164, 46.724903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884283, 39.355476, 46.933777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247866, 39.199097, 46.875874>,  <28.466015, 39.105267, 46.841129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247866, 39.199097, 46.875874>,  <27.884283, 39.355476, 46.933777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247866, 39.199097, 46.875874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049944, -0.446853, 0.893212,
		-0.413887, -0.804662, -0.425695,
		0.908957, -0.390949, -0.144759,
		28.520552, 39.081810, 46.832447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848930, 38.663528, 47.100178>,  <27.884283, 39.355476, 46.933777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848930, 38.663528, 47.100178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.225731, 38.791733, 47.139996>,  <28.451811, 38.868656, 47.163887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.225731, 38.791733, 47.139996>,  <27.848930, 38.663528, 47.100178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225731, 38.791733, 47.139996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002919, -0.304429, 0.952531,
		0.335600, -0.896993, -0.287708,
		0.942000, 0.320509, 0.099548,
		28.508331, 38.887886, 47.169861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178638, 38.100067, 47.396450>,  <27.848930, 38.663528, 47.100178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178638, 38.100067, 47.396450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430204, 38.403469, 47.464725>,  <28.581144, 38.585510, 47.505692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430204, 38.403469, 47.464725>,  <28.178638, 38.100067, 47.396450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430204, 38.403469, 47.464725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030662, -0.243567, 0.969399,
		0.776869, -0.604436, -0.176440,
		0.628915, 0.758506, 0.170687,
		28.618879, 38.631020, 47.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464565, 37.321762, 47.483021>,  <28.178638, 38.100067, 47.396450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464565, 37.321762, 47.483021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.378653, 36.942993, 47.578701>,  <28.327105, 36.715733, 47.636108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.378653, 36.942993, 47.578701>,  <28.464565, 37.321762, 47.483021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378653, 36.942993, 47.578701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168879, -0.277232, -0.945845,
		0.961950, -0.162757, 0.219460,
		-0.214784, -0.946918, 0.239197,
		28.314217, 36.658916, 47.650459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074129, 36.827389, 47.261978>,  <28.464565, 37.321762, 47.483021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074129, 36.827389, 47.261978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729040, 36.627335, 47.291840>,  <28.521986, 36.507301, 47.309757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729040, 36.627335, 47.291840>,  <29.074129, 36.827389, 47.261978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729040, 36.627335, 47.291840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040033, -0.214723, -0.975854,
		0.504089, -0.838903, 0.205269,
		-0.862723, -0.500135, 0.074656,
		28.470222, 36.477295, 47.314236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136707, 36.141762, 46.953888>,  <29.074129, 36.827389, 47.261978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136707, 36.141762, 46.953888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739386, 36.180901, 46.978458>,  <28.500992, 36.204384, 46.993198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739386, 36.180901, 46.978458>,  <29.136707, 36.141762, 46.953888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739386, 36.180901, 46.978458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088982, -0.308899, -0.946923,
		-0.073680, -0.946048, 0.315537,
		-0.993305, 0.097846, 0.061422,
		28.441395, 36.210255, 46.996883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932480, 35.574543, 46.567890>,  <29.136707, 36.141762, 46.953888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932480, 35.574543, 46.567890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611574, 35.813229, 46.574928>,  <28.419031, 35.956440, 46.579151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611574, 35.813229, 46.574928>,  <28.932480, 35.574543, 46.567890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611574, 35.813229, 46.574928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207903, -0.251647, -0.945225,
		-0.559597, -0.761978, 0.325945,
		-0.802264, 0.596710, 0.017597,
		28.370895, 35.992241, 46.580208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500565, 35.248142, 46.030060>,  <28.932480, 35.574543, 46.567890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500565, 35.248142, 46.030060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.351233, 35.608700, 46.117805>,  <28.261633, 35.825035, 46.170452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.351233, 35.608700, 46.117805>,  <28.500565, 35.248142, 46.030060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351233, 35.608700, 46.117805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416106, 0.048635, -0.908015,
		-0.829144, -0.430269, 0.356917,
		-0.373332, 0.901390, 0.219363,
		28.239233, 35.879116, 46.183613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782873, 35.192402, 45.834110>,  <28.500565, 35.248142, 46.030060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782873, 35.192402, 45.834110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.899572, 35.574966, 45.829128>,  <27.969591, 35.804504, 45.826141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.899572, 35.574966, 45.829128>,  <27.782873, 35.192402, 45.834110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899572, 35.574966, 45.829128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244629, 0.062024, -0.967631,
		-0.924683, 0.285352, 0.252062,
		0.291749, 0.956414, -0.012453,
		27.987097, 35.861889, 45.825394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202517, 35.658161, 45.605438>,  <27.782873, 35.192402, 45.834110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202517, 35.658161, 45.605438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.550516, 35.842575, 45.535522>,  <27.759315, 35.953224, 45.493572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.550516, 35.842575, 45.535522>,  <27.202517, 35.658161, 45.605438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550516, 35.842575, 45.535522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276669, 0.163052, -0.947031,
		-0.408115, 0.872273, 0.269409,
		0.869998, 0.461035, -0.174787,
		27.811516, 35.980885, 45.483086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.883957, 35.943741, 49.938950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042885, 36.256454, 49.746719>,  <33.138241, 36.444084, 49.631382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042885, 36.256454, 49.746719>,  <32.883957, 35.943741, 49.938950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042885, 36.256454, 49.746719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216953, -0.428820, -0.876952,
		-0.891668, 0.452689, -0.000767,
		0.397316, 0.781784, -0.480577,
		33.162079, 36.490990, 49.602547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478405, 36.031521, 49.300507>,  <32.883957, 35.943741, 49.938950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478405, 36.031521, 49.300507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815506, 36.237072, 49.236382>,  <33.017765, 36.360405, 49.197906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815506, 36.237072, 49.236382>,  <32.478405, 36.031521, 49.300507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815506, 36.237072, 49.236382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064998, -0.198487, -0.977946,
		-0.534369, 0.834583, -0.133873,
		0.842749, 0.513882, -0.160311,
		33.068329, 36.391235, 49.188290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339397, 36.463978, 48.674255>,  <32.478405, 36.031521, 49.300507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339397, 36.463978, 48.674255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.735901, 36.421467, 48.705532>,  <32.973804, 36.395962, 48.724297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.735901, 36.421467, 48.705532>,  <32.339397, 36.463978, 48.674255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735901, 36.421467, 48.705532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042046, -0.307290, -0.950686,
		0.125060, 0.945663, -0.300135,
		0.991258, -0.106273, 0.078191,
		33.033279, 36.389584, 48.728989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753727, 36.947987, 48.203915>,  <32.339397, 36.463978, 48.674255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753727, 36.947987, 48.203915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.987053, 36.637917, 48.300945>,  <33.127048, 36.451874, 48.359165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.987053, 36.637917, 48.300945>,  <32.753727, 36.947987, 48.203915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987053, 36.637917, 48.300945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056998, -0.258853, -0.964234,
		0.810247, 0.576275, -0.106807,
		0.583311, -0.775179, 0.242581,
		33.162045, 36.405361, 48.373718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196404, 36.895779, 47.721275>,  <32.753727, 36.947987, 48.203915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196404, 36.895779, 47.721275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.225216, 36.534428, 47.890381>,  <33.242504, 36.317619, 47.991844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.225216, 36.534428, 47.890381>,  <33.196404, 36.895779, 47.721275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225216, 36.534428, 47.890381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107792, -0.414330, -0.903721,
		0.991561, 0.110663, 0.067534,
		0.072027, -0.903374, 0.422762,
		33.246822, 36.263416, 48.017208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630871, 36.688477, 47.295155>,  <33.196404, 36.895779, 47.721275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630871, 36.688477, 47.295155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500099, 36.363579, 47.488388>,  <33.421638, 36.168640, 47.604328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500099, 36.363579, 47.488388>,  <33.630871, 36.688477, 47.295155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500099, 36.363579, 47.488388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177950, -0.554942, -0.812634,
		0.928145, -0.179705, 0.325964,
		-0.326926, -0.812247, 0.483088,
		33.402023, 36.119904, 47.633316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048271, 36.204830, 47.153374>,  <33.630871, 36.688477, 47.295155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048271, 36.204830, 47.153374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710339, 36.015743, 47.253620>,  <33.507580, 35.902290, 47.313766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710339, 36.015743, 47.253620>,  <34.048271, 36.204830, 47.153374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710339, 36.015743, 47.253620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067013, -0.558203, -0.826994,
		0.530826, -0.681873, 0.503263,
		-0.844828, -0.472715, 0.250614,
		33.456890, 35.873928, 47.328804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213337, 35.632492, 47.066872>,  <34.048271, 36.204830, 47.153374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213337, 35.632492, 47.066872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.815907, 35.589725, 47.081684>,  <33.577446, 35.564064, 47.090572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.815907, 35.589725, 47.081684>,  <34.213337, 35.632492, 47.066872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815907, 35.589725, 47.081684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046015, -0.680835, -0.730990,
		0.103370, -0.724591, 0.681382,
		-0.993578, -0.106916, 0.037036,
		33.517834, 35.557652, 47.092796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079304, 34.908283, 47.019886>,  <34.213337, 35.632492, 47.066872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079304, 34.908283, 47.019886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742451, 35.096336, 46.914227>,  <33.540337, 35.209167, 46.850830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742451, 35.096336, 46.914227>,  <34.079304, 34.908283, 47.019886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742451, 35.096336, 46.914227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192949, -0.720104, -0.666499,
		-0.503563, -0.510315, 0.697139,
		-0.842137, 0.470137, -0.264153,
		33.489811, 35.237377, 46.834980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598160, 34.437336, 46.783314>,  <34.079304, 34.908283, 47.019886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598160, 34.437336, 46.783314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428509, 34.754154, 46.607693>,  <33.326717, 34.944244, 46.502319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428509, 34.754154, 46.607693>,  <33.598160, 34.437336, 46.783314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428509, 34.754154, 46.607693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052553, -0.505532, -0.861206,
		-0.904075, -0.342191, 0.256036,
		-0.424131, 0.792050, -0.439056,
		33.301270, 34.991768, 46.475975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196175, 34.077503, 46.338741>,  <33.598160, 34.437336, 46.783314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196175, 34.077503, 46.338741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204220, 34.455677, 46.208664>,  <33.209045, 34.682583, 46.130619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204220, 34.455677, 46.208664>,  <33.196175, 34.077503, 46.338741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204220, 34.455677, 46.208664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299783, -0.304587, -0.904078,
		-0.953796, 0.115670, 0.277299,
		0.020113, 0.945435, -0.325190,
		33.210255, 34.739307, 46.111107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465958, 34.209419, 45.921444>,  <33.196175, 34.077503, 46.338741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465958, 34.209419, 45.921444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761929, 34.450974, 45.802895>,  <32.939510, 34.595905, 45.731766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761929, 34.450974, 45.802895>,  <32.465958, 34.209419, 45.921444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761929, 34.450974, 45.802895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278484, -0.126064, -0.952132,
		-0.612338, 0.787041, 0.074894,
		0.739925, 0.603883, -0.296372,
		32.983906, 34.632137, 45.713982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840599, 34.708805, 45.934128>,  <32.465958, 34.209419, 45.921444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840599, 34.708805, 45.934128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.463064, 34.577599, 45.918247>,  <31.236544, 34.498875, 45.908718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.463064, 34.577599, 45.918247>,  <31.840599, 34.708805, 45.934128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463064, 34.577599, 45.918247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121079, 0.231553, 0.965258,
		-0.307426, 0.915854, -0.258264,
		-0.943837, -0.328016, -0.039706,
		31.179913, 34.479195, 45.906334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471104, 35.141087, 46.221203>,  <31.840599, 34.708805, 45.934128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471104, 35.141087, 46.221203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216831, 34.832733, 46.237415>,  <31.064268, 34.647720, 46.247143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216831, 34.832733, 46.237415>,  <31.471104, 35.141087, 46.221203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216831, 34.832733, 46.237415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140748, 0.167362, 0.975797,
		-0.759012, 0.614592, -0.214890,
		-0.635681, -0.770887, 0.040527,
		31.026127, 34.601467, 46.249573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855574, 35.421104, 46.485146>,  <31.471104, 35.141087, 46.221203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855574, 35.421104, 46.485146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.837641, 35.029243, 46.563408>,  <30.826881, 34.794128, 46.610363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.837641, 35.029243, 46.563408>,  <30.855574, 35.421104, 46.485146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837641, 35.029243, 46.563408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254561, 0.200588, 0.946025,
		-0.966017, -0.007396, -0.258373,
		-0.044830, -0.979648, 0.195654,
		30.824192, 34.735348, 46.622105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203669, 35.327141, 46.786152>,  <30.855574, 35.421104, 46.485146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203669, 35.327141, 46.786152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.409769, 35.002804, 46.897186>,  <30.533430, 34.808201, 46.963806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.409769, 35.002804, 46.897186>,  <30.203669, 35.327141, 46.786152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409769, 35.002804, 46.897186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364940, 0.085488, 0.927098,
		-0.775458, -0.578992, -0.251859,
		0.515252, -0.810839, 0.277590,
		30.564344, 34.759552, 46.980465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834864, 35.051586, 47.252274>,  <30.203669, 35.327141, 46.786152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834864, 35.051586, 47.252274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.153673, 34.818272, 47.314926>,  <30.344959, 34.678284, 47.352516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.153673, 34.818272, 47.314926>,  <29.834864, 35.051586, 47.252274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153673, 34.818272, 47.314926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267133, -0.107883, 0.957602,
		-0.541655, -0.805073, -0.241800,
		0.797026, -0.583283, 0.156627,
		30.392780, 34.643288, 47.361916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509035, 34.503670, 47.636814>,  <29.834864, 35.051586, 47.252274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509035, 34.503670, 47.636814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904266, 34.487667, 47.696281>,  <30.141405, 34.478065, 47.731960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904266, 34.487667, 47.696281>,  <29.509035, 34.503670, 47.636814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904266, 34.487667, 47.696281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151004, -0.063696, 0.986479,
		-0.029991, -0.997167, -0.068977,
		0.988078, -0.040002, 0.148666,
		30.200689, 34.475662, 47.740883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567326, 34.122463, 48.238712>,  <29.509035, 34.503670, 47.636814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567326, 34.122463, 48.238712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.912777, 34.323051, 48.218037>,  <30.120047, 34.443405, 48.205631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.912777, 34.323051, 48.218037>,  <29.567326, 34.122463, 48.238712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912777, 34.323051, 48.218037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023676, 0.142772, 0.989473,
		0.503575, -0.853311, 0.135175,
		0.863627, 0.501474, -0.051693,
		30.171865, 34.473495, 48.202530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953194, 33.880291, 48.748993>,  <29.567326, 34.122463, 48.238712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953194, 33.880291, 48.748993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141624, 34.223675, 48.667870>,  <30.254683, 34.429707, 48.619194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141624, 34.223675, 48.667870>,  <29.953194, 33.880291, 48.748993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141624, 34.223675, 48.667870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051734, 0.202633, 0.977887,
		0.880574, -0.471151, 0.051043,
		0.471076, 0.858462, -0.202808,
		30.282948, 34.481213, 48.607029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515354, 33.874004, 49.213440>,  <29.953194, 33.880291, 48.748993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515354, 33.874004, 49.213440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439177, 34.252213, 49.107819>,  <30.393471, 34.479137, 49.044445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439177, 34.252213, 49.107819>,  <30.515354, 33.874004, 49.213440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439177, 34.252213, 49.107819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115187, 0.245600, 0.962503,
		0.974917, 0.213719, 0.062138,
		-0.190444, 0.945518, -0.264057,
		30.382044, 34.535870, 49.028603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957775, 34.219120, 49.631416>,  <30.515354, 33.874004, 49.213440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957775, 34.219120, 49.631416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694530, 34.495106, 49.510864>,  <30.536583, 34.660698, 49.438534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694530, 34.495106, 49.510864>,  <30.957775, 34.219120, 49.631416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694530, 34.495106, 49.510864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088360, 0.326745, 0.940973,
		0.747716, 0.645897, -0.154069,
		-0.658113, 0.689967, -0.301384,
		30.497097, 34.702095, 49.420448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146582, 34.929970, 49.964630>,  <30.957775, 34.219120, 49.631416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146582, 34.929970, 49.964630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762119, 34.931557, 49.854237>,  <30.531443, 34.932510, 49.788002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762119, 34.931557, 49.854237>,  <31.146582, 34.929970, 49.964630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762119, 34.931557, 49.854237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243490, 0.458690, 0.854585,
		0.129980, 0.888588, -0.439906,
		-0.961154, 0.003966, -0.275983,
		30.473772, 34.932747, 49.771442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936403, 35.667072, 49.974838>,  <31.146582, 34.929970, 49.964630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936403, 35.667072, 49.974838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.614653, 35.435444, 50.027988>,  <30.421602, 35.296467, 50.059879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.614653, 35.435444, 50.027988>,  <30.936403, 35.667072, 49.974838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614653, 35.435444, 50.027988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226180, 0.505273, 0.832792,
		-0.549383, 0.639825, -0.537404,
		-0.804376, -0.579072, 0.132872,
		30.373341, 35.261723, 50.067852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462465, 36.228848, 50.176926>,  <30.936403, 35.667072, 49.974838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462465, 36.228848, 50.176926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.307997, 35.869442, 50.260403>,  <30.215315, 35.653801, 50.310490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.307997, 35.869442, 50.260403>,  <30.462465, 36.228848, 50.176926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307997, 35.869442, 50.260403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318912, 0.342339, 0.883798,
		-0.865544, 0.274744, -0.418747,
		-0.386172, -0.898510, 0.208690,
		30.192144, 35.599888, 50.323009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769302, 36.328270, 50.442154>,  <30.462465, 36.228848, 50.176926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769302, 36.328270, 50.442154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893581, 35.973286, 50.578323>,  <29.968149, 35.760296, 50.660023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893581, 35.973286, 50.578323>,  <29.769302, 36.328270, 50.442154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893581, 35.973286, 50.578323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300327, 0.248141, 0.920994,
		-0.901815, -0.388388, -0.189431,
		0.310698, -0.887458, 0.340421,
		29.986792, 35.707050, 50.680450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226118, 35.839741, 50.458775>,  <29.769302, 36.328270, 50.442154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226118, 35.839741, 50.458775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.943352, 36.120480, 50.493847>,  <28.773691, 36.288921, 50.514889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.943352, 36.120480, 50.493847>,  <29.226118, 35.839741, 50.458775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943352, 36.120480, 50.493847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029761, 0.153372, -0.987720,
		-0.706672, -0.695625, -0.129309,
		-0.706915, 0.701843, 0.087681,
		28.731277, 36.331032, 50.520153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664089, 35.601723, 50.148613>,  <29.226118, 35.839741, 50.458775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664089, 35.601723, 50.148613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.637768, 36.000114, 50.124317>,  <28.621975, 36.239151, 50.109741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.637768, 36.000114, 50.124317>,  <28.664089, 35.601723, 50.148613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637768, 36.000114, 50.124317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084370, -0.066203, -0.994233,
		-0.994259, -0.060299, 0.088388,
		-0.065803, 0.995982, -0.060735,
		28.618027, 36.298908, 50.106098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085159, 35.802193, 49.785969>,  <28.664089, 35.601723, 50.148613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085159, 35.802193, 49.785969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.295822, 36.135944, 49.720928>,  <28.422220, 36.336197, 49.681904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.295822, 36.135944, 49.720928>,  <28.085159, 35.802193, 49.785969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295822, 36.135944, 49.720928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208185, -0.058860, -0.976317,
		-0.824193, 0.548034, 0.142707,
		0.526655, 0.834383, -0.162605,
		28.453819, 36.386261, 49.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562162, 36.172119, 49.362560>,  <28.085159, 35.802193, 49.785969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562162, 36.172119, 49.362560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.930079, 36.325859, 49.330898>,  <28.150827, 36.418102, 49.311901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.930079, 36.325859, 49.330898>,  <27.562162, 36.172119, 49.362560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930079, 36.325859, 49.330898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198089, 0.280627, -0.939153,
		-0.338748, 0.879502, 0.334253,
		0.919788, 0.384348, -0.079157,
		28.206015, 36.441162, 49.307152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441267, 36.726437, 49.003304>,  <27.562162, 36.172119, 49.362560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441267, 36.726437, 49.003304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.833574, 36.669552, 48.949837>,  <28.068958, 36.635422, 48.917755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.833574, 36.669552, 48.949837>,  <27.441267, 36.726437, 49.003304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833574, 36.669552, 48.949837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120637, 0.096660, -0.987980,
		0.153427, 0.985105, 0.077645,
		0.980769, -0.142216, -0.133670,
		28.127806, 36.626888, 48.909737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545013, 37.231705, 48.597481>,  <27.441267, 36.726437, 49.003304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545013, 37.231705, 48.597481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.860758, 36.989315, 48.558079>,  <28.050203, 36.843880, 48.534439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.860758, 36.989315, 48.558079>,  <27.545013, 37.231705, 48.597481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860758, 36.989315, 48.558079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120858, 0.003925, -0.992662,
		0.601917, 0.795472, -0.070139,
		0.789360, -0.605977, -0.098502,
		28.097567, 36.807522, 48.528526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901695, 37.477711, 47.991955>,  <27.545013, 37.231705, 48.597481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901695, 37.477711, 47.991955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.021631, 37.102638, 48.062210>,  <28.093594, 36.877594, 48.104362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.021631, 37.102638, 48.062210>,  <27.901695, 37.477711, 47.991955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021631, 37.102638, 48.062210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133241, -0.223462, -0.965563,
		0.944638, 0.266114, -0.191941,
		0.299842, -0.937682, 0.175634,
		28.111584, 36.821335, 48.114899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522377, 37.842327, 48.069298>,  <27.901695, 37.477711, 47.991955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522377, 37.842327, 48.069298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.609159, 38.229931, 48.022053>,  <28.661228, 38.462494, 47.993706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.609159, 38.229931, 48.022053>,  <28.522377, 37.842327, 48.069298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609159, 38.229931, 48.022053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263816, 0.058286, 0.962810,
		0.939857, -0.240046, -0.242995,
		0.216955, 0.969010, -0.118108,
		28.674246, 38.520634, 47.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176538, 37.924450, 48.388760>,  <28.522377, 37.842327, 48.069298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176538, 37.924450, 48.388760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.042646, 38.300182, 48.358807>,  <28.962311, 38.525623, 48.340836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.042646, 38.300182, 48.358807>,  <29.176538, 37.924450, 48.388760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042646, 38.300182, 48.358807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393745, 0.211624, 0.894528,
		0.856108, 0.269938, -0.440695,
		-0.334729, 0.939334, -0.074887,
		28.942228, 38.581982, 48.336342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783188, 38.485199, 48.444389>,  <29.176538, 37.924450, 48.388760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783188, 38.485199, 48.444389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431652, 38.637764, 48.559044>,  <29.220730, 38.729301, 48.627838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431652, 38.637764, 48.559044>,  <29.783188, 38.485199, 48.444389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431652, 38.637764, 48.559044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414825, 0.314030, 0.853994,
		0.235712, 0.869430, -0.434202,
		-0.878840, 0.381414, 0.286641,
		29.167999, 38.752190, 48.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146490, 39.067307, 48.859726>,  <29.783188, 38.485199, 48.444389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146490, 39.067307, 48.859726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.757345, 39.078556, 48.951595>,  <29.523859, 39.085304, 49.006718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.757345, 39.078556, 48.951595>,  <30.146490, 39.067307, 48.859726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757345, 39.078556, 48.951595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203411, 0.577057, 0.790967,
		-0.110286, 0.816220, -0.567118,
		-0.972862, 0.028125, 0.229670,
		29.465487, 39.086994, 49.020496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890781, 39.875526, 48.966587>,  <30.146490, 39.067307, 48.859726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890781, 39.875526, 48.966587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.688698, 39.600895, 49.175728>,  <29.567448, 39.436115, 49.301212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.688698, 39.600895, 49.175728>,  <29.890781, 39.875526, 48.966587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688698, 39.600895, 49.175728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326850, 0.408496, 0.852232,
		-0.798707, 0.601450, 0.018032,
		-0.505209, -0.686578, 0.522853,
		29.537136, 39.394920, 49.332584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388973, 40.183472, 49.456928>,  <29.890781, 39.875526, 48.966587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388973, 40.183472, 49.456928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484716, 39.822014, 49.598991>,  <29.542162, 39.605141, 49.684231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484716, 39.822014, 49.598991>,  <29.388973, 40.183472, 49.456928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484716, 39.822014, 49.598991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227070, 0.407750, 0.884409,
		-0.944006, -0.131043, 0.302788,
		0.239357, -0.903641, 0.355162,
		29.556524, 39.550922, 49.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092638, 40.199291, 50.053982>,  <29.388973, 40.183472, 49.456928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092638, 40.199291, 50.053982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.346991, 39.892632, 50.089542>,  <29.499601, 39.708633, 50.110878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.346991, 39.892632, 50.089542>,  <29.092638, 40.199291, 50.053982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346991, 39.892632, 50.089542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186048, 0.264052, 0.946394,
		-0.749028, -0.585254, 0.310539,
		0.635880, -0.766651, 0.088897,
		29.537754, 39.662636, 50.116211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919296, 39.826809, 50.709698>,  <29.092638, 40.199291, 50.053982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919296, 39.826809, 50.709698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.288494, 39.688053, 50.643070>,  <29.510014, 39.604797, 50.603096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.288494, 39.688053, 50.643070>,  <28.919296, 39.826809, 50.709698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288494, 39.688053, 50.643070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213527, 0.101598, 0.971640,
		-0.320132, -0.932386, 0.167845,
		0.922996, -0.346892, -0.166565,
		29.565393, 39.583984, 50.593102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031721, 39.235622, 51.121014>,  <28.919296, 39.826809, 50.709698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031721, 39.235622, 51.121014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.373762, 39.420891, 51.027832>,  <29.578987, 39.532051, 50.971924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.373762, 39.420891, 51.027832>,  <29.031721, 39.235622, 51.121014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373762, 39.420891, 51.027832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171636, 0.171090, 0.970190,
		0.489222, -0.869597, 0.066802,
		0.855104, 0.463173, -0.232955,
		29.630293, 39.559841, 50.957947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.650431, 37.105186, 35.373573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027828, 37.209770, 35.455021>,  <31.254267, 37.272518, 35.503887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027828, 37.209770, 35.455021>,  <30.650431, 37.105186, 35.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027828, 37.209770, 35.455021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242491, 0.125916, 0.961948,
		0.225867, -0.956967, 0.182202,
		0.943495, 0.261454, 0.203615,
		31.310877, 37.288208, 35.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823954, 36.803574, 35.901134>,  <30.650431, 37.105186, 35.373573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823954, 36.803574, 35.901134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120523, 37.070736, 35.927052>,  <31.298466, 37.231033, 35.942600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120523, 37.070736, 35.927052>,  <30.823954, 36.803574, 35.901134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120523, 37.070736, 35.927052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295633, 0.238435, 0.925067,
		0.602405, -0.705022, 0.374236,
		0.741423, 0.667902, 0.064793,
		31.342951, 37.271107, 35.946491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302826, 36.586708, 36.465202>,  <30.823954, 36.803574, 35.901134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302826, 36.586708, 36.465202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370628, 36.976818, 36.408482>,  <31.411310, 37.210884, 36.374447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370628, 36.976818, 36.408482>,  <31.302826, 36.586708, 36.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370628, 36.976818, 36.408482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155808, 0.168596, 0.973293,
		0.973135, -0.142885, 0.180534,
		0.169506, 0.975274, -0.141804,
		31.421480, 37.269402, 36.365940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794317, 36.844830, 37.006706>,  <31.302826, 36.586708, 36.465202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794317, 36.844830, 37.006706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617125, 37.183235, 36.888031>,  <31.510809, 37.386280, 36.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617125, 37.183235, 36.888031>,  <31.794317, 36.844830, 37.006706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617125, 37.183235, 36.888031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213481, 0.221876, 0.951419,
		0.870743, 0.484799, 0.082321,
		-0.442981, 0.846015, -0.296692,
		31.484230, 37.437038, 36.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085987, 37.404514, 37.385540>,  <31.794317, 36.844830, 37.006706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085987, 37.404514, 37.385540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720953, 37.509323, 37.259979>,  <31.501932, 37.572208, 37.184643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720953, 37.509323, 37.259979>,  <32.085987, 37.404514, 37.385540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720953, 37.509323, 37.259979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264632, 0.206745, 0.941927,
		0.311699, 0.942657, -0.119334,
		-0.912586, 0.262018, -0.313900,
		31.447178, 37.587929, 37.165810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004990, 38.024063, 37.754189>,  <32.085987, 37.404514, 37.385540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004990, 38.024063, 37.754189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638395, 37.906242, 37.645897>,  <31.418438, 37.835552, 37.580921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638395, 37.906242, 37.645897>,  <32.004990, 38.024063, 37.754189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638395, 37.906242, 37.645897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365036, 0.338771, 0.867169,
		-0.163710, 0.893574, -0.418001,
		-0.916487, -0.294550, -0.270727,
		31.363449, 37.817879, 37.564678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638891, 38.531242, 38.020897>,  <32.004990, 38.024063, 37.754189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638891, 38.531242, 38.020897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359282, 38.248970, 37.974628>,  <31.191517, 38.079605, 37.946869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359282, 38.248970, 37.974628>,  <31.638891, 38.531242, 38.020897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359282, 38.248970, 37.974628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464485, 0.325078, 0.823758,
		-0.543711, 0.629552, -0.555016,
		-0.699022, -0.705683, -0.115669,
		31.149574, 38.037266, 37.939926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050508, 38.823505, 38.356796>,  <31.638891, 38.531242, 38.020897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050508, 38.823505, 38.356796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934616, 38.440674, 38.359776>,  <30.865080, 38.210976, 38.361561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934616, 38.440674, 38.359776>,  <31.050508, 38.823505, 38.356796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934616, 38.440674, 38.359776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628408, 0.196093, 0.752762,
		-0.721913, 0.213421, -0.658250,
		-0.289733, -0.957079, 0.007446,
		30.847696, 38.153549, 38.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392651, 38.895473, 38.460018>,  <31.050508, 38.823505, 38.356796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392651, 38.895473, 38.460018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467154, 38.513927, 38.554203>,  <30.511856, 38.285000, 38.610714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467154, 38.513927, 38.554203>,  <30.392651, 38.895473, 38.460018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467154, 38.513927, 38.554203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661333, 0.055518, 0.748035,
		-0.726599, -0.295047, -0.620484,
		0.186258, -0.953869, 0.235464,
		30.523031, 38.227768, 38.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756002, 38.569084, 38.413891>,  <30.392651, 38.895473, 38.460018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756002, 38.569084, 38.413891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970610, 38.344166, 38.665596>,  <30.099375, 38.209217, 38.816620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970610, 38.344166, 38.665596>,  <29.756002, 38.569084, 38.413891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970610, 38.344166, 38.665596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730859, 0.063183, 0.679597,
		-0.421892, -0.824521, -0.377058,
		0.536519, -0.562293, 0.629265,
		30.131565, 38.175476, 38.854374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353848, 38.063004, 38.693928>,  <29.756002, 38.569084, 38.413891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353848, 38.063004, 38.693928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644173, 38.083153, 38.968346>,  <29.818367, 38.095242, 39.132996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644173, 38.083153, 38.968346>,  <29.353848, 38.063004, 38.693928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644173, 38.083153, 38.968346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687834, 0.066345, 0.722830,
		-0.009108, -0.996525, 0.082799,
		0.725811, 0.050368, 0.686048,
		29.861916, 38.098267, 39.174160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134825, 37.685257, 39.253452>,  <29.353848, 38.063004, 38.693928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134825, 37.685257, 39.253452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432230, 37.887699, 39.428291>,  <29.610672, 38.009163, 39.533195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432230, 37.887699, 39.428291>,  <29.134825, 37.685257, 39.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432230, 37.887699, 39.428291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580097, 0.162955, 0.798081,
		0.332685, -0.846938, 0.414748,
		0.743511, 0.506104, 0.437094,
		29.655283, 38.039532, 39.559418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944983, 36.903770, 39.391712>,  <29.134825, 37.685257, 39.253452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944983, 36.903770, 39.391712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608637, 36.691620, 39.434879>,  <28.406830, 36.564327, 39.460777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608637, 36.691620, 39.434879>,  <28.944983, 36.903770, 39.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608637, 36.691620, 39.434879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036825, -0.142856, -0.989058,
		0.539993, -0.835637, 0.100591,
		-0.840863, -0.530380, 0.107914,
		28.356379, 36.532505, 39.467255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058855, 36.300407, 38.934887>,  <28.944983, 36.903770, 39.391712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058855, 36.300407, 38.934887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662270, 36.311375, 38.985874>,  <28.424318, 36.317955, 39.016468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662270, 36.311375, 38.985874>,  <29.058855, 36.300407, 38.934887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662270, 36.311375, 38.985874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129023, -0.347322, -0.928827,
		0.018809, -0.937345, 0.347894,
		-0.991463, 0.027416, 0.127471,
		28.364830, 36.319599, 39.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765383, 35.654705, 38.650322>,  <29.058855, 36.300407, 38.934887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765383, 35.654705, 38.650322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453537, 35.905174, 38.654572>,  <28.266430, 36.055454, 38.657120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453537, 35.905174, 38.654572>,  <28.765383, 35.654705, 38.650322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453537, 35.905174, 38.654572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155747, -0.177424, -0.971732,
		-0.606584, -0.759232, 0.235846,
		-0.779615, 0.626169, 0.010625,
		28.219652, 36.093025, 38.657761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156776, 35.313587, 38.238594>,  <28.765383, 35.654705, 38.650322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156776, 35.313587, 38.238594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094532, 35.708672, 38.232883>,  <28.057184, 35.945724, 38.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094532, 35.708672, 38.232883>,  <28.156776, 35.313587, 38.238594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094532, 35.708672, 38.232883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106333, -0.031115, -0.993844,
		-0.982078, -0.153137, 0.109869,
		-0.155613, 0.987715, -0.014274,
		28.047848, 36.004986, 38.228600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687845, 35.306946, 37.783592>,  <28.156776, 35.313587, 38.238594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687845, 35.306946, 37.783592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815414, 35.685802, 37.797466>,  <27.891956, 35.913116, 37.805790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815414, 35.685802, 37.797466>,  <27.687845, 35.306946, 37.783592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815414, 35.685802, 37.797466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158557, 0.089396, -0.983295,
		-0.934424, 0.308096, 0.178687,
		0.318923, 0.947146, 0.034683,
		27.911091, 35.969948, 37.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233015, 35.716293, 37.392082>,  <27.687845, 35.306946, 37.783592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233015, 35.716293, 37.392082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572960, 35.927055, 37.396229>,  <27.776928, 36.053513, 37.398716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572960, 35.927055, 37.396229>,  <27.233015, 35.716293, 37.392082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572960, 35.927055, 37.396229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174721, 0.300260, -0.937719,
		-0.497196, 0.795123, 0.347241,
		0.849864, 0.526900, 0.010364,
		27.827919, 36.085125, 37.399338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121313, 36.412319, 37.061508>,  <27.233015, 35.716293, 37.392082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121313, 36.412319, 37.061508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515829, 36.346912, 37.070389>,  <27.752539, 36.307667, 37.075718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515829, 36.346912, 37.070389>,  <27.121313, 36.412319, 37.061508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515829, 36.346912, 37.070389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082585, 0.372607, -0.924307,
		0.142871, 0.913469, 0.381003,
		0.986290, -0.163521, 0.022204,
		27.811716, 36.297855, 37.077049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416208, 36.881409, 36.550873>,  <27.121313, 36.412319, 37.061508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416208, 36.881409, 36.550873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759066, 36.683914, 36.609577>,  <27.964779, 36.565418, 36.644798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759066, 36.683914, 36.609577>,  <27.416208, 36.881409, 36.550873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759066, 36.683914, 36.609577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203604, 0.063057, -0.977021,
		0.473132, 0.867325, 0.154575,
		0.857141, -0.493732, 0.146757,
		28.016209, 36.535793, 36.653603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960169, 37.216488, 36.087551>,  <27.416208, 36.881409, 36.550873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960169, 37.216488, 36.087551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082638, 36.843403, 36.163757>,  <28.156118, 36.619553, 36.209480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082638, 36.843403, 36.163757>,  <27.960169, 37.216488, 36.087551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082638, 36.843403, 36.163757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396714, -0.056917, -0.916176,
		0.865377, 0.356088, 0.352595,
		0.306171, -0.932717, 0.190520,
		28.174490, 36.563587, 36.220913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634140, 37.307755, 35.813232>,  <27.960169, 37.216488, 36.087551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634140, 37.307755, 35.813232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563852, 36.916393, 35.856792>,  <28.521679, 36.681576, 35.882927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563852, 36.916393, 35.856792>,  <28.634140, 37.307755, 35.813232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563852, 36.916393, 35.856792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414938, -0.173926, -0.893072,
		0.892720, -0.111742, 0.436536,
		-0.175719, -0.978398, 0.108901,
		28.511137, 36.622875, 35.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212997, 36.907871, 35.666298>,  <28.634140, 37.307755, 35.813232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212997, 36.907871, 35.666298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886641, 36.686935, 35.597893>,  <28.690826, 36.554375, 35.556850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886641, 36.686935, 35.597893>,  <29.212997, 36.907871, 35.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886641, 36.686935, 35.597893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304851, -0.159601, -0.938932,
		0.491314, -0.818199, 0.298598,
		-0.815890, -0.552339, -0.171014,
		28.641874, 36.521233, 35.546589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461424, 36.488014, 35.172531>,  <29.212997, 36.907871, 35.666298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461424, 36.488014, 35.172531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073446, 36.393478, 35.149387>,  <28.840660, 36.336758, 35.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073446, 36.393478, 35.149387>,  <29.461424, 36.488014, 35.172531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073446, 36.393478, 35.149387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114205, -0.232223, -0.965935,
		0.214856, -0.943512, 0.252235,
		-0.969945, -0.236343, -0.057859,
		28.782463, 36.322575, 35.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469547, 35.885689, 34.799213>,  <29.461424, 36.488014, 35.172531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469547, 35.885689, 34.799213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102297, 36.038002, 34.755314>,  <28.881947, 36.129391, 34.728973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102297, 36.038002, 34.755314>,  <29.469547, 35.885689, 34.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102297, 36.038002, 34.755314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003470, -0.269210, -0.963075,
		-0.396272, -0.884606, 0.245847,
		-0.918127, 0.380787, -0.109750,
		28.826859, 36.152237, 34.722389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044508, 35.394638, 34.537735>,  <29.469547, 35.885689, 34.799213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044508, 35.394638, 34.537735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903360, 35.751434, 34.424709>,  <28.818672, 35.965511, 34.356895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903360, 35.751434, 34.424709>,  <29.044508, 35.394638, 34.537735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903360, 35.751434, 34.424709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031669, -0.290433, -0.956371,
		-0.935137, -0.346421, 0.074236,
		-0.352867, 0.891987, -0.282566,
		28.797501, 36.019032, 34.339939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654753, 34.840260, 34.891476>,  <29.044508, 35.394638, 34.537735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654753, 34.840260, 34.891476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869875, 35.161430, 34.994293>,  <28.998949, 35.354134, 35.055984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869875, 35.161430, 34.994293>,  <28.654753, 34.840260, 34.891476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869875, 35.161430, 34.994293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191325, -0.180695, 0.964751,
		0.821073, -0.568027, 0.056441,
		0.537805, 0.802929, 0.257041,
		29.031218, 35.402309, 35.071407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289991, 34.684254, 35.320595>,  <28.654753, 34.840260, 34.891476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289991, 34.684254, 35.320595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116928, 35.033184, 35.411682>,  <29.013090, 35.242542, 35.466335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116928, 35.033184, 35.411682>,  <29.289991, 34.684254, 35.320595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116928, 35.033184, 35.411682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095330, -0.295430, 0.950596,
		0.896504, 0.389574, 0.210979,
		-0.432657, 0.872326, 0.227716,
		28.987131, 35.294884, 35.479996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607658, 34.968613, 35.944286>,  <29.289991, 34.684254, 35.320595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607658, 34.968613, 35.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230938, 35.090157, 35.886761>,  <29.004906, 35.163082, 35.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230938, 35.090157, 35.886761>,  <29.607658, 34.968613, 35.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230938, 35.090157, 35.886761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227026, -0.259357, 0.938719,
		0.247940, 0.916735, 0.313247,
		-0.941799, 0.303861, -0.143817,
		28.948399, 35.181316, 35.843616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939089, 34.307201, 36.130234>,  <29.607658, 34.968613, 35.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939089, 34.307201, 36.130234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154892, 34.631954, 36.219482>,  <30.284374, 34.826805, 36.273029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154892, 34.631954, 36.219482>,  <29.939089, 34.307201, 36.130234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154892, 34.631954, 36.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257904, -0.092909, 0.961693,
		0.801510, -0.576383, 0.159263,
		0.539506, 0.811881, 0.223119,
		30.316744, 34.875519, 36.286419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386642, 34.130733, 36.626026>,  <29.939089, 34.307201, 36.130234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386642, 34.130733, 36.626026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385712, 34.529068, 36.662460>,  <30.385153, 34.768070, 36.684322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385712, 34.529068, 36.662460>,  <30.386642, 34.130733, 36.626026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385712, 34.529068, 36.662460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034357, -0.091112, 0.995248,
		0.999407, -0.000815, 0.034426,
		-0.002326, 0.995840, 0.091086,
		30.385014, 34.827820, 36.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747406, 34.211025, 37.218571>,  <30.386642, 34.130733, 36.626026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747406, 34.211025, 37.218571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621603, 34.590118, 37.197060>,  <30.546122, 34.817574, 37.184155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621603, 34.590118, 37.197060>,  <30.747406, 34.211025, 37.218571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621603, 34.590118, 37.197060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047204, 0.040965, 0.998045,
		0.948081, 0.316430, 0.031853,
		-0.314507, 0.947731, -0.053775,
		30.527250, 34.874439, 37.180927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181902, 34.583694, 37.525509>,  <30.747406, 34.211025, 37.218571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181902, 34.583694, 37.525509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848248, 34.804134, 37.516533>,  <30.648054, 34.936398, 37.511147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848248, 34.804134, 37.516533>,  <31.181902, 34.583694, 37.525509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848248, 34.804134, 37.516533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033220, 0.090806, 0.995314,
		0.550556, 0.829484, -0.094052,
		-0.834137, 0.551100, -0.022438,
		30.598007, 34.969463, 37.509800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350494, 35.165482, 37.898239>,  <31.181902, 34.583694, 37.525509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350494, 35.165482, 37.898239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951616, 35.144577, 37.919682>,  <30.712290, 35.132034, 37.932549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951616, 35.144577, 37.919682>,  <31.350494, 35.165482, 37.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951616, 35.144577, 37.919682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046092, 0.135677, 0.989680,
		-0.058994, 0.989374, -0.132888,
		-0.997194, -0.052260, 0.053607,
		30.652458, 35.128899, 37.935764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132122, 35.562672, 38.490360>,  <31.350494, 35.165482, 37.898239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132122, 35.562672, 38.490360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833603, 35.315338, 38.391811>,  <30.654491, 35.166939, 38.332684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833603, 35.315338, 38.391811>,  <31.132122, 35.562672, 38.490360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833603, 35.315338, 38.391811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193912, -0.152108, 0.969155,
		-0.636738, 0.771054, -0.006385,
		-0.746299, -0.618336, -0.246370,
		30.609713, 35.129837, 38.317902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649492, 35.803825, 38.886532>,  <31.132122, 35.562672, 38.490360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649492, 35.803825, 38.886532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556221, 35.422016, 38.812214>,  <30.500257, 35.192932, 38.767624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556221, 35.422016, 38.812214>,  <30.649492, 35.803825, 38.886532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556221, 35.422016, 38.812214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148009, -0.153995, 0.976923,
		-0.961104, 0.255298, -0.105369,
		-0.233180, -0.954520, -0.185792,
		30.486267, 35.135658, 38.756477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440777, 35.633888, 39.472637>,  <30.649492, 35.803825, 38.886532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440777, 35.633888, 39.472637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415195, 35.280178, 39.287613>,  <30.399847, 35.067951, 39.176598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415195, 35.280178, 39.287613>,  <30.440777, 35.633888, 39.472637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415195, 35.280178, 39.287613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213901, -0.440588, 0.871854,
		-0.974760, 0.154699, -0.160971,
		-0.063953, -0.884280, -0.462558,
		30.396009, 35.014893, 39.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698454, 35.311451, 39.498283>,  <30.440777, 35.633888, 39.472637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698454, 35.311451, 39.498283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965590, 35.014790, 39.473145>,  <30.125870, 34.836792, 39.458061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965590, 35.014790, 39.473145>,  <29.698454, 35.311451, 39.498283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965590, 35.014790, 39.473145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337811, -0.377260, 0.862298,
		-0.663232, -0.554645, -0.502486,
		0.667838, -0.741649, -0.062845,
		30.165941, 34.792294, 39.454292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304552, 34.758110, 39.604111>,  <29.698454, 35.311451, 39.498283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304552, 34.758110, 39.604111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682743, 34.653847, 39.682213>,  <29.909658, 34.591290, 39.729073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682743, 34.653847, 39.682213>,  <29.304552, 34.758110, 39.604111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682743, 34.653847, 39.682213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283433, -0.363242, 0.887536,
		-0.160421, -0.894489, -0.417318,
		0.945480, -0.260661, 0.195256,
		29.966387, 34.575649, 39.740791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339769, 34.073654, 39.820786>,  <29.304552, 34.758110, 39.604111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339769, 34.073654, 39.820786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688524, 34.225056, 39.945072>,  <29.897778, 34.315899, 40.019642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688524, 34.225056, 39.945072>,  <29.339769, 34.073654, 39.820786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688524, 34.225056, 39.945072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182118, -0.338362, 0.923225,
		0.454581, -0.861536, -0.226081,
		0.871888, 0.378507, 0.310714,
		29.950090, 34.338608, 40.038288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736446, 33.576439, 40.216415>,  <29.339769, 34.073654, 39.820786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736446, 33.576439, 40.216415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881104, 33.925579, 40.347473>,  <29.967897, 34.135063, 40.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881104, 33.925579, 40.347473>,  <29.736446, 33.576439, 40.216415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881104, 33.925579, 40.347473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080409, -0.320925, 0.943685,
		0.928843, -0.367622, -0.045875,
		0.361642, 0.872847, 0.327649,
		29.989595, 34.187431, 40.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243725, 33.375248, 40.631664>,  <29.736446, 33.576439, 40.216415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243725, 33.375248, 40.631664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226082, 33.758617, 40.744427>,  <30.215496, 33.988640, 40.812084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226082, 33.758617, 40.744427>,  <30.243725, 33.375248, 40.631664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226082, 33.758617, 40.744427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173954, -0.270503, 0.946873,
		0.983765, 0.090801, -0.154791,
		-0.044106, 0.958427, 0.281907,
		30.212851, 34.046146, 40.828999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857723, 33.475060, 41.001625>,  <30.243725, 33.375248, 40.631664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857723, 33.475060, 41.001625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605885, 33.771519, 41.094841>,  <30.454782, 33.949394, 41.150772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605885, 33.771519, 41.094841>,  <30.857723, 33.475060, 41.001625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605885, 33.771519, 41.094841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240001, -0.099749, 0.965634,
		0.738925, 0.663888, -0.115075,
		-0.629595, 0.741149, 0.233041,
		30.417006, 33.993862, 41.164753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227654, 33.840763, 41.442841>,  <30.857723, 33.475060, 41.001625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227654, 33.840763, 41.442841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846010, 33.932961, 41.519314>,  <30.617023, 33.988277, 41.565197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846010, 33.932961, 41.519314>,  <31.227654, 33.840763, 41.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846010, 33.932961, 41.519314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183002, -0.056568, 0.981484,
		0.237040, 0.971428, 0.011791,
		-0.954108, 0.230493, 0.191182,
		30.559778, 34.002110, 41.576668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284836, 34.364872, 41.867359>,  <31.227654, 33.840763, 41.442841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284836, 34.364872, 41.867359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924631, 34.195454, 41.906738>,  <30.708509, 34.093803, 41.930367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924631, 34.195454, 41.906738>,  <31.284836, 34.364872, 41.867359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924631, 34.195454, 41.906738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062143, 0.098731, 0.993172,
		-0.430371, 0.900480, -0.062588,
		-0.900511, -0.423543, 0.098449,
		30.654478, 34.068390, 41.936272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785542, 34.838902, 42.239162>,  <31.284836, 34.364872, 41.867359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785542, 34.838902, 42.239162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634594, 34.471287, 42.284702>,  <30.544025, 34.250717, 42.312027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634594, 34.471287, 42.284702>,  <30.785542, 34.838902, 42.239162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634594, 34.471287, 42.284702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056363, 0.145507, 0.987750,
		-0.924346, 0.366329, -0.106709,
		-0.377368, -0.919038, 0.113851,
		30.521383, 34.195576, 42.318859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350348, 34.906834, 42.765301>,  <30.785542, 34.838902, 42.239162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350348, 34.906834, 42.765301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416090, 34.512314, 42.770947>,  <30.455536, 34.275600, 42.774334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416090, 34.512314, 42.770947>,  <30.350348, 34.906834, 42.765301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416090, 34.512314, 42.770947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025741, 0.018594, 0.999496,
		-0.986065, -0.163910, 0.028444,
		0.164356, -0.986300, 0.014116,
		30.465397, 34.216423, 42.775181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872784, 34.772877, 43.262276>,  <30.350348, 34.906834, 42.765301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872784, 34.772877, 43.262276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075329, 34.429386, 43.230835>,  <30.196856, 34.223289, 43.211971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075329, 34.429386, 43.230835>,  <29.872784, 34.772877, 43.262276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075329, 34.429386, 43.230835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042809, -0.116075, 0.992317,
		-0.861257, -0.499108, -0.095538,
		0.506363, -0.858730, -0.078604,
		30.227238, 34.171768, 43.207253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560545, 34.273098, 43.735554>,  <29.872784, 34.772877, 43.262276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560545, 34.273098, 43.735554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944036, 34.172062, 43.683346>,  <30.174131, 34.111439, 43.652020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944036, 34.172062, 43.683346>,  <29.560545, 34.273098, 43.735554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944036, 34.172062, 43.683346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120432, -0.055070, 0.991193,
		-0.257555, -0.966005, -0.022377,
		0.958729, -0.252592, -0.130521,
		30.231655, 34.096283, 43.644188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650141, 33.670197, 44.240265>,  <29.560545, 34.273098, 43.735554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650141, 33.670197, 44.240265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000170, 33.826405, 44.125900>,  <30.210188, 33.920128, 44.057281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000170, 33.826405, 44.125900>,  <29.650141, 33.670197, 44.240265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000170, 33.826405, 44.125900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312421, -0.004601, 0.949933,
		0.369652, -0.920583, -0.126033,
		0.875072, 0.390520, -0.285909,
		30.262691, 33.943562, 44.040127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151674, 33.312374, 44.620579>,  <29.650141, 33.670197, 44.240265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151674, 33.312374, 44.620579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336529, 33.647774, 44.505093>,  <30.447441, 33.849014, 44.435802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336529, 33.647774, 44.505093>,  <30.151674, 33.312374, 44.620579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336529, 33.647774, 44.505093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251430, 0.188319, 0.949378,
		0.850421, -0.511332, -0.123794,
		0.462134, 0.838496, -0.288714,
		30.475168, 33.899323, 44.418480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763290, 33.213562, 44.925159>,  <30.151674, 33.312374, 44.620579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763290, 33.213562, 44.925159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748569, 33.604622, 44.842365>,  <30.739737, 33.839260, 44.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748569, 33.604622, 44.842365>,  <30.763290, 33.213562, 44.925159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748569, 33.604622, 44.842365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366707, 0.205885, 0.907269,
		0.929608, -0.042514, -0.366088,
		-0.036801, 0.977652, -0.206983,
		30.737530, 33.897919, 44.780270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387104, 33.504333, 45.264313>,  <30.763290, 33.213562, 44.925159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387104, 33.504333, 45.264313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171650, 33.833206, 45.190681>,  <31.042377, 34.030529, 45.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171650, 33.833206, 45.190681>,  <31.387104, 33.504333, 45.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171650, 33.833206, 45.190681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258430, 0.369176, 0.892706,
		0.801928, 0.433269, -0.411327,
		-0.538634, 0.822185, -0.184082,
		31.010059, 34.079861, 45.135456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857569, 34.035992, 45.463223>,  <31.387104, 33.504333, 45.264313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857569, 34.035992, 45.463223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473270, 34.146812, 45.469032>,  <31.242691, 34.213306, 45.472519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473270, 34.146812, 45.469032>,  <31.857569, 34.035992, 45.463223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473270, 34.146812, 45.469032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106238, 0.319042, 0.941767,
		0.256289, 0.906340, -0.335952,
		-0.960744, 0.277055, 0.014521,
		31.185047, 34.229931, 45.473389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301498, 34.603687, 45.212704>,  <31.857569, 34.035992, 45.463223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301498, 34.603687, 45.212704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701241, 34.591667, 45.204773>,  <32.941086, 34.584454, 45.200016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701241, 34.591667, 45.204773>,  <32.301498, 34.603687, 45.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701241, 34.591667, 45.204773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014061, 0.181157, -0.983354,
		0.033142, 0.982995, 0.180617,
		0.999352, -0.030051, -0.019825,
		33.001045, 34.582653, 45.198826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453327, 35.088047, 44.661751>,  <32.301498, 34.603687, 45.212704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453327, 35.088047, 44.661751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816788, 34.926723, 44.705006>,  <33.034863, 34.829929, 44.730957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816788, 34.926723, 44.705006>,  <32.453327, 35.088047, 44.661751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816788, 34.926723, 44.705006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235600, 0.281393, -0.930221,
		0.344737, 0.870724, 0.350707,
		0.908652, -0.403308, 0.108136,
		33.089382, 34.805733, 44.737446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987125, 35.536037, 44.405243>,  <32.453327, 35.088047, 44.661751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987125, 35.536037, 44.405243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157543, 35.174179, 44.401184>,  <33.259792, 34.957066, 44.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157543, 35.174179, 44.401184>,  <32.987125, 35.536037, 44.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157543, 35.174179, 44.401184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191290, 0.101034, -0.976320,
		0.884250, 0.414012, 0.216094,
		0.426041, -0.904647, -0.010143,
		33.285355, 34.902786, 44.398140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744213, 35.625748, 44.200275>,  <32.987125, 35.536037, 44.405243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744213, 35.625748, 44.200275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639912, 35.243145, 44.147972>,  <33.577332, 35.013584, 44.116592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639912, 35.243145, 44.147972>,  <33.744213, 35.625748, 44.200275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639912, 35.243145, 44.147972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368470, 0.026579, -0.929260,
		0.892320, -0.290490, 0.345514,
		-0.260757, -0.956509, -0.130754,
		33.561684, 34.956192, 44.108746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280167, 35.296844, 44.037895>,  <33.744213, 35.625748, 44.200275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280167, 35.296844, 44.037895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998245, 35.048054, 43.901428>,  <33.829094, 34.898777, 43.819546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998245, 35.048054, 43.901428>,  <34.280167, 35.296844, 44.037895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998245, 35.048054, 43.901428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506501, -0.104474, -0.855887,
		0.496701, -0.776033, 0.388667,
		-0.704801, -0.621980, -0.341169,
		33.786804, 34.861462, 43.799076>
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
