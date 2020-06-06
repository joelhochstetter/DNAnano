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
	<24.186026, 35.413860, 34.796173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285858, 35.044933, 34.914185>,  <24.345758, 34.823578, 34.984993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285858, 35.044933, 34.914185>,  <24.186026, 35.413860, 34.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285858, 35.044933, 34.914185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836730, 0.358766, 0.413727,
		-0.487433, 0.143600, 0.861271,
		0.249583, -0.922316, 0.295029,
		24.360733, 34.768238, 35.002693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130697, 35.325619, 35.577839>,  <24.186026, 35.413860, 34.796173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130697, 35.325619, 35.577839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404335, 35.095341, 35.398689>,  <24.568518, 34.957176, 35.291199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404335, 35.095341, 35.398689>,  <24.130697, 35.325619, 35.577839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404335, 35.095341, 35.398689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727592, 0.581729, 0.363595,
		0.051224, -0.574604, 0.816827,
		0.684095, -0.575692, -0.447876,
		24.609564, 34.922634, 35.264328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508259, 35.043507, 36.122944>,  <24.130697, 35.325619, 35.577839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508259, 35.043507, 36.122944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716362, 35.046219, 35.781349>,  <24.841223, 35.047848, 35.576393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716362, 35.046219, 35.781349>,  <24.508259, 35.043507, 36.122944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716362, 35.046219, 35.781349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747282, 0.480441, 0.459071,
		0.413403, -0.877001, 0.244883,
		0.520257, 0.006785, -0.853983,
		24.872438, 35.048256, 35.525154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237625, 34.788216, 36.391338>,  <24.508259, 35.043507, 36.122944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237625, 34.788216, 36.391338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283829, 34.956394, 36.031364>,  <25.311550, 35.057301, 35.815380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283829, 34.956394, 36.031364>,  <25.237625, 34.788216, 36.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283829, 34.956394, 36.031364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776937, 0.526250, 0.345584,
		0.618891, -0.739110, -0.265876,
		0.115507, 0.420449, -0.899934,
		25.318481, 35.082527, 35.761383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900957, 34.841206, 36.230362>,  <25.237625, 34.788216, 36.391338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900957, 34.841206, 36.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716778, 35.152344, 36.059273>,  <25.606270, 35.339027, 35.956619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716778, 35.152344, 36.059273>,  <25.900957, 34.841206, 36.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716778, 35.152344, 36.059273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763090, 0.593015, 0.256957,
		0.453518, -0.208075, -0.866618,
		-0.460450, 0.777842, -0.427723,
		25.578642, 35.385696, 35.930954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366812, 35.243851, 35.702778>,  <25.900957, 34.841206, 36.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366812, 35.243851, 35.702778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073786, 35.467865, 35.857548>,  <25.897970, 35.602272, 35.950409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073786, 35.467865, 35.857548>,  <26.366812, 35.243851, 35.702778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073786, 35.467865, 35.857548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680695, 0.603756, 0.414889,
		-0.001259, 0.567313, -0.823501,
		-0.732565, 0.560031, 0.386927,
		25.854015, 35.635876, 35.973625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534655, 36.025707, 35.614403>,  <26.366812, 35.243851, 35.702778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534655, 36.025707, 35.614403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310486, 35.989262, 35.943676>,  <26.175983, 35.967396, 36.141239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310486, 35.989262, 35.943676>,  <26.534655, 36.025707, 35.614403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310486, 35.989262, 35.943676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656226, 0.557518, 0.508469,
		-0.505265, 0.825150, -0.252657,
		-0.560424, -0.091112, 0.823179,
		26.142359, 35.961929, 36.190628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325617, 36.673710, 35.885166>,  <26.534655, 36.025707, 35.614403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325617, 36.673710, 35.885166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341713, 36.412968, 36.188076>,  <26.351370, 36.256523, 36.369820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341713, 36.412968, 36.188076>,  <26.325617, 36.673710, 35.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341713, 36.412968, 36.188076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710625, 0.551455, 0.436931,
		-0.702419, 0.520556, 0.485416,
		0.040238, -0.651858, 0.757273,
		26.353785, 36.217411, 36.415257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282595, 37.102448, 36.458447>,  <26.325617, 36.673710, 35.885166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282595, 37.102448, 36.458447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461222, 36.760925, 36.565472>,  <26.568398, 36.556011, 36.629688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461222, 36.760925, 36.565472>,  <26.282595, 37.102448, 36.458447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461222, 36.760925, 36.565472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746376, 0.520388, 0.414873,
		-0.493458, 0.014434, 0.869650,
		0.446567, -0.853808, 0.267563,
		26.595192, 36.504784, 36.645741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403286, 37.066139, 37.207554>,  <26.282595, 37.102448, 36.458447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403286, 37.066139, 37.207554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671986, 36.828552, 37.030487>,  <26.833204, 36.686001, 36.924248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671986, 36.828552, 37.030487>,  <26.403286, 37.066139, 37.207554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671986, 36.828552, 37.030487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732841, 0.445599, 0.514184,
		-0.108159, -0.669805, 0.734617,
		0.671748, -0.593972, -0.442665,
		26.873510, 36.650360, 36.897686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903767, 36.928837, 37.714050>,  <26.403286, 37.066139, 37.207554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903767, 36.928837, 37.714050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092937, 36.780697, 37.394257>,  <27.206440, 36.691811, 37.202381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092937, 36.780697, 37.394257>,  <26.903767, 36.928837, 37.714050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092937, 36.780697, 37.394257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858799, 0.396617, 0.324283,
		0.196991, -0.839960, 0.505631,
		0.472926, -0.370355, -0.799486,
		27.234816, 36.669590, 37.154411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667730, 36.703388, 38.016857>,  <26.903767, 36.928837, 37.714050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667730, 36.703388, 38.016857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650316, 36.792950, 37.627403>,  <27.639868, 36.846687, 37.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650316, 36.792950, 37.627403>,  <27.667730, 36.703388, 38.016857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650316, 36.792950, 37.627403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877682, 0.474135, 0.069792,
		0.477262, -0.851507, -0.217157,
		-0.043534, 0.223904, -0.973638,
		27.637257, 36.860123, 37.335312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052595, 37.357113, 38.090534>,  <27.667730, 36.703388, 38.016857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052595, 37.357113, 38.090534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339264, 37.381321, 37.812622>,  <28.511265, 37.395847, 37.645874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339264, 37.381321, 37.812622>,  <28.052595, 37.357113, 38.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339264, 37.381321, 37.812622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602442, -0.448168, -0.660462,
		-0.351350, 0.891898, -0.284728,
		0.716671, 0.060522, -0.694781,
		28.554266, 37.399479, 37.604187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736673, 37.626167, 37.550446>,  <28.052595, 37.357113, 38.090534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736673, 37.626167, 37.550446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038828, 37.389408, 37.437984>,  <28.220119, 37.247353, 37.370510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038828, 37.389408, 37.437984>,  <27.736673, 37.626167, 37.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038828, 37.389408, 37.437984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636563, -0.561017, -0.529195,
		0.155502, 0.578716, -0.800567,
		0.755385, -0.591902, -0.281150,
		28.265444, 37.211838, 37.353638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752481, 37.583511, 36.760490>,  <27.736673, 37.626167, 37.550446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752481, 37.583511, 36.760490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933695, 37.280186, 36.947987>,  <28.042423, 37.098190, 37.060482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933695, 37.280186, 36.947987>,  <27.752481, 37.583511, 36.760490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933695, 37.280186, 36.947987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665198, -0.637591, -0.388572,
		0.593523, -0.135766, -0.793283,
		0.453035, -0.758317, 0.468737,
		28.069605, 37.052692, 37.088608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751568, 37.084282, 36.292625>,  <27.752481, 37.583511, 36.760490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751568, 37.084282, 36.292625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772066, 36.895180, 36.644505>,  <27.784365, 36.781719, 36.855633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772066, 36.895180, 36.644505>,  <27.751568, 37.084282, 36.292625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772066, 36.895180, 36.644505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715668, -0.631761, -0.297822,
		0.696558, -0.614313, -0.370710,
		0.051244, -0.472756, 0.879702,
		27.787439, 36.753353, 36.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857918, 36.368519, 36.094044>,  <27.751568, 37.084282, 36.292625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857918, 36.368519, 36.094044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690588, 36.431618, 36.451843>,  <27.590191, 36.469479, 36.666523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690588, 36.431618, 36.451843>,  <27.857918, 36.368519, 36.094044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690588, 36.431618, 36.451843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710712, -0.670079, -0.214203,
		0.565593, -0.725335, 0.392422,
		-0.418322, 0.157747, 0.894495,
		27.565092, 36.478943, 36.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656681, 35.704185, 36.450840>,  <27.857918, 36.368519, 36.094044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656681, 35.704185, 36.450840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413261, 35.978031, 36.611320>,  <27.267210, 36.142338, 36.707607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413261, 35.978031, 36.611320>,  <27.656681, 35.704185, 36.450840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413261, 35.978031, 36.611320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776095, -0.618871, -0.121143,
		0.165356, -0.385092, 0.907943,
		-0.608551, 0.684618, 0.401202,
		27.230696, 36.183418, 36.731682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219473, 35.415501, 36.996662>,  <27.656681, 35.704185, 36.450840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219473, 35.415501, 36.996662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026819, 35.743374, 36.872631>,  <26.911226, 35.940098, 36.798214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026819, 35.743374, 36.872631>,  <27.219473, 35.415501, 36.996662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026819, 35.743374, 36.872631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794017, -0.557891, -0.241444,
		-0.370896, 0.129917, 0.919542,
		-0.481636, 0.819683, -0.310076,
		26.882328, 35.989277, 36.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534943, 35.394024, 37.345783>,  <27.219473, 35.415501, 36.996662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534943, 35.394024, 37.345783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500998, 35.651005, 37.041138>,  <26.480631, 35.805191, 36.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500998, 35.651005, 37.041138>,  <26.534943, 35.394024, 37.345783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500998, 35.651005, 37.041138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891606, -0.390177, -0.229784,
		-0.444790, 0.659560, 0.605923,
		-0.084861, 0.642450, -0.761614,
		26.475540, 35.843739, 36.812653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895908, 35.523205, 37.370384>,  <26.534943, 35.394024, 37.345783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895908, 35.523205, 37.370384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010725, 35.731274, 37.048634>,  <26.079615, 35.856117, 36.855583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010725, 35.731274, 37.048634>,  <25.895908, 35.523205, 37.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010725, 35.731274, 37.048634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957383, 0.127716, -0.259051,
		-0.032020, 0.844456, 0.534666,
		0.287042, 0.520175, -0.804378,
		26.096838, 35.887325, 36.807320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372355, 35.944149, 37.242519>,  <25.895908, 35.523205, 37.370384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372355, 35.944149, 37.242519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584797, 35.925259, 36.904125>,  <25.712261, 35.913925, 36.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584797, 35.925259, 36.904125>,  <25.372355, 35.944149, 37.242519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584797, 35.925259, 36.904125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841551, -0.145578, -0.520191,
		-0.098589, 0.988219, -0.117064,
		0.531105, -0.047230, -0.845989,
		25.744129, 35.911091, 36.650330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043060, 36.381702, 36.698784>,  <25.372355, 35.944149, 37.242519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043060, 36.381702, 36.698784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253458, 36.087051, 36.528744>,  <25.379698, 35.910259, 36.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253458, 36.087051, 36.528744>,  <25.043060, 36.381702, 36.698784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253458, 36.087051, 36.528744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758157, -0.179626, -0.626843,
		0.385392, 0.652007, -0.652962,
		0.525995, -0.736628, -0.425098,
		25.411257, 35.866062, 36.401215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683075, 36.322632, 36.165741>,  <25.043060, 36.381702, 36.698784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683075, 36.322632, 36.165741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919342, 36.001251, 36.195610>,  <25.061102, 35.808422, 36.213531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919342, 36.001251, 36.195610>,  <24.683075, 36.322632, 36.165741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919342, 36.001251, 36.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604685, -0.502009, -0.618339,
		0.534294, 0.320078, -0.782356,
		0.590666, -0.803453, 0.074674,
		25.096542, 35.760216, 36.218014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190329, 36.048603, 35.767609>,  <24.683075, 36.322632, 36.165741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190329, 36.048603, 35.767609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566765, 35.922749, 35.718040>,  <25.792625, 35.847237, 35.688301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566765, 35.922749, 35.718040>,  <25.190329, 36.048603, 35.767609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566765, 35.922749, 35.718040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311595, -0.664471, -0.679254,
		0.131379, 0.677851, -0.723366,
		0.941089, -0.314637, -0.123918,
		25.849091, 35.828358, 35.680866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392298, 36.147930, 35.057800>,  <25.190329, 36.048603, 35.767609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392298, 36.147930, 35.057800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534828, 35.828636, 35.252056>,  <25.620346, 35.637058, 35.368610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534828, 35.828636, 35.252056>,  <25.392298, 36.147930, 35.057800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534828, 35.828636, 35.252056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535123, -0.600415, -0.594260,
		0.765946, -0.048124, -0.641101,
		0.356328, -0.798239, 0.485638,
		25.641727, 35.589165, 35.397747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481674, 35.637325, 34.574715>,  <25.392298, 36.147930, 35.057800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481674, 35.637325, 34.574715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456253, 35.456165, 34.930431>,  <25.441000, 35.347469, 35.143860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456253, 35.456165, 34.930431>,  <25.481674, 35.637325, 34.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456253, 35.456165, 34.930431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461219, -0.776893, -0.428619,
		0.885007, -0.437398, -0.159515,
		-0.063551, -0.452902, 0.889292,
		25.437187, 35.320293, 35.197220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649149, 34.837181, 34.528446>,  <25.481674, 35.637325, 34.574715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649149, 34.837181, 34.528446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422892, 34.898373, 34.852581>,  <25.287138, 34.935089, 35.047062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422892, 34.898373, 34.852581>,  <25.649149, 34.837181, 34.528446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422892, 34.898373, 34.852581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609925, -0.738956, -0.286244,
		0.555014, -0.656157, 0.511290,
		-0.565642, 0.152979, 0.810338,
		25.253199, 34.944267, 35.095684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498951, 34.184357, 34.751659>,  <25.649149, 34.837181, 34.528446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498951, 34.184357, 34.751659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219105, 34.416355, 34.918583>,  <25.051197, 34.555553, 35.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219105, 34.416355, 34.918583>,  <25.498951, 34.184357, 34.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219105, 34.416355, 34.918583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705929, -0.651366, -0.278185,
		0.110473, -0.489211, 0.865141,
		-0.699614, 0.579996, 0.417307,
		25.009220, 34.590355, 35.043774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888475, 33.768883, 35.273899>,  <25.498951, 34.184357, 34.751659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888475, 33.768883, 35.273899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941149, 33.415089, 35.094860>,  <25.972754, 33.202812, 34.987438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941149, 33.415089, 35.094860>,  <25.888475, 33.768883, 35.273899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941149, 33.415089, 35.094860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485474, -0.451213, 0.748814,
		-0.864277, 0.118688, -0.488813,
		0.131683, -0.884489, -0.447593,
		25.980654, 33.149742, 34.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298731, 33.502892, 35.392334>,  <25.888475, 33.768883, 35.273899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298731, 33.502892, 35.392334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507687, 33.173542, 35.303650>,  <25.633060, 32.975929, 35.250439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507687, 33.173542, 35.303650>,  <25.298731, 33.502892, 35.392334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507687, 33.173542, 35.303650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418791, -0.474228, 0.774417,
		-0.742780, -0.311699, -0.592556,
		0.522391, -0.823378, -0.221710,
		25.664404, 32.926529, 35.237137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803656, 32.919910, 35.253098>,  <25.298731, 33.502892, 35.392334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803656, 32.919910, 35.253098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155750, 32.760651, 35.356369>,  <25.367008, 32.665096, 35.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155750, 32.760651, 35.356369>,  <24.803656, 32.919910, 35.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155750, 32.760651, 35.356369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424030, -0.415709, 0.804602,
		-0.213024, -0.817718, -0.534750,
		0.880238, -0.398149, 0.258181,
		25.419821, 32.641205, 35.433823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749237, 32.157269, 35.247704>,  <24.803656, 32.919910, 35.253098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749237, 32.157269, 35.247704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060589, 32.264545, 35.474754>,  <25.247400, 32.328911, 35.610985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060589, 32.264545, 35.474754>,  <24.749237, 32.157269, 35.247704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060589, 32.264545, 35.474754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344597, -0.573253, 0.743394,
		0.524767, -0.774243, -0.353788,
		0.778378, 0.268194, 0.567626,
		25.294102, 32.345005, 35.645042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987207, 31.459347, 35.576889>,  <24.749237, 32.157269, 35.247704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987207, 31.459347, 35.576889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128683, 31.770290, 35.784973>,  <25.213568, 31.956856, 35.909824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128683, 31.770290, 35.784973>,  <24.987207, 31.459347, 35.576889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128683, 31.770290, 35.784973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369410, -0.394859, 0.841203,
		0.859326, -0.489694, 0.147507,
		0.353688, 0.777358, 0.520211,
		25.234789, 32.003498, 35.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630136, 31.243931, 36.094059>,  <24.987207, 31.459347, 35.576889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630136, 31.243931, 36.094059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379103, 31.534237, 36.206772>,  <25.228483, 31.708420, 36.274399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379103, 31.534237, 36.206772>,  <25.630136, 31.243931, 36.094059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379103, 31.534237, 36.206772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255069, -0.533629, 0.806338,
		0.735580, 0.434171, 0.520017,
		-0.627584, 0.725766, 0.281783,
		25.190828, 31.751966, 36.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948088, 31.306231, 36.795135>,  <25.630136, 31.243931, 36.094059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948088, 31.306231, 36.795135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842859, 31.690929, 36.764591>,  <25.779722, 31.921749, 36.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842859, 31.690929, 36.764591>,  <25.948088, 31.306231, 36.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842859, 31.690929, 36.764591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435157, -0.047647, 0.899093,
		0.861064, 0.269756, 0.431047,
		-0.263073, 0.961749, -0.076359,
		25.763937, 31.979454, 36.741684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319487, 31.736469, 37.309868>,  <25.948088, 31.306231, 36.795135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319487, 31.736469, 37.309868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966885, 31.888285, 37.197514>,  <25.755323, 31.979374, 37.130100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966885, 31.888285, 37.197514>,  <26.319487, 31.736469, 37.309868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966885, 31.888285, 37.197514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306188, -0.006637, 0.951948,
		0.359436, 0.925152, 0.122060,
		-0.881507, 0.379538, -0.280885,
		25.702433, 32.002148, 37.113247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070560, 32.268097, 37.793133>,  <26.319487, 31.736469, 37.309868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070560, 32.268097, 37.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726404, 32.156776, 37.622360>,  <25.519911, 32.089985, 37.519897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726404, 32.156776, 37.622360>,  <26.070560, 32.268097, 37.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726404, 32.156776, 37.622360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430123, -0.052779, 0.901226,
		-0.273350, 0.959041, -0.074295,
		-0.860392, -0.278306, -0.426933,
		25.468287, 32.073284, 37.494282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525822, 32.697964, 38.017395>,  <26.070560, 32.268097, 37.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525822, 32.697964, 38.017395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380312, 32.344322, 37.900078>,  <25.293007, 32.132137, 37.829689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380312, 32.344322, 37.900078>,  <25.525822, 32.697964, 38.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380312, 32.344322, 37.900078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315162, -0.179476, 0.931913,
		-0.876551, 0.431441, -0.213349,
		-0.363774, -0.884108, -0.293294,
		25.271179, 32.079090, 37.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292826, 32.508831, 38.691288>,  <25.525822, 32.697964, 38.017395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292826, 32.508831, 38.691288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903816, 32.416027, 38.683628>,  <24.670410, 32.360344, 38.679031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903816, 32.416027, 38.683628>,  <25.292826, 32.508831, 38.691288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903816, 32.416027, 38.683628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126950, -0.459574, -0.879019,
		0.195138, -0.857300, 0.476401,
		-0.972525, -0.232010, -0.019154,
		24.612059, 32.346424, 38.677883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320259, 31.807507, 38.541695>,  <25.292826, 32.508831, 38.691288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320259, 31.807507, 38.541695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967916, 31.953411, 38.421001>,  <24.756512, 32.040955, 38.348587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967916, 31.953411, 38.421001>,  <25.320259, 31.807507, 38.541695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967916, 31.953411, 38.421001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103965, -0.472763, -0.875035,
		-0.461822, -0.802151, 0.378515,
		-0.880859, 0.364758, -0.301728,
		24.703659, 32.062840, 38.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034622, 31.333151, 38.144409>,  <25.320259, 31.807507, 38.541695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034622, 31.333151, 38.144409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884699, 31.690584, 38.045593>,  <24.794744, 31.905045, 37.986301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884699, 31.690584, 38.045593>,  <25.034622, 31.333151, 38.144409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884699, 31.690584, 38.045593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276051, -0.146816, -0.949863,
		-0.885051, -0.424214, -0.191646,
		-0.374808, 0.893581, -0.247045,
		24.772257, 31.958658, 37.971481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559368, 31.251768, 37.479156>,  <25.034622, 31.333151, 38.144409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559368, 31.251768, 37.479156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717747, 31.615976, 37.526794>,  <24.812775, 31.834501, 37.555378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717747, 31.615976, 37.526794>,  <24.559368, 31.251768, 37.479156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717747, 31.615976, 37.526794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258326, 0.014006, -0.965956,
		-0.881189, 0.413231, -0.229665,
		0.395947, 0.910519, 0.119090,
		24.836531, 31.889132, 37.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327641, 31.726379, 36.871944>,  <24.559368, 31.251768, 37.479156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327641, 31.726379, 36.871944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667423, 31.848507, 37.044086>,  <24.871292, 31.921783, 37.147369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667423, 31.848507, 37.044086>,  <24.327641, 31.726379, 36.871944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667423, 31.848507, 37.044086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437830, 0.047344, -0.897810,
		-0.294495, 0.951072, -0.093462,
		0.849457, 0.305321, 0.430351,
		24.922260, 31.940104, 37.173191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472370, 32.418510, 36.661160>,  <24.327641, 31.726379, 36.871944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472370, 32.418510, 36.661160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820810, 32.263279, 36.781548>,  <25.029875, 32.170139, 36.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820810, 32.263279, 36.781548>,  <24.472370, 32.418510, 36.661160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820810, 32.263279, 36.781548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430986, 0.310268, -0.847340,
		0.235450, 0.867832, 0.437529,
		0.871100, -0.388075, 0.300971,
		25.082140, 32.146858, 36.871838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139309, 32.912018, 36.661095>,  <24.472370, 32.418510, 36.661160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139309, 32.912018, 36.661095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263109, 32.536942, 36.597912>,  <25.337389, 32.311897, 36.560001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263109, 32.536942, 36.597912>,  <25.139309, 32.912018, 36.661095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263109, 32.536942, 36.597912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516036, 0.305150, -0.800369,
		0.798697, 0.166203, 0.578325,
		0.309500, -0.937688, -0.157956,
		25.355959, 32.255634, 36.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929842, 32.873173, 36.625744>,  <25.139309, 32.912018, 36.661095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929842, 32.873173, 36.625744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721958, 32.599537, 36.421032>,  <25.597227, 32.435356, 36.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721958, 32.599537, 36.421032>,  <25.929842, 32.873173, 36.625744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721958, 32.599537, 36.421032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376701, 0.354168, -0.855956,
		0.766810, -0.637637, 0.073635,
		-0.519710, -0.684094, -0.511778,
		25.566046, 32.394310, 36.267498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405891, 32.681644, 36.216053>,  <25.929842, 32.873173, 36.625744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405891, 32.681644, 36.216053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065283, 32.547703, 36.054668>,  <25.860918, 32.467339, 35.957836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065283, 32.547703, 36.054668>,  <26.405891, 32.681644, 36.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065283, 32.547703, 36.054668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378650, 0.139535, -0.914961,
		0.362677, -0.931881, 0.007976,
		-0.851522, -0.334855, -0.403463,
		25.809826, 32.447247, 35.933628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537842, 32.027607, 35.726482>,  <26.405891, 32.681644, 36.216053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537842, 32.027607, 35.726482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213379, 32.243134, 35.635532>,  <26.018702, 32.372452, 35.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213379, 32.243134, 35.635532>,  <26.537842, 32.027607, 35.726482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213379, 32.243134, 35.635532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315451, 0.075724, -0.945916,
		-0.492461, -0.839010, -0.231396,
		-0.811155, 0.538821, -0.227376,
		25.970032, 32.404781, 35.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433178, 31.937828, 35.033195>,  <26.537842, 32.027607, 35.726482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433178, 31.937828, 35.033195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194475, 32.253696, 35.090183>,  <26.051254, 32.443218, 35.124378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194475, 32.253696, 35.090183>,  <26.433178, 31.937828, 35.033195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194475, 32.253696, 35.090183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239557, 0.344783, -0.907599,
		-0.765830, -0.507484, -0.394923,
		-0.596756, 0.789674, 0.142474,
		26.015448, 32.490597, 35.132927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094378, 31.977158, 34.396019>,  <26.433178, 31.937828, 35.033195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094378, 31.977158, 34.396019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056108, 32.329762, 34.580967>,  <26.033148, 32.541325, 34.691936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056108, 32.329762, 34.580967>,  <26.094378, 31.977158, 34.396019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056108, 32.329762, 34.580967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322221, 0.466919, -0.823505,
		-0.941818, 0.070199, -0.328712,
		-0.095673, 0.881509, 0.462372,
		26.027407, 32.594215, 34.719677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630634, 32.636253, 34.043484>,  <26.094378, 31.977158, 34.396019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630634, 32.636253, 34.043484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950289, 32.744164, 34.258369>,  <26.142082, 32.808910, 34.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950289, 32.744164, 34.258369>,  <25.630634, 32.636253, 34.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950289, 32.744164, 34.258369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402745, 0.423183, -0.811611,
		-0.446294, 0.864949, 0.229531,
		0.799136, 0.269774, 0.537218,
		26.190029, 32.825096, 34.419537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992167, 33.345444, 33.864582>,  <25.630634, 32.636253, 34.043484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992167, 33.345444, 33.864582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282356, 33.125267, 34.029846>,  <26.456470, 32.993160, 34.129005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282356, 33.125267, 34.029846>,  <25.992167, 33.345444, 33.864582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282356, 33.125267, 34.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598647, 0.208494, -0.773403,
		0.339569, 0.808423, 0.480776,
		0.725476, -0.550439, 0.413161,
		26.499998, 32.960136, 34.153793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452700, 33.749294, 34.191681>,  <25.992167, 33.345444, 33.864582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452700, 33.749294, 34.191681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630257, 33.723339, 34.549171>,  <26.736790, 33.707767, 34.763668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630257, 33.723339, 34.549171>,  <26.452700, 33.749294, 34.191681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630257, 33.723339, 34.549171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861189, -0.244717, -0.445497,
		0.247617, 0.967421, -0.052747,
		0.443891, -0.064887, 0.893728,
		26.763424, 33.703873, 34.817291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067188, 34.094200, 34.150478>,  <26.452700, 33.749294, 34.191681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067188, 34.094200, 34.150478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089546, 33.816231, 34.437241>,  <27.102961, 33.649448, 34.609299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089546, 33.816231, 34.437241>,  <27.067188, 34.094200, 34.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089546, 33.816231, 34.437241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877389, -0.308498, -0.367448,
		0.476513, 0.649546, 0.592474,
		0.055897, -0.694924, 0.716907,
		27.106316, 33.607754, 34.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696716, 34.223850, 34.594666>,  <27.067188, 34.094200, 34.150478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696716, 34.223850, 34.594666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614693, 33.837513, 34.531296>,  <27.565479, 33.605709, 34.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614693, 33.837513, 34.531296>,  <27.696716, 34.223850, 34.594666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614693, 33.837513, 34.531296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950573, -0.157968, -0.267316,
		0.233158, -0.205414, 0.950496,
		-0.205059, -0.965842, -0.158429,
		27.553175, 33.547760, 34.483768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155613, 33.696812, 34.946182>,  <27.696716, 34.223850, 34.594666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155613, 33.696812, 34.946182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012691, 33.561451, 34.597973>,  <27.926939, 33.480236, 34.389046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012691, 33.561451, 34.597973>,  <28.155613, 33.696812, 34.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012691, 33.561451, 34.597973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932102, -0.188403, -0.309338,
		-0.059329, -0.921949, 0.382741,
		-0.357303, -0.338401, -0.870528,
		27.905500, 33.459930, 34.336815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338764, 32.975574, 34.719772>,  <28.155613, 33.696812, 34.946182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338764, 32.975574, 34.719772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277357, 33.177044, 34.379715>,  <28.240513, 33.297928, 34.175682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277357, 33.177044, 34.379715>,  <28.338764, 32.975574, 34.719772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277357, 33.177044, 34.379715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846783, -0.376376, -0.375898,
		-0.509304, -0.777594, -0.368724,
		-0.153518, 0.503675, -0.850143,
		28.231302, 33.328148, 34.124672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465567, 32.440159, 34.128693>,  <28.338764, 32.975574, 34.719772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465567, 32.440159, 34.128693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512201, 32.807709, 33.977921>,  <28.540182, 33.028240, 33.887459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512201, 32.807709, 33.977921>,  <28.465567, 32.440159, 34.128693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512201, 32.807709, 33.977921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783069, -0.318489, -0.534198,
		-0.610910, -0.232883, -0.756674,
		0.116586, 0.918875, -0.376931,
		28.547176, 33.083370, 33.864841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032164, 32.944595, 34.328907>,  <28.465567, 32.440159, 34.128693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032164, 32.944595, 34.328907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867174, 32.900253, 33.967228>,  <28.768181, 32.873650, 33.750221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867174, 32.900253, 33.967228>,  <29.032164, 32.944595, 34.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867174, 32.900253, 33.967228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590093, 0.788693, 0.172493,
		0.694014, 0.604711, -0.390728,
		-0.412473, -0.110853, -0.904200,
		28.743433, 32.866997, 33.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410692, 33.515163, 34.188602>,  <29.032164, 32.944595, 34.328907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410692, 33.515163, 34.188602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610420, 33.262699, 33.951176>,  <29.730257, 33.111221, 33.808720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610420, 33.262699, 33.951176>,  <29.410692, 33.515163, 34.188602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610420, 33.262699, 33.951176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504283, 0.768792, -0.393266,
		0.704542, -0.102961, 0.702154,
		0.499319, -0.631156, -0.593567,
		29.760216, 33.073353, 33.773106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201334, 33.664200, 34.196915>,  <29.410692, 33.515163, 34.188602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201334, 33.664200, 34.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081343, 33.527744, 33.840569>,  <30.009348, 33.445873, 33.626762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081343, 33.527744, 33.840569>,  <30.201334, 33.664200, 34.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081343, 33.527744, 33.840569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371888, 0.818168, -0.438521,
		0.878472, -0.462849, -0.118568,
		-0.299977, -0.341135, -0.890865,
		29.991350, 33.425404, 33.573311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308241, 34.253952, 33.892117>,  <30.201334, 33.664200, 34.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308241, 34.253952, 33.892117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157568, 34.048977, 33.583439>,  <30.067163, 33.925991, 33.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157568, 34.048977, 33.583439>,  <30.308241, 34.253952, 33.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157568, 34.048977, 33.583439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225131, 0.757439, -0.612863,
		0.898569, -0.404588, -0.169948,
		-0.376683, -0.512439, -0.771697,
		30.044563, 33.895245, 33.351929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777044, 34.384769, 33.367809>,  <30.308241, 34.253952, 33.892117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777044, 34.384769, 33.367809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440176, 34.297733, 33.170467>,  <30.238054, 34.245510, 33.052063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440176, 34.297733, 33.170467>,  <30.777044, 34.384769, 33.367809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440176, 34.297733, 33.170467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291494, 0.586016, -0.756053,
		0.453625, -0.780537, -0.430100,
		-0.842173, -0.217593, -0.493354,
		30.187525, 34.232456, 33.022461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983427, 34.223343, 32.655712>,  <30.777044, 34.384769, 33.367809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983427, 34.223343, 32.655712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603340, 34.347534, 32.645210>,  <30.375288, 34.422050, 32.638908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603340, 34.347534, 32.645210>,  <30.983427, 34.223343, 32.655712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603340, 34.347534, 32.645210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216859, 0.598489, -0.771222,
		-0.223736, -0.738522, -0.636025,
		-0.950218, 0.310478, -0.026252,
		30.318275, 34.440678, 32.637333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781540, 34.146095, 31.991776>,  <30.983427, 34.223343, 32.655712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781540, 34.146095, 31.991776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558243, 34.452511, 32.119247>,  <30.424265, 34.636360, 32.195732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558243, 34.452511, 32.119247>,  <30.781540, 34.146095, 31.991776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558243, 34.452511, 32.119247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145845, 0.468724, -0.871222,
		-0.816759, -0.439874, -0.373383,
		-0.558241, 0.766034, 0.318681,
		30.390770, 34.682320, 32.214851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114971, 34.352795, 31.569136>,  <30.781540, 34.146095, 31.991776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114971, 34.352795, 31.569136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323311, 34.647015, 31.742428>,  <30.448315, 34.823547, 31.846403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323311, 34.647015, 31.742428>,  <30.114971, 34.352795, 31.569136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323311, 34.647015, 31.742428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335869, 0.289995, -0.896156,
		-0.784798, 0.612271, -0.096003,
		0.520849, 0.735546, 0.433230,
		30.479567, 34.867680, 31.872396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264593, 34.721481, 31.040907>,  <30.114971, 34.352795, 31.569136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264593, 34.721481, 31.040907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517567, 34.888897, 31.301630>,  <30.669350, 34.989346, 31.458063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517567, 34.888897, 31.301630>,  <30.264593, 34.721481, 31.040907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517567, 34.888897, 31.301630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535591, 0.371635, -0.758307,
		-0.559616, 0.828680, 0.010867,
		0.632433, 0.418541, 0.651807,
		30.707296, 35.014458, 31.497171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247381, 35.495449, 30.915165>,  <30.264593, 34.721481, 31.040907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247381, 35.495449, 30.915165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602562, 35.410934, 31.078579>,  <30.815670, 35.360226, 31.176628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602562, 35.410934, 31.078579>,  <30.247381, 35.495449, 30.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602562, 35.410934, 31.078579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452210, 0.238914, -0.859317,
		0.083954, 0.947776, 0.307689,
		0.887951, -0.211283, 0.408536,
		30.868948, 35.347549, 31.201139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682022, 35.953030, 30.626307>,  <30.247381, 35.495449, 30.915165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682022, 35.953030, 30.626307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944613, 35.700500, 30.791456>,  <31.102167, 35.548981, 30.890547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944613, 35.700500, 30.791456>,  <30.682022, 35.953030, 30.626307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944613, 35.700500, 30.791456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556880, 0.036397, -0.829795,
		0.508844, 0.774663, 0.375466,
		0.656477, -0.631326, 0.412874,
		31.141556, 35.511101, 30.915318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252672, 36.372448, 30.504215>,  <30.682022, 35.953030, 30.626307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252672, 36.372448, 30.504215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367401, 35.992611, 30.554819>,  <31.436239, 35.764709, 30.585182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367401, 35.992611, 30.554819>,  <31.252672, 36.372448, 30.504215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367401, 35.992611, 30.554819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467456, 0.023463, -0.883705,
		0.836192, 0.312606, 0.450623,
		0.286824, -0.949593, 0.126509,
		31.453449, 35.707733, 30.592772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992382, 36.359901, 30.543526>,  <31.252672, 36.372448, 30.504215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992382, 36.359901, 30.543526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876247, 35.999718, 30.413988>,  <31.806566, 35.783607, 30.336266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876247, 35.999718, 30.413988>,  <31.992382, 36.359901, 30.543526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876247, 35.999718, 30.413988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455538, 0.167556, -0.874306,
		0.841540, -0.401365, 0.361547,
		-0.290336, -0.900462, -0.323842,
		31.789146, 35.729580, 30.316835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486729, 36.031639, 30.269918>,  <31.992382, 36.359901, 30.543526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486729, 36.031639, 30.269918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177326, 35.849789, 30.093279>,  <31.991686, 35.740677, 29.987295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177326, 35.849789, 30.093279>,  <32.486729, 36.031639, 30.269918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177326, 35.849789, 30.093279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521277, -0.060020, -0.851274,
		0.360507, -0.888657, 0.283413,
		-0.773501, -0.454627, -0.441599,
		31.945276, 35.713402, 29.960798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886971, 35.787407, 29.749683>,  <32.486729, 36.031639, 30.269918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886971, 35.787407, 29.749683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511829, 35.702621, 29.639774>,  <32.286743, 35.651749, 29.573828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511829, 35.702621, 29.639774>,  <32.886971, 35.787407, 29.749683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511829, 35.702621, 29.639774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267421, 0.063193, -0.961506,
		0.221168, -0.975233, -0.002582,
		-0.937855, -0.211963, -0.274774,
		32.230473, 35.639034, 29.557343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857300, 35.127155, 29.399954>,  <32.886971, 35.787407, 29.749683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857300, 35.127155, 29.399954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554497, 35.355072, 29.272028>,  <32.372814, 35.491821, 29.195272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554497, 35.355072, 29.272028>,  <32.857300, 35.127155, 29.399954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554497, 35.355072, 29.272028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369877, -0.029805, -0.928602,
		-0.538641, -0.821249, -0.188190,
		-0.757005, 0.569791, -0.319816,
		32.327396, 35.526009, 29.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710602, 34.786713, 28.642551>,  <32.857300, 35.127155, 29.399954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710602, 34.786713, 28.642551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519871, 35.137264, 28.669682>,  <32.405430, 35.347595, 28.685959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519871, 35.137264, 28.669682>,  <32.710602, 34.786713, 28.642551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519871, 35.137264, 28.669682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478667, 0.323606, -0.816184,
		-0.737232, -0.356715, -0.573797,
		-0.476830, 0.876375, 0.067826,
		32.376823, 35.400177, 28.690029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493847, 35.041691, 27.962166>,  <32.710602, 34.786713, 28.642551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493847, 35.041691, 27.962166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499840, 35.372543, 28.186888>,  <32.503433, 35.571056, 28.321720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499840, 35.372543, 28.186888>,  <32.493847, 35.041691, 27.962166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499840, 35.372543, 28.186888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416262, 0.505705, -0.755638,
		-0.909121, 0.245176, -0.336730,
		0.014979, 0.827134, 0.561805,
		32.504333, 35.620682, 28.355429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334644, 35.496983, 27.521519>,  <32.493847, 35.041691, 27.962166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334644, 35.496983, 27.521519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454887, 35.750828, 27.806307>,  <32.527035, 35.903133, 27.977180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454887, 35.750828, 27.806307>,  <32.334644, 35.496983, 27.521519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454887, 35.750828, 27.806307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091541, 0.723852, -0.683855,
		-0.949344, 0.270747, 0.159503,
		0.300609, 0.634613, 0.711969,
		32.545071, 35.941212, 28.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976236, 36.154465, 27.460224>,  <32.334644, 35.496983, 27.521519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976236, 36.154465, 27.460224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320946, 36.226658, 27.649864>,  <32.527771, 36.269974, 27.763647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320946, 36.226658, 27.649864>,  <31.976236, 36.154465, 27.460224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320946, 36.226658, 27.649864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121634, 0.833790, -0.538516,
		-0.492493, 0.521746, 0.696586,
		0.861775, 0.180487, 0.474098,
		32.579479, 36.280804, 27.792093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980202, 36.798508, 27.416828>,  <31.976236, 36.154465, 27.460224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980202, 36.798508, 27.416828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360146, 36.702015, 27.496399>,  <32.588112, 36.644119, 27.544142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360146, 36.702015, 27.496399>,  <31.980202, 36.798508, 27.416828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360146, 36.702015, 27.496399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306899, 0.841004, -0.445562,
		-0.059817, 0.484272, 0.872870,
		0.949861, -0.241231, 0.198929,
		32.645103, 36.629646, 27.556078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297741, 37.385056, 27.530245>,  <31.980202, 36.798508, 27.416828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297741, 37.385056, 27.530245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614422, 37.161320, 27.431978>,  <32.804428, 37.027077, 27.373018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614422, 37.161320, 27.431978>,  <32.297741, 37.385056, 27.530245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614422, 37.161320, 27.431978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366132, 0.756334, -0.542130,
		0.489041, 0.339257, 0.803581,
		0.791698, -0.559341, -0.245666,
		32.851933, 36.993519, 27.358278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889832, 37.672535, 27.791965>,  <32.297741, 37.385056, 27.530245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889832, 37.672535, 27.791965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005238, 37.440575, 27.487211>,  <33.074482, 37.301399, 27.304358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005238, 37.440575, 27.487211>,  <32.889832, 37.672535, 27.791965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005238, 37.440575, 27.487211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563266, 0.746265, -0.354711,
		0.774267, -0.326807, 0.541948,
		0.288515, -0.579902, -0.761888,
		33.091793, 37.266605, 27.258644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591808, 37.687954, 27.849585>,  <32.889832, 37.672535, 27.791965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591808, 37.687954, 27.849585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563038, 37.535858, 27.480749>,  <33.545776, 37.444603, 27.259447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563038, 37.535858, 27.480749>,  <33.591808, 37.687954, 27.849585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563038, 37.535858, 27.480749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722279, 0.617703, -0.311055,
		0.687851, -0.688378, 0.230209,
		-0.071923, -0.380235, -0.922089,
		33.541462, 37.421787, 27.204123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222595, 37.528843, 27.681980>,  <33.591808, 37.687954, 27.849585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222595, 37.528843, 27.681980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031384, 37.569962, 27.333057>,  <33.916656, 37.594631, 27.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031384, 37.569962, 27.333057>,  <34.222595, 37.528843, 27.681980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031384, 37.569962, 27.333057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721594, 0.612194, -0.323296,
		0.500789, -0.783997, -0.366823,
		-0.478030, 0.102794, -0.872308,
		33.887974, 37.600800, 27.071365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746021, 37.620457, 27.147860>,  <34.222595, 37.528843, 27.681980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746021, 37.620457, 27.147860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408798, 37.772705, 26.995867>,  <34.206467, 37.864056, 26.904671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408798, 37.772705, 26.995867>,  <34.746021, 37.620457, 27.147860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408798, 37.772705, 26.995867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478595, 0.853247, -0.207163,
		0.245366, -0.356506, -0.901498,
		-0.843055, 0.380622, -0.379980,
		34.155880, 37.886890, 26.881872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902657, 37.945450, 26.484381>,  <34.746021, 37.620457, 27.147860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902657, 37.945450, 26.484381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558292, 38.120594, 26.588013>,  <34.351673, 38.225681, 26.650192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558292, 38.120594, 26.588013>,  <34.902657, 37.945450, 26.484381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558292, 38.120594, 26.588013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347736, 0.878133, -0.328574,
		-0.371377, -0.192779, -0.908249,
		-0.860906, 0.437856, 0.259082,
		34.300022, 38.251949, 26.665737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709816, 38.345398, 25.888680>,  <34.902657, 37.945450, 26.484381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709816, 38.345398, 25.888680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512032, 38.502277, 26.198956>,  <34.393360, 38.596405, 26.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512032, 38.502277, 26.198956>,  <34.709816, 38.345398, 25.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512032, 38.502277, 26.198956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288435, 0.915883, -0.279219,
		-0.819949, 0.085674, -0.565989,
		-0.494458, 0.392196, 0.775689,
		34.363693, 38.619938, 26.431662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556183, 38.906448, 25.537943>,  <34.709816, 38.345398, 25.888680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556183, 38.906448, 25.537943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467075, 38.970936, 25.922522>,  <34.413609, 39.009628, 26.153269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467075, 38.970936, 25.922522>,  <34.556183, 38.906448, 25.537943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467075, 38.970936, 25.922522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177367, 0.976473, -0.122641,
		-0.958600, 0.143208, -0.246126,
		-0.222772, 0.161218, 0.961447,
		34.400242, 39.019302, 26.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213703, 39.499142, 25.548561>,  <34.556183, 38.906448, 25.537943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213703, 39.499142, 25.548561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347202, 39.485218, 25.925369>,  <34.427299, 39.476864, 26.151455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347202, 39.485218, 25.925369>,  <34.213703, 39.499142, 25.548561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347202, 39.485218, 25.925369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293911, 0.953346, -0.068904,
		-0.895674, 0.299867, 0.328403,
		0.333743, -0.034806, 0.942021,
		34.447327, 39.474777, 26.207975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982037, 40.086472, 25.999588>,  <34.213703, 39.499142, 25.548561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982037, 40.086472, 25.999588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321926, 39.954185, 26.163832>,  <34.525860, 39.874813, 26.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321926, 39.954185, 26.163832>,  <33.982037, 40.086472, 25.999588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321926, 39.954185, 26.163832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349075, 0.936550, 0.031933,
		-0.395119, 0.116200, 0.911251,
		0.849722, -0.330712, 0.410611,
		34.576843, 39.854973, 26.287016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135384, 40.598747, 26.551413>,  <33.982037, 40.086472, 25.999588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135384, 40.598747, 26.551413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472725, 40.410217, 26.448181>,  <34.675129, 40.297100, 26.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472725, 40.410217, 26.448181>,  <34.135384, 40.598747, 26.551413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472725, 40.410217, 26.448181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465363, 0.880757, -0.087773,
		0.268673, -0.046076, 0.962129,
		0.843358, -0.471321, -0.258078,
		34.725731, 40.268822, 26.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664650, 41.050911, 26.814144>,  <34.135384, 40.598747, 26.551413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664650, 41.050911, 26.814144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864113, 40.803528, 26.571213>,  <34.983791, 40.655098, 26.425453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864113, 40.803528, 26.571213>,  <34.664650, 41.050911, 26.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864113, 40.803528, 26.571213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690938, 0.706682, -0.152332,
		0.523400, -0.343667, 0.779708,
		0.498655, -0.618461, -0.607330,
		35.013710, 40.617989, 26.389013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389679, 41.159145, 27.011076>,  <34.664650, 41.050911, 26.814144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389679, 41.159145, 27.011076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352459, 41.010208, 26.641708>,  <35.330128, 40.920845, 26.420088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352459, 41.010208, 26.641708>,  <35.389679, 41.159145, 27.011076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352459, 41.010208, 26.641708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710333, 0.625062, -0.323612,
		0.697689, -0.686046, 0.206328,
		-0.093045, -0.372342, -0.923420,
		35.324547, 40.898506, 26.364683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041428, 41.195423, 26.768932>,  <35.389679, 41.159145, 27.011076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041428, 41.195423, 26.768932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826939, 41.163570, 26.432808>,  <35.698246, 41.144459, 26.231133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826939, 41.163570, 26.432808>,  <36.041428, 41.195423, 26.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826939, 41.163570, 26.432808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620238, 0.638068, -0.456260,
		0.572510, -0.765851, -0.292754,
		-0.536224, -0.079636, -0.840310,
		35.666073, 41.139679, 26.180716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538383, 41.338291, 26.240679>,  <36.041428, 41.195423, 26.768932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538383, 41.338291, 26.240679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189465, 41.407085, 26.057587>,  <35.980114, 41.448360, 25.947731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189465, 41.407085, 26.057587>,  <36.538383, 41.338291, 26.240679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189465, 41.407085, 26.057587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396039, 0.797531, -0.455080,
		0.286787, -0.578244, -0.763798,
		-0.872300, 0.171982, -0.457729,
		35.927776, 41.458679, 25.920267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731861, 41.356838, 25.484299>,  <36.538383, 41.338291, 26.240679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731861, 41.356838, 25.484299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369453, 41.521709, 25.522762>,  <36.152008, 41.620632, 25.545841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369453, 41.521709, 25.522762>,  <36.731861, 41.356838, 25.484299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369453, 41.521709, 25.522762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275336, 0.746533, -0.605705,
		-0.321444, -0.522302, -0.789857,
		-0.906015, 0.412176, 0.096160,
		36.097649, 41.645363, 25.551611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477577, 41.522976, 24.803289>,  <36.731861, 41.356838, 25.484299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477577, 41.522976, 24.803289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300510, 41.751244, 25.079950>,  <36.194271, 41.888203, 25.245947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300510, 41.751244, 25.079950>,  <36.477577, 41.522976, 24.803289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300510, 41.751244, 25.079950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275174, 0.820580, -0.500927,
		-0.853418, -0.031421, -0.520279,
		-0.442670, 0.570667, 0.691651,
		36.167709, 41.922443, 25.287445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864784, 41.866093, 24.502951>,  <36.477577, 41.522976, 24.803289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864784, 41.866093, 24.502951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001610, 42.086647, 24.807308>,  <36.083706, 42.218979, 24.989923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001610, 42.086647, 24.807308>,  <35.864784, 41.866093, 24.502951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001610, 42.086647, 24.807308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078799, 0.790057, -0.607948,
		-0.936366, 0.267916, 0.226804,
		0.342067, 0.551390, 0.760894,
		36.104229, 42.252064, 25.035576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758743, 42.553215, 24.213360>,  <35.864784, 41.866093, 24.502951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758743, 42.553215, 24.213360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954193, 42.625221, 24.554848>,  <36.071465, 42.668427, 24.759741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954193, 42.625221, 24.554848>,  <35.758743, 42.553215, 24.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954193, 42.625221, 24.554848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409581, 0.816641, -0.406620,
		-0.770381, 0.548353, 0.325302,
		0.488626, 0.180015, 0.853721,
		36.100780, 42.679226, 24.810965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763477, 43.359684, 24.383150>,  <35.758743, 42.553215, 24.213360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763477, 43.359684, 24.383150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072914, 43.186131, 24.567890>,  <36.258575, 43.082001, 24.678734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072914, 43.186131, 24.567890>,  <35.763477, 43.359684, 24.383150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072914, 43.186131, 24.567890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577729, 0.782353, -0.232708,
		-0.260362, 0.446845, 0.855886,
		0.773590, -0.433882, 0.461850,
		36.304993, 43.055965, 24.706446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093887, 43.900986, 24.637794>,  <35.763477, 43.359684, 24.383150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093887, 43.900986, 24.637794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381645, 43.623470, 24.651199>,  <36.554298, 43.456959, 24.659243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381645, 43.623470, 24.651199>,  <36.093887, 43.900986, 24.637794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381645, 43.623470, 24.651199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680163, 0.693838, -0.236575,
		0.140883, 0.192983, 0.971035,
		0.719396, -0.693791, 0.033510,
		36.597466, 43.415333, 24.661253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636780, 44.170139, 25.075859>,  <36.093887, 43.900986, 24.637794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636780, 44.170139, 25.075859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820595, 43.903187, 24.841448>,  <36.930885, 43.743015, 24.700802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820595, 43.903187, 24.841448>,  <36.636780, 44.170139, 25.075859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820595, 43.903187, 24.841448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737076, 0.654699, -0.167596,
		0.495522, -0.354931, 0.792768,
		0.459539, -0.667378, -0.586029,
		36.958458, 43.702972, 24.665640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328503, 44.265633, 25.275408>,  <36.636780, 44.170139, 25.075859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328503, 44.265633, 25.275408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339493, 44.054443, 24.935881>,  <37.346088, 43.927731, 24.732164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339493, 44.054443, 24.935881>,  <37.328503, 44.265633, 25.275408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339493, 44.054443, 24.935881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928985, 0.327020, -0.173334,
		0.369096, -0.783777, 0.499462,
		0.027479, -0.527969, -0.848819,
		37.347736, 43.896053, 24.681234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043457, 44.049969, 25.228657>,  <37.328503, 44.265633, 25.275408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043457, 44.049969, 25.228657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906971, 44.040390, 24.852785>,  <37.825081, 44.034641, 24.627262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906971, 44.040390, 24.852785>,  <38.043457, 44.049969, 25.228657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906971, 44.040390, 24.852785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790756, 0.533167, -0.300727,
		0.508208, -0.845671, -0.162990,
		-0.341217, -0.023946, -0.939680,
		37.804607, 44.033207, 24.570881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589241, 43.797691, 24.861517>,  <38.043457, 44.049969, 25.228657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589241, 43.797691, 24.861517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355350, 44.030479, 24.635452>,  <38.215015, 44.170151, 24.499813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355350, 44.030479, 24.635452>,  <38.589241, 43.797691, 24.861517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355350, 44.030479, 24.635452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755947, 0.643669, -0.119311,
		0.294341, -0.496995, -0.816309,
		-0.584729, 0.581968, -0.565160,
		38.179932, 44.205070, 24.465904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086998, 44.056408, 24.421700>,  <38.589241, 43.797691, 24.861517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086998, 44.056408, 24.421700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775253, 44.302155, 24.372463>,  <38.588207, 44.449604, 24.342920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775253, 44.302155, 24.372463>,  <39.086998, 44.056408, 24.421700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775253, 44.302155, 24.372463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624344, 0.744878, -0.235270,
		-0.052854, -0.260211, -0.964104,
		-0.779359, 0.614367, -0.123092,
		38.541447, 44.486465, 24.335535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100014, 44.310371, 23.719830>,  <39.086998, 44.056408, 24.421700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100014, 44.310371, 23.719830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904625, 44.562813, 23.960863>,  <38.787392, 44.714275, 24.105482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904625, 44.562813, 23.960863>,  <39.100014, 44.310371, 23.719830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904625, 44.562813, 23.960863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584804, 0.749309, -0.310710,
		-0.647610, 0.200619, -0.735088,
		-0.488473, 0.631101, 0.602582,
		38.758083, 44.752144, 24.141638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055904, 44.856628, 23.356323>,  <39.100014, 44.310371, 23.719830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055904, 44.856628, 23.356323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920979, 45.030361, 23.690409>,  <38.840023, 45.134602, 23.890860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920979, 45.030361, 23.690409>,  <39.055904, 44.856628, 23.356323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920979, 45.030361, 23.690409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391436, 0.871585, -0.295156,
		-0.856153, 0.227371, -0.464010,
		-0.337314, 0.434329, 0.835211,
		38.819786, 45.160660, 23.940971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796257, 45.493977, 23.189188>,  <39.055904, 44.856628, 23.356323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796257, 45.493977, 23.189188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877502, 45.556839, 23.575771>,  <38.926250, 45.594555, 23.807722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877502, 45.556839, 23.575771>,  <38.796257, 45.493977, 23.189188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877502, 45.556839, 23.575771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502564, 0.830372, -0.240648,
		-0.840341, 0.534588, 0.089682,
		0.203117, 0.157155, 0.966460,
		38.938438, 45.603985, 23.865709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703999, 46.244678, 23.307564>,  <38.796257, 45.493977, 23.189188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703999, 46.244678, 23.307564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941074, 46.112221, 23.601246>,  <39.083321, 46.032745, 23.777456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941074, 46.112221, 23.601246>,  <38.703999, 46.244678, 23.307564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941074, 46.112221, 23.601246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618582, 0.770950, -0.151633,
		-0.515824, 0.544039, 0.661776,
		0.592690, -0.331147, 0.734207,
		39.118881, 46.012878, 23.821508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994823, 46.874413, 23.482521>,  <38.703999, 46.244678, 23.307564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994823, 46.874413, 23.482521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192554, 46.559456, 23.629843>,  <39.311192, 46.370480, 23.718235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192554, 46.559456, 23.629843>,  <38.994823, 46.874413, 23.482521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192554, 46.559456, 23.629843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855295, 0.516247, -0.044273,
		-0.155275, 0.336895, 0.928650,
		0.494328, -0.787395, 0.368305,
		39.340855, 46.323238, 23.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449821, 47.193394, 24.027914>,  <38.994823, 46.874413, 23.482521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449821, 47.193394, 24.027914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562817, 46.842541, 23.872562>,  <39.630615, 46.632030, 23.779352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562817, 46.842541, 23.872562>,  <39.449821, 47.193394, 24.027914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562817, 46.842541, 23.872562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949608, 0.313018, -0.016231,
		0.135805, -0.364222, 0.921357,
		0.282490, -0.877133, -0.388378,
		39.647564, 46.579399, 23.756048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863716, 46.941376, 24.487686>,  <39.449821, 47.193394, 24.027914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863716, 46.941376, 24.487686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926323, 46.808376, 24.115677>,  <39.963886, 46.728577, 23.892471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926323, 46.808376, 24.115677>,  <39.863716, 46.941376, 24.487686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926323, 46.808376, 24.115677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963536, 0.258315, 0.069801,
		0.217030, -0.907036, 0.360809,
		0.156514, -0.332503, -0.930024,
		39.973278, 46.708626, 23.836670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069752, 47.592136, 24.196733>,  <39.863716, 46.941376, 24.487686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069752, 47.592136, 24.196733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986675, 47.460007, 24.565027>,  <39.936829, 47.380730, 24.786003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986675, 47.460007, 24.565027>,  <40.069752, 47.592136, 24.196733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986675, 47.460007, 24.565027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964195, -0.227808, 0.135764,
		0.164905, 0.915965, 0.365806,
		-0.207688, -0.330321, 0.920735,
		39.924370, 47.360912, 24.841248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487713, 47.435402, 24.835228>,  <40.069752, 47.592136, 24.196733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487713, 47.435402, 24.835228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757343, 47.322144, 24.562330>,  <40.919121, 47.254189, 24.398592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757343, 47.322144, 24.562330>,  <40.487713, 47.435402, 24.835228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757343, 47.322144, 24.562330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066660, -0.896532, 0.437935,
		-0.735652, -0.340678, -0.585453,
		0.674072, -0.283141, -0.682245,
		40.959564, 47.237202, 24.357656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625008, 46.742058, 24.948048>,  <40.487713, 47.435402, 24.835228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625008, 46.742058, 24.948048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892849, 46.791054, 24.655027>,  <41.053555, 46.820450, 24.479216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892849, 46.791054, 24.655027>,  <40.625008, 46.742058, 24.948048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892849, 46.791054, 24.655027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252543, -0.965089, 0.069473,
		-0.698469, -0.231520, -0.677156,
		0.669600, 0.122486, -0.732553,
		41.093727, 46.827801, 24.435261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327305, 46.899639, 24.862955>,  <40.625008, 46.742058, 24.948048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327305, 46.899639, 24.862955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633533, 46.980858, 25.107143>,  <41.817268, 47.029591, 25.253656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633533, 46.980858, 25.107143>,  <41.327305, 46.899639, 24.862955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633533, 46.980858, 25.107143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508248, -0.390892, 0.767390,
		0.394446, -0.897761, -0.196056,
		0.765570, 0.203049, 0.610471,
		41.863205, 47.041771, 25.290285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763527, 46.343502, 25.286484>,  <41.327305, 46.899639, 24.862955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763527, 46.343502, 25.286484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736481, 46.693878, 25.477543>,  <41.720253, 46.904106, 25.592178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736481, 46.693878, 25.477543>,  <41.763527, 46.343502, 25.286484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736481, 46.693878, 25.477543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483693, -0.447503, 0.752185,
		0.872622, -0.180174, 0.453948,
		-0.067619, 0.875944, 0.477650,
		41.716194, 46.956661, 25.620838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087646, 46.333775, 25.989168>,  <41.763527, 46.343502, 25.286484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087646, 46.333775, 25.989168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758202, 46.557999, 25.954704>,  <41.560535, 46.692535, 25.934025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758202, 46.557999, 25.954704>,  <42.087646, 46.333775, 25.989168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758202, 46.557999, 25.954704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506126, -0.657917, 0.557658,
		0.255916, 0.502904, 0.825587,
		-0.823616, 0.560564, -0.086161,
		41.511116, 46.726170, 25.928856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656559, 46.246265, 26.599560>,  <42.087646, 46.333775, 25.989168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656559, 46.246265, 26.599560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395367, 46.416069, 26.348671>,  <41.238651, 46.517952, 26.198137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395367, 46.416069, 26.348671>,  <41.656559, 46.246265, 26.599560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395367, 46.416069, 26.348671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746414, -0.501097, 0.437914,
		-0.128400, 0.754116, 0.644067,
		-0.652978, 0.424512, -0.627223,
		41.199474, 46.543423, 26.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198074, 46.620087, 26.925360>,  <41.656559, 46.246265, 26.599560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198074, 46.620087, 26.925360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040062, 46.479267, 26.585945>,  <40.945255, 46.394775, 26.382298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040062, 46.479267, 26.585945>,  <41.198074, 46.620087, 26.925360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040062, 46.479267, 26.585945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685494, -0.501957, 0.527387,
		-0.611596, 0.789999, -0.043042,
		-0.395030, -0.352053, -0.848534,
		40.921555, 46.373650, 26.331385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471031, 46.689789, 26.998312>,  <41.198074, 46.620087, 26.925360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471031, 46.689789, 26.998312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536690, 46.421379, 26.709097>,  <40.576084, 46.260334, 26.535568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536690, 46.421379, 26.709097>,  <40.471031, 46.689789, 26.998312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536690, 46.421379, 26.709097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643822, -0.628212, 0.436857,
		-0.747363, 0.393802, -0.535135,
		0.164143, -0.671021, -0.723041,
		40.585934, 46.220074, 26.492186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804516, 46.416477, 26.771011>,  <40.471031, 46.689789, 26.998312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804516, 46.416477, 26.771011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059685, 46.133953, 26.648254>,  <40.212788, 45.964439, 26.574600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059685, 46.133953, 26.648254>,  <39.804516, 46.416477, 26.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059685, 46.133953, 26.648254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629872, -0.707826, 0.319756,
		-0.443070, -0.010679, -0.896423,
		0.637926, -0.706306, -0.306890,
		40.251064, 45.922062, 26.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358948, 45.950153, 26.528225>,  <39.804516, 46.416477, 26.771011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358948, 45.950153, 26.528225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691730, 45.729813, 26.554754>,  <39.891399, 45.597607, 26.570671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691730, 45.729813, 26.554754>,  <39.358948, 45.950153, 26.528225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691730, 45.729813, 26.554754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547925, -0.796902, 0.254411,
		-0.087292, -0.247999, -0.964819,
		0.831961, -0.550856, 0.066322,
		39.941319, 45.564556, 26.574650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228806, 45.215778, 26.171679>,  <39.358948, 45.950153, 26.528225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228806, 45.215778, 26.171679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521912, 45.172779, 26.440453>,  <39.697777, 45.146980, 26.601717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521912, 45.172779, 26.440453>,  <39.228806, 45.215778, 26.171679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521912, 45.172779, 26.440453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452668, -0.814275, 0.363382,
		0.508078, -0.570438, -0.645334,
		0.732768, -0.107496, 0.671935,
		39.741741, 45.140530, 26.642033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340240, 44.620712, 26.171217>,  <39.228806, 45.215778, 26.171679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340240, 44.620712, 26.171217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511227, 44.706070, 26.522612>,  <39.613819, 44.757286, 26.733448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511227, 44.706070, 26.522612>,  <39.340240, 44.620712, 26.171217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511227, 44.706070, 26.522612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402511, -0.825183, 0.396305,
		0.809481, -0.523006, -0.266843,
		0.427464, 0.213394, 0.878486,
		39.639465, 44.770088, 26.786158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670002, 43.899479, 26.504044>,  <39.340240, 44.620712, 26.171217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670002, 43.899479, 26.504044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586021, 44.166691, 26.789606>,  <39.535633, 44.327019, 26.960943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586021, 44.166691, 26.789606>,  <39.670002, 43.899479, 26.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586021, 44.166691, 26.789606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370464, -0.730088, 0.574220,
		0.904808, -0.143920, 0.400761,
		-0.209949, 0.668026, 0.713906,
		39.523037, 44.367100, 27.003778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897469, 43.610367, 27.154383>,  <39.670002, 43.899479, 26.504044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897469, 43.610367, 27.154383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635883, 43.891285, 27.266890>,  <39.478931, 44.059837, 27.334394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635883, 43.891285, 27.266890>,  <39.897469, 43.610367, 27.154383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635883, 43.891285, 27.266890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428452, -0.650234, 0.627395,
		0.623509, 0.289782, 0.726128,
		-0.653961, 0.702298, 0.281269,
		39.439693, 44.101974, 27.351271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907986, 43.439053, 27.888088>,  <39.897469, 43.610367, 27.154383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907986, 43.439053, 27.888088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599964, 43.669067, 27.777565>,  <39.415150, 43.807076, 27.711250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599964, 43.669067, 27.777565>,  <39.907986, 43.439053, 27.888088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599964, 43.669067, 27.777565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587285, -0.469741, 0.659121,
		0.249227, 0.669831, 0.699437,
		-0.770054, 0.575040, -0.276309,
		39.368950, 43.841579, 27.694672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770481, 43.577515, 28.514738>,  <39.907986, 43.439053, 27.888088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770481, 43.577515, 28.514738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464935, 43.627525, 28.261477>,  <39.281609, 43.657532, 28.109520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464935, 43.627525, 28.261477>,  <39.770481, 43.577515, 28.514738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464935, 43.627525, 28.261477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618332, -0.422815, 0.662490,
		-0.184877, 0.897549, 0.400281,
		-0.763863, 0.125027, -0.633152,
		39.235775, 43.665035, 28.071531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253796, 43.496861, 29.019375>,  <39.770481, 43.577515, 28.514738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253796, 43.496861, 29.019375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060215, 43.507965, 28.669512>,  <38.944069, 43.514626, 28.459595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060215, 43.507965, 28.669512>,  <39.253796, 43.496861, 29.019375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060215, 43.507965, 28.669512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737658, -0.550669, 0.390672,
		-0.470800, 0.834262, 0.286973,
		-0.483950, 0.027759, -0.874655,
		38.915031, 43.516293, 28.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538383, 43.725422, 29.086992>,  <39.253796, 43.496861, 29.019375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538383, 43.725422, 29.086992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562103, 43.487839, 28.766069>,  <38.576336, 43.345287, 28.573515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562103, 43.487839, 28.766069>,  <38.538383, 43.725422, 29.086992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562103, 43.487839, 28.766069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672320, -0.617862, 0.407716,
		-0.737881, 0.515231, -0.435969,
		0.059301, -0.593956, -0.802309,
		38.579895, 43.309650, 28.525377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861229, 43.509125, 28.912149>,  <38.538383, 43.725422, 29.086992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861229, 43.509125, 28.912149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095291, 43.244999, 28.723858>,  <38.235729, 43.086525, 28.610882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095291, 43.244999, 28.723858>,  <37.861229, 43.509125, 28.912149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095291, 43.244999, 28.723858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512223, -0.750988, 0.416706,
		-0.628668, -0.002719, -0.777669,
		0.585153, -0.660310, -0.470729,
		38.270836, 43.046906, 28.582638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458733, 43.072475, 28.472200>,  <37.861229, 43.509125, 28.912149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458733, 43.072475, 28.472200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794365, 42.878853, 28.571499>,  <37.995747, 42.762680, 28.631079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794365, 42.878853, 28.571499>,  <37.458733, 43.072475, 28.472200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794365, 42.878853, 28.571499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543606, -0.763508, 0.348637,
		0.020777, -0.427484, -0.903784,
		0.839083, -0.484059, 0.248246,
		38.046089, 42.733635, 28.645973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435722, 42.394848, 28.170607>,  <37.458733, 43.072475, 28.472200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435722, 42.394848, 28.170607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714256, 42.354538, 28.454847>,  <37.881378, 42.330353, 28.625393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714256, 42.354538, 28.454847>,  <37.435722, 42.394848, 28.170607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714256, 42.354538, 28.454847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426396, -0.854509, 0.296650,
		0.577320, -0.509567, -0.637999,
		0.696339, -0.100778, 0.710603,
		37.923157, 42.324303, 28.668028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635582, 41.702461, 28.130859>,  <37.435722, 42.394848, 28.170607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635582, 41.702461, 28.130859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737160, 41.825283, 28.497734>,  <37.798107, 41.898975, 28.717859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737160, 41.825283, 28.497734>,  <37.635582, 41.702461, 28.130859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737160, 41.825283, 28.497734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470904, -0.789046, 0.394531,
		0.844845, -0.532095, -0.055779,
		0.253940, 0.307051, 0.917188,
		37.813343, 41.917397, 28.772890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819427, 41.008427, 28.526180>,  <37.635582, 41.702461, 28.130859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819427, 41.008427, 28.526180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708145, 41.315887, 28.756578>,  <37.641376, 41.500366, 28.894817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708145, 41.315887, 28.756578>,  <37.819427, 41.008427, 28.526180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708145, 41.315887, 28.756578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705923, -0.570280, 0.420064,
		0.651362, -0.289742, 0.701268,
		-0.278209, 0.768655, 0.575994,
		37.624683, 41.546486, 28.929377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648560, 40.664394, 29.116884>,  <37.819427, 41.008427, 28.526180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648560, 40.664394, 29.116884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508480, 41.030754, 29.195368>,  <37.424435, 41.250568, 29.242458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508480, 41.030754, 29.195368>,  <37.648560, 40.664394, 29.116884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508480, 41.030754, 29.195368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830797, -0.400463, 0.386529,
		0.432595, -0.027649, 0.901164,
		-0.350197, 0.915895, 0.196209,
		37.403419, 41.305523, 29.254230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520584, 40.643570, 29.851053>,  <37.648560, 40.664394, 29.116884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520584, 40.643570, 29.851053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296253, 40.927372, 29.680372>,  <37.161655, 41.097652, 29.577963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296253, 40.927372, 29.680372>,  <37.520584, 40.643570, 29.851053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296253, 40.927372, 29.680372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823557, -0.425143, 0.375510,
		0.085015, 0.562011, 0.822749,
		-0.560827, 0.709504, -0.426705,
		37.128006, 41.140224, 29.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037560, 40.849380, 30.387905>,  <37.520584, 40.643570, 29.851053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037560, 40.849380, 30.387905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859203, 40.967731, 30.049997>,  <36.752190, 41.038742, 29.847252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859203, 40.967731, 30.049997>,  <37.037560, 40.849380, 30.387905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859203, 40.967731, 30.049997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881092, -0.311329, 0.356021,
		-0.157663, 0.903067, 0.399515,
		-0.445891, 0.295878, -0.844771,
		36.725437, 41.056496, 29.796566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567104, 41.206173, 30.690052>,  <37.037560, 40.849380, 30.387905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567104, 41.206173, 30.690052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462746, 41.108776, 30.316391>,  <36.400131, 41.050339, 30.092194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462746, 41.108776, 30.316391>,  <36.567104, 41.206173, 30.690052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462746, 41.108776, 30.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830846, -0.436091, 0.345716,
		-0.491555, 0.866335, -0.088527,
		-0.260901, -0.243491, -0.934154,
		36.384476, 41.035728, 30.036144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847088, 41.291977, 30.773970>,  <36.567104, 41.206173, 30.690052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847088, 41.291977, 30.773970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902126, 41.082699, 30.437557>,  <35.935150, 40.957130, 30.235710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902126, 41.082699, 30.437557>,  <35.847088, 41.291977, 30.773970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902126, 41.082699, 30.437557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870709, -0.468655, 0.149094,
		-0.472159, 0.711779, -0.520034,
		0.137595, -0.523194, -0.841032,
		35.943405, 40.925739, 30.185247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297798, 41.377064, 30.437950>,  <35.847088, 41.291977, 30.773970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297798, 41.377064, 30.437950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454189, 41.038414, 30.293530>,  <35.548023, 40.835224, 30.206877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454189, 41.038414, 30.293530>,  <35.297798, 41.377064, 30.437950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454189, 41.038414, 30.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851321, -0.481751, 0.207769,
		-0.349840, 0.226137, -0.909106,
		0.390979, -0.846627, -0.361051,
		35.571484, 40.784428, 30.185213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687332, 41.166916, 30.249393>,  <35.297798, 41.377064, 30.437950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687332, 41.166916, 30.249393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934963, 40.852787, 30.250870>,  <35.083542, 40.664310, 30.251757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934963, 40.852787, 30.250870>,  <34.687332, 41.166916, 30.249393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934963, 40.852787, 30.250870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765762, -0.602599, 0.224685,
		-0.174226, -0.141924, -0.974424,
		0.619075, -0.785323, 0.003691,
		35.120686, 40.617191, 30.251978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419647, 40.591000, 29.896173>,  <34.687332, 41.166916, 30.249393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419647, 40.591000, 29.896173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684147, 40.404537, 30.131275>,  <34.842846, 40.292660, 30.272337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684147, 40.404537, 30.131275>,  <34.419647, 40.591000, 29.896173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684147, 40.404537, 30.131275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714333, -0.630534, 0.303571,
		0.229089, -0.620588, -0.749926,
		0.661246, -0.466152, 0.587755,
		34.882523, 40.264690, 30.307602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382420, 39.873745, 29.759275>,  <34.419647, 40.591000, 29.896173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382420, 39.873745, 29.759275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582790, 39.862537, 30.105289>,  <34.703011, 39.855812, 30.312899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582790, 39.862537, 30.105289>,  <34.382420, 39.873745, 29.759275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582790, 39.862537, 30.105289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536160, -0.794643, 0.284738,
		0.679417, -0.606430, -0.413080,
		0.500924, -0.028021, 0.865037,
		34.733067, 39.854130, 30.364801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537189, 39.217796, 29.927464>,  <34.382420, 39.873745, 29.759275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537189, 39.217796, 29.927464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576653, 39.404293, 30.279118>,  <34.600330, 39.516193, 30.490110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576653, 39.404293, 30.279118>,  <34.537189, 39.217796, 29.927464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576653, 39.404293, 30.279118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443902, -0.770061, 0.458212,
		0.890628, -0.435456, 0.130996,
		0.098656, 0.466245, 0.879137,
		34.606251, 39.544167, 30.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662838, 38.679665, 30.313465>,  <34.537189, 39.217796, 29.927464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662838, 38.679665, 30.313465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572895, 38.966721, 30.577108>,  <34.518929, 39.138954, 30.735294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572895, 38.966721, 30.577108>,  <34.662838, 38.679665, 30.313465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572895, 38.966721, 30.577108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430389, -0.680020, 0.593580,
		0.874187, -0.150202, 0.461776,
		-0.224860, 0.717643, 0.659110,
		34.505436, 39.182014, 30.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910099, 38.418213, 30.909651>,  <34.662838, 38.679665, 30.313465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910099, 38.418213, 30.909651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641861, 38.689816, 31.029158>,  <34.480919, 38.852776, 31.100861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641861, 38.689816, 31.029158>,  <34.910099, 38.418213, 30.909651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641861, 38.689816, 31.029158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427632, -0.682923, 0.592239,
		0.606166, 0.269390, 0.748326,
		-0.670593, 0.679003, 0.298765,
		34.440681, 38.893517, 31.118788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843998, 38.331646, 31.624327>,  <34.910099, 38.418213, 30.909651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843998, 38.331646, 31.624327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520748, 38.547287, 31.529419>,  <34.326797, 38.676674, 31.472473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520748, 38.547287, 31.529419>,  <34.843998, 38.331646, 31.624327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520748, 38.547287, 31.529419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561115, -0.582133, 0.588448,
		0.179112, 0.608676, 0.772937,
		-0.808126, 0.539105, -0.237271,
		34.278309, 38.709019, 31.458239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448067, 38.447647, 32.219994>,  <34.843998, 38.331646, 31.624327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448067, 38.447647, 32.219994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166256, 38.514816, 31.944185>,  <33.997169, 38.555119, 31.778700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166256, 38.514816, 31.944185>,  <34.448067, 38.447647, 32.219994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166256, 38.514816, 31.944185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640678, -0.568396, 0.516195,
		-0.305241, 0.805436, 0.508036,
		-0.704527, 0.167924, -0.689524,
		33.954899, 38.565193, 31.737328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814323, 38.631275, 32.672157>,  <34.448067, 38.447647, 32.219994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814323, 38.631275, 32.672157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695686, 38.523746, 32.305603>,  <33.624504, 38.459229, 32.085670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695686, 38.523746, 32.305603>,  <33.814323, 38.631275, 32.672157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695686, 38.523746, 32.305603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614190, -0.681102, 0.398586,
		-0.731302, 0.681054, 0.036902,
		-0.296593, -0.268822, -0.916388,
		33.606709, 38.443100, 32.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052666, 38.776222, 32.648247>,  <33.814323, 38.631275, 32.672157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052666, 38.776222, 32.648247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133236, 38.506683, 32.363892>,  <33.181576, 38.344959, 32.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133236, 38.506683, 32.363892>,  <33.052666, 38.776222, 32.648247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133236, 38.506683, 32.363892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806811, -0.525669, 0.269682,
		-0.555415, 0.519230, -0.649550,
		0.201421, -0.673849, -0.710885,
		33.193661, 38.304527, 32.150627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434639, 38.595604, 32.379505>,  <33.052666, 38.776222, 32.648247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434639, 38.595604, 32.379505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680206, 38.299267, 32.270500>,  <32.827545, 38.121464, 32.205097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680206, 38.299267, 32.270500>,  <32.434639, 38.595604, 32.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680206, 38.299267, 32.270500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669131, -0.671556, 0.318239,
		-0.418774, -0.013022, -0.907997,
		0.613915, -0.740839, -0.272517,
		32.864380, 38.077015, 32.188744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036690, 38.107704, 31.982687>,  <32.434639, 38.595604, 32.379505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036690, 38.107704, 31.982687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358913, 37.896370, 32.089973>,  <32.552246, 37.769569, 32.154346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358913, 37.896370, 32.089973>,  <32.036690, 38.107704, 31.982687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358913, 37.896370, 32.089973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573037, -0.809800, 0.125909,
		0.150680, -0.255126, -0.955095,
		0.805558, -0.528332, 0.268217,
		32.600582, 37.737869, 32.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945349, 37.457882, 31.657915>,  <32.036690, 38.107704, 31.982687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945349, 37.457882, 31.657915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203106, 37.391056, 31.956404>,  <32.357761, 37.350960, 32.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203106, 37.391056, 31.956404>,  <31.945349, 37.457882, 31.657915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203106, 37.391056, 31.956404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572849, -0.751893, 0.326345,
		0.506558, -0.637767, -0.580217,
		0.644393, -0.167064, 0.746221,
		32.396423, 37.340939, 32.180271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126606, 36.858971, 31.612953>,  <31.945349, 37.457882, 31.657915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126606, 36.858971, 31.612953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232887, 36.928379, 31.992277>,  <32.296654, 36.970024, 32.219872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232887, 36.928379, 31.992277>,  <32.126606, 36.858971, 31.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232887, 36.928379, 31.992277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503099, -0.814146, 0.289929,
		0.822372, -0.554128, -0.129020,
		0.265699, 0.173519, 0.948312,
		32.312595, 36.980434, 32.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388348, 36.244091, 31.891348>,  <32.126606, 36.858971, 31.612953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388348, 36.244091, 31.891348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292557, 36.417389, 32.238899>,  <32.235085, 36.521366, 32.447430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292557, 36.417389, 32.238899>,  <32.388348, 36.244091, 31.891348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292557, 36.417389, 32.238899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384195, -0.864157, 0.325002,
		0.891653, -0.255989, 0.373396,
		-0.239476, 0.433246, 0.868878,
		32.220715, 36.547363, 32.499561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603748, 35.772278, 32.380936>,  <32.388348, 36.244091, 31.891348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603748, 35.772278, 32.380936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315521, 35.995644, 32.545353>,  <32.142586, 36.129662, 32.644005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315521, 35.995644, 32.545353>,  <32.603748, 35.772278, 32.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315521, 35.995644, 32.545353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489325, -0.829531, 0.269144,
		0.491267, -0.007197, 0.870979,
		-0.720567, 0.558414, 0.411043,
		32.099350, 36.163166, 32.668667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211777, 35.569298, 31.997734>,  <32.603748, 35.772278, 32.380936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211777, 35.569298, 31.997734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525330, 35.342880, 32.099804>,  <33.713463, 35.207027, 32.161045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525330, 35.342880, 32.099804>,  <33.211777, 35.569298, 31.997734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525330, 35.342880, 32.099804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614246, 0.766991, -0.185545,
		-0.090691, 0.302187, 0.948925,
		0.783886, -0.566046, 0.255177,
		33.760494, 35.173065, 32.176357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615559, 36.052723, 32.324001>,  <33.211777, 35.569298, 31.997734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615559, 36.052723, 32.324001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847126, 35.747215, 32.209797>,  <33.986065, 35.563911, 32.141273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847126, 35.747215, 32.209797>,  <33.615559, 36.052723, 32.324001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847126, 35.747215, 32.209797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754185, 0.634662, -0.168549,
		0.309935, -0.117752, 0.943438,
		0.578917, -0.763766, -0.285511,
		34.020802, 35.518085, 32.124146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299461, 36.027054, 32.748604>,  <33.615559, 36.052723, 32.324001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299461, 36.027054, 32.748604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371151, 35.820114, 32.413887>,  <34.414165, 35.695950, 32.213055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371151, 35.820114, 32.413887>,  <34.299461, 36.027054, 32.748604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371151, 35.820114, 32.413887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775183, 0.598000, -0.203684,
		0.605779, -0.612162, 0.508221,
		0.179229, -0.517352, -0.836794,
		34.424919, 35.664909, 32.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947548, 35.967896, 32.794109>,  <34.299461, 36.027054, 32.748604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947548, 35.967896, 32.794109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898636, 35.888203, 32.405193>,  <34.869289, 35.840385, 32.171844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898636, 35.888203, 32.405193>,  <34.947548, 35.967896, 32.794109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898636, 35.888203, 32.405193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851173, 0.482782, -0.205976,
		0.510443, -0.852776, 0.110549,
		-0.122280, -0.199235, -0.972293,
		34.861950, 35.828434, 32.113506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574097, 35.892731, 32.501259>,  <34.947548, 35.967896, 32.794109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574097, 35.892731, 32.501259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381226, 35.930347, 32.152855>,  <35.265503, 35.952919, 31.943811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381226, 35.930347, 32.152855>,  <35.574097, 35.892731, 32.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381226, 35.930347, 32.152855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775362, 0.508635, -0.374305,
		0.407826, -0.855831, -0.318169,
		-0.482174, 0.094044, -0.871013,
		35.236572, 35.958561, 31.891550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943466, 35.600151, 32.003174>,  <35.574097, 35.892731, 32.501259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943466, 35.600151, 32.003174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732689, 35.879002, 31.808710>,  <35.606224, 36.046310, 31.692032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732689, 35.879002, 31.808710>,  <35.943466, 35.600151, 32.003174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732689, 35.879002, 31.808710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848637, 0.462793, -0.256201,
		0.046387, -0.547575, -0.835470,
		-0.526939, 0.697126, -0.486160,
		35.574608, 36.088139, 31.662863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207092, 35.602303, 31.356810>,  <35.943466, 35.600151, 32.003174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207092, 35.602303, 31.356810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012978, 35.948093, 31.409225>,  <35.896507, 36.155567, 31.440674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012978, 35.948093, 31.409225>,  <36.207092, 35.602303, 31.356810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012978, 35.948093, 31.409225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824067, 0.502303, -0.261926,
		-0.292250, -0.019125, -0.956151,
		-0.485287, 0.864480, 0.131038,
		35.867393, 36.207436, 31.448536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335709, 35.956551, 30.713804>,  <36.207092, 35.602303, 31.356810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335709, 35.956551, 30.713804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237244, 36.207348, 31.009447>,  <36.178165, 36.357826, 31.186832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237244, 36.207348, 31.009447>,  <36.335709, 35.956551, 30.713804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237244, 36.207348, 31.009447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778070, 0.582549, -0.235040,
		-0.577935, 0.517220, -0.631248,
		-0.246165, 0.626993, 0.739109,
		36.163395, 36.395447, 31.231180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316643, 36.539593, 30.410151>,  <36.335709, 35.956551, 30.713804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316643, 36.539593, 30.410151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352760, 36.640858, 30.795431>,  <36.374432, 36.701618, 31.026600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352760, 36.640858, 30.795431>,  <36.316643, 36.539593, 30.410151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352760, 36.640858, 30.795431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779835, 0.583576, -0.226489,
		-0.619439, 0.771587, -0.144734,
		0.090293, 0.253165, 0.963200,
		36.379848, 36.716808, 31.084391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252510, 37.191399, 30.369171>,  <36.316643, 36.539593, 30.410151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252510, 37.191399, 30.369171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421722, 37.157192, 30.730000>,  <36.523251, 37.136669, 30.946497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421722, 37.157192, 30.730000>,  <36.252510, 37.191399, 30.369171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421722, 37.157192, 30.730000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666663, 0.703615, -0.245939,
		-0.613679, 0.705418, 0.354660,
		0.423034, -0.085511, 0.902070,
		36.548634, 37.131538, 31.000620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348919, 37.833160, 30.647530>,  <36.252510, 37.191399, 30.369171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348919, 37.833160, 30.647530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626686, 37.607342, 30.825998>,  <36.793346, 37.471851, 30.933079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626686, 37.607342, 30.825998>,  <36.348919, 37.833160, 30.647530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626686, 37.607342, 30.825998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665177, 0.740120, -0.098807,
		-0.274440, 0.365397, 0.889476,
		0.694422, -0.564542, 0.446172,
		36.835014, 37.437981, 30.959850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745049, 38.404118, 31.040003>,  <36.348919, 37.833160, 30.647530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745049, 38.404118, 31.040003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982433, 38.082359, 31.050915>,  <37.124866, 37.889305, 31.057461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982433, 38.082359, 31.050915>,  <36.745049, 38.404118, 31.040003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982433, 38.082359, 31.050915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781760, 0.568039, -0.257263,
		0.191447, 0.174001, 0.965956,
		0.593465, -0.804398, 0.027278,
		37.160473, 37.841042, 31.059097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262009, 38.484356, 31.574379>,  <36.745049, 38.404118, 31.040003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262009, 38.484356, 31.574379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400768, 38.218506, 31.309675>,  <37.484024, 38.058994, 31.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400768, 38.218506, 31.309675>,  <37.262009, 38.484356, 31.574379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400768, 38.218506, 31.309675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846617, 0.525532, -0.084003,
		0.403606, -0.531116, 0.744995,
		0.346903, -0.664629, -0.661760,
		37.504841, 38.019115, 31.111147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052345, 38.323200, 31.753620>,  <37.262009, 38.484356, 31.574379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052345, 38.323200, 31.753620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945557, 38.272114, 31.371538>,  <37.881481, 38.241463, 31.142290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945557, 38.272114, 31.371538>,  <38.052345, 38.323200, 31.753620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945557, 38.272114, 31.371538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830131, 0.472974, -0.295258,
		0.489496, -0.871770, -0.020248,
		-0.266974, -0.127719, -0.955203,
		37.865463, 38.233799, 31.084978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708321, 38.195442, 31.455706>,  <38.052345, 38.323200, 31.753620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708321, 38.195442, 31.455706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446236, 38.300331, 31.172316>,  <38.288986, 38.363266, 31.002281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446236, 38.300331, 31.172316>,  <38.708321, 38.195442, 31.455706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446236, 38.300331, 31.172316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746900, 0.365519, -0.555460,
		0.113304, -0.893103, -0.435350,
		-0.655212, 0.262227, -0.708473,
		38.249672, 38.378998, 30.959774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045429, 37.956226, 30.904787>,  <38.708321, 38.195442, 31.455706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045429, 37.956226, 30.904787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768787, 38.211365, 30.769236>,  <38.602802, 38.364449, 30.687904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768787, 38.211365, 30.769236>,  <39.045429, 37.956226, 30.904787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768787, 38.211365, 30.769236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659895, 0.367264, -0.655481,
		-0.293637, -0.676957, -0.674912,
		-0.691603, 0.637845, -0.338878,
		38.561306, 38.402718, 30.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973801, 37.885227, 30.148176>,  <39.045429, 37.956226, 30.904787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973801, 37.885227, 30.148176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848797, 38.248783, 30.258635>,  <38.773796, 38.466915, 30.324909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848797, 38.248783, 30.258635>,  <38.973801, 37.885227, 30.148176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848797, 38.248783, 30.258635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645436, 0.416463, -0.640290,
		-0.696958, -0.021863, -0.716779,
		-0.312510, 0.908890, 0.276146,
		38.755043, 38.521450, 30.341478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039322, 38.365395, 29.524870>,  <38.973801, 37.885227, 30.148176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039322, 38.365395, 29.524870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990471, 38.640793, 29.810823>,  <38.961159, 38.806030, 29.982395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990471, 38.640793, 29.810823>,  <39.039322, 38.365395, 29.524870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990471, 38.640793, 29.810823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582713, 0.632810, -0.509898,
		-0.803448, 0.354300, -0.478479,
		-0.122129, 0.688493, 0.714886,
		38.953831, 38.847340, 30.025290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842289, 38.971760, 29.196964>,  <39.039322, 38.365395, 29.524870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842289, 38.971760, 29.196964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972805, 39.092209, 29.555374>,  <39.051113, 39.164478, 29.770420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972805, 39.092209, 29.555374>,  <38.842289, 38.971760, 29.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972805, 39.092209, 29.555374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492671, 0.754801, -0.433071,
		-0.806730, 0.582750, 0.097925,
		0.326286, 0.301127, 0.896025,
		39.070690, 39.182549, 29.824181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554523, 39.631577, 29.285744>,  <38.842289, 38.971760, 29.196964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554523, 39.631577, 29.285744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877834, 39.587872, 29.517176>,  <39.071819, 39.561649, 29.656034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877834, 39.587872, 29.517176>,  <38.554523, 39.631577, 29.285744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877834, 39.587872, 29.517176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362264, 0.866922, -0.342362,
		-0.464176, 0.486321, 0.740292,
		0.808273, -0.109265, 0.578581,
		39.120316, 39.555092, 29.690750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684425, 40.238182, 29.536510>,  <38.554523, 39.631577, 29.285744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684425, 40.238182, 29.536510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038235, 40.066444, 29.609476>,  <39.250523, 39.963402, 29.653255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038235, 40.066444, 29.609476>,  <38.684425, 40.238182, 29.536510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038235, 40.066444, 29.609476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465049, 0.780893, -0.417056,
		0.036617, 0.453728, 0.890388,
		0.884527, -0.429346, 0.182412,
		39.303593, 39.937641, 29.664200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110790, 40.707916, 29.917492>,  <38.684425, 40.238182, 29.536510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110790, 40.707916, 29.917492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374596, 40.462219, 29.744175>,  <39.532879, 40.314800, 29.640184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374596, 40.462219, 29.744175>,  <39.110790, 40.707916, 29.917492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374596, 40.462219, 29.744175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460168, 0.785707, -0.413412,
		0.594375, 0.073266, 0.800843,
		0.659517, -0.614244, -0.433291,
		39.572453, 40.277946, 29.614187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753525, 41.051533, 30.028246>,  <39.110790, 40.707916, 29.917492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753525, 41.051533, 30.028246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805851, 40.787342, 29.732502>,  <39.837246, 40.628826, 29.555056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805851, 40.787342, 29.732502>,  <39.753525, 41.051533, 30.028246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805851, 40.787342, 29.732502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416630, 0.713344, -0.563525,
		0.899615, -0.234321, 0.368492,
		0.130816, -0.660480, -0.739360,
		39.845097, 40.589199, 29.510695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371830, 41.197098, 29.759573>,  <39.753525, 41.051533, 30.028246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371830, 41.197098, 29.759573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226040, 40.980389, 29.456617>,  <40.138565, 40.850361, 29.274843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226040, 40.980389, 29.456617>,  <40.371830, 41.197098, 29.759573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226040, 40.980389, 29.456617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435890, 0.619472, -0.652882,
		0.822897, -0.568096, 0.010374,
		-0.364473, -0.541777, -0.757389,
		40.116699, 40.817856, 29.229401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880108, 41.140751, 29.342672>,  <40.371830, 41.197098, 29.759573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880108, 41.140751, 29.342672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558716, 41.111382, 29.106356>,  <40.365883, 41.093761, 28.964565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558716, 41.111382, 29.106356>,  <40.880108, 41.140751, 29.342672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558716, 41.111382, 29.106356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478979, 0.509629, -0.714742,
		0.353561, -0.857256, -0.374309,
		-0.803476, -0.073418, -0.590793,
		40.317673, 41.089355, 28.929117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192024, 40.992676, 28.836296>,  <40.880108, 41.140751, 29.342672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192024, 40.992676, 28.836296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838043, 41.146847, 28.731752>,  <40.625656, 41.239349, 28.669025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838043, 41.146847, 28.731752>,  <41.192024, 40.992676, 28.836296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838043, 41.146847, 28.731752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418511, 0.412100, -0.809335,
		-0.204232, -0.825603, -0.525993,
		-0.884951, 0.385426, -0.261360,
		40.572559, 41.262474, 28.653345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171566, 40.866928, 28.176908>,  <41.192024, 40.992676, 28.836296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171566, 40.866928, 28.176908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890675, 41.149975, 28.208279>,  <40.722137, 41.319801, 28.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890675, 41.149975, 28.208279>,  <41.171566, 40.866928, 28.176908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890675, 41.149975, 28.208279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328138, 0.419449, -0.846397,
		-0.631821, -0.568631, -0.526746,
		-0.702230, 0.707617, 0.078427,
		40.680004, 41.362259, 28.231808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054909, 41.123386, 27.468592>,  <41.171566, 40.866928, 28.176908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054909, 41.123386, 27.468592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882278, 41.411915, 27.685270>,  <40.778702, 41.585033, 27.815277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882278, 41.411915, 27.685270>,  <41.054909, 41.123386, 27.468592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882278, 41.411915, 27.685270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450295, 0.692596, -0.563512,
		-0.781652, 0.000726, -0.623715,
		-0.431573, 0.721326, 0.541696,
		40.752808, 41.628311, 27.847778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567886, 41.522427, 27.031874>,  <41.054909, 41.123386, 27.468592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567886, 41.522427, 27.031874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675255, 41.749165, 27.343420>,  <40.739677, 41.885208, 27.530348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675255, 41.749165, 27.343420>,  <40.567886, 41.522427, 27.031874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675255, 41.749165, 27.343420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636330, 0.502680, -0.585147,
		-0.723209, 0.652683, -0.225771,
		0.268425, 0.566849, 0.778865,
		40.755783, 41.919220, 27.577080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579468, 42.195045, 26.735743>,  <40.567886, 41.522427, 27.031874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579468, 42.195045, 26.735743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809666, 42.207119, 27.062641>,  <40.947784, 42.214363, 27.258780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809666, 42.207119, 27.062641>,  <40.579468, 42.195045, 26.735743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809666, 42.207119, 27.062641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755599, 0.362656, -0.545483,
		-0.312844, 0.931434, 0.185901,
		0.575499, 0.030184, 0.817245,
		40.982315, 42.216175, 27.307816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764183, 42.856602, 26.788893>,  <40.579468, 42.195045, 26.735743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764183, 42.856602, 26.788893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028713, 42.649574, 27.006062>,  <41.187431, 42.525356, 27.136364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028713, 42.649574, 27.006062>,  <40.764183, 42.856602, 26.788893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028713, 42.649574, 27.006062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749500, 0.427058, -0.505838,
		0.029948, 0.741445, 0.670345,
		0.661327, -0.517572, 0.542924,
		41.227112, 42.494301, 27.168940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221352, 43.361862, 26.986116>,  <40.764183, 42.856602, 26.788893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221352, 43.361862, 26.986116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441360, 43.031788, 27.037558>,  <41.573364, 42.833744, 27.068422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441360, 43.031788, 27.037558>,  <41.221352, 43.361862, 26.986116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441360, 43.031788, 27.037558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702990, 0.374330, -0.604717,
		0.450865, 0.423015, 0.785989,
		0.550023, -0.825188, 0.128603,
		41.606369, 42.784233, 27.076138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826832, 43.786839, 27.144762>,  <41.221352, 43.361862, 26.986116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826832, 43.786839, 27.144762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904495, 43.415169, 27.018946>,  <41.951096, 43.192165, 26.943457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904495, 43.415169, 27.018946>,  <41.826832, 43.786839, 27.144762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904495, 43.415169, 27.018946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641017, 0.362891, -0.676319,
		0.742562, -0.070309, 0.666077,
		0.194161, -0.929175, -0.314539,
		41.962742, 43.136417, 26.924583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493359, 43.700176, 27.258266>,  <41.826832, 43.786839, 27.144762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493359, 43.700176, 27.258266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407471, 43.441200, 26.965769>,  <42.355938, 43.285816, 26.790270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407471, 43.441200, 26.965769>,  <42.493359, 43.700176, 27.258266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407471, 43.441200, 26.965769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629653, 0.480582, -0.610392,
		0.746614, -0.591493, 0.304471,
		-0.214719, -0.647438, -0.731245,
		42.343056, 43.246967, 26.746395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143131, 43.496159, 26.843279>,  <42.493359, 43.700176, 27.258266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143131, 43.496159, 26.843279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844849, 43.401577, 26.594114>,  <42.665878, 43.344830, 26.444616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844849, 43.401577, 26.594114>,  <43.143131, 43.496159, 26.843279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844849, 43.401577, 26.594114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577803, 0.236036, -0.781301,
		0.331770, -0.942538, -0.039390,
		-0.745703, -0.236453, -0.622911,
		42.621140, 43.330643, 26.407242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509369, 43.196724, 26.315174>,  <43.143131, 43.496159, 26.843279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509369, 43.196724, 26.315174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155090, 43.267883, 26.143641>,  <42.942524, 43.310577, 26.040720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155090, 43.267883, 26.143641>,  <43.509369, 43.196724, 26.315174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155090, 43.267883, 26.143641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459829, 0.463560, -0.757410,
		0.064049, -0.868023, -0.492375,
		-0.885695, 0.177897, -0.428833,
		42.889381, 43.321251, 26.014990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474747, 42.842464, 25.571192>,  <43.509369, 43.196724, 26.315174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474747, 42.842464, 25.571192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199482, 43.130421, 25.607401>,  <43.034325, 43.303196, 25.629126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199482, 43.130421, 25.607401>,  <43.474747, 42.842464, 25.571192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199482, 43.130421, 25.607401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435271, 0.509424, -0.742311,
		-0.580499, -0.471425, -0.663912,
		-0.688157, 0.719893, 0.090522,
		42.993034, 43.346390, 25.634558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260410, 43.094917, 24.941322>,  <43.474747, 42.842464, 25.571192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260410, 43.094917, 24.941322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226780, 43.396992, 25.201361>,  <43.206604, 43.578236, 25.357384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226780, 43.396992, 25.201361>,  <43.260410, 43.094917, 24.941322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226780, 43.396992, 25.201361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683637, 0.518363, -0.513751,
		-0.724963, 0.401237, -0.559855,
		-0.084072, 0.755188, 0.650094,
		43.201557, 43.623547, 25.396389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579678, 43.132030, 24.782187>,  <43.260410, 43.094917, 24.941322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579678, 43.132030, 24.782187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684208, 42.971710, 24.430946>,  <42.746925, 42.875519, 24.220201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684208, 42.971710, 24.430946>,  <42.579678, 43.132030, 24.782187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684208, 42.971710, 24.430946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055448, -0.914446, 0.400892,
		-0.963657, -0.056075, -0.261191,
		0.261325, -0.400805, -0.878103,
		42.762604, 42.851467, 24.167515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049198, 42.712521, 24.548208>,  <42.579678, 43.132030, 24.782187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049198, 42.712521, 24.548208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363922, 42.567047, 24.348742>,  <42.552757, 42.479763, 24.229061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363922, 42.567047, 24.348742>,  <42.049198, 42.712521, 24.548208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363922, 42.567047, 24.348742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235745, -0.923781, 0.301751,
		-0.570398, -0.119863, -0.812575,
		0.786810, -0.363679, -0.498666,
		42.599964, 42.457943, 24.199142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825134, 42.062256, 24.331053>,  <42.049198, 42.712521, 24.548208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825134, 42.062256, 24.331053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222347, 42.027912, 24.298779>,  <42.460674, 42.007305, 24.279415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222347, 42.027912, 24.298779>,  <41.825134, 42.062256, 24.331053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222347, 42.027912, 24.298779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047822, -0.919584, 0.389973,
		-0.107677, -0.383398, -0.917285,
		0.993035, -0.085858, -0.080684,
		42.520256, 42.002155, 24.274574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931797, 41.436111, 24.092409>,  <41.825134, 42.062256, 24.331053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931797, 41.436111, 24.092409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301559, 41.523079, 24.217760>,  <42.523415, 41.575260, 24.292971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301559, 41.523079, 24.217760>,  <41.931797, 41.436111, 24.092409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301559, 41.523079, 24.217760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010875, -0.836307, 0.548154,
		0.381259, -0.503308, -0.775450,
		0.924404, 0.217422, 0.313376,
		42.578880, 41.588306, 24.311773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300056, 40.866966, 23.904421>,  <41.931797, 41.436111, 24.092409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300056, 40.866966, 23.904421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514423, 41.041904, 24.193287>,  <42.643044, 41.146870, 24.366606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514423, 41.041904, 24.193287>,  <42.300056, 40.866966, 23.904421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514423, 41.041904, 24.193287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194191, -0.768581, 0.609567,
		0.821634, -0.466915, -0.326966,
		0.535917, 0.437347, 0.722164,
		42.675198, 41.173107, 24.409937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667377, 40.344814, 24.206249>,  <42.300056, 40.866966, 23.904421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667377, 40.344814, 24.206249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669693, 40.643715, 24.472057>,  <42.671082, 40.823055, 24.631542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669693, 40.643715, 24.472057>,  <42.667377, 40.344814, 24.206249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669693, 40.643715, 24.472057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287481, -0.635234, 0.716821,
		0.957769, -0.195188, 0.211141,
		0.005791, 0.747248, 0.664520,
		42.671429, 40.867889, 24.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091248, 40.128410, 24.680342>,  <42.667377, 40.344814, 24.206249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091248, 40.128410, 24.680342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869591, 40.410488, 24.857262>,  <42.736599, 40.579735, 24.963413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869591, 40.410488, 24.857262>,  <43.091248, 40.128410, 24.680342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869591, 40.410488, 24.857262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301207, -0.665198, 0.683218,
		0.776019, 0.245373, 0.581021,
		-0.554138, 0.705198, 0.442298,
		42.703350, 40.622047, 24.989952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157101, 39.961720, 25.407084>,  <43.091248, 40.128410, 24.680342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157101, 39.961720, 25.407084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842800, 40.208656, 25.391695>,  <42.654221, 40.356819, 25.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842800, 40.208656, 25.391695>,  <43.157101, 39.961720, 25.407084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842800, 40.208656, 25.391695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465640, -0.549435, 0.693757,
		0.407146, 0.563038, 0.719180,
		-0.785755, 0.617340, -0.038473,
		42.607075, 40.393860, 25.380154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016724, 40.158413, 26.082050>,  <43.157101, 39.961720, 25.407084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016724, 40.158413, 26.082050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678795, 40.197197, 25.871572>,  <42.476040, 40.220467, 25.745287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678795, 40.197197, 25.871572>,  <43.016724, 40.158413, 26.082050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678795, 40.197197, 25.871572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468749, -0.608309, 0.640495,
		-0.257983, 0.787755, 0.559363,
		-0.844819, 0.096964, -0.526192,
		42.425350, 40.226288, 25.713715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550709, 40.201435, 26.557814>,  <43.016724, 40.158413, 26.082050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550709, 40.201435, 26.557814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333782, 40.123211, 26.230976>,  <42.203625, 40.076275, 26.034874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333782, 40.123211, 26.230976>,  <42.550709, 40.201435, 26.557814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333782, 40.123211, 26.230976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638904, -0.535573, 0.552235,
		-0.545612, 0.821533, 0.165504,
		-0.542318, -0.195565, -0.817096,
		42.171085, 40.064541, 25.985847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987198, 40.380260, 26.786161>,  <42.550709, 40.201435, 26.557814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987198, 40.380260, 26.786161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927235, 40.114918, 26.492908>,  <41.891254, 39.955711, 26.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927235, 40.114918, 26.492908>,  <41.987198, 40.380260, 26.786161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927235, 40.114918, 26.492908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676458, -0.471972, 0.565374,
		-0.721063, 0.580690, -0.377979,
		-0.149912, -0.663357, -0.733133,
		41.882259, 39.915909, 26.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229469, 40.311481, 26.690929>,  <41.987198, 40.380260, 26.786161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229469, 40.311481, 26.690929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397163, 39.984562, 26.532808>,  <41.497780, 39.788410, 26.437935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397163, 39.984562, 26.532808>,  <41.229469, 40.311481, 26.690929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397163, 39.984562, 26.532808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709338, -0.566637, 0.419239,
		-0.566637, 0.104643, -0.817296,
		-0.419239, 0.817296, 0.395305,
		41.522934, 39.739372, 26.414217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657726, 39.954201, 26.567081>,  <41.229469, 40.311481, 26.690929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657726, 39.954201, 26.567081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956161, 39.688187, 26.553947>,  <41.135223, 39.528580, 26.546068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956161, 39.688187, 26.553947>,  <40.657726, 39.954201, 26.567081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956161, 39.688187, 26.553947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614799, -0.706987, 0.349559,
		-0.255682, -0.240616, -0.936339,
		0.746089, -0.665036, -0.032833,
		41.179989, 39.488674, 26.544098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406979, 39.394409, 26.290321>,  <40.657726, 39.954201, 26.567081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406979, 39.394409, 26.290321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712288, 39.272007, 26.517925>,  <40.895473, 39.198566, 26.654488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712288, 39.272007, 26.517925>,  <40.406979, 39.394409, 26.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712288, 39.272007, 26.517925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574592, -0.724192, 0.381300,
		0.295392, -0.617986, -0.728586,
		0.763274, -0.306007, 0.569010,
		40.941269, 39.180206, 26.688629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421600, 38.625305, 26.179377>,  <40.406979, 39.394409, 26.290321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421600, 38.625305, 26.179377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628754, 38.696445, 26.514082>,  <40.753044, 38.739128, 26.714905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628754, 38.696445, 26.514082>,  <40.421600, 38.625305, 26.179377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628754, 38.696445, 26.514082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443883, -0.780299, 0.440569,
		0.731278, -0.599587, -0.325159,
		0.517881, 0.177846, 0.836762,
		40.784119, 38.749798, 26.765110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498089, 37.955696, 26.455881>,  <40.421600, 38.625305, 26.179377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498089, 37.955696, 26.455881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586872, 38.188782, 26.768593>,  <40.640144, 38.328632, 26.956221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586872, 38.188782, 26.768593>,  <40.498089, 37.955696, 26.455881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586872, 38.188782, 26.768593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387517, -0.683020, 0.619123,
		0.894743, -0.440373, 0.074208,
		0.221960, 0.582713, 0.781779,
		40.653461, 38.363594, 27.003126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753029, 37.570850, 26.980072>,  <40.498089, 37.955696, 26.455881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753029, 37.570850, 26.980072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663425, 37.887054, 27.208078>,  <40.609661, 38.076775, 27.344883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663425, 37.887054, 27.208078>,  <40.753029, 37.570850, 26.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663425, 37.887054, 27.208078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467441, -0.600365, 0.648892,
		0.855171, -0.121089, 0.504004,
		-0.224012, 0.790506, 0.570017,
		40.596222, 38.124207, 27.379084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847019, 37.333599, 27.676920>,  <40.753029, 37.570850, 26.980072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847019, 37.333599, 27.676920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606091, 37.652313, 27.696283>,  <40.461533, 37.843544, 27.707901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606091, 37.652313, 27.696283>,  <40.847019, 37.333599, 27.676920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606091, 37.652313, 27.696283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533069, -0.446620, 0.718587,
		0.594181, 0.407014, 0.693750,
		-0.602318, 0.796787, 0.048407,
		40.425396, 37.891350, 27.710806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708832, 37.396820, 28.384033>,  <40.847019, 37.333599, 27.676920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708832, 37.396820, 28.384033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436069, 37.614433, 28.188473>,  <40.272411, 37.745003, 28.071136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436069, 37.614433, 28.188473>,  <40.708832, 37.396820, 28.384033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436069, 37.614433, 28.188473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722597, -0.397470, 0.565571,
		0.113365, 0.738949, 0.664156,
		-0.681910, 0.544033, -0.488903,
		40.231495, 37.777645, 28.041801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213459, 37.657749, 28.928396>,  <40.708832, 37.396820, 28.384033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213459, 37.657749, 28.928396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001141, 37.676590, 28.589922>,  <39.873749, 37.687893, 28.386837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001141, 37.676590, 28.589922>,  <40.213459, 37.657749, 28.928396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001141, 37.676590, 28.589922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761471, -0.464816, 0.451783,
		-0.372041, 0.884153, 0.282592,
		-0.530799, 0.047103, -0.846188,
		39.841900, 37.690720, 28.336065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502583, 37.915356, 29.083721>,  <40.213459, 37.657749, 28.928396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502583, 37.915356, 29.083721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483803, 37.712231, 28.739645>,  <39.472534, 37.590355, 28.533199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483803, 37.712231, 28.739645>,  <39.502583, 37.915356, 29.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483803, 37.712231, 28.739645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811970, -0.482169, 0.328965,
		-0.581808, 0.713893, -0.389686,
		-0.046951, -0.507808, -0.860190,
		39.469719, 37.559887, 28.481588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724728, 37.820797, 28.924974>,  <39.502583, 37.915356, 29.083721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724728, 37.820797, 28.924974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941944, 37.544209, 28.734404>,  <39.072273, 37.378258, 28.620062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941944, 37.544209, 28.734404>,  <38.724728, 37.820797, 28.924974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941944, 37.544209, 28.734404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675151, -0.696893, 0.241893,
		-0.499278, 0.190300, -0.845285,
		0.543041, -0.691467, -0.476424,
		39.104855, 37.336769, 28.591476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100349, 37.361046, 28.740921>,  <38.724728, 37.820797, 28.924974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100349, 37.361046, 28.740921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450264, 37.175873, 28.683716>,  <38.660213, 37.064770, 28.649393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450264, 37.175873, 28.683716>,  <38.100349, 37.361046, 28.740921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450264, 37.175873, 28.683716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409823, -0.864412, 0.291267,
		-0.258460, -0.196184, -0.945891,
		0.874782, -0.462929, -0.143015,
		38.712700, 37.036995, 28.640812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923012, 36.696728, 28.476835>,  <38.100349, 37.361046, 28.740921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923012, 36.696728, 28.476835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295254, 36.659210, 28.618361>,  <38.518597, 36.636700, 28.703276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295254, 36.659210, 28.618361>,  <37.923012, 36.696728, 28.476835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295254, 36.659210, 28.618361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298505, -0.753879, 0.585287,
		0.211835, -0.650284, -0.729559,
		0.930602, -0.093793, 0.353811,
		38.574436, 36.631073, 28.724504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056076, 35.945335, 28.344942>,  <37.923012, 36.696728, 28.476835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056076, 35.945335, 28.344942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299156, 36.087971, 28.628786>,  <38.445004, 36.173550, 28.799093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299156, 36.087971, 28.628786>,  <38.056076, 35.945335, 28.344942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299156, 36.087971, 28.628786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092018, -0.855895, 0.508897,
		0.788818, -0.374554, -0.487314,
		0.607699, 0.356586, 0.709611,
		38.481464, 36.194946, 28.841669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464855, 35.435352, 28.534483>,  <38.056076, 35.945335, 28.344942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464855, 35.435352, 28.534483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460693, 35.681198, 28.849987>,  <38.458195, 35.828705, 29.039289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460693, 35.681198, 28.849987>,  <38.464855, 35.435352, 28.534483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460693, 35.681198, 28.849987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300312, -0.754311, 0.583804,
		0.953784, -0.230800, 0.192425,
		-0.010406, 0.614611, 0.788762,
		38.457573, 35.865582, 29.086617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789520, 35.042427, 29.168686>,  <38.464855, 35.435352, 28.534483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789520, 35.042427, 29.168686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598770, 35.341297, 29.353867>,  <38.484322, 35.520618, 29.464975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598770, 35.341297, 29.353867>,  <38.789520, 35.042427, 29.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598770, 35.341297, 29.353867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345327, -0.643607, 0.683022,
		0.808294, 0.165847, 0.564939,
		-0.476875, 0.747172, 0.462952,
		38.455708, 35.565449, 29.492752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988552, 34.952110, 29.824646>,  <38.789520, 35.042427, 29.168686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988552, 34.952110, 29.824646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659439, 35.179211, 29.835211>,  <38.461971, 35.315472, 29.841551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659439, 35.179211, 29.835211>,  <38.988552, 34.952110, 29.824646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659439, 35.179211, 29.835211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321375, -0.503062, 0.802276,
		0.468777, 0.651607, 0.596369,
		-0.822780, 0.567747, 0.026413,
		38.412605, 35.349533, 29.843134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942467, 35.378395, 30.461044>,  <38.988552, 34.952110, 29.824646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942467, 35.378395, 30.461044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576630, 35.292492, 30.323986>,  <38.357128, 35.240952, 30.241751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576630, 35.292492, 30.323986>,  <38.942467, 35.378395, 30.461044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576630, 35.292492, 30.323986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233069, -0.412497, 0.880639,
		-0.330466, 0.885283, 0.327211,
		-0.914588, -0.214759, -0.342648,
		38.302254, 35.228065, 30.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513668, 35.463959, 31.013929>,  <38.942467, 35.378395, 30.461044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513668, 35.463959, 31.013929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267799, 35.267433, 30.767097>,  <38.120277, 35.149517, 30.618999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267799, 35.267433, 30.767097>,  <38.513668, 35.463959, 31.013929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267799, 35.267433, 30.767097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296944, -0.580632, 0.758083,
		-0.730753, 0.649212, 0.211006,
		-0.614674, -0.491315, -0.617078,
		38.083397, 35.120037, 30.581974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859997, 35.444542, 31.284449>,  <38.513668, 35.463959, 31.013929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859997, 35.444542, 31.284449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860435, 35.133049, 31.033508>,  <37.860699, 34.946152, 30.882944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860435, 35.133049, 31.033508>,  <37.859997, 35.444542, 31.284449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860435, 35.133049, 31.033508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316465, -0.595380, 0.738494,
		-0.948604, 0.197723, -0.247096,
		0.001099, -0.778735, -0.627352,
		37.860764, 34.899429, 30.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175747, 35.186028, 31.498285>,  <37.859997, 35.444542, 31.284449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175747, 35.186028, 31.498285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391418, 34.918655, 31.293352>,  <37.520821, 34.758232, 31.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391418, 34.918655, 31.293352>,  <37.175747, 35.186028, 31.498285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391418, 34.918655, 31.293352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436833, -0.742070, 0.508437,
		-0.720038, -0.050341, -0.692106,
		0.539187, -0.668429, -0.512328,
		37.553173, 34.718128, 31.139652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751068, 34.596268, 31.377821>,  <37.175747, 35.186028, 31.498285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751068, 34.596268, 31.377821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115780, 34.441429, 31.322966>,  <37.334606, 34.348526, 31.290052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115780, 34.441429, 31.322966>,  <36.751068, 34.596268, 31.377821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115780, 34.441429, 31.322966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313286, -0.871547, 0.377171,
		-0.265525, -0.300934, -0.915934,
		0.911783, -0.387097, -0.137139,
		37.389317, 34.325298, 31.281824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760010, 33.936260, 31.000647>,  <36.751068, 34.596268, 31.377821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760010, 33.936260, 31.000647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097668, 33.923454, 31.214710>,  <37.300262, 33.915771, 31.343149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097668, 33.923454, 31.214710>,  <36.760010, 33.936260, 31.000647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097668, 33.923454, 31.214710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272842, -0.884933, 0.377427,
		0.461494, -0.464617, -0.755747,
		0.844145, -0.032019, 0.535158,
		37.350910, 33.913849, 31.375257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923744, 33.252892, 30.921185>,  <36.760010, 33.936260, 31.000647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923744, 33.252892, 30.921185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126022, 33.372219, 31.244982>,  <37.247387, 33.443817, 31.439260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126022, 33.372219, 31.244982>,  <36.923744, 33.252892, 30.921185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126022, 33.372219, 31.244982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219543, -0.862919, 0.455161,
		0.834311, -0.407890, -0.370878,
		0.505694, 0.298323, 0.809492,
		37.277729, 33.461716, 31.487829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120533, 32.595177, 31.164154>,  <36.923744, 33.252892, 30.921185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120533, 32.595177, 31.164154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212391, 32.844681, 31.463001>,  <37.267506, 32.994385, 31.642309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212391, 32.844681, 31.463001>,  <37.120533, 32.595177, 31.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212391, 32.844681, 31.463001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236570, -0.708836, 0.664520,
		0.944085, -0.329350, -0.015219,
		0.229648, 0.623763, 0.747116,
		37.281284, 33.031811, 31.687136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666790, 32.285995, 31.593685>,  <37.120533, 32.595177, 31.164154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666790, 32.285995, 31.593685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455765, 32.550541, 31.806955>,  <37.329147, 32.709267, 31.934917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455765, 32.550541, 31.806955>,  <37.666790, 32.285995, 31.593685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455765, 32.550541, 31.806955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331251, -0.738095, 0.587783,
		0.782271, 0.133478, 0.608470,
		-0.527565, 0.661362, 0.533176,
		37.297497, 32.748951, 31.966908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615475, 31.997753, 32.346642>,  <37.666790, 32.285995, 31.593685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615475, 31.997753, 32.346642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320412, 32.267796, 32.342903>,  <37.143372, 32.429821, 32.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320412, 32.267796, 32.342903>,  <37.615475, 31.997753, 32.346642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320412, 32.267796, 32.342903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564557, -0.609153, 0.556963,
		0.370316, 0.416127, 0.830485,
		-0.737660, 0.675108, -0.009348,
		37.099113, 32.470329, 32.340099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225559, 31.866140, 33.070034>,  <37.615475, 31.997753, 32.346642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225559, 31.866140, 33.070034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989613, 32.065247, 32.815701>,  <36.848045, 32.184711, 32.663101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989613, 32.065247, 32.815701>,  <37.225559, 31.866140, 33.070034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989613, 32.065247, 32.815701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796956, -0.485706, 0.359097,
		-0.130083, 0.718552, 0.683199,
		-0.589864, 0.497767, -0.635836,
		36.812653, 32.214577, 32.624950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595173, 32.149670, 33.427109>,  <37.225559, 31.866140, 33.070034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595173, 32.149670, 33.427109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527878, 32.108982, 33.034916>,  <36.487499, 32.084568, 32.799599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527878, 32.108982, 33.034916>,  <36.595173, 32.149670, 33.427109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527878, 32.108982, 33.034916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648746, -0.737462, 0.187825,
		-0.742175, 0.667685, 0.058080,
		-0.168240, -0.101719, -0.980484,
		36.477406, 32.078465, 32.740772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783352, 32.188637, 33.313969>,  <36.595173, 32.149670, 33.427109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783352, 32.188637, 33.313969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982071, 31.970993, 33.043522>,  <36.101303, 31.840406, 32.881252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982071, 31.970993, 33.043522>,  <35.783352, 32.188637, 33.313969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982071, 31.970993, 33.043522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651195, -0.748704, 0.124045,
		-0.573708, 0.378662, -0.726274,
		0.496793, -0.544112, -0.676120,
		36.131107, 31.807760, 32.840687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298870, 31.932224, 32.794937>,  <35.783352, 32.188637, 33.313969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298870, 31.932224, 32.794937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616928, 31.696030, 32.850174>,  <35.807762, 31.554314, 32.883316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616928, 31.696030, 32.850174>,  <35.298870, 31.932224, 32.794937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616928, 31.696030, 32.850174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605437, -0.785950, 0.125411,
		0.034477, -0.183324, -0.982448,
		0.795146, -0.590487, 0.138088,
		35.855473, 31.518883, 32.891602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936378, 31.290491, 32.688450>,  <35.298870, 31.932224, 32.794937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936378, 31.290491, 32.688450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292446, 31.147560, 32.801529>,  <35.506084, 31.061802, 32.869377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292446, 31.147560, 32.801529>,  <34.936378, 31.290491, 32.688450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292446, 31.147560, 32.801529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436462, -0.846824, 0.303958,
		0.130785, -0.393961, -0.909774,
		0.890166, -0.357329, 0.282701,
		35.559498, 31.040361, 32.886337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112915, 30.706093, 32.223366>,  <34.936378, 31.290491, 32.688450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112915, 30.706093, 32.223366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210907, 30.672808, 32.609745>,  <35.269703, 30.652836, 32.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210907, 30.672808, 32.609745>,  <35.112915, 30.706093, 32.223366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210907, 30.672808, 32.609745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599796, -0.795777, 0.083567,
		0.761727, -0.599845, -0.244863,
		0.244983, -0.083212, 0.965950,
		35.284401, 30.647844, 32.899529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384052, 30.098969, 32.257473>,  <35.112915, 30.706093, 32.223366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384052, 30.098969, 32.257473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248314, 30.206257, 32.618118>,  <35.166870, 30.270630, 32.834503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248314, 30.206257, 32.618118>,  <35.384052, 30.098969, 32.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248314, 30.206257, 32.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724730, -0.685588, -0.068816,
		0.599676, -0.676777, 0.427038,
		-0.339345, 0.268220, 0.901611,
		35.146511, 30.286722, 32.888603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006638, 29.627634, 31.657440>,  <35.384052, 30.098969, 32.257473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006638, 29.627634, 31.657440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146320, 29.933252, 31.440447>,  <35.230129, 30.116623, 31.310251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146320, 29.933252, 31.440447>,  <35.006638, 29.627634, 31.657440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146320, 29.933252, 31.440447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553669, -0.635304, -0.538367,
		-0.755979, -0.112355, -0.644881,
		0.349207, 0.764045, -0.542485,
		35.251083, 30.162466, 31.277702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755619, 29.775475, 31.031763>,  <35.006638, 29.627634, 31.657440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755619, 29.775475, 31.031763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137928, 29.892143, 31.016684>,  <35.367313, 29.962145, 31.007635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137928, 29.892143, 31.016684>,  <34.755619, 29.775475, 31.031763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137928, 29.892143, 31.016684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217188, -0.786441, -0.578221,
		-0.198298, 0.544462, -0.815009,
		0.955776, 0.291670, -0.037699,
		35.424660, 29.979645, 31.005373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984375, 29.904081, 30.306740>,  <34.755619, 29.775475, 31.031763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984375, 29.904081, 30.306740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340534, 29.811258, 30.463373>,  <35.554230, 29.755564, 30.557354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340534, 29.811258, 30.463373>,  <34.984375, 29.904081, 30.306740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340534, 29.811258, 30.463373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086051, -0.758951, -0.645436,
		0.446972, 0.608392, -0.655801,
		0.890399, -0.232059, 0.391583,
		35.607655, 29.741640, 30.580849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426846, 29.561281, 29.844105>,  <34.984375, 29.904081, 30.306740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426846, 29.561281, 29.844105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530670, 29.435335, 30.209288>,  <35.592964, 29.359768, 30.428396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530670, 29.435335, 30.209288>,  <35.426846, 29.561281, 29.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530670, 29.435335, 30.209288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306696, -0.869541, -0.387086,
		0.915732, 0.380473, -0.129132,
		0.259562, -0.314863, 0.912956,
		35.608540, 29.340876, 30.483175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173721, 29.347145, 29.929581>,  <35.426846, 29.561281, 29.844105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173721, 29.347145, 29.929581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992268, 29.098907, 30.185417>,  <35.883396, 28.949965, 30.338919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992268, 29.098907, 30.185417>,  <36.173721, 29.347145, 29.929581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992268, 29.098907, 30.185417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458415, -0.777949, -0.429711,
		0.764245, 0.098266, 0.637396,
		-0.453635, -0.620596, 0.639591,
		35.856178, 28.912729, 30.377295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594906, 28.857672, 30.406118>,  <36.173721, 29.347145, 29.929581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594906, 28.857672, 30.406118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239269, 28.693232, 30.325602>,  <36.025887, 28.594566, 30.277290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239269, 28.693232, 30.325602>,  <36.594906, 28.857672, 30.406118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239269, 28.693232, 30.325602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453298, -0.851861, -0.262401,
		-0.063600, -0.324544, 0.943730,
		-0.889087, -0.411102, -0.201293,
		35.972542, 28.569901, 30.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398933, 28.222986, 30.844788>,  <36.594906, 28.857672, 30.406118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398933, 28.222986, 30.844788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260422, 28.208927, 30.469799>,  <36.177315, 28.200493, 30.244806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260422, 28.208927, 30.469799>,  <36.398933, 28.222986, 30.844788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260422, 28.208927, 30.469799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487707, -0.860390, -0.147892,
		-0.801393, -0.508423, 0.315079,
		-0.346282, -0.035147, -0.937472,
		36.156536, 28.198383, 30.188557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719681, 27.870781, 31.529409>,  <36.398933, 28.222986, 30.844788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719681, 27.870781, 31.529409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361168, 27.703432, 31.470564>,  <36.146061, 27.603024, 31.435257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361168, 27.703432, 31.470564>,  <36.719681, 27.870781, 31.529409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361168, 27.703432, 31.470564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394979, -0.602212, -0.693781,
		0.201666, -0.679930, 0.705000,
		-0.896282, -0.418372, -0.147112,
		36.092281, 27.577921, 31.426430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484020, 27.725367, 31.436890>,  <36.719681, 27.870781, 31.529409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484020, 27.725367, 31.436890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517498, 28.096474, 31.582350>,  <37.537586, 28.319138, 31.669626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517498, 28.096474, 31.582350>,  <37.484020, 27.725367, 31.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517498, 28.096474, 31.582350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148252, -0.372461, 0.916130,
		0.985402, -0.022762, -0.168716,
		0.083693, 0.927769, 0.363650,
		37.542606, 28.374804, 31.691444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048149, 27.671322, 31.879000>,  <37.484020, 27.725367, 31.436890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048149, 27.671322, 31.879000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883091, 28.012569, 32.006695>,  <37.784058, 28.217318, 32.083313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883091, 28.012569, 32.006695>,  <38.048149, 27.671322, 31.879000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883091, 28.012569, 32.006695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367926, -0.164502, 0.915189,
		0.833282, 0.495100, -0.246005,
		-0.412641, 0.853121, 0.319236,
		37.759300, 28.268505, 32.102467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624207, 28.193916, 32.168427>,  <38.048149, 27.671322, 31.879000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624207, 28.193916, 32.168427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266640, 28.283962, 32.323471>,  <38.052101, 28.337990, 32.416496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266640, 28.283962, 32.323471>,  <38.624207, 28.193916, 32.168427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266640, 28.283962, 32.323471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387958, -0.044578, 0.920599,
		0.224518, 0.973312, -0.047486,
		-0.893913, 0.225114, 0.387613,
		37.998466, 28.351496, 32.439754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843266, 28.548496, 32.791069>,  <38.624207, 28.193916, 32.168427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843266, 28.548496, 32.791069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451469, 28.514059, 32.863930>,  <38.216393, 28.493397, 32.907646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451469, 28.514059, 32.863930>,  <38.843266, 28.548496, 32.791069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451469, 28.514059, 32.863930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186641, -0.047252, 0.981291,
		-0.075876, 0.995166, 0.062352,
		-0.979494, -0.086094, 0.182153,
		38.157619, 28.488232, 32.918575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621487, 28.991592, 33.463787>,  <38.843266, 28.548496, 32.791069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621487, 28.991592, 33.463787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373409, 28.683517, 33.404228>,  <38.224564, 28.498672, 33.368492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373409, 28.683517, 33.404228>,  <38.621487, 28.991592, 33.463787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373409, 28.683517, 33.404228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154202, -0.066405, 0.985805,
		-0.769144, 0.634349, -0.077581,
		-0.620193, -0.770189, -0.148893,
		38.187351, 28.452461, 33.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138744, 29.012547, 33.983692>,  <38.621487, 28.991592, 33.463787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138744, 29.012547, 33.983692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060802, 28.630257, 33.895493>,  <38.014038, 28.400883, 33.842571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060802, 28.630257, 33.895493>,  <38.138744, 29.012547, 33.983692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060802, 28.630257, 33.895493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280467, -0.161132, 0.946242,
		-0.939878, 0.246219, -0.236654,
		-0.194850, -0.955726, -0.220501,
		38.002346, 28.343538, 33.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415470, 28.703564, 34.144928>,  <38.138744, 29.012547, 33.983692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415470, 28.703564, 34.144928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709320, 28.437437, 34.198120>,  <37.885628, 28.277761, 34.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709320, 28.437437, 34.198120>,  <37.415470, 28.703564, 34.144928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709320, 28.437437, 34.198120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357369, -0.212834, 0.909390,
		-0.576730, -0.715580, -0.394116,
		0.734622, -0.665317, 0.132978,
		37.929707, 28.237843, 34.238014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144852, 29.094936, 34.653858>,  <37.415470, 28.703564, 34.144928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144852, 29.094936, 34.653858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911861, 29.251314, 34.938923>,  <36.772068, 29.345140, 35.109962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911861, 29.251314, 34.938923>,  <37.144852, 29.094936, 34.653858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911861, 29.251314, 34.938923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596686, 0.389730, -0.701481,
		-0.551984, -0.833831, 0.006261,
		-0.582477, 0.390942, 0.712660,
		36.737118, 29.368597, 35.152721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218311, 28.524765, 35.084755>,  <37.144852, 29.094936, 34.653858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218311, 28.524765, 35.084755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334682, 28.215530, 35.310215>,  <37.404507, 28.029989, 35.445492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334682, 28.215530, 35.310215>,  <37.218311, 28.524765, 35.084755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334682, 28.215530, 35.310215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709306, -0.221078, -0.669336,
		0.642065, 0.594526, 0.484038,
		0.290927, -0.773087, 0.563647,
		37.421959, 27.983604, 35.479309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969570, 28.577415, 35.133453>,  <37.218311, 28.524765, 35.084755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969570, 28.577415, 35.133453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798939, 28.216188, 35.153450>,  <37.696560, 27.999453, 35.165447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798939, 28.216188, 35.153450>,  <37.969570, 28.577415, 35.133453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798939, 28.216188, 35.153450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433336, -0.252585, -0.865113,
		0.793884, -0.347374, 0.499079,
		-0.426577, -0.903069, 0.049994,
		37.670967, 27.945269, 35.168449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486263, 28.049381, 34.930420>,  <37.969570, 28.577415, 35.133453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486263, 28.049381, 34.930420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134670, 27.860840, 34.901546>,  <37.923714, 27.747715, 34.884224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134670, 27.860840, 34.901546>,  <38.486263, 28.049381, 34.930420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134670, 27.860840, 34.901546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245948, -0.318462, -0.915473,
		0.408523, -0.822441, 0.395852,
		-0.878987, -0.471351, -0.072179,
		37.870975, 27.719435, 34.879894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632637, 27.431541, 34.641167>,  <38.486263, 28.049381, 34.930420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632637, 27.431541, 34.641167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254826, 27.519638, 34.543716>,  <38.028137, 27.572496, 34.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254826, 27.519638, 34.543716>,  <38.632637, 27.431541, 34.641167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254826, 27.519638, 34.543716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226860, -0.098865, -0.968896,
		-0.237477, -0.970422, 0.043417,
		-0.944531, 0.220241, -0.243628,
		37.971466, 27.585711, 34.470627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378769, 27.094715, 33.946999>,  <38.632637, 27.431541, 34.641167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378769, 27.094715, 33.946999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122787, 27.394577, 34.014496>,  <37.969196, 27.574493, 34.054993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122787, 27.394577, 34.014496>,  <38.378769, 27.094715, 33.946999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122787, 27.394577, 34.014496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014804, 0.231589, -0.972701,
		-0.768269, -0.619987, -0.159305,
		-0.639956, 0.749655, 0.168744,
		37.930801, 27.619473, 34.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789471, 27.057680, 33.584652>,  <38.378769, 27.094715, 33.946999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789471, 27.057680, 33.584652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858871, 27.449326, 33.627048>,  <37.900513, 27.684313, 33.652485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858871, 27.449326, 33.627048>,  <37.789471, 27.057680, 33.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858871, 27.449326, 33.627048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145808, 0.131973, -0.980471,
		-0.973980, 0.154661, 0.165660,
		0.173503, 0.979114, 0.105988,
		37.910923, 27.743059, 33.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395729, 27.432295, 33.101639>,  <37.789471, 27.057680, 33.584652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395729, 27.432295, 33.101639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622391, 27.752155, 33.181099>,  <37.758389, 27.944071, 33.228775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622391, 27.752155, 33.181099>,  <37.395729, 27.432295, 33.101639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622391, 27.752155, 33.181099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210277, 0.373454, -0.903502,
		-0.796672, 0.470202, 0.379767,
		0.566654, 0.799651, 0.198648,
		37.792385, 27.992050, 33.240692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953011, 28.027340, 33.044159>,  <37.395729, 27.432295, 33.101639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953011, 28.027340, 33.044159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317177, 28.191736, 33.025249>,  <37.535675, 28.290375, 33.013905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317177, 28.191736, 33.025249>,  <36.953011, 28.027340, 33.044159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317177, 28.191736, 33.025249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228025, 0.403176, -0.886258,
		-0.345187, 0.817639, 0.460773,
		0.910412, 0.410992, -0.047271,
		37.590302, 28.315035, 33.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870453, 28.659525, 32.791515>,  <36.953011, 28.027340, 33.044159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870453, 28.659525, 32.791515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264164, 28.619722, 32.733154>,  <37.500393, 28.595840, 32.698139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264164, 28.619722, 32.733154>,  <36.870453, 28.659525, 32.791515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264164, 28.619722, 32.733154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062425, 0.576775, -0.814515,
		0.165201, 0.810820, 0.561497,
		0.984282, -0.099507, -0.145899,
		37.559448, 28.589870, 32.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264191, 29.334486, 32.605648>,  <36.870453, 28.659525, 32.791515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264191, 29.334486, 32.605648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455326, 29.020300, 32.448315>,  <37.570007, 28.831787, 32.353912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455326, 29.020300, 32.448315>,  <37.264191, 29.334486, 32.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455326, 29.020300, 32.448315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222003, 0.325249, -0.919200,
		0.849933, 0.526550, -0.018960,
		0.477838, -0.785467, -0.393335,
		37.598679, 28.784660, 32.330315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888504, 29.531267, 32.282722>,  <37.264191, 29.334486, 32.605648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888504, 29.531267, 32.282722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778679, 29.189812, 32.105675>,  <37.712784, 28.984938, 31.999445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778679, 29.189812, 32.105675>,  <37.888504, 29.531267, 32.282722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778679, 29.189812, 32.105675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147981, 0.492341, -0.857730,
		0.950113, -0.170005, -0.261503,
		-0.274567, -0.853639, -0.442622,
		37.696308, 28.933720, 31.972889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315037, 29.294453, 31.677958>,  <37.888504, 29.531267, 32.282722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315037, 29.294453, 31.677958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943684, 29.152758, 31.633009>,  <37.720871, 29.067739, 31.606039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943684, 29.152758, 31.633009>,  <38.315037, 29.294453, 31.677958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943684, 29.152758, 31.633009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043943, 0.404884, -0.913311,
		0.369024, -0.842962, -0.391453,
		-0.928380, -0.354236, -0.112369,
		37.665169, 29.046486, 31.599298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531487, 29.957893, 31.359169>,  <38.315037, 29.294453, 31.677958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531487, 29.957893, 31.359169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790756, 30.125914, 31.613234>,  <38.946320, 30.226727, 31.765673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790756, 30.125914, 31.613234>,  <38.531487, 29.957893, 31.359169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790756, 30.125914, 31.613234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467959, 0.877736, -0.102930,
		-0.600738, -0.230512, 0.765492,
		0.648173, 0.420053, 0.635160,
		38.985207, 30.251930, 31.803782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179447, 30.132290, 31.983612>,  <38.531487, 29.957893, 31.359169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179447, 30.132290, 31.983612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458935, 30.370235, 31.824652>,  <38.626629, 30.513002, 31.729277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458935, 30.370235, 31.824652>,  <38.179447, 30.132290, 31.983612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458935, 30.370235, 31.824652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685908, 0.714891, -0.135872,
		0.203273, 0.367516, 0.907531,
		0.698721, 0.594863, -0.397400,
		38.668552, 30.548695, 31.705431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147160, 30.917091, 32.271427>,  <38.179447, 30.132290, 31.983612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147160, 30.917091, 32.271427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288849, 30.897167, 31.897892>,  <38.373863, 30.885214, 31.673773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288849, 30.897167, 31.897892>,  <38.147160, 30.917091, 32.271427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288849, 30.897167, 31.897892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669675, 0.683489, -0.290478,
		0.652734, 0.728259, 0.208752,
		0.354223, -0.049808, -0.933834,
		38.395115, 30.882225, 31.617743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441402, 30.880499, 33.000809>,  <38.147160, 30.917091, 32.271427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441402, 30.880499, 33.000809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773468, 30.663357, 33.051632>,  <38.972706, 30.533072, 33.082127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773468, 30.663357, 33.051632>,  <38.441402, 30.880499, 33.000809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773468, 30.663357, 33.051632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485825, 0.816164, 0.312811,
		-0.273514, -0.197954, 0.941278,
		0.830159, -0.542854, 0.127062,
		39.022514, 30.500500, 33.089752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636269, 30.964460, 33.744534>,  <38.441402, 30.880499, 33.000809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636269, 30.964460, 33.744534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949966, 30.893530, 33.506706>,  <39.138187, 30.850971, 33.364010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949966, 30.893530, 33.506706>,  <38.636269, 30.964460, 33.744534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949966, 30.893530, 33.506706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381649, 0.893420, 0.236950,
		0.489180, -0.412743, 0.768339,
		0.784249, -0.177324, -0.594567,
		39.185242, 30.840332, 33.328335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078438, 31.289909, 34.142250>,  <38.636269, 30.964460, 33.744534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078438, 31.289909, 34.142250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235760, 31.228210, 33.779697>,  <39.330154, 31.191191, 33.562168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235760, 31.228210, 33.779697>,  <39.078438, 31.289909, 34.142250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235760, 31.228210, 33.779697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462642, 0.885127, 0.050123,
		0.794528, -0.439041, 0.419487,
		0.393305, -0.154248, -0.906377,
		39.353752, 31.181936, 33.507786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833038, 31.276752, 34.153263>,  <39.078438, 31.289909, 34.142250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833038, 31.276752, 34.153263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722961, 31.381866, 33.783352>,  <39.656914, 31.444935, 33.561405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722961, 31.381866, 33.783352>,  <39.833038, 31.276752, 34.153263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722961, 31.381866, 33.783352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807649, 0.584989, -0.074108,
		0.521510, -0.767289, -0.373223,
		-0.275193, 0.262785, -0.924777,
		39.640404, 31.460701, 33.505920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411633, 31.369087, 33.719769>,  <39.833038, 31.276752, 34.153263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411633, 31.369087, 33.719769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133171, 31.576923, 33.521618>,  <39.966095, 31.701626, 33.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133171, 31.576923, 33.521618>,  <40.411633, 31.369087, 33.719769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133171, 31.576923, 33.521618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664633, 0.727301, -0.171162,
		0.271351, -0.448396, -0.851651,
		-0.696155, 0.519591, -0.495373,
		39.924324, 31.732801, 33.373005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655998, 31.781872, 33.158813>,  <40.411633, 31.369087, 33.719769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655998, 31.781872, 33.158813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336151, 31.999653, 33.260147>,  <40.144241, 32.130322, 33.320950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336151, 31.999653, 33.260147>,  <40.655998, 31.781872, 33.158813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336151, 31.999653, 33.260147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554192, 0.831528, -0.037842,
		-0.231260, 0.110138, -0.966638,
		-0.799619, 0.544455, 0.253337,
		40.096264, 32.162991, 33.336147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591534, 32.462513, 32.694302>,  <40.655998, 31.781872, 33.158813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591534, 32.462513, 32.694302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386021, 32.528244, 33.031116>,  <40.262711, 32.567684, 33.233204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386021, 32.528244, 33.031116>,  <40.591534, 32.462513, 32.694302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386021, 32.528244, 33.031116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487107, 0.863816, 0.128637,
		-0.706224, 0.476253, -0.523862,
		-0.513784, 0.164330, 0.842034,
		40.231884, 32.577541, 33.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998482, 33.098415, 32.694111>,  <40.591534, 32.462513, 32.694302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998482, 33.098415, 32.694111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222916, 33.002048, 33.010880>,  <40.357574, 32.944229, 33.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222916, 33.002048, 33.010880>,  <39.998482, 33.098415, 32.694111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222916, 33.002048, 33.010880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400151, 0.916437, -0.004708,
		-0.724615, 0.319531, 0.610600,
		0.561081, -0.240920, 0.791925,
		40.391239, 32.929771, 33.248459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831966, 33.668961, 33.069160>,  <39.998482, 33.098415, 32.694111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831966, 33.668961, 33.069160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184669, 33.495979, 33.144524>,  <40.396290, 33.392193, 33.189739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184669, 33.495979, 33.144524>,  <39.831966, 33.668961, 33.069160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184669, 33.495979, 33.144524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395765, 0.895551, 0.203365,
		-0.256673, -0.104754, 0.960805,
		0.881753, -0.432451, 0.188406,
		40.449196, 33.366245, 33.201046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954414, 34.029041, 33.680851>,  <39.831966, 33.668961, 33.069160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954414, 34.029041, 33.680851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264637, 33.888302, 33.471203>,  <40.450771, 33.803856, 33.345413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264637, 33.888302, 33.471203>,  <39.954414, 34.029041, 33.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264637, 33.888302, 33.471203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515695, 0.831994, 0.204560,
		0.364092, -0.428937, 0.826710,
		0.775561, -0.351852, -0.524123,
		40.497307, 33.782745, 33.313965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456242, 34.568165, 33.824551>,  <39.954414, 34.029041, 33.680851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456242, 34.568165, 33.824551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704735, 34.365822, 33.585159>,  <40.853832, 34.244415, 33.441525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704735, 34.365822, 33.585159>,  <40.456242, 34.568165, 33.824551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704735, 34.365822, 33.585159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642181, 0.766321, 0.018877,
		0.449078, -0.396058, 0.800916,
		0.621235, -0.505856, -0.598479,
		40.891106, 34.214066, 33.405617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147491, 34.537277, 34.120914>,  <40.456242, 34.568165, 33.824551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147491, 34.537277, 34.120914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111538, 34.545330, 33.722614>,  <41.089966, 34.550163, 33.483635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111538, 34.545330, 33.722614>,  <41.147491, 34.537277, 34.120914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111538, 34.545330, 33.722614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581168, 0.812986, -0.036019,
		0.808804, -0.581935, -0.084775,
		-0.089881, 0.020136, -0.995749,
		41.084572, 34.551373, 33.423889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942112, 34.604702, 33.939705>,  <41.147491, 34.537277, 34.120914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942112, 34.604702, 33.939705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216789, 34.390663, 33.742882>,  <42.381596, 34.262241, 33.624786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216789, 34.390663, 33.742882>,  <41.942112, 34.604702, 33.939705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216789, 34.390663, 33.742882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676499, 0.222636, 0.701984,
		-0.266079, -0.814927, 0.514875,
		0.686695, -0.535096, -0.492059,
		42.422798, 34.230133, 33.595264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708504, 34.192631, 34.484028>,  <41.942112, 34.604702, 33.939705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708504, 34.192631, 34.484028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040260, 34.072720, 34.295456>,  <42.239315, 34.000771, 34.182312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040260, 34.072720, 34.295456>,  <41.708504, 34.192631, 34.484028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040260, 34.072720, 34.295456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047984, -0.878949, 0.474496,
		-0.556610, -0.370919, -0.743374,
		0.829387, -0.299779, -0.471433,
		42.289078, 33.982784, 34.154026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178413, 33.940929, 35.012180>,  <41.708504, 34.192631, 34.484028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178413, 33.940929, 35.012180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112503, 33.565266, 35.132729>,  <41.072956, 33.339867, 35.205055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112503, 33.565266, 35.132729>,  <41.178413, 33.940929, 35.012180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112503, 33.565266, 35.132729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980283, -0.189718, -0.055245,
		0.109059, 0.286323, 0.951906,
		-0.164776, -0.939162, 0.301368,
		41.063068, 33.283516, 35.223141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557213, 33.651085, 35.676193>,  <41.178413, 33.940929, 35.012180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557213, 33.651085, 35.676193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483711, 33.352551, 35.420311>,  <41.439610, 33.173431, 35.266781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483711, 33.352551, 35.420311>,  <41.557213, 33.651085, 35.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483711, 33.352551, 35.420311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953324, -0.293937, 0.069095,
		-0.239600, -0.597148, 0.765511,
		-0.183752, -0.746335, -0.639703,
		41.428585, 33.128651, 35.228401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599060, 32.898449, 35.814930>,  <41.557213, 33.651085, 35.676193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599060, 32.898449, 35.814930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698277, 32.977547, 35.435589>,  <41.757805, 33.025005, 35.207985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698277, 32.977547, 35.435589>,  <41.599060, 32.898449, 35.814930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698277, 32.977547, 35.435589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943949, -0.269430, 0.190705,
		-0.217805, -0.942499, -0.253489,
		0.248037, 0.197744, -0.948354,
		41.772686, 33.036869, 35.151081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222427, 32.764900, 35.913555>,  <41.599060, 32.898449, 35.814930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222427, 32.764900, 35.913555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247322, 32.827805, 35.519318>,  <42.262260, 32.865547, 35.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247322, 32.827805, 35.519318>,  <42.222427, 32.764900, 35.913555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247322, 32.827805, 35.519318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943792, -0.330468, 0.006867,
		-0.324627, -0.930622, -0.168994,
		0.062238, 0.157266, -0.985593,
		42.265995, 32.874985, 35.223640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823925, 32.386612, 35.626125>,  <42.222427, 32.764900, 35.913555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823925, 32.386612, 35.626125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772945, 32.652287, 35.331474>,  <42.742355, 32.811691, 35.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772945, 32.652287, 35.331474>,  <42.823925, 32.386612, 35.626125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772945, 32.652287, 35.331474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962392, -0.096829, -0.253821,
		-0.239911, -0.741270, -0.626866,
		-0.127451, 0.664186, -0.736623,
		42.734711, 32.851543, 35.110489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175606, 32.141197, 34.947865>,  <42.823925, 32.386612, 35.626125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175606, 32.141197, 34.947865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149326, 32.539314, 34.976345>,  <43.133560, 32.778187, 34.993435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149326, 32.539314, 34.976345>,  <43.175606, 32.141197, 34.947865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149326, 32.539314, 34.976345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970492, 0.080326, -0.227359,
		-0.232009, 0.054162, -0.971205,
		-0.065699, 0.995296, 0.071200,
		43.129616, 32.837902, 34.997704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394218, 32.431961, 34.262093>,  <43.175606, 32.141197, 34.947865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394218, 32.431961, 34.262093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450413, 32.610874, 34.615410>,  <43.484127, 32.718224, 34.827400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450413, 32.610874, 34.615410>,  <43.394218, 32.431961, 34.262093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450413, 32.610874, 34.615410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987663, -0.125653, -0.093453,
		0.069189, 0.885522, -0.459416,
		0.140482, 0.447283, 0.883291,
		43.492558, 32.745060, 34.880398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942417, 32.948643, 34.223778>,  <43.394218, 32.431961, 34.262093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942417, 32.948643, 34.223778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916084, 32.824181, 34.603008>,  <43.900284, 32.749504, 34.830547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916084, 32.824181, 34.603008>,  <43.942417, 32.948643, 34.223778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916084, 32.824181, 34.603008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985085, -0.171644, 0.012069,
		0.158977, 0.934730, 0.317814,
		-0.065832, -0.311155, 0.948076,
		43.896336, 32.730835, 34.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231300, 33.474567, 34.707291>,  <43.942417, 32.948643, 34.223778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231300, 33.474567, 34.707291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245544, 33.083508, 34.790173>,  <44.254093, 32.848873, 34.839901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245544, 33.083508, 34.790173>,  <44.231300, 33.474567, 34.707291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245544, 33.083508, 34.790173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999205, 0.038551, 0.010156,
		-0.017917, 0.206681, 0.978244,
		0.035613, -0.977649, 0.207207,
		44.256229, 32.790215, 34.852333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603733, 33.362740, 35.280857>,  <44.231300, 33.474567, 34.707291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603733, 33.362740, 35.280857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619625, 33.061230, 35.018482>,  <44.629162, 32.880325, 34.861057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619625, 33.061230, 35.018482>,  <44.603733, 33.362740, 35.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619625, 33.061230, 35.018482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994967, 0.090282, -0.043477,
		0.091991, -0.650904, 0.753566,
		0.039734, -0.753773, -0.655933,
		44.631546, 32.835098, 34.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050968, 32.784962, 35.425453>,  <44.603733, 33.362740, 35.280857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050968, 32.784962, 35.425453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030731, 32.885017, 35.038696>,  <45.018589, 32.945049, 34.806644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030731, 32.885017, 35.038696>,  <45.050968, 32.784962, 35.425453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030731, 32.885017, 35.038696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982423, 0.186643, -0.003118,
		0.179683, -0.950051, -0.255180,
		-0.050589, 0.250135, -0.966888,
		45.015553, 32.960056, 34.748631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717937, 32.487461, 35.154030>,  <45.050968, 32.784962, 35.425453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717937, 32.487461, 35.154030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592144, 32.789593, 34.924049>,  <45.516666, 32.970871, 34.786060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592144, 32.789593, 34.924049>,  <45.717937, 32.487461, 35.154030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592144, 32.789593, 34.924049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908985, 0.414180, 0.046928,
		0.273581, -0.507868, -0.816838,
		-0.314484, 0.755332, -0.574956,
		45.497799, 33.016193, 34.751564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109299, 32.651371, 34.525852>,  <45.717937, 32.487461, 35.154030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109299, 32.651371, 34.525852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961113, 32.989746, 34.679291>,  <45.872204, 33.192772, 34.771355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961113, 32.989746, 34.679291>,  <46.109299, 32.651371, 34.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961113, 32.989746, 34.679291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928039, 0.354334, 0.114849,
		-0.038767, 0.398543, -0.916330,
		-0.370460, 0.845938, 0.383600,
		45.849976, 33.243526, 34.794373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720963, 32.983627, 34.428173>,  <46.109299, 32.651371, 34.525852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720963, 32.983627, 34.428173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482922, 33.189590, 34.674984>,  <46.340096, 33.313168, 34.823071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482922, 33.189590, 34.674984>,  <46.720963, 32.983627, 34.428173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482922, 33.189590, 34.674984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775288, 0.570003, 0.272076,
		-0.211613, 0.640287, -0.738412,
		-0.595104, 0.514908, 0.617027,
		46.304390, 33.344063, 34.860092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842331, 33.715519, 34.205894>,  <46.720963, 32.983627, 34.428173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842331, 33.715519, 34.205894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739326, 33.641735, 34.585297>,  <46.677525, 33.597466, 34.812939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739326, 33.641735, 34.585297>,  <46.842331, 33.715519, 34.205894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739326, 33.641735, 34.585297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787021, 0.529470, 0.316637,
		-0.560612, 0.828032, 0.008828,
		-0.257511, -0.184458, 0.948506,
		46.662071, 33.586399, 34.869850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804596, 34.408112, 34.637249>,  <46.842331, 33.715519, 34.205894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804596, 34.408112, 34.637249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883533, 34.123672, 34.907181>,  <46.930897, 33.953011, 35.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883533, 34.123672, 34.907181>,  <46.804596, 34.408112, 34.637249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883533, 34.123672, 34.907181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765805, 0.541587, 0.346738,
		-0.612044, 0.448363, 0.651439,
		0.197347, -0.711094, 0.674833,
		46.942738, 33.910343, 35.109631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223675, 34.906982, 35.013489>,  <46.804596, 34.408112, 34.637249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223675, 34.906982, 35.013489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611099, 34.990173, 35.068092>,  <47.843555, 35.040089, 35.100853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611099, 34.990173, 35.068092>,  <47.223675, 34.906982, 35.013489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611099, 34.990173, 35.068092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221217, 0.469001, 0.855045,
		0.113806, -0.858362, 0.500264,
		0.968561, 0.207976, 0.136509,
		47.901669, 35.052567, 35.109043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.405266, 37.911903, 24.510008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093628, 38.161980, 24.491489>,  <36.906647, 38.312027, 24.480377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093628, 38.161980, 24.491489>,  <37.405266, 37.911903, 24.510008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093628, 38.161980, 24.491489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381225, -0.413852, 0.826677,
		0.497673, 0.661709, 0.560769,
		-0.779095, 0.625194, -0.046297,
		36.859898, 38.349537, 24.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337280, 38.176838, 25.257421>,  <37.405266, 37.911903, 24.510008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337280, 38.176838, 25.257421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996311, 38.219051, 25.052586>,  <36.791729, 38.244381, 24.929684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996311, 38.219051, 25.052586>,  <37.337280, 38.176838, 25.257421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996311, 38.219051, 25.052586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494525, -0.480730, 0.724116,
		-0.169757, 0.870495, 0.461975,
		-0.852425, 0.105534, -0.512089,
		36.740585, 38.250713, 24.898958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849232, 38.271400, 25.831091>,  <37.337280, 38.176838, 25.257421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849232, 38.271400, 25.831091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630901, 38.174751, 25.510170>,  <36.499905, 38.116760, 25.317617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630901, 38.174751, 25.510170>,  <36.849232, 38.271400, 25.831091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630901, 38.174751, 25.510170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602282, -0.552543, 0.576153,
		-0.582520, 0.797693, 0.156065,
		-0.545826, -0.241626, -0.802304,
		36.467155, 38.102264, 25.269480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136066, 38.326103, 26.055054>,  <36.849232, 38.271400, 25.831091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136066, 38.326103, 26.055054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142788, 38.066105, 25.751154>,  <36.146820, 37.910103, 25.568815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142788, 38.066105, 25.751154>,  <36.136066, 38.326103, 26.055054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142788, 38.066105, 25.751154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672550, -0.569614, 0.472458,
		-0.739861, 0.503030, -0.446729,
		0.016802, -0.650000, -0.759748,
		36.147827, 37.871105, 25.523230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423759, 38.173115, 25.844215>,  <36.136066, 38.326103, 26.055054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423759, 38.173115, 25.844215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623020, 37.860741, 25.693493>,  <35.742577, 37.673317, 25.603060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623020, 37.860741, 25.693493>,  <35.423759, 38.173115, 25.844215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623020, 37.860741, 25.693493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675143, -0.622020, 0.396577,
		-0.544081, 0.056842, -0.837105,
		0.498154, -0.780936, -0.376806,
		35.772465, 37.626461, 25.580452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875202, 37.699863, 25.502001>,  <35.423759, 38.173115, 25.844215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875202, 37.699863, 25.502001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.206745, 37.485378, 25.565844>,  <35.405670, 37.356686, 25.604149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.206745, 37.485378, 25.565844>,  <34.875202, 37.699863, 25.502001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206745, 37.485378, 25.565844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544777, -0.708626, 0.448405,
		-0.127340, -0.458613, -0.879465,
		0.828856, -0.536212, 0.159606,
		35.455402, 37.324516, 25.613726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726864, 36.961178, 25.292049>,  <34.875202, 37.699863, 25.502001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726864, 36.961178, 25.292049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057034, 36.927975, 25.515400>,  <35.255135, 36.908054, 25.649410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057034, 36.927975, 25.515400>,  <34.726864, 36.961178, 25.292049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057034, 36.927975, 25.515400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394960, -0.791642, 0.466164,
		0.403340, -0.605320, -0.686225,
		0.825423, -0.083009, 0.558378,
		35.304661, 36.903072, 25.682913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907581, 36.273624, 25.167234>,  <34.726864, 36.961178, 25.292049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907581, 36.273624, 25.167234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051296, 36.411884, 25.513977>,  <35.137524, 36.494839, 25.722023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051296, 36.411884, 25.513977>,  <34.907581, 36.273624, 25.167234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051296, 36.411884, 25.513977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341380, -0.815821, 0.466793,
		0.868547, -0.463640, -0.175114,
		0.359286, 0.345651, 0.866856,
		35.159081, 36.515579, 25.774035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328838, 35.623188, 25.445381>,  <34.907581, 36.273624, 25.167234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328838, 35.623188, 25.445381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252483, 35.856602, 25.761114>,  <35.206673, 35.996651, 25.950554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252483, 35.856602, 25.761114>,  <35.328838, 35.623188, 25.445381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252483, 35.856602, 25.761114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189402, -0.810903, 0.553682,
		0.963166, -0.043811, 0.265313,
		-0.190886, 0.583539, 0.789332,
		35.195217, 36.031662, 25.997913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615250, 35.310390, 26.036106>,  <35.328838, 35.623188, 25.445381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615250, 35.310390, 26.036106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392475, 35.581936, 26.227509>,  <35.258808, 35.744862, 26.342350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392475, 35.581936, 26.227509>,  <35.615250, 35.310390, 26.036106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392475, 35.581936, 26.227509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203109, -0.669956, 0.714077,
		0.805336, 0.300509, 0.511007,
		-0.556938, 0.678862, 0.478504,
		35.225395, 35.785595, 26.371059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794731, 35.217014, 26.762503>,  <35.615250, 35.310390, 26.036106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794731, 35.217014, 26.762503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436596, 35.390320, 26.721205>,  <35.221714, 35.494305, 26.696426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436596, 35.390320, 26.721205>,  <35.794731, 35.217014, 26.762503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436596, 35.390320, 26.721205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356683, -0.558644, 0.748795,
		0.266747, 0.707248, 0.654711,
		-0.895334, 0.433263, -0.103246,
		35.167995, 35.520298, 26.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673061, 35.449066, 27.388697>,  <35.794731, 35.217014, 26.762503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673061, 35.449066, 27.388697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326172, 35.384129, 27.200413>,  <35.118038, 35.345165, 27.087442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326172, 35.384129, 27.200413>,  <35.673061, 35.449066, 27.388697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326172, 35.384129, 27.200413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406044, -0.316574, 0.857269,
		-0.288185, 0.934572, 0.208623,
		-0.867224, -0.162342, -0.470709,
		35.066006, 35.335426, 27.059200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213669, 35.546906, 27.931522>,  <35.673061, 35.449066, 27.388697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213669, 35.546906, 27.931522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014408, 35.348877, 27.646778>,  <34.894852, 35.230061, 27.475931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014408, 35.348877, 27.646778>,  <35.213669, 35.546906, 27.931522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014408, 35.348877, 27.646778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319595, -0.658341, 0.681503,
		-0.806042, 0.566999, 0.169731,
		-0.498153, -0.495075, -0.711860,
		34.864964, 35.200356, 27.433220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481117, 35.464428, 28.079308>,  <35.213669, 35.546906, 27.931522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481117, 35.464428, 28.079308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561222, 35.175972, 27.814020>,  <34.609283, 35.002899, 27.654848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561222, 35.175972, 27.814020>,  <34.481117, 35.464428, 28.079308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561222, 35.175972, 27.814020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470644, -0.664518, 0.580439,
		-0.859296, 0.195900, -0.472476,
		0.200261, -0.721137, -0.663217,
		34.621300, 34.959629, 27.615055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960781, 35.080784, 28.232838>,  <34.481117, 35.464428, 28.079308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960781, 35.080784, 28.232838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200558, 34.843006, 28.018435>,  <34.344421, 34.700340, 27.889793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200558, 34.843006, 28.018435>,  <33.960781, 35.080784, 28.232838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200558, 34.843006, 28.018435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303608, -0.788477, 0.534907,
		-0.740603, -0.157909, -0.653124,
		0.599440, -0.594448, -0.536006,
		34.380390, 34.664673, 27.857632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560825, 34.524200, 28.022619>,  <33.960781, 35.080784, 28.232838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560825, 34.524200, 28.022619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936527, 34.386917, 28.022192>,  <34.161949, 34.304546, 28.021936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936527, 34.386917, 28.022192>,  <33.560825, 34.524200, 28.022619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936527, 34.386917, 28.022192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296877, -0.814011, 0.499249,
		-0.172217, -0.468606, -0.866458,
		0.939258, -0.343210, -0.001068,
		34.218304, 34.283955, 28.021872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495644, 33.778122, 27.737320>,  <33.560825, 34.524200, 28.022619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495644, 33.778122, 27.737320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.865410, 33.797554, 27.888636>,  <34.087269, 33.809216, 27.979425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.865410, 33.797554, 27.888636>,  <33.495644, 33.778122, 27.737320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865410, 33.797554, 27.888636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165841, -0.841978, 0.513390,
		0.343455, -0.537319, -0.770277,
		0.924411, 0.048583, 0.378292,
		34.142735, 33.812130, 28.002123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768482, 33.193119, 27.665464>,  <33.495644, 33.778122, 27.737320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768482, 33.193119, 27.665464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019566, 33.327641, 27.946287>,  <34.170216, 33.408352, 28.114780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019566, 33.327641, 27.946287>,  <33.768482, 33.193119, 27.665464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019566, 33.327641, 27.946287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126386, -0.845871, 0.518198,
		0.768121, -0.414007, -0.488455,
		0.627707, 0.336305, 0.702056,
		34.207878, 33.428532, 28.156904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187233, 32.577938, 28.014486>,  <33.768482, 33.193119, 27.665464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187233, 32.577938, 28.014486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210915, 32.884884, 28.269875>,  <34.225124, 33.069054, 28.423107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210915, 32.884884, 28.269875>,  <34.187233, 32.577938, 28.014486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210915, 32.884884, 28.269875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272539, -0.602866, 0.749850,
		0.960321, -0.218404, 0.173444,
		0.059206, 0.767367, 0.638469,
		34.228676, 33.115093, 28.461414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584896, 32.311363, 28.534298>,  <34.187233, 32.577938, 28.014486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584896, 32.311363, 28.534298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398010, 32.621098, 28.704998>,  <34.285881, 32.806938, 28.807419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398010, 32.621098, 28.704998>,  <34.584896, 32.311363, 28.534298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398010, 32.621098, 28.704998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142539, -0.542325, 0.827989,
		0.872580, 0.326018, 0.363754,
		-0.467212, 0.774336, 0.426751,
		34.257847, 32.853397, 28.833023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806282, 32.278126, 29.227152>,  <34.584896, 32.311363, 28.534298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806282, 32.278126, 29.227152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464245, 32.485310, 29.217911>,  <34.259022, 32.609619, 29.212366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464245, 32.485310, 29.217911>,  <34.806282, 32.278126, 29.227152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464245, 32.485310, 29.217911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358668, -0.558763, 0.747758,
		0.374404, 0.647686, 0.663570,
		-0.855090, 0.517964, -0.023101,
		34.207718, 32.640697, 29.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026913, 31.535208, 29.519142>,  <34.806282, 32.278126, 29.227152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026913, 31.535208, 29.519142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359974, 31.542976, 29.740524>,  <35.559811, 31.547638, 29.873354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359974, 31.542976, 29.740524>,  <35.026913, 31.535208, 29.519142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359974, 31.542976, 29.740524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475731, 0.486514, -0.732792,
		-0.283494, 0.873457, 0.395859,
		0.832653, 0.019420, 0.553454,
		35.609772, 31.548801, 29.906561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384575, 32.233128, 29.650705>,  <35.026913, 31.535208, 29.519142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384575, 32.233128, 29.650705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692204, 31.981869, 29.697981>,  <35.876781, 31.831114, 29.726347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692204, 31.981869, 29.697981>,  <35.384575, 32.233128, 29.650705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692204, 31.981869, 29.697981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539343, 0.538536, -0.647370,
		0.342992, 0.561617, 0.752956,
		0.769068, -0.628145, 0.118190,
		35.922924, 31.793425, 29.733438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985157, 32.662281, 29.571404>,  <35.384575, 32.233128, 29.650705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985157, 32.662281, 29.571404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126221, 32.291264, 29.521940>,  <36.210857, 32.068653, 29.492262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126221, 32.291264, 29.521940>,  <35.985157, 32.662281, 29.571404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126221, 32.291264, 29.521940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595010, 0.324268, -0.735400,
		0.722215, 0.185769, 0.666255,
		0.352660, -0.927545, -0.123657,
		36.232018, 32.013000, 29.484844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737423, 32.782162, 29.672022>,  <35.985157, 32.662281, 29.571404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737423, 32.782162, 29.672022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689987, 32.444752, 29.462486>,  <36.661526, 32.242306, 29.336765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689987, 32.444752, 29.462486>,  <36.737423, 32.782162, 29.672022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689987, 32.444752, 29.462486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587178, 0.365859, -0.722059,
		0.800724, -0.393215, 0.451910,
		-0.118589, -0.843522, -0.523840,
		36.654411, 32.191696, 29.305334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382610, 32.607510, 29.420387>,  <36.737423, 32.782162, 29.672022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382610, 32.607510, 29.420387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122738, 32.420284, 29.180777>,  <36.966816, 32.307949, 29.037010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122738, 32.420284, 29.180777>,  <37.382610, 32.607510, 29.420387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122738, 32.420284, 29.180777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524720, 0.294070, -0.798869,
		0.550078, -0.833330, 0.054552,
		-0.649679, -0.468065, -0.599026,
		36.927834, 32.279865, 29.001068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844761, 32.263035, 28.929874>,  <37.382610, 32.607510, 29.420387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844761, 32.263035, 28.929874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481537, 32.289333, 28.764416>,  <37.263603, 32.305111, 28.665140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481537, 32.289333, 28.764416>,  <37.844761, 32.263035, 28.929874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481537, 32.289333, 28.764416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412661, 0.309447, -0.856711,
		0.071675, -0.948641, -0.308128,
		-0.908060, 0.065748, -0.413647,
		37.209118, 32.309059, 28.640322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804146, 31.908527, 28.314295>,  <37.844761, 32.263035, 28.929874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804146, 31.908527, 28.314295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500313, 32.166019, 28.277105>,  <37.318012, 32.320515, 28.254791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500313, 32.166019, 28.277105>,  <37.804146, 31.908527, 28.314295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500313, 32.166019, 28.277105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287147, 0.203638, -0.935990,
		-0.583593, -0.737660, -0.339525,
		-0.759583, 0.643731, -0.092976,
		37.272438, 32.359138, 28.249212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686455, 32.008354, 27.513969>,  <37.804146, 31.908527, 28.314295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686455, 32.008354, 27.513969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474861, 32.318897, 27.651049>,  <37.347904, 32.505222, 27.733297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474861, 32.318897, 27.651049>,  <37.686455, 32.008354, 27.513969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474861, 32.318897, 27.651049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151692, 0.483827, -0.861917,
		-0.834962, -0.403959, -0.373706,
		-0.528988, 0.776356, 0.342699,
		37.316166, 32.551804, 27.753859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345139, 32.289913, 26.864630>,  <37.686455, 32.008354, 27.513969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345139, 32.289913, 26.864630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356724, 32.578541, 27.141323>,  <37.363674, 32.751717, 27.307339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356724, 32.578541, 27.141323>,  <37.345139, 32.289913, 26.864630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356724, 32.578541, 27.141323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352558, 0.640175, -0.682553,
		-0.935342, 0.263646, -0.235853,
		0.028965, 0.721572, 0.691733,
		37.365414, 32.795013, 27.348843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122910, 32.837090, 26.542904>,  <37.345139, 32.289913, 26.864630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122910, 32.837090, 26.542904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299313, 32.999416, 26.863110>,  <37.405155, 33.096813, 27.055233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299313, 32.999416, 26.863110>,  <37.122910, 32.837090, 26.542904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299313, 32.999416, 26.863110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482383, 0.644977, -0.592716,
		-0.756848, 0.647547, 0.088681,
		0.441008, 0.405818, 0.800514,
		37.431614, 33.121162, 27.103264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899654, 33.521080, 26.705980>,  <37.122910, 32.837090, 26.542904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899654, 33.521080, 26.705980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269543, 33.477646, 26.851910>,  <37.491478, 33.451584, 26.939466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269543, 33.477646, 26.851910>,  <36.899654, 33.521080, 26.705980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269543, 33.477646, 26.851910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262138, 0.876609, -0.403534,
		-0.275991, 0.468791, 0.839085,
		0.924723, -0.108584, 0.364824,
		37.546959, 33.445072, 26.961357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064255, 34.167149, 26.933323>,  <36.899654, 33.521080, 26.705980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064255, 34.167149, 26.933323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439808, 34.039871, 26.985851>,  <37.665142, 33.963505, 27.017368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439808, 34.039871, 26.985851>,  <37.064255, 34.167149, 26.933323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439808, 34.039871, 26.985851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343663, 0.844540, -0.410668,
		0.019767, 0.430701, 0.902278,
		0.938885, -0.318197, 0.131322,
		37.721474, 33.944412, 27.025248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489708, 34.651489, 27.322351>,  <37.064255, 34.167149, 26.933323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489708, 34.651489, 27.322351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748756, 34.445576, 27.097645>,  <37.904186, 34.322025, 26.962822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748756, 34.445576, 27.097645>,  <37.489708, 34.651489, 27.322351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748756, 34.445576, 27.097645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353691, 0.856119, -0.376779,
		0.674898, 0.045319, 0.736517,
		0.647622, -0.514788, -0.561764,
		37.943043, 34.291138, 26.929115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101742, 35.101189, 27.460659>,  <37.489708, 34.651489, 27.322351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101742, 35.101189, 27.460659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189880, 34.894947, 27.129454>,  <38.242764, 34.771202, 26.930731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189880, 34.894947, 27.129454>,  <38.101742, 35.101189, 27.460659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189880, 34.894947, 27.129454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351778, 0.833756, -0.425563,
		0.909780, -0.197505, 0.365092,
		0.220346, -0.515600, -0.828012,
		38.255985, 34.740269, 26.881050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828529, 35.202415, 27.254776>,  <38.101742, 35.101189, 27.460659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828529, 35.202415, 27.254776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613903, 35.092110, 26.935764>,  <38.485126, 35.025925, 26.744358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613903, 35.092110, 26.935764>,  <38.828529, 35.202415, 27.254776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613903, 35.092110, 26.935764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239235, 0.856612, -0.457146,
		0.809238, -0.436085, -0.393654,
		-0.536564, -0.275764, -0.797530,
		38.452934, 35.009380, 26.696505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209164, 35.430416, 26.825706>,  <38.828529, 35.202415, 27.254776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209164, 35.430416, 26.825706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906662, 35.356113, 26.574766>,  <38.725159, 35.311531, 26.424202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906662, 35.356113, 26.574766>,  <39.209164, 35.430416, 26.825706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906662, 35.356113, 26.574766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262731, 0.791927, -0.551202,
		0.599206, -0.581675, -0.550096,
		-0.756257, -0.185756, -0.627352,
		38.679787, 35.300388, 26.386560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516636, 35.407505, 26.241049>,  <39.209164, 35.430416, 26.825706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516636, 35.407505, 26.241049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130302, 35.489384, 26.177465>,  <38.898502, 35.538513, 26.139315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130302, 35.489384, 26.177465>,  <39.516636, 35.407505, 26.241049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130302, 35.489384, 26.177465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258437, 0.806827, -0.531264,
		0.019504, -0.554192, -0.832160,
		-0.965831, 0.204699, -0.158960,
		38.840553, 35.550793, 26.129778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473999, 35.550598, 25.540527>,  <39.516636, 35.407505, 26.241049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473999, 35.550598, 25.540527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141521, 35.715389, 25.689867>,  <38.942036, 35.814262, 25.779470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141521, 35.715389, 25.689867>,  <39.473999, 35.550598, 25.540527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141521, 35.715389, 25.689867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154608, 0.816304, -0.556547,
		-0.534051, -0.404876, -0.742202,
		-0.831195, 0.411975, 0.373351,
		38.892162, 35.838982, 25.801872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019180, 35.815918, 25.007450>,  <39.473999, 35.550598, 25.540527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019180, 35.815918, 25.007450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884720, 36.013306, 25.328321>,  <38.804043, 36.131737, 25.520845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884720, 36.013306, 25.328321>,  <39.019180, 35.815918, 25.007450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884720, 36.013306, 25.328321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081320, 0.833355, -0.546724,
		-0.938292, -0.249013, -0.240000,
		-0.336147, 0.493470, 0.802180,
		38.783875, 36.161346, 25.568975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.452118, 36.216244, 24.733706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582382, 36.388702, 25.070290>,  <38.660542, 36.492180, 25.272240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582382, 36.388702, 25.070290>,  <38.452118, 36.216244, 24.733706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582382, 36.388702, 25.070290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194932, 0.840237, -0.505967,
		-0.925174, 0.328801, 0.189587,
		0.325660, 0.431151, 0.841460,
		38.680080, 36.518047, 25.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295338, 36.805546, 24.551371>,  <38.452118, 36.216244, 24.733706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295338, 36.805546, 24.551371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531147, 36.887802, 24.863825>,  <38.672634, 36.937157, 25.051298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531147, 36.887802, 24.863825>,  <38.295338, 36.805546, 24.551371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531147, 36.887802, 24.863825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098856, 0.941412, -0.322445,
		-0.801680, 0.267309, 0.534654,
		0.589522, 0.205644, 0.781137,
		38.708004, 36.949497, 25.098166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042583, 37.386517, 24.885578>,  <38.295338, 36.805546, 24.551371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042583, 37.386517, 24.885578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.421806, 37.364300, 25.010862>,  <38.649342, 37.350971, 25.086033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.421806, 37.364300, 25.010862>,  <38.042583, 37.386517, 24.885578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421806, 37.364300, 25.010862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110543, 0.980795, -0.160688,
		-0.298273, 0.186965, 0.935990,
		0.948058, -0.055538, 0.313212,
		38.706223, 37.347637, 25.104826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101055, 37.868923, 25.307335>,  <38.042583, 37.386517, 24.885578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101055, 37.868923, 25.307335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478935, 37.788803, 25.203474>,  <38.705666, 37.740730, 25.141157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478935, 37.788803, 25.203474>,  <38.101055, 37.868923, 25.307335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478935, 37.788803, 25.203474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138678, 0.961522, -0.237159,
		0.297164, 0.188036, 0.936128,
		0.944702, -0.200296, -0.259653,
		38.762344, 37.728714, 25.125578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410980, 38.530918, 25.419319>,  <38.101055, 37.868923, 25.307335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410980, 38.530918, 25.419319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661388, 38.313961, 25.195208>,  <38.811634, 38.183788, 25.060741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661388, 38.313961, 25.195208>,  <38.410980, 38.530918, 25.419319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661388, 38.313961, 25.195208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267743, 0.824308, -0.498829,
		0.732402, 0.162267, 0.661254,
		0.626021, -0.542390, -0.560278,
		38.849194, 38.151245, 25.027124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044441, 38.823925, 25.524572>,  <38.410980, 38.530918, 25.419319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044441, 38.823925, 25.524572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055935, 38.640343, 25.169374>,  <39.062832, 38.530193, 24.956255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055935, 38.640343, 25.169374>,  <39.044441, 38.823925, 25.524572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055935, 38.640343, 25.169374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358882, 0.833867, -0.419368,
		0.932940, -0.306635, 0.188672,
		0.028734, -0.458956, -0.887994,
		39.064556, 38.502655, 24.902977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769981, 38.804829, 25.236290>,  <39.044441, 38.823925, 25.524572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769981, 38.804829, 25.236290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548298, 38.768719, 24.905302>,  <39.415287, 38.747051, 24.706709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548298, 38.768719, 24.905302>,  <39.769981, 38.804829, 25.236290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548298, 38.768719, 24.905302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569975, 0.683316, -0.456298,
		0.606613, -0.724520, -0.327247,
		-0.554210, -0.090273, -0.827467,
		39.382034, 38.741638, 24.657063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250282, 38.880497, 24.773497>,  <39.769981, 38.804829, 25.236290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250282, 38.880497, 24.773497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.933025, 38.900246, 24.530685>,  <39.742672, 38.912094, 24.384998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.933025, 38.900246, 24.530685>,  <40.250282, 38.880497, 24.773497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933025, 38.900246, 24.530685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473984, 0.675917, -0.564337,
		0.382435, -0.735322, -0.559503,
		-0.793147, 0.049373, -0.607026,
		39.695080, 38.915058, 24.348577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414932, 38.603458, 24.099501>,  <40.250282, 38.880497, 24.773497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414932, 38.603458, 24.099501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096905, 38.842842, 24.060093>,  <39.906090, 38.986473, 24.036448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096905, 38.842842, 24.060093>,  <40.414932, 38.603458, 24.099501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096905, 38.842842, 24.060093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501421, 0.557183, -0.661909,
		-0.341234, -0.575664, -0.743082,
		-0.795070, 0.598463, -0.098521,
		39.858383, 39.022381, 24.030537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328529, 38.672176, 23.310167>,  <40.414932, 38.603458, 24.099501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328529, 38.672176, 23.310167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145290, 38.975342, 23.495947>,  <40.035347, 39.157242, 23.607414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145290, 38.975342, 23.495947>,  <40.328529, 38.672176, 23.310167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145290, 38.975342, 23.495947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418489, 0.644863, -0.639546,
		-0.784226, -0.098609, -0.612590,
		-0.458101, 0.757910, 0.464451,
		40.007858, 39.202717, 23.635283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897549, 39.054115, 22.818382>,  <40.328529, 38.672176, 23.310167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897549, 39.054115, 22.818382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984058, 39.316723, 23.107437>,  <40.035965, 39.474289, 23.280870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984058, 39.316723, 23.107437>,  <39.897549, 39.054115, 22.818382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984058, 39.316723, 23.107437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233798, 0.683795, -0.691204,
		-0.947926, 0.318443, -0.005605,
		0.216276, 0.656520, 0.722638,
		40.048943, 39.513680, 23.324228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771950, 39.635498, 22.491886>,  <39.897549, 39.054115, 22.818382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771950, 39.635498, 22.491886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965626, 39.783154, 22.809198>,  <40.081833, 39.871746, 22.999586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965626, 39.783154, 22.809198>,  <39.771950, 39.635498, 22.491886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965626, 39.783154, 22.809198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219498, 0.826406, -0.518530,
		-0.846981, 0.425192, 0.319115,
		0.484194, 0.369140, 0.793279,
		40.110886, 39.893894, 23.047182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568913, 40.279434, 22.578968>,  <39.771950, 39.635498, 22.491886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568913, 40.279434, 22.578968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902657, 40.308689, 22.797506>,  <40.102901, 40.326241, 22.928629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902657, 40.308689, 22.797506>,  <39.568913, 40.279434, 22.578968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902657, 40.308689, 22.797506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210413, 0.873849, -0.438309,
		-0.509478, 0.480666, 0.713717,
		0.834361, 0.073134, 0.546345,
		40.152966, 40.330627, 22.961411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606342, 40.976257, 22.881403>,  <39.568913, 40.279434, 22.578968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606342, 40.976257, 22.881403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977440, 40.827732, 22.866333>,  <40.200100, 40.738617, 22.857292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977440, 40.827732, 22.866333>,  <39.606342, 40.976257, 22.881403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977440, 40.827732, 22.866333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363460, 0.921808, -0.134786,
		0.084775, 0.111354, 0.990158,
		0.927744, -0.371310, -0.037674,
		40.255764, 40.716339, 22.855030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025154, 41.332401, 23.300301>,  <39.606342, 40.976257, 22.881403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025154, 41.332401, 23.300301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.293739, 41.147404, 23.068701>,  <40.454891, 41.036404, 22.929741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.293739, 41.147404, 23.068701>,  <40.025154, 41.332401, 23.300301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293739, 41.147404, 23.068701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489296, 0.863497, -0.122320,
		0.556536, -0.201169, 0.806101,
		0.671459, -0.462497, -0.578998,
		40.495178, 41.008656, 22.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648979, 41.574680, 23.594553>,  <40.025154, 41.332401, 23.300301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648979, 41.574680, 23.594553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697701, 41.472816, 23.210821>,  <40.726933, 41.411697, 22.980581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697701, 41.472816, 23.210821>,  <40.648979, 41.574680, 23.594553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697701, 41.472816, 23.210821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486991, 0.857525, -0.165805,
		0.864872, -0.446989, 0.228466,
		0.121802, -0.254661, -0.959329,
		40.734241, 41.396420, 22.923023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222309, 41.923168, 23.339436>,  <40.648979, 41.574680, 23.594553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222309, 41.923168, 23.339436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076946, 41.802124, 22.986990>,  <40.989727, 41.729496, 22.775522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076946, 41.802124, 22.986990>,  <41.222309, 41.923168, 23.339436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076946, 41.802124, 22.986990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408410, 0.798305, -0.442618,
		0.837339, -0.520706, -0.166519,
		-0.363406, -0.302614, -0.881114,
		40.967926, 41.711338, 22.722656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703445, 42.174816, 22.922955>,  <41.222309, 41.923168, 23.339436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703445, 42.174816, 22.922955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397339, 42.077862, 22.684422>,  <41.213673, 42.019688, 22.541302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397339, 42.077862, 22.684422>,  <41.703445, 42.174816, 22.922955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397339, 42.077862, 22.684422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152038, 0.832127, -0.533338,
		0.625498, -0.498812, -0.599949,
		-0.765269, -0.242387, -0.596332,
		41.167759, 42.005146, 22.505522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912029, 42.271603, 22.258440>,  <41.703445, 42.174816, 22.922955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912029, 42.271603, 22.258440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.515095, 42.279579, 22.209658>,  <41.276936, 42.284367, 22.180387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.515095, 42.279579, 22.209658>,  <41.912029, 42.271603, 22.258440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515095, 42.279579, 22.209658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074087, 0.885867, -0.457985,
		0.098904, -0.463510, -0.880554,
		-0.992335, 0.019941, -0.121956,
		41.217396, 42.285561, 22.173071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731953, 42.523430, 21.539495>,  <41.912029, 42.271603, 22.258440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731953, 42.523430, 21.539495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409210, 42.591808, 21.765684>,  <41.215565, 42.632835, 21.901398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409210, 42.591808, 21.765684>,  <41.731953, 42.523430, 21.539495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409210, 42.591808, 21.765684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118389, 0.891007, -0.438282,
		-0.578760, -0.420577, -0.698679,
		-0.806859, 0.170944, 0.565471,
		41.167152, 42.643093, 21.935326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182400, 42.710102, 21.044777>,  <41.731953, 42.523430, 21.539495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182400, 42.710102, 21.044777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102150, 42.864182, 21.405081>,  <41.054001, 42.956631, 21.621264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102150, 42.864182, 21.405081>,  <41.182400, 42.710102, 21.044777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102150, 42.864182, 21.405081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111767, 0.904451, -0.411674,
		-0.973271, -0.183268, -0.138405,
		-0.200628, 0.385202, 0.900760,
		41.041962, 42.979744, 21.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585499, 43.278763, 20.942236>,  <41.182400, 42.710102, 21.044777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585499, 43.278763, 20.942236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777206, 43.350513, 21.285892>,  <40.892231, 43.393562, 21.492086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777206, 43.350513, 21.285892>,  <40.585499, 43.278763, 20.942236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777206, 43.350513, 21.285892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171930, 0.940738, -0.292322,
		-0.860664, 0.287813, 0.420024,
		0.479267, 0.179377, 0.859143,
		40.920986, 43.404327, 21.543636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301910, 43.870983, 21.218019>,  <40.585499, 43.278763, 20.942236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301910, 43.870983, 21.218019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673210, 43.836086, 21.362650>,  <40.895992, 43.815147, 21.449429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673210, 43.836086, 21.362650>,  <40.301910, 43.870983, 21.218019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673210, 43.836086, 21.362650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212013, 0.922822, -0.321636,
		-0.305614, 0.375219, 0.875106,
		0.928252, -0.087238, 0.361578,
		40.951687, 43.809914, 21.471123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513203, 44.533875, 21.305664>,  <40.301910, 43.870983, 21.218019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513203, 44.533875, 21.305664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866421, 44.351509, 21.350176>,  <41.078350, 44.242092, 21.376883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866421, 44.351509, 21.350176>,  <40.513203, 44.533875, 21.305664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866421, 44.351509, 21.350176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461472, 0.886672, -0.029269,
		-0.085326, 0.077199, 0.993358,
		0.883042, -0.455910, 0.111281,
		41.131332, 44.214737, 21.383560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309631, 45.287735, 21.299332>,  <40.513203, 44.533875, 21.305664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309631, 45.287735, 21.299332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916992, 45.311943, 21.226891>,  <39.681408, 45.326469, 21.183426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916992, 45.311943, 21.226891>,  <40.309631, 45.287735, 21.299332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916992, 45.311943, 21.226891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144435, -0.855707, 0.496894,
		-0.124896, 0.513908, 0.848704,
		-0.981601, 0.060523, -0.181100,
		39.622513, 45.330101, 21.172560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893780, 45.058620, 21.960533>,  <40.309631, 45.287735, 21.299332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893780, 45.058620, 21.960533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613010, 45.022930, 21.677876>,  <39.444550, 45.001514, 21.508282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613010, 45.022930, 21.677876>,  <39.893780, 45.058620, 21.960533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613010, 45.022930, 21.677876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410469, -0.760129, 0.503704,
		-0.582085, 0.643616, 0.496926,
		-0.701920, -0.089226, -0.706645,
		39.402435, 44.996162, 21.465881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232025, 44.875431, 22.310083>,  <39.893780, 45.058620, 21.960533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232025, 44.875431, 22.310083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148804, 44.778675, 21.930988>,  <39.098869, 44.720623, 21.703531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148804, 44.778675, 21.930988>,  <39.232025, 44.875431, 22.310083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148804, 44.778675, 21.930988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584395, -0.746243, 0.318753,
		-0.784343, 0.620171, 0.013904,
		-0.208057, -0.241886, -0.947736,
		39.086388, 44.706108, 21.646667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478378, 44.830509, 22.264494>,  <39.232025, 44.875431, 22.310083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478378, 44.830509, 22.264494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668961, 44.614857, 21.986694>,  <38.783310, 44.485466, 21.820015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668961, 44.614857, 21.986694>,  <38.478378, 44.830509, 22.264494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668961, 44.614857, 21.986694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586032, -0.783596, 0.206260,
		-0.655407, 0.308724, -0.689298,
		0.476454, -0.539135, -0.694497,
		38.811897, 44.453117, 21.778345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978191, 44.395672, 22.053686>,  <38.478378, 44.830509, 22.264494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978191, 44.395672, 22.053686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292900, 44.203655, 21.898487>,  <38.481728, 44.088444, 21.805367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292900, 44.203655, 21.898487>,  <37.978191, 44.395672, 22.053686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292900, 44.203655, 21.898487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496251, -0.865753, 0.064852,
		-0.367043, 0.141521, -0.919375,
		0.786774, -0.480045, -0.387999,
		38.528931, 44.059643, 21.782087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723568, 43.756599, 21.619894>,  <37.978191, 44.395672, 22.053686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723568, 43.756599, 21.619894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108509, 43.689014, 21.705063>,  <38.339474, 43.648464, 21.756165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108509, 43.689014, 21.705063>,  <37.723568, 43.756599, 21.619894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108509, 43.689014, 21.705063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199723, -0.970885, 0.132264,
		0.184373, -0.169810, -0.968076,
		0.962350, -0.168961, 0.212920,
		38.397213, 43.638325, 21.768938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970837, 43.083321, 21.268084>,  <37.723568, 43.756599, 21.619894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970837, 43.083321, 21.268084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224945, 43.124821, 21.574200>,  <38.377411, 43.149719, 21.757870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224945, 43.124821, 21.574200>,  <37.970837, 43.083321, 21.268084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224945, 43.124821, 21.574200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234548, -0.918212, 0.319177,
		0.735812, -0.382261, -0.558979,
		0.635270, 0.103747, 0.765290,
		38.415527, 43.155945, 21.803787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209606, 42.357685, 21.319309>,  <37.970837, 43.083321, 21.268084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209606, 42.357685, 21.319309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278427, 42.575943, 21.647377>,  <38.319717, 42.706898, 21.844217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278427, 42.575943, 21.647377>,  <38.209606, 42.357685, 21.319309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278427, 42.575943, 21.647377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052580, -0.826309, 0.560758,
		0.983684, -0.139603, -0.113477,
		0.172050, 0.545641, 0.820167,
		38.330044, 42.739635, 21.893427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505245, 41.936455, 21.659893>,  <38.209606, 42.357685, 21.319309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505245, 41.936455, 21.659893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427349, 42.186813, 21.961975>,  <38.380611, 42.337029, 22.143225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427349, 42.186813, 21.961975>,  <38.505245, 41.936455, 21.659893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427349, 42.186813, 21.961975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017133, -0.772000, 0.635392,
		0.980706, 0.110796, 0.161061,
		-0.194738, 0.625892, 0.755206,
		38.368927, 42.374580, 22.188538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998547, 41.798180, 22.214771>,  <38.505245, 41.936455, 21.659893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998547, 41.798180, 22.214771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663750, 41.959785, 22.362400>,  <38.462872, 42.056751, 22.450977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663750, 41.959785, 22.362400>,  <38.998547, 41.798180, 22.214771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663750, 41.959785, 22.362400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150379, -0.818308, 0.554760,
		0.526146, 0.408829, 0.745673,
		-0.836992, 0.404019, 0.369070,
		38.412651, 42.080990, 22.473122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875301, 41.494209, 22.792356>,  <38.998547, 41.798180, 22.214771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875301, 41.494209, 22.792356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511284, 41.659847, 22.784986>,  <38.292873, 41.759232, 22.780565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511284, 41.659847, 22.784986>,  <38.875301, 41.494209, 22.792356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511284, 41.659847, 22.784986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341506, -0.723844, 0.599520,
		0.234924, 0.551882, 0.800148,
		-0.910046, 0.414097, -0.018423,
		38.238270, 41.784077, 22.779459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613960, 41.270073, 23.500147>,  <38.875301, 41.494209, 22.792356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613960, 41.270073, 23.500147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299290, 41.387276, 23.282787>,  <38.110485, 41.457596, 23.152370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299290, 41.387276, 23.282787>,  <38.613960, 41.270073, 23.500147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299290, 41.387276, 23.282787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558337, -0.713254, 0.423707,
		-0.263433, 0.636722, 0.724699,
		-0.786679, 0.293008, -0.543400,
		38.063286, 41.475178, 23.119768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162540, 41.384174, 23.980696>,  <38.613960, 41.270073, 23.500147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162540, 41.384174, 23.980696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955914, 41.304279, 23.647646>,  <37.831936, 41.256344, 23.447815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955914, 41.304279, 23.647646>,  <38.162540, 41.384174, 23.980696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955914, 41.304279, 23.647646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412691, -0.793936, 0.446488,
		-0.750231, 0.574258, 0.327692,
		-0.516566, -0.199733, -0.832626,
		37.800945, 41.244358, 23.397858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521519, 41.203495, 24.228086>,  <38.162540, 41.384174, 23.980696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521519, 41.203495, 24.228086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497097, 41.068588, 23.852316>,  <37.482445, 40.987644, 23.626854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497097, 41.068588, 23.852316>,  <37.521519, 41.203495, 24.228086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497097, 41.068588, 23.852316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464884, -0.823259, 0.325772,
		-0.883264, 0.456615, -0.106525,
		-0.061054, -0.337264, -0.939428,
		37.478779, 40.967407, 23.570488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736259, 41.015736, 24.120070>,  <37.521519, 41.203495, 24.228086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736259, 41.015736, 24.120070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999680, 40.815762, 23.895082>,  <37.157734, 40.695778, 23.760090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999680, 40.815762, 23.895082>,  <36.736259, 41.015736, 24.120070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999680, 40.815762, 23.895082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509704, -0.846207, 0.155355,
		-0.553633, 0.184383, -0.812092,
		0.658554, -0.499936, -0.562469,
		37.197247, 40.665779, 23.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311172, 40.557137, 23.678783>,  <36.736259, 41.015736, 24.120070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311172, 40.557137, 23.678783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683784, 40.412388, 23.664377>,  <36.907352, 40.325539, 23.655733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683784, 40.412388, 23.664377>,  <36.311172, 40.557137, 23.678783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683784, 40.412388, 23.664377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338036, -0.898146, 0.281185,
		-0.134099, -0.249758, -0.958978,
		0.931530, -0.361876, -0.036014,
		36.963245, 40.303825, 23.653574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216785, 39.985710, 23.375605>,  <36.311172, 40.557137, 23.678783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216785, 39.985710, 23.375605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567295, 39.916683, 23.555546>,  <36.777599, 39.875267, 23.663509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567295, 39.916683, 23.555546>,  <36.216785, 39.985710, 23.375605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567295, 39.916683, 23.555546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313885, -0.912812, 0.261249,
		0.365546, -0.370127, -0.854039,
		0.876271, -0.172572, 0.449852,
		36.830177, 39.864910, 23.690502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402153, 39.298603, 23.114706>,  <36.216785, 39.985710, 23.375605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402153, 39.298603, 23.114706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625004, 39.361732, 23.440825>,  <36.758713, 39.399612, 23.636496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625004, 39.361732, 23.440825>,  <36.402153, 39.298603, 23.114706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625004, 39.361732, 23.440825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241353, -0.908620, 0.340820,
		0.794583, -0.386653, -0.468121,
		0.557123, 0.157827, 0.815294,
		36.792141, 39.409081, 23.685413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633831, 38.605434, 23.211998>,  <36.402153, 39.298603, 23.114706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633831, 38.605434, 23.211998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717323, 38.797573, 23.552752>,  <36.767418, 38.912857, 23.757204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717323, 38.797573, 23.552752>,  <36.633831, 38.605434, 23.211998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717323, 38.797573, 23.552752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189505, -0.834693, 0.517083,
		0.959437, -0.269367, -0.083199,
		0.208731, 0.480342, 0.851882,
		36.779942, 38.941677, 23.808315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133938, 38.096695, 23.606455>,  <36.633831, 38.605434, 23.211998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133938, 38.096695, 23.606455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002102, 38.363209, 23.874016>,  <36.923000, 38.523117, 24.034554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002102, 38.363209, 23.874016>,  <37.133938, 38.096695, 23.606455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002102, 38.363209, 23.874016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249192, -0.744759, 0.619061,
		0.910645, 0.037351, 0.411499,
		-0.329590, 0.666287, 0.668904,
		36.903225, 38.563095, 24.074686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.825329, 33.594120, 26.380823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564034, 33.836494, 26.562428>,  <38.407257, 33.981918, 26.671391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564034, 33.836494, 26.562428>,  <38.825329, 33.594120, 26.380823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564034, 33.836494, 26.562428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306810, -0.760029, 0.572908,
		0.692205, 0.234951, 0.682386,
		-0.653238, 0.605933, 0.454010,
		38.368061, 34.018272, 26.698631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862259, 33.325237, 27.040585>,  <38.825329, 33.594120, 26.380823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862259, 33.325237, 27.040585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523808, 33.538383, 27.045012>,  <38.320736, 33.666271, 27.047668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523808, 33.538383, 27.045012>,  <38.862259, 33.325237, 27.040585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523808, 33.538383, 27.045012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454838, -0.732748, 0.506165,
		0.277826, 0.423247, 0.862366,
		-0.846130, 0.532862, 0.011068,
		38.269970, 33.698242, 27.048332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651402, 33.602047, 27.697056>,  <38.862259, 33.325237, 27.040585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651402, 33.602047, 27.697056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323780, 33.545582, 27.474625>,  <38.127205, 33.511703, 27.341166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323780, 33.545582, 27.474625>,  <38.651402, 33.602047, 27.697056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323780, 33.545582, 27.474625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474921, -0.376947, 0.795211,
		-0.321867, 0.915414, 0.241699,
		-0.819055, -0.141165, -0.556076,
		38.078064, 33.503231, 27.307802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134064, 33.796787, 28.038992>,  <38.651402, 33.602047, 27.697056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134064, 33.796787, 28.038992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932365, 33.563427, 27.784313>,  <37.811348, 33.423412, 27.631506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932365, 33.563427, 27.784313>,  <38.134064, 33.796787, 28.038992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932365, 33.563427, 27.784313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601329, -0.291958, 0.743750,
		-0.619791, 0.757898, -0.203595,
		-0.504245, -0.583397, -0.636699,
		37.781094, 33.388409, 27.593304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389599, 33.787395, 28.193722>,  <38.134064, 33.796787, 28.038992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389599, 33.787395, 28.193722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362370, 33.482986, 27.935661>,  <37.346031, 33.300343, 27.780827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362370, 33.482986, 27.935661>,  <37.389599, 33.787395, 28.193722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362370, 33.482986, 27.935661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683201, -0.435681, 0.586019,
		-0.727050, 0.480659, -0.490270,
		-0.068074, -0.761018, -0.645149,
		37.341946, 33.254681, 27.742117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759480, 33.590126, 28.165079>,  <37.389599, 33.787395, 28.193722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759480, 33.590126, 28.165079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947605, 33.254620, 28.055332>,  <37.060478, 33.053314, 27.989485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947605, 33.254620, 28.055332>,  <36.759480, 33.590126, 28.165079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947605, 33.254620, 28.055332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584877, -0.529064, 0.614825,
		-0.660852, -0.128689, -0.739401,
		0.470312, -0.838767, -0.274366,
		37.088699, 33.002991, 27.973022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255524, 33.061096, 27.926493>,  <36.759480, 33.590126, 28.165079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255524, 33.061096, 27.926493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584919, 32.885517, 28.070269>,  <36.782555, 32.780170, 28.156534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584919, 32.885517, 28.070269>,  <36.255524, 33.061096, 27.926493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584919, 32.885517, 28.070269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567338, -0.638175, 0.520442,
		0.000936, -0.632499, -0.774561,
		0.823484, -0.438951, 0.359438,
		36.831963, 32.753830, 28.178101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147236, 32.319904, 27.960339>,  <36.255524, 33.061096, 27.926493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147236, 32.319904, 27.960339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.450546, 32.347366, 28.219660>,  <36.632534, 32.363842, 28.375254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.450546, 32.347366, 28.219660>,  <36.147236, 32.319904, 27.960339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450546, 32.347366, 28.219660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429610, -0.695355, 0.576122,
		0.490355, -0.715380, -0.497779,
		0.758279, 0.068653, 0.648305,
		36.678032, 32.367962, 28.414152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157589, 31.660311, 28.132128>,  <36.147236, 32.319904, 27.960339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157589, 31.660311, 28.132128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381996, 31.842833, 28.408401>,  <36.516640, 31.952345, 28.574165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381996, 31.842833, 28.408401>,  <36.157589, 31.660311, 28.132128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381996, 31.842833, 28.408401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334836, -0.637971, 0.693453,
		0.757063, -0.620306, -0.205127,
		0.561018, 0.456304, 0.690685,
		36.550301, 31.979723, 28.615606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408905, 31.111448, 28.618366>,  <36.157589, 31.660311, 28.132128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408905, 31.111448, 28.618366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.467026, 31.443909, 28.833057>,  <36.501896, 31.643385, 28.961872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.467026, 31.443909, 28.833057>,  <36.408905, 31.111448, 28.618366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467026, 31.443909, 28.833057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268567, -0.488983, 0.829920,
		0.952239, -0.264734, 0.152171,
		0.145299, 0.831151, 0.536728,
		36.510616, 31.693254, 28.994076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750774, 30.845306, 29.238182>,  <36.408905, 31.111448, 28.618366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750774, 30.845306, 29.238182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621807, 31.214361, 29.322836>,  <36.544426, 31.435793, 29.373629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621807, 31.214361, 29.322836>,  <36.750774, 30.845306, 29.238182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621807, 31.214361, 29.322836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417590, -0.339278, 0.842917,
		0.849509, 0.183393, 0.494673,
		-0.322417, 0.922636, 0.211637,
		36.525082, 31.491152, 29.386328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048100, 31.074100, 29.887161>,  <36.750774, 30.845306, 29.238182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048100, 31.074100, 29.887161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710484, 31.283358, 29.839977>,  <36.507912, 31.408911, 29.811666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710484, 31.283358, 29.839977>,  <37.048100, 31.074100, 29.887161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710484, 31.283358, 29.839977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345466, -0.362173, 0.865727,
		0.410177, 0.771462, 0.486417,
		-0.844043, 0.523142, -0.117958,
		36.457272, 31.440300, 29.804590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769867, 31.491013, 30.513395>,  <37.048100, 31.074100, 29.887161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769867, 31.491013, 30.513395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421295, 31.484077, 30.317308>,  <36.212151, 31.479916, 30.199657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421295, 31.484077, 30.317308>,  <36.769867, 31.491013, 30.513395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421295, 31.484077, 30.317308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469930, -0.257007, 0.844460,
		-0.140631, 0.966254, 0.215816,
		-0.871429, -0.017339, -0.490215,
		36.159866, 31.478876, 30.170244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294670, 31.934544, 30.856226>,  <36.769867, 31.491013, 30.513395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294670, 31.934544, 30.856226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115166, 31.623760, 30.679615>,  <36.007462, 31.437290, 30.573648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115166, 31.623760, 30.679615>,  <36.294670, 31.934544, 30.856226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115166, 31.623760, 30.679615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135258, -0.429327, 0.892964,
		-0.883356, 0.460448, 0.087575,
		-0.448762, -0.776960, -0.441528,
		35.980537, 31.390673, 30.547157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110756, 32.163803, 31.602459>,  <36.294670, 31.934544, 30.856226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110756, 32.163803, 31.602459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185955, 32.168930, 31.995293>,  <36.231075, 32.172005, 32.230991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185955, 32.168930, 31.995293>,  <36.110756, 32.163803, 31.602459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185955, 32.168930, 31.995293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542126, 0.832441, -0.114640,
		-0.818997, 0.553966, 0.149551,
		0.187999, 0.012814, 0.982086,
		36.242355, 32.172775, 32.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930870, 32.804077, 31.841614>,  <36.110756, 32.163803, 31.602459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930870, 32.804077, 31.841614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205948, 32.652786, 32.089493>,  <36.370995, 32.562012, 32.238220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205948, 32.652786, 32.089493>,  <35.930870, 32.804077, 31.841614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205948, 32.652786, 32.089493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621778, 0.747489, -0.233781,
		-0.374794, 0.546083, 0.749215,
		0.687693, -0.378225, 0.619696,
		36.412254, 32.539318, 32.275402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230465, 33.367229, 32.070530>,  <35.930870, 32.804077, 31.841614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230465, 33.367229, 32.070530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.487061, 33.086468, 32.194347>,  <36.641018, 32.918011, 32.268639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.487061, 33.086468, 32.194347>,  <36.230465, 33.367229, 32.070530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487061, 33.086468, 32.194347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742813, 0.669134, -0.022097,
		-0.191617, 0.244109, 0.950628,
		0.641491, -0.701905, 0.309545,
		36.679508, 32.875896, 32.287212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651672, 33.727047, 32.550091>,  <36.230465, 33.367229, 32.070530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651672, 33.727047, 32.550091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842846, 33.415016, 32.388565>,  <36.957550, 33.227798, 32.291649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842846, 33.415016, 32.388565>,  <36.651672, 33.727047, 32.550091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842846, 33.415016, 32.388565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755501, 0.599573, -0.264065,
		0.448106, -0.178878, 0.875902,
		0.477931, -0.780074, -0.403814,
		36.986225, 33.180992, 32.267422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334915, 33.789890, 32.729969>,  <36.651672, 33.727047, 32.550091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334915, 33.789890, 32.729969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308693, 33.565601, 32.399807>,  <37.292961, 33.431026, 32.201710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308693, 33.565601, 32.399807>,  <37.334915, 33.789890, 32.729969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308693, 33.565601, 32.399807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672782, 0.586055, -0.451558,
		0.736931, -0.584919, 0.338824,
		-0.065555, -0.560722, -0.825405,
		37.289028, 33.397385, 32.152187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980057, 33.808140, 32.530338>,  <37.334915, 33.789890, 32.729969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980057, 33.808140, 32.530338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767693, 33.705826, 32.207176>,  <37.640274, 33.644436, 32.013279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767693, 33.705826, 32.207176>,  <37.980057, 33.808140, 32.530338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767693, 33.705826, 32.207176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610923, 0.545179, -0.574067,
		0.587290, -0.798345, -0.133176,
		-0.530908, -0.255784, -0.807905,
		37.608421, 33.629089, 31.964804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481667, 33.657688, 31.911045>,  <37.980057, 33.808140, 32.530338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481667, 33.657688, 31.911045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124039, 33.732227, 31.748117>,  <37.909462, 33.776951, 31.650362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124039, 33.732227, 31.748117>,  <38.481667, 33.657688, 31.911045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124039, 33.732227, 31.748117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433039, 0.592048, -0.679673,
		0.114497, -0.784062, -0.610030,
		-0.894074, 0.186347, -0.407318,
		37.855816, 33.788132, 31.625921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575825, 33.834801, 31.200937>,  <38.481667, 33.657688, 31.911045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575825, 33.834801, 31.200937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202229, 33.975914, 31.223562>,  <37.978069, 34.060581, 31.237137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202229, 33.975914, 31.223562>,  <38.575825, 33.834801, 31.200937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202229, 33.975914, 31.223562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227525, 0.709333, -0.667142,
		-0.275479, -0.610237, -0.742780,
		-0.933993, 0.352785, 0.056562,
		37.922031, 34.081749, 31.240530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255787, 33.774014, 30.515152>,  <38.575825, 33.834801, 31.200937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255787, 33.774014, 30.515152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038937, 34.061787, 30.688828>,  <37.908825, 34.234451, 30.793032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038937, 34.061787, 30.688828>,  <38.255787, 33.774014, 30.515152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038937, 34.061787, 30.688828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066873, 0.552007, -0.831154,
		-0.837632, -0.421555, -0.347367,
		-0.542126, 0.719431, 0.434188,
		37.876297, 34.277615, 30.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818459, 34.015610, 29.974920>,  <38.255787, 33.774014, 30.515152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818459, 34.015610, 29.974920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812393, 34.287430, 30.268309>,  <37.808754, 34.450523, 30.444342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812393, 34.287430, 30.268309>,  <37.818459, 34.015610, 29.974920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812393, 34.287430, 30.268309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228343, 0.716523, -0.659131,
		-0.973463, 0.157490, -0.166035,
		-0.015161, 0.679553, 0.733470,
		37.807846, 34.491295, 30.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354210, 34.507812, 29.727381>,  <37.818459, 34.015610, 29.974920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354210, 34.507812, 29.727381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592468, 34.686935, 29.994116>,  <37.735424, 34.794411, 30.154158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592468, 34.686935, 29.994116>,  <37.354210, 34.507812, 29.727381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592468, 34.686935, 29.994116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173216, 0.739035, -0.651017,
		-0.784349, 0.503282, 0.362634,
		0.595645, 0.447810, 0.666838,
		37.771160, 34.821278, 30.194168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057785, 35.209652, 29.835272>,  <37.354210, 34.507812, 29.727381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057785, 35.209652, 29.835272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440910, 35.225857, 29.949085>,  <37.670784, 35.235580, 30.017374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440910, 35.225857, 29.949085>,  <37.057785, 35.209652, 29.835272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440910, 35.225857, 29.949085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166720, 0.728093, -0.664895,
		-0.234105, 0.684280, 0.690620,
		0.957810, 0.040515, 0.284534,
		37.728252, 35.238010, 30.034445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213772, 35.905670, 29.685619>,  <37.057785, 35.209652, 29.835272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213772, 35.905670, 29.685619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567978, 35.736301, 29.762125>,  <37.780502, 35.634682, 29.808029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567978, 35.736301, 29.762125>,  <37.213772, 35.905670, 29.685619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567978, 35.736301, 29.762125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455848, 0.712176, -0.533861,
		0.089835, 0.559928, 0.823656,
		0.885512, -0.423422, 0.191264,
		37.833633, 35.609276, 29.819504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660831, 36.490677, 29.977457>,  <37.213772, 35.905670, 29.685619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660831, 36.490677, 29.977457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918980, 36.208344, 29.860628>,  <38.073868, 36.038944, 29.790531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918980, 36.208344, 29.860628>,  <37.660831, 36.490677, 29.977457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918980, 36.208344, 29.860628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, 0.673477, -0.559129,
		0.591354, 0.219617, 0.775931,
		0.645366, -0.705831, -0.292071,
		38.112591, 35.996593, 29.773006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762718, 36.763027, 30.758532>,  <37.660831, 36.490677, 29.977457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762718, 36.763027, 30.758532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571960, 37.100765, 30.856226>,  <37.457504, 37.303410, 30.914843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571960, 37.100765, 30.856226>,  <37.762718, 36.763027, 30.758532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571960, 37.100765, 30.856226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699713, -0.532860, 0.475880,
		0.531950, 0.056050, 0.844918,
		-0.476896, 0.844345, 0.244236,
		37.428890, 37.354069, 30.929497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694252, 36.723450, 31.555975>,  <37.762718, 36.763027, 30.758532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694252, 36.723450, 31.555975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426643, 36.949738, 31.363155>,  <37.266079, 37.085510, 31.247463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426643, 36.949738, 31.363155>,  <37.694252, 36.723450, 31.555975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426643, 36.949738, 31.363155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738071, -0.429306, 0.520526,
		0.087524, 0.704031, 0.704755,
		-0.669022, 0.565718, -0.482050,
		37.225937, 37.119453, 31.218540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133411, 36.893406, 32.086014>,  <37.694252, 36.723450, 31.555975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133411, 36.893406, 32.086014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937927, 36.996578, 31.752634>,  <36.820637, 37.058479, 31.552607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937927, 36.996578, 31.752634>,  <37.133411, 36.893406, 32.086014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937927, 36.996578, 31.752634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843367, -0.384249, 0.375612,
		-0.223370, 0.886468, 0.405315,
		-0.488710, 0.257929, -0.833448,
		36.791313, 37.073956, 31.502600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463230, 37.230049, 32.307735>,  <37.133411, 36.893406, 32.086014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463230, 37.230049, 32.307735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.453606, 37.061619, 31.945055>,  <36.447830, 36.960560, 31.727446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.453606, 37.061619, 31.945055>,  <36.463230, 37.230049, 32.307735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453606, 37.061619, 31.945055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939208, -0.301211, 0.164805,
		-0.342506, 0.855549, -0.388234,
		-0.024059, -0.421079, -0.906705,
		36.446388, 36.935295, 31.673044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711243, 37.299007, 32.054676>,  <36.463230, 37.230049, 32.307735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711243, 37.299007, 32.054676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876900, 37.035900, 31.803017>,  <35.976292, 36.878036, 31.652021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876900, 37.035900, 31.803017>,  <35.711243, 37.299007, 32.054676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876900, 37.035900, 31.803017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898212, -0.407205, -0.165523,
		-0.147318, 0.633661, -0.759455,
		0.414140, -0.657768, -0.629151,
		36.001141, 36.838570, 31.614271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266720, 37.314144, 31.410223>,  <35.711243, 37.299007, 32.054676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266720, 37.314144, 31.410223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469151, 36.971809, 31.452999>,  <35.590607, 36.766411, 31.478664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469151, 36.971809, 31.452999>,  <35.266720, 37.314144, 31.410223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469151, 36.971809, 31.452999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835017, -0.517217, -0.187703,
		0.215953, 0.005696, -0.976387,
		0.506074, -0.855835, 0.106938,
		35.620972, 36.715057, 31.485081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861439, 36.921528, 30.998184>,  <35.266720, 37.314144, 31.410223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861439, 36.921528, 30.998184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079971, 36.649002, 31.193048>,  <35.211090, 36.485485, 31.309967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079971, 36.649002, 31.193048>,  <34.861439, 36.921528, 30.998184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079971, 36.649002, 31.193048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759305, -0.648384, -0.055259,
		0.353517, -0.339714, -0.871562,
		0.546334, -0.681317, 0.487162,
		35.243870, 36.444607, 31.339197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694466, 36.328537, 30.749132>,  <34.861439, 36.921528, 30.998184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694466, 36.328537, 30.749132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847652, 36.205528, 31.097561>,  <34.939564, 36.131725, 31.306618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847652, 36.205528, 31.097561>,  <34.694466, 36.328537, 30.749132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847652, 36.205528, 31.097561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671458, -0.740268, 0.033869,
		0.634412, -0.597860, -0.489985,
		0.382969, -0.307518, 0.871073,
		34.962543, 36.113274, 31.358883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496750, 35.607658, 30.893475>,  <34.694466, 36.328537, 30.749132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496750, 35.607658, 30.893475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.630676, 35.678986, 31.263577>,  <34.711033, 35.721783, 31.485638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.630676, 35.678986, 31.263577>,  <34.496750, 35.607658, 30.893475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630676, 35.678986, 31.263577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536088, -0.771481, 0.342676,
		0.774925, -0.610752, -0.162707,
		0.334815, 0.178323, 0.925257,
		34.731121, 35.732483, 31.541153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724190, 34.984459, 31.132927>,  <34.496750, 35.607658, 30.893475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724190, 34.984459, 31.132927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.618069, 35.216640, 31.440872>,  <34.554394, 35.355949, 31.625639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.618069, 35.216640, 31.440872>,  <34.724190, 34.984459, 31.132927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618069, 35.216640, 31.440872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558285, -0.743484, 0.368169,
		0.786085, -0.332126, 0.521308,
		-0.265306, 0.580451, 0.769863,
		34.538475, 35.390778, 31.671831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773861, 34.582912, 31.604313>,  <34.724190, 34.984459, 31.132927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773861, 34.582912, 31.604313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.551037, 34.866875, 31.776693>,  <34.417343, 35.037251, 31.880121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.551037, 34.866875, 31.776693>,  <34.773861, 34.582912, 31.604313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551037, 34.866875, 31.776693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460808, -0.695934, 0.550756,
		0.690899, 0.108217, 0.714806,
		-0.557059, 0.709905, 0.430953,
		34.383919, 35.079845, 31.905979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807133, 34.427788, 32.368732>,  <34.773861, 34.582912, 31.604313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807133, 34.427788, 32.368732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.480438, 34.650085, 32.306660>,  <34.284420, 34.783466, 32.269417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.480438, 34.650085, 32.306660>,  <34.807133, 34.427788, 32.368732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480438, 34.650085, 32.306660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563536, -0.710518, 0.421416,
		0.123942, 0.431637, 0.893492,
		-0.816741, 0.555746, -0.155180,
		34.235416, 34.816811, 32.260105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.451950, 39.359077, 29.814276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097061, 39.539093, 29.773668>,  <39.884129, 39.647102, 29.749304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097061, 39.539093, 29.773668>,  <40.451950, 39.359077, 29.814276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097061, 39.539093, 29.773668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384512, -0.599736, 0.701761,
		0.254936, 0.661651, 0.705142,
		-0.887220, 0.450040, -0.101518,
		39.830894, 39.674107, 29.743214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170399, 39.472675, 30.508827>,  <40.451950, 39.359077, 29.814276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170399, 39.472675, 30.508827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863361, 39.469276, 30.252476>,  <39.679138, 39.467236, 30.098665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863361, 39.469276, 30.252476>,  <40.170399, 39.472675, 30.508827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863361, 39.469276, 30.252476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566783, -0.457869, 0.684918,
		-0.299261, 0.888979, 0.346640,
		-0.767593, -0.008500, -0.640881,
		39.633083, 39.466728, 30.060211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620865, 39.463619, 30.937567>,  <40.170399, 39.472675, 30.508827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620865, 39.463619, 30.937567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443638, 39.374916, 30.590115>,  <39.337303, 39.321693, 30.381643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443638, 39.374916, 30.590115>,  <39.620865, 39.463619, 30.937567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443638, 39.374916, 30.590115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778797, -0.384704, 0.495457,
		-0.444036, 0.896006, -0.002253,
		-0.443066, -0.221755, -0.868630,
		39.310719, 39.308388, 30.329525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821388, 39.711327, 30.999498>,  <39.620865, 39.463619, 30.937567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821388, 39.711327, 30.999498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865005, 39.440350, 30.708521>,  <38.891178, 39.277763, 30.533934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865005, 39.440350, 30.708521>,  <38.821388, 39.711327, 30.999498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865005, 39.440350, 30.708521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764232, -0.525104, 0.374452,
		-0.635655, 0.515106, -0.574986,
		0.109045, -0.677445, -0.727446,
		38.897720, 39.237118, 30.490288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203529, 39.714390, 30.647364>,  <38.821388, 39.711327, 30.999498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203529, 39.714390, 30.647364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380501, 39.362141, 30.579525>,  <38.486683, 39.150791, 30.538822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380501, 39.362141, 30.579525>,  <38.203529, 39.714390, 30.647364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380501, 39.362141, 30.579525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822426, -0.473821, 0.314816,
		-0.357592, 0.000195, -0.933878,
		0.442429, -0.880621, -0.169595,
		38.513229, 39.097954, 30.528646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713318, 39.342369, 30.256166>,  <38.203529, 39.714390, 30.647364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713318, 39.342369, 30.256166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975883, 39.086525, 30.416178>,  <38.133423, 38.933018, 30.512184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975883, 39.086525, 30.416178>,  <37.713318, 39.342369, 30.256166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975883, 39.086525, 30.416178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747801, -0.621645, 0.233132,
		0.099564, -0.452175, -0.886355,
		0.656415, -0.639606, 0.400031,
		38.172810, 38.894642, 30.536186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500000, 38.721817, 29.911474>,  <37.713318, 39.342369, 30.256166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500000, 38.721817, 29.911474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722858, 38.593708, 30.217941>,  <37.856575, 38.516842, 30.401821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722858, 38.593708, 30.217941>,  <37.500000, 38.721817, 29.911474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722858, 38.593708, 30.217941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686551, -0.696687, 0.208026,
		0.467156, -0.641915, -0.608039,
		0.557148, -0.320269, 0.766169,
		37.890003, 38.497627, 30.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613388, 38.023941, 29.841948>,  <37.500000, 38.721817, 29.911474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613388, 38.023941, 29.841948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679638, 38.091919, 30.230522>,  <37.719387, 38.132706, 30.463667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679638, 38.091919, 30.230522>,  <37.613388, 38.023941, 29.841948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679638, 38.091919, 30.230522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650678, -0.721376, 0.237137,
		0.741071, -0.671368, -0.008900,
		0.165626, 0.169944, 0.971436,
		37.729324, 38.142902, 30.521954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949509, 37.295757, 30.131140>,  <37.613388, 38.023941, 29.841948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949509, 37.295757, 30.131140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797195, 37.523094, 30.422892>,  <37.705807, 37.659496, 30.597942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797195, 37.523094, 30.422892>,  <37.949509, 37.295757, 30.131140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797195, 37.523094, 30.422892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632489, -0.735497, 0.242905,
		0.674507, -0.368828, 0.639536,
		-0.380786, 0.568340, 0.729377,
		37.682961, 37.693596, 30.641705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540913, 36.781013, 29.995434>,  <37.949509, 37.295757, 30.131140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540913, 36.781013, 29.995434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483959, 36.502361, 29.714172>,  <38.449787, 36.335171, 29.545416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483959, 36.502361, 29.714172>,  <38.540913, 36.781013, 29.995434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483959, 36.502361, 29.714172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425664, 0.598253, -0.678899,
		0.893609, -0.395971, 0.211352,
		-0.142382, -0.696635, -0.703155,
		38.441246, 36.293369, 29.503225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223457, 36.646137, 29.769547>,  <38.540913, 36.781013, 29.995434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223457, 36.646137, 29.769547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971745, 36.531010, 29.480782>,  <38.820717, 36.461933, 29.307522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971745, 36.531010, 29.480782>,  <39.223457, 36.646137, 29.769547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971745, 36.531010, 29.480782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525676, 0.526533, -0.668153,
		0.572423, -0.799950, -0.180035,
		-0.629283, -0.287826, -0.721914,
		38.782959, 36.444664, 29.264208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712173, 36.368969, 29.198227>,  <39.223457, 36.646137, 29.769547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712173, 36.368969, 29.198227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350117, 36.480057, 29.069481>,  <39.132885, 36.546707, 28.992233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350117, 36.480057, 29.069481>,  <39.712173, 36.368969, 29.198227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350117, 36.480057, 29.069481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424129, 0.538427, -0.728156,
		-0.028920, -0.795594, -0.605140,
		-0.905140, 0.277716, -0.321863,
		39.078575, 36.563370, 28.972921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781948, 36.296791, 28.465921>,  <39.712173, 36.368969, 29.198227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781948, 36.296791, 28.465921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475048, 36.544197, 28.533758>,  <39.290909, 36.692642, 28.574461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475048, 36.544197, 28.533758>,  <39.781948, 36.296791, 28.465921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475048, 36.544197, 28.533758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328158, 0.605803, -0.724786,
		-0.551030, -0.500442, -0.667775,
		-0.767254, 0.618515, 0.169592,
		39.244873, 36.729752, 28.584635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668541, 36.449032, 27.816648>,  <39.781948, 36.296791, 28.465921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668541, 36.449032, 27.816648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484444, 36.726147, 28.038719>,  <39.373985, 36.892418, 28.171961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484444, 36.726147, 28.038719>,  <39.668541, 36.449032, 27.816648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484444, 36.726147, 28.038719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530161, 0.716070, -0.454063,
		-0.712115, 0.085354, -0.696855,
		-0.460240, 0.692791, 0.555176,
		39.346371, 36.933983, 28.205273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388996, 36.903019, 27.314886>,  <39.668541, 36.449032, 27.816648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388996, 36.903019, 27.314886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435085, 37.094578, 27.662996>,  <39.462738, 37.209511, 27.871862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435085, 37.094578, 27.662996>,  <39.388996, 36.903019, 27.314886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435085, 37.094578, 27.662996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572129, 0.684205, -0.452253,
		-0.812030, 0.550022, -0.195152,
		0.115225, 0.478895, 0.870277,
		39.469654, 37.238247, 27.924080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328293, 37.558361, 27.177877>,  <39.388996, 36.903019, 27.314886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328293, 37.558361, 27.177877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481419, 37.615562, 27.542953>,  <39.573296, 37.649883, 27.761999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481419, 37.615562, 27.542953>,  <39.328293, 37.558361, 27.177877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481419, 37.615562, 27.542953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556460, 0.752920, -0.351375,
		-0.737430, 0.642387, 0.208653,
		0.382818, 0.143007, 0.912688,
		39.596264, 37.658466, 27.816759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299187, 38.224812, 27.241627>,  <39.328293, 37.558361, 27.177877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299187, 38.224812, 27.241627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582001, 38.104584, 27.497675>,  <39.751690, 38.032448, 27.651304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582001, 38.104584, 27.497675>,  <39.299187, 38.224812, 27.241627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582001, 38.104584, 27.497675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595319, 0.741550, -0.309353,
		-0.381701, 0.599801, 0.703238,
		0.707036, -0.300570, 0.640123,
		39.794113, 38.014412, 27.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612629, 38.874130, 27.555185>,  <39.299187, 38.224812, 27.241627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612629, 38.874130, 27.555185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867470, 38.573914, 27.625368>,  <40.020374, 38.393784, 27.667477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867470, 38.573914, 27.625368>,  <39.612629, 38.874130, 27.555185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867470, 38.573914, 27.625368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767912, 0.598453, -0.228399,
		0.066422, 0.280248, 0.957627,
		0.637103, -0.750543, 0.175456,
		40.058601, 38.348751, 27.678005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074997, 39.160397, 28.015997>,  <39.612629, 38.874130, 27.555185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074997, 39.160397, 28.015997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227928, 38.861370, 27.798754>,  <40.319687, 38.681953, 27.668407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227928, 38.861370, 27.798754>,  <40.074997, 39.160397, 28.015997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227928, 38.861370, 27.798754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781744, 0.575055, -0.241222,
		0.492647, -0.332344, 0.804267,
		0.382329, -0.747569, -0.543107,
		40.342628, 38.637100, 27.635822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821499, 39.168892, 28.018667>,  <40.074997, 39.160397, 28.015997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821499, 39.168892, 28.018667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781673, 38.930222, 27.700155>,  <40.757778, 38.787018, 27.509048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781673, 38.930222, 27.700155>,  <40.821499, 39.168892, 28.018667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781673, 38.930222, 27.700155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827112, 0.395245, -0.399583,
		0.553148, -0.698397, 0.454168,
		-0.099560, -0.596676, -0.796282,
		40.751804, 38.751217, 27.461271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542065, 38.919636, 27.815838>,  <40.821499, 39.168892, 28.018667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542065, 38.919636, 27.815838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302074, 38.876862, 27.498703>,  <41.158081, 38.851196, 27.308422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302074, 38.876862, 27.498703>,  <41.542065, 38.919636, 27.815838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302074, 38.876862, 27.498703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673510, 0.467323, -0.572707,
		0.431755, -0.877595, -0.208361,
		-0.599976, -0.106936, -0.792838,
		41.122082, 38.844780, 27.260851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956337, 38.739727, 27.345570>,  <41.542065, 38.919636, 27.815838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956337, 38.739727, 27.345570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647594, 38.865753, 27.124672>,  <41.462349, 38.941368, 26.992132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647594, 38.865753, 27.124672>,  <41.956337, 38.739727, 27.345570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647594, 38.865753, 27.124672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634451, 0.438239, -0.636725,
		0.041404, -0.841831, -0.538151,
		-0.771853, 0.315067, -0.552245,
		41.416039, 38.960274, 26.958998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156479, 38.634148, 26.654196>,  <41.956337, 38.739727, 27.345570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156479, 38.634148, 26.654196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877384, 38.920437, 26.642134>,  <41.709927, 39.092209, 26.634897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877384, 38.920437, 26.642134>,  <42.156479, 38.634148, 26.654196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877384, 38.920437, 26.642134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588587, 0.548785, -0.593633,
		-0.408327, -0.431948, -0.804171,
		-0.697735, 0.715721, -0.030155,
		41.668064, 39.135155, 26.633087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.726944, 41.656136, 25.351116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084625, 41.594067, 25.519079>,  <35.299232, 41.556824, 25.619856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084625, 41.594067, 25.519079>,  <34.726944, 41.656136, 25.351116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084625, 41.594067, 25.519079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202628, -0.976709, 0.070574,
		0.399176, -0.148192, -0.904819,
		0.894204, -0.155171, 0.419907,
		35.352886, 41.547516, 25.645052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031685, 40.991711, 25.059011>,  <34.726944, 41.656136, 25.351116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031685, 40.991711, 25.059011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223087, 41.055542, 25.404394>,  <35.337929, 41.093842, 25.611624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223087, 41.055542, 25.404394>,  <35.031685, 40.991711, 25.059011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223087, 41.055542, 25.404394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144315, -0.955682, 0.256602,
		0.866141, -0.247397, -0.434274,
		0.478510, 0.159582, 0.863459,
		35.366642, 41.103416, 25.663431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427868, 40.351856, 25.156797>,  <35.031685, 40.991711, 25.059011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427868, 40.351856, 25.156797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383202, 40.510529, 25.521254>,  <35.356403, 40.605732, 25.739927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383202, 40.510529, 25.521254>,  <35.427868, 40.351856, 25.156797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383202, 40.510529, 25.521254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223602, -0.903392, 0.365902,
		0.968263, -0.162874, 0.189577,
		-0.111667, 0.396679, 0.911140,
		35.349701, 40.629532, 25.794596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800568, 39.947170, 25.572130>,  <35.427868, 40.351856, 25.156797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800568, 39.947170, 25.572130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566135, 40.138741, 25.833551>,  <35.425476, 40.253685, 25.990404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566135, 40.138741, 25.833551>,  <35.800568, 39.947170, 25.572130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566135, 40.138741, 25.833551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326914, -0.877813, 0.350101,
		0.741373, -0.008468, 0.671040,
		-0.586083, 0.478928, 0.653555,
		35.390312, 40.282417, 26.029617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873730, 39.645996, 26.247814>,  <35.800568, 39.947170, 25.572130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873730, 39.645996, 26.247814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519489, 39.828800, 26.280918>,  <35.306946, 39.938484, 26.300779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519489, 39.828800, 26.280918>,  <35.873730, 39.645996, 26.247814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519489, 39.828800, 26.280918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389270, -0.827571, 0.404469,
		0.253335, 0.325983, 0.910800,
		-0.885602, 0.457013, 0.082758,
		35.253807, 39.965904, 26.305746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586136, 39.373203, 26.854774>,  <35.873730, 39.645996, 26.247814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586136, 39.373203, 26.854774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256599, 39.540565, 26.701817>,  <35.058880, 39.640984, 26.610041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256599, 39.540565, 26.701817>,  <35.586136, 39.373203, 26.854774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256599, 39.540565, 26.701817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560921, -0.698920, 0.443710,
		-0.081612, 0.580039, 0.810490,
		-0.823837, 0.418409, -0.382396,
		35.009449, 39.666088, 26.587097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083958, 39.362469, 27.430864>,  <35.586136, 39.373203, 26.854774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083958, 39.362469, 27.430864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901531, 39.376163, 27.075150>,  <34.792076, 39.384380, 26.861721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901531, 39.376163, 27.075150>,  <35.083958, 39.362469, 27.430864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901531, 39.376163, 27.075150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628736, -0.719595, 0.294743,
		-0.629836, 0.693549, 0.349708,
		-0.456067, 0.034234, -0.889287,
		34.764709, 39.386433, 26.808363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376026, 39.171104, 27.567072>,  <35.083958, 39.362469, 27.430864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376026, 39.171104, 27.567072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404099, 39.122700, 27.171005>,  <34.420944, 39.093655, 26.933365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404099, 39.122700, 27.171005>,  <34.376026, 39.171104, 27.567072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404099, 39.122700, 27.171005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626010, -0.778163, 0.050732,
		-0.776651, 0.616293, -0.130371,
		0.070184, -0.121014, -0.990167,
		34.425152, 39.086395, 26.873955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685024, 39.080627, 27.411327>,  <34.376026, 39.171104, 27.567072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685024, 39.080627, 27.411327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909363, 38.941658, 27.110729>,  <34.043964, 38.858276, 26.930370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909363, 38.941658, 27.110729>,  <33.685024, 39.080627, 27.411327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909363, 38.941658, 27.110729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627113, -0.770888, -0.111627,
		-0.540537, 0.533879, -0.650225,
		0.560846, -0.347426, -0.751496,
		34.077618, 38.837429, 26.885281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217445, 38.929504, 26.859030>,  <33.685024, 39.080627, 27.411327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217445, 38.929504, 26.859030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546886, 38.707775, 26.811005>,  <33.744549, 38.574738, 26.782190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546886, 38.707775, 26.811005>,  <33.217445, 38.929504, 26.859030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546886, 38.707775, 26.811005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563814, -0.777164, -0.279519,
		0.061636, 0.297904, -0.952604,
		0.823599, -0.554320, -0.120061,
		33.793964, 38.541481, 26.774986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003788, 38.361404, 26.469305>,  <33.217445, 38.929504, 26.859030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003788, 38.361404, 26.469305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365578, 38.211601, 26.550955>,  <33.582653, 38.121719, 26.599945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365578, 38.211601, 26.550955>,  <33.003788, 38.361404, 26.469305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365578, 38.211601, 26.550955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363343, -0.927189, -0.091123,
		0.223386, 0.008252, -0.974695,
		0.904478, -0.374504, 0.204122,
		33.636921, 38.099251, 26.612192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157398, 37.744343, 25.977140>,  <33.003788, 38.361404, 26.469305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157398, 37.744343, 25.977140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392036, 37.693771, 26.297121>,  <33.532818, 37.663429, 26.489109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392036, 37.693771, 26.297121>,  <33.157398, 37.744343, 25.977140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392036, 37.693771, 26.297121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367280, -0.921858, 0.123623,
		0.721813, -0.366323, -0.587191,
		0.586593, -0.126431, 0.799953,
		33.568016, 37.655842, 26.537107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486950, 37.088291, 25.945229>,  <33.157398, 37.744343, 25.977140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486950, 37.088291, 25.945229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504993, 37.168541, 26.336679>,  <33.515820, 37.216690, 26.571550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504993, 37.168541, 26.336679>,  <33.486950, 37.088291, 25.945229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504993, 37.168541, 26.336679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410189, -0.889516, 0.201264,
		0.910885, -0.410501, 0.042173,
		0.045105, 0.200627, 0.978629,
		33.518524, 37.228729, 26.630268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574383, 36.453453, 26.345758>,  <33.486950, 37.088291, 25.945229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574383, 36.453453, 26.345758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416927, 36.705780, 26.613226>,  <33.322456, 36.857178, 26.773706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416927, 36.705780, 26.613226>,  <33.574383, 36.453453, 26.345758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416927, 36.705780, 26.613226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461515, -0.764693, 0.449721,
		0.795020, -0.131575, 0.592142,
		-0.393634, 0.630820, 0.668669,
		33.298836, 36.895027, 26.813828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294758, 36.549679, 26.719591>,  <33.574383, 36.453453, 26.345758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294758, 36.549679, 26.719591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587570, 36.297375, 26.616621>,  <34.763260, 36.145992, 26.554840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587570, 36.297375, 26.616621>,  <34.294758, 36.549679, 26.719591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587570, 36.297375, 26.616621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509722, 0.757802, -0.407333,
		0.452005, 0.166968, 0.876250,
		0.732035, -0.630760, -0.257423,
		34.807182, 36.108147, 26.539394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985847, 36.894535, 26.915342>,  <34.294758, 36.549679, 26.719591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985847, 36.894535, 26.915342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067646, 36.613438, 26.642775>,  <35.116726, 36.444778, 26.479235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067646, 36.613438, 26.642775>,  <34.985847, 36.894535, 26.915342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067646, 36.613438, 26.642775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640622, 0.622428, -0.449653,
		0.740124, -0.344579, 0.577479,
		0.204498, -0.702744, -0.681418,
		35.128994, 36.402615, 26.438349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721855, 36.945332, 26.829168>,  <34.985847, 36.894535, 26.915342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721855, 36.945332, 26.829168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549786, 36.810177, 26.494318>,  <35.446545, 36.729084, 26.293407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549786, 36.810177, 26.494318>,  <35.721855, 36.945332, 26.829168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549786, 36.810177, 26.494318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540214, 0.646598, -0.538590,
		0.723267, -0.683916, -0.095619,
		-0.430178, -0.337890, -0.837125,
		35.420731, 36.708809, 26.243181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314262, 36.774616, 26.415987>,  <35.721855, 36.945332, 26.829168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314262, 36.774616, 26.415987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979927, 36.826706, 26.202665>,  <35.779324, 36.857960, 26.074673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979927, 36.826706, 26.202665>,  <36.314262, 36.774616, 26.415987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979927, 36.826706, 26.202665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507747, 0.552735, -0.660815,
		0.208721, -0.823119, -0.528120,
		-0.835840, 0.130225, -0.533304,
		35.729176, 36.865772, 26.042675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501595, 36.594452, 25.724878>,  <36.314262, 36.774616, 26.415987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501595, 36.594452, 25.724878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163235, 36.799171, 25.664850>,  <35.960220, 36.922005, 25.628834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163235, 36.799171, 25.664850>,  <36.501595, 36.594452, 25.724878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163235, 36.799171, 25.664850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458121, 0.553147, -0.695811,
		-0.273105, -0.657334, -0.702371,
		-0.845895, 0.511801, -0.150071,
		35.909466, 36.952713, 25.619829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294830, 36.653336, 24.926857>,  <36.501595, 36.594452, 25.724878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294830, 36.653336, 24.926857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130379, 36.956818, 25.128983>,  <36.031708, 37.138905, 25.250257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130379, 36.956818, 25.128983>,  <36.294830, 36.653336, 24.926857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130379, 36.956818, 25.128983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427085, 0.650044, -0.628522,
		-0.805338, -0.042592, -0.591284,
		-0.411131, 0.758702, 0.505315,
		36.007038, 37.184429, 25.280577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184601, 37.137585, 24.462376>,  <36.294830, 36.653336, 24.926857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184601, 37.137585, 24.462376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140018, 37.381123, 24.776543>,  <36.113270, 37.527245, 24.965042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140018, 37.381123, 24.776543>,  <36.184601, 37.137585, 24.462376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140018, 37.381123, 24.776543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460201, 0.732112, -0.502222,
		-0.880791, 0.305476, -0.361790,
		-0.111454, 0.608848, 0.785418,
		36.106583, 37.563778, 25.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710072, 37.632713, 24.304674>,  <36.184601, 37.137585, 24.462376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710072, 37.632713, 24.304674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937859, 37.792458, 24.592068>,  <36.074532, 37.888302, 24.764503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937859, 37.792458, 24.592068>,  <35.710072, 37.632713, 24.304674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937859, 37.792458, 24.592068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358819, 0.665618, -0.654371,
		-0.739564, 0.630450, 0.235751,
		0.569468, 0.399357, 0.718484,
		36.108700, 37.912266, 24.807613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561695, 38.414921, 24.370382>,  <35.710072, 37.632713, 24.304674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561695, 38.414921, 24.370382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927525, 38.360001, 24.522547>,  <36.147022, 38.327049, 24.613846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927525, 38.360001, 24.522547>,  <35.561695, 38.414921, 24.370382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927525, 38.360001, 24.522547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354098, 0.726272, -0.589189,
		-0.195386, 0.673557, 0.712843,
		0.914570, -0.137297, 0.380409,
		36.201897, 38.318813, 24.636669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724365, 39.064331, 24.502737>,  <35.561695, 38.414921, 24.370382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724365, 39.064331, 24.502737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055729, 38.840931, 24.485693>,  <36.254547, 38.706890, 24.475466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055729, 38.840931, 24.485693>,  <35.724365, 39.064331, 24.502737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055729, 38.840931, 24.485693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475281, 0.741146, -0.474142,
		0.296390, 0.372531, 0.879417,
		0.828409, -0.558501, -0.042612,
		36.304253, 38.673382, 24.472910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250931, 39.503456, 24.829628>,  <35.724365, 39.064331, 24.502737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250931, 39.503456, 24.829628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430603, 39.221573, 24.609947>,  <36.538406, 39.052444, 24.478138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430603, 39.221573, 24.609947>,  <36.250931, 39.503456, 24.829628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430603, 39.221573, 24.609947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564632, 0.700295, -0.436782,
		0.692408, -0.113904, 0.712459,
		0.449180, -0.704708, -0.549203,
		36.565357, 39.010162, 24.445187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923206, 39.582390, 24.919991>,  <36.250931, 39.503456, 24.829628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923206, 39.582390, 24.919991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880646, 39.392277, 24.570639>,  <36.855110, 39.278210, 24.361029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880646, 39.392277, 24.570639>,  <36.923206, 39.582390, 24.919991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880646, 39.392277, 24.570639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596880, 0.671972, -0.438393,
		0.795244, -0.567947, 0.212185,
		-0.106401, -0.475278, -0.873378,
		36.848724, 39.249695, 24.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554047, 39.567146, 24.743692>,  <36.923206, 39.582390, 24.919991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554047, 39.567146, 24.743692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323586, 39.524368, 24.419567>,  <37.185307, 39.498703, 24.225092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323586, 39.524368, 24.419567>,  <37.554047, 39.567146, 24.743692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323586, 39.524368, 24.419567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415229, 0.815638, -0.402888,
		0.704010, -0.568592, -0.425527,
		-0.576155, -0.106946, -0.810314,
		37.150738, 39.492283, 24.176474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000851, 39.704212, 24.256290>,  <37.554047, 39.567146, 24.743692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000851, 39.704212, 24.256290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653984, 39.713173, 24.057287>,  <37.445862, 39.718548, 23.937885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653984, 39.713173, 24.057287>,  <38.000851, 39.704212, 24.256290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653984, 39.713173, 24.057287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397604, 0.632683, -0.664547,
		0.299879, -0.774086, -0.557550,
		-0.867170, 0.022400, -0.497508,
		37.393833, 39.719894, 23.908035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511723, 39.214169, 23.960623>,  <38.000851, 39.704212, 24.256290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511723, 39.214169, 23.960623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885433, 39.104965, 24.052364>,  <39.109657, 39.039444, 24.107409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885433, 39.104965, 24.052364>,  <38.511723, 39.214169, 23.960623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885433, 39.104965, 24.052364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332505, -0.899340, 0.283950,
		0.128747, -0.341548, -0.931005,
		0.934272, -0.273006, 0.229354,
		39.165714, 39.023064, 24.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575531, 38.535126, 23.700544>,  <38.511723, 39.214169, 23.960623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575531, 38.535126, 23.700544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848961, 38.583225, 23.988506>,  <39.013020, 38.612087, 24.161283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848961, 38.583225, 23.988506>,  <38.575531, 38.535126, 23.700544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848961, 38.583225, 23.988506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267271, -0.876585, 0.400206,
		0.679184, -0.465980, -0.567072,
		0.683575, 0.120252, 0.719906,
		39.054035, 38.619301, 24.204477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999577, 37.902962, 23.759869>,  <38.575531, 38.535126, 23.700544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999577, 37.902962, 23.759869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011600, 38.091473, 24.112457>,  <39.018814, 38.204578, 24.324011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011600, 38.091473, 24.112457>,  <38.999577, 37.902962, 23.759869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011600, 38.091473, 24.112457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041559, -0.880519, 0.472186,
		0.998684, -0.050829, -0.006886,
		0.030064, 0.471279, 0.881472,
		39.020618, 38.232857, 24.376900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578510, 37.564957, 24.137690>,  <38.999577, 37.902962, 23.759869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578510, 37.564957, 24.137690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345539, 37.742474, 24.410109>,  <39.205757, 37.848984, 24.573559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345539, 37.742474, 24.410109>,  <39.578510, 37.564957, 24.137690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345539, 37.742474, 24.410109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052540, -0.856616, 0.513273,
		0.811183, 0.263162, 0.522233,
		-0.582427, 0.443797, 0.681046,
		39.170811, 37.875614, 24.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995640, 37.442890, 24.792721>,  <39.578510, 37.564957, 24.137690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995640, 37.442890, 24.792721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621986, 37.540333, 24.897064>,  <39.397793, 37.598797, 24.959671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621986, 37.540333, 24.897064>,  <39.995640, 37.442890, 24.792721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621986, 37.540333, 24.897064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068437, -0.839553, 0.538950,
		0.350297, 0.485599, 0.800928,
		-0.934135, 0.243606, 0.260859,
		39.341747, 37.613415, 24.975323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960892, 37.058586, 25.366545>,  <39.995640, 37.442890, 24.792721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960892, 37.058586, 25.366545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583244, 37.147202, 25.268930>,  <39.356655, 37.200371, 25.210361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583244, 37.147202, 25.268930>,  <39.960892, 37.058586, 25.366545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583244, 37.147202, 25.268930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322783, -0.771224, 0.548657,
		-0.066656, 0.596770, 0.799639,
		-0.944123, 0.221539, -0.244034,
		39.300007, 37.213665, 25.195721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665195, 36.958294, 25.949333>,  <39.960892, 37.058586, 25.366545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665195, 36.958294, 25.949333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354298, 36.985573, 25.699137>,  <39.167759, 37.001938, 25.549019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354298, 36.985573, 25.699137>,  <39.665195, 36.958294, 25.949333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354298, 36.985573, 25.699137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509643, -0.651226, 0.562290,
		-0.368991, 0.755814, 0.540916,
		-0.777245, 0.068194, -0.625492,
		39.121124, 37.006031, 25.511490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109390, 37.110611, 26.369965>,  <39.665195, 36.958294, 25.949333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109390, 37.110611, 26.369965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989185, 36.914524, 26.042700>,  <38.917065, 36.796871, 25.846342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989185, 36.914524, 26.042700>,  <39.109390, 37.110611, 26.369965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989185, 36.914524, 26.042700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471890, -0.669045, 0.574194,
		-0.828864, 0.558631, -0.030274,
		-0.300508, -0.490214, -0.818160,
		38.899033, 36.767460, 25.797253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463829, 36.806255, 26.596607>,  <39.109390, 37.110611, 26.369965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463829, 36.806255, 26.596607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587894, 36.613304, 26.268921>,  <38.662334, 36.497532, 26.072309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587894, 36.613304, 26.268921>,  <38.463829, 36.806255, 26.596607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587894, 36.613304, 26.268921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287148, -0.868998, 0.402974,
		-0.906282, 0.110249, -0.408042,
		0.310160, -0.482377, -0.819215,
		38.680943, 36.468590, 26.023157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817947, 36.364128, 26.305468>,  <38.463829, 36.806255, 26.596607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817947, 36.364128, 26.305468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152061, 36.199650, 26.159472>,  <38.352531, 36.100964, 26.071875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152061, 36.199650, 26.159472>,  <37.817947, 36.364128, 26.305468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152061, 36.199650, 26.159472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315392, -0.902100, 0.294522,
		-0.450364, -0.130894, -0.883198,
		0.835285, -0.411196, -0.364990,
		38.402645, 36.076290, 26.049974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546051, 35.841713, 25.855831>,  <37.817947, 36.364128, 26.305468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546051, 35.841713, 25.855831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932121, 35.763393, 25.925220>,  <38.163765, 35.716400, 25.966854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932121, 35.763393, 25.925220>,  <37.546051, 35.841713, 25.855831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932121, 35.763393, 25.925220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240109, -0.926288, 0.290412,
		0.103824, -0.321952, -0.941046,
		0.965178, -0.195802, 0.173475,
		38.221676, 35.704655, 25.977262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655586, 35.211033, 25.604767>,  <37.546051, 35.841713, 25.855831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655586, 35.211033, 25.604767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972019, 35.226742, 25.848946>,  <38.161880, 35.236168, 25.995453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972019, 35.226742, 25.848946>,  <37.655586, 35.211033, 25.604767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972019, 35.226742, 25.848946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171957, -0.943420, 0.283531,
		0.587040, -0.329268, -0.739572,
		0.791084, 0.039269, 0.610445,
		38.209343, 35.238522, 26.032080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968365, 34.584385, 25.579279>,  <37.655586, 35.211033, 25.604767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968365, 34.584385, 25.579279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061211, 34.738728, 25.936432>,  <38.116917, 34.831333, 26.150723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061211, 34.738728, 25.936432>,  <37.968365, 34.584385, 25.579279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061211, 34.738728, 25.936432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224677, -0.871858, 0.435182,
		0.946384, -0.301622, -0.115678,
		0.232115, 0.385859, 0.892880,
		38.130844, 34.854485, 26.204296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568192, 34.136826, 25.780869>,  <37.968365, 34.584385, 25.579279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568192, 34.136826, 25.780869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439735, 34.305954, 26.119831>,  <38.362663, 34.407429, 26.323208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439735, 34.305954, 26.119831>,  <38.568192, 34.136826, 25.780869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439735, 34.305954, 26.119831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107719, -0.872686, 0.476252,
		0.940886, 0.244224, 0.234707,
		-0.321137, 0.422817, 0.847406,
		38.343395, 34.432800, 26.374052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.788879, 38.620316, 25.867079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743969, 38.966488, 26.062395>,  <41.717022, 39.174191, 26.179585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743969, 38.966488, 26.062395>,  <41.788879, 38.620316, 25.867079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743969, 38.966488, 26.062395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505302, 0.472844, -0.721864,
		-0.855607, 0.165685, -0.490392,
		-0.112277, 0.865428, 0.488290,
		41.710285, 39.226116, 26.208881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598511, 39.090572, 25.345514>,  <41.788879, 38.620316, 25.867079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598511, 39.090572, 25.345514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.689308, 39.332085, 25.651173>,  <41.743786, 39.476994, 25.834568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.689308, 39.332085, 25.651173>,  <41.598511, 39.090572, 25.345514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689308, 39.332085, 25.651173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343385, 0.684620, -0.642948,
		-0.911352, 0.408340, -0.051928,
		0.226990, 0.603783, 0.764148,
		41.757404, 39.513218, 25.880417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410213, 39.741859, 25.035063>,  <41.598511, 39.090572, 25.345514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410213, 39.741859, 25.035063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639866, 39.840649, 25.347313>,  <41.777657, 39.899921, 25.534662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639866, 39.840649, 25.347313>,  <41.410213, 39.741859, 25.035063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639866, 39.840649, 25.347313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415655, 0.733510, -0.537768,
		-0.705409, 0.633222, 0.318479,
		0.574134, 0.246969, 0.780626,
		41.812107, 39.914738, 25.581501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271881, 40.450348, 25.180712>,  <41.410213, 39.741859, 25.035063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271881, 40.450348, 25.180712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.638977, 40.368107, 25.316643>,  <41.859234, 40.318764, 25.398201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.638977, 40.368107, 25.316643>,  <41.271881, 40.450348, 25.180712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638977, 40.368107, 25.316643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363007, 0.781399, -0.507584,
		-0.161182, 0.589190, 0.791754,
		0.917740, -0.205599, 0.339828,
		41.914299, 40.306427, 25.418591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501362, 41.128864, 25.395636>,  <41.271881, 40.450348, 25.180712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501362, 41.128864, 25.395636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832100, 40.906086, 25.364273>,  <42.030540, 40.772419, 25.345455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832100, 40.906086, 25.364273>,  <41.501362, 41.128864, 25.395636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832100, 40.906086, 25.364273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484338, 0.775948, -0.404130,
		0.285916, 0.296177, 0.911335,
		0.826842, -0.556942, -0.078406,
		42.080154, 40.739002, 25.340752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075550, 41.611687, 25.523239>,  <41.501362, 41.128864, 25.395636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075550, 41.611687, 25.523239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258781, 41.297279, 25.357183>,  <42.368721, 41.108635, 25.257549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258781, 41.297279, 25.357183>,  <42.075550, 41.611687, 25.523239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258781, 41.297279, 25.357183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530426, 0.616468, -0.581907,
		0.713308, 0.046360, 0.699315,
		0.458083, -0.786014, -0.415141,
		42.396206, 41.061474, 25.232641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769123, 41.731995, 25.629644>,  <42.075550, 41.611687, 25.523239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769123, 41.731995, 25.629644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.746929, 41.465832, 25.331877>,  <42.733612, 41.306133, 25.153217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.746929, 41.465832, 25.331877>,  <42.769123, 41.731995, 25.629644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746929, 41.465832, 25.331877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357849, 0.682784, -0.636985,
		0.932130, -0.301732, 0.200230,
		-0.055485, -0.665405, -0.744418,
		42.730286, 41.266209, 25.108551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381725, 41.712051, 25.407101>,  <42.769123, 41.731995, 25.629644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381725, 41.712051, 25.407101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142815, 41.582779, 25.113485>,  <42.999466, 41.505215, 24.937315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142815, 41.582779, 25.113485>,  <43.381725, 41.712051, 25.407101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142815, 41.582779, 25.113485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458891, 0.612911, -0.643242,
		0.657783, -0.721038, -0.217775,
		-0.597278, -0.323179, -0.734040,
		42.963631, 41.485825, 24.893274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750618, 41.575508, 24.807531>,  <43.381725, 41.712051, 25.407101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750618, 41.575508, 24.807531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375648, 41.637913, 24.683020>,  <43.150665, 41.675354, 24.608313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375648, 41.637913, 24.683020>,  <43.750618, 41.575508, 24.807531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375648, 41.637913, 24.683020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324731, 0.714317, -0.619920,
		0.125636, -0.682210, -0.720281,
		-0.937425, 0.156013, -0.311278,
		43.094421, 41.684715, 24.589636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857643, 41.913082, 24.242966>,  <43.750618, 41.575508, 24.807531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857643, 41.913082, 24.242966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.458553, 41.920040, 24.269005>,  <43.219097, 41.924213, 24.284628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.458553, 41.920040, 24.269005>,  <43.857643, 41.913082, 24.242966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458553, 41.920040, 24.269005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015437, 0.881409, -0.472101,
		-0.065590, -0.472033, -0.879137,
		-0.997727, 0.017394, 0.065099,
		43.159237, 41.925259, 24.288534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623722, 42.024845, 23.516680>,  <43.857643, 41.913082, 24.242966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623722, 42.024845, 23.516680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.302708, 42.143185, 23.723909>,  <43.110100, 42.214188, 23.848248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.302708, 42.143185, 23.723909>,  <43.623722, 42.024845, 23.516680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302708, 42.143185, 23.723909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058891, 0.824853, -0.562271,
		-0.593684, -0.481756, -0.644555,
		-0.802541, 0.295853, 0.518073,
		43.061947, 42.231941, 23.879332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131203, 42.381657, 23.028336>,  <43.623722, 42.024845, 23.516680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131203, 42.381657, 23.028336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.016678, 42.528851, 23.382196>,  <42.947964, 42.617168, 23.594513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.016678, 42.528851, 23.382196>,  <43.131203, 42.381657, 23.028336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016678, 42.528851, 23.382196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093950, 0.908076, -0.408132,
		-0.953519, -0.199967, -0.225422,
		-0.286313, 0.367983, 0.884654,
		42.930782, 42.639244, 23.647593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550636, 42.862267, 22.847353>,  <43.131203, 42.381657, 23.028336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550636, 42.862267, 22.847353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709137, 42.955975, 23.202454>,  <42.804237, 43.012199, 23.415514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709137, 42.955975, 23.202454>,  <42.550636, 42.862267, 22.847353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709137, 42.955975, 23.202454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047301, 0.970825, -0.235077,
		-0.916923, 0.051157, 0.395772,
		0.396251, 0.234268, 0.887752,
		42.828011, 43.026257, 23.468779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141258, 43.522823, 23.102659>,  <42.550636, 42.862267, 22.847353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141258, 43.522823, 23.102659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.513725, 43.466579, 23.237215>,  <42.737206, 43.432835, 23.317949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.513725, 43.466579, 23.237215>,  <42.141258, 43.522823, 23.102659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513725, 43.466579, 23.237215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199252, 0.968928, -0.146553,
		-0.305333, 0.203492, 0.930249,
		0.931166, -0.140606, 0.336391,
		42.793076, 43.424397, 23.338133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422878, 43.625805, 22.741428>,  <42.141258, 43.522823, 23.102659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422878, 43.625805, 22.741428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.271702, 43.572929, 22.374891>,  <41.180996, 43.541206, 22.154968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.271702, 43.572929, 22.374891>,  <41.422878, 43.625805, 22.741428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271702, 43.572929, 22.374891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353197, -0.894316, 0.274682,
		-0.855810, 0.427464, 0.291315,
		-0.377944, -0.132184, -0.916344,
		41.158318, 43.533276, 22.099989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810066, 43.354916, 22.844746>,  <41.422878, 43.625805, 22.741428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810066, 43.354916, 22.844746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.880867, 43.231636, 22.470861>,  <40.923347, 43.157669, 22.246531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.880867, 43.231636, 22.470861>,  <40.810066, 43.354916, 22.844746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880867, 43.231636, 22.470861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405176, -0.888313, 0.216177,
		-0.896940, 0.340458, -0.282111,
		0.177004, -0.308202, -0.934709,
		40.933968, 43.139175, 22.190449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140408, 42.973991, 22.643181>,  <40.810066, 43.354916, 22.844746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140408, 42.973991, 22.643181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443703, 42.847736, 22.414989>,  <40.625679, 42.771984, 22.278076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443703, 42.847736, 22.414989>,  <40.140408, 42.973991, 22.643181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443703, 42.847736, 22.414989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296369, -0.946236, 0.129625,
		-0.580719, 0.070784, -0.811021,
		0.758242, -0.315637, -0.570476,
		40.671177, 42.753044, 22.243847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913769, 42.420406, 22.259312>,  <40.140408, 42.973991, 22.643181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913769, 42.420406, 22.259312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 42.384548, 22.229334>,  <40.549385, 42.363033, 22.211348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 42.384548, 22.229334>,  <39.913769, 42.420406, 22.259312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311028, 42.384548, 22.229334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081460, -0.991028, 0.105958,
		-0.083769, -0.099127, -0.991543,
		0.993150, -0.089647, -0.074942,
		40.608971, 42.357655, 22.206852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911907, 41.856533, 21.845264>,  <39.913769, 42.420406, 22.259312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911907, 41.856533, 21.845264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268669, 41.906815, 22.019022>,  <40.482727, 41.936985, 22.123278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268669, 41.906815, 22.019022>,  <39.911907, 41.856533, 21.845264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268669, 41.906815, 22.019022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126622, -0.991585, 0.026956,
		0.434128, 0.030962, -0.900319,
		0.891908, 0.125703, 0.434396,
		40.536240, 41.944527, 22.149342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452980, 41.434052, 21.515211>,  <39.911907, 41.856533, 21.845264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452980, 41.434052, 21.515211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565365, 41.512234, 21.891052>,  <40.632797, 41.559143, 22.116558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565365, 41.512234, 21.891052>,  <40.452980, 41.434052, 21.515211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565365, 41.512234, 21.891052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275523, -0.954255, 0.116118,
		0.919319, 0.226258, -0.321961,
		0.280961, 0.195457, 0.939605,
		40.649654, 41.570869, 22.172934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871639, 40.926788, 21.697136>,  <40.452980, 41.434052, 21.515211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871639, 40.926788, 21.697136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832287, 41.067978, 22.069313>,  <40.808674, 41.152691, 22.292620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832287, 41.067978, 22.069313>,  <40.871639, 40.926788, 21.697136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832287, 41.067978, 22.069313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116361, -0.924487, 0.363021,
		0.988323, 0.143981, 0.049878,
		-0.098380, 0.352978, 0.930445,
		40.802773, 41.173870, 22.348446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275536, 40.441814, 22.081738>,  <40.871639, 40.926788, 21.697136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275536, 40.441814, 22.081738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046314, 40.634693, 22.346794>,  <40.908779, 40.750420, 22.505827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046314, 40.634693, 22.346794>,  <41.275536, 40.441814, 22.081738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046314, 40.634693, 22.346794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244899, -0.872388, 0.423041,
		0.782068, 0.080146, 0.618018,
		-0.573056, 0.482199, 0.662639,
		40.874397, 40.779354, 22.545586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434460, 40.261574, 22.842361>,  <41.275536, 40.441814, 22.081738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434460, 40.261574, 22.842361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.063240, 40.409740, 22.857920>,  <40.840508, 40.498642, 22.867254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.063240, 40.409740, 22.857920>,  <41.434460, 40.261574, 22.842361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063240, 40.409740, 22.857920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292711, -0.789943, 0.538805,
		0.230306, 0.488654, 0.841532,
		-0.928051, 0.370416, 0.038894,
		40.784824, 40.520866, 22.869589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268917, 40.330776, 23.542585>,  <41.434460, 40.261574, 22.842361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268917, 40.330776, 23.542585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935852, 40.329231, 23.321081>,  <40.736012, 40.328304, 23.188179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935852, 40.329231, 23.321081>,  <41.268917, 40.330776, 23.542585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935852, 40.329231, 23.321081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372425, -0.736158, 0.565130,
		-0.409838, 0.676799, 0.611535,
		-0.832666, -0.003861, -0.553762,
		40.686050, 40.328072, 23.154953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786522, 40.288101, 24.080885>,  <41.268917, 40.330776, 23.542585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786522, 40.288101, 24.080885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594234, 40.145298, 23.760521>,  <40.478863, 40.059616, 23.568302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594234, 40.145298, 23.760521>,  <40.786522, 40.288101, 24.080885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594234, 40.145298, 23.760521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451205, -0.682462, 0.575030,
		-0.751879, 0.637802, 0.166991,
		-0.480721, -0.357006, -0.800908,
		40.450020, 40.038197, 23.520248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075695, 40.340794, 24.292206>,  <40.786522, 40.288101, 24.080885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075695, 40.340794, 24.292206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112946, 40.074478, 23.996084>,  <40.135296, 39.914688, 23.818411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112946, 40.074478, 23.996084>,  <40.075695, 40.340794, 24.292206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112946, 40.074478, 23.996084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696203, -0.575085, 0.429625,
		-0.711779, 0.475396, -0.517078,
		0.093122, -0.665789, -0.740306,
		40.140881, 39.874741, 23.773993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375469, 40.289619, 24.063534>,  <40.075695, 40.340794, 24.292206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375469, 40.289619, 24.063534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568981, 39.956932, 23.954567>,  <39.685089, 39.757320, 23.889187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568981, 39.956932, 23.954567>,  <39.375469, 40.289619, 24.063534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568981, 39.956932, 23.954567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631554, -0.547247, 0.549236,
		-0.605888, -0.093661, -0.790017,
		0.483777, -0.831714, -0.272419,
		39.714115, 39.707417, 23.872841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839417, 39.882835, 23.787193>,  <39.375469, 40.289619, 24.063534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839417, 39.882835, 23.787193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135986, 39.632572, 23.884222>,  <39.313931, 39.482414, 23.942440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135986, 39.632572, 23.884222>,  <38.839417, 39.882835, 23.787193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135986, 39.632572, 23.884222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658011, -0.607008, 0.445603,
		-0.131549, -0.490000, -0.861740,
		0.741428, -0.625653, 0.242574,
		39.358414, 39.444878, 23.956995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115032, 39.799202, 23.553061>,  <38.839417, 39.882835, 23.787193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115032, 39.799202, 23.553061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740913, 39.935219, 23.592241>,  <37.516441, 40.016830, 23.615749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740913, 39.935219, 23.592241>,  <38.115032, 39.799202, 23.553061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740913, 39.935219, 23.592241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222299, 0.779962, -0.585015,
		-0.275330, -0.525386, -0.805085,
		-0.935295, 0.340042, 0.097954,
		37.460323, 40.037231, 23.621628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997643, 40.031918, 22.871433>,  <38.115032, 39.799202, 23.553061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997643, 40.031918, 22.871433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752281, 40.212524, 23.130621>,  <37.605064, 40.320889, 23.286135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752281, 40.212524, 23.130621>,  <37.997643, 40.031918, 22.871433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752281, 40.212524, 23.130621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120797, 0.864441, -0.488005,
		-0.780476, -0.221071, -0.584794,
		-0.613404, 0.451518, 0.647971,
		37.568260, 40.347980, 23.325012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599861, 40.505535, 22.351866>,  <37.997643, 40.031918, 22.871433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599861, 40.505535, 22.351866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538021, 40.638649, 22.723963>,  <37.500916, 40.718517, 22.947220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538021, 40.638649, 22.723963>,  <37.599861, 40.505535, 22.351866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538021, 40.638649, 22.723963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149528, 0.938598, -0.310926,
		-0.976596, 0.091027, -0.194872,
		-0.154604, 0.332788, 0.930242,
		37.491638, 40.738487, 23.003035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129215, 41.064659, 22.220301>,  <37.599861, 40.505535, 22.351866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129215, 41.064659, 22.220301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343502, 41.128014, 22.552065>,  <37.472073, 41.166027, 22.751123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343502, 41.128014, 22.552065>,  <37.129215, 41.064659, 22.220301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343502, 41.128014, 22.552065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181429, 0.937718, -0.296257,
		-0.824679, 0.309188, 0.473611,
		0.535713, 0.158390, 0.829412,
		37.504215, 41.175529, 22.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040306, 41.794270, 22.342714>,  <37.129215, 41.064659, 22.220301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040306, 41.794270, 22.342714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349483, 41.682613, 22.570623>,  <37.534988, 41.615620, 22.707369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349483, 41.682613, 22.570623>,  <37.040306, 41.794270, 22.342714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349483, 41.682613, 22.570623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481131, 0.843283, -0.239556,
		-0.413611, 0.459299, 0.786111,
		0.772942, -0.279139, 0.569774,
		37.581367, 41.598873, 22.741556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131245, 42.326370, 22.757372>,  <37.040306, 41.794270, 22.342714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131245, 42.326370, 22.757372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482975, 42.137955, 22.785372>,  <37.694016, 42.024906, 22.802172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482975, 42.137955, 22.785372>,  <37.131245, 42.326370, 22.757372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482975, 42.137955, 22.785372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475260, 0.877335, -0.066418,
		-0.030129, 0.091672, 0.995333,
		0.879329, -0.471042, 0.070001,
		37.746773, 41.996643, 22.806372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503246, 42.745693, 23.129927>,  <37.131245, 42.326370, 22.757372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503246, 42.745693, 23.129927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789207, 42.541069, 22.939257>,  <37.960785, 42.418293, 22.824854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789207, 42.541069, 22.939257>,  <37.503246, 42.745693, 23.129927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789207, 42.541069, 22.939257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436870, 0.859066, -0.266741,
		0.545951, -0.017552, 0.837633,
		0.714900, -0.511564, -0.476676,
		38.003677, 42.387600, 22.796253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611526, 42.861389, 23.954140>,  <37.503246, 42.745693, 23.129927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611526, 42.861389, 23.954140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406387, 43.127197, 24.171543>,  <37.283302, 43.286682, 24.301985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406387, 43.127197, 24.171543>,  <37.611526, 42.861389, 23.954140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406387, 43.127197, 24.171543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518667, -0.744338, 0.420650,
		0.684084, -0.066170, 0.726396,
		-0.512849, 0.664517, 0.543510,
		37.252533, 43.326553, 24.334597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548172, 42.535042, 24.671017>,  <37.611526, 42.861389, 23.954140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548172, 42.535042, 24.671017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255329, 42.807510, 24.673372>,  <37.079624, 42.970989, 24.674786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255329, 42.807510, 24.673372>,  <37.548172, 42.535042, 24.671017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255329, 42.807510, 24.673372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541605, -0.587304, 0.601446,
		0.413145, 0.437130, 0.798892,
		-0.732103, 0.681169, 0.005890,
		37.035698, 43.011860, 24.675138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365826, 42.548447, 25.297646>,  <37.548172, 42.535042, 24.671017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365826, 42.548447, 25.297646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046665, 42.714565, 25.122881>,  <36.855171, 42.814236, 25.018023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046665, 42.714565, 25.122881>,  <37.365826, 42.548447, 25.297646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046665, 42.714565, 25.122881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602793, -0.550154, 0.577902,
		-0.000371, 0.724474, 0.689302,
		-0.797898, 0.415292, -0.436912,
		36.807297, 42.839153, 24.991808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940777, 42.705349, 25.779400>,  <37.365826, 42.548447, 25.297646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940777, 42.705349, 25.779400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677086, 42.693874, 25.478842>,  <36.518871, 42.686989, 25.298506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677086, 42.693874, 25.478842>,  <36.940777, 42.705349, 25.779400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677086, 42.693874, 25.478842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603770, -0.575423, 0.551679,
		-0.448199, 0.817352, 0.362011,
		-0.659226, -0.028690, -0.751397,
		36.479317, 42.685268, 25.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314938, 42.927876, 26.134832>,  <36.940777, 42.705349, 25.779400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314938, 42.927876, 26.134832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259926, 42.724392, 25.794880>,  <36.226917, 42.602303, 25.590908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259926, 42.724392, 25.794880>,  <36.314938, 42.927876, 26.134832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259926, 42.724392, 25.794880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582535, -0.652412, 0.484780,
		-0.801086, 0.561757, -0.206616,
		-0.137530, -0.508711, -0.849882,
		36.218666, 42.571777, 25.539915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510231, 42.794777, 26.037113>,  <36.314938, 42.927876, 26.134832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510231, 42.794777, 26.037113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712257, 42.531082, 25.814291>,  <35.833473, 42.372864, 25.680597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712257, 42.531082, 25.814291>,  <35.510231, 42.794777, 26.037113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712257, 42.531082, 25.814291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561062, -0.741227, 0.368498,
		-0.655832, 0.126426, -0.744245,
		0.505067, -0.659241, -0.557054,
		35.863777, 42.333309, 25.647175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966713, 42.275078, 25.841644>,  <35.510231, 42.794777, 26.037113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966713, 42.275078, 25.841644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296528, 42.074127, 25.737530>,  <35.494419, 41.953556, 25.675060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296528, 42.074127, 25.737530>,  <34.966713, 42.275078, 25.841644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296528, 42.074127, 25.737530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459953, -0.863059, 0.208740,
		-0.329509, -0.052396, -0.942698,
		0.824541, -0.502379, -0.260286,
		35.543892, 41.923412, 25.659445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.582298, 44.378895, 25.960009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732616, 44.168770, 25.654636>,  <42.822807, 44.042694, 25.471413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732616, 44.168770, 25.654636>,  <42.582298, 44.378895, 25.960009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732616, 44.168770, 25.654636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643681, -0.740619, 0.192766,
		-0.666674, 0.418967, -0.616451,
		0.375793, -0.525310, -0.763433,
		42.845356, 44.011177, 25.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039654, 44.205849, 25.429335>,  <42.582298, 44.378895, 25.960009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039654, 44.205849, 25.429335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338551, 43.947430, 25.491621>,  <42.517891, 43.792377, 25.528994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338551, 43.947430, 25.491621>,  <42.039654, 44.205849, 25.429335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338551, 43.947430, 25.491621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633037, -0.620692, 0.462607,
		-0.202214, -0.444256, -0.872781,
		0.747244, -0.646048, 0.155718,
		42.562725, 43.753616, 25.538336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768726, 43.583744, 25.448179>,  <42.039654, 44.205849, 25.429335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768726, 43.583744, 25.448179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107319, 43.491371, 25.640074>,  <42.310474, 43.435947, 25.755211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107319, 43.491371, 25.640074>,  <41.768726, 43.583744, 25.448179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107319, 43.491371, 25.640074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505632, -0.630906, 0.588468,
		0.166773, -0.740694, -0.650814,
		0.846477, -0.230931, 0.479737,
		42.361263, 43.422092, 25.783995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874355, 42.783329, 25.512928>,  <41.768726, 43.583744, 25.448179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874355, 42.783329, 25.512928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.079414, 42.966080, 25.803707>,  <42.202450, 43.075729, 25.978174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.079414, 42.966080, 25.803707>,  <41.874355, 42.783329, 25.512928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079414, 42.966080, 25.803707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308748, -0.691939, 0.652606,
		0.801167, -0.559000, -0.213659,
		0.512646, 0.456879, 0.726949,
		42.233208, 43.103142, 26.021791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065201, 42.280956, 25.923250>,  <41.874355, 42.783329, 25.512928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065201, 42.280956, 25.923250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.148014, 42.586700, 26.167511>,  <42.197701, 42.770145, 26.314068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.148014, 42.586700, 26.167511>,  <42.065201, 42.280956, 25.923250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148014, 42.586700, 26.167511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483085, -0.462902, 0.743203,
		0.850744, -0.448865, 0.273414,
		0.207034, 0.764358, 0.610651,
		42.210125, 42.816010, 26.350706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320034, 41.860291, 26.502756>,  <42.065201, 42.280956, 25.923250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320034, 41.860291, 26.502756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245056, 42.225098, 26.648684>,  <42.200069, 42.443981, 26.736240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245056, 42.225098, 26.648684>,  <42.320034, 41.860291, 26.502756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245056, 42.225098, 26.648684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543297, -0.405677, 0.735020,
		0.818349, -0.060432, 0.571536,
		-0.187441, 0.912016, 0.364818,
		42.188824, 42.498703, 26.758129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412846, 41.805683, 27.313942>,  <42.320034, 41.860291, 26.502756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412846, 41.805683, 27.313942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140415, 42.079803, 27.210794>,  <41.976955, 42.244274, 27.148907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140415, 42.079803, 27.210794>,  <42.412846, 41.805683, 27.313942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140415, 42.079803, 27.210794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578453, -0.287670, 0.763308,
		0.448912, 0.669039, 0.592339,
		-0.681080, 0.685298, -0.257869,
		41.936092, 42.285393, 27.133434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109875, 41.857468, 27.899872>,  <42.412846, 41.805683, 27.313942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109875, 41.857468, 27.899872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859585, 42.074234, 27.675444>,  <41.709412, 42.204292, 27.540787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859585, 42.074234, 27.675444>,  <42.109875, 41.857468, 27.899872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859585, 42.074234, 27.675444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745551, -0.203947, 0.634475,
		0.229403, 0.815311, 0.531640,
		-0.625722, 0.541916, -0.561071,
		41.671867, 42.236809, 27.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699257, 42.299282, 28.383059>,  <42.109875, 41.857468, 27.899872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699257, 42.299282, 28.383059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485439, 42.264133, 28.046833>,  <41.357151, 42.243046, 27.845098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485439, 42.264133, 28.046833>,  <41.699257, 42.299282, 28.383059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485439, 42.264133, 28.046833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830435, -0.130132, 0.541703,
		-0.156985, 0.987595, -0.003412,
		-0.534540, -0.087873, -0.840563,
		41.325077, 42.237770, 27.794664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128281, 42.575314, 28.642298>,  <41.699257, 42.299282, 28.383059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128281, 42.575314, 28.642298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009773, 42.392654, 28.306751>,  <40.938667, 42.283058, 28.105423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009773, 42.392654, 28.306751>,  <41.128281, 42.575314, 28.642298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009773, 42.392654, 28.306751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715563, -0.475609, 0.511630,
		-0.632608, 0.751841, -0.185853,
		-0.296272, -0.456651, -0.838864,
		40.920891, 42.255661, 28.055092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339535, 42.649456, 28.539721>,  <41.128281, 42.575314, 28.642298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339535, 42.649456, 28.539721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461575, 42.330349, 28.331688>,  <40.534798, 42.138885, 28.206869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461575, 42.330349, 28.331688>,  <40.339535, 42.649456, 28.539721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461575, 42.330349, 28.331688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652646, -0.572863, 0.495865,
		-0.693519, 0.188140, -0.695439,
		0.305099, -0.797767, -0.520080,
		40.553104, 42.091019, 28.175665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765301, 42.274910, 28.413157>,  <40.339535, 42.649456, 28.539721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765301, 42.274910, 28.413157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032368, 41.986664, 28.338390>,  <40.192608, 41.813717, 28.293530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032368, 41.986664, 28.338390>,  <39.765301, 42.274910, 28.413157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032368, 41.986664, 28.338390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532107, -0.637531, 0.557151,
		-0.520654, -0.272533, -0.809102,
		0.667669, -0.720611, -0.186916,
		40.232670, 41.770481, 28.282314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158218, 42.367970, 28.081375>,  <39.765301, 42.274910, 28.413157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158218, 42.367970, 28.081375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829002, 42.538574, 28.231411>,  <38.631474, 42.640938, 28.321432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829002, 42.538574, 28.231411>,  <39.158218, 42.367970, 28.081375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829002, 42.538574, 28.231411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110446, 0.767967, -0.630895,
		-0.557137, -0.477827, -0.679176,
		-0.823043, 0.426507, 0.375088,
		38.582088, 42.666527, 28.343937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756763, 42.612751, 27.414606>,  <39.158218, 42.367970, 28.081375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756763, 42.612751, 27.414606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678143, 42.823238, 27.745535>,  <38.630970, 42.949532, 27.944092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678143, 42.823238, 27.745535>,  <38.756763, 42.612751, 27.414606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678143, 42.823238, 27.745535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381289, 0.818388, -0.429953,
		-0.903320, 0.230942, -0.361496,
		-0.196550, 0.526220, 0.827322,
		38.619179, 42.981106, 27.993731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314972, 43.189075, 27.291101>,  <38.756763, 42.612751, 27.414606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314972, 43.189075, 27.291101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510349, 43.295601, 27.623487>,  <38.627575, 43.359516, 27.822918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510349, 43.295601, 27.623487>,  <38.314972, 43.189075, 27.291101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510349, 43.295601, 27.623487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336070, 0.821414, -0.460799,
		-0.805284, 0.504335, 0.311712,
		0.488441, 0.266317, 0.830963,
		38.656883, 43.375496, 27.872776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290794, 43.926731, 27.217606>,  <38.314972, 43.189075, 27.291101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290794, 43.926731, 27.217606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.585175, 43.835365, 27.472542>,  <38.761803, 43.780544, 27.625504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.585175, 43.835365, 27.472542>,  <38.290794, 43.926731, 27.217606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585175, 43.835365, 27.472542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557213, 0.739061, -0.378554,
		-0.384564, 0.633731, 0.671190,
		0.735951, -0.228417, 0.637339,
		38.805962, 43.766842, 27.663744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273170, 44.448627, 27.590555>,  <38.290794, 43.926731, 27.217606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273170, 44.448627, 27.590555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636578, 44.284084, 27.619892>,  <38.854622, 44.185360, 27.637495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636578, 44.284084, 27.619892>,  <38.273170, 44.448627, 27.590555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636578, 44.284084, 27.619892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410432, 0.845626, -0.341265,
		0.078361, 0.340148, 0.937101,
		0.908518, -0.411359, 0.073344,
		38.909134, 44.160675, 27.641895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684471, 44.979004, 27.859560>,  <38.273170, 44.448627, 27.590555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684471, 44.979004, 27.859560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946129, 44.713326, 27.714819>,  <39.103123, 44.553921, 27.627974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946129, 44.713326, 27.714819>,  <38.684471, 44.979004, 27.859560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946129, 44.713326, 27.714819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507852, 0.740225, -0.440629,
		0.560516, 0.104468, 0.821528,
		0.654147, -0.664194, -0.361854,
		39.142372, 44.514069, 27.606262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296162, 45.272038, 27.907679>,  <38.684471, 44.979004, 27.859560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296162, 45.272038, 27.907679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354218, 44.998940, 27.621243>,  <39.389053, 44.835079, 27.449381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354218, 44.998940, 27.621243>,  <39.296162, 45.272038, 27.907679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354218, 44.998940, 27.621243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652661, 0.610025, -0.449336,
		0.743618, -0.402148, 0.534144,
		0.145142, -0.682749, -0.716092,
		39.397758, 44.794113, 27.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997429, 45.169067, 27.920780>,  <39.296162, 45.272038, 27.907679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997429, 45.169067, 27.920780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913971, 45.057491, 27.545834>,  <39.863895, 44.990547, 27.320866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913971, 45.057491, 27.545834>,  <39.997429, 45.169067, 27.920780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913971, 45.057491, 27.545834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730801, 0.592475, -0.338974,
		0.649920, -0.755756, 0.080229,
		-0.208649, -0.278938, -0.937369,
		39.851376, 44.973808, 27.264624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664188, 45.038063, 27.570978>,  <39.997429, 45.169067, 27.920780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664188, 45.038063, 27.570978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386036, 45.085823, 27.287518>,  <40.219143, 45.114479, 27.117441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386036, 45.085823, 27.287518>,  <40.664188, 45.038063, 27.570978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386036, 45.085823, 27.287518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677764, 0.436798, -0.591476,
		0.238912, -0.891600, -0.384669,
		-0.695383, 0.119404, -0.708651,
		40.177422, 45.121643, 27.074923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050426, 44.938507, 26.871368>,  <40.664188, 45.038063, 27.570978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050426, 44.938507, 26.871368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711597, 45.132256, 26.783869>,  <40.508301, 45.248505, 26.731369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711597, 45.132256, 26.783869>,  <41.050426, 44.938507, 26.871368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711597, 45.132256, 26.783869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492112, 0.559370, -0.667031,
		-0.200727, -0.672674, -0.712192,
		-0.847074, 0.484369, -0.218750,
		40.457474, 45.277565, 26.718245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945656, 44.897102, 26.191494>,  <41.050426, 44.938507, 26.871368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945656, 44.897102, 26.191494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.742317, 45.224380, 26.298933>,  <40.620316, 45.420746, 26.363398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.742317, 45.224380, 26.298933>,  <40.945656, 44.897102, 26.191494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742317, 45.224380, 26.298933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582902, 0.556513, -0.592046,
		-0.633888, -0.144395, -0.759826,
		-0.508342, 0.818195, 0.268599,
		40.589813, 45.469837, 26.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870686, 45.307869, 25.600103>,  <40.945656, 44.897102, 26.191494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870686, 45.307869, 25.600103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762856, 45.585213, 25.867411>,  <40.698158, 45.751617, 26.027796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762856, 45.585213, 25.867411>,  <40.870686, 45.307869, 25.600103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762856, 45.585213, 25.867411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321757, 0.718930, -0.616126,
		-0.907636, 0.048930, -0.416897,
		-0.269573, 0.693358, 0.668270,
		40.681984, 45.793221, 26.067892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403515, 45.745201, 25.267279>,  <40.870686, 45.307869, 25.600103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403515, 45.745201, 25.267279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592129, 45.939564, 25.561640>,  <40.705296, 46.056183, 25.738256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592129, 45.939564, 25.561640>,  <40.403515, 45.745201, 25.267279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592129, 45.939564, 25.561640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178210, 0.764774, -0.619162,
		-0.863655, 0.423099, 0.274020,
		0.471530, 0.485909, 0.735902,
		40.733589, 46.085335, 25.782410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828041, 45.539631, 24.819204>,  <40.403515, 45.745201, 25.267279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828041, 45.539631, 24.819204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593559, 45.721546, 24.551018>,  <39.452869, 45.830696, 24.390106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593559, 45.721546, 24.551018>,  <39.828041, 45.539631, 24.819204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593559, 45.721546, 24.551018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724828, -0.664110, 0.183256,
		-0.361921, 0.593400, 0.718951,
		-0.586206, 0.454791, -0.670468,
		39.417698, 45.857983, 24.349876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195915, 45.744904, 25.084394>,  <39.828041, 45.539631, 24.819204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195915, 45.744904, 25.084394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125668, 45.668724, 24.698050>,  <39.083519, 45.623016, 24.466244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125668, 45.668724, 24.698050>,  <39.195915, 45.744904, 25.084394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125668, 45.668724, 24.698050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719872, -0.644393, 0.257957,
		-0.671521, 0.740599, -0.023930,
		-0.175622, -0.190450, -0.965860,
		39.072983, 45.611588, 24.408291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461887, 45.752193, 25.026407>,  <39.195915, 45.744904, 25.084394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461887, 45.752193, 25.026407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584129, 45.554863, 24.700649>,  <38.657475, 45.436466, 24.505196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584129, 45.554863, 24.700649>,  <38.461887, 45.752193, 25.026407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584129, 45.554863, 24.700649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823812, -0.565865, 0.033636,
		-0.477430, 0.660627, -0.579338,
		0.305606, -0.493324, -0.814393,
		38.675812, 45.406864, 24.456331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849789, 45.573036, 24.638573>,  <38.461887, 45.752193, 25.026407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849789, 45.573036, 24.638573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133114, 45.333767, 24.488649>,  <38.303108, 45.190205, 24.398695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133114, 45.333767, 24.488649>,  <37.849789, 45.573036, 24.638573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133114, 45.333767, 24.488649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647433, -0.762088, -0.007271,
		-0.281289, 0.247815, -0.927073,
		0.708313, -0.598172, -0.374810,
		38.345608, 45.154316, 24.376205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549294, 45.261734, 24.018244>,  <37.849789, 45.573036, 24.638573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549294, 45.261734, 24.018244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.839127, 45.023960, 24.157738>,  <38.013027, 44.881294, 24.241434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.839127, 45.023960, 24.157738>,  <37.549294, 45.261734, 24.018244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839127, 45.023960, 24.157738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615688, -0.785701, -0.060023,
		0.309680, -0.171219, -0.935298,
		0.724588, -0.594439, 0.348734,
		38.056503, 44.845627, 24.262358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310760, 44.690720, 23.630114>,  <37.549294, 45.261734, 24.018244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310760, 44.690720, 23.630114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592392, 44.571564, 23.887962>,  <37.761372, 44.500069, 24.042671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592392, 44.571564, 23.887962>,  <37.310760, 44.690720, 23.630114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592392, 44.571564, 23.887962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447228, -0.891128, 0.076671,
		0.551600, -0.342275, -0.760648,
		0.704077, -0.297892, 0.644621,
		37.803616, 44.482197, 24.081348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502892, 44.110889, 23.340708>,  <37.310760, 44.690720, 23.630114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502892, 44.110889, 23.340708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611229, 44.074841, 23.724066>,  <37.676231, 44.053211, 23.954081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611229, 44.074841, 23.724066>,  <37.502892, 44.110889, 23.340708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611229, 44.074841, 23.724066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676062, -0.726552, 0.122730,
		0.685264, -0.681175, -0.257708,
		0.270839, -0.090124, 0.958396,
		37.692482, 44.047802, 24.011585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430466, 43.439163, 23.458290>,  <37.502892, 44.110889, 23.340708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430466, 43.439163, 23.458290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.438225, 43.523212, 23.849283>,  <37.442883, 43.573643, 24.083879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.438225, 43.523212, 23.849283>,  <37.430466, 43.439163, 23.458290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438225, 43.523212, 23.849283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471368, -0.860272, 0.194278,
		0.881723, -0.464524, 0.082354,
		0.019400, 0.210119, 0.977483,
		37.444046, 43.586246, 24.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132370, 43.117939, 23.238321>,  <37.430466, 43.439163, 23.458290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132370, 43.117939, 23.238321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.194118, 42.890366, 22.915215>,  <38.231167, 42.753822, 22.721350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.194118, 42.890366, 22.915215>,  <38.132370, 43.117939, 23.238321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194118, 42.890366, 22.915215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236452, 0.815082, -0.528896,
		0.959302, -0.109352, 0.260349,
		0.154370, -0.568931, -0.807767,
		38.240429, 42.719685, 22.672884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687878, 43.368290, 22.996403>,  <38.132370, 43.117939, 23.238321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687878, 43.368290, 22.996403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596558, 43.162315, 22.665894>,  <38.541767, 43.038731, 22.467588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596558, 43.162315, 22.665894>,  <38.687878, 43.368290, 22.996403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596558, 43.162315, 22.665894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279273, 0.778382, -0.562252,
		0.932677, -0.359117, -0.033897,
		-0.228299, -0.514933, -0.826271,
		38.528069, 43.007835, 22.418013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333416, 43.272411, 22.717474>,  <38.687878, 43.368290, 22.996403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333416, 43.272411, 22.717474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031261, 43.266895, 22.455420>,  <38.849968, 43.263584, 22.298187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031261, 43.266895, 22.455420>,  <39.333416, 43.272411, 22.717474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031261, 43.266895, 22.455420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414146, 0.764737, -0.493619,
		0.507815, -0.644194, -0.571959,
		-0.755385, -0.013793, -0.655136,
		38.804646, 43.262756, 22.258879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609589, 43.505348, 22.155947>,  <39.333416, 43.272411, 22.717474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609589, 43.505348, 22.155947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.237301, 43.519329, 22.010321>,  <39.013927, 43.527718, 21.922945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.237301, 43.519329, 22.010321>,  <39.609589, 43.505348, 22.155947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237301, 43.519329, 22.010321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245112, 0.798404, -0.549974,
		0.271449, -0.601107, -0.751655,
		-0.930717, 0.034950, -0.364065,
		38.958084, 43.529816, 21.901102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624950, 43.479038, 21.387894>,  <39.609589, 43.505348, 22.155947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624950, 43.479038, 21.387894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.286282, 43.664719, 21.491940>,  <39.083080, 43.776127, 21.554367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.286282, 43.664719, 21.491940>,  <39.624950, 43.479038, 21.387894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286282, 43.664719, 21.491940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258017, 0.785676, -0.562264,
		-0.465370, -0.408940, -0.784983,
		-0.846675, 0.464200, 0.260116,
		39.032280, 43.803978, 21.569975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326065, 43.756893, 20.775120>,  <39.624950, 43.479038, 21.387894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326065, 43.756893, 20.775120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 43.972366, 21.082167>,  <39.103825, 44.101650, 21.266396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 43.972366, 21.082167>,  <39.326065, 43.756893, 20.775120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187164, 43.972366, 21.082167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208565, 0.842419, -0.496820,
		-0.914283, -0.012426, -0.404885,
		-0.347256, 0.538679, 0.767618,
		39.082989, 44.133968, 21.312452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894180, 44.286236, 20.454206>,  <39.326065, 43.756893, 20.775120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894180, 44.286236, 20.454206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978848, 44.402878, 20.827337>,  <39.029648, 44.472862, 21.051216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978848, 44.402878, 20.827337>,  <38.894180, 44.286236, 20.454206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978848, 44.402878, 20.827337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078512, 0.946294, -0.313629,
		-0.974183, 0.139624, 0.177405,
		0.211668, 0.291604, 0.932826,
		39.042347, 44.490360, 21.107185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448792, 44.845482, 20.639385>,  <38.894180, 44.286236, 20.454206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448792, 44.845482, 20.639385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761066, 44.895912, 20.884214>,  <38.948433, 44.926170, 21.031111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761066, 44.895912, 20.884214>,  <38.448792, 44.845482, 20.639385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761066, 44.895912, 20.884214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123920, 0.928757, -0.349364,
		-0.612511, 0.348592, 0.709446,
		0.780688, 0.126075, 0.612071,
		38.995274, 44.933735, 21.067835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412807, 45.566360, 20.798809>,  <38.448792, 44.845482, 20.639385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412807, 45.566360, 20.798809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.781773, 45.470345, 20.919830>,  <39.003151, 45.412735, 20.992443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.781773, 45.470345, 20.919830>,  <38.412807, 45.566360, 20.798809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781773, 45.470345, 20.919830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319723, 0.914050, -0.249579,
		-0.216640, 0.326948, 0.919876,
		0.922412, -0.240037, 0.302553,
		39.058495, 45.398335, 21.010595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.031376, 32.626282, 29.016678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340744, 32.660805, 29.267872>,  <33.526367, 32.681519, 29.418589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340744, 32.660805, 29.267872>,  <33.031376, 32.626282, 29.016678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340744, 32.660805, 29.267872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421148, 0.670463, -0.610830,
		-0.473761, 0.736906, 0.482204,
		0.773424, 0.086308, 0.627986,
		33.572773, 32.686699, 29.456268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168732, 33.386803, 29.236017>,  <33.031376, 32.626282, 29.016678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168732, 33.386803, 29.236017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496300, 33.157246, 29.237806>,  <33.692841, 33.019512, 29.238880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496300, 33.157246, 29.237806>,  <33.168732, 33.386803, 29.236017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496300, 33.157246, 29.237806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411043, 0.581063, -0.702431,
		0.400524, 0.577070, 0.711738,
		0.818916, -0.573896, 0.004471,
		33.741974, 32.985077, 29.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614891, 33.864933, 29.285719>,  <33.168732, 33.386803, 29.236017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614891, 33.864933, 29.285719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825638, 33.552124, 29.152548>,  <33.952087, 33.364437, 29.072645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825638, 33.552124, 29.152548>,  <33.614891, 33.864933, 29.285719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825638, 33.552124, 29.152548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469199, 0.594222, -0.653263,
		0.708702, 0.187976, 0.680004,
		0.526871, -0.782027, -0.332928,
		33.983700, 33.317516, 29.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367481, 34.017563, 29.352867>,  <33.614891, 33.864933, 29.285719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367481, 34.017563, 29.352867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341747, 33.730793, 29.075197>,  <34.326309, 33.558731, 28.908594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341747, 33.730793, 29.075197>,  <34.367481, 34.017563, 29.352867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341747, 33.730793, 29.075197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439210, 0.604280, -0.664786,
		0.896078, -0.347656, 0.276006,
		-0.064332, -0.716924, -0.694176,
		34.322449, 33.515717, 28.866943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023335, 34.013290, 28.997845>,  <34.367481, 34.017563, 29.352867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023335, 34.013290, 28.997845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786659, 33.815022, 28.743534>,  <34.644653, 33.696060, 28.590948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786659, 33.815022, 28.743534>,  <35.023335, 34.013290, 28.997845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786659, 33.815022, 28.743534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306532, 0.591078, -0.746100,
		0.745616, -0.636345, -0.197794,
		-0.591689, -0.495674, -0.635776,
		34.609154, 33.666321, 28.552801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368904, 33.948463, 28.469694>,  <35.023335, 34.013290, 28.997845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368904, 33.948463, 28.469694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000362, 33.898430, 28.322472>,  <34.779240, 33.868412, 28.234138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000362, 33.898430, 28.322472>,  <35.368904, 33.948463, 28.469694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000362, 33.898430, 28.322472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223973, 0.603057, -0.765610,
		0.317721, -0.787831, -0.527613,
		-0.921352, -0.125079, -0.368056,
		34.723957, 33.860905, 28.212055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439369, 33.768330, 27.798563>,  <35.368904, 33.948463, 28.469694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439369, 33.768330, 27.798563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064579, 33.900711, 27.843376>,  <34.839706, 33.980141, 27.870264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064579, 33.900711, 27.843376>,  <35.439369, 33.768330, 27.798563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064579, 33.900711, 27.843376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111042, 0.586073, -0.802613,
		-0.331286, -0.739587, -0.585885,
		-0.936973, 0.330952, 0.112033,
		34.783485, 33.999996, 27.876986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282593, 34.008072, 27.187891>,  <35.439369, 33.768330, 27.798563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282593, 34.008072, 27.187891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987057, 34.191845, 27.385084>,  <34.809734, 34.302109, 27.503401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987057, 34.191845, 27.385084>,  <35.282593, 34.008072, 27.187891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987057, 34.191845, 27.385084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132527, 0.618212, -0.774758,
		-0.660717, -0.637759, -0.395875,
		-0.738843, 0.459432, 0.492983,
		34.765404, 34.329674, 27.532980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724266, 34.048100, 26.728636>,  <35.282593, 34.008072, 27.187891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724266, 34.048100, 26.728636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668701, 34.342022, 26.994198>,  <34.635361, 34.518375, 27.153534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668701, 34.342022, 26.994198>,  <34.724266, 34.048100, 26.728636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668701, 34.342022, 26.994198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028096, 0.667209, -0.744341,
		-0.989906, -0.122052, -0.072039,
		-0.138913, 0.734803, 0.663903,
		34.627026, 34.562462, 27.193369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328880, 34.539577, 26.442785>,  <34.724266, 34.048100, 26.728636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328880, 34.539577, 26.442785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473862, 34.747314, 26.752340>,  <34.560852, 34.871956, 26.938074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473862, 34.747314, 26.752340>,  <34.328880, 34.539577, 26.442785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473862, 34.747314, 26.752340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063042, 0.814790, -0.576319,
		-0.929866, 0.257678, 0.262586,
		0.362457, 0.519345, 0.773890,
		34.582600, 34.903118, 26.984507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906349, 35.108688, 26.485962>,  <34.328880, 34.539577, 26.442785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906349, 35.108688, 26.485962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267185, 35.172131, 26.646496>,  <34.483688, 35.210197, 26.742817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267185, 35.172131, 26.646496>,  <33.906349, 35.108688, 26.485962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267185, 35.172131, 26.646496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147878, 0.760088, -0.632771,
		-0.405412, 0.630167, 0.662216,
		0.902094, 0.158606, 0.401336,
		34.537815, 35.219711, 26.766897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927917, 35.843533, 26.453333>,  <33.906349, 35.108688, 26.485962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927917, 35.843533, 26.453333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305691, 35.746193, 26.541716>,  <34.532356, 35.687790, 26.594746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305691, 35.746193, 26.541716>,  <33.927917, 35.843533, 26.453333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305691, 35.746193, 26.541716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321763, 0.821814, -0.470203,
		-0.067162, 0.515173, 0.854451,
		0.944435, -0.243351, 0.220958,
		34.589020, 35.673187, 26.608004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784389, 36.148666, 27.052744>,  <33.927917, 35.843533, 26.453333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784389, 36.148666, 27.052744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508480, 36.424931, 27.139648>,  <33.342934, 36.590691, 27.191792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508480, 36.424931, 27.139648>,  <33.784389, 36.148666, 27.052744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508480, 36.424931, 27.139648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341312, -0.574819, 0.743700,
		0.638530, 0.438829, 0.632225,
		-0.689772, 0.690661, 0.217262,
		33.301548, 36.632130, 27.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877884, 36.372925, 27.807058>,  <33.784389, 36.148666, 27.052744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877884, 36.372925, 27.807058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495674, 36.464096, 27.732208>,  <33.266346, 36.518799, 27.687298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495674, 36.464096, 27.732208>,  <33.877884, 36.372925, 27.807058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495674, 36.464096, 27.732208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279872, -0.500901, 0.819005,
		0.092943, 0.834953, 0.542415,
		-0.955528, 0.227928, -0.187125,
		33.209015, 36.532475, 27.676071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607319, 36.428219, 28.510349>,  <33.877884, 36.372925, 27.807058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607319, 36.428219, 28.510349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291809, 36.396172, 28.266573>,  <33.102505, 36.376942, 28.120308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291809, 36.396172, 28.266573>,  <33.607319, 36.428219, 28.510349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291809, 36.396172, 28.266573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482819, -0.532858, 0.694945,
		-0.380425, 0.842403, 0.381620,
		-0.788773, -0.080121, -0.609441,
		33.055176, 36.372135, 28.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148460, 36.626896, 28.914091>,  <33.607319, 36.428219, 28.510349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148460, 36.626896, 28.914091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945095, 36.424923, 28.635077>,  <32.823078, 36.303738, 28.467667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945095, 36.424923, 28.635077>,  <33.148460, 36.626896, 28.914091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945095, 36.424923, 28.635077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522079, -0.463439, 0.716001,
		-0.684801, 0.728192, -0.027999,
		-0.508411, -0.504935, -0.697538,
		32.792572, 36.273441, 28.425816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527275, 36.655762, 29.105801>,  <33.148460, 36.626896, 28.914091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527275, 36.655762, 29.105801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502346, 36.337532, 28.864746>,  <32.487389, 36.146595, 28.720114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502346, 36.337532, 28.864746>,  <32.527275, 36.655762, 29.105801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502346, 36.337532, 28.864746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614321, -0.445297, 0.651398,
		-0.786591, 0.410812, -0.460987,
		-0.062326, -0.795578, -0.602637,
		32.483650, 36.098858, 28.683954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824947, 36.621010, 28.777828>,  <32.527275, 36.655762, 29.105801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824947, 36.621010, 28.777828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987379, 36.255894, 28.760284>,  <32.084839, 36.036823, 28.749758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987379, 36.255894, 28.760284>,  <31.824947, 36.621010, 28.777828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987379, 36.255894, 28.760284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719131, -0.348804, 0.600988,
		-0.563872, -0.212505, -0.798053,
		0.406077, -0.912786, -0.043862,
		32.109203, 35.982059, 28.747126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297434, 36.261433, 28.927229>,  <31.824947, 36.621010, 28.777828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297434, 36.261433, 28.927229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603943, 36.014648, 28.998991>,  <31.787849, 35.866577, 29.042048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603943, 36.014648, 28.998991>,  <31.297434, 36.261433, 28.927229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603943, 36.014648, 28.998991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531164, -0.451177, 0.717150,
		-0.361508, -0.644827, -0.673432,
		0.766274, -0.616958, 0.179405,
		31.833826, 35.829559, 29.052813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993971, 35.669907, 29.163548>,  <31.297434, 36.261433, 28.927229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993971, 35.669907, 29.163548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.379595, 35.659657, 29.269323>,  <31.610970, 35.653507, 29.332788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.379595, 35.659657, 29.269323>,  <30.993971, 35.669907, 29.163548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379595, 35.659657, 29.269323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242696, -0.489886, 0.837324,
		0.108090, -0.871410, -0.478499,
		0.964062, -0.025623, 0.264439,
		31.668814, 35.651970, 29.348656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114428, 34.953766, 29.473053>,  <30.993971, 35.669907, 29.163548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114428, 34.953766, 29.473053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361883, 35.231510, 29.620104>,  <31.510357, 35.398155, 29.708334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361883, 35.231510, 29.620104>,  <31.114428, 34.953766, 29.473053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361883, 35.231510, 29.620104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078358, -0.411052, 0.908238,
		0.781760, -0.590676, -0.199883,
		0.618637, 0.694362, 0.367628,
		31.547474, 35.439819, 29.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418882, 34.543919, 30.113676>,  <31.114428, 34.953766, 29.473053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418882, 34.543919, 30.113676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558720, 34.911385, 30.187265>,  <31.642622, 35.131863, 30.231419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558720, 34.911385, 30.187265>,  <31.418882, 34.543919, 30.113676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558720, 34.911385, 30.187265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126139, -0.148424, 0.980846,
		0.928371, -0.366103, 0.063991,
		0.349593, 0.918661, 0.183973,
		31.663597, 35.186981, 30.242456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762241, 34.444016, 30.740938>,  <31.418882, 34.543919, 30.113676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762241, 34.444016, 30.740938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660362, 34.828766, 30.701109>,  <31.599234, 35.059616, 30.677212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660362, 34.828766, 30.701109>,  <31.762241, 34.444016, 30.740938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660362, 34.828766, 30.701109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205310, 0.046833, 0.977576,
		0.944974, 0.269432, 0.185555,
		-0.254700, 0.961880, -0.099573,
		31.583952, 35.117329, 30.671236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105606, 34.734276, 31.313864>,  <31.762241, 34.444016, 30.740938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105606, 34.734276, 31.313864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802254, 34.975384, 31.214640>,  <31.620243, 35.120049, 31.155106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802254, 34.975384, 31.214640>,  <32.105606, 34.734276, 31.313864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802254, 34.975384, 31.214640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280457, 0.041784, 0.958957,
		0.588391, 0.796824, 0.137361,
		-0.758380, 0.602765, -0.248060,
		31.574739, 35.156212, 31.140223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949575, 35.049839, 31.893867>,  <32.105606, 34.734276, 31.313864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949575, 35.049839, 31.893867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622837, 35.138279, 31.680746>,  <31.426794, 35.191341, 31.552874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622837, 35.138279, 31.680746>,  <31.949575, 35.049839, 31.893867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622837, 35.138279, 31.680746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562577, -0.101076, 0.820543,
		0.127565, 0.970000, 0.206947,
		-0.816844, 0.221096, -0.532806,
		31.377783, 35.204609, 31.520905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527609, 35.532917, 32.377586>,  <31.949575, 35.049839, 31.893867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527609, 35.532917, 32.377586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283375, 35.362358, 32.110641>,  <31.136833, 35.260021, 31.950476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283375, 35.362358, 32.110641>,  <31.527609, 35.532917, 32.377586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283375, 35.362358, 32.110641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582887, -0.328499, 0.743190,
		-0.536121, 0.842777, -0.047964,
		-0.610588, -0.426397, -0.667359,
		31.100199, 35.234440, 31.910433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838203, 35.831291, 32.496403>,  <31.527609, 35.532917, 32.377586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838203, 35.831291, 32.496403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.824051, 35.465569, 32.335014>,  <30.815559, 35.246136, 32.238182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.824051, 35.465569, 32.335014>,  <30.838203, 35.831291, 32.496403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824051, 35.465569, 32.335014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608156, -0.300666, 0.734673,
		-0.793028, 0.271369, -0.545404,
		-0.035383, -0.914308, -0.403471,
		30.813437, 35.191277, 32.213974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033293, 36.563267, 32.546795>,  <30.838203, 35.831291, 32.496403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033293, 36.563267, 32.546795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270908, 36.342159, 32.780571>,  <31.413477, 36.209496, 32.920837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270908, 36.342159, 32.780571>,  <31.033293, 36.563267, 32.546795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270908, 36.342159, 32.780571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679832, 0.733363, 0.002620,
		-0.430053, 0.395762, 0.811435,
		0.594039, -0.552767, 0.584437,
		31.449120, 36.176331, 32.955902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200022, 36.944866, 33.205608>,  <31.033293, 36.563267, 32.546795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200022, 36.944866, 33.205608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465405, 36.692753, 33.044327>,  <31.624634, 36.541485, 32.947559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465405, 36.692753, 33.044327>,  <31.200022, 36.944866, 33.205608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465405, 36.692753, 33.044327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635806, 0.758998, -0.140259,
		0.394432, -0.163302, 0.904299,
		0.663457, -0.630281, -0.403201,
		31.664442, 36.503670, 32.923367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794235, 37.178806, 33.540489>,  <31.200022, 36.944866, 33.205608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794235, 37.178806, 33.540489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914587, 36.977894, 33.216221>,  <31.986797, 36.857346, 33.021660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914587, 36.977894, 33.216221>,  <31.794235, 37.178806, 33.540489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914587, 36.977894, 33.216221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734529, 0.664206, -0.138915,
		0.608226, -0.553663, 0.568787,
		0.300879, -0.502282, -0.810669,
		32.004852, 36.827209, 32.973019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623127, 37.153118, 33.552799>,  <31.794235, 37.178806, 33.540489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623127, 37.153118, 33.552799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512581, 37.103882, 33.171543>,  <32.446251, 37.074341, 32.942791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512581, 37.103882, 33.171543>,  <32.623127, 37.153118, 33.552799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512581, 37.103882, 33.171543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791155, 0.533912, -0.298348,
		0.545614, -0.836533, -0.050174,
		-0.276367, -0.123088, -0.953137,
		32.429672, 37.066956, 32.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256496, 37.049271, 33.115005>,  <32.623127, 37.153118, 33.552799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256496, 37.049271, 33.115005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995285, 37.154373, 32.830887>,  <32.838558, 37.217434, 32.660416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995285, 37.154373, 32.830887>,  <33.256496, 37.049271, 33.115005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995285, 37.154373, 32.830887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680634, 0.614902, -0.398289,
		0.332109, -0.743543, -0.580386,
		-0.653025, 0.262755, -0.710294,
		32.799377, 37.233200, 32.617798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645538, 37.088398, 32.561546>,  <33.256496, 37.049271, 33.115005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645538, 37.088398, 32.561546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317719, 37.278187, 32.433033>,  <33.121029, 37.392059, 32.355927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317719, 37.278187, 32.433033>,  <33.645538, 37.088398, 32.561546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317719, 37.278187, 32.433033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568535, 0.603339, -0.559240,
		-0.071503, -0.640982, -0.764218,
		-0.819545, 0.474472, -0.321281,
		33.071854, 37.420528, 32.336647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625542, 37.110855, 31.785200>,  <33.645538, 37.088398, 32.561546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625542, 37.110855, 31.785200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404118, 37.409306, 31.933182>,  <33.271263, 37.588375, 32.021973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404118, 37.409306, 31.933182>,  <33.625542, 37.110855, 31.785200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404118, 37.409306, 31.933182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567374, 0.663056, -0.488306,
		-0.609641, -0.060401, -0.790373,
		-0.553556, 0.746129, 0.369957,
		33.238052, 37.633144, 32.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420017, 37.420593, 31.196907>,  <33.625542, 37.110855, 31.785200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420017, 37.420593, 31.196907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358963, 37.680943, 31.494381>,  <33.322330, 37.837151, 31.672865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358963, 37.680943, 31.494381>,  <33.420017, 37.420593, 31.196907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358963, 37.680943, 31.494381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468687, 0.710171, -0.525347,
		-0.870078, 0.268370, -0.413452,
		-0.152635, 0.650872, 0.743685,
		33.313171, 37.876205, 31.717487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106106, 37.974457, 30.887659>,  <33.420017, 37.420593, 31.196907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106106, 37.974457, 30.887659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265739, 38.105022, 31.230398>,  <33.361519, 38.183361, 31.436041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265739, 38.105022, 31.230398>,  <33.106106, 37.974457, 30.887659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265739, 38.105022, 31.230398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392355, 0.783819, -0.481337,
		-0.828729, 0.528281, 0.184737,
		0.399081, 0.326415, 0.856847,
		33.385464, 38.202946, 31.487452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042850, 38.709465, 30.859211>,  <33.106106, 37.974457, 30.887659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042850, 38.709465, 30.859211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322449, 38.673515, 31.142992>,  <33.490208, 38.651947, 31.313261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322449, 38.673515, 31.142992>,  <33.042850, 38.709465, 30.859211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322449, 38.673515, 31.142992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554469, 0.694636, -0.458305,
		-0.451624, 0.713725, 0.535380,
		0.698999, -0.089870, 0.709453,
		33.532150, 38.646553, 31.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221027, 39.341637, 30.960144>,  <33.042850, 38.709465, 30.859211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221027, 39.341637, 30.960144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531544, 39.146114, 31.119366>,  <33.717854, 39.028801, 31.214899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531544, 39.146114, 31.119366>,  <33.221027, 39.341637, 30.960144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531544, 39.146114, 31.119366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614289, 0.728333, -0.303612,
		-0.141507, 0.480210, 0.865664,
		0.776289, -0.488804, 0.398052,
		33.764431, 38.999474, 31.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534283, 39.888535, 31.436314>,  <33.221027, 39.341637, 30.960144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534283, 39.888535, 31.436314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780785, 39.595337, 31.321110>,  <33.928688, 39.419418, 31.251987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780785, 39.595337, 31.321110>,  <33.534283, 39.888535, 31.436314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780785, 39.595337, 31.321110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696531, 0.677947, -0.235016,
		0.367518, -0.055775, 0.928342,
		0.616259, -0.732992, -0.288007,
		33.965664, 39.375439, 31.234707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065166, 40.163643, 31.539989>,  <33.534283, 39.888535, 31.436314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065166, 40.163643, 31.539989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214439, 39.862030, 31.323780>,  <34.304005, 39.681061, 31.194054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214439, 39.862030, 31.323780>,  <34.065166, 40.163643, 31.539989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214439, 39.862030, 31.323780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656867, 0.626183, -0.420024,
		0.655180, -0.198307, 0.728981,
		0.373182, -0.754035, -0.540524,
		34.326393, 39.635818, 31.161623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697269, 40.091492, 31.720327>,  <34.065166, 40.163643, 31.539989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697269, 40.091492, 31.720327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677589, 39.925503, 31.356928>,  <34.665779, 39.825909, 31.138887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677589, 39.925503, 31.356928>,  <34.697269, 40.091492, 31.720327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677589, 39.925503, 31.356928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728754, 0.607101, -0.316775,
		0.683005, -0.677660, 0.272544,
		-0.049204, -0.414977, -0.908501,
		34.662827, 39.801010, 31.084377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417202, 40.091793, 31.468853>,  <34.697269, 40.091492, 31.720327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417202, 40.091793, 31.468853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215401, 40.002502, 31.135231>,  <35.094318, 39.948929, 30.935059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215401, 40.002502, 31.135231>,  <35.417202, 40.091793, 31.468853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215401, 40.002502, 31.135231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714098, 0.435113, -0.548399,
		0.485325, -0.872265, -0.060109,
		-0.504503, -0.223228, -0.834054,
		35.064049, 39.935535, 30.885015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883030, 39.763870, 31.039480>,  <35.417202, 40.091793, 31.468853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883030, 39.763870, 31.039480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589931, 39.924290, 30.819574>,  <35.414074, 40.020542, 30.687630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589931, 39.924290, 30.819574>,  <35.883030, 39.763870, 31.039480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589931, 39.924290, 30.819574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679659, 0.471498, -0.561920,
		0.033857, -0.785398, -0.618064,
		-0.732747, 0.401047, -0.549767,
		35.370106, 40.044605, 30.654644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024052, 39.596031, 30.364855>,  <35.883030, 39.763870, 31.039480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024052, 39.596031, 30.364855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768436, 39.902210, 30.334579>,  <35.615067, 40.085918, 30.316414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768436, 39.902210, 30.334579>,  <36.024052, 39.596031, 30.364855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768436, 39.902210, 30.334579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654241, 0.489161, -0.576794,
		-0.404478, -0.418112, -0.813376,
		-0.639036, 0.765444, -0.075691,
		35.576725, 40.131844, 30.311872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135273, 39.742470, 29.705143>,  <36.024052, 39.596031, 30.364855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135273, 39.742470, 29.705143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948898, 40.058002, 29.865463>,  <35.837074, 40.247322, 29.961655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948898, 40.058002, 29.865463>,  <36.135273, 39.742470, 29.705143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948898, 40.058002, 29.865463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650384, 0.612458, -0.449329,
		-0.599920, 0.051315, -0.798413,
		-0.465937, 0.788836, 0.400800,
		35.809116, 40.294655, 29.985703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181725, 40.158279, 29.175722>,  <36.135273, 39.742470, 29.705143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181725, 40.158279, 29.175722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063972, 40.401489, 29.470652>,  <35.993320, 40.547417, 29.647610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063972, 40.401489, 29.470652>,  <36.181725, 40.158279, 29.175722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063972, 40.401489, 29.470652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538181, 0.743017, -0.397852,
		-0.789748, 0.279694, -0.545957,
		-0.294379, 0.608027, 0.737323,
		35.975658, 40.583897, 29.691849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908901, 40.788494, 28.802118>,  <36.181725, 40.158279, 29.175722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908901, 40.788494, 28.802118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057106, 40.832375, 29.171049>,  <36.146030, 40.858704, 29.392406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057106, 40.832375, 29.171049>,  <35.908901, 40.788494, 28.802118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057106, 40.832375, 29.171049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625533, 0.704574, -0.335087,
		-0.686606, 0.701100, 0.192435,
		0.370514, 0.109698, 0.922326,
		36.168259, 40.865284, 29.447746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016071, 41.494823, 28.817959>,  <35.908901, 40.788494, 28.802118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016071, 41.494823, 28.817959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252838, 41.363136, 29.112238>,  <36.394897, 41.284126, 29.288805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252838, 41.363136, 29.112238>,  <36.016071, 41.494823, 28.817959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252838, 41.363136, 29.112238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771689, 0.494965, -0.399381,
		-0.232663, 0.804131, 0.547030,
		0.591916, -0.329216, 0.735699,
		36.430412, 41.264370, 29.332947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368217, 42.070568, 29.147285>,  <36.016071, 41.494823, 28.817959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368217, 42.070568, 29.147285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605675, 41.760670, 29.234331>,  <36.748150, 41.574730, 29.286558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605675, 41.760670, 29.234331>,  <36.368217, 42.070568, 29.147285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605675, 41.760670, 29.234331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804708, 0.573390, -0.153847,
		-0.005587, 0.266447, 0.963833,
		0.593644, -0.774745, 0.217615,
		36.783768, 41.528248, 29.299616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881050, 42.464466, 29.524321>,  <36.368217, 42.070568, 29.147285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881050, 42.464466, 29.524321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018215, 42.107258, 29.407759>,  <37.100513, 41.892933, 29.337822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018215, 42.107258, 29.407759>,  <36.881050, 42.464466, 29.524321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018215, 42.107258, 29.407759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932595, 0.360829, -0.008329,
		0.112585, -0.268905, 0.956564,
		0.342916, -0.893025, -0.291403,
		37.121090, 41.839352, 29.320337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487904, 42.334686, 29.963026>,  <36.881050, 42.464466, 29.524321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487904, 42.334686, 29.963026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530445, 42.123569, 29.625950>,  <37.555969, 41.996899, 29.423704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530445, 42.123569, 29.625950>,  <37.487904, 42.334686, 29.963026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530445, 42.123569, 29.625950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919659, 0.374430, -0.118449,
		0.378045, -0.762388, 0.525211,
		0.106350, -0.527794, -0.842688,
		37.562351, 41.965233, 29.373144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206551, 42.430717, 29.899021>,  <37.487904, 42.334686, 29.963026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206551, 42.430717, 29.899021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090107, 42.246510, 29.563599>,  <38.020241, 42.135983, 29.362345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090107, 42.246510, 29.563599>,  <38.206551, 42.430717, 29.899021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090107, 42.246510, 29.563599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760717, 0.420098, -0.494800,
		0.580143, -0.781943, 0.228034,
		-0.291109, -0.460524, -0.838554,
		38.002773, 42.108353, 29.312033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838387, 42.171093, 29.580374>,  <38.206551, 42.430717, 29.899021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838387, 42.171093, 29.580374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556431, 42.221992, 29.301250>,  <38.387257, 42.252533, 29.133776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556431, 42.221992, 29.301250>,  <38.838387, 42.171093, 29.580374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556431, 42.221992, 29.301250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616508, 0.596421, -0.514004,
		0.350780, -0.792521, -0.498863,
		-0.704891, 0.127251, -0.697808,
		38.344963, 42.260166, 29.091908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185059, 42.049690, 28.920250>,  <38.838387, 42.171093, 29.580374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185059, 42.049690, 28.920250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845596, 42.248093, 28.846754>,  <38.641918, 42.367134, 28.802656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845596, 42.248093, 28.846754>,  <39.185059, 42.049690, 28.920250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845596, 42.248093, 28.846754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482528, 0.583669, -0.653067,
		-0.216682, -0.642889, -0.734672,
		-0.848655, 0.496008, -0.183741,
		38.591000, 42.396896, 28.791632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371899, 41.633869, 28.250536>,  <39.185059, 42.049690, 28.920250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371899, 41.633869, 28.250536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736752, 41.500843, 28.346375>,  <39.955666, 41.421028, 28.403877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736752, 41.500843, 28.346375>,  <39.371899, 41.633869, 28.250536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736752, 41.500843, 28.346375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408064, -0.791847, 0.454381,
		0.038612, -0.512229, -0.857981,
		0.912136, -0.332566, 0.239597,
		40.010391, 41.401073, 28.418253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343960, 40.902882, 28.090750>,  <39.371899, 41.633869, 28.250536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343960, 40.902882, 28.090750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641537, 40.964718, 28.350798>,  <39.820084, 41.001820, 28.506826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641537, 40.964718, 28.350798>,  <39.343960, 40.902882, 28.090750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641537, 40.964718, 28.350798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344343, -0.745086, 0.571204,
		0.572697, -0.648806, -0.501068,
		0.743939, 0.154587, 0.650121,
		39.864719, 41.011093, 28.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656364, 40.192261, 28.199751>,  <39.343960, 40.902882, 28.090750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656364, 40.192261, 28.199751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789097, 40.393768, 28.518774>,  <39.868736, 40.514675, 28.710188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789097, 40.393768, 28.518774>,  <39.656364, 40.192261, 28.199751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789097, 40.393768, 28.518774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152768, -0.805606, 0.572417,
		0.930885, -0.311789, -0.190368,
		0.331835, 0.503772, 0.797558,
		39.888649, 40.544899, 28.758041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974594, 39.710194, 28.577652>,  <39.656364, 40.192261, 28.199751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974594, 39.710194, 28.577652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935650, 39.995960, 28.854816>,  <39.912285, 40.167419, 29.021116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935650, 39.995960, 28.854816>,  <39.974594, 39.710194, 28.577652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935650, 39.995960, 28.854816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218201, -0.694603, 0.685504,
		0.971035, -0.084455, 0.223511,
		-0.097358, 0.714419, 0.692912,
		39.906445, 40.210285, 29.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336735, 39.431454, 29.082838>,  <39.974594, 39.710194, 28.577652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336735, 39.431454, 29.082838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115696, 39.705696, 29.272396>,  <39.983070, 39.870243, 29.386131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115696, 39.705696, 29.272396>,  <40.336735, 39.431454, 29.082838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115696, 39.705696, 29.272396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271870, -0.685780, 0.675124,
		0.787858, 0.244235, 0.565358,
		-0.552600, 0.685606, 0.473897,
		39.949917, 39.911377, 29.414566>
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
