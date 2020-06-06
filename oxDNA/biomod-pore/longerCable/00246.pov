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
	<24.194584, 35.422291, 35.098839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310434, 35.052582, 34.999374>,  <24.379944, 34.830757, 34.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310434, 35.052582, 34.999374>,  <24.194584, 35.422291, 35.098839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310434, 35.052582, 34.999374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267010, -0.171458, 0.948319,
		-0.919143, -0.341051, 0.197132,
		0.289625, -0.924276, -0.248658,
		24.397322, 34.775299, 34.924778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.978214, 34.932957, 35.554134>,  <24.194584, 35.422291, 35.098839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.978214, 34.932957, 35.554134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306368, 34.770538, 35.393089>,  <24.503260, 34.673088, 35.296463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306368, 34.770538, 35.393089>,  <23.978214, 34.932957, 35.554134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306368, 34.770538, 35.393089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313330, -0.269763, 0.910523,
		-0.478324, -0.873129, -0.094083,
		0.820384, -0.406046, -0.402612,
		24.552483, 34.648724, 35.272305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.076128, 34.144604, 35.689560>,  <23.978214, 34.932957, 35.554134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.076128, 34.144604, 35.689560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409710, 34.360897, 35.645515>,  <24.609859, 34.490673, 35.619087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409710, 34.360897, 35.645515>,  <24.076128, 34.144604, 35.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409710, 34.360897, 35.645515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270623, -0.226851, 0.935575,
		0.480919, -0.810027, -0.335519,
		0.833955, 0.540735, -0.110115,
		24.659897, 34.523117, 35.612480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699873, 33.755966, 35.988838>,  <24.076128, 34.144604, 35.689560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699873, 33.755966, 35.988838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848423, 34.126446, 35.962795>,  <24.937553, 34.348732, 35.947170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848423, 34.126446, 35.962795>,  <24.699873, 33.755966, 35.988838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848423, 34.126446, 35.962795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484680, -0.133576, 0.864432,
		0.791938, -0.352585, -0.498516,
		0.371375, 0.926197, -0.065107,
		24.959835, 34.404305, 35.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402649, 33.717476, 36.105968>,  <24.699873, 33.755966, 35.988838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402649, 33.717476, 36.105968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267334, 34.080544, 36.205326>,  <25.186146, 34.298386, 36.264942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267334, 34.080544, 36.205326>,  <25.402649, 33.717476, 36.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267334, 34.080544, 36.205326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423332, -0.088956, 0.901597,
		0.840447, 0.410151, -0.354153,
		-0.338287, 0.907669, 0.248393,
		25.165848, 34.352844, 36.279842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923040, 34.074879, 36.420120>,  <25.402649, 33.717476, 36.105968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923040, 34.074879, 36.420120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569378, 34.211166, 36.547981>,  <25.357180, 34.292938, 36.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569378, 34.211166, 36.547981>,  <25.923040, 34.074879, 36.420120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569378, 34.211166, 36.547981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261982, -0.204918, 0.943066,
		0.386824, 0.917561, 0.091917,
		-0.884157, 0.340720, 0.319652,
		25.304131, 34.313381, 36.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957333, 34.306713, 37.095856>,  <25.923040, 34.074879, 36.420120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957333, 34.306713, 37.095856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562536, 34.251621, 37.062675>,  <25.325659, 34.218567, 37.042767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562536, 34.251621, 37.062675>,  <25.957333, 34.306713, 37.095856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562536, 34.251621, 37.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046993, -0.246257, 0.968065,
		-0.153757, 0.959369, 0.236581,
		-0.986991, -0.137729, -0.082947,
		25.266439, 34.210304, 37.037792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646906, 34.652096, 37.704433>,  <25.957333, 34.306713, 37.095856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646906, 34.652096, 37.704433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362801, 34.400238, 37.578533>,  <25.192337, 34.249123, 37.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362801, 34.400238, 37.578533>,  <25.646906, 34.652096, 37.704433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362801, 34.400238, 37.578533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084209, -0.367926, 0.926034,
		-0.698881, 0.684233, 0.208302,
		-0.710263, -0.629647, -0.314755,
		25.149721, 34.211346, 37.484108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094023, 34.763969, 38.088428>,  <25.646906, 34.652096, 37.704433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094023, 34.763969, 38.088428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043468, 34.388977, 37.958714>,  <25.013136, 34.163982, 37.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043468, 34.388977, 37.958714>,  <25.094023, 34.763969, 38.088428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043468, 34.388977, 37.958714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327047, -0.269254, 0.905838,
		-0.936519, 0.220541, -0.272570,
		-0.126384, -0.937478, -0.324289,
		25.005554, 34.107735, 37.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417686, 34.633438, 38.264992>,  <25.094023, 34.763969, 38.088428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417686, 34.633438, 38.264992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569513, 34.266167, 38.219608>,  <24.660610, 34.045803, 38.192379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569513, 34.266167, 38.219608>,  <24.417686, 34.633438, 38.264992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569513, 34.266167, 38.219608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298611, -0.237661, 0.924310,
		-0.875648, -0.316958, -0.364387,
		0.379568, -0.918180, -0.113461,
		24.683384, 33.990711, 38.185570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.936087, 34.244598, 38.479446>,  <24.417686, 34.633438, 38.264992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.936087, 34.244598, 38.479446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263487, 34.014942, 38.487675>,  <24.459927, 33.877148, 38.492611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263487, 34.014942, 38.487675>,  <23.936087, 34.244598, 38.479446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263487, 34.014942, 38.487675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269628, -0.352279, 0.896214,
		-0.507305, -0.739097, -0.443144,
		0.818500, -0.574139, 0.020569,
		24.509037, 33.842701, 38.493847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.845375, 33.469509, 38.638912>,  <23.936087, 34.244598, 38.479446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.845375, 33.469509, 38.638912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207325, 33.557705, 38.784561>,  <24.424496, 33.610622, 38.871952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207325, 33.557705, 38.784561>,  <23.845375, 33.469509, 38.638912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207325, 33.557705, 38.784561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305168, -0.260349, 0.916019,
		0.296768, -0.940002, -0.168298,
		0.904876, 0.220486, 0.364122,
		24.478788, 33.623852, 38.893799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146809, 32.832253, 38.939011>,  <23.845375, 33.469509, 38.638912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146809, 32.832253, 38.939011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235207, 33.193180, 39.087055>,  <24.288244, 33.409737, 39.175880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235207, 33.193180, 39.087055>,  <24.146809, 32.832253, 38.939011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235207, 33.193180, 39.087055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504028, -0.219220, 0.835403,
		0.834936, -0.371166, 0.406348,
		0.220993, 0.902319, 0.370112,
		24.301504, 33.463875, 39.198090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494627, 32.655277, 39.546852>,  <24.146809, 32.832253, 38.939011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494627, 32.655277, 39.546852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311720, 33.009426, 39.580372>,  <24.201977, 33.221916, 39.600483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311720, 33.009426, 39.580372>,  <24.494627, 32.655277, 39.546852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311720, 33.009426, 39.580372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485954, -0.327664, 0.810238,
		0.744819, 0.329774, 0.580080,
		-0.457267, 0.885373, 0.083795,
		24.174540, 33.275040, 39.605511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971874, 33.265049, 39.551708>,  <24.494627, 32.655277, 39.546852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971874, 33.265049, 39.551708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915497, 33.617725, 39.371593>,  <24.881670, 33.829330, 39.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915497, 33.617725, 39.371593>,  <24.971874, 33.265049, 39.551708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915497, 33.617725, 39.371593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313572, -0.391652, -0.865032,
		-0.939046, -0.263118, -0.221272,
		-0.140944, 0.881690, -0.450286,
		24.873213, 33.882233, 39.236507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087555, 32.769794, 39.025257>,  <24.971874, 33.265049, 39.551708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087555, 32.769794, 39.025257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998945, 33.154812, 38.962727>,  <24.945780, 33.385822, 38.925209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998945, 33.154812, 38.962727>,  <25.087555, 32.769794, 39.025257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998945, 33.154812, 38.962727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073518, -0.176335, -0.981581,
		-0.972379, -0.205953, 0.109828,
		-0.221526, 0.962543, -0.156323,
		24.932487, 33.443573, 38.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667669, 33.090221, 38.508495>,  <25.087555, 32.769794, 39.025257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667669, 33.090221, 38.508495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326073, 33.298122, 38.499054>,  <25.121115, 33.422863, 38.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326073, 33.298122, 38.499054>,  <25.667669, 33.090221, 38.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326073, 33.298122, 38.499054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183267, 0.258045, -0.948592,
		-0.486939, -0.814416, -0.315621,
		-0.853993, 0.519749, -0.023604,
		25.069876, 33.454048, 38.491974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288931, 32.836487, 37.953091>,  <25.667669, 33.090221, 38.508495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288931, 32.836487, 37.953091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124537, 33.190910, 38.038876>,  <25.025900, 33.403564, 38.090347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124537, 33.190910, 38.038876>,  <25.288931, 32.836487, 37.953091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124537, 33.190910, 38.038876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010035, 0.230838, -0.972941,
		-0.911586, -0.402018, -0.085979,
		-0.410987, 0.886056, 0.214463,
		25.001240, 33.456726, 38.103214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917723, 33.001240, 37.286430>,  <25.288931, 32.836487, 37.953091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917723, 33.001240, 37.286430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914419, 33.350567, 37.481262>,  <24.912437, 33.560162, 37.598164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914419, 33.350567, 37.481262>,  <24.917723, 33.001240, 37.286430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914419, 33.350567, 37.481262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029111, 0.486682, -0.873094,
		-0.999542, -0.021391, 0.021403,
		-0.008260, 0.873317, 0.487082,
		24.911942, 33.612560, 37.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349508, 33.237194, 37.050282>,  <24.917723, 33.001240, 37.286430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349508, 33.237194, 37.050282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582197, 33.537205, 37.176178>,  <24.721811, 33.717209, 37.251717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582197, 33.537205, 37.176178>,  <24.349508, 33.237194, 37.050282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582197, 33.537205, 37.176178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057945, 0.424181, -0.903721,
		-0.811320, 0.507478, 0.290217,
		0.581723, 0.750024, 0.314741,
		24.756714, 33.762211, 37.270599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947969, 33.913902, 37.029484>,  <24.349508, 33.237194, 37.050282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947969, 33.913902, 37.029484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342415, 33.969807, 36.993614>,  <24.579082, 34.003349, 36.972092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342415, 33.969807, 36.993614>,  <23.947969, 33.913902, 37.029484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342415, 33.969807, 36.993614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148165, 0.496675, -0.855197,
		-0.074985, 0.856610, 0.510487,
		0.986116, 0.139763, -0.089677,
		24.638250, 34.011734, 36.966713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146145, 34.656166, 36.882938>,  <23.947969, 33.913902, 37.029484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146145, 34.656166, 36.882938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427551, 34.420074, 36.724602>,  <24.596395, 34.278419, 36.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427551, 34.420074, 36.724602>,  <24.146145, 34.656166, 36.882938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427551, 34.420074, 36.724602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364917, 0.177946, -0.913877,
		0.609837, 0.787377, -0.090197,
		0.703516, -0.590231, -0.395845,
		24.638605, 34.243004, 36.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456806, 35.044441, 36.239109>,  <24.146145, 34.656166, 36.882938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456806, 35.044441, 36.239109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489531, 34.646397, 36.216961>,  <24.509165, 34.407570, 36.203674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489531, 34.646397, 36.216961>,  <24.456806, 35.044441, 36.239109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489531, 34.646397, 36.216961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337937, 0.024564, -0.940848,
		0.937606, 0.095682, -0.334274,
		0.081811, -0.995109, -0.055366,
		24.514074, 34.347862, 36.200352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572683, 35.243065, 37.029854>,  <24.456806, 35.044441, 36.239109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572683, 35.243065, 37.029854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888798, 35.025360, 36.917267>,  <25.078466, 34.894737, 36.849716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888798, 35.025360, 36.917267>,  <24.572683, 35.243065, 37.029854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888798, 35.025360, 36.917267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207609, 0.194339, -0.958713,
		0.576492, 0.816094, 0.040590,
		0.790288, -0.544264, -0.281464,
		25.125885, 34.862080, 36.832829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919409, 35.575699, 36.540390>,  <24.572683, 35.243065, 37.029854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919409, 35.575699, 36.540390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987797, 35.187435, 36.472752>,  <25.028830, 34.954475, 36.432167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987797, 35.187435, 36.472752>,  <24.919409, 35.575699, 36.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987797, 35.187435, 36.472752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232415, 0.127047, -0.964283,
		0.957472, 0.204162, -0.203875,
		0.170968, -0.970658, -0.169095,
		25.039087, 34.896236, 36.422024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455616, 35.571953, 35.947178>,  <24.919409, 35.575699, 36.540390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455616, 35.571953, 35.947178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280718, 35.212254, 35.952488>,  <25.175779, 34.996433, 35.955673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280718, 35.212254, 35.952488>,  <25.455616, 35.571953, 35.947178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280718, 35.212254, 35.952488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166390, 0.066382, -0.983823,
		0.883816, -0.432382, -0.178650,
		-0.437246, -0.899244, 0.013275,
		25.149544, 34.942482, 35.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754364, 35.238972, 35.376308>,  <25.455616, 35.571953, 35.947178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754364, 35.238972, 35.376308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410690, 35.048004, 35.449924>,  <25.204485, 34.933422, 35.494095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410690, 35.048004, 35.449924>,  <25.754364, 35.238972, 35.376308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410690, 35.048004, 35.449924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240671, 0.059679, -0.968770,
		0.451528, -0.876645, -0.166177,
		-0.859185, -0.477421, 0.184036,
		25.152935, 34.904778, 35.505135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528059, 35.342480, 35.222599>,  <25.754364, 35.238972, 35.376308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528059, 35.342480, 35.222599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700933, 35.697163, 35.288284>,  <26.804659, 35.909973, 35.327694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700933, 35.697163, 35.288284>,  <26.528059, 35.342480, 35.222599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700933, 35.697163, 35.288284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801177, -0.293967, -0.521247,
		-0.413920, 0.356839, -0.837458,
		0.432187, 0.886707, 0.164212,
		26.830589, 35.963173, 35.337547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801233, 35.685860, 34.529659>,  <26.528059, 35.342480, 35.222599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801233, 35.685860, 34.529659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998322, 35.808037, 34.855587>,  <27.116575, 35.881344, 35.051144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998322, 35.808037, 34.855587>,  <26.801233, 35.685860, 34.529659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998322, 35.808037, 34.855587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867644, -0.243968, -0.433213,
		0.066470, 0.920428, -0.385220,
		0.492723, 0.305438, 0.814820,
		27.146139, 35.899670, 35.100033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349051, 36.232540, 34.371140>,  <26.801233, 35.685860, 34.529659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349051, 36.232540, 34.371140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433241, 36.012112, 34.694130>,  <27.483755, 35.879856, 34.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433241, 36.012112, 34.694130>,  <27.349051, 36.232540, 34.371140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433241, 36.012112, 34.694130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724659, -0.466464, -0.507228,
		0.656178, 0.691906, 0.301158,
		0.210475, -0.551069, 0.807479,
		27.496384, 35.846790, 34.936375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012867, 36.282227, 34.789371>,  <27.349051, 36.232540, 34.371140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012867, 36.282227, 34.789371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907093, 35.896862, 34.806858>,  <27.843630, 35.665642, 34.817352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907093, 35.896862, 34.806858>,  <28.012867, 36.282227, 34.789371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907093, 35.896862, 34.806858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789807, -0.242353, -0.563445,
		0.553426, -0.114463, 0.824996,
		-0.264433, -0.963412, 0.043721,
		27.827763, 35.607838, 34.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377531, 36.406841, 35.458542>,  <28.012867, 36.282227, 34.789371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377531, 36.406841, 35.458542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690845, 36.586651, 35.630306>,  <28.878834, 36.694534, 35.733364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690845, 36.586651, 35.630306>,  <28.377531, 36.406841, 35.458542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690845, 36.586651, 35.630306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337521, 0.887586, -0.313482,
		-0.522055, 0.100612, 0.846957,
		0.783287, 0.449520, 0.429410,
		28.925831, 36.721508, 35.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165955, 36.979820, 35.935848>,  <28.377531, 36.406841, 35.458542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165955, 36.979820, 35.935848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543770, 37.044617, 35.821583>,  <28.770458, 37.083496, 35.753021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543770, 37.044617, 35.821583>,  <28.165955, 36.979820, 35.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543770, 37.044617, 35.821583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269563, 0.879286, -0.392674,
		0.187572, 0.447900, 0.874186,
		0.944538, 0.161993, -0.285667,
		28.827131, 37.093216, 35.735882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305901, 37.627220, 36.034634>,  <28.165955, 36.979820, 35.935848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305901, 37.627220, 36.034634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578615, 37.521626, 35.761730>,  <28.742245, 37.458271, 35.597988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578615, 37.521626, 35.761730>,  <28.305901, 37.627220, 36.034634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578615, 37.521626, 35.761730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164005, 0.853727, -0.494219,
		0.712930, 0.448846, 0.538764,
		0.681786, -0.263984, -0.682261,
		28.783152, 37.442429, 35.557053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682858, 38.174431, 35.834404>,  <28.305901, 37.627220, 36.034634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682858, 38.174431, 35.834404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740694, 37.930717, 35.522541>,  <28.775396, 37.784489, 35.335423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740694, 37.930717, 35.522541>,  <28.682858, 38.174431, 35.834404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740694, 37.930717, 35.522541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030530, 0.784814, -0.618979,
		0.989020, 0.113303, 0.094877,
		0.144593, -0.609286, -0.779656,
		28.784071, 37.747932, 35.288643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934187, 38.268017, 35.578400>,  <28.682858, 38.174431, 35.834404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934187, 38.268017, 35.578400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099606, 38.582787, 35.761589>,  <28.198856, 38.771648, 35.871502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099606, 38.582787, 35.761589>,  <27.934187, 38.268017, 35.578400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099606, 38.582787, 35.761589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544579, 0.189322, -0.817062,
		-0.729667, 0.587294, -0.350247,
		0.413546, 0.786920, 0.457970,
		28.223669, 38.818863, 35.898979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805086, 38.937351, 35.255829>,  <27.934187, 38.268017, 35.578400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805086, 38.937351, 35.255829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166670, 38.921089, 35.426102>,  <28.383619, 38.911331, 35.528267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166670, 38.921089, 35.426102>,  <27.805086, 38.937351, 35.255829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166670, 38.921089, 35.426102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426330, 0.162951, -0.889770,
		-0.033189, 0.985796, 0.164635,
		0.903959, -0.040658, 0.425682,
		28.437857, 38.908890, 35.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126400, 39.480186, 35.043842>,  <27.805086, 38.937351, 35.255829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126400, 39.480186, 35.043842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419556, 39.239376, 35.170605>,  <28.595449, 39.094891, 35.246662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419556, 39.239376, 35.170605>,  <28.126400, 39.480186, 35.043842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419556, 39.239376, 35.170605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426378, 0.043453, -0.903501,
		0.530163, 0.797291, 0.288539,
		0.732890, -0.602030, 0.316910,
		28.639423, 39.058765, 35.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780531, 39.710655, 34.780842>,  <28.126400, 39.480186, 35.043842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780531, 39.710655, 34.780842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884809, 39.336308, 34.875660>,  <28.947376, 39.111698, 34.932552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884809, 39.336308, 34.875660>,  <28.780531, 39.710655, 34.780842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884809, 39.336308, 34.875660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496110, -0.080774, -0.864494,
		0.828199, 0.342971, 0.443236,
		0.260695, -0.935867, 0.237049,
		28.963018, 39.055546, 34.946774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516651, 39.552246, 34.822502>,  <28.780531, 39.710655, 34.780842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516651, 39.552246, 34.822502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320936, 39.232372, 34.683308>,  <29.203506, 39.040447, 34.599792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320936, 39.232372, 34.683308>,  <29.516651, 39.552246, 34.822502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320936, 39.232372, 34.683308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442700, 0.116043, -0.889129,
		0.751408, -0.589094, 0.297245,
		-0.489287, -0.799689, -0.347987,
		29.174150, 38.992466, 34.578911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009037, 39.005802, 34.622463>,  <29.516651, 39.552246, 34.822502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009037, 39.005802, 34.622463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682436, 38.973431, 34.393806>,  <29.486475, 38.954006, 34.256611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682436, 38.973431, 34.393806>,  <30.009037, 39.005802, 34.622463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682436, 38.973431, 34.393806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572413, 0.015644, -0.819816,
		0.075289, -0.996597, 0.033551,
		-0.816502, -0.080928, -0.571643,
		29.437485, 38.949150, 34.222313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030079, 38.422169, 34.273407>,  <30.009037, 39.005802, 34.622463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030079, 38.422169, 34.273407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853821, 38.738045, 34.102657>,  <29.748066, 38.927570, 34.000210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853821, 38.738045, 34.102657>,  <30.030079, 38.422169, 34.273407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853821, 38.738045, 34.102657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646272, -0.050963, -0.761403,
		-0.623030, -0.611381, -0.487900,
		-0.440643, 0.789693, -0.426870,
		29.721628, 38.974953, 33.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036341, 38.311390, 33.551071>,  <30.030079, 38.422169, 34.273407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036341, 38.311390, 33.551071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973576, 38.703037, 33.602776>,  <29.935917, 38.938026, 33.633801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973576, 38.703037, 33.602776>,  <30.036341, 38.311390, 33.551071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973576, 38.703037, 33.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416814, 0.184312, -0.890109,
		-0.895345, -0.085792, -0.437031,
		-0.156915, 0.979116, 0.129263,
		29.926500, 38.996773, 33.641556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244507, 37.907158, 32.894329>,  <30.036341, 38.311390, 33.551071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244507, 37.907158, 32.894329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374805, 37.900875, 33.272461>,  <30.452984, 37.897106, 33.499340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374805, 37.900875, 33.272461>,  <30.244507, 37.907158, 32.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374805, 37.900875, 33.272461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942649, -0.082405, 0.323455,
		0.072819, -0.996475, -0.041648,
		0.325746, -0.015706, 0.945327,
		30.472530, 37.896164, 33.556061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849216, 37.301983, 33.248177>,  <30.244507, 37.907158, 32.894329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849216, 37.301983, 33.248177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988445, 37.570950, 33.509464>,  <30.071983, 37.732330, 33.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988445, 37.570950, 33.509464>,  <29.849216, 37.301983, 33.248177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988445, 37.570950, 33.509464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872484, -0.022552, 0.488122,
		0.342952, -0.739830, 0.578822,
		0.348074, 0.672416, 0.653224,
		30.092867, 37.772675, 33.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088314, 37.127922, 34.026199>,  <29.849216, 37.301983, 33.248177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088314, 37.127922, 34.026199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246027, 37.494957, 34.005932>,  <30.340654, 37.715179, 33.993771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246027, 37.494957, 34.005932>,  <30.088314, 37.127922, 34.026199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246027, 37.494957, 34.005932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262221, 0.059494, -0.963172,
		-0.880784, 0.393048, 0.264069,
		0.394283, 0.917591, -0.050665,
		30.364311, 37.770233, 33.990734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809895, 37.198265, 34.816086>,  <30.088314, 37.127922, 34.026199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809895, 37.198265, 34.816086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490788, 37.278187, 35.043644>,  <29.299324, 37.326141, 35.180180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490788, 37.278187, 35.043644>,  <29.809895, 37.198265, 34.816086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490788, 37.278187, 35.043644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422652, -0.487607, 0.763940,
		0.430038, 0.849892, 0.304549,
		-0.797767, 0.199805, 0.568899,
		29.251457, 37.338127, 35.214314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092339, 37.278984, 35.468983>,  <29.809895, 37.198265, 34.816086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092339, 37.278984, 35.468983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705019, 37.216682, 35.547096>,  <29.472628, 37.179302, 35.593964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705019, 37.216682, 35.547096>,  <30.092339, 37.278984, 35.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705019, 37.216682, 35.547096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248600, -0.677031, 0.692696,
		0.024322, 0.719285, 0.694289,
		-0.968301, -0.155753, 0.195281,
		29.414528, 37.169956, 35.605682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978516, 37.401241, 36.181004>,  <30.092339, 37.278984, 35.468983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978516, 37.401241, 36.181004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677019, 37.169727, 36.056496>,  <29.496122, 37.030819, 35.981792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677019, 37.169727, 36.056496>,  <29.978516, 37.401241, 36.181004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677019, 37.169727, 36.056496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278284, -0.710187, 0.646678,
		-0.595345, 0.400805, 0.696362,
		-0.753739, -0.578783, -0.311269,
		29.450897, 36.996094, 35.963116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203789, 36.698692, 36.309589>,  <29.978516, 37.401241, 36.181004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203789, 36.698692, 36.309589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585339, 36.676102, 36.427528>,  <30.814268, 36.662548, 36.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585339, 36.676102, 36.427528>,  <30.203789, 36.698692, 36.309589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585339, 36.676102, 36.427528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295171, 0.002730, 0.955441,
		-0.054768, -0.998400, -0.014067,
		0.953874, -0.056480, 0.294848,
		30.871500, 36.659161, 36.515984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104027, 36.408226, 36.911118>,  <30.203789, 36.698692, 36.309589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104027, 36.408226, 36.911118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467577, 36.575035, 36.908649>,  <30.685707, 36.675121, 36.907169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467577, 36.575035, 36.908649>,  <30.104027, 36.408226, 36.911118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467577, 36.575035, 36.908649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010588, -0.008292, 0.999910,
		0.416932, -0.908859, -0.011952,
		0.908876, 0.417021, -0.006166,
		30.740240, 36.700142, 36.906799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664906, 36.178234, 37.389671>,  <30.104027, 36.408226, 36.911118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664906, 36.178234, 37.389671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769970, 36.557014, 37.315598>,  <30.833008, 36.784283, 37.271152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769970, 36.557014, 37.315598>,  <30.664906, 36.178234, 37.389671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769970, 36.557014, 37.315598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339918, 0.088806, 0.936253,
		0.903031, -0.308864, -0.298560,
		0.262661, 0.946951, -0.185183,
		30.848768, 36.841099, 37.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403053, 36.385326, 37.343452>,  <30.664906, 36.178234, 37.389671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403053, 36.385326, 37.343452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154875, 36.651070, 37.510151>,  <31.005968, 36.810516, 37.610168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154875, 36.651070, 37.510151>,  <31.403053, 36.385326, 37.343452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154875, 36.651070, 37.510151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381310, -0.208807, 0.900557,
		0.685309, 0.717657, -0.123773,
		-0.620446, 0.664356, 0.416747,
		30.968740, 36.850376, 37.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704285, 35.878151, 36.875446>,  <31.403053, 36.385326, 37.343452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704285, 35.878151, 36.875446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046974, 35.752914, 37.039398>,  <32.252586, 35.677773, 37.137768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046974, 35.752914, 37.039398>,  <31.704285, 35.878151, 36.875446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046974, 35.752914, 37.039398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477801, -0.182477, 0.859307,
		-0.194284, -0.932015, -0.305945,
		0.856715, -0.313131, 0.409865,
		32.303989, 35.658985, 37.162361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496140, 35.265800, 37.295189>,  <31.704285, 35.878151, 36.875446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496140, 35.265800, 37.295189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862658, 35.360390, 37.424484>,  <32.082569, 35.417141, 37.502064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862658, 35.360390, 37.424484>,  <31.496140, 35.265800, 37.295189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862658, 35.360390, 37.424484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314285, -0.075731, 0.946303,
		0.248254, -0.968683, 0.004928,
		0.916294, 0.236472, 0.323242,
		32.137547, 35.431332, 37.521458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709644, 34.698795, 37.751728>,  <31.496140, 35.265800, 37.295189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709644, 34.698795, 37.751728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929150, 35.020340, 37.843521>,  <32.060852, 35.213268, 37.898598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929150, 35.020340, 37.843521>,  <31.709644, 34.698795, 37.751728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929150, 35.020340, 37.843521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398741, 0.010419, 0.917004,
		0.734754, -0.594725, 0.326250,
		0.548764, 0.803861, 0.229486,
		32.093781, 35.261497, 37.912369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985691, 34.598824, 38.457722>,  <31.709644, 34.698795, 37.751728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985691, 34.598824, 38.457722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978201, 34.994041, 38.396523>,  <31.973707, 35.231174, 38.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978201, 34.994041, 38.396523>,  <31.985691, 34.598824, 38.457722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978201, 34.994041, 38.396523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430784, 0.130120, 0.893025,
		0.902261, 0.082632, 0.423199,
		-0.018726, 0.988049, -0.152999,
		31.972584, 35.290455, 38.350624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289486, 34.842579, 39.029598>,  <31.985691, 34.598824, 38.457722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289486, 34.842579, 39.029598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035805, 35.118423, 38.889755>,  <31.883596, 35.283928, 38.805851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035805, 35.118423, 38.889755>,  <32.289486, 34.842579, 39.029598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035805, 35.118423, 38.889755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372300, 0.123915, 0.919803,
		0.677625, 0.713502, 0.178154,
		-0.634205, 0.689609, -0.349605,
		31.845543, 35.325306, 38.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847685, 34.683090, 39.590595>,  <32.289486, 34.842579, 39.029598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847685, 34.683090, 39.590595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051361, 35.008053, 39.704243>,  <32.173565, 35.203030, 39.772430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051361, 35.008053, 39.704243>,  <31.847685, 34.683090, 39.590595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051361, 35.008053, 39.704243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490648, 0.545231, -0.679696,
		-0.707100, 0.206691, 0.676231,
		0.509189, 0.812405, 0.284120,
		32.204117, 35.251774, 39.789478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433062, 35.207596, 39.816799>,  <31.847685, 34.683090, 39.590595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433062, 35.207596, 39.816799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761921, 35.347466, 39.637112>,  <31.959236, 35.431389, 39.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761921, 35.347466, 39.637112>,  <31.433062, 35.207596, 39.816799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761921, 35.347466, 39.637112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566033, 0.418044, -0.710525,
		-0.060660, 0.838430, 0.541623,
		0.822148, 0.349677, -0.449221,
		32.008564, 35.452370, 39.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237955, 35.791462, 39.587391>,  <31.433062, 35.207596, 39.816799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237955, 35.791462, 39.587391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561136, 35.756317, 39.354324>,  <31.755045, 35.735229, 39.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561136, 35.756317, 39.354324>,  <31.237955, 35.791462, 39.587391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561136, 35.756317, 39.354324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470781, 0.498422, -0.727970,
		0.354374, 0.862470, 0.361336,
		0.807951, -0.087863, -0.582662,
		31.803522, 35.729958, 39.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576067, 36.403938, 39.281128>,  <31.237955, 35.791462, 39.587391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576067, 36.403938, 39.281128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598682, 36.094944, 39.028126>,  <31.612251, 35.909546, 38.876324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598682, 36.094944, 39.028126>,  <31.576067, 36.403938, 39.281128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598682, 36.094944, 39.028126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644076, 0.455847, -0.614304,
		0.762869, 0.442115, -0.471768,
		0.056538, -0.772488, -0.632507,
		31.615644, 35.863197, 38.838375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507902, 36.681107, 38.505634>,  <31.576067, 36.403938, 39.281128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507902, 36.681107, 38.505634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389521, 36.303562, 38.564335>,  <31.318493, 36.077034, 38.599556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389521, 36.303562, 38.564335>,  <31.507902, 36.681107, 38.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389521, 36.303562, 38.564335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784129, 0.152326, -0.601614,
		0.545486, -0.293124, -0.785190,
		-0.295952, -0.943862, 0.146755,
		31.300735, 36.020405, 38.608360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134735, 36.541901, 38.017094>,  <31.507902, 36.681107, 38.505634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134735, 36.541901, 38.017094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097633, 36.167194, 38.152073>,  <32.075371, 35.942371, 38.233059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097633, 36.167194, 38.152073>,  <32.134735, 36.541901, 38.017094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097633, 36.167194, 38.152073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621165, -0.319309, -0.715679,
		0.778172, 0.143227, 0.611502,
		-0.092753, -0.936764, 0.337445,
		32.069809, 35.886166, 38.253307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829876, 36.257763, 38.237385>,  <32.134735, 36.541901, 38.017094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829876, 36.257763, 38.237385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585022, 35.956310, 38.141609>,  <32.438110, 35.775436, 38.084145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585022, 35.956310, 38.141609>,  <32.829876, 36.257763, 38.237385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585022, 35.956310, 38.141609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587208, -0.230424, -0.775946,
		0.529606, -0.615582, 0.583589,
		-0.612131, -0.753634, -0.239440,
		32.401382, 35.730221, 38.069778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345379, 35.706196, 37.995529>,  <32.829876, 36.257763, 38.237385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345379, 35.706196, 37.995529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987179, 35.625126, 37.837036>,  <32.772259, 35.576485, 37.741940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987179, 35.625126, 37.837036>,  <33.345379, 35.706196, 37.995529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987179, 35.625126, 37.837036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434039, -0.200843, -0.878221,
		0.098412, -0.958429, 0.267824,
		-0.895503, -0.202673, -0.396230,
		32.718529, 35.564323, 37.718166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277439, 35.018551, 37.606358>,  <33.345379, 35.706196, 37.995529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277439, 35.018551, 37.606358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016659, 35.279854, 37.452366>,  <32.860191, 35.436638, 37.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016659, 35.279854, 37.452366>,  <33.277439, 35.018551, 37.606358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016659, 35.279854, 37.452366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373220, -0.165501, -0.912862,
		-0.660052, -0.738823, -0.135911,
		-0.651950, 0.653261, -0.384982,
		32.821075, 35.475834, 37.336872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952667, 34.637836, 37.113205>,  <33.277439, 35.018551, 37.606358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952667, 34.637836, 37.113205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939102, 35.031040, 37.041050>,  <32.930962, 35.266964, 36.997757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939102, 35.031040, 37.041050>,  <32.952667, 34.637836, 37.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939102, 35.031040, 37.041050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019286, -0.179818, -0.983511,
		-0.999239, -0.036834, -0.012860,
		-0.033915, 0.983010, -0.180391,
		32.928928, 35.325943, 36.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356461, 34.737053, 36.727856>,  <32.952667, 34.637836, 37.113205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356461, 34.737053, 36.727856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606667, 35.039375, 36.650402>,  <32.756790, 35.220768, 36.603931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606667, 35.039375, 36.650402>,  <32.356461, 34.737053, 36.727856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606667, 35.039375, 36.650402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032673, -0.273332, -0.961365,
		-0.779531, 0.595017, -0.195667,
		0.625511, 0.755807, -0.193630,
		32.794319, 35.266117, 36.592312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137726, 35.116482, 36.090603>,  <32.356461, 34.737053, 36.727856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137726, 35.116482, 36.090603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516689, 35.240612, 36.121876>,  <32.744068, 35.315090, 36.140640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516689, 35.240612, 36.121876>,  <32.137726, 35.116482, 36.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516689, 35.240612, 36.121876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138433, -0.177130, -0.974403,
		-0.288536, 0.933982, -0.210774,
		0.947409, 0.310328, 0.078185,
		32.800911, 35.333710, 36.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203793, 35.651390, 35.697121>,  <32.137726, 35.116482, 36.090603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203793, 35.651390, 35.697121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583405, 35.532326, 35.738579>,  <32.811172, 35.460888, 35.763454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583405, 35.532326, 35.738579>,  <32.203793, 35.651390, 35.697121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583405, 35.532326, 35.738579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075621, -0.104214, -0.991676,
		0.305987, 0.948966, -0.076392,
		0.949028, -0.297663, 0.103650,
		32.868114, 35.443027, 35.769672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674541, 36.115627, 35.251446>,  <32.203793, 35.651390, 35.697121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674541, 36.115627, 35.251446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875153, 35.772270, 35.294590>,  <32.995518, 35.566257, 35.320477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875153, 35.772270, 35.294590>,  <32.674541, 36.115627, 35.251446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875153, 35.772270, 35.294590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171780, -0.023382, -0.984858,
		0.847916, 0.512462, 0.135727,
		0.501528, -0.858392, 0.107857,
		33.025612, 35.514751, 35.326946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256924, 36.121834, 34.766079>,  <32.674541, 36.115627, 35.251446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256924, 36.121834, 34.766079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210060, 35.735401, 34.858131>,  <33.181942, 35.503540, 34.913364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210060, 35.735401, 34.858131>,  <33.256924, 36.121834, 34.766079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210060, 35.735401, 34.858131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303185, -0.255460, -0.918052,
		0.945702, -0.037784, 0.322830,
		-0.117158, -0.966081, 0.230134,
		33.174911, 35.445576, 34.927170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836575, 35.798046, 34.546249>,  <33.256924, 36.121834, 34.766079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836575, 35.798046, 34.546249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592865, 35.482433, 34.577766>,  <33.446640, 35.293064, 34.596676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592865, 35.482433, 34.577766>,  <33.836575, 35.798046, 34.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592865, 35.482433, 34.577766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324986, -0.339108, -0.882830,
		0.723303, -0.512280, 0.463035,
		-0.609276, -0.789034, 0.078794,
		33.410084, 35.245724, 34.601406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151340, 35.320595, 34.143440>,  <33.836575, 35.798046, 34.546249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151340, 35.320595, 34.143440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780350, 35.172646, 34.165272>,  <33.557755, 35.083878, 34.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780350, 35.172646, 34.165272>,  <34.151340, 35.320595, 34.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780350, 35.172646, 34.165272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119591, -0.431799, -0.894006,
		0.354230, -0.822646, 0.444718,
		-0.927480, -0.369868, 0.054575,
		33.502106, 35.061684, 34.181644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203732, 34.709236, 33.754631>,  <34.151340, 35.320595, 34.143440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203732, 34.709236, 33.754631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809803, 34.777691, 33.766258>,  <33.573448, 34.818764, 33.773235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809803, 34.777691, 33.766258>,  <34.203732, 34.709236, 33.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809803, 34.777691, 33.766258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090536, -0.363491, -0.927188,
		-0.148107, -0.915744, 0.373466,
		-0.984819, 0.171135, 0.029073,
		33.514359, 34.829033, 33.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057354, 34.232250, 33.493519>,  <34.203732, 34.709236, 33.754631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057354, 34.232250, 33.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711979, 34.433029, 33.473438>,  <33.504753, 34.553497, 33.461391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711979, 34.433029, 33.473438>,  <34.057354, 34.232250, 33.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711979, 34.433029, 33.473438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186242, -0.409682, -0.893014,
		-0.468819, -0.761711, 0.447219,
		-0.863437, 0.501953, -0.050204,
		33.452946, 34.583614, 33.458378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544403, 33.709995, 33.302986>,  <34.057354, 34.232250, 33.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544403, 33.709995, 33.302986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414330, 34.073624, 33.198795>,  <33.336285, 34.291801, 33.136280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414330, 34.073624, 33.198795>,  <33.544403, 33.709995, 33.302986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414330, 34.073624, 33.198795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056109, -0.256411, -0.964938,
		-0.943984, -0.328400, 0.032374,
		-0.325187, 0.909069, -0.260474,
		33.316772, 34.346344, 33.120655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896244, 33.613556, 32.861332>,  <33.544403, 33.709995, 33.302986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896244, 33.613556, 32.861332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074181, 33.966137, 32.797886>,  <33.180943, 34.177685, 32.759819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074181, 33.966137, 32.797886>,  <32.896244, 33.613556, 32.861332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074181, 33.966137, 32.797886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128920, -0.112239, -0.985283,
		-0.886281, 0.458746, 0.063707,
		0.444844, 0.881450, -0.158617,
		33.207634, 34.230572, 32.750301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437061, 33.833294, 32.445595>,  <32.896244, 33.613556, 32.861332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437061, 33.833294, 32.445595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768753, 34.051567, 32.397255>,  <32.967770, 34.182529, 32.368252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768753, 34.051567, 32.397255>,  <32.437061, 33.833294, 32.445595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768753, 34.051567, 32.397255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058573, -0.130190, -0.989757,
		-0.555825, 0.827819, -0.075995,
		0.829233, 0.545680, -0.120851,
		33.017525, 34.215271, 32.361000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248695, 34.153099, 31.840286>,  <32.437061, 33.833294, 32.445595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248695, 34.153099, 31.840286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647751, 34.164406, 31.865347>,  <32.887184, 34.171188, 31.880383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647751, 34.164406, 31.865347>,  <32.248695, 34.153099, 31.840286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647751, 34.164406, 31.865347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063692, -0.037584, -0.997262,
		-0.025832, 0.998894, -0.039295,
		0.997635, 0.028264, 0.062650,
		32.947041, 34.172886, 31.884142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473801, 34.725529, 31.415310>,  <32.248695, 34.153099, 31.840286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473801, 34.725529, 31.415310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802711, 34.499355, 31.441082>,  <33.000057, 34.363651, 31.456545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802711, 34.499355, 31.441082>,  <32.473801, 34.725529, 31.415310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802711, 34.499355, 31.441082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123780, 0.067194, -0.990032,
		0.555466, 0.822054, 0.125241,
		0.822275, -0.565431, 0.064430,
		33.049393, 34.329727, 31.460411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015610, 35.010864, 30.946095>,  <32.473801, 34.725529, 31.415310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015610, 35.010864, 30.946095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120697, 34.634727, 31.032562>,  <33.183750, 34.409046, 31.084444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120697, 34.634727, 31.032562>,  <33.015610, 35.010864, 30.946095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120697, 34.634727, 31.032562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227118, -0.157478, -0.961050,
		0.937761, 0.301584, 0.172197,
		0.262720, -0.940344, 0.216172,
		33.199512, 34.352623, 31.097414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719948, 34.946522, 30.705294>,  <33.015610, 35.010864, 30.946095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719948, 34.946522, 30.705294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560196, 34.579906, 30.713820>,  <33.464344, 34.359936, 30.718935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560196, 34.579906, 30.713820>,  <33.719948, 34.946522, 30.705294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560196, 34.579906, 30.713820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170272, -0.097000, -0.980611,
		0.900836, -0.388004, 0.194800,
		-0.399376, -0.916539, 0.021315,
		33.440384, 34.304943, 30.720215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149479, 34.709087, 30.268965>,  <33.719948, 34.946522, 30.705294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149479, 34.709087, 30.268965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871452, 34.422386, 30.291418>,  <33.704636, 34.250366, 30.304890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871452, 34.422386, 30.291418>,  <34.149479, 34.709087, 30.268965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871452, 34.422386, 30.291418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130372, -0.202438, -0.970578,
		0.707027, -0.667297, 0.234152,
		-0.695065, -0.716752, 0.056132,
		33.662933, 34.207359, 30.308258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477322, 34.101856, 29.996094>,  <34.149479, 34.709087, 30.268965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477322, 34.101856, 29.996094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080357, 34.055107, 29.980782>,  <33.842178, 34.027058, 29.971594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080357, 34.055107, 29.980782>,  <34.477322, 34.101856, 29.996094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080357, 34.055107, 29.980782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063339, -0.218902, -0.973689,
		0.105421, -0.968722, 0.224643,
		-0.992409, -0.116876, -0.038281,
		33.782635, 34.020046, 29.969297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292431, 33.475281, 29.722635>,  <34.477322, 34.101856, 29.996094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292431, 33.475281, 29.722635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950592, 33.669575, 29.649172>,  <33.745487, 33.786152, 29.605093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950592, 33.669575, 29.649172>,  <34.292431, 33.475281, 29.722635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950592, 33.669575, 29.649172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022108, -0.387384, -0.921653,
		-0.518823, -0.783581, 0.341795,
		-0.854596, 0.485731, -0.183660,
		33.694214, 33.815292, 29.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796341, 33.024433, 29.355799>,  <34.292431, 33.475281, 29.722635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796341, 33.024433, 29.355799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646637, 33.390049, 29.293245>,  <33.556812, 33.609421, 29.255713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646637, 33.390049, 29.293245>,  <33.796341, 33.024433, 29.355799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646637, 33.390049, 29.293245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066475, -0.194650, -0.978618,
		-0.924937, -0.355864, 0.133611,
		-0.374262, 0.914042, -0.156383,
		33.534359, 33.664261, 29.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152634, 32.905903, 28.906967>,  <33.796341, 33.024433, 29.355799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152634, 32.905903, 28.906967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287640, 33.281479, 28.880213>,  <33.368645, 33.506824, 28.864161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287640, 33.281479, 28.880213>,  <33.152634, 32.905903, 28.906967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287640, 33.281479, 28.880213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164314, -0.011196, -0.986344,
		-0.926869, 0.343895, 0.150503,
		0.337514, 0.938942, -0.066884,
		33.388893, 33.563160, 28.860147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757771, 33.137794, 28.402323>,  <33.152634, 32.905903, 28.906967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757771, 33.137794, 28.402323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049809, 33.410236, 28.424450>,  <33.225033, 33.573700, 28.437725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049809, 33.410236, 28.424450>,  <32.757771, 33.137794, 28.402323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049809, 33.410236, 28.424450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057774, 0.142185, -0.988153,
		-0.680897, 0.718251, 0.143158,
		0.730097, 0.681101, 0.055317,
		33.268837, 33.614567, 28.441046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601749, 33.606686, 27.882702>,  <32.757771, 33.137794, 28.402323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601749, 33.606686, 27.882702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977200, 33.706440, 27.978029>,  <33.202469, 33.766293, 28.035225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977200, 33.706440, 27.978029>,  <32.601749, 33.606686, 27.882702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977200, 33.706440, 27.978029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162616, 0.289389, -0.943298,
		-0.304214, 0.924154, 0.231072,
		0.938621, 0.249388, 0.238318,
		33.258785, 33.781258, 28.049524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800335, 34.376472, 27.677858>,  <32.601749, 33.606686, 27.882702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800335, 34.376472, 27.677858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138557, 34.163361, 27.691582>,  <33.341492, 34.035492, 27.699816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138557, 34.163361, 27.691582>,  <32.800335, 34.376472, 27.677858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138557, 34.163361, 27.691582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198033, 0.253317, -0.946897,
		0.495797, 0.807450, 0.319703,
		0.845558, -0.532781, 0.034308,
		33.392223, 34.003525, 27.701874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311062, 34.886131, 27.562597>,  <32.800335, 34.376472, 27.677858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311062, 34.886131, 27.562597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460648, 34.529324, 27.461040>,  <33.550400, 34.315239, 27.400106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460648, 34.529324, 27.461040>,  <33.311062, 34.886131, 27.562597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460648, 34.529324, 27.461040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017669, 0.280554, -0.959675,
		0.927276, 0.354396, 0.120677,
		0.373961, -0.892016, -0.253890,
		33.572838, 34.261719, 27.384874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698025, 35.070477, 26.994089>,  <33.311062, 34.886131, 27.562597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698025, 35.070477, 26.994089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770714, 34.677231, 27.002710>,  <33.814327, 34.441284, 27.007883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770714, 34.677231, 27.002710>,  <33.698025, 35.070477, 26.994089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770714, 34.677231, 27.002710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426030, 0.058960, -0.902785,
		0.886270, 0.173240, 0.429550,
		0.181725, -0.983113, 0.021551,
		33.825230, 34.382298, 27.009176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454060, 34.963875, 26.991817>,  <33.698025, 35.070477, 26.994089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454060, 34.963875, 26.991817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243145, 34.658611, 26.842392>,  <34.116596, 34.475452, 26.752737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243145, 34.658611, 26.842392>,  <34.454060, 34.963875, 26.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243145, 34.658611, 26.842392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331957, 0.219682, -0.917357,
		0.782157, -0.607721, 0.137501,
		-0.527290, -0.763162, -0.373563,
		34.084957, 34.429665, 26.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953339, 34.496990, 26.674402>,  <34.454060, 34.963875, 26.991817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953339, 34.496990, 26.674402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586205, 34.473537, 26.517363>,  <34.365925, 34.459465, 26.423140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586205, 34.473537, 26.517363>,  <34.953339, 34.496990, 26.674402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586205, 34.473537, 26.517363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377491, 0.176954, -0.908949,
		0.122763, -0.982471, -0.140283,
		-0.917839, -0.058630, -0.392598,
		34.310852, 34.455948, 26.399584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046329, 34.092422, 26.059156>,  <34.953339, 34.496990, 26.674402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046329, 34.092422, 26.059156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702389, 34.287430, 25.998524>,  <34.496025, 34.404434, 25.962145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702389, 34.287430, 25.998524>,  <35.046329, 34.092422, 26.059156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702389, 34.287430, 25.998524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217649, 0.081466, -0.972621,
		-0.461819, -0.869306, -0.176156,
		-0.859856, 0.487515, -0.151581,
		34.444431, 34.433685, 25.953049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748745, 33.823307, 25.431461>,  <35.046329, 34.092422, 26.059156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748745, 33.823307, 25.431461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581593, 34.185291, 25.463503>,  <34.481300, 34.402481, 25.482727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581593, 34.185291, 25.463503>,  <34.748745, 33.823307, 25.431461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581593, 34.185291, 25.463503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134626, 0.148878, -0.979648,
		-0.898473, -0.398589, -0.184045,
		-0.417877, 0.904965, 0.080102,
		34.456230, 34.456779, 25.487534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355343, 33.901318, 24.813095>,  <34.748745, 33.823307, 25.431461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355343, 33.901318, 24.813095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377178, 34.275383, 24.953087>,  <34.390278, 34.499825, 25.037081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377178, 34.275383, 24.953087>,  <34.355343, 33.901318, 24.813095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377178, 34.275383, 24.953087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095504, 0.344004, -0.934099,
		-0.993931, 0.084413, -0.070535,
		0.054586, 0.935166, 0.349978,
		34.393555, 34.555931, 25.058081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219940, 34.283836, 24.282854>,  <34.355343, 33.901318, 24.813095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219940, 34.283836, 24.282854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397297, 34.567162, 24.502560>,  <34.503712, 34.737156, 24.634382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397297, 34.567162, 24.502560>,  <34.219940, 34.283836, 24.282854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397297, 34.567162, 24.502560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353229, 0.425120, -0.833368,
		-0.823791, 0.563526, -0.061703,
		0.443393, 0.708316, 0.549263,
		34.530315, 34.779655, 24.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123611, 35.031334, 23.998764>,  <34.219940, 34.283836, 24.282854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123611, 35.031334, 23.998764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449913, 35.038395, 24.230015>,  <34.645695, 35.042629, 24.368765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449913, 35.038395, 24.230015>,  <34.123611, 35.031334, 23.998764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449913, 35.038395, 24.230015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519305, 0.417778, -0.745509,
		-0.254686, 0.908378, 0.331639,
		0.815756, 0.017649, 0.578127,
		34.694641, 35.043690, 24.403454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313873, 35.672237, 23.984222>,  <34.123611, 35.031334, 23.998764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313873, 35.672237, 23.984222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646626, 35.484074, 24.101995>,  <34.846275, 35.371174, 24.172659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646626, 35.484074, 24.101995>,  <34.313873, 35.672237, 23.984222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646626, 35.484074, 24.101995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492295, 0.380621, -0.782798,
		0.256167, 0.796143, 0.548211,
		0.831880, -0.470409, 0.294435,
		34.896191, 35.342953, 24.190327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756737, 36.158813, 23.875193>,  <34.313873, 35.672237, 23.984222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756737, 36.158813, 23.875193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963955, 35.817825, 23.903248>,  <35.088287, 35.613232, 23.920082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963955, 35.817825, 23.903248>,  <34.756737, 36.158813, 23.875193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963955, 35.817825, 23.903248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560379, 0.276303, -0.780789,
		0.646220, 0.443791, 0.620845,
		0.518049, -0.852471, 0.070139,
		35.119370, 35.562084, 23.924290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471333, 36.327385, 23.976755>,  <34.756737, 36.158813, 23.875193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471333, 36.327385, 23.976755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467781, 35.959194, 23.820477>,  <35.465649, 35.738281, 23.726709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467781, 35.959194, 23.820477>,  <35.471333, 36.327385, 23.976755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467781, 35.959194, 23.820477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490314, 0.336508, -0.803962,
		0.871501, -0.198705, 0.448333,
		-0.008883, -0.920478, -0.390695,
		35.465115, 35.683052, 23.703268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196232, 36.144047, 23.789225>,  <35.471333, 36.327385, 23.976755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196232, 36.144047, 23.789225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940582, 35.913658, 23.585346>,  <35.787193, 35.775425, 23.463020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940582, 35.913658, 23.585346>,  <36.196232, 36.144047, 23.789225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940582, 35.913658, 23.585346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422605, 0.290709, -0.858425,
		0.642597, -0.764035, 0.057608,
		-0.639120, -0.575967, -0.509694,
		35.748848, 35.740868, 23.432438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582237, 36.011425, 23.157696>,  <36.196232, 36.144047, 23.789225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582237, 36.011425, 23.157696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207047, 35.898933, 23.076591>,  <35.981934, 35.831440, 23.027929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207047, 35.898933, 23.076591>,  <36.582237, 36.011425, 23.157696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207047, 35.898933, 23.076591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079868, 0.393834, -0.915705,
		0.337371, -0.875105, -0.346946,
		-0.937977, -0.281223, -0.202761,
		35.925655, 35.814564, 23.015762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648643, 35.560558, 22.591658>,  <36.582237, 36.011425, 23.157696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648643, 35.560558, 22.591658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281677, 35.718204, 22.613642>,  <36.061497, 35.812790, 22.626833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281677, 35.718204, 22.613642>,  <36.648643, 35.560558, 22.591658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281677, 35.718204, 22.613642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134140, 0.436332, -0.889731,
		-0.374635, -0.808882, -0.453165,
		-0.917418, 0.394112, 0.054962,
		36.006451, 35.836437, 22.630131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233715, 35.253654, 22.010084>,  <36.648643, 35.560558, 22.591658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233715, 35.253654, 22.010084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043365, 35.590134, 22.112787>,  <35.929153, 35.792023, 22.174410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043365, 35.590134, 22.112787>,  <36.233715, 35.253654, 22.010084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043365, 35.590134, 22.112787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036348, 0.310495, -0.949880,
		-0.878760, -0.442694, -0.178333,
		-0.475878, 0.841198, 0.256760,
		35.900600, 35.842495, 22.189816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691967, 35.463799, 21.467449>,  <36.233715, 35.253654, 22.010084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691967, 35.463799, 21.467449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743095, 35.815079, 21.651806>,  <35.773773, 36.025848, 21.762419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743095, 35.815079, 21.651806>,  <35.691967, 35.463799, 21.467449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743095, 35.815079, 21.651806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050892, 0.458283, -0.887348,
		-0.990491, 0.136877, 0.013884,
		0.127821, 0.878204, 0.460891,
		35.781441, 36.078541, 21.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178299, 35.957504, 21.198034>,  <35.691967, 35.463799, 21.467449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178299, 35.957504, 21.198034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486118, 36.165070, 21.346907>,  <35.670811, 36.289608, 21.436230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486118, 36.165070, 21.346907>,  <35.178299, 35.957504, 21.198034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486118, 36.165070, 21.346907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221695, 0.329477, -0.917767,
		-0.598867, 0.788780, 0.138509,
		0.769551, 0.518914, 0.372181,
		35.716984, 36.320744, 21.458561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062317, 36.610649, 21.022488>,  <35.178299, 35.957504, 21.198034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062317, 36.610649, 21.022488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458580, 36.591869, 21.073702>,  <35.696339, 36.580601, 21.104429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458580, 36.591869, 21.073702>,  <35.062317, 36.610649, 21.022488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458580, 36.591869, 21.073702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132078, 0.563996, -0.815146,
		-0.033942, 0.824441, 0.564928,
		0.990658, -0.046946, 0.128034,
		35.755779, 36.577785, 21.112112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201488, 37.336399, 21.027000>,  <35.062317, 36.610649, 21.022488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201488, 37.336399, 21.027000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453632, 37.621082, 20.902990>,  <35.604919, 37.791893, 20.828585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453632, 37.621082, 20.902990>,  <35.201488, 37.336399, 21.027000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453632, 37.621082, 20.902990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530399, 0.103240, -0.841438,
		-0.566850, 0.694849, 0.442567,
		0.630363, 0.711707, -0.310025,
		35.642742, 37.834595, 20.809982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794754, 37.847435, 20.791641>,  <35.201488, 37.336399, 21.027000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794754, 37.847435, 20.791641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145023, 37.870728, 20.599888>,  <35.355186, 37.884701, 20.484837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145023, 37.870728, 20.599888>,  <34.794754, 37.847435, 20.791641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145023, 37.870728, 20.599888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482893, 0.112626, -0.868406,
		0.003425, 0.991930, 0.126741,
		0.875673, 0.058228, -0.479382,
		35.407726, 37.888195, 20.456074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677460, 38.387783, 20.285667>,  <34.794754, 37.847435, 20.791641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677460, 38.387783, 20.285667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979374, 38.154583, 20.165398>,  <35.160522, 38.014664, 20.093235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979374, 38.154583, 20.165398>,  <34.677460, 38.387783, 20.285667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979374, 38.154583, 20.165398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313928, 0.081431, -0.945948,
		0.575971, 0.808382, -0.121557,
		0.754789, -0.582999, -0.300676,
		35.205811, 37.979683, 20.075195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743736, 38.969856, 19.754362>,  <34.677460, 38.387783, 20.285667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743736, 38.969856, 19.754362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383846, 38.810139, 19.824842>,  <34.167912, 38.714306, 19.867130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383846, 38.810139, 19.824842>,  <34.743736, 38.969856, 19.754362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383846, 38.810139, 19.824842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315386, 0.873891, 0.369927,
		-0.301693, 0.277263, -0.912199,
		-0.899730, -0.399299, 0.176202,
		34.113926, 38.690350, 19.877703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958527, 38.346207, 19.411825>,  <34.743736, 38.969856, 19.754362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958527, 38.346207, 19.411825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202595, 38.651810, 19.495705>,  <35.349037, 38.835171, 19.546032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202595, 38.651810, 19.495705>,  <34.958527, 38.346207, 19.411825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202595, 38.651810, 19.495705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541732, -0.595479, 0.593238,
		0.578114, -0.248376, -0.777235,
		0.610173, 0.764012, 0.209701,
		35.385647, 38.881012, 19.558615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602108, 38.059883, 19.291241>,  <34.958527, 38.346207, 19.411825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602108, 38.059883, 19.291241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615883, 38.367294, 19.546797>,  <35.624149, 38.551743, 19.700130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615883, 38.367294, 19.546797>,  <35.602108, 38.059883, 19.291241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615883, 38.367294, 19.546797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538270, -0.552890, 0.636064,
		0.842068, 0.321992, -0.432715,
		0.034437, 0.768527, 0.638890,
		35.626213, 38.597851, 19.738464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087440, 37.454388, 19.621151>,  <35.602108, 38.059883, 19.291241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087440, 37.454388, 19.621151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854664, 37.757935, 19.738092>,  <35.715000, 37.940063, 19.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854664, 37.757935, 19.738092>,  <36.087440, 37.454388, 19.621151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854664, 37.757935, 19.738092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645236, 0.212035, 0.733970,
		0.494995, 0.615762, -0.613039,
		-0.581937, 0.758866, 0.292355,
		35.680084, 37.985596, 19.825798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496952, 38.087410, 19.822884>,  <36.087440, 37.454388, 19.621151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496952, 38.087410, 19.822884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161106, 38.030842, 20.032661>,  <35.959599, 37.996902, 20.158529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161106, 38.030842, 20.032661>,  <36.496952, 38.087410, 19.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161106, 38.030842, 20.032661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497513, 0.187283, 0.846998,
		-0.218002, 0.972073, -0.086888,
		-0.839617, -0.141420, 0.524446,
		35.909222, 37.988415, 20.189995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485584, 38.637421, 20.258593>,  <36.496952, 38.087410, 19.822884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485584, 38.637421, 20.258593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229645, 38.384499, 20.433313>,  <36.076080, 38.232746, 20.538145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229645, 38.384499, 20.433313>,  <36.485584, 38.637421, 20.258593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229645, 38.384499, 20.433313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377587, 0.236387, 0.895293,
		-0.669348, 0.737779, 0.087498,
		-0.639844, -0.632301, 0.436801,
		36.037693, 38.194809, 20.564354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109478, 39.022530, 20.675894>,  <36.485584, 38.637421, 20.258593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109478, 39.022530, 20.675894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087444, 38.652332, 20.825788>,  <36.074223, 38.430214, 20.915726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087444, 38.652332, 20.825788>,  <36.109478, 39.022530, 20.675894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087444, 38.652332, 20.825788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314452, 0.340127, 0.886247,
		-0.947674, 0.166659, 0.272286,
		-0.055089, -0.925493, 0.374736,
		36.070919, 38.374683, 20.938210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034439, 39.138599, 21.413391>,  <36.109478, 39.022530, 20.675894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034439, 39.138599, 21.413391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107590, 38.745678, 21.397232>,  <36.151482, 38.509926, 21.387537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107590, 38.745678, 21.397232>,  <36.034439, 39.138599, 21.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107590, 38.745678, 21.397232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245302, 0.005799, 0.969429,
		-0.952042, -0.187195, 0.242022,
		0.182876, -0.982306, -0.040399,
		36.162453, 38.450985, 21.385113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749157, 38.907501, 21.963432>,  <36.034439, 39.138599, 21.413391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749157, 38.907501, 21.963432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011410, 38.618103, 21.876991>,  <36.168762, 38.444466, 21.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011410, 38.618103, 21.876991>,  <35.749157, 38.907501, 21.963432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011410, 38.618103, 21.876991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282525, -0.030353, 0.958780,
		-0.700232, -0.689661, 0.184505,
		0.655633, -0.723496, -0.216100,
		36.208099, 38.401054, 21.812160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521015, 38.329762, 22.281801>,  <35.749157, 38.907501, 21.963432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521015, 38.329762, 22.281801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917221, 38.324806, 22.227066>,  <36.154945, 38.321831, 22.194225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917221, 38.324806, 22.227066>,  <35.521015, 38.329762, 22.281801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917221, 38.324806, 22.227066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133897, -0.136381, 0.981566,
		-0.030824, -0.990579, -0.133429,
		0.990516, -0.012390, -0.136840,
		36.214375, 38.321091, 22.186014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896683, 37.784252, 22.782343>,  <35.521015, 38.329762, 22.281801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896683, 37.784252, 22.782343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176022, 38.041100, 22.655853>,  <36.343624, 38.195206, 22.579960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176022, 38.041100, 22.655853>,  <35.896683, 37.784252, 22.782343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176022, 38.041100, 22.655853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407492, 0.006542, 0.913186,
		0.588440, -0.766580, -0.257088,
		0.698348, 0.642116, -0.316224,
		36.385525, 38.233734, 22.560986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502609, 37.495922, 22.967207>,  <35.896683, 37.784252, 22.782343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502609, 37.495922, 22.967207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567665, 37.889782, 22.941835>,  <36.606697, 38.126099, 22.926613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567665, 37.889782, 22.941835>,  <36.502609, 37.495922, 22.967207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567665, 37.889782, 22.941835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223237, 0.025896, 0.974420,
		0.961101, -0.172635, -0.215598,
		0.162636, 0.984645, -0.063427,
		36.616455, 38.185177, 22.922808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142036, 37.680309, 23.274044>,  <36.502609, 37.495922, 22.967207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142036, 37.680309, 23.274044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930946, 38.020058, 23.277401>,  <36.804295, 38.223907, 23.279415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930946, 38.020058, 23.277401>,  <37.142036, 37.680309, 23.274044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930946, 38.020058, 23.277401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251395, 0.146742, 0.956696,
		0.811363, 0.506980, -0.290968,
		-0.527723, 0.849375, 0.008391,
		36.772629, 38.274872, 23.279919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510521, 38.089352, 23.783291>,  <37.142036, 37.680309, 23.274044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510521, 38.089352, 23.783291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192413, 38.322533, 23.716698>,  <37.001549, 38.462440, 23.676741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192413, 38.322533, 23.716698>,  <37.510521, 38.089352, 23.783291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192413, 38.322533, 23.716698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077628, 0.370266, 0.925677,
		0.601267, 0.723238, -0.339714,
		-0.795268, 0.582950, -0.166485,
		36.953835, 38.497417, 23.666752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571060, 38.647072, 24.224878>,  <37.510521, 38.089352, 23.783291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571060, 38.647072, 24.224878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178001, 38.680645, 24.158726>,  <36.942165, 38.700790, 24.119034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178001, 38.680645, 24.158726>,  <37.571060, 38.647072, 24.224878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178001, 38.680645, 24.158726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150168, 0.163203, 0.975097,
		0.108837, 0.983015, -0.147767,
		-0.982651, 0.083937, -0.165380,
		36.883205, 38.705826, 24.109112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342762, 39.205303, 24.501995>,  <37.571060, 38.647072, 24.224878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342762, 39.205303, 24.501995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999092, 39.001629, 24.481789>,  <36.792892, 38.879425, 24.469666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999092, 39.001629, 24.481789>,  <37.342762, 39.205303, 24.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999092, 39.001629, 24.481789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172248, 0.194850, 0.965590,
		-0.481823, 0.838309, -0.255117,
		-0.859172, -0.509187, -0.050514,
		36.741341, 38.848873, 24.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839291, 39.602417, 24.946875>,  <37.342762, 39.205303, 24.501995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839291, 39.602417, 24.946875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660789, 39.248310, 24.894468>,  <36.553688, 39.035847, 24.863024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660789, 39.248310, 24.894468>,  <36.839291, 39.602417, 24.946875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660789, 39.248310, 24.894468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353421, 0.039835, 0.934615,
		-0.822162, 0.463380, -0.330647,
		-0.446253, -0.885264, -0.131018,
		36.526913, 38.982731, 24.855164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070236, 39.635681, 25.202177>,  <36.839291, 39.602417, 24.946875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070236, 39.635681, 25.202177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170921, 39.253025, 25.260803>,  <36.231331, 39.023430, 25.295979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170921, 39.253025, 25.260803>,  <36.070236, 39.635681, 25.202177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170921, 39.253025, 25.260803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310138, 0.063724, 0.948553,
		-0.916765, -0.284214, -0.280651,
		0.251708, -0.956641, 0.146566,
		36.246433, 38.966034, 25.304773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514252, 39.295948, 25.603392>,  <36.070236, 39.635681, 25.202177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514252, 39.295948, 25.603392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796223, 39.016872, 25.654465>,  <35.965405, 38.849426, 25.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796223, 39.016872, 25.654465>,  <35.514252, 39.295948, 25.603392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796223, 39.016872, 25.654465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232494, -0.057222, 0.970913,
		-0.670091, -0.714110, -0.202547,
		0.704928, -0.697691, 0.127683,
		36.007702, 38.807564, 25.692770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193798, 38.633789, 25.846655>,  <35.514252, 39.295948, 25.603392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193798, 38.633789, 25.846655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579121, 38.608921, 25.951092>,  <35.810314, 38.593998, 26.013754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579121, 38.608921, 25.951092>,  <35.193798, 38.633789, 25.846655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579121, 38.608921, 25.951092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264159, -0.047493, 0.963309,
		-0.047493, -0.996935, -0.062174,
		-0.963309, 0.062174, -0.261093,
		35.868114, 38.590267, 26.029419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265984, 38.053314, 26.276318>,  <35.193798, 38.633789, 25.846655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265984, 38.053314, 26.276318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576023, 38.291523, 26.360769>,  <35.762047, 38.434448, 26.411440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576023, 38.291523, 26.360769>,  <35.265984, 38.053314, 26.276318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576023, 38.291523, 26.360769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159065, -0.139471, 0.977367,
		0.611486, -0.791142, -0.013379,
		0.775102, 0.595518, 0.211127,
		35.808556, 38.470177, 26.424107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570419, 37.765694, 26.820187>,  <35.265984, 38.053314, 26.276318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570419, 37.765694, 26.820187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707787, 38.140984, 26.837164>,  <35.790207, 38.366158, 26.847349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707787, 38.140984, 26.837164>,  <35.570419, 37.765694, 26.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707787, 38.140984, 26.837164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061556, -0.022607, 0.997848,
		0.937162, -0.345295, 0.049989,
		0.343422, 0.938222, 0.042441,
		35.810814, 38.422451, 26.849895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063843, 37.825142, 27.419577>,  <35.570419, 37.765694, 26.820187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063843, 37.825142, 27.419577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959972, 38.208141, 27.369354>,  <35.897652, 38.437943, 27.339220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959972, 38.208141, 27.369354>,  <36.063843, 37.825142, 27.419577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959972, 38.208141, 27.369354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081070, 0.107944, 0.990846,
		0.962287, 0.267476, 0.049594,
		-0.259674, 0.957499, -0.125558,
		35.882069, 38.495392, 27.331686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409016, 38.289669, 27.949299>,  <36.063843, 37.825142, 27.419577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409016, 38.289669, 27.949299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078457, 38.479134, 27.827507>,  <35.880119, 38.592812, 27.754431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078457, 38.479134, 27.827507>,  <36.409016, 38.289669, 27.949299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078457, 38.479134, 27.827507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240806, 0.191506, 0.951492,
		0.508995, 0.859634, -0.044200,
		-0.826399, 0.473662, -0.304480,
		35.830536, 38.621231, 27.736162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342110, 38.853031, 28.483845>,  <36.409016, 38.289669, 27.949299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342110, 38.853031, 28.483845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995247, 38.795048, 28.293257>,  <35.787128, 38.760258, 28.178904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995247, 38.795048, 28.293257>,  <36.342110, 38.853031, 28.483845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995247, 38.795048, 28.293257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498001, 0.241702, 0.832812,
		-0.005559, 0.959462, -0.281783,
		-0.867159, -0.144958, -0.476470,
		35.735100, 38.751560, 28.150316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941414, 39.426109, 28.590092>,  <36.342110, 38.853031, 28.483845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941414, 39.426109, 28.590092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657242, 39.161591, 28.493780>,  <35.486736, 39.002880, 28.435993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657242, 39.161591, 28.493780>,  <35.941414, 39.426109, 28.590092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657242, 39.161591, 28.493780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446868, 0.159569, 0.880254,
		-0.543687, 0.732957, -0.408874,
		-0.710432, -0.661295, -0.240780,
		35.444111, 38.963203, 28.421547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338936, 39.742805, 28.790264>,  <35.941414, 39.426109, 28.590092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338936, 39.742805, 28.790264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252308, 39.353043, 28.766159>,  <35.200333, 39.119186, 28.751696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252308, 39.353043, 28.766159>,  <35.338936, 39.742805, 28.790264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252308, 39.353043, 28.766159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523717, 0.063862, 0.849495,
		-0.823905, 0.215532, -0.524143,
		-0.216566, -0.974406, -0.060262,
		35.187340, 39.060722, 28.748081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737194, 39.805241, 29.049561>,  <35.338936, 39.742805, 28.790264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737194, 39.805241, 29.049561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857208, 39.425304, 29.084841>,  <34.929218, 39.197342, 29.106009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857208, 39.425304, 29.084841>,  <34.737194, 39.805241, 29.049561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857208, 39.425304, 29.084841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477114, -0.069360, 0.876100,
		-0.826038, -0.304946, -0.473993,
		0.300039, -0.949841, 0.088200,
		34.947220, 39.140350, 29.111301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197071, 39.415516, 29.137789>,  <34.737194, 39.805241, 29.049561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197071, 39.415516, 29.137789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465416, 39.155472, 29.280506>,  <34.626423, 38.999447, 29.366137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465416, 39.155472, 29.280506>,  <34.197071, 39.415516, 29.137789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465416, 39.155472, 29.280506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448491, 0.027490, 0.893364,
		-0.590594, -0.759342, -0.273127,
		0.670861, -0.650110, 0.356794,
		34.666676, 38.960438, 29.387545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813667, 38.860645, 29.431000>,  <34.197071, 39.415516, 29.137789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813667, 38.860645, 29.431000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159592, 38.821529, 29.627993>,  <34.367146, 38.798061, 29.746187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159592, 38.821529, 29.627993>,  <33.813667, 38.860645, 29.431000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159592, 38.821529, 29.627993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502084, -0.161551, 0.849596,
		-0.003517, -0.982008, -0.188807,
		0.864812, -0.097785, 0.492482,
		34.419037, 38.792191, 29.775738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712215, 38.223461, 29.760164>,  <33.813667, 38.860645, 29.431000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712215, 38.223461, 29.760164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002079, 38.430794, 29.941803>,  <34.175999, 38.555191, 30.050785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002079, 38.430794, 29.941803>,  <33.712215, 38.223461, 29.760164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002079, 38.430794, 29.941803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455623, -0.133983, 0.880032,
		0.516988, -0.844620, 0.139071,
		0.724659, 0.518330, 0.454096,
		34.219479, 38.586292, 30.078032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884335, 37.815109, 30.256195>,  <33.712215, 38.223461, 29.760164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884335, 37.815109, 30.256195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046127, 38.153996, 30.393961>,  <34.143204, 38.357327, 30.476620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046127, 38.153996, 30.393961>,  <33.884335, 37.815109, 30.256195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046127, 38.153996, 30.393961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341952, -0.209176, 0.916141,
		0.848212, -0.488335, 0.205099,
		0.404482, 0.847216, 0.344413,
		34.167473, 38.408161, 30.497284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207771, 37.549774, 30.819223>,  <33.884335, 37.815109, 30.256195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207771, 37.549774, 30.819223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155102, 37.941803, 30.878717>,  <34.123501, 38.177021, 30.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155102, 37.941803, 30.878717>,  <34.207771, 37.549774, 30.819223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155102, 37.941803, 30.878717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443677, -0.192439, 0.875281,
		0.886461, 0.049261, 0.460175,
		-0.131672, 0.980072, 0.148733,
		34.115601, 38.235825, 30.923338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535725, 37.717796, 31.482843>,  <34.207771, 37.549774, 30.819223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535725, 37.717796, 31.482843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266884, 38.002029, 31.399565>,  <34.105579, 38.172569, 31.349598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266884, 38.002029, 31.399565>,  <34.535725, 37.717796, 31.482843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266884, 38.002029, 31.399565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481152, -0.205400, 0.852235,
		0.562820, 0.672966, 0.479948,
		-0.672106, 0.710583, -0.208195,
		34.065250, 38.215206, 31.337107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480762, 38.042370, 32.093403>,  <34.535725, 37.717796, 31.482843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480762, 38.042370, 32.093403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162178, 38.194599, 31.905439>,  <33.971027, 38.285938, 31.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162178, 38.194599, 31.905439>,  <34.480762, 38.042370, 32.093403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162178, 38.194599, 31.905439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493720, 0.039406, 0.868727,
		0.349132, 0.923911, 0.156512,
		-0.796459, 0.380574, -0.469911,
		33.923241, 38.308773, 31.764465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268394, 38.666473, 32.502117>,  <34.480762, 38.042370, 32.093403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268394, 38.666473, 32.502117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976677, 38.478893, 32.302834>,  <33.801647, 38.366344, 32.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976677, 38.478893, 32.302834>,  <34.268394, 38.666473, 32.502117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976677, 38.478893, 32.302834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448541, -0.222172, 0.865708,
		-0.516665, 0.854823, -0.048316,
		-0.729293, -0.468953, -0.498212,
		33.757889, 38.338207, 32.153370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727570, 39.001099, 32.720970>,  <34.268394, 38.666473, 32.502117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727570, 39.001099, 32.720970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557728, 38.677906, 32.557568>,  <33.455822, 38.483990, 32.459526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557728, 38.677906, 32.557568>,  <33.727570, 39.001099, 32.720970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557728, 38.677906, 32.557568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486519, -0.176894, 0.855575,
		-0.763550, 0.562028, -0.317988,
		-0.424606, -0.807981, -0.408505,
		33.430347, 38.435513, 32.435017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012032, 39.039310, 32.870930>,  <33.727570, 39.001099, 32.720970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012032, 39.039310, 32.870930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090935, 38.650711, 32.818363>,  <33.138279, 38.417549, 32.786823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090935, 38.650711, 32.818363>,  <33.012032, 39.039310, 32.870930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090935, 38.650711, 32.818363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317070, -0.190069, 0.929161,
		-0.927661, -0.141619, -0.345527,
		0.197261, -0.971503, -0.131416,
		33.150112, 38.359261, 32.778938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528259, 38.697105, 33.213333>,  <33.012032, 39.039310, 32.870930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528259, 38.697105, 33.213333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767345, 38.377560, 33.186359>,  <32.910797, 38.185833, 33.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767345, 38.377560, 33.186359>,  <32.528259, 38.697105, 33.213333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767345, 38.377560, 33.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259518, -0.272381, 0.926530,
		-0.758543, -0.536301, -0.370127,
		0.597715, -0.798868, -0.067433,
		32.946659, 38.137901, 33.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188766, 38.143921, 33.514679>,  <32.528259, 38.697105, 33.213333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188766, 38.143921, 33.514679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577873, 38.051228, 33.516296>,  <32.811337, 37.995609, 33.517269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577873, 38.051228, 33.516296>,  <32.188766, 38.143921, 33.514679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577873, 38.051228, 33.516296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084106, -0.336685, 0.937854,
		-0.215972, -0.912657, -0.347007,
		0.972770, -0.231736, 0.004046,
		32.869705, 37.981709, 33.517509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320675, 37.376904, 33.659401>,  <32.188766, 38.143921, 33.514679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320675, 37.376904, 33.659401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634037, 37.597080, 33.774841>,  <32.822056, 37.729187, 33.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634037, 37.597080, 33.774841>,  <32.320675, 37.376904, 33.659401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634037, 37.597080, 33.774841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044027, -0.414031, 0.909197,
		0.619947, -0.724978, -0.300120,
		0.783407, 0.550441, 0.288596,
		32.869061, 37.762211, 33.861420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530098, 36.996552, 34.240730>,  <32.320675, 37.376904, 33.659401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530098, 36.996552, 34.240730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729950, 37.337925, 34.300091>,  <32.849861, 37.542747, 34.335709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729950, 37.337925, 34.300091>,  <32.530098, 36.996552, 34.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729950, 37.337925, 34.300091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028222, -0.187264, 0.981904,
		0.865778, -0.486403, -0.117648,
		0.499632, 0.853431, 0.148402,
		32.879841, 37.593956, 34.344612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015011, 36.804356, 34.728333>,  <32.530098, 36.996552, 34.240730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015011, 36.804356, 34.728333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031895, 37.202328, 34.764862>,  <33.042027, 37.441109, 34.786777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031895, 37.202328, 34.764862>,  <33.015011, 36.804356, 34.728333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031895, 37.202328, 34.764862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004715, -0.091204, 0.995821,
		0.999097, -0.042468, 0.000841,
		0.042213, 0.994926, 0.091322,
		33.044559, 37.500805, 34.792259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507504, 36.913982, 35.307537>,  <33.015011, 36.804356, 34.728333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507504, 36.913982, 35.307537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320366, 37.264019, 35.257996>,  <33.208084, 37.474041, 35.228271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320366, 37.264019, 35.257996>,  <33.507504, 36.913982, 35.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320366, 37.264019, 35.257996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010409, 0.134667, 0.990836,
		0.883747, 0.464851, -0.053895,
		-0.467849, 0.875088, -0.123850,
		33.180012, 37.526546, 35.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845272, 37.470818, 35.755753>,  <33.507504, 36.913982, 35.307537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845272, 37.470818, 35.755753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455814, 37.553391, 35.716953>,  <33.222141, 37.602932, 35.693672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455814, 37.553391, 35.716953>,  <33.845272, 37.470818, 35.755753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455814, 37.553391, 35.716953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051989, 0.213216, 0.975621,
		0.222079, 0.954948, -0.196864,
		-0.973642, 0.206430, -0.096998,
		33.163723, 37.615318, 35.687855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782612, 37.585281, 35.010147>,  <33.845272, 37.470818, 35.755753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782612, 37.585281, 35.010147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072575, 37.636227, 35.280933>,  <34.246552, 37.666794, 35.443405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072575, 37.636227, 35.280933>,  <33.782612, 37.585281, 35.010147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072575, 37.636227, 35.280933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651137, 0.193996, -0.733748,
		-0.224778, 0.972700, 0.057702,
		0.724910, 0.127359, 0.676967,
		34.290047, 37.674435, 35.484024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137001, 38.112373, 34.717522>,  <33.782612, 37.585281, 35.010147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137001, 38.112373, 34.717522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400356, 37.948471, 34.970070>,  <34.558369, 37.850128, 35.121601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400356, 37.948471, 34.970070>,  <34.137001, 38.112373, 34.717522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400356, 37.948471, 34.970070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745772, 0.241724, -0.620801,
		0.101759, 0.879585, 0.464732,
		0.658384, -0.409756, 0.631372,
		34.597870, 37.825542, 35.159481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673939, 38.548996, 34.769302>,  <34.137001, 38.112373, 34.717522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673939, 38.548996, 34.769302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845211, 38.209145, 34.892456>,  <34.947975, 38.005234, 34.966351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845211, 38.209145, 34.892456>,  <34.673939, 38.548996, 34.769302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845211, 38.209145, 34.892456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756172, 0.150287, -0.636881,
		0.494841, 0.505514, 0.706816,
		0.428178, -0.849629, 0.307887,
		34.973663, 37.954254, 34.984821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387413, 38.708569, 34.730972>,  <34.673939, 38.548996, 34.769302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387413, 38.708569, 34.730972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374161, 38.311039, 34.773327>,  <35.366211, 38.072521, 34.798740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374161, 38.311039, 34.773327>,  <35.387413, 38.708569, 34.730972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374161, 38.311039, 34.773327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788230, -0.091116, -0.608597,
		0.614488, 0.063300, 0.786383,
		-0.033128, -0.993826, 0.105885,
		35.364223, 38.012890, 34.805092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102680, 38.380608, 34.822044>,  <35.387413, 38.708569, 34.730972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102680, 38.380608, 34.822044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873856, 38.075901, 34.700413>,  <35.736561, 37.893078, 34.627434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873856, 38.075901, 34.700413>,  <36.102680, 38.380608, 34.822044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873856, 38.075901, 34.700413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593465, -0.128514, -0.794533,
		0.566171, -0.634977, 0.525599,
		-0.572057, -0.761767, -0.304075,
		35.702240, 37.847370, 34.609192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504734, 37.820904, 34.797974>,  <36.102680, 38.380608, 34.822044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504734, 37.820904, 34.797974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196819, 37.739395, 34.556011>,  <36.012070, 37.690491, 34.410831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196819, 37.739395, 34.556011>,  <36.504734, 37.820904, 34.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196819, 37.739395, 34.556011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628211, -0.073970, -0.774519,
		0.113078, -0.976221, 0.184950,
		-0.769782, -0.203768, -0.604908,
		35.965885, 37.678265, 34.374538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752987, 37.284569, 34.397106>,  <36.504734, 37.820904, 34.797974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752987, 37.284569, 34.397106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453571, 37.438931, 34.181416>,  <36.273922, 37.531548, 34.052002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453571, 37.438931, 34.181416>,  <36.752987, 37.284569, 34.397106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453571, 37.438931, 34.181416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622436, 0.128556, -0.772041,
		-0.228615, -0.913537, -0.336431,
		-0.748538, 0.385907, -0.539228,
		36.229012, 37.554703, 34.019646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900600, 36.904228, 33.744160>,  <36.752987, 37.284569, 34.397106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900600, 36.904228, 33.744160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672237, 37.226990, 33.683533>,  <36.535221, 37.420647, 33.647156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672237, 37.226990, 33.683533>,  <36.900600, 36.904228, 33.744160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672237, 37.226990, 33.683533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564733, 0.251945, -0.785875,
		-0.595941, -0.534254, -0.599523,
		-0.570904, 0.806905, -0.151566,
		36.500965, 37.469063, 33.638062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808182, 36.915424, 33.052944>,  <36.900600, 36.904228, 33.744160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808182, 36.915424, 33.052944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695534, 37.284397, 33.158627>,  <36.627945, 37.505783, 33.222034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695534, 37.284397, 33.158627>,  <36.808182, 36.915424, 33.052944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695534, 37.284397, 33.158627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344209, 0.354140, -0.869543,
		-0.895663, -0.153937, -0.417243,
		-0.281617, 0.922436, 0.264204,
		36.611050, 37.561127, 33.237888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522911, 37.094692, 32.444859>,  <36.808182, 36.915424, 33.052944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522911, 37.094692, 32.444859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612015, 37.429543, 32.644695>,  <36.665478, 37.630451, 32.764599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612015, 37.429543, 32.644695>,  <36.522911, 37.094692, 32.444859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612015, 37.429543, 32.644695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288039, 0.433075, -0.854096,
		-0.931348, 0.334165, -0.144652,
		0.222764, 0.837126, 0.499596,
		36.678844, 37.680679, 32.794575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376129, 37.568447, 31.990284>,  <36.522911, 37.094692, 32.444859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376129, 37.568447, 31.990284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631329, 37.746952, 32.241302>,  <36.784447, 37.854053, 32.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631329, 37.746952, 32.241302>,  <36.376129, 37.568447, 31.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631329, 37.746952, 32.241302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371007, 0.535985, -0.758336,
		-0.674771, 0.716638, 0.176389,
		0.637995, 0.446262, 0.627546,
		36.822727, 37.880829, 32.429565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294216, 38.250134, 31.798813>,  <36.376129, 37.568447, 31.990284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294216, 38.250134, 31.798813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640316, 38.229702, 31.998308>,  <36.847977, 38.217445, 32.118004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640316, 38.229702, 31.998308>,  <36.294216, 38.250134, 31.798813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640316, 38.229702, 31.998308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417841, 0.623203, -0.661080,
		-0.277050, 0.780390, 0.560566,
		0.865247, -0.051075, 0.498738,
		36.899891, 38.214378, 32.147930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499939, 38.878632, 31.793127>,  <36.294216, 38.250134, 31.798813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499939, 38.878632, 31.793127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823650, 38.649319, 31.844379>,  <37.017876, 38.511730, 31.875130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823650, 38.649319, 31.844379>,  <36.499939, 38.878632, 31.793127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823650, 38.649319, 31.844379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374062, 0.334745, -0.864883,
		0.452932, 0.747859, 0.485345,
		0.809278, -0.573282, 0.128129,
		37.066433, 38.477333, 31.882818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066513, 39.442581, 31.454542>,  <36.499939, 38.878632, 31.793127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066513, 39.442581, 31.454542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180584, 39.060284, 31.483477>,  <37.249027, 38.830906, 31.500837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180584, 39.060284, 31.483477>,  <37.066513, 39.442581, 31.454542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180584, 39.060284, 31.483477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485445, 0.078949, -0.870695,
		0.826447, 0.283420, 0.486475,
		0.285179, -0.955741, 0.072338,
		37.266136, 38.773563, 31.505178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828995, 39.464668, 31.401407>,  <37.066513, 39.442581, 31.454542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828995, 39.464668, 31.401407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745968, 39.086178, 31.302153>,  <37.696152, 38.859085, 31.242599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745968, 39.086178, 31.302153>,  <37.828995, 39.464668, 31.401407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745968, 39.086178, 31.302153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584419, 0.083466, -0.807148,
		0.784456, -0.312552, 0.535668,
		-0.207565, -0.946227, -0.248136,
		37.683697, 38.802311, 31.227713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414867, 39.153133, 31.167068>,  <37.828995, 39.464668, 31.401407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414867, 39.153133, 31.167068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113480, 38.951756, 30.997913>,  <37.932648, 38.830929, 30.896420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113480, 38.951756, 30.997913>,  <38.414867, 39.153133, 31.167068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113480, 38.951756, 30.997913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449710, 0.074590, -0.890055,
		0.479636, -0.860802, 0.170203,
		-0.753466, -0.503444, -0.422888,
		37.887440, 38.800724, 30.871048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664669, 38.559753, 30.795261>,  <38.414867, 39.153133, 31.167068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664669, 38.559753, 30.795261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298515, 38.604862, 30.640675>,  <38.078823, 38.631927, 30.547922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298515, 38.604862, 30.640675>,  <38.664669, 38.559753, 30.795261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298515, 38.604862, 30.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391083, 0.021285, -0.920109,
		-0.095538, -0.993393, -0.063588,
		-0.915383, 0.112774, -0.386465,
		38.023899, 38.638695, 30.524734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744709, 38.169788, 30.257221>,  <38.664669, 38.559753, 30.795261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744709, 38.169788, 30.257221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404224, 38.355927, 30.160158>,  <38.199932, 38.467609, 30.101919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404224, 38.355927, 30.160158>,  <38.744709, 38.169788, 30.257221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404224, 38.355927, 30.160158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297049, 0.046020, -0.953753,
		-0.432660, -0.883931, -0.177405,
		-0.851215, 0.465348, -0.242660,
		38.148861, 38.495529, 30.087360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411572, 37.771347, 29.686508>,  <38.744709, 38.169788, 30.257221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411572, 37.771347, 29.686508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244617, 38.133930, 29.660822>,  <38.144447, 38.351479, 29.645411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244617, 38.133930, 29.660822>,  <38.411572, 37.771347, 29.686508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244617, 38.133930, 29.660822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130440, -0.010173, -0.991404,
		-0.899321, -0.422170, -0.113992,
		-0.417382, 0.906459, -0.064216,
		38.119404, 38.405869, 29.641558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763756, 37.706432, 29.156218>,  <38.411572, 37.771347, 29.686508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763756, 37.706432, 29.156218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863888, 38.092209, 29.190117>,  <37.923965, 38.323677, 29.210457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863888, 38.092209, 29.190117>,  <37.763756, 37.706432, 29.156218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863888, 38.092209, 29.190117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050968, 0.100540, -0.993627,
		-0.966819, 0.244413, 0.074324,
		0.250328, 0.964445, 0.084747,
		37.938988, 38.381542, 29.215542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286163, 38.072227, 28.886082>,  <37.763756, 37.706432, 29.156218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286163, 38.072227, 28.886082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611847, 38.304390, 28.880428>,  <37.807255, 38.443687, 28.877037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611847, 38.304390, 28.880428>,  <37.286163, 38.072227, 28.886082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611847, 38.304390, 28.880428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048643, 0.043940, -0.997849,
		-0.578537, 0.813141, 0.064009,
		0.814204, 0.580406, -0.014133,
		37.856110, 38.478512, 28.876188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218021, 38.728230, 28.466459>,  <37.286163, 38.072227, 28.886082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218021, 38.728230, 28.466459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593651, 38.590744, 28.467541>,  <37.819027, 38.508251, 28.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593651, 38.590744, 28.467541>,  <37.218021, 38.728230, 28.466459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593651, 38.590744, 28.467541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028034, 0.068747, -0.997240,
		0.342583, 0.936553, 0.074194,
		0.939069, -0.343717, 0.002704,
		37.875370, 38.487629, 28.468351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504280, 39.151569, 28.043982>,  <37.218021, 38.728230, 28.466459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504280, 39.151569, 28.043982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718388, 38.814571, 28.068296>,  <37.846851, 38.612373, 28.082886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718388, 38.814571, 28.068296>,  <37.504280, 39.151569, 28.043982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718388, 38.814571, 28.068296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196033, 0.053903, -0.979115,
		0.821620, 0.536005, 0.194009,
		0.535268, -0.842492, 0.060786,
		37.878967, 38.561825, 28.086533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064632, 39.261124, 27.568474>,  <37.504280, 39.151569, 28.043982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064632, 39.261124, 27.568474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055229, 38.867165, 27.637077>,  <38.049587, 38.630787, 27.678240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055229, 38.867165, 27.637077>,  <38.064632, 39.261124, 27.568474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055229, 38.867165, 27.637077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328701, -0.169631, -0.929075,
		0.944142, 0.034537, 0.327725,
		-0.023505, -0.984902, 0.171508,
		38.048176, 38.571693, 27.688530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693253, 39.003082, 27.352003>,  <38.064632, 39.261124, 27.568474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693253, 39.003082, 27.352003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425415, 38.707554, 27.321583>,  <38.264713, 38.530235, 27.303331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425415, 38.707554, 27.321583>,  <38.693253, 39.003082, 27.352003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425415, 38.707554, 27.321583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269464, -0.146237, -0.951842,
		0.692121, -0.657842, 0.297006,
		-0.669595, -0.738822, -0.076051,
		38.224537, 38.485909, 27.298767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083530, 38.381405, 27.182760>,  <38.693253, 39.003082, 27.352003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083530, 38.381405, 27.182760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709305, 38.292141, 27.073275>,  <38.484768, 38.238583, 27.007584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709305, 38.292141, 27.073275>,  <39.083530, 38.381405, 27.182760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709305, 38.292141, 27.073275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330131, -0.277369, -0.902264,
		0.125427, -0.934488, 0.333168,
		-0.935565, -0.223157, -0.273714,
		38.428635, 38.225193, 26.991159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147060, 37.781628, 26.927891>,  <39.083530, 38.381405, 27.182760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147060, 37.781628, 26.927891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818378, 37.939091, 26.763046>,  <38.621170, 38.033569, 26.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818378, 37.939091, 26.763046>,  <39.147060, 37.781628, 26.927891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818378, 37.939091, 26.763046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353483, -0.215189, -0.910353,
		-0.447052, -0.893714, 0.037669,
		-0.821702, 0.393660, -0.412113,
		38.571869, 38.057190, 26.639412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753868, 37.152893, 26.545664>,  <39.147060, 37.781628, 26.927891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753868, 37.152893, 26.545664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687912, 37.517944, 26.396040>,  <38.648338, 37.736977, 26.306265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687912, 37.517944, 26.396040>,  <38.753868, 37.152893, 26.545664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687912, 37.517944, 26.396040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261531, -0.325219, -0.908754,
		-0.951007, -0.247672, -0.185055,
		-0.164889, 0.912629, -0.374059,
		38.638447, 37.791733, 26.283823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425175, 37.021496, 25.950378>,  <38.753868, 37.152893, 26.545664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425175, 37.021496, 25.950378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555798, 37.397564, 25.911516>,  <38.634171, 37.623203, 25.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555798, 37.397564, 25.911516>,  <38.425175, 37.021496, 25.950378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555798, 37.397564, 25.911516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301669, -0.201091, -0.931965,
		-0.895743, 0.275031, -0.349288,
		0.326558, 0.940170, -0.097157,
		38.653767, 37.679615, 25.882368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212727, 37.197899, 25.295914>,  <38.425175, 37.021496, 25.950378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212727, 37.197899, 25.295914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496105, 37.469669, 25.372318>,  <38.666134, 37.632732, 25.418161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496105, 37.469669, 25.372318>,  <38.212727, 37.197899, 25.295914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496105, 37.469669, 25.372318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346539, -0.099105, -0.932786,
		-0.614825, 0.727024, -0.305657,
		0.708449, 0.679422, 0.191010,
		38.708641, 37.673496, 25.429621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237537, 37.527481, 24.625114>,  <38.212727, 37.197899, 25.295914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237537, 37.527481, 24.625114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584606, 37.571304, 24.819082>,  <38.792847, 37.597599, 24.935463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584606, 37.571304, 24.819082>,  <38.237537, 37.527481, 24.625114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584606, 37.571304, 24.819082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493004, -0.064015, -0.867669,
		-0.064015, 0.991917, -0.109555,
		0.867669, 0.109555, 0.484921,
		38.844906, 37.604172, 24.964558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678589, 38.073547, 24.302555>,  <38.237537, 37.527481, 24.625114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678589, 38.073547, 24.302555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914761, 37.815742, 24.496876>,  <39.056461, 37.661060, 24.613468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914761, 37.815742, 24.496876>,  <38.678589, 38.073547, 24.302555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914761, 37.815742, 24.496876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676806, 0.067464, -0.733064,
		0.439694, 0.761613, 0.476041,
		0.590427, -0.644511, 0.485800,
		39.091888, 37.622391, 24.642616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294559, 38.356064, 24.200663>,  <38.678589, 38.073547, 24.302555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294559, 38.356064, 24.200663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386589, 37.982803, 24.311144>,  <39.441807, 37.758846, 24.377432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386589, 37.982803, 24.311144>,  <39.294559, 38.356064, 24.200663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386589, 37.982803, 24.311144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733117, -0.020454, -0.679794,
		0.640002, 0.358894, 0.679406,
		0.230077, -0.933154, 0.276202,
		39.455612, 37.702858, 24.394005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024048, 38.263542, 24.266497>,  <39.294559, 38.356064, 24.200663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024048, 38.263542, 24.266497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894264, 37.887531, 24.224382>,  <39.816395, 37.661926, 24.199114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894264, 37.887531, 24.224382>,  <40.024048, 38.263542, 24.266497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894264, 37.887531, 24.224382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711509, -0.169199, -0.682002,
		0.623284, -0.296191, 0.723732,
		-0.324457, -0.940023, -0.105283,
		39.796928, 37.605526, 24.192797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617931, 37.905655, 24.134695>,  <40.024048, 38.263542, 24.266497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617931, 37.905655, 24.134695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345760, 37.635258, 24.021524>,  <40.182457, 37.473019, 23.953623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345760, 37.635258, 24.021524>,  <40.617931, 37.905655, 24.134695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345760, 37.635258, 24.021524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620037, -0.325285, -0.713964,
		0.390604, -0.661226, 0.640475,
		-0.680428, -0.675995, -0.282927,
		40.141632, 37.432461, 23.936646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988087, 37.277424, 23.958391>,  <40.617931, 37.905655, 24.134695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988087, 37.277424, 23.958391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634945, 37.257229, 23.771620>,  <40.423061, 37.245110, 23.659557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634945, 37.257229, 23.771620>,  <40.988087, 37.277424, 23.958391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634945, 37.257229, 23.771620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458611, -0.306997, -0.833924,
		-0.101240, -0.950370, 0.294189,
		-0.882851, -0.050492, -0.466930,
		40.370090, 37.242081, 23.631540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782368, 36.559750, 23.720081>,  <40.988087, 37.277424, 23.958391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782368, 36.559750, 23.720081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606606, 36.832184, 23.485800>,  <40.501148, 36.995644, 23.345230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606606, 36.832184, 23.485800>,  <40.782368, 36.559750, 23.720081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606606, 36.832184, 23.485800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452482, -0.395447, -0.799301,
		-0.776006, -0.616235, -0.134418,
		-0.439402, 0.681085, -0.585705,
		40.474785, 37.036510, 23.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522873, 36.231434, 23.074097>,  <40.782368, 36.559750, 23.720081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522873, 36.231434, 23.074097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567890, 36.623604, 23.009462>,  <40.594898, 36.858906, 22.970682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567890, 36.623604, 23.009462>,  <40.522873, 36.231434, 23.074097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567890, 36.623604, 23.009462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363383, -0.191965, -0.911648,
		-0.924818, 0.043879, -0.377872,
		0.112540, 0.980420, -0.161588,
		40.601654, 36.917728, 22.960985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767262, 35.718048, 22.725290>,  <40.522873, 36.231434, 23.074097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767262, 35.718048, 22.725290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019455, 35.437702, 22.858728>,  <41.170773, 35.269497, 22.938791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019455, 35.437702, 22.858728>,  <40.767262, 35.718048, 22.725290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019455, 35.437702, 22.858728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433549, 0.038511, 0.900307,
		-0.643836, -0.712258, -0.279577,
		0.630484, -0.700861, 0.333593,
		41.208599, 35.227444, 22.958807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410831, 35.315540, 23.096478>,  <40.767262, 35.718048, 22.725290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410831, 35.315540, 23.096478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771305, 35.230114, 23.247349>,  <40.987587, 35.178860, 23.337872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771305, 35.230114, 23.247349>,  <40.410831, 35.315540, 23.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771305, 35.230114, 23.247349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380063, 0.029024, 0.924505,
		-0.208390, -0.976497, -0.055013,
		0.901180, -0.213566, 0.377179,
		41.041660, 35.166042, 23.360502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217804, 35.084320, 23.704344>,  <40.410831, 35.315540, 23.096478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217804, 35.084320, 23.704344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612324, 35.117546, 23.761349>,  <40.849037, 35.137482, 23.795551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612324, 35.117546, 23.761349>,  <40.217804, 35.084320, 23.704344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612324, 35.117546, 23.761349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150676, 0.102121, 0.983295,
		0.067113, -0.991299, 0.113236,
		0.986302, 0.083054, 0.142511,
		40.908215, 35.142467, 23.804102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480537, 34.519249, 24.237349>,  <40.217804, 35.084320, 23.704344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480537, 34.519249, 24.237349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740273, 34.823345, 24.229418>,  <40.896114, 35.005802, 24.224659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740273, 34.823345, 24.229418>,  <40.480537, 34.519249, 24.237349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740273, 34.823345, 24.229418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029918, 0.000514, 0.999552,
		0.759910, -0.649642, -0.022411,
		0.649340, 0.760240, -0.019826,
		40.935074, 35.051418, 24.223471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868137, 34.327423, 24.790462>,  <40.480537, 34.519249, 24.237349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868137, 34.327423, 24.790462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965576, 34.706566, 24.708263>,  <41.024040, 34.934052, 24.658945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965576, 34.706566, 24.708263>,  <40.868137, 34.327423, 24.790462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965576, 34.706566, 24.708263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233465, 0.148343, 0.960983,
		0.941358, -0.282067, -0.185155,
		0.243595, 0.947857, -0.205497,
		41.038654, 34.990921, 24.646614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550671, 34.406372, 25.050945>,  <40.868137, 34.327423, 24.790462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550671, 34.406372, 25.050945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390408, 34.772385, 25.032200>,  <41.294250, 34.991993, 25.020952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390408, 34.772385, 25.032200>,  <41.550671, 34.406372, 25.050945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390408, 34.772385, 25.032200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108645, 0.098234, 0.989215,
		0.909765, 0.391241, -0.138772,
		-0.400654, 0.915030, -0.046864,
		41.270210, 35.046894, 25.018141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823151, 34.688396, 25.602686>,  <41.550671, 34.406372, 25.050945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823151, 34.688396, 25.602686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502857, 34.911091, 25.514256>,  <41.310680, 35.044708, 25.461197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502857, 34.911091, 25.514256>,  <41.823151, 34.688396, 25.602686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502857, 34.911091, 25.514256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059238, 0.293658, 0.954073,
		0.596085, 0.777054, -0.202162,
		-0.800733, 0.556733, -0.221076,
		41.262638, 35.078110, 25.447933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870533, 35.367546, 26.083014>,  <41.823151, 34.688396, 25.602686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870533, 35.367546, 26.083014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504089, 35.311878, 25.932610>,  <41.284225, 35.278477, 25.842367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504089, 35.311878, 25.932610>,  <41.870533, 35.367546, 26.083014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504089, 35.311878, 25.932610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400476, 0.272541, 0.874838,
		-0.019272, 0.952026, -0.305410,
		-0.916105, -0.139169, -0.376011,
		41.229259, 35.270126, 25.819807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484062, 35.965763, 26.350466>,  <41.870533, 35.367546, 26.083014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484062, 35.965763, 26.350466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232094, 35.675480, 26.239799>,  <41.080914, 35.501308, 26.173401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232094, 35.675480, 26.239799>,  <41.484062, 35.965763, 26.350466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232094, 35.675480, 26.239799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479573, 0.083250, 0.873544,
		-0.610907, 0.682945, -0.400472,
		-0.629922, -0.725710, -0.276664,
		41.043118, 35.457767, 26.156801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868160, 36.304249, 26.493713>,  <41.484062, 35.965763, 26.350466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868160, 36.304249, 26.493713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796860, 35.910660, 26.495777>,  <40.754078, 35.674507, 26.497015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796860, 35.910660, 26.495777>,  <40.868160, 36.304249, 26.493713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796860, 35.910660, 26.495777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381567, 0.073955, 0.921378,
		-0.906991, 0.162270, -0.388634,
		-0.178254, -0.983971, 0.005159,
		40.743385, 35.615467, 26.497324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196033, 36.211426, 26.560381>,  <40.868160, 36.304249, 26.493713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196033, 36.211426, 26.560381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328987, 35.855091, 26.684267>,  <40.408760, 35.641289, 26.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328987, 35.855091, 26.684267>,  <40.196033, 36.211426, 26.560381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328987, 35.855091, 26.684267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420903, 0.153759, 0.893979,
		-0.844014, -0.427506, -0.323850,
		0.332387, -0.890840, 0.309714,
		40.428703, 35.587837, 26.777182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617100, 35.846897, 26.838947>,  <40.196033, 36.211426, 26.560381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617100, 35.846897, 26.838947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941238, 35.684032, 27.007498>,  <40.135723, 35.586315, 27.108627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941238, 35.684032, 27.007498>,  <39.617100, 35.846897, 26.838947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941238, 35.684032, 27.007498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341963, 0.255339, 0.904358,
		-0.475814, -0.876938, 0.067678,
		0.810347, -0.407163, 0.421374,
		40.184341, 35.561882, 27.133909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364780, 35.235443, 27.297836>,  <39.617100, 35.846897, 26.838947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364780, 35.235443, 27.297836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729988, 35.371685, 27.387627>,  <39.949112, 35.453430, 27.441502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729988, 35.371685, 27.387627>,  <39.364780, 35.235443, 27.297836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729988, 35.371685, 27.387627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246667, 0.022695, 0.968835,
		0.324899, -0.939931, 0.104737,
		0.913015, 0.340609, 0.224477,
		40.003891, 35.473869, 27.454969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544209, 34.919052, 27.919058>,  <39.364780, 35.235443, 27.297836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544209, 34.919052, 27.919058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771202, 35.248035, 27.903421>,  <39.907398, 35.445423, 27.894039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771202, 35.248035, 27.903421>,  <39.544209, 34.919052, 27.919058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771202, 35.248035, 27.903421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119855, 0.129481, 0.984312,
		0.814614, -0.553897, 0.172054,
		0.567485, 0.822456, -0.039090,
		39.941448, 35.494774, 27.891695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678009, 34.970524, 28.562326>,  <39.544209, 34.919052, 27.919058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678009, 34.970524, 28.562326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828674, 35.318314, 28.434483>,  <39.919071, 35.526985, 28.357777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828674, 35.318314, 28.434483>,  <39.678009, 34.970524, 28.562326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828674, 35.318314, 28.434483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057423, 0.322439, 0.944847,
		0.924570, -0.374238, 0.071522,
		0.376659, 0.869471, -0.319607,
		39.941673, 35.579155, 28.338600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372833, 35.135193, 28.891190>,  <39.678009, 34.970524, 28.562326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372833, 35.135193, 28.891190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174770, 35.462353, 28.773987>,  <40.055931, 35.658649, 28.703665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174770, 35.462353, 28.773987>,  <40.372833, 35.135193, 28.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174770, 35.462353, 28.773987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187283, 0.228838, 0.955279,
		0.848376, 0.527891, 0.039868,
		-0.495160, 0.817902, -0.293005,
		40.026222, 35.707722, 28.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763557, 35.652920, 29.294588>,  <40.372833, 35.135193, 28.891190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763557, 35.652920, 29.294588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406773, 35.798149, 29.186823>,  <40.192703, 35.885288, 29.122164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406773, 35.798149, 29.186823>,  <40.763557, 35.652920, 29.294588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406773, 35.798149, 29.186823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211305, 0.192035, 0.958370,
		0.399697, 0.911756, -0.094567,
		-0.891960, 0.363075, -0.269414,
		40.139183, 35.907070, 29.105999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674152, 36.175560, 29.691412>,  <40.763557, 35.652920, 29.294588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674152, 36.175560, 29.691412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296600, 36.138355, 29.564648>,  <40.070068, 36.116032, 29.488588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296600, 36.138355, 29.564648>,  <40.674152, 36.175560, 29.691412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296600, 36.138355, 29.564648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330018, 0.227359, 0.916185,
		-0.013161, 0.969359, -0.245296,
		-0.943883, -0.093010, -0.316913,
		40.013435, 36.110451, 29.469574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290642, 36.674305, 30.097530>,  <40.674152, 36.175560, 29.691412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290642, 36.674305, 30.097530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991058, 36.450100, 29.956171>,  <39.811310, 36.315578, 29.871357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991058, 36.450100, 29.956171>,  <40.290642, 36.674305, 30.097530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991058, 36.450100, 29.956171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553231, 0.235427, 0.799068,
		-0.364688, 0.793978, -0.486417,
		-0.748958, -0.560511, -0.353396,
		39.766373, 36.281948, 29.850153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744789, 37.066032, 30.171654>,  <40.290642, 36.674305, 30.097530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744789, 37.066032, 30.171654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625275, 36.684811, 30.152021>,  <39.553566, 36.456078, 30.140242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625275, 36.684811, 30.152021>,  <39.744789, 37.066032, 30.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625275, 36.684811, 30.152021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438442, 0.091407, 0.894100,
		-0.847642, 0.288663, -0.445171,
		-0.298785, -0.953058, -0.049082,
		39.535641, 36.398895, 30.137297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093643, 37.051823, 30.285007>,  <39.744789, 37.066032, 30.171654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093643, 37.051823, 30.285007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211411, 36.677731, 30.363665>,  <39.282070, 36.453278, 30.410860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211411, 36.677731, 30.363665>,  <39.093643, 37.051823, 30.285007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211411, 36.677731, 30.363665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456708, 0.043060, 0.888574,
		-0.839486, -0.351420, -0.414449,
		0.294417, -0.935227, 0.196644,
		39.299736, 36.397163, 30.422657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456596, 36.652344, 30.560684>,  <39.093643, 37.051823, 30.285007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456596, 36.652344, 30.560684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800663, 36.487919, 30.681438>,  <39.007103, 36.389263, 30.753891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800663, 36.487919, 30.681438>,  <38.456596, 36.652344, 30.560684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800663, 36.487919, 30.681438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311420, 0.045420, 0.949186,
		-0.403890, -0.910473, -0.088945,
		0.860169, -0.411066, 0.301884,
		39.058712, 36.364597, 30.772003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200729, 36.209034, 30.948551>,  <38.456596, 36.652344, 30.560684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200729, 36.209034, 30.948551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582577, 36.235176, 31.064785>,  <38.811684, 36.250862, 31.134525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582577, 36.235176, 31.064785>,  <38.200729, 36.209034, 30.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582577, 36.235176, 31.064785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290124, -0.016652, 0.956844,
		0.067380, -0.997723, 0.003067,
		0.954614, 0.065362, 0.290586,
		38.868961, 36.254784, 31.151960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221809, 35.771873, 31.522591>,  <38.200729, 36.209034, 30.948551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221809, 35.771873, 31.522591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552269, 35.993355, 31.564348>,  <38.750546, 36.126244, 31.589403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552269, 35.993355, 31.564348>,  <38.221809, 35.771873, 31.522591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552269, 35.993355, 31.564348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128131, 0.004197, 0.991748,
		0.548694, -0.832705, 0.074414,
		0.826146, 0.553701, 0.104393,
		38.800114, 36.159466, 31.595667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623249, 35.455685, 32.058826>,  <38.221809, 35.771873, 31.522591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623249, 35.455685, 32.058826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750000, 35.832348, 32.013454>,  <38.826050, 36.058346, 31.986233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750000, 35.832348, 32.013454>,  <38.623249, 35.455685, 32.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750000, 35.832348, 32.013454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076244, 0.144493, 0.986564,
		0.945396, -0.303974, 0.117583,
		0.316880, 0.941659, -0.113427,
		38.845062, 36.114845, 31.979425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114098, 35.489925, 32.517609>,  <38.623249, 35.455685, 32.058826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114098, 35.489925, 32.517609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018112, 35.871002, 32.442989>,  <38.960522, 36.099648, 32.398216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018112, 35.871002, 32.442989>,  <39.114098, 35.489925, 32.517609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018112, 35.871002, 32.442989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025699, 0.198334, 0.979797,
		0.970442, 0.230319, -0.072076,
		-0.239961, 0.952689, -0.186552,
		38.946125, 36.156811, 32.387024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550014, 35.979965, 32.902477>,  <39.114098, 35.489925, 32.517609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550014, 35.979965, 32.902477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229435, 36.206402, 32.825302>,  <39.037086, 36.342262, 32.778996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229435, 36.206402, 32.825302>,  <39.550014, 35.979965, 32.902477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229435, 36.206402, 32.825302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214076, 0.029693, 0.976366,
		0.558441, 0.823808, 0.097389,
		-0.801446, 0.566091, -0.192939,
		38.989002, 36.376228, 32.767422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609577, 36.553909, 33.352398>,  <39.550014, 35.979965, 32.902477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609577, 36.553909, 33.352398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226486, 36.522018, 33.241829>,  <38.996632, 36.502884, 33.175488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226486, 36.522018, 33.241829>,  <39.609577, 36.553909, 33.352398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226486, 36.522018, 33.241829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282681, 0.082315, 0.955675,
		-0.053441, 0.993412, -0.101373,
		-0.957724, -0.079729, -0.276420,
		38.939171, 36.498100, 33.158901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386261, 36.963432, 33.912193>,  <39.609577, 36.553909, 33.352398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386261, 36.963432, 33.912193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069206, 36.820698, 33.714451>,  <38.878975, 36.735058, 33.595806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069206, 36.820698, 33.714451>,  <39.386261, 36.963432, 33.912193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069206, 36.820698, 33.714451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539708, 0.033469, 0.841186,
		-0.283623, 0.933566, -0.219118,
		-0.792637, -0.356840, -0.494361,
		38.831417, 36.713646, 33.566143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880203, 37.482204, 33.891109>,  <39.386261, 36.963432, 33.912193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880203, 37.482204, 33.891109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731522, 37.110954, 33.882915>,  <38.642311, 36.888203, 33.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731522, 37.110954, 33.882915>,  <38.880203, 37.482204, 33.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731522, 37.110954, 33.882915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375740, 0.130229, 0.917529,
		-0.848913, 0.348749, -0.397141,
		-0.371706, -0.928124, -0.020485,
		38.620010, 36.832516, 33.876770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271278, 37.526814, 34.345657>,  <38.880203, 37.482204, 33.891109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271278, 37.526814, 34.345657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303642, 37.130447, 34.302689>,  <38.323059, 36.892628, 34.276909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303642, 37.130447, 34.302689>,  <38.271278, 37.526814, 34.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303642, 37.130447, 34.302689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236574, -0.123785, 0.963696,
		-0.968239, -0.052560, -0.244440,
		0.080910, -0.990916, -0.107419,
		38.327915, 36.833172, 34.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706234, 37.213425, 34.685631>,  <38.271278, 37.526814, 34.345657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706234, 37.213425, 34.685631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980495, 36.923038, 34.664284>,  <38.145054, 36.748806, 34.651474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980495, 36.923038, 34.664284>,  <37.706234, 37.213425, 34.685631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980495, 36.923038, 34.664284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202123, -0.260307, 0.944133,
		-0.699299, -0.636565, -0.325216,
		0.685658, -0.725965, -0.053367,
		38.186192, 36.705250, 34.648273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415154, 36.611984, 35.000729>,  <37.706234, 37.213425, 34.685631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415154, 36.611984, 35.000729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813148, 36.576271, 35.018742>,  <38.051945, 36.554844, 35.029549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813148, 36.576271, 35.018742>,  <37.415154, 36.611984, 35.000729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813148, 36.576271, 35.018742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057035, -0.136820, 0.988953,
		-0.082135, -0.986564, -0.141226,
		0.994988, -0.089283, 0.045031,
		38.111645, 36.549488, 35.032249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464390, 36.030270, 35.342709>,  <37.415154, 36.611984, 35.000729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464390, 36.030270, 35.342709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811340, 36.217625, 35.409966>,  <38.019512, 36.330036, 35.450321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811340, 36.217625, 35.409966>,  <37.464390, 36.030270, 35.342709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811340, 36.217625, 35.409966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035687, -0.278461, 0.959784,
		0.496374, -0.838494, -0.224815,
		0.867375, 0.468389, 0.168144,
		38.071552, 36.358143, 35.460407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844528, 35.578598, 35.768852>,  <37.464390, 36.030270, 35.342709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844528, 35.578598, 35.768852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054001, 35.913857, 35.829868>,  <38.179684, 36.115013, 35.866478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054001, 35.913857, 35.829868>,  <37.844528, 35.578598, 35.768852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054001, 35.913857, 35.829868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318834, -0.358871, 0.877244,
		0.790002, -0.410760, -0.455163,
		0.523682, 0.838145, 0.152544,
		38.211105, 36.165298, 35.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509090, 35.415623, 36.000874>,  <37.844528, 35.578598, 35.768852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509090, 35.415623, 36.000874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455742, 35.789017, 36.134029>,  <38.423733, 36.013054, 36.213924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455742, 35.789017, 36.134029>,  <38.509090, 35.415623, 36.000874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455742, 35.789017, 36.134029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229128, -0.297746, 0.926740,
		0.964216, 0.199875, -0.174177,
		-0.133371, 0.933487, 0.332889,
		38.415730, 36.069061, 36.233894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987717, 35.468597, 36.501614>,  <38.509090, 35.415623, 36.000874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987717, 35.468597, 36.501614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738544, 35.772301, 36.576950>,  <38.589039, 35.954525, 36.622150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738544, 35.772301, 36.576950>,  <38.987717, 35.468597, 36.501614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738544, 35.772301, 36.576950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062184, -0.191940, 0.979435,
		0.779799, 0.621836, 0.072352,
		-0.622935, 0.759263, 0.188342,
		38.551662, 36.000080, 36.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327305, 35.850483, 37.026508>,  <38.987717, 35.468597, 36.501614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327305, 35.850483, 37.026508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941463, 35.955532, 37.036125>,  <38.709961, 36.018562, 37.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941463, 35.955532, 37.036125>,  <39.327305, 35.850483, 37.026508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941463, 35.955532, 37.036125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100874, -0.451668, 0.886465,
		0.243664, 0.852658, 0.462171,
		-0.964599, 0.262621, 0.024044,
		38.652084, 36.034317, 37.043339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260616, 36.161736, 37.617367>,  <39.327305, 35.850483, 37.026508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260616, 36.161736, 37.617367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879456, 36.062023, 37.548267>,  <38.650761, 36.002197, 37.506805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879456, 36.062023, 37.548267>,  <39.260616, 36.161736, 37.617367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879456, 36.062023, 37.548267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058383, -0.408171, 0.911036,
		-0.297617, 0.878211, 0.374392,
		-0.952899, -0.249282, -0.172752,
		38.593586, 35.987240, 37.496441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723267, 36.571983, 38.071175>,  <39.260616, 36.161736, 37.617367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723267, 36.571983, 38.071175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616589, 36.199764, 37.970806>,  <38.552582, 35.976433, 37.910583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616589, 36.199764, 37.970806>,  <38.723267, 36.571983, 38.071175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616589, 36.199764, 37.970806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013263, -0.256783, 0.966378,
		-0.963691, 0.261052, 0.056140,
		-0.266691, -0.930545, -0.250921,
		38.536583, 35.920601, 37.895531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134285, 36.461262, 38.479240>,  <38.723267, 36.571983, 38.071175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134285, 36.461262, 38.479240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310505, 36.113091, 38.391354>,  <38.416237, 35.904186, 38.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310505, 36.113091, 38.391354>,  <38.134285, 36.461262, 38.479240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310505, 36.113091, 38.391354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013951, -0.238077, 0.971146,
		-0.897620, -0.430902, -0.092742,
		0.440548, -0.870427, -0.219714,
		38.442669, 35.851963, 38.325439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974701, 35.991978, 39.094742>,  <38.134285, 36.461262, 38.479240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974701, 35.991978, 39.094742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273918, 35.801701, 38.909641>,  <38.453449, 35.687534, 38.798580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273918, 35.801701, 38.909641>,  <37.974701, 35.991978, 39.094742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273918, 35.801701, 38.909641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290447, -0.392297, 0.872779,
		-0.596714, -0.787285, -0.155292,
		0.748046, -0.475695, -0.462754,
		38.498333, 35.658993, 38.770817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833904, 35.335571, 39.322048>,  <37.974701, 35.991978, 39.094742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833904, 35.335571, 39.322048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212433, 35.406757, 39.214119>,  <38.439548, 35.449467, 39.149361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212433, 35.406757, 39.214119>,  <37.833904, 35.335571, 39.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212433, 35.406757, 39.214119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321388, -0.429078, 0.844157,
		0.034450, -0.885563, -0.463240,
		0.946320, 0.177961, -0.269828,
		38.496330, 35.460144, 39.133171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168755, 34.722809, 39.346752>,  <37.833904, 35.335571, 39.322048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168755, 34.722809, 39.346752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458363, 34.997860, 39.368523>,  <38.632126, 35.162891, 39.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458363, 34.997860, 39.368523>,  <38.168755, 34.722809, 39.346752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458363, 34.997860, 39.368523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372213, -0.455899, 0.808464,
		0.580733, -0.565088, -0.586024,
		0.724021, 0.687627, 0.054423,
		38.675568, 35.204147, 39.384850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686199, 34.413837, 39.458900>,  <38.168755, 34.722809, 39.346752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686199, 34.413837, 39.458900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806423, 34.768452, 39.599590>,  <38.878559, 34.981220, 39.684002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806423, 34.768452, 39.599590>,  <38.686199, 34.413837, 39.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806423, 34.768452, 39.599590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330073, -0.442672, 0.833723,
		0.894826, -0.134493, -0.425674,
		0.300563, 0.886540, 0.351722,
		38.896591, 35.034412, 39.705109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370972, 34.273529, 39.780472>,  <38.686199, 34.413837, 39.458900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370972, 34.273529, 39.780472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260017, 34.625580, 39.934582>,  <39.193443, 34.836811, 40.027046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260017, 34.625580, 39.934582>,  <39.370972, 34.273529, 39.780472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260017, 34.625580, 39.934582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351388, -0.280292, 0.893288,
		0.894194, 0.383168, -0.231515,
		-0.277387, 0.880124, 0.385276,
		39.176800, 34.889618, 40.050163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854485, 34.341763, 40.179756>,  <39.370972, 34.273529, 39.780472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854485, 34.341763, 40.179756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586700, 34.611958, 40.303391>,  <39.426029, 34.774075, 40.377571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586700, 34.611958, 40.303391>,  <39.854485, 34.341763, 40.179756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586700, 34.611958, 40.303391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188159, -0.248323, 0.950228,
		0.718625, 0.694296, 0.039142,
		-0.669459, 0.675492, 0.309088,
		39.385864, 34.814606, 40.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165493, 34.833767, 40.578346>,  <39.854485, 34.341763, 40.179756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165493, 34.833767, 40.578346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784016, 34.841621, 40.698406>,  <39.555130, 34.846333, 40.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784016, 34.841621, 40.698406>,  <40.165493, 34.833767, 40.578346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784016, 34.841621, 40.698406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296154, -0.113171, 0.948412,
		0.052587, 0.993382, 0.102116,
		-0.953691, 0.019632, 0.300145,
		39.497910, 34.847511, 40.788448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103127, 34.934086, 41.372101>,  <40.165493, 34.833767, 40.578346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103127, 34.934086, 41.372101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705307, 34.892433, 41.374161>,  <39.466614, 34.867443, 41.375397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705307, 34.892433, 41.374161>,  <40.103127, 34.934086, 41.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705307, 34.892433, 41.374161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027468, -0.214045, 0.976438,
		-0.100571, 0.971258, 0.215739,
		-0.994551, -0.104128, 0.005152,
		39.406940, 34.861195, 41.375706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678352, 35.292572, 41.879745>,  <40.103127, 34.934086, 41.372101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678352, 35.292572, 41.879745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386539, 35.039093, 41.776825>,  <39.211452, 34.887005, 41.715073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386539, 35.039093, 41.776825>,  <39.678352, 35.292572, 41.879745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386539, 35.039093, 41.776825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349356, 0.021847, 0.936736,
		-0.587987, 0.773271, -0.237325,
		-0.729535, -0.633699, -0.257301,
		39.167679, 34.848984, 41.699635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085735, 35.522968, 42.093613>,  <39.678352, 35.292572, 41.879745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085735, 35.522968, 42.093613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060333, 35.123875, 42.084648>,  <39.045094, 34.884418, 42.079269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060333, 35.123875, 42.084648>,  <39.085735, 35.522968, 42.093613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060333, 35.123875, 42.084648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440462, 0.007866, 0.897737,
		-0.895522, 0.066884, -0.439962,
		-0.063505, -0.997730, -0.022416,
		39.041283, 34.824554, 42.077923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439838, 35.179283, 42.145943>,  <39.085735, 35.522968, 42.093613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439838, 35.179283, 42.145943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641243, 34.849422, 42.249035>,  <38.762085, 34.651505, 42.310890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641243, 34.849422, 42.249035>,  <38.439838, 35.179283, 42.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641243, 34.849422, 42.249035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597903, -0.117246, 0.792947,
		-0.623689, -0.553355, -0.552097,
		0.503512, -0.824653, 0.257728,
		38.792297, 34.602028, 42.326355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961098, 34.716755, 42.471424>,  <38.439838, 35.179283, 42.145943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961098, 34.716755, 42.471424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313534, 34.584732, 42.606918>,  <38.524994, 34.505520, 42.688213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313534, 34.584732, 42.606918>,  <37.961098, 34.716755, 42.471424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313534, 34.584732, 42.606918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412807, -0.187172, 0.891379,
		-0.230799, -0.925220, -0.301163,
		0.881091, -0.330052, 0.338738,
		38.577862, 34.485714, 42.708538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732628, 34.157322, 42.768707>,  <37.961098, 34.716755, 42.471424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732628, 34.157322, 42.768707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080898, 34.270874, 42.929379>,  <38.289860, 34.339005, 43.025780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080898, 34.270874, 42.929379>,  <37.732628, 34.157322, 42.768707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080898, 34.270874, 42.929379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371795, -0.154810, 0.915315,
		0.322024, -0.946280, -0.029244,
		0.870672, 0.283881, 0.401674,
		38.342098, 34.356037, 43.049881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041687, 33.670166, 43.133511>,  <37.732628, 34.157322, 42.768707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041687, 33.670166, 43.133511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167068, 34.013603, 43.295776>,  <38.242298, 34.219666, 43.393135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167068, 34.013603, 43.295776>,  <38.041687, 33.670166, 43.133511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167068, 34.013603, 43.295776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137159, -0.381774, 0.914022,
		0.939647, -0.342141, -0.001903,
		0.313451, 0.858597, 0.405660,
		38.261105, 34.271183, 43.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348351, 33.463425, 43.727547>,  <38.041687, 33.670166, 43.133511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348351, 33.463425, 43.727547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334068, 33.859760, 43.779629>,  <38.325500, 34.097565, 43.810879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334068, 33.859760, 43.779629>,  <38.348351, 33.463425, 43.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334068, 33.859760, 43.779629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085864, -0.132849, 0.987410,
		0.995667, 0.024076, 0.089821,
		-0.035706, 0.990844, 0.130206,
		38.323357, 34.157013, 43.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977749, 33.643471, 44.019672>,  <38.348351, 33.463425, 43.727547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977749, 33.643471, 44.019672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647522, 33.847095, 44.117073>,  <38.449387, 33.969269, 44.175514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647522, 33.847095, 44.117073>,  <38.977749, 33.643471, 44.019672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647522, 33.847095, 44.117073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116296, -0.268755, 0.956162,
		0.552184, 0.817698, 0.162675,
		-0.825571, 0.509059, 0.243497,
		38.399849, 33.999813, 44.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074352, 33.669807, 44.723957>,  <38.977749, 33.643471, 44.019672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074352, 33.669807, 44.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695107, 33.793423, 44.694080>,  <38.467560, 33.867592, 44.676155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695107, 33.793423, 44.694080>,  <39.074352, 33.669807, 44.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695107, 33.793423, 44.694080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188250, -0.356339, 0.915196,
		0.256214, 0.881769, 0.396026,
		-0.948112, 0.309038, -0.074694,
		38.410671, 33.886135, 44.671673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817802, 33.855011, 45.431705>,  <39.074352, 33.669807, 44.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817802, 33.855011, 45.431705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487694, 33.813869, 45.209587>,  <38.289631, 33.789185, 45.076317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487694, 33.813869, 45.209587>,  <38.817802, 33.855011, 45.431705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487694, 33.813869, 45.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378740, -0.628575, 0.679301,
		-0.418910, 0.770919, 0.479790,
		-0.825270, -0.102850, -0.555294,
		38.240112, 33.783016, 45.042999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196056, 34.127663, 45.758045>,  <38.817802, 33.855011, 45.431705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196056, 34.127663, 45.758045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140671, 33.806572, 45.526024>,  <38.107441, 33.613918, 45.386810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140671, 33.806572, 45.526024>,  <38.196056, 34.127663, 45.758045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140671, 33.806572, 45.526024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360880, -0.504531, 0.784355,
		-0.922276, 0.317934, -0.219829,
		-0.138463, -0.802724, -0.580053,
		38.099133, 33.565754, 45.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760517, 33.615200, 46.071396>,  <38.196056, 34.127663, 45.758045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760517, 33.615200, 46.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151852, 33.569038, 46.140144>,  <38.386654, 33.541340, 46.181393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151852, 33.569038, 46.140144>,  <37.760517, 33.615200, 46.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151852, 33.569038, 46.140144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157243, 0.125749, 0.979521,
		-0.134657, -0.985326, 0.104877,
		0.978336, -0.115408, 0.171869,
		38.445354, 33.534416, 46.191704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942505, 33.053608, 46.662685>,  <37.760517, 33.615200, 46.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942505, 33.053608, 46.662685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154835, 33.391541, 46.635902>,  <38.282234, 33.594299, 46.619831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154835, 33.391541, 46.635902>,  <37.942505, 33.053608, 46.662685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154835, 33.391541, 46.635902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252064, 0.232819, 0.939286,
		0.809129, -0.481718, 0.336538,
		0.530823, 0.844833, -0.066957,
		38.314083, 33.644989, 46.615814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695431, 32.605206, 46.173191>,  <37.942505, 33.053608, 46.662685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695431, 32.605206, 46.173191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334301, 32.584377, 46.002449>,  <37.117622, 32.571880, 45.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334301, 32.584377, 46.002449>,  <37.695431, 32.605206, 46.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334301, 32.584377, 46.002449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350125, 0.487285, -0.799979,
		0.249653, -0.871689, -0.421700,
		-0.902821, -0.052070, -0.426853,
		37.063454, 32.568756, 45.874393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831886, 32.500763, 45.452225>,  <37.695431, 32.605206, 46.173191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831886, 32.500763, 45.452225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504765, 32.718639, 45.526535>,  <37.308491, 32.849365, 45.571121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504765, 32.718639, 45.526535>,  <37.831886, 32.500763, 45.452225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504765, 32.718639, 45.526535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201859, 0.573784, -0.793741,
		-0.538936, -0.611623, -0.579193,
		-0.817802, 0.544691, 0.185772,
		37.259422, 32.882046, 45.582268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300304, 32.515995, 44.873711>,  <37.831886, 32.500763, 45.452225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300304, 32.515995, 44.873711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331223, 32.847172, 45.095894>,  <37.349773, 33.045879, 45.229202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331223, 32.847172, 45.095894>,  <37.300304, 32.515995, 44.873711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331223, 32.847172, 45.095894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220430, 0.529145, -0.819400,
		-0.972335, 0.185777, -0.141603,
		0.077297, 0.827945, 0.555457,
		37.354412, 33.095554, 45.262531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560913, 32.975990, 44.393559>,  <37.300304, 32.515995, 44.873711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560913, 32.975990, 44.393559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588387, 33.226139, 44.704479>,  <37.604870, 33.376228, 44.891029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588387, 33.226139, 44.704479>,  <37.560913, 32.975990, 44.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588387, 33.226139, 44.704479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328428, 0.721534, -0.609528,
		-0.942029, 0.297148, -0.155835,
		0.068680, 0.625374, 0.777297,
		37.608990, 33.413750, 44.937668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136417, 33.531033, 44.418911>,  <37.560913, 32.975990, 44.393559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136417, 33.531033, 44.418911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475315, 33.622185, 44.610847>,  <37.678654, 33.676876, 44.726009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475315, 33.622185, 44.610847>,  <37.136417, 33.531033, 44.418911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475315, 33.622185, 44.610847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212377, 0.682671, -0.699183,
		-0.486905, 0.694286, 0.529992,
		0.847242, 0.227878, 0.479846,
		37.729488, 33.690548, 44.754803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138802, 34.194843, 44.510559>,  <37.136417, 33.531033, 44.418911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138802, 34.194843, 44.510559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527046, 34.120274, 44.571426>,  <37.759995, 34.075531, 44.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527046, 34.120274, 44.571426>,  <37.138802, 34.194843, 44.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527046, 34.120274, 44.571426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235840, 0.611285, -0.755454,
		0.047818, 0.769141, 0.637288,
		0.970615, -0.186422, 0.152164,
		37.818230, 34.064346, 44.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394150, 34.790665, 44.505905>,  <37.138802, 34.194843, 44.510559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394150, 34.790665, 44.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691025, 34.537041, 44.419071>,  <37.869148, 34.384865, 44.366970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691025, 34.537041, 44.419071>,  <37.394150, 34.790665, 44.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691025, 34.537041, 44.419071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104736, 0.429663, -0.896895,
		0.661957, 0.642929, 0.385300,
		0.742188, -0.634061, -0.217080,
		37.913681, 34.346821, 44.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808277, 35.261486, 44.166874>,  <37.394150, 34.790665, 44.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808277, 35.261486, 44.166874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959930, 34.901352, 44.081402>,  <38.050922, 34.685272, 44.030117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959930, 34.901352, 44.081402>,  <37.808277, 35.261486, 44.166874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959930, 34.901352, 44.081402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117346, 0.275836, -0.954015,
		0.917869, 0.336629, 0.210230,
		0.379138, -0.900331, -0.213679,
		38.073673, 34.631252, 44.017300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504467, 35.448647, 43.896641>,  <37.808277, 35.261486, 44.166874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504467, 35.448647, 43.896641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400784, 35.089478, 43.754345>,  <38.338573, 34.873978, 43.668968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400784, 35.089478, 43.754345>,  <38.504467, 35.448647, 43.896641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400784, 35.089478, 43.754345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533191, 0.174079, -0.827891,
		0.805306, -0.404275, 0.433640,
		-0.259208, -0.897919, -0.355743,
		38.323021, 34.820103, 43.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996124, 34.889927, 44.002464>,  <38.504467, 35.448647, 43.896641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996124, 34.889927, 44.002464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849583, 34.566452, 43.818371>,  <38.761658, 34.372368, 43.707916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849583, 34.566452, 43.818371>,  <38.996124, 34.889927, 44.002464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849583, 34.566452, 43.818371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365837, 0.329603, -0.870359,
		0.855542, -0.487226, 0.175097,
		-0.366349, -0.808685, -0.460235,
		38.739677, 34.323845, 43.680302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524536, 34.701916, 43.554119>,  <38.996124, 34.889927, 44.002464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524536, 34.701916, 43.554119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188164, 34.550121, 43.399811>,  <38.986340, 34.459045, 43.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188164, 34.550121, 43.399811>,  <39.524536, 34.701916, 43.554119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188164, 34.550121, 43.399811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375458, 0.104217, -0.920961,
		0.389697, -0.919309, 0.054842,
		-0.840933, -0.379487, -0.385776,
		38.935883, 34.436275, 43.284077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700607, 34.115219, 43.171604>,  <39.524536, 34.701916, 43.554119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700607, 34.115219, 43.171604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348251, 34.236065, 43.025856>,  <39.136837, 34.308571, 42.938408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348251, 34.236065, 43.025856>,  <39.700607, 34.115219, 43.171604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348251, 34.236065, 43.025856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317416, -0.193996, -0.928231,
		-0.351118, -0.933323, 0.074992,
		-0.880888, 0.302115, -0.364367,
		39.083984, 34.326698, 42.916546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493668, 33.642773, 42.667091>,  <39.700607, 34.115219, 43.171604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493668, 33.642773, 42.667091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303444, 33.979919, 42.566353>,  <39.189308, 34.182205, 42.505909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303444, 33.979919, 42.566353>,  <39.493668, 33.642773, 42.667091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303444, 33.979919, 42.566353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348190, -0.082552, -0.933782,
		-0.807841, -0.531757, -0.254219,
		-0.475558, 0.842864, -0.251842,
		39.160778, 34.232780, 42.490799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047878, 33.529610, 42.026192>,  <39.493668, 33.642773, 42.667091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047878, 33.529610, 42.026192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089546, 33.926804, 42.048538>,  <39.114548, 34.165119, 42.061947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089546, 33.926804, 42.048538>,  <39.047878, 33.529610, 42.026192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089546, 33.926804, 42.048538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144608, 0.040455, -0.988662,
		-0.983990, 0.111070, -0.139380,
		0.104172, 0.992989, 0.055869,
		39.120796, 34.224701, 42.065300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893471, 33.723164, 41.426262>,  <39.047878, 33.529610, 42.026192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893471, 33.723164, 41.426262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016861, 34.080593, 41.556721>,  <39.090893, 34.295052, 41.634995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016861, 34.080593, 41.556721>,  <38.893471, 33.723164, 41.426262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016861, 34.080593, 41.556721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069837, 0.363217, -0.929084,
		-0.948667, 0.263819, 0.174446,
		0.308471, 0.893573, 0.326147,
		39.109402, 34.348663, 41.654564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414669, 34.162380, 41.136246>,  <38.893471, 33.723164, 41.426262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414669, 34.162380, 41.136246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732540, 34.391842, 41.215652>,  <38.923264, 34.529518, 41.263298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732540, 34.391842, 41.215652>,  <38.414669, 34.162380, 41.136246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732540, 34.391842, 41.215652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125632, 0.475377, -0.870766,
		-0.593886, 0.667040, 0.449841,
		0.794680, 0.573650, 0.198518,
		38.970943, 34.563938, 41.275208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254265, 34.969643, 41.166702>,  <38.414669, 34.162380, 41.136246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254265, 34.969643, 41.166702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630569, 34.929459, 41.037163>,  <38.856354, 34.905346, 40.959438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630569, 34.929459, 41.037163>,  <38.254265, 34.969643, 41.166702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630569, 34.929459, 41.037163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228061, 0.519285, -0.823609,
		0.250911, 0.848675, 0.465611,
		0.940761, -0.100465, -0.323844,
		38.912796, 34.899319, 40.940010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483047, 35.669247, 40.873299>,  <38.254265, 34.969643, 41.166702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483047, 35.669247, 40.873299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740944, 35.407787, 40.714779>,  <38.895679, 35.250912, 40.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740944, 35.407787, 40.714779>,  <38.483047, 35.669247, 40.873299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740944, 35.407787, 40.714779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022990, 0.534795, -0.844669,
		0.764057, 0.535480, 0.359830,
		0.644739, -0.653648, -0.396303,
		38.934364, 35.211693, 40.595886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998730, 36.097748, 40.586910>,  <38.483047, 35.669247, 40.873299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998730, 36.097748, 40.586910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065018, 35.741863, 40.416756>,  <39.104790, 35.528332, 40.314663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065018, 35.741863, 40.416756>,  <38.998730, 36.097748, 40.586910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065018, 35.741863, 40.416756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061961, 0.439888, -0.895913,
		0.984225, 0.122111, 0.128024,
		0.165717, -0.889712, -0.425383,
		39.114735, 35.474949, 40.289143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306328, 36.206211, 39.958153>,  <38.998730, 36.097748, 40.586910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306328, 36.206211, 39.958153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164536, 35.836300, 39.902836>,  <39.079460, 35.614353, 39.869648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164536, 35.836300, 39.902836>,  <39.306328, 36.206211, 39.958153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164536, 35.836300, 39.902836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151122, 0.202608, -0.967529,
		0.922769, -0.322075, -0.211576,
		-0.354484, -0.924780, -0.138288,
		39.058189, 35.558865, 39.861351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709591, 35.969002, 39.450687>,  <39.306328, 36.206211, 39.958153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709591, 35.969002, 39.450687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371914, 35.754669, 39.444817>,  <39.169308, 35.626068, 39.441296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371914, 35.754669, 39.444817>,  <39.709591, 35.969002, 39.450687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371914, 35.754669, 39.444817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038080, 0.087264, -0.995457,
		0.534680, -0.839802, -0.094073,
		-0.844197, -0.535833, -0.014678,
		39.118656, 35.593918, 39.440414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758625, 35.588749, 38.869892>,  <39.709591, 35.969002, 39.450687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758625, 35.588749, 38.869892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370209, 35.547592, 38.956146>,  <39.137161, 35.522900, 39.007900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370209, 35.547592, 38.956146>,  <39.758625, 35.588749, 38.869892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370209, 35.547592, 38.956146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207996, -0.080076, -0.974846,
		0.117570, -0.991464, 0.056356,
		-0.971038, -0.102891, 0.215635,
		39.078896, 35.516724, 39.020836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555538, 35.095577, 38.473316>,  <39.758625, 35.588749, 38.869892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555538, 35.095577, 38.473316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206749, 35.273689, 38.554703>,  <38.997475, 35.380554, 38.603535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206749, 35.273689, 38.554703>,  <39.555538, 35.095577, 38.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206749, 35.273689, 38.554703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250323, -0.048360, -0.966954,
		-0.420721, -0.894087, 0.153631,
		-0.871970, 0.445276, 0.203465,
		38.945160, 35.407272, 38.615742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967392, 34.725220, 38.138046>,  <39.555538, 35.095577, 38.473316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967392, 34.725220, 38.138046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836876, 35.100307, 38.185745>,  <38.758568, 35.325359, 38.214363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836876, 35.100307, 38.185745>,  <38.967392, 34.725220, 38.138046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836876, 35.100307, 38.185745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132357, 0.079582, -0.988002,
		-0.935958, -0.338156, 0.098147,
		-0.326288, 0.937719, 0.119243,
		38.738991, 35.381622, 38.221519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533451, 34.382462, 37.706154>,  <38.967392, 34.725220, 38.138046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533451, 34.382462, 37.706154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759144, 34.083000, 37.845387>,  <39.894562, 33.903324, 37.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759144, 34.083000, 37.845387>,  <39.533451, 34.382462, 37.706154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759144, 34.083000, 37.845387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575195, 0.054000, -0.816232,
		0.592274, 0.660764, 0.461088,
		0.564236, -0.748649, 0.348085,
		39.928413, 33.858406, 37.949814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149414, 34.611191, 37.897747>,  <39.533451, 34.382462, 37.706154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149414, 34.611191, 37.897747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165451, 34.224628, 37.796204>,  <40.175076, 33.992691, 37.735279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165451, 34.224628, 37.796204>,  <40.149414, 34.611191, 37.897747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165451, 34.224628, 37.796204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631498, 0.221400, -0.743096,
		0.774340, -0.130517, 0.619163,
		0.040096, -0.966409, -0.253860,
		40.177479, 33.934704, 37.720047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947933, 34.360897, 38.026020>,  <40.149414, 34.611191, 37.897747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947933, 34.360897, 38.026020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680103, 34.219925, 37.764496>,  <40.519405, 34.135342, 37.607582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680103, 34.219925, 37.764496>,  <40.947933, 34.360897, 38.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680103, 34.219925, 37.764496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459345, 0.495256, -0.737377,
		0.583676, -0.794051, -0.169723,
		-0.669571, -0.352428, -0.653812,
		40.479233, 34.114197, 37.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632259, 34.656662, 38.060276>,  <40.947933, 34.360897, 38.026020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632259, 34.656662, 38.060276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805748, 34.300018, 38.112309>,  <41.909840, 34.086033, 38.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805748, 34.300018, 38.112309>,  <41.632259, 34.656662, 38.060276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805748, 34.300018, 38.112309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872015, 0.378993, -0.309764,
		0.226889, 0.247783, 0.941873,
		0.433718, -0.891610, 0.130082,
		41.935863, 34.032536, 38.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177635, 34.557911, 38.534065>,  <41.632259, 34.656662, 38.060276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177635, 34.557911, 38.534065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226780, 34.328999, 38.209743>,  <42.256268, 34.191650, 38.015152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226780, 34.328999, 38.209743>,  <42.177635, 34.557911, 38.534065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226780, 34.328999, 38.209743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752646, 0.586244, -0.299737,
		0.646862, -0.573423, 0.502749,
		0.122857, -0.572280, -0.810803,
		42.263638, 34.157314, 37.966503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883198, 34.282707, 38.421223>,  <42.177635, 34.557911, 38.534065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883198, 34.282707, 38.421223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680000, 34.317818, 38.078472>,  <42.558083, 34.338882, 37.872822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680000, 34.317818, 38.078472>,  <42.883198, 34.282707, 38.421223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680000, 34.317818, 38.078472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774520, 0.481840, -0.409816,
		0.376907, -0.871852, -0.312755,
		-0.507997, 0.087772, -0.856876,
		42.527603, 34.344151, 37.821411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198818, 34.090755, 37.786236>,  <42.883198, 34.282707, 38.421223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198818, 34.090755, 37.786236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947334, 34.391262, 37.705917>,  <42.796444, 34.571568, 37.657726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947334, 34.391262, 37.705917>,  <43.198818, 34.090755, 37.786236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947334, 34.391262, 37.705917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746213, 0.510174, -0.427654,
		-0.218842, -0.418707, -0.881358,
		-0.628708, 0.751270, -0.200797,
		42.758720, 34.616642, 37.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123409, 34.221668, 37.068436>,  <43.198818, 34.090755, 37.786236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123409, 34.221668, 37.068436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074978, 34.542980, 37.301701>,  <43.045918, 34.735767, 37.441658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074978, 34.542980, 37.301701>,  <43.123409, 34.221668, 37.068436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074978, 34.542980, 37.301701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653843, 0.506569, -0.562029,
		-0.746880, 0.313245, -0.586556,
		-0.121079, 0.803284, 0.583159,
		43.038654, 34.783966, 37.476650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826073, 34.776199, 36.791428>,  <43.123409, 34.221668, 37.068436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826073, 34.776199, 36.791428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068176, 34.956913, 37.053589>,  <43.213440, 35.065342, 37.210884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068176, 34.956913, 37.053589>,  <42.826073, 34.776199, 36.791428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068176, 34.956913, 37.053589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515040, 0.405519, -0.755174,
		-0.606952, 0.794636, 0.012759,
		0.605263, 0.451783, 0.655400,
		43.249756, 35.092449, 37.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712017, 35.404709, 36.745426>,  <42.826073, 34.776199, 36.791428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712017, 35.404709, 36.745426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091457, 35.361347, 36.864357>,  <43.319122, 35.335331, 36.935715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091457, 35.361347, 36.864357>,  <42.712017, 35.404709, 36.745426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091457, 35.361347, 36.864357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304966, 0.564157, -0.767283,
		-0.084568, 0.818521, 0.568218,
		0.948601, -0.108399, 0.297331,
		43.376038, 35.328827, 36.953556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188114, 36.061394, 36.756393>,  <42.712017, 35.404709, 36.745426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188114, 36.061394, 36.756393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417900, 35.743511, 36.677975>,  <43.555771, 35.552780, 36.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417900, 35.743511, 36.677975>,  <43.188114, 36.061394, 36.756393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417900, 35.743511, 36.677975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412914, 0.488158, -0.768898,
		0.706748, 0.360755, 0.608574,
		0.574464, -0.794706, -0.196045,
		43.590240, 35.505100, 36.619160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967236, 36.221870, 36.869968>,  <43.188114, 36.061394, 36.756393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967236, 36.221870, 36.869968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889755, 35.951305, 36.585728>,  <43.843269, 35.788967, 36.415184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889755, 35.951305, 36.585728>,  <43.967236, 36.221870, 36.869968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889755, 35.951305, 36.585728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226518, 0.673910, -0.703231,
		0.954553, -0.297177, 0.022684,
		-0.193697, -0.676410, -0.710599,
		43.831646, 35.748383, 36.372547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356396, 36.640057, 36.363377>,  <43.967236, 36.221870, 36.869968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356396, 36.640057, 36.363377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233864, 36.288109, 36.218048>,  <44.160347, 36.076942, 36.130852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233864, 36.288109, 36.218048>,  <44.356396, 36.640057, 36.363377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233864, 36.288109, 36.218048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537675, 0.155030, -0.828777,
		0.785538, -0.449222, 0.425593,
		-0.306325, -0.879867, -0.363318,
		44.141968, 36.024147, 36.109055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950207, 36.093708, 36.334419>,  <44.356396, 36.640057, 36.363377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950207, 36.093708, 36.334419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673798, 36.104385, 36.045483>,  <44.507954, 36.110790, 35.872120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673798, 36.104385, 36.045483>,  <44.950207, 36.093708, 36.334419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673798, 36.104385, 36.045483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720354, 0.108116, -0.685128,
		0.059807, -0.993780, -0.093941,
		-0.691023, 0.026695, -0.722340,
		44.466492, 36.112392, 35.828781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128746, 35.506168, 35.949581>,  <44.950207, 36.093708, 36.334419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128746, 35.506168, 35.949581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917671, 35.756020, 35.719318>,  <44.791027, 35.905930, 35.581161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917671, 35.756020, 35.719318>,  <45.128746, 35.506168, 35.949581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917671, 35.756020, 35.719318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708641, -0.049964, -0.703798,
		-0.468377, -0.779319, -0.416275,
		-0.527685, 0.624632, -0.575659,
		44.759365, 35.943409, 35.546619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553349, 35.621399, 35.474869>,  <45.128746, 35.506168, 35.949581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553349, 35.621399, 35.474869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283302, 35.871269, 35.317902>,  <45.121273, 36.021191, 35.223721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283302, 35.871269, 35.317902>,  <45.553349, 35.621399, 35.474869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283302, 35.871269, 35.317902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663507, 0.281654, -0.693130,
		-0.322457, -0.728317, -0.604629,
		-0.675115, 0.624680, -0.392422,
		45.080769, 36.058674, 35.200176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041679, 35.605812, 36.128754>,  <45.553349, 35.621399, 35.474869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041679, 35.605812, 36.128754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180565, 35.674545, 35.759991>,  <46.263897, 35.715786, 35.538731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180565, 35.674545, 35.759991>,  <46.041679, 35.605812, 36.128754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180565, 35.674545, 35.759991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838551, -0.497014, 0.223182,
		-0.419853, -0.850560, -0.316657,
		0.347213, 0.171829, -0.921910,
		46.284729, 35.726093, 35.483418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219944, 34.997566, 35.749668>,  <46.041679, 35.605812, 36.128754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219944, 34.997566, 35.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459881, 35.305904, 35.663898>,  <46.603844, 35.490910, 35.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459881, 35.305904, 35.663898>,  <46.219944, 34.997566, 35.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459881, 35.305904, 35.663898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799925, -0.583612, 0.139702,
		-0.017449, -0.255320, -0.966699,
		0.599846, 0.770849, -0.214421,
		46.639835, 35.537159, 35.599571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618828, 34.808338, 35.170265>,  <46.219944, 34.997566, 35.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618828, 34.808338, 35.170265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801826, 35.064323, 35.417213>,  <46.911625, 35.217915, 35.565380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801826, 35.064323, 35.417213>,  <46.618828, 34.808338, 35.170265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801826, 35.064323, 35.417213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761107, -0.640830, 0.100266,
		0.459795, 0.424012, -0.780258,
		0.457498, 0.639962, 0.617369,
		46.939075, 35.256313, 35.602425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246502, 35.082699, 34.890781>,  <46.618828, 34.808338, 35.170265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246502, 35.082699, 34.890781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 35.047245, 35.289040>,  <47.227970, 35.025970, 35.527992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 35.047245, 35.289040>,  <47.246502, 35.082699, 34.890781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234921, 35.047245, 35.289040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826517, -0.562310, -0.026026,
		0.562167, 0.822163, 0.089541,
		-0.028952, -0.088638, 0.995643,
		47.226234, 35.020653, 35.587734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913818, 35.250557, 35.056637>,  <47.246502, 35.082699, 34.890781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913818, 35.250557, 35.056637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745903, 35.029457, 35.344597>,  <47.645153, 34.896797, 35.517372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745903, 35.029457, 35.344597>,  <47.913818, 35.250557, 35.056637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745903, 35.029457, 35.344597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722739, -0.683364, -0.103254,
		0.549026, 0.476954, 0.686356,
		-0.419784, -0.552746, 0.719898,
		47.619968, 34.863632, 35.560566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.335037, 31.321444, 29.068302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013767, 31.552153, 29.008633>,  <35.821007, 31.690578, 28.972832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013767, 31.552153, 29.008633>,  <36.335037, 31.321444, 29.068302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013767, 31.552153, 29.008633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205697, -0.033485, 0.978043,
		0.559111, 0.816220, 0.145534,
		-0.803171, 0.576771, -0.149172,
		35.772816, 31.725183, 28.963881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356689, 31.898161, 29.518696>,  <36.335037, 31.321444, 29.068302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356689, 31.898161, 29.518696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968018, 31.845383, 29.440279>,  <35.734814, 31.813715, 29.393229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968018, 31.845383, 29.440279>,  <36.356689, 31.898161, 29.518696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968018, 31.845383, 29.440279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189034, -0.063811, 0.979895,
		-0.141803, 0.989201, 0.037061,
		-0.971678, -0.131947, -0.196041,
		35.676514, 31.805799, 29.381466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068199, 32.393528, 29.909376>,  <36.356689, 31.898161, 29.518696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068199, 32.393528, 29.909376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754604, 32.158119, 29.830379>,  <35.566448, 32.016872, 29.782982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754604, 32.158119, 29.830379>,  <36.068199, 32.393528, 29.909376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754604, 32.158119, 29.830379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411997, 0.255320, 0.874682,
		-0.464345, 0.767108, -0.442638,
		-0.783991, -0.588520, -0.197490,
		35.519405, 31.981564, 29.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470341, 32.843102, 30.027836>,  <36.068199, 32.393528, 29.909376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470341, 32.843102, 30.027836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382332, 32.453720, 30.053072>,  <35.329525, 32.220093, 30.068214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382332, 32.453720, 30.053072>,  <35.470341, 32.843102, 30.027836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382332, 32.453720, 30.053072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562330, 0.179417, 0.807214,
		-0.797104, 0.142127, -0.586877,
		-0.220022, -0.973453, 0.063091,
		35.316326, 32.161686, 30.071999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790321, 32.896912, 30.193840>,  <35.470341, 32.843102, 30.027836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790321, 32.896912, 30.193840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922085, 32.534447, 30.299946>,  <35.001141, 32.316967, 30.363609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922085, 32.534447, 30.299946>,  <34.790321, 32.896912, 30.193840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922085, 32.534447, 30.299946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263854, 0.181409, 0.947350,
		-0.906573, -0.382053, -0.179337,
		0.329405, -0.906160, 0.265267,
		35.020905, 32.262600, 30.379526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272785, 32.740570, 30.623478>,  <34.790321, 32.896912, 30.193840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272785, 32.740570, 30.623478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 32.482147, 30.717714>,  <34.737434, 32.327091, 30.774256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 32.482147, 30.717714>,  <34.272785, 32.740570, 30.623478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563190, 32.482147, 30.717714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066433, 0.275097, 0.959118,
		-0.684460, -0.711988, 0.156806,
		0.726017, -0.646061, 0.235592,
		34.780994, 32.288330, 30.788391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065517, 32.369991, 31.226063>,  <34.272785, 32.740570, 30.623478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065517, 32.369991, 31.226063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456154, 32.286816, 31.248064>,  <34.690536, 32.236908, 31.261265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456154, 32.286816, 31.248064>,  <34.065517, 32.369991, 31.226063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456154, 32.286816, 31.248064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014376, 0.192046, 0.981281,
		-0.214612, -0.959103, 0.184561,
		0.976594, -0.207941, 0.055003,
		34.749130, 32.224434, 31.264565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142963, 32.009918, 31.819489>,  <34.065517, 32.369991, 31.226063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142963, 32.009918, 31.819489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.491890, 32.189556, 31.742155>,  <34.701244, 32.297340, 31.695755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.491890, 32.189556, 31.742155>,  <34.142963, 32.009918, 31.819489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491890, 32.189556, 31.742155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135930, 0.157079, 0.978187,
		0.469671, -0.879566, 0.075976,
		0.872314, 0.449098, -0.193334,
		34.753586, 32.324284, 31.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605396, 31.795813, 32.377762>,  <34.142963, 32.009918, 31.819489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605396, 31.795813, 32.377762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774498, 32.108562, 32.194477>,  <34.875957, 32.296211, 32.084507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774498, 32.108562, 32.194477>,  <34.605396, 31.795813, 32.377762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774498, 32.108562, 32.194477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275887, 0.370578, 0.886881,
		0.863231, -0.501345, -0.059046,
		0.422752, 0.781873, -0.458209,
		34.901325, 32.343124, 32.057014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253384, 31.871889, 32.612144>,  <34.605396, 31.795813, 32.377762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253384, 31.871889, 32.612144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169708, 32.242222, 32.486237>,  <35.119503, 32.464420, 32.410690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169708, 32.242222, 32.486237>,  <35.253384, 31.871889, 32.612144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169708, 32.242222, 32.486237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297274, 0.366864, 0.881498,
		0.931595, 0.090825, -0.351969,
		-0.209187, 0.925830, -0.314769,
		35.106953, 32.519970, 32.391808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730824, 32.245083, 33.024818>,  <35.253384, 31.871889, 32.612144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730824, 32.245083, 33.024818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470753, 32.521526, 32.898556>,  <35.314713, 32.687393, 32.822800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470753, 32.521526, 32.898556>,  <35.730824, 32.245083, 33.024818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470753, 32.521526, 32.898556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215624, 0.566208, 0.795560,
		0.728547, 0.449190, -0.517154,
		-0.650174, 0.691113, -0.315653,
		35.275700, 32.728859, 32.803860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993637, 32.887005, 33.209080>,  <35.730824, 32.245083, 33.024818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993637, 32.887005, 33.209080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605328, 32.957737, 33.144176>,  <35.372341, 33.000175, 33.105232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605328, 32.957737, 33.144176>,  <35.993637, 32.887005, 33.209080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605328, 32.957737, 33.144176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014310, 0.717544, 0.696366,
		0.239571, 0.673692, -0.699103,
		-0.970773, 0.176833, -0.162262,
		35.314095, 33.010788, 33.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941128, 33.676174, 33.202583>,  <35.993637, 32.887005, 33.209080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941128, 33.676174, 33.202583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601112, 33.491596, 33.304176>,  <35.397102, 33.380848, 33.365131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601112, 33.491596, 33.304176>,  <35.941128, 33.676174, 33.202583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601112, 33.491596, 33.304176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133452, 0.655141, 0.743627,
		-0.509539, 0.598214, -0.618474,
		-0.850036, -0.461444, 0.253987,
		35.346100, 33.353165, 33.380371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463078, 34.212429, 33.410988>,  <35.941128, 33.676174, 33.202583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463078, 34.212429, 33.410988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294353, 33.881294, 33.558914>,  <35.193119, 33.682613, 33.647671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294353, 33.881294, 33.558914>,  <35.463078, 34.212429, 33.410988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294353, 33.881294, 33.558914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015690, 0.401148, 0.915879,
		-0.906547, 0.392132, -0.156221,
		-0.421813, -0.827836, 0.369812,
		35.167809, 33.632942, 33.669857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944199, 34.371246, 33.929447>,  <35.463078, 34.212429, 33.410988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944199, 34.371246, 33.929447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024704, 33.991772, 34.027012>,  <35.073006, 33.764088, 34.085552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024704, 33.991772, 34.027012>,  <34.944199, 34.371246, 33.929447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024704, 33.991772, 34.027012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079682, 0.232325, 0.969369,
		-0.976291, -0.214534, -0.028835,
		0.201263, -0.948684, 0.243911,
		35.085083, 33.707165, 34.100185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435520, 34.210667, 34.521732>,  <34.944199, 34.371246, 33.929447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435520, 34.210667, 34.521732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718914, 33.930756, 34.558300>,  <34.888950, 33.762810, 34.580238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718914, 33.930756, 34.558300>,  <34.435520, 34.210667, 34.521732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718914, 33.930756, 34.558300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071515, 0.057677, 0.995771,
		-0.702090, -0.712029, -0.009181,
		0.708488, -0.699777, 0.091415,
		34.931461, 33.720821, 34.585724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144058, 33.709961, 34.991272>,  <34.435520, 34.210667, 34.521732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144058, 33.709961, 34.991272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542618, 33.681187, 34.973305>,  <34.781754, 33.663921, 34.962524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542618, 33.681187, 34.973305>,  <34.144058, 33.709961, 34.991272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542618, 33.681187, 34.973305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043818, -0.016842, 0.998898,
		-0.072614, -0.997267, -0.013630,
		0.996397, -0.071937, -0.044921,
		34.841537, 33.659607, 34.959827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200867, 33.345985, 35.482826>,  <34.144058, 33.709961, 34.991272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200867, 33.345985, 35.482826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586193, 33.444355, 35.439857>,  <34.817390, 33.503376, 35.414074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586193, 33.444355, 35.439857>,  <34.200867, 33.345985, 35.482826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586193, 33.444355, 35.439857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145413, -0.141884, 0.979145,
		0.225557, -0.958848, -0.172440,
		0.963317, 0.245928, -0.107426,
		34.875187, 33.518135, 35.407631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675964, 32.784374, 35.746971>,  <34.200867, 33.345985, 35.482826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675964, 32.784374, 35.746971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857548, 33.140331, 35.764893>,  <34.966499, 33.353905, 35.775646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857548, 33.140331, 35.764893>,  <34.675964, 32.784374, 35.746971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857548, 33.140331, 35.764893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097903, -0.099799, 0.990179,
		0.885626, -0.445118, -0.132428,
		0.453963, 0.889893, 0.044806,
		34.993736, 33.407299, 35.778336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155735, 32.657024, 36.178356>,  <34.675964, 32.784374, 35.746971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155735, 32.657024, 36.178356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138103, 33.056622, 36.181763>,  <35.127525, 33.296379, 36.183807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138103, 33.056622, 36.181763>,  <35.155735, 32.657024, 36.178356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138103, 33.056622, 36.181763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152251, -0.001704, 0.988340,
		0.987358, 0.044866, -0.152022,
		-0.044083, 0.998992, 0.008513,
		35.124878, 33.356319, 36.184319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691101, 32.931854, 36.638035>,  <35.155735, 32.657024, 36.178356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691101, 32.931854, 36.638035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410049, 33.216446, 36.634014>,  <35.241417, 33.387203, 36.631599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410049, 33.216446, 36.634014>,  <35.691101, 32.931854, 36.638035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410049, 33.216446, 36.634014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140559, 0.152636, 0.978236,
		0.697532, 0.685927, -0.207252,
		-0.702632, 0.711482, -0.010055,
		35.199261, 33.429890, 36.630997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844090, 33.595119, 36.868496>,  <35.691101, 32.931854, 36.638035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844090, 33.595119, 36.868496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153023, 33.803619, 37.013714>,  <36.338383, 33.928719, 37.100845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153023, 33.803619, 37.013714>,  <35.844090, 33.595119, 36.868496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153023, 33.803619, 37.013714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465819, -0.076181, -0.881595,
		-0.431877, 0.849995, -0.301646,
		0.772331, 0.521253, 0.363043,
		36.384724, 33.959995, 37.122627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982227, 34.181576, 36.390125>,  <35.844090, 33.595119, 36.868496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982227, 34.181576, 36.390125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308441, 34.101665, 36.607376>,  <36.504169, 34.053719, 36.737728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308441, 34.101665, 36.607376>,  <35.982227, 34.181576, 36.390125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308441, 34.101665, 36.607376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517689, -0.167622, -0.838988,
		0.258647, 0.965398, -0.033283,
		0.815537, -0.199771, 0.543131,
		36.553101, 34.041733, 36.770317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469563, 34.658783, 36.098022>,  <35.982227, 34.181576, 36.390125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469563, 34.658783, 36.098022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670074, 34.358742, 36.270565>,  <36.790382, 34.178719, 36.374088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670074, 34.358742, 36.270565>,  <36.469563, 34.658783, 36.098022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670074, 34.358742, 36.270565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398123, -0.242670, -0.884652,
		0.768256, 0.615189, 0.176988,
		0.501279, -0.750102, 0.431354,
		36.820457, 34.133713, 36.399971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077171, 34.778179, 35.848064>,  <36.469563, 34.658783, 36.098022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077171, 34.778179, 35.848064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103386, 34.401176, 35.979145>,  <37.119114, 34.174976, 36.057793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103386, 34.401176, 35.979145>,  <37.077171, 34.778179, 35.848064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103386, 34.401176, 35.979145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555726, -0.238289, -0.796485,
		0.828779, 0.234314, 0.508157,
		0.065539, -0.942505, 0.327703,
		37.123047, 34.118423, 36.077457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735790, 34.580875, 36.001534>,  <37.077171, 34.778179, 35.848064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735790, 34.580875, 36.001534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563404, 34.226460, 35.933182>,  <37.459972, 34.013809, 35.892170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563404, 34.226460, 35.933182>,  <37.735790, 34.580875, 36.001534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563404, 34.226460, 35.933182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579796, -0.126788, -0.804836,
		0.691455, -0.445928, 0.568365,
		-0.430961, -0.886044, -0.170879,
		37.434116, 33.960648, 35.881920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309422, 34.231155, 35.877174>,  <37.735790, 34.580875, 36.001534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309422, 34.231155, 35.877174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040150, 33.972782, 35.733173>,  <37.878586, 33.817757, 35.646770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040150, 33.972782, 35.733173>,  <38.309422, 34.231155, 35.877174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040150, 33.972782, 35.733173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595458, -0.184826, -0.781837,
		0.438475, -0.740683, 0.509046,
		-0.673178, -0.645932, -0.360004,
		37.838196, 33.779003, 35.625172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740009, 33.715012, 35.618145>,  <38.309422, 34.231155, 35.877174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740009, 33.715012, 35.618145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387947, 33.613770, 35.457516>,  <38.176708, 33.553024, 35.361137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387947, 33.613770, 35.457516>,  <38.740009, 33.715012, 35.618145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387947, 33.613770, 35.457516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457223, -0.224705, -0.860497,
		0.127565, -0.940980, 0.313503,
		-0.880156, -0.253110, -0.401574,
		38.123901, 33.537838, 35.337044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816872, 33.071125, 35.279400>,  <38.740009, 33.715012, 35.618145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816872, 33.071125, 35.279400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494179, 33.233746, 35.107868>,  <38.300564, 33.331318, 35.004948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494179, 33.233746, 35.107868>,  <38.816872, 33.071125, 35.279400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494179, 33.233746, 35.107868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376457, -0.205775, -0.903292,
		-0.455475, -0.890154, 0.012958,
		-0.806736, 0.406549, -0.428830,
		38.252159, 33.355709, 34.979218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504078, 32.512650, 34.849514>,  <38.816872, 33.071125, 35.279400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504078, 32.512650, 34.849514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371628, 32.860748, 34.703621>,  <38.292160, 33.069607, 34.616085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371628, 32.860748, 34.703621>,  <38.504078, 32.512650, 34.849514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371628, 32.860748, 34.703621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417080, -0.211744, -0.883860,
		-0.846406, -0.444789, -0.292849,
		-0.331122, 0.870246, -0.364734,
		38.272289, 33.121822, 34.594200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237728, 32.329956, 34.191566>,  <38.504078, 32.512650, 34.849514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237728, 32.329956, 34.191566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302486, 32.724468, 34.178661>,  <38.341343, 32.961174, 34.170918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302486, 32.724468, 34.178661>,  <38.237728, 32.329956, 34.191566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302486, 32.724468, 34.178661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475345, -0.106596, -0.873318,
		-0.864775, 0.126051, -0.486081,
		0.161897, 0.986280, -0.032264,
		38.351055, 33.020351, 34.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076584, 32.491653, 33.521351>,  <38.237728, 32.329956, 34.191566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076584, 32.491653, 33.521351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319656, 32.775448, 33.664097>,  <38.465500, 32.945724, 33.749744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319656, 32.775448, 33.664097>,  <38.076584, 32.491653, 33.521351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319656, 32.775448, 33.664097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559810, -0.063938, -0.826151,
		-0.563323, 0.701816, -0.436029,
		0.607685, 0.709483, 0.356866,
		38.501961, 32.988293, 33.771156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294701, 32.881210, 32.921638>,  <38.076584, 32.491653, 33.521351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294701, 32.881210, 32.921638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556114, 32.994556, 33.202381>,  <38.712963, 33.062565, 33.370827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556114, 32.994556, 33.202381>,  <38.294701, 32.881210, 32.921638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556114, 32.994556, 33.202381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734724, -0.014676, -0.678207,
		-0.181877, 0.958901, -0.217783,
		0.653530, 0.283361, 0.701859,
		38.752174, 33.079563, 33.412937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694763, 33.358665, 32.588036>,  <38.294701, 32.881210, 32.921638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694763, 33.358665, 32.588036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887360, 33.234261, 32.915798>,  <39.002918, 33.159618, 33.112457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887360, 33.234261, 32.915798>,  <38.694763, 33.358665, 32.588036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887360, 33.234261, 32.915798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844987, -0.083524, -0.528225,
		0.232725, 0.946728, 0.222586,
		0.481494, -0.311013, 0.819411,
		39.031807, 33.140957, 33.161621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501766, 33.309887, 32.824730>,  <38.694763, 33.358665, 32.588036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501766, 33.309887, 32.824730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600433, 32.923157, 32.798157>,  <39.659634, 32.691120, 32.782211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600433, 32.923157, 32.798157>,  <39.501766, 33.309887, 32.824730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600433, 32.923157, 32.798157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258257, 0.000495, -0.966076,
		0.934056, 0.255455, -0.249566,
		0.246665, -0.966821, -0.066435,
		39.674435, 32.633110, 32.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906727, 33.213863, 32.217388>,  <39.501766, 33.309887, 32.824730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906727, 33.213863, 32.217388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757450, 32.845028, 32.258316>,  <39.667885, 32.623726, 32.282875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757450, 32.845028, 32.258316>,  <39.906727, 33.213863, 32.217388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757450, 32.845028, 32.258316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225753, -0.016718, -0.974041,
		0.899867, -0.386606, -0.201927,
		-0.373194, -0.922093, 0.102322,
		39.645493, 32.568401, 32.289013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121990, 32.942131, 31.671329>,  <39.906727, 33.213863, 32.217388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121990, 32.942131, 31.671329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815544, 32.717453, 31.796276>,  <39.631676, 32.582645, 31.871244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815544, 32.717453, 31.796276>,  <40.121990, 32.942131, 31.671329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815544, 32.717453, 31.796276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232737, -0.210576, -0.949469,
		0.599086, -0.800100, 0.030599,
		-0.766113, -0.561692, 0.312366,
		39.585709, 32.548946, 31.889986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176552, 32.398323, 31.209694>,  <40.121990, 32.942131, 31.671329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176552, 32.398323, 31.209694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808247, 32.379803, 31.364639>,  <39.587261, 32.368690, 31.457605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808247, 32.379803, 31.364639>,  <40.176552, 32.398323, 31.209694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808247, 32.379803, 31.364639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360858, -0.276211, -0.890780,
		0.148236, -0.959981, 0.237618,
		-0.920764, -0.046299, 0.387361,
		39.532017, 32.365913, 31.480848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014797, 31.882790, 30.938351>,  <40.176552, 32.398323, 31.209694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014797, 31.882790, 30.938351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.676662, 32.065063, 31.049889>,  <39.473782, 32.174427, 31.116812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.676662, 32.065063, 31.049889>,  <40.014797, 31.882790, 30.938351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676662, 32.065063, 31.049889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415885, -0.233699, -0.878877,
		-0.335327, -0.858915, 0.387068,
		-0.845338, 0.455687, 0.278844,
		39.423061, 32.201767, 31.133543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497513, 31.435055, 30.677485>,  <40.014797, 31.882790, 30.938351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497513, 31.435055, 30.677485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329056, 31.796024, 30.713858>,  <39.227982, 32.012608, 30.735682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329056, 31.796024, 30.713858>,  <39.497513, 31.435055, 30.677485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329056, 31.796024, 30.713858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392604, -0.091001, -0.915194,
		-0.817617, -0.421132, 0.392619,
		-0.421147, 0.902422, 0.090934,
		39.202713, 32.066750, 30.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.844837, 31.247805, 30.460241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866467, 31.646660, 30.439123>,  <38.879444, 31.885973, 30.426453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866467, 31.646660, 30.439123>,  <38.844837, 31.247805, 30.460241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866467, 31.646660, 30.439123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403305, -0.026557, -0.914680,
		-0.913466, 0.070755, 0.400715,
		0.054076, 0.997140, -0.052795,
		38.882690, 31.945803, 30.423285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186314, 31.396048, 30.102880>,  <38.844837, 31.247805, 30.460241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186314, 31.396048, 30.102880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435226, 31.707926, 30.075069>,  <38.584576, 31.895054, 30.058382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435226, 31.707926, 30.075069>,  <38.186314, 31.396048, 30.102880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435226, 31.707926, 30.075069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346011, 0.194304, -0.917890,
		-0.702167, 0.595246, 0.390696,
		0.622285, 0.779697, -0.069528,
		38.621910, 31.941835, 30.054211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688244, 31.933414, 29.938454>,  <38.186314, 31.396048, 30.102880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688244, 31.933414, 29.938454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055885, 32.039433, 29.821836>,  <38.276470, 32.103043, 29.751867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055885, 32.039433, 29.821836>,  <37.688244, 31.933414, 29.938454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055885, 32.039433, 29.821836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369282, 0.321455, -0.871950,
		-0.137388, 0.909075, 0.393327,
		0.919106, 0.265044, -0.291541,
		38.331615, 32.118946, 29.734375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565746, 32.563461, 29.554144>,  <37.688244, 31.933414, 29.938454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565746, 32.563461, 29.554144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912998, 32.398930, 29.443033>,  <38.121349, 32.300213, 29.376368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912998, 32.398930, 29.443033>,  <37.565746, 32.563461, 29.554144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912998, 32.398930, 29.443033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194305, 0.233340, -0.952784,
		0.456721, 0.881115, 0.122647,
		0.868131, -0.411326, -0.277776,
		38.173439, 32.275532, 29.359701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842739, 33.024090, 29.037729>,  <37.565746, 32.563461, 29.554144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842739, 33.024090, 29.037729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061775, 32.694077, 28.981932>,  <38.193199, 32.496067, 28.948452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061775, 32.694077, 28.981932>,  <37.842739, 33.024090, 29.037729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061775, 32.694077, 28.981932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049771, 0.134300, -0.989690,
		0.835263, 0.548891, 0.032478,
		0.547593, -0.825035, -0.139495,
		38.226051, 32.446568, 28.940083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376835, 33.194290, 28.632824>,  <37.842739, 33.024090, 29.037729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376835, 33.194290, 28.632824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397350, 32.799698, 28.570564>,  <38.409660, 32.562943, 28.533209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397350, 32.799698, 28.570564>,  <38.376835, 33.194290, 28.632824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397350, 32.799698, 28.570564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199807, 0.162839, -0.966209,
		0.978492, 0.018454, 0.205457,
		0.051287, -0.986480, -0.155649,
		38.412735, 32.503754, 28.523870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005241, 33.090218, 28.236776>,  <38.376835, 33.194290, 28.632824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005241, 33.090218, 28.236776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.783463, 32.761604, 28.183598>,  <38.650394, 32.564438, 28.151690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.783463, 32.761604, 28.183598>,  <39.005241, 33.090218, 28.236776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783463, 32.761604, 28.183598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304497, -0.051585, -0.951115,
		0.774511, -0.567828, 0.278755,
		-0.554450, -0.821529, -0.132949,
		38.617126, 32.515144, 28.143713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432568, 32.531425, 27.986967>,  <39.005241, 33.090218, 28.236776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432568, 32.531425, 27.986967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054184, 32.459431, 27.879070>,  <38.827152, 32.416233, 27.814331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054184, 32.459431, 27.879070>,  <39.432568, 32.531425, 27.986967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054184, 32.459431, 27.879070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278796, -0.026561, -0.959983,
		0.165621, -0.983310, 0.075305,
		-0.945961, -0.179989, -0.269744,
		38.770397, 32.405434, 27.798147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453552, 31.932880, 27.554842>,  <39.432568, 32.531425, 27.986967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453552, 31.932880, 27.554842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108456, 32.116642, 27.470348>,  <38.901398, 32.226898, 27.419653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108456, 32.116642, 27.470348>,  <39.453552, 31.932880, 27.554842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108456, 32.116642, 27.470348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216642, -0.041624, -0.975363,
		-0.456877, -0.887252, -0.063615,
		-0.862746, 0.459403, -0.211234,
		38.849632, 32.254463, 27.406979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336594, 31.560272, 26.933455>,  <39.453552, 31.932880, 27.554842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336594, 31.560272, 26.933455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073593, 31.861591, 26.927347>,  <38.915791, 32.042381, 26.923683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073593, 31.861591, 26.927347>,  <39.336594, 31.560272, 26.933455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073593, 31.861591, 26.927347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193918, 0.149609, -0.969543,
		-0.728070, -0.640438, -0.244446,
		-0.657503, 0.753297, -0.015267,
		38.876343, 32.087582, 26.922768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805580, 31.419046, 26.445335>,  <39.336594, 31.560272, 26.933455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805580, 31.419046, 26.445335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833157, 31.814917, 26.495594>,  <38.849701, 32.052441, 26.525749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833157, 31.814917, 26.495594>,  <38.805580, 31.419046, 26.445335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833157, 31.814917, 26.495594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079093, 0.120128, -0.989603,
		-0.994481, 0.078158, -0.069995,
		0.068937, 0.989677, 0.125647,
		38.853836, 32.111820, 26.533289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533325, 31.563683, 25.849360>,  <38.805580, 31.419046, 26.445335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533325, 31.563683, 25.849360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699268, 31.899763, 25.989046>,  <38.798836, 32.101410, 26.072859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699268, 31.899763, 25.989046>,  <38.533325, 31.563683, 25.849360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699268, 31.899763, 25.989046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296942, 0.237768, -0.924820,
		-0.860067, 0.487370, -0.150850,
		0.414862, 0.840201, 0.349217,
		38.823727, 32.151825, 26.093811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227177, 32.158928, 25.504412>,  <38.533325, 31.563683, 25.849360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227177, 32.158928, 25.504412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566982, 32.313557, 25.648012>,  <38.770866, 32.406334, 25.734173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566982, 32.313557, 25.648012>,  <38.227177, 32.158928, 25.504412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566982, 32.313557, 25.648012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285061, 0.236243, -0.928940,
		-0.443917, 0.891487, 0.090495,
		0.849516, 0.386576, 0.359000,
		38.821838, 32.429531, 25.755713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283367, 32.934750, 25.272148>,  <38.227177, 32.158928, 25.504412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283367, 32.934750, 25.272148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653549, 32.799446, 25.340393>,  <38.875660, 32.718266, 25.381340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653549, 32.799446, 25.340393>,  <38.283367, 32.934750, 25.272148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653549, 32.799446, 25.340393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297263, 0.369167, -0.880540,
		0.234862, 0.865621, 0.442199,
		0.925459, -0.338255, 0.170614,
		38.931187, 32.697971, 25.391577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632896, 33.391815, 24.915966>,  <38.283367, 32.934750, 25.272148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632896, 33.391815, 24.915966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910477, 33.108402, 24.967222>,  <39.077026, 32.938354, 24.997976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910477, 33.108402, 24.967222>,  <38.632896, 33.391815, 24.915966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910477, 33.108402, 24.967222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471486, 0.312653, -0.824590,
		0.544182, 0.632641, 0.551027,
		0.693950, -0.708529, 0.128141,
		39.118660, 32.895844, 25.005665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152740, 33.723663, 24.760288>,  <38.632896, 33.391815, 24.915966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152740, 33.723663, 24.760288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252377, 33.338093, 24.722752>,  <39.312157, 33.106750, 24.700230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252377, 33.338093, 24.722752>,  <39.152740, 33.723663, 24.760288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252377, 33.338093, 24.722752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522500, 0.215336, -0.824999,
		0.815443, 0.156466, 0.557288,
		0.249089, -0.963924, -0.093841,
		39.327103, 33.048916, 24.694599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795856, 33.685581, 24.769161>,  <39.152740, 33.723663, 24.760288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795856, 33.685581, 24.769161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 33.372459, 24.566669>,  <39.564266, 33.184586, 24.445175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 33.372459, 24.566669>,  <39.795856, 33.685581, 24.769161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651112, 33.372459, 24.566669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583089, 0.233640, -0.778087,
		0.727369, -0.576735, 0.371902,
		-0.361859, -0.782809, -0.506230,
		39.542553, 33.137615, 24.414801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378021, 33.430523, 24.429571>,  <39.795856, 33.685581, 24.769161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378021, 33.430523, 24.429571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092041, 33.231106, 24.233492>,  <39.920452, 33.111454, 24.115845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092041, 33.231106, 24.233492>,  <40.378021, 33.430523, 24.429571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092041, 33.231106, 24.233492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498400, 0.128300, -0.857401,
		0.490347, -0.857316, 0.156748,
		-0.714952, -0.498547, -0.490197,
		39.877556, 33.081543, 24.086433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780540, 32.930992, 24.038488>,  <40.378021, 33.430523, 24.429571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780540, 32.930992, 24.038488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432472, 32.959305, 23.843430>,  <40.223633, 32.976292, 23.726395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432472, 32.959305, 23.843430>,  <40.780540, 32.930992, 24.038488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432472, 32.959305, 23.843430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480623, -0.096336, -0.871620,
		-0.108686, -0.992828, 0.049802,
		-0.870166, 0.070797, -0.487646,
		40.171421, 32.980537, 23.697136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789501, 32.458031, 23.499599>,  <40.780540, 32.930992, 24.038488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789501, 32.458031, 23.499599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480186, 32.692242, 23.402296>,  <40.294598, 32.832767, 23.343914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480186, 32.692242, 23.402296>,  <40.789501, 32.458031, 23.499599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480186, 32.692242, 23.402296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241170, -0.083197, -0.966910,
		-0.586394, -0.806369, -0.076877,
		-0.773291, 0.585531, -0.243259,
		40.248199, 32.867901, 23.329319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314606, 32.091148, 23.028931>,  <40.789501, 32.458031, 23.499599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314606, 32.091148, 23.028931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301628, 32.486797, 22.971533>,  <40.293842, 32.724186, 22.937094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301628, 32.486797, 22.971533>,  <40.314606, 32.091148, 23.028931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301628, 32.486797, 22.971533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218292, -0.133090, -0.966765,
		-0.975344, -0.062693, -0.211598,
		-0.032448, 0.989119, -0.143494,
		40.291893, 32.783531, 22.928484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052536, 32.261681, 22.305449>,  <40.314606, 32.091148, 23.028931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052536, 32.261681, 22.305449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246960, 32.586342, 22.435041>,  <40.363613, 32.781139, 22.512796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246960, 32.586342, 22.435041>,  <40.052536, 32.261681, 22.305449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246960, 32.586342, 22.435041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389327, 0.130795, -0.911766,
		-0.782414, 0.569307, -0.252425,
		0.486059, 0.811654, 0.323982,
		40.392776, 32.829838, 22.532236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540546, 31.812809, 22.372477>,  <40.052536, 32.261681, 22.305449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540546, 31.812809, 22.372477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813213, 31.730276, 22.091688>,  <39.976814, 31.680756, 21.923216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813213, 31.730276, 22.091688>,  <39.540546, 31.812809, 22.372477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813213, 31.730276, 22.091688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727124, -0.084310, -0.681309,
		0.081393, 0.974843, -0.207501,
		0.681664, -0.206333, -0.701970,
		40.017712, 31.668377, 21.881098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937355, 31.582277, 22.220556>,  <39.540546, 31.812809, 22.372477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937355, 31.582277, 22.220556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765091, 31.792740, 21.927244>,  <38.661732, 31.919018, 21.751257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765091, 31.792740, 21.927244>,  <38.937355, 31.582277, 22.220556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765091, 31.792740, 21.927244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696732, 0.322623, 0.640686,
		0.573672, 0.786814, 0.227650,
		-0.430656, 0.526155, -0.733279,
		38.635895, 31.950586, 21.707260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891300, 32.199200, 22.503042>,  <38.937355, 31.582277, 22.220556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891300, 32.199200, 22.503042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623482, 32.157276, 22.208906>,  <38.462791, 32.132122, 22.032425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623482, 32.157276, 22.208906>,  <38.891300, 32.199200, 22.503042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623482, 32.157276, 22.208906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728680, 0.284606, 0.622917,
		0.143995, 0.952898, -0.266929,
		-0.669545, -0.104808, -0.735339,
		38.422619, 32.125835, 21.988304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589691, 32.862431, 22.326803>,  <38.891300, 32.199200, 22.503042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589691, 32.862431, 22.326803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308708, 32.590916, 22.241198>,  <38.140118, 32.428005, 22.189835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308708, 32.590916, 22.241198>,  <38.589691, 32.862431, 22.326803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308708, 32.590916, 22.241198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608550, 0.416887, 0.675183,
		-0.369087, 0.604524, -0.705921,
		-0.702454, -0.678790, -0.214016,
		38.097973, 32.387280, 22.176992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001770, 33.215923, 22.388214>,  <38.589691, 32.862431, 22.326803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001770, 33.215923, 22.388214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846184, 32.847450, 22.383682>,  <37.752834, 32.626366, 22.380964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846184, 32.847450, 22.383682>,  <38.001770, 33.215923, 22.388214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846184, 32.847450, 22.383682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816117, 0.338841, 0.468124,
		-0.427390, 0.191328, -0.883590,
		-0.388962, -0.921184, -0.011329,
		37.729496, 32.571095, 22.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294361, 33.317719, 22.113770>,  <38.001770, 33.215923, 22.388214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294361, 33.317719, 22.113770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298420, 32.977520, 22.324125>,  <37.300858, 32.773403, 22.450338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298420, 32.977520, 22.324125>,  <37.294361, 33.317719, 22.113770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298420, 32.977520, 22.324125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560576, 0.430663, 0.707308,
		-0.828041, -0.301981, -0.472394,
		0.010150, -0.850492, 0.525890,
		37.301464, 32.722374, 22.481892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619698, 33.130859, 22.282846>,  <37.294361, 33.317719, 22.113770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619698, 33.130859, 22.282846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828457, 32.941311, 22.566555>,  <36.953712, 32.827583, 22.736780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828457, 32.941311, 22.566555>,  <36.619698, 33.130859, 22.282846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828457, 32.941311, 22.566555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607035, 0.377837, 0.699105,
		-0.599275, -0.795415, -0.090464,
		0.521898, -0.473871, 0.709273,
		36.985027, 32.799149, 22.779337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161129, 33.212570, 22.847507>,  <36.619698, 33.130859, 22.282846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161129, 33.212570, 22.847507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483688, 33.064026, 23.031605>,  <36.677223, 32.974899, 23.142063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483688, 33.064026, 23.031605>,  <36.161129, 33.212570, 22.847507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483688, 33.064026, 23.031605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462065, 0.090068, 0.882261,
		-0.369087, -0.924111, -0.098961,
		0.806394, -0.371357, 0.460242,
		36.725605, 32.952618, 23.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870823, 32.638771, 23.292267>,  <36.161129, 33.212570, 22.847507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870823, 32.638771, 23.292267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229187, 32.761532, 23.420742>,  <36.444206, 32.835186, 23.497828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229187, 32.761532, 23.420742>,  <35.870823, 32.638771, 23.292267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229187, 32.761532, 23.420742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333165, -0.014069, 0.942764,
		0.293854, -0.951637, 0.089644,
		0.895908, 0.306902, 0.321186,
		36.497959, 32.853603, 23.517097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086678, 32.198898, 23.869877>,  <35.870823, 32.638771, 23.292267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086678, 32.198898, 23.869877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250046, 32.563332, 23.892231>,  <36.348068, 32.781990, 23.905643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250046, 32.563332, 23.892231>,  <36.086678, 32.198898, 23.869877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250046, 32.563332, 23.892231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263491, 0.059056, 0.962853,
		0.873936, -0.407976, 0.264181,
		0.408422, 0.911081, 0.055887,
		36.372574, 32.836655, 23.908997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441998, 32.124298, 24.505304>,  <36.086678, 32.198898, 23.869877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441998, 32.124298, 24.505304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411537, 32.517441, 24.438141>,  <36.393261, 32.753326, 24.397842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411537, 32.517441, 24.438141>,  <36.441998, 32.124298, 24.505304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411537, 32.517441, 24.438141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394739, 0.124921, 0.910261,
		0.915632, 0.135600, 0.378459,
		-0.076154, 0.982857, -0.167909,
		36.388691, 32.812298, 24.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824665, 32.365261, 25.024450>,  <36.441998, 32.124298, 24.505304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824665, 32.365261, 25.024450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592888, 32.665138, 24.896570>,  <36.453823, 32.845066, 24.819841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592888, 32.665138, 24.896570>,  <36.824665, 32.365261, 25.024450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592888, 32.665138, 24.896570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327197, 0.145288, 0.933720,
		0.746452, 0.645641, 0.161112,
		-0.579441, 0.749692, -0.319703,
		36.419056, 32.890045, 24.800659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036034, 32.892639, 25.388418>,  <36.824665, 32.365261, 25.024450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036034, 32.892639, 25.388418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674603, 32.998985, 25.254042>,  <36.457745, 33.062794, 25.173416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674603, 32.998985, 25.254042>,  <37.036034, 32.892639, 25.388418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674603, 32.998985, 25.254042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335321, 0.049167, 0.940820,
		0.266645, 0.962757, 0.044723,
		-0.903582, 0.265861, -0.335942,
		36.403526, 33.078743, 25.153259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885166, 33.490631, 25.768162>,  <37.036034, 32.892639, 25.388418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885166, 33.490631, 25.768162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541065, 33.325932, 25.647875>,  <36.334606, 33.227112, 25.575703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541065, 33.325932, 25.647875>,  <36.885166, 33.490631, 25.768162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541065, 33.325932, 25.647875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357200, 0.065821, 0.931706,
		-0.363839, 0.908915, -0.203701,
		-0.860249, -0.411753, -0.300717,
		36.282990, 33.202404, 25.557659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400646, 33.882607, 26.020605>,  <36.885166, 33.490631, 25.768162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400646, 33.882607, 26.020605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196060, 33.553566, 25.921219>,  <36.073307, 33.356144, 25.861588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196060, 33.553566, 25.921219>,  <36.400646, 33.882607, 26.020605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196060, 33.553566, 25.921219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409449, -0.020916, 0.912093,
		-0.755484, 0.568237, -0.326114,
		-0.511464, -0.822599, -0.248466,
		36.042622, 33.306786, 25.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798599, 33.895199, 26.435694>,  <36.400646, 33.882607, 26.020605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798599, 33.895199, 26.435694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845219, 33.509289, 26.341347>,  <35.873192, 33.277744, 26.284739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845219, 33.509289, 26.341347>,  <35.798599, 33.895199, 26.435694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845219, 33.509289, 26.341347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302793, -0.260696, 0.916708,
		-0.945903, -0.035423, -0.322510,
		0.116550, -0.964771, -0.235868,
		35.880184, 33.219856, 26.270586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301361, 33.568562, 26.725998>,  <35.798599, 33.895199, 26.435694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301361, 33.568562, 26.725998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544842, 33.254608, 26.679615>,  <35.690929, 33.066235, 26.651785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544842, 33.254608, 26.679615>,  <35.301361, 33.568562, 26.725998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544842, 33.254608, 26.679615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302971, -0.365022, 0.880322,
		-0.733277, -0.500718, -0.459985,
		0.608698, -0.784882, -0.115959,
		35.727451, 33.019142, 26.644827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924400, 32.957905, 26.863453>,  <35.301361, 33.568562, 26.725998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924400, 32.957905, 26.863453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304634, 32.845150, 26.915493>,  <35.532776, 32.777496, 26.946716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304634, 32.845150, 26.915493>,  <34.924400, 32.957905, 26.863453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304634, 32.845150, 26.915493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286095, -0.632600, 0.719699,
		-0.120574, -0.721356, -0.681987,
		0.950585, -0.281890, 0.130101,
		35.589809, 32.760582, 26.954523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027733, 32.227768, 27.014868>,  <34.924400, 32.957905, 26.863453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027733, 32.227768, 27.014868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394730, 32.302494, 27.155329>,  <35.614929, 32.347332, 27.239605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394730, 32.302494, 27.155329>,  <35.027733, 32.227768, 27.014868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394730, 32.302494, 27.155329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168564, -0.617018, 0.768684,
		0.360273, -0.764453, -0.534617,
		0.917490, 0.186819, 0.351154,
		35.669975, 32.358540, 27.260675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224777, 31.573818, 27.355328>,  <35.027733, 32.227768, 27.014868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224777, 31.573818, 27.355328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479221, 31.830736, 27.526360>,  <35.631886, 31.984886, 27.628979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479221, 31.830736, 27.526360>,  <35.224777, 31.573818, 27.355328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479221, 31.830736, 27.526360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104683, -0.477183, 0.872547,
		0.764466, -0.599794, -0.236302,
		0.636108, 0.642296, 0.427578,
		35.670055, 32.023426, 27.654633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792797, 31.152668, 27.765066>,  <35.224777, 31.573818, 27.355328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792797, 31.152668, 27.765066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786079, 31.527454, 27.904671>,  <35.782047, 31.752327, 27.988434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786079, 31.527454, 27.904671>,  <35.792797, 31.152668, 27.765066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786079, 31.527454, 27.904671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244995, -0.342276, 0.907097,
		0.969379, -0.070273, 0.235300,
		-0.016793, 0.936968, 0.349011,
		35.781040, 31.808544, 28.009375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075108, 31.090061, 28.441973>,  <35.792797, 31.152668, 27.765066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075108, 31.090061, 28.441973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874615, 31.435911, 28.455751>,  <35.754318, 31.643421, 28.464018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874615, 31.435911, 28.455751>,  <36.075108, 31.090061, 28.441973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874615, 31.435911, 28.455751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263068, -0.190184, 0.945846,
		0.824355, 0.465028, 0.322782,
		-0.501233, 0.864627, 0.034445,
		35.724243, 31.695299, 28.466085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.750744, 32.686394, 34.174160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.565201, 32.854980, 33.862469>,  <39.453873, 32.956135, 33.675453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.565201, 32.854980, 33.862469>,  <39.750744, 32.686394, 34.174160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565201, 32.854980, 33.862469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788803, 0.203894, 0.579843,
		0.403266, 0.883623, 0.237879,
		-0.463861, 0.421471, -0.779228,
		39.426044, 32.981422, 33.628700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615242, 33.322437, 34.368439>,  <39.750744, 32.686394, 34.174160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615242, 33.322437, 34.368439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353233, 33.251694, 34.074593>,  <39.196026, 33.209248, 33.898285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353233, 33.251694, 34.074593>,  <39.615242, 33.322437, 34.368439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353233, 33.251694, 34.074593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747051, 0.297476, 0.594494,
		0.113390, 0.938205, -0.326977,
		-0.655025, -0.176859, -0.734618,
		39.156727, 33.198635, 33.854206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298531, 33.983624, 34.124767>,  <39.615242, 33.322437, 34.368439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298531, 33.983624, 34.124767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060467, 33.669731, 34.055508>,  <38.917629, 33.481396, 34.013950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060467, 33.669731, 34.055508>,  <39.298531, 33.983624, 34.124767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060467, 33.669731, 34.055508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715014, 0.418753, 0.559823,
		-0.366804, 0.456988, -0.810319,
		-0.595155, -0.784734, -0.173153,
		38.881920, 33.434311, 34.003563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663036, 34.288544, 33.984146>,  <39.298531, 33.983624, 34.124767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663036, 34.288544, 33.984146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547470, 33.908070, 34.027546>,  <38.478130, 33.679783, 34.053585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547470, 33.908070, 34.027546>,  <38.663036, 34.288544, 33.984146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547470, 33.908070, 34.027546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700070, 0.287210, 0.653768,
		-0.653017, 0.112929, -0.748877,
		-0.288914, -0.951187, 0.108495,
		38.460796, 33.622715, 34.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937538, 34.268833, 34.092487>,  <38.663036, 34.288544, 33.984146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937538, 34.268833, 34.092487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044697, 33.915939, 34.247349>,  <38.108994, 33.704201, 34.340267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044697, 33.915939, 34.247349>,  <37.937538, 34.268833, 34.092487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044697, 33.915939, 34.247349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652948, 0.129228, 0.746297,
		-0.708442, -0.452724, -0.541434,
		0.267898, -0.882236, 0.387156,
		38.125065, 33.651268, 34.363495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279720, 33.790234, 34.287079>,  <37.937538, 34.268833, 34.092487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279720, 33.790234, 34.287079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592995, 33.680908, 34.510475>,  <37.780960, 33.615314, 34.644512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.592995, 33.680908, 34.510475>,  <37.279720, 33.790234, 34.287079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592995, 33.680908, 34.510475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556752, 0.091667, 0.825605,
		-0.276842, -0.957548, -0.080374,
		0.783189, -0.273311, 0.558494,
		37.827953, 33.598915, 34.678024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970318, 33.370705, 34.738735>,  <37.279720, 33.790234, 34.287079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970318, 33.370705, 34.738735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324017, 33.431503, 34.915371>,  <37.536236, 33.467983, 35.021351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324017, 33.431503, 34.915371>,  <36.970318, 33.370705, 34.738735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324017, 33.431503, 34.915371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442470, -0.029832, 0.896287,
		0.149410, -0.987930, 0.040877,
		0.884249, 0.152001, 0.441587,
		37.589291, 33.477104, 35.047848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863926, 33.021118, 35.243042>,  <36.970318, 33.370705, 34.738735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863926, 33.021118, 35.243042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.164577, 33.264721, 35.344364>,  <37.344971, 33.410881, 35.405155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.164577, 33.264721, 35.344364>,  <36.863926, 33.021118, 35.243042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164577, 33.264721, 35.344364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379438, 0.085108, 0.921295,
		0.539517, -0.788586, 0.295050,
		0.751631, 0.609007, 0.253302,
		37.390068, 33.447422, 35.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130360, 32.738323, 35.808224>,  <36.863926, 33.021118, 35.243042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130360, 32.738323, 35.808224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200233, 33.131775, 35.825943>,  <37.242157, 33.367844, 35.836575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200233, 33.131775, 35.825943>,  <37.130360, 32.738323, 35.808224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200233, 33.131775, 35.825943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334145, 0.016903, 0.942370,
		0.926192, -0.179420, 0.331627,
		0.174686, 0.983628, 0.044297,
		37.252640, 33.426865, 35.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005798, 32.844051, 36.486202>,  <37.130360, 32.738323, 35.808224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005798, 32.844051, 36.486202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055828, 33.221191, 36.362663>,  <37.085846, 33.447475, 36.288540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055828, 33.221191, 36.362663>,  <37.005798, 32.844051, 36.486202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055828, 33.221191, 36.362663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357182, 0.333210, 0.872578,
		0.925622, 0.001174, 0.378447,
		0.125078, 0.942852, -0.308846,
		37.093353, 33.504047, 36.270008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500370, 33.151817, 36.857155>,  <37.005798, 32.844051, 36.486202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500370, 33.151817, 36.857155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271046, 33.447430, 36.715645>,  <37.133453, 33.624798, 36.630737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271046, 33.447430, 36.715645>,  <37.500370, 33.151817, 36.857155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271046, 33.447430, 36.715645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237119, 0.263655, 0.935019,
		0.784280, 0.619940, 0.024082,
		-0.573306, 0.739027, -0.353779,
		37.099052, 33.669136, 36.609512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710697, 33.743565, 37.256435>,  <37.500370, 33.151817, 36.857155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710697, 33.743565, 37.256435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.341843, 33.810394, 37.116863>,  <37.120529, 33.850491, 37.033119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.341843, 33.810394, 37.116863>,  <37.710697, 33.743565, 37.256435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341843, 33.810394, 37.116863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259626, 0.401419, 0.878327,
		0.286809, 0.900528, -0.326787,
		-0.922136, 0.167070, -0.348931,
		37.065201, 33.860516, 37.012184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582706, 34.325188, 37.573013>,  <37.710697, 33.743565, 37.256435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582706, 34.325188, 37.573013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229885, 34.184624, 37.447479>,  <37.018192, 34.100285, 37.372158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229885, 34.184624, 37.447479>,  <37.582706, 34.325188, 37.573013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229885, 34.184624, 37.447479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442661, 0.389996, 0.807437,
		-0.161346, 0.851125, -0.499553,
		-0.882054, -0.351409, -0.313836,
		36.965267, 34.079201, 37.353329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068249, 34.878044, 37.394821>,  <37.582706, 34.325188, 37.573013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068249, 34.878044, 37.394821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873322, 34.548958, 37.511898>,  <36.756367, 34.351505, 37.582142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873322, 34.548958, 37.511898>,  <37.068249, 34.878044, 37.394821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873322, 34.548958, 37.511898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440812, 0.521111, 0.730841,
		-0.753794, 0.227132, -0.616608,
		-0.487319, -0.822712, 0.292688,
		36.727127, 34.302143, 37.599705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786415, 35.231564, 37.489929>,  <37.068249, 34.878044, 37.394821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786415, 35.231564, 37.489929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979794, 35.520813, 37.687256>,  <38.095821, 35.694363, 37.805653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979794, 35.520813, 37.687256>,  <37.786415, 35.231564, 37.489929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979794, 35.520813, 37.687256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157295, 0.482617, -0.861591,
		-0.861124, 0.494133, 0.119576,
		0.483450, 0.723128, 0.493317,
		38.124828, 35.737751, 37.835251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371513, 35.824749, 37.268311>,  <37.786415, 35.231564, 37.489929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371513, 35.824749, 37.268311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761559, 35.870304, 37.344395>,  <37.995586, 35.897636, 37.390045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761559, 35.870304, 37.344395>,  <37.371513, 35.824749, 37.268311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761559, 35.870304, 37.344395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079926, 0.619697, -0.780761,
		-0.206791, 0.776534, 0.595173,
		0.975115, 0.113885, 0.190213,
		38.054092, 35.904469, 37.401459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508598, 36.575726, 37.121262>,  <37.371513, 35.824749, 37.268311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508598, 36.575726, 37.121262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860920, 36.387581, 37.099545>,  <38.072311, 36.274696, 37.086514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860920, 36.387581, 37.099545>,  <37.508598, 36.575726, 37.121262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860920, 36.387581, 37.099545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229461, 0.524350, -0.820003,
		0.414164, 0.709803, 0.569779,
		0.880804, -0.470358, -0.054295,
		38.125160, 36.246475, 37.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895874, 37.143696, 36.931660>,  <37.508598, 36.575726, 37.121262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895874, 37.143696, 36.931660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078068, 36.800526, 36.836578>,  <38.187386, 36.594624, 36.779530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078068, 36.800526, 36.836578>,  <37.895874, 37.143696, 36.931660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078068, 36.800526, 36.836578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361766, 0.422344, -0.831114,
		0.813423, 0.292568, 0.502739,
		0.455487, -0.857921, -0.237703,
		38.214714, 36.543148, 36.765266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259815, 37.340599, 36.462807>,  <37.895874, 37.143696, 36.931660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259815, 37.340599, 36.462807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308239, 36.949608, 36.393658>,  <38.337296, 36.715012, 36.352169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308239, 36.949608, 36.393658>,  <38.259815, 37.340599, 36.462807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308239, 36.949608, 36.393658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275946, 0.200425, -0.940044,
		0.953519, 0.066101, 0.293994,
		0.121062, -0.977477, -0.172868,
		38.344559, 36.656364, 36.341797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865932, 37.260315, 36.019016>,  <38.259815, 37.340599, 36.462807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865932, 37.260315, 36.019016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.637844, 36.934147, 35.979134>,  <38.500992, 36.738445, 35.955204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.637844, 36.934147, 35.979134>,  <38.865932, 37.260315, 36.019016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637844, 36.934147, 35.979134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123088, 0.035197, -0.991771,
		0.812221, -0.577797, 0.080298,
		-0.570217, -0.815421, -0.099708,
		38.466778, 36.689522, 35.949223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318378, 36.827747, 35.531940>,  <38.865932, 37.260315, 36.019016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318378, 36.827747, 35.531940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954082, 36.666542, 35.495850>,  <38.735504, 36.569820, 35.474197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954082, 36.666542, 35.495850>,  <39.318378, 36.827747, 35.531940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954082, 36.666542, 35.495850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011537, 0.193552, -0.981022,
		0.412830, -0.894493, -0.171625,
		-0.910735, -0.403015, -0.090224,
		38.680862, 36.545639, 35.468784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364998, 36.266357, 35.102600>,  <39.318378, 36.827747, 35.531940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364998, 36.266357, 35.102600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973488, 36.346287, 35.084362>,  <38.738583, 36.394245, 35.073421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973488, 36.346287, 35.084362>,  <39.364998, 36.266357, 35.102600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973488, 36.346287, 35.084362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050640, 0.020227, -0.998512,
		-0.198605, -0.979623, -0.029917,
		-0.978771, 0.199824, -0.045591,
		38.679855, 36.406235, 35.070686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165546, 35.914295, 34.584896>,  <39.364998, 36.266357, 35.102600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165546, 35.914295, 34.584896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838314, 36.141773, 34.619164>,  <38.641975, 36.278259, 34.639725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838314, 36.141773, 34.619164>,  <39.165546, 35.914295, 34.584896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838314, 36.141773, 34.619164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162062, -0.085039, -0.983109,
		-0.551801, -0.818143, 0.161732,
		-0.818078, 0.568691, 0.085665,
		38.592892, 36.312382, 34.644863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486240, 35.557098, 34.345238>,  <39.165546, 35.914295, 34.584896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486240, 35.557098, 34.345238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483353, 35.955669, 34.311581>,  <38.481621, 36.194813, 34.291386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483353, 35.955669, 34.311581>,  <38.486240, 35.557098, 34.345238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483353, 35.955669, 34.311581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159807, -0.084214, -0.983550,
		-0.987122, 0.006349, 0.159844,
		-0.007216, 0.996428, -0.084144,
		38.481186, 36.254597, 34.286339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048359, 35.633678, 33.755852>,  <38.486240, 35.557098, 34.345238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048359, 35.633678, 33.755852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213131, 35.993832, 33.811882>,  <38.311993, 36.209923, 33.845501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213131, 35.993832, 33.811882>,  <38.048359, 35.633678, 33.755852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213131, 35.993832, 33.811882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090957, 0.112328, -0.989499,
		-0.906666, 0.420341, -0.035626,
		0.411926, 0.900386, 0.140078,
		38.336708, 36.263947, 33.853905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789314, 35.936241, 33.253902>,  <38.048359, 35.633678, 33.755852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789314, 35.936241, 33.253902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082390, 36.194393, 33.340294>,  <38.258236, 36.349285, 33.392128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082390, 36.194393, 33.340294>,  <37.789314, 35.936241, 33.253902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082390, 36.194393, 33.340294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297747, -0.018607, -0.954463,
		-0.611974, 0.763634, -0.205793,
		0.732690, 0.645381, 0.215983,
		38.302197, 36.388008, 33.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658459, 36.627216, 32.863445>,  <37.789314, 35.936241, 33.253902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658459, 36.627216, 32.863445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.049095, 36.598335, 32.944492>,  <38.283478, 36.581009, 32.993118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.049095, 36.598335, 32.944492>,  <37.658459, 36.627216, 32.863445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049095, 36.598335, 32.944492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210778, 0.133452, -0.968382,
		0.042878, 0.988422, 0.145547,
		0.976593, -0.072200, 0.202615,
		38.342072, 36.576675, 33.005276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013935, 37.210133, 32.617348>,  <37.658459, 36.627216, 32.863445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013935, 37.210133, 32.617348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313633, 36.947666, 32.653290>,  <38.493450, 36.790184, 32.674854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313633, 36.947666, 32.653290>,  <38.013935, 37.210133, 32.617348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313633, 36.947666, 32.653290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157019, 0.044185, -0.986607,
		0.643409, 0.753320, 0.136136,
		0.749246, -0.656168, 0.089856,
		38.538406, 36.750816, 32.680248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992943, 37.874622, 32.742565>,  <38.013935, 37.210133, 32.617348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992943, 37.874622, 32.742565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672348, 38.019588, 32.552292>,  <37.479992, 38.106567, 32.438126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672348, 38.019588, 32.552292>,  <37.992943, 37.874622, 32.742565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672348, 38.019588, 32.552292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553335, -0.147740, 0.819752,
		0.226814, 0.920232, 0.318950,
		-0.801484, 0.362417, -0.475686,
		37.431904, 38.128315, 32.409588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795490, 38.423531, 33.165878>,  <37.992943, 37.874622, 32.742565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795490, 38.423531, 33.165878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480663, 38.281452, 32.964138>,  <37.291767, 38.196205, 32.843094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480663, 38.281452, 32.964138>,  <37.795490, 38.423531, 33.165878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480663, 38.281452, 32.964138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485543, -0.147591, 0.861664,
		-0.380496, 0.923067, -0.056299,
		-0.787065, -0.355195, -0.504347,
		37.244545, 38.174892, 32.812836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241283, 38.586113, 33.528454>,  <37.795490, 38.423531, 33.165878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241283, 38.586113, 33.528454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.035431, 38.351147, 33.278622>,  <36.911919, 38.210167, 33.128723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.035431, 38.351147, 33.278622>,  <37.241283, 38.586113, 33.528454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035431, 38.351147, 33.278622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613217, -0.256968, 0.746949,
		-0.599269, 0.767401, -0.227973,
		-0.514628, -0.587420, -0.624576,
		36.881042, 38.174919, 33.091248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542877, 38.816559, 33.422962>,  <37.241283, 38.586113, 33.528454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542877, 38.816559, 33.422962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531200, 38.421726, 33.359959>,  <36.524197, 38.184826, 33.322155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531200, 38.421726, 33.359959>,  <36.542877, 38.816559, 33.422962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531200, 38.421726, 33.359959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735861, -0.085427, 0.671722,
		-0.676503, 0.135512, -0.723865,
		-0.029188, -0.987086, -0.157509,
		36.522446, 38.125599, 33.312706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801064, 38.578064, 33.568039>,  <36.542877, 38.816559, 33.422962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801064, 38.578064, 33.568039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971222, 38.216343, 33.553738>,  <36.073318, 37.999310, 33.545158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971222, 38.216343, 33.553738>,  <35.801064, 38.578064, 33.568039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971222, 38.216343, 33.553738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594375, -0.308959, 0.742471,
		-0.682463, -0.294594, -0.668923,
		0.425397, -0.904300, -0.035754,
		36.098843, 37.945053, 33.543011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226864, 38.102093, 33.463814>,  <35.801064, 38.578064, 33.568039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226864, 38.102093, 33.463814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523617, 37.889492, 33.627331>,  <35.701668, 37.761932, 33.725441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523617, 37.889492, 33.627331>,  <35.226864, 38.102093, 33.463814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523617, 37.889492, 33.627331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581350, -0.206065, 0.787127,
		-0.334127, -0.821606, -0.461868,
		0.741884, -0.531508, 0.408789,
		35.746181, 37.730042, 33.749969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983784, 37.389095, 33.555470>,  <35.226864, 38.102093, 33.463814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983784, 37.389095, 33.555470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291534, 37.453667, 33.802692>,  <35.476185, 37.492409, 33.951027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291534, 37.453667, 33.802692>,  <34.983784, 37.389095, 33.555470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291534, 37.453667, 33.802692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562626, -0.286937, 0.775319,
		0.302499, -0.944251, -0.129943,
		0.769381, 0.161424, 0.618058,
		35.522350, 37.502094, 33.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925404, 36.950714, 34.139835>,  <34.983784, 37.389095, 33.555470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925404, 36.950714, 34.139835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179390, 37.215054, 34.299889>,  <35.331779, 37.373657, 34.395920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179390, 37.215054, 34.299889>,  <34.925404, 36.950714, 34.139835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179390, 37.215054, 34.299889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521312, -0.015723, 0.853221,
		0.570138, -0.750358, 0.334523,
		0.634962, 0.660844, 0.400135,
		35.369877, 37.413307, 34.419930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129074, 36.697861, 34.782555>,  <34.925404, 36.950714, 34.139835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129074, 36.697861, 34.782555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191208, 37.092621, 34.799953>,  <35.228489, 37.329479, 34.810394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191208, 37.092621, 34.799953>,  <35.129074, 36.697861, 34.782555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191208, 37.092621, 34.799953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446147, 0.030799, 0.894429,
		0.881377, -0.158339, 0.445089,
		0.155332, 0.986904, 0.043497,
		35.237808, 37.388691, 34.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374512, 36.827400, 35.464157>,  <35.129074, 36.697861, 34.782555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374512, 36.827400, 35.464157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245697, 37.172890, 35.309090>,  <35.168407, 37.380184, 35.216049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245697, 37.172890, 35.309090>,  <35.374512, 36.827400, 35.464157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245697, 37.172890, 35.309090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579163, 0.144186, 0.802359,
		0.748909, 0.482907, 0.453802,
		-0.322033, 0.863719, -0.387665,
		35.149086, 37.432007, 35.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404030, 37.291264, 36.020821>,  <35.374512, 36.827400, 35.464157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404030, 37.291264, 36.020821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.161976, 37.470131, 35.757351>,  <35.016743, 37.577450, 35.599270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.161976, 37.470131, 35.757351>,  <35.404030, 37.291264, 36.020821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161976, 37.470131, 35.757351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685414, 0.128255, 0.716769,
		0.404993, 0.885208, 0.228883,
		-0.605135, 0.447166, -0.658677,
		34.980434, 37.604282, 35.559750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269035, 37.864708, 36.330860>,  <35.404030, 37.291264, 36.020821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269035, 37.864708, 36.330860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972065, 37.773861, 36.078758>,  <34.793884, 37.719353, 35.927498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972065, 37.773861, 36.078758>,  <35.269035, 37.864708, 36.330860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972065, 37.773861, 36.078758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645874, -0.007183, 0.763410,
		-0.177910, 0.973841, -0.141355,
		-0.742425, -0.227116, -0.630257,
		34.749336, 37.705727, 35.889683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.770020, 39.319916, 28.897511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451458, 39.079792, 28.868195>,  <38.260323, 38.935719, 28.850605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451458, 39.079792, 28.868195>,  <38.770020, 39.319916, 28.897511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451458, 39.079792, 28.868195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128579, 0.049655, 0.990456,
		-0.590943, 0.798223, -0.116732,
		-0.796401, -0.600312, -0.073292,
		38.212540, 38.899700, 28.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220173, 39.659309, 29.219419>,  <38.770020, 39.319916, 28.897511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220173, 39.659309, 29.219419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152897, 39.265022, 29.222820>,  <38.112530, 39.028450, 29.224861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152897, 39.265022, 29.222820>,  <38.220173, 39.659309, 29.219419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152897, 39.265022, 29.222820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300709, 0.059521, 0.951857,
		-0.938768, 0.157536, -0.306425,
		-0.168190, -0.985718, 0.008503,
		38.102440, 38.969307, 29.225370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848232, 39.618900, 29.769697>,  <38.220173, 39.659309, 29.219419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848232, 39.618900, 29.769697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910847, 39.229973, 29.700306>,  <37.948418, 38.996616, 29.658672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910847, 39.229973, 29.700306>,  <37.848232, 39.618900, 29.769697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910847, 39.229973, 29.700306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351714, -0.219005, 0.910128,
		-0.922926, -0.081456, -0.376261,
		0.156539, -0.972318, -0.173476,
		37.957809, 38.938278, 29.648264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224411, 39.271351, 29.819069>,  <37.848232, 39.618900, 29.769697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224411, 39.271351, 29.819069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508247, 39.001274, 29.899670>,  <37.678547, 38.839230, 29.948030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508247, 39.001274, 29.899670>,  <37.224411, 39.271351, 29.819069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508247, 39.001274, 29.899670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500388, -0.281535, 0.818749,
		-0.496083, -0.681802, -0.537631,
		0.709587, -0.675192, 0.201501,
		37.721123, 38.798717, 29.960119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878700, 38.678829, 29.891684>,  <37.224411, 39.271351, 29.819069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878700, 38.678829, 29.891684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224945, 38.689003, 30.091707>,  <37.432693, 38.695107, 30.211721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224945, 38.689003, 30.091707>,  <36.878700, 38.678829, 29.891684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224945, 38.689003, 30.091707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468115, -0.313320, 0.826256,
		0.177699, -0.949307, -0.259306,
		0.865616, 0.025440, 0.500062,
		37.484631, 38.696636, 30.241726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972881, 38.126133, 30.291792>,  <36.878700, 38.678829, 29.891684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972881, 38.126133, 30.291792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261566, 38.336342, 30.471994>,  <37.434776, 38.462467, 30.580116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261566, 38.336342, 30.471994>,  <36.972881, 38.126133, 30.291792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261566, 38.336342, 30.471994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244529, -0.415311, 0.876197,
		0.647561, -0.742526, -0.171231,
		0.721713, 0.525520, 0.450509,
		37.478081, 38.493999, 30.607147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245888, 37.640976, 30.787029>,  <36.972881, 38.126133, 30.291792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245888, 37.640976, 30.787029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356491, 38.003597, 30.914589>,  <37.422855, 38.221172, 30.991125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356491, 38.003597, 30.914589>,  <37.245888, 37.640976, 30.787029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356491, 38.003597, 30.914589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120881, -0.296391, 0.947386,
		0.953378, -0.300511, 0.027630,
		0.276511, 0.906557, 0.318899,
		37.439445, 38.275566, 31.010258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837803, 37.611172, 31.391485>,  <37.245888, 37.640976, 30.787029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837803, 37.611172, 31.391485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632225, 37.953686, 31.412056>,  <37.508881, 38.159195, 31.424398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632225, 37.953686, 31.412056>,  <37.837803, 37.611172, 31.391485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632225, 37.953686, 31.412056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021475, -0.047090, 0.998660,
		0.857556, 0.514358, 0.005813,
		-0.513943, 0.856282, 0.051428,
		37.478043, 38.210571, 31.427485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180832, 37.907238, 31.930561>,  <37.837803, 37.611172, 31.391485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180832, 37.907238, 31.930561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806015, 38.045959, 31.914183>,  <37.581123, 38.129192, 31.904356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806015, 38.045959, 31.914183>,  <38.180832, 37.907238, 31.930561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806015, 38.045959, 31.914183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107524, -0.174978, 0.978683,
		0.332248, 0.921471, 0.201252,
		-0.937043, 0.346805, -0.040945,
		37.524902, 38.150002, 31.901899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611336, 37.458839, 32.182430>,  <38.180832, 37.907238, 31.930561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611336, 37.458839, 32.182430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712994, 37.075432, 32.234055>,  <38.773987, 36.845387, 32.265030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712994, 37.075432, 32.234055>,  <38.611336, 37.458839, 32.182430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712994, 37.075432, 32.234055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271796, -0.057284, -0.960648,
		0.928191, 0.279218, 0.245963,
		0.254141, -0.958517, 0.129061,
		38.789234, 36.787876, 32.272774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238567, 37.330410, 31.863745>,  <38.611336, 37.458839, 32.182430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238567, 37.330410, 31.863745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127075, 36.948708, 31.907024>,  <39.060181, 36.719688, 31.932993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127075, 36.948708, 31.907024>,  <39.238567, 37.330410, 31.863745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127075, 36.948708, 31.907024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361239, -0.208569, -0.908848,
		0.889839, -0.214239, 0.402849,
		-0.278733, -0.954254, 0.108201,
		39.043457, 36.662430, 31.939486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893745, 36.867592, 31.784708>,  <39.238567, 37.330410, 31.863745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893745, 36.867592, 31.784708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570351, 36.642700, 31.715134>,  <39.376316, 36.507767, 31.673389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570351, 36.642700, 31.715134>,  <39.893745, 36.867592, 31.784708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570351, 36.642700, 31.715134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442366, -0.385629, -0.809693,
		0.388157, -0.731567, 0.560485,
		-0.808483, -0.562228, -0.173936,
		39.327805, 36.474033, 31.662952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179138, 36.305531, 31.451992>,  <39.893745, 36.867592, 31.784708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179138, 36.305531, 31.451992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791153, 36.289070, 31.356089>,  <39.558361, 36.279194, 31.298546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791153, 36.289070, 31.356089>,  <40.179138, 36.305531, 31.451992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791153, 36.289070, 31.356089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236398, -0.391985, -0.889080,
		-0.057393, -0.919051, 0.389938,
		-0.969960, -0.041153, -0.239759,
		39.500164, 36.276726, 31.284161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067562, 35.580311, 31.126621>,  <40.179138, 36.305531, 31.451992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067562, 35.580311, 31.126621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757317, 35.808022, 31.017551>,  <39.571171, 35.944649, 30.952110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757317, 35.808022, 31.017551>,  <40.067562, 35.580311, 31.126621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757317, 35.808022, 31.017551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141125, -0.264657, -0.953960,
		-0.615232, -0.778384, 0.124932,
		-0.775612, 0.569275, -0.272675,
		39.524632, 35.978806, 30.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703396, 35.179855, 30.572382>,  <40.067562, 35.580311, 31.126621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703396, 35.179855, 30.572382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546268, 35.545792, 30.534943>,  <39.451992, 35.765354, 30.512480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546268, 35.545792, 30.534943>,  <39.703396, 35.179855, 30.572382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546268, 35.545792, 30.534943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001538, -0.101127, -0.994872,
		-0.919615, -0.390947, 0.038318,
		-0.392817, 0.914841, -0.093599,
		39.428425, 35.820244, 30.506863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190002, 35.134857, 30.091278>,  <39.703396, 35.179855, 30.572382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190002, 35.134857, 30.091278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288460, 35.522522, 30.086588>,  <39.347534, 35.755119, 30.083775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288460, 35.522522, 30.086588>,  <39.190002, 35.134857, 30.091278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288460, 35.522522, 30.086588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154905, 0.027393, -0.987549,
		-0.956775, 0.244895, 0.156871,
		0.246143, 0.969163, -0.011726,
		39.362301, 35.813271, 30.083071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835407, 35.483841, 29.522089>,  <39.190002, 35.134857, 30.091278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835407, 35.483841, 29.522089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156204, 35.710503, 29.597685>,  <39.348682, 35.846500, 29.643044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156204, 35.710503, 29.597685>,  <38.835407, 35.483841, 29.522089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156204, 35.710503, 29.597685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199160, 0.044628, -0.978950,
		-0.563159, 0.822747, -0.077063,
		0.801989, 0.566653, 0.188991,
		39.396801, 35.880497, 29.654383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813099, 35.995651, 28.970917>,  <38.835407, 35.483841, 29.522089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813099, 35.995651, 28.970917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182255, 36.019157, 29.123142>,  <39.403748, 36.033260, 29.214478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182255, 36.019157, 29.123142>,  <38.813099, 35.995651, 28.970917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182255, 36.019157, 29.123142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357918, 0.233650, -0.904048,
		-0.142047, 0.970543, 0.194598,
		0.922885, 0.058767, 0.380564,
		39.459122, 36.036789, 29.237312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104885, 36.567612, 28.764400>,  <38.813099, 35.995651, 28.970917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104885, 36.567612, 28.764400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435879, 36.367523, 28.866417>,  <39.634476, 36.247471, 28.927628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435879, 36.367523, 28.866417>,  <39.104885, 36.567612, 28.764400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435879, 36.367523, 28.866417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302593, 0.014662, -0.953007,
		0.472974, 0.865774, 0.163496,
		0.827486, -0.500221, 0.255042,
		39.684124, 36.217457, 28.942930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624153, 36.904644, 28.357098>,  <39.104885, 36.567612, 28.764400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624153, 36.904644, 28.357098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765038, 36.542053, 28.450258>,  <39.849567, 36.324497, 28.506155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765038, 36.542053, 28.450258>,  <39.624153, 36.904644, 28.357098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765038, 36.542053, 28.450258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480741, -0.038286, -0.876027,
		0.803015, 0.420514, 0.422296,
		0.352214, -0.906478, 0.232903,
		39.870701, 36.270111, 28.520128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260971, 36.796310, 27.964314>,  <39.624153, 36.904644, 28.357098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260971, 36.796310, 27.964314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182182, 36.419384, 28.072563>,  <40.134907, 36.193226, 28.137512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182182, 36.419384, 28.072563>,  <40.260971, 36.796310, 27.964314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182182, 36.419384, 28.072563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542815, -0.334682, -0.770285,
		0.816427, -0.004829, 0.577429,
		-0.196975, -0.942319, 0.270622,
		40.123089, 36.136688, 28.153749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847874, 36.427094, 27.754431>,  <40.260971, 36.796310, 27.964314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847874, 36.427094, 27.754431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604164, 36.116684, 27.819626>,  <40.457939, 35.930439, 27.858742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604164, 36.116684, 27.819626>,  <40.847874, 36.427094, 27.754431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604164, 36.116684, 27.819626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390048, -0.472253, -0.790468,
		0.690397, -0.418039, 0.590420,
		-0.609274, -0.776028, 0.162987,
		40.421383, 35.883877, 27.868523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304916, 35.811832, 27.643999>,  <40.847874, 36.427094, 27.754431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304916, 35.811832, 27.643999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915813, 35.728573, 27.603163>,  <40.682354, 35.678616, 27.578661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915813, 35.728573, 27.603163>,  <41.304916, 35.811832, 27.643999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915813, 35.728573, 27.603163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188079, -0.451046, -0.872458,
		0.135555, -0.867889, 0.477905,
		-0.972754, -0.208150, -0.102091,
		40.623985, 35.666126, 27.572535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.360397, 33.460846, 26.192451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589481, 33.746967, 26.352625>,  <33.726933, 33.918640, 26.448729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589481, 33.746967, 26.352625>,  <33.360397, 33.460846, 26.192451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589481, 33.746967, 26.352625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123838, -0.407379, 0.904824,
		0.810350, -0.567791, -0.144728,
		0.572710, 0.715301, 0.400434,
		33.761295, 33.961559, 26.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653984, 33.157917, 26.738693>,  <33.360397, 33.460846, 26.192451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653984, 33.157917, 26.738693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.733829, 33.542225, 26.815712>,  <33.781738, 33.772808, 26.861923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.733829, 33.542225, 26.815712>,  <33.653984, 33.157917, 26.738693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733829, 33.542225, 26.815712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179827, -0.229086, 0.956651,
		0.963232, -0.156338, -0.218502,
		0.199616, 0.960770, 0.192549,
		33.793713, 33.830456, 26.873476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252522, 33.196472, 27.139488>,  <33.653984, 33.157917, 26.738693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252522, 33.196472, 27.139488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.027210, 33.519192, 27.210800>,  <33.892021, 33.712826, 27.253588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.027210, 33.519192, 27.210800>,  <34.252522, 33.196472, 27.139488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027210, 33.519192, 27.210800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038121, -0.240911, 0.969798,
		0.825386, 0.539472, 0.166457,
		-0.563280, 0.806803, 0.178280,
		33.858227, 33.761234, 27.264284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604015, 33.601749, 27.694218>,  <34.252522, 33.196472, 27.139488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604015, 33.601749, 27.694218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219677, 33.712399, 27.687784>,  <33.989075, 33.778786, 27.683924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219677, 33.712399, 27.687784>,  <34.604015, 33.601749, 27.694218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219677, 33.712399, 27.687784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004641, 0.041974, 0.999108,
		0.277049, 0.960062, -0.039047,
		-0.960845, 0.276621, -0.016084,
		33.931423, 33.795383, 27.682959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486721, 33.935818, 28.298635>,  <34.604015, 33.601749, 27.694218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486721, 33.935818, 28.298635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101444, 33.885597, 28.203552>,  <33.870277, 33.855465, 28.146502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101444, 33.885597, 28.203552>,  <34.486721, 33.935818, 28.298635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101444, 33.885597, 28.203552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253797, 0.133169, 0.958046,
		-0.088624, 0.983110, -0.160130,
		-0.963189, -0.125547, -0.237708,
		33.812489, 33.847935, 28.132240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225307, 34.528305, 28.470070>,  <34.486721, 33.935818, 28.298635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225307, 34.528305, 28.470070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938457, 34.249573, 28.465162>,  <33.766346, 34.082333, 28.462217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938457, 34.249573, 28.465162>,  <34.225307, 34.528305, 28.470070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938457, 34.249573, 28.465162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186480, 0.174885, 0.966768,
		-0.671532, 0.695583, -0.255360,
		-0.717126, -0.696836, -0.012271,
		33.723320, 34.040524, 28.461481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631817, 34.856998, 28.740250>,  <34.225307, 34.528305, 28.470070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631817, 34.856998, 28.740250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555050, 34.464622, 28.752426>,  <33.508991, 34.229198, 28.759731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555050, 34.464622, 28.752426>,  <33.631817, 34.856998, 28.740250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555050, 34.464622, 28.752426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184133, 0.066458, 0.980652,
		-0.963983, 0.182599, -0.193377,
		-0.191918, -0.980939, 0.030442,
		33.497475, 34.170341, 28.761559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066689, 34.835449, 29.034760>,  <33.631817, 34.856998, 28.740250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066689, 34.835449, 29.034760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.229160, 34.473518, 29.085838>,  <33.326645, 34.256359, 29.116486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.229160, 34.473518, 29.085838>,  <33.066689, 34.835449, 29.034760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229160, 34.473518, 29.085838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271809, 0.013787, 0.962252,
		-0.872433, -0.425555, -0.240341,
		0.406178, -0.904827, 0.127698,
		33.351013, 34.202068, 29.124147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593876, 34.465656, 29.433008>,  <33.066689, 34.835449, 29.034760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593876, 34.465656, 29.433008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.933811, 34.258362, 29.471369>,  <33.137772, 34.133984, 29.494385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.933811, 34.258362, 29.471369>,  <32.593876, 34.465656, 29.433008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933811, 34.258362, 29.471369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190970, -0.133195, 0.972517,
		-0.491224, -0.844799, -0.212163,
		0.849841, -0.518240, 0.095902,
		33.188763, 34.102890, 29.500139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501415, 33.930996, 29.907776>,  <32.593876, 34.465656, 29.433008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501415, 33.930996, 29.907776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.900108, 33.958313, 29.925068>,  <33.139324, 33.974705, 29.935444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.900108, 33.958313, 29.925068>,  <32.501415, 33.930996, 29.907776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900108, 33.958313, 29.925068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028552, -0.202879, 0.978787,
		0.075619, -0.976819, -0.200265,
		0.996728, 0.068297, 0.043232,
		33.199127, 33.978802, 29.938038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651829, 33.406536, 30.312572>,  <32.501415, 33.930996, 29.907776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651829, 33.406536, 30.312572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962055, 33.659027, 30.309875>,  <33.148193, 33.810520, 30.308258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962055, 33.659027, 30.309875>,  <32.651829, 33.406536, 30.312572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962055, 33.659027, 30.309875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091421, -0.101748, 0.990601,
		0.624608, -0.768895, -0.136620,
		0.775569, 0.631227, -0.006741,
		33.194725, 33.848396, 30.307854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121197, 33.081829, 30.827549>,  <32.651829, 33.406536, 30.312572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121197, 33.081829, 30.827549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204189, 33.470798, 30.784941>,  <33.253986, 33.704178, 30.759377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204189, 33.470798, 30.784941>,  <33.121197, 33.081829, 30.827549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204189, 33.470798, 30.784941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, 0.089147, 0.991818,
		0.973961, -0.215520, -0.070363,
		0.207484, 0.972422, -0.106520,
		33.266434, 33.762524, 30.752985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567062, 33.140900, 31.344637>,  <33.121197, 33.081829, 30.827549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567062, 33.140900, 31.344637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462162, 33.517056, 31.258026>,  <33.399220, 33.742748, 31.206060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462162, 33.517056, 31.258026>,  <33.567062, 33.140900, 31.344637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462162, 33.517056, 31.258026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153840, 0.262253, 0.952657,
		0.952658, 0.216527, -0.213447,
		-0.262253, 0.940393, -0.216527,
		33.383488, 33.799175, 31.193068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047688, 33.600388, 31.748779>,  <33.567062, 33.140900, 31.344637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047688, 33.600388, 31.748779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.738621, 33.833179, 31.647360>,  <33.553181, 33.972855, 31.586508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.738621, 33.833179, 31.647360>,  <34.047688, 33.600388, 31.748779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738621, 33.833179, 31.647360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091233, 0.293454, 0.951609,
		0.628223, 0.758408, -0.173646,
		-0.772666, 0.581981, -0.253547,
		33.506821, 34.007774, 31.571297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842045, 33.705868, 31.915247>,  <34.047688, 33.600388, 31.748779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842045, 33.705868, 31.915247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915512, 33.344707, 32.070698>,  <34.959591, 33.128010, 32.163967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915512, 33.344707, 32.070698>,  <34.842045, 33.705868, 31.915247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915512, 33.344707, 32.070698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057351, -0.384838, -0.921201,
		0.981314, 0.191481, -0.018899,
		0.183665, -0.902904, 0.388629,
		34.970612, 33.073837, 32.187286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434162, 33.406406, 31.513639>,  <34.842045, 33.705868, 31.915247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434162, 33.406406, 31.513639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275921, 33.077972, 31.678236>,  <35.180977, 32.880913, 31.776995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275921, 33.077972, 31.678236>,  <35.434162, 33.406406, 31.513639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275921, 33.077972, 31.678236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110546, -0.487354, -0.866179,
		0.911745, -0.297173, 0.283566,
		-0.395602, -0.821081, 0.411491,
		35.157242, 32.831650, 31.801683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944492, 32.794006, 31.404272>,  <35.434162, 33.406406, 31.513639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944492, 32.794006, 31.404272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584446, 32.647385, 31.498440>,  <35.368416, 32.559410, 31.554941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584446, 32.647385, 31.498440>,  <35.944492, 32.794006, 31.404272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584446, 32.647385, 31.498440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079474, -0.669496, -0.738552,
		0.428331, -0.646076, 0.631758,
		-0.900120, -0.366553, 0.235419,
		35.314411, 32.537418, 31.569065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994247, 32.161999, 31.272091>,  <35.944492, 32.794006, 31.404272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994247, 32.161999, 31.272091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595135, 32.185394, 31.259390>,  <35.355667, 32.199432, 31.251770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595135, 32.185394, 31.259390>,  <35.994247, 32.161999, 31.272091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595135, 32.185394, 31.259390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002156, -0.505252, -0.862969,
		-0.066518, -0.860988, 0.504258,
		-0.997783, 0.058490, -0.031752,
		35.295799, 32.202942, 31.249865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842888, 31.565470, 31.093393>,  <35.994247, 32.161999, 31.272091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842888, 31.565470, 31.093393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517021, 31.778702, 31.002048>,  <35.321503, 31.906641, 30.947241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517021, 31.778702, 31.002048>,  <35.842888, 31.565470, 31.093393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517021, 31.778702, 31.002048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023298, -0.363373, -0.931352,
		-0.579467, -0.764058, 0.283607,
		-0.814663, 0.533081, -0.228364,
		35.272621, 31.938625, 30.933540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539978, 31.107164, 30.684193>,  <35.842888, 31.565470, 31.093393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539978, 31.107164, 30.684193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.374592, 31.457403, 30.584295>,  <35.275360, 31.667547, 30.524357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.374592, 31.457403, 30.584295>,  <35.539978, 31.107164, 30.684193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374592, 31.457403, 30.584295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074724, -0.240733, -0.967711,
		-0.907447, -0.418780, 0.034107,
		-0.413468, 0.875597, -0.249746,
		35.250553, 31.720083, 30.509371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012722, 30.932537, 30.214476>,  <35.539978, 31.107164, 30.684193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012722, 30.932537, 30.214476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114376, 31.314510, 30.153130>,  <35.175369, 31.543694, 30.116322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114376, 31.314510, 30.153130>,  <35.012722, 30.932537, 30.214476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114376, 31.314510, 30.153130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023656, -0.152389, -0.988038,
		-0.966880, 0.254719, -0.016137,
		0.254131, 0.954932, -0.153367,
		35.190617, 31.600990, 30.107119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557533, 31.174116, 29.569035>,  <35.012722, 30.932537, 30.214476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557533, 31.174116, 29.569035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877705, 31.410213, 29.610838>,  <35.069809, 31.551872, 29.635920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877705, 31.410213, 29.610838>,  <34.557533, 31.174116, 29.569035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877705, 31.410213, 29.610838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012209, 0.158262, -0.987322,
		-0.599302, 0.791558, 0.119471,
		0.800430, 0.590245, 0.104511,
		35.117832, 31.587288, 29.642191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436863, 31.699013, 29.060551>,  <34.557533, 31.174116, 29.569035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436863, 31.699013, 29.060551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821060, 31.743925, 29.162415>,  <35.051579, 31.770872, 29.223534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821060, 31.743925, 29.162415>,  <34.436863, 31.699013, 29.060551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821060, 31.743925, 29.162415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215266, 0.280252, -0.935478,
		-0.176404, 0.953337, 0.245009,
		0.960490, 0.112280, 0.254659,
		35.109207, 31.777609, 29.238811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639961, 32.344730, 28.761839>,  <34.436863, 31.699013, 29.060551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639961, 32.344730, 28.761839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990879, 32.161900, 28.820391>,  <35.201431, 32.052200, 28.855522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990879, 32.161900, 28.820391>,  <34.639961, 32.344730, 28.761839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990879, 32.161900, 28.820391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350309, 0.401346, -0.846289,
		0.328070, 0.793727, 0.512218,
		0.877299, -0.457077, 0.146380,
		35.254070, 32.024776, 28.864305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119652, 32.856331, 28.576542>,  <34.639961, 32.344730, 28.761839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119652, 32.856331, 28.576542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321537, 32.512085, 28.549379>,  <35.442669, 32.305538, 28.533083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321537, 32.512085, 28.549379>,  <35.119652, 32.856331, 28.576542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321537, 32.512085, 28.549379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491141, 0.350942, -0.797258,
		0.709960, 0.369038, 0.599807,
		0.504716, -0.860611, -0.067905,
		35.472950, 32.253902, 28.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902390, 33.032814, 28.518208>,  <35.119652, 32.856331, 28.576542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902390, 33.032814, 28.518208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846371, 32.670181, 28.358957>,  <35.812759, 32.452602, 28.263407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846371, 32.670181, 28.358957>,  <35.902390, 33.032814, 28.518208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846371, 32.670181, 28.358957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514066, 0.277078, -0.811766,
		0.846241, -0.318346, 0.427237,
		-0.140044, -0.906578, -0.398126,
		35.804356, 32.398209, 28.239519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483604, 32.888313, 28.175976>,  <35.902390, 33.032814, 28.518208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483604, 32.888313, 28.175976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.215206, 32.643658, 28.008329>,  <36.054169, 32.496864, 27.907742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.215206, 32.643658, 28.008329>,  <36.483604, 32.888313, 28.175976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215206, 32.643658, 28.008329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403321, 0.173228, -0.898512,
		0.622172, -0.771935, 0.130454,
		-0.670995, -0.611644, -0.419115,
		36.013908, 32.460163, 27.882595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840595, 32.411304, 27.764338>,  <36.483604, 32.888313, 28.175976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840595, 32.411304, 27.764338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471069, 32.450817, 27.616386>,  <36.249355, 32.474525, 27.527617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471069, 32.450817, 27.616386>,  <36.840595, 32.411304, 27.764338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471069, 32.450817, 27.616386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379539, 0.109700, -0.918649,
		-0.050173, -0.989044, -0.138836,
		-0.923814, 0.098785, -0.369877,
		36.193924, 32.480453, 27.505423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519901, 31.968079, 27.515823>,  <36.840595, 32.411304, 27.764338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519901, 31.968079, 27.515823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896328, 32.082733, 27.587645>,  <38.122185, 32.151527, 27.630737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896328, 32.082733, 27.587645>,  <37.519901, 31.968079, 27.515823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896328, 32.082733, 27.587645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141723, -0.147847, 0.978803,
		0.307110, -0.946562, -0.098510,
		0.941062, 0.286639, 0.179555,
		38.178646, 32.168724, 27.641510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855022, 31.474255, 27.935190>,  <37.519901, 31.968079, 27.515823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855022, 31.474255, 27.935190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 31.791359, 27.988312>,  <38.235748, 31.981623, 28.020185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 31.791359, 27.988312>,  <37.855022, 31.474255, 27.935190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092976, 31.791359, 27.988312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106758, -0.241679, 0.964466,
		0.796689, -0.559569, -0.228405,
		0.594886, 0.792763, 0.132804,
		38.271442, 32.029186, 28.028152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342468, 31.222971, 28.315660>,  <37.855022, 31.474255, 27.935190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342468, 31.222971, 28.315660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353203, 31.615534, 28.391684>,  <38.359642, 31.851070, 28.437298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353203, 31.615534, 28.391684>,  <38.342468, 31.222971, 28.315660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353203, 31.615534, 28.391684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180482, -0.191758, 0.964705,
		0.983212, 0.008414, -0.182272,
		0.026835, 0.981406, 0.190057,
		38.361252, 31.909956, 28.448700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840767, 31.316065, 28.887287>,  <38.342468, 31.222971, 28.315660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840767, 31.316065, 28.887287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666588, 31.676111, 28.892557>,  <38.562080, 31.892139, 28.895720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666588, 31.676111, 28.892557>,  <38.840767, 31.316065, 28.887287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666588, 31.676111, 28.892557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169727, 0.067717, 0.983162,
		0.884070, 0.430351, -0.182261,
		-0.435447, 0.900118, 0.013176,
		38.535954, 31.946146, 28.896509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374905, 31.861862, 29.079515>,  <38.840767, 31.316065, 28.887287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374905, 31.861862, 29.079515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001122, 31.976814, 29.163609>,  <38.776852, 32.045784, 29.214066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001122, 31.976814, 29.163609>,  <39.374905, 31.861862, 29.079515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001122, 31.976814, 29.163609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269558, 0.185175, 0.945013,
		0.232649, 0.939746, -0.250504,
		-0.934459, 0.287382, 0.210235,
		38.720783, 32.063030, 29.226679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529949, 32.473343, 29.364986>,  <39.374905, 31.861862, 29.079515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529949, 32.473343, 29.364986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156193, 32.388344, 29.479362>,  <38.931938, 32.337345, 29.547989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156193, 32.388344, 29.479362>,  <39.529949, 32.473343, 29.364986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156193, 32.388344, 29.479362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261822, 0.134696, 0.955670,
		-0.241592, 0.967834, -0.070223,
		-0.934389, -0.212496, 0.285942,
		38.875877, 32.324596, 29.565145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272663, 33.044727, 29.755844>,  <39.529949, 32.473343, 29.364986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272663, 33.044727, 29.755844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082172, 32.712532, 29.871435>,  <38.967880, 32.513214, 29.940790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082172, 32.712532, 29.871435>,  <39.272663, 33.044727, 29.755844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082172, 32.712532, 29.871435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200227, 0.217588, 0.955283,
		-0.856225, 0.512789, 0.062665,
		-0.476223, -0.830483, 0.288978,
		38.939304, 32.463387, 29.958128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182610, 33.179523, 30.466629>,  <39.272663, 33.044727, 29.755844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182610, 33.179523, 30.466629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071609, 32.795326, 30.458101>,  <39.005009, 32.564808, 30.452986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071609, 32.795326, 30.458101>,  <39.182610, 33.179523, 30.466629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071609, 32.795326, 30.458101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024216, -0.029175, 0.999281,
		-0.960420, 0.276785, 0.031355,
		-0.277501, -0.960489, -0.021318,
		38.988358, 32.507179, 30.451706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668526, 33.191582, 30.918133>,  <39.182610, 33.179523, 30.466629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668526, 33.191582, 30.918133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.793743, 32.814621, 30.871019>,  <38.868874, 32.588444, 30.842751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.793743, 32.814621, 30.871019>,  <38.668526, 33.191582, 30.918133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793743, 32.814621, 30.871019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110620, -0.086994, 0.990048,
		-0.943273, -0.322962, 0.077016,
		0.313048, -0.942405, -0.117785,
		38.887657, 32.531898, 30.835684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303646, 32.873638, 31.453773>,  <38.668526, 33.191582, 30.918133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303646, 32.873638, 31.453773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626999, 32.657990, 31.359226>,  <38.821011, 32.528599, 31.302498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626999, 32.657990, 31.359226>,  <38.303646, 32.873638, 31.453773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626999, 32.657990, 31.359226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227682, -0.083937, 0.970111,
		-0.542849, -0.838034, 0.054895,
		0.808378, -0.539123, -0.236370,
		38.869511, 32.496254, 31.288315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354172, 32.365856, 31.860344>,  <38.303646, 32.873638, 31.453773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354172, 32.365856, 31.860344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732124, 32.377312, 31.729887>,  <38.958897, 32.384186, 31.651613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732124, 32.377312, 31.729887>,  <38.354172, 32.365856, 31.860344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732124, 32.377312, 31.729887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327396, -0.086851, 0.940887,
		-0.001380, -0.995809, -0.091441,
		0.944886, 0.028639, -0.326144,
		39.015591, 32.385902, 31.632044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589844, 31.864880, 32.288746>,  <38.354172, 32.365856, 31.860344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589844, 31.864880, 32.288746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906216, 32.070244, 32.155579>,  <39.096039, 32.193462, 32.075680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906216, 32.070244, 32.155579>,  <38.589844, 31.864880, 32.288746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906216, 32.070244, 32.155579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423791, -0.067157, 0.903267,
		0.441390, -0.855511, -0.270696,
		0.790934, 0.513411, -0.332915,
		39.143497, 32.224266, 32.055702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087852, 31.465441, 32.429848>,  <38.589844, 31.864880, 32.288746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087852, 31.465441, 32.429848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233246, 31.837435, 32.407913>,  <39.320484, 32.060631, 32.394753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233246, 31.837435, 32.407913>,  <39.087852, 31.465441, 32.429848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233246, 31.837435, 32.407913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609766, -0.193001, 0.768724,
		0.704317, -0.312858, -0.637226,
		0.363487, 0.929984, -0.054836,
		39.342293, 32.116428, 32.391460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818554, 31.348227, 32.463924>,  <39.087852, 31.465441, 32.429848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818554, 31.348227, 32.463924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781300, 31.728849, 32.581139>,  <39.758949, 31.957222, 32.651466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781300, 31.728849, 32.581139>,  <39.818554, 31.348227, 32.463924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781300, 31.728849, 32.581139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584760, -0.185930, 0.789611,
		0.805843, 0.244892, -0.539116,
		-0.093131, 0.951555, 0.293034,
		39.753361, 32.014317, 32.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.256020, 34.982430, 27.623510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.912544, 35.133251, 27.484663>,  <40.706459, 35.223743, 27.401354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.912544, 35.133251, 27.484663>,  <41.256020, 34.982430, 27.623510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912544, 35.133251, 27.484663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211108, -0.356943, -0.909959,
		-0.467009, -0.854645, 0.226901,
		-0.858683, 0.377058, -0.347119,
		40.654938, 35.246368, 27.380527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863953, 34.486214, 27.213572>,  <41.256020, 34.982430, 27.623510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863953, 34.486214, 27.213572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.713943, 34.826664, 27.066631>,  <40.623940, 35.030933, 26.978468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.713943, 34.826664, 27.066631>,  <40.863953, 34.486214, 27.213572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713943, 34.826664, 27.066631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240010, -0.293615, -0.925303,
		-0.895409, -0.435174, -0.094168,
		-0.375018, 0.851125, -0.367351,
		40.601437, 35.082001, 26.956427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546570, 34.300095, 26.553917>,  <40.863953, 34.486214, 27.213572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546570, 34.300095, 26.553917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615025, 34.693348, 26.528137>,  <40.656097, 34.929302, 26.512669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615025, 34.693348, 26.528137>,  <40.546570, 34.300095, 26.553917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615025, 34.693348, 26.528137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149332, -0.090544, -0.984633,
		-0.973864, 0.158885, -0.162310,
		0.171139, 0.983136, -0.064451,
		40.666367, 34.988289, 26.508802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158577, 34.561722, 25.985161>,  <40.546570, 34.300095, 26.553917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158577, 34.561722, 25.985161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.432049, 34.848186, 26.041292>,  <40.596134, 35.020065, 26.074970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.432049, 34.848186, 26.041292>,  <40.158577, 34.561722, 25.985161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432049, 34.848186, 26.041292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124518, 0.074992, -0.989379,
		-0.719079, 0.693894, -0.037905,
		0.683682, 0.716161, 0.140327,
		40.637154, 35.063034, 26.083391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972992, 35.000519, 25.537201>,  <40.158577, 34.561722, 25.985161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972992, 35.000519, 25.537201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349121, 35.103436, 25.626274>,  <40.574799, 35.165184, 25.679718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349121, 35.103436, 25.626274>,  <39.972992, 35.000519, 25.537201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349121, 35.103436, 25.626274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184745, 0.163548, -0.969083,
		-0.285754, 0.952394, 0.106256,
		0.940326, 0.257289, 0.222685,
		40.631218, 35.180622, 25.693079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155891, 35.704388, 25.241720>,  <39.972992, 35.000519, 25.537201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155891, 35.704388, 25.241720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505569, 35.531086, 25.329418>,  <40.715378, 35.427105, 25.382038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505569, 35.531086, 25.329418>,  <40.155891, 35.704388, 25.241720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505569, 35.531086, 25.329418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273447, 0.066141, -0.959610,
		0.401255, 0.898841, 0.176292,
		0.874198, -0.433255, 0.219246,
		40.767830, 35.401108, 25.395191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567307, 36.086224, 24.862411>,  <40.155891, 35.704388, 25.241720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567307, 36.086224, 24.862411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779636, 35.750130, 24.906641>,  <40.907036, 35.548473, 24.933178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779636, 35.750130, 24.906641>,  <40.567307, 36.086224, 24.862411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779636, 35.750130, 24.906641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216352, 0.008207, -0.976281,
		0.819397, 0.542161, 0.186143,
		0.530829, -0.840234, 0.110573,
		40.938885, 35.498058, 24.939814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217319, 36.280437, 24.473793>,  <40.567307, 36.086224, 24.862411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217319, 36.280437, 24.473793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161888, 35.889877, 24.540058>,  <41.128628, 35.655540, 24.579817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161888, 35.889877, 24.540058>,  <41.217319, 36.280437, 24.473793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161888, 35.889877, 24.540058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358843, -0.205416, -0.910514,
		0.923054, -0.066730, 0.378839,
		-0.138578, -0.976397, 0.165665,
		41.120316, 35.596958, 24.589758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791859, 35.984562, 24.213022>,  <41.217319, 36.280437, 24.473793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791859, 35.984562, 24.213022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513447, 35.697666, 24.226334>,  <41.346401, 35.525528, 24.234320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513447, 35.697666, 24.226334>,  <41.791859, 35.984562, 24.213022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513447, 35.697666, 24.226334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221397, -0.258476, -0.940305,
		0.683029, -0.647111, 0.338702,
		-0.696028, -0.717243, 0.033278,
		41.304638, 35.482494, 24.236317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128849, 35.360275, 24.142735>,  <41.791859, 35.984562, 24.213022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128849, 35.360275, 24.142735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.747086, 35.311962, 24.033550>,  <41.518028, 35.282974, 23.968039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.747086, 35.311962, 24.033550>,  <42.128849, 35.360275, 24.142735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747086, 35.311962, 24.033550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298114, -0.339851, -0.891980,
		0.014967, -0.932691, 0.360365,
		-0.954413, -0.120781, -0.272962,
		41.460762, 35.275726, 23.951662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059547, 34.680691, 23.966831>,  <42.128849, 35.360275, 24.142735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059547, 34.680691, 23.966831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770126, 34.868176, 23.764137>,  <41.596474, 34.980667, 23.642521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770126, 34.868176, 23.764137>,  <42.059547, 34.680691, 23.966831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770126, 34.868176, 23.764137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388651, -0.330062, -0.860238,
		-0.570458, -0.819370, 0.056652,
		-0.723552, 0.468712, -0.506736,
		41.553062, 35.008789, 23.612116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951191, 34.248276, 23.439135>,  <42.059547, 34.680691, 23.966831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951191, 34.248276, 23.439135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740711, 34.561127, 23.305634>,  <41.614422, 34.748837, 23.225533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740711, 34.561127, 23.305634>,  <41.951191, 34.248276, 23.439135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740711, 34.561127, 23.305634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367597, -0.144701, -0.918659,
		-0.766801, -0.606087, -0.211365,
		-0.526202, 0.782126, -0.333753,
		41.582851, 34.795765, 23.205507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546795, 34.076366, 22.784794>,  <41.951191, 34.248276, 23.439135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546795, 34.076366, 22.784794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.630718, 34.466496, 22.812288>,  <41.681072, 34.700573, 22.828785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.630718, 34.466496, 22.812288>,  <41.546795, 34.076366, 22.784794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630718, 34.466496, 22.812288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327388, -0.003833, -0.944882,
		-0.921303, 0.220745, -0.320113,
		0.209805, 0.975324, 0.068738,
		41.693661, 34.759094, 22.832911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058613, 34.397026, 22.271622>,  <41.546795, 34.076366, 22.784794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058613, 34.397026, 22.271622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412388, 34.556019, 22.369423>,  <41.624653, 34.651417, 22.428104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412388, 34.556019, 22.369423>,  <41.058613, 34.397026, 22.271622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412388, 34.556019, 22.369423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208368, 0.132446, -0.969041,
		-0.417563, 0.908000, 0.034316,
		0.884434, 0.397485, 0.244503,
		41.677719, 34.675266, 22.442774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609974, 33.902328, 22.650064>,  <41.058613, 34.397026, 22.271622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609974, 33.902328, 22.650064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374458, 33.609856, 22.512249>,  <40.233150, 33.434372, 22.429560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374458, 33.609856, 22.512249>,  <40.609974, 33.902328, 22.650064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374458, 33.609856, 22.512249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505455, 0.000435, 0.862853,
		-0.630751, 0.682185, -0.369835,
		-0.588786, -0.731180, -0.344540,
		40.197823, 33.390503, 22.408888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821167, 34.009491, 22.923800>,  <40.609974, 33.902328, 22.650064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821167, 34.009491, 22.923800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942001, 33.631443, 22.874023>,  <40.014500, 33.404613, 22.844158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942001, 33.631443, 22.874023>,  <39.821167, 34.009491, 22.923800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942001, 33.631443, 22.874023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346132, -0.230377, 0.909461,
		-0.888222, -0.231660, -0.396731,
		0.302083, -0.945124, -0.124441,
		40.032627, 33.347904, 22.836691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248634, 33.643410, 22.989492>,  <39.821167, 34.009491, 22.923800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248634, 33.643410, 22.989492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550934, 33.402966, 23.093430>,  <39.732311, 33.258701, 23.155792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550934, 33.402966, 23.093430>,  <39.248634, 33.643410, 22.989492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550934, 33.402966, 23.093430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461072, -0.206648, 0.862965,
		-0.465039, -0.771989, -0.433327,
		0.755746, -0.601107, 0.259844,
		39.777657, 33.222633, 23.171383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993843, 33.027012, 23.140875>,  <39.248634, 33.643410, 22.989492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993843, 33.027012, 23.140875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354366, 32.996540, 23.311443>,  <39.570683, 32.978256, 23.413784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354366, 32.996540, 23.311443>,  <38.993843, 33.027012, 23.140875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354366, 32.996540, 23.311443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429141, -0.291023, 0.855069,
		0.058959, -0.953678, -0.294995,
		0.901311, -0.076180, 0.426420,
		39.624760, 32.973686, 23.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981792, 32.398441, 23.428572>,  <38.993843, 33.027012, 23.140875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981792, 32.398441, 23.428572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272747, 32.587116, 23.627941>,  <39.447319, 32.700321, 23.747562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272747, 32.587116, 23.627941>,  <38.981792, 32.398441, 23.428572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272747, 32.587116, 23.627941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514485, -0.105795, 0.850948,
		0.454112, -0.875396, 0.165723,
		0.727384, 0.471688, 0.498421,
		39.490963, 32.728622, 23.777468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166023, 31.945133, 23.965424>,  <38.981792, 32.398441, 23.428572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166023, 31.945133, 23.965424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315643, 32.294262, 24.090816>,  <39.405415, 32.503738, 24.166052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315643, 32.294262, 24.090816>,  <39.166023, 31.945133, 23.965424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315643, 32.294262, 24.090816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305970, -0.202949, 0.930158,
		0.875481, -0.443843, 0.191143,
		0.374052, 0.872820, 0.313481,
		39.427860, 32.556107, 24.184860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573704, 31.782814, 24.545368>,  <39.166023, 31.945133, 23.965424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573704, 31.782814, 24.545368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509083, 32.175892, 24.581621>,  <39.470310, 32.411739, 24.603373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509083, 32.175892, 24.581621>,  <39.573704, 31.782814, 24.545368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509083, 32.175892, 24.581621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251255, -0.129770, 0.959182,
		0.954344, 0.132185, 0.267871,
		-0.161551, 0.982694, 0.090633,
		39.460617, 32.470699, 24.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968945, 31.973749, 25.080950>,  <39.573704, 31.782814, 24.545368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968945, 31.973749, 25.080950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.703056, 32.269932, 25.041225>,  <39.543522, 32.447643, 25.017391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.703056, 32.269932, 25.041225>,  <39.968945, 31.973749, 25.080950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703056, 32.269932, 25.041225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176546, -0.026523, 0.983935,
		0.725928, 0.671580, 0.148355,
		-0.664725, 0.740458, -0.099311,
		39.503639, 32.492069, 25.011433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189968, 32.425892, 25.619156>,  <39.968945, 31.973749, 25.080950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189968, 32.425892, 25.619156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802803, 32.492016, 25.543446>,  <39.570503, 32.531689, 25.498020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802803, 32.492016, 25.543446>,  <40.189968, 32.425892, 25.619156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802803, 32.492016, 25.543446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206508, -0.094033, 0.973916,
		0.143199, 0.981749, 0.125153,
		-0.967909, 0.165308, -0.189274,
		39.512432, 32.541607, 25.486664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950642, 32.831802, 26.225777>,  <40.189968, 32.425892, 25.619156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950642, 32.831802, 26.225777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.606144, 32.723633, 26.053667>,  <39.399445, 32.658730, 25.950401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.606144, 32.723633, 26.053667>,  <39.950642, 32.831802, 26.225777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606144, 32.723633, 26.053667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426489, -0.075813, 0.901310,
		-0.276357, 0.959751, -0.050040,
		-0.861240, -0.270425, -0.430275,
		39.347771, 32.642506, 25.924585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452503, 33.238056, 26.456190>,  <39.950642, 32.831802, 26.225777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452503, 33.238056, 26.456190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266628, 32.899578, 26.351864>,  <39.155102, 32.696491, 26.289268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266628, 32.899578, 26.351864>,  <39.452503, 33.238056, 26.456190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266628, 32.899578, 26.351864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394423, -0.065908, 0.916563,
		-0.792778, 0.528786, -0.303131,
		-0.464687, -0.846192, -0.260816,
		39.127224, 32.645721, 26.273619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769310, 33.374802, 26.621250>,  <39.452503, 33.238056, 26.456190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769310, 33.374802, 26.621250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780922, 32.975780, 26.595789>,  <38.787888, 32.736370, 26.580511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780922, 32.975780, 26.595789>,  <38.769310, 33.374802, 26.621250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780922, 32.975780, 26.595789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481587, -0.069762, 0.873617,
		-0.875917, 0.005294, -0.482432,
		0.029030, -0.997549, -0.063655,
		38.789631, 32.676514, 26.576693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138950, 33.124489, 26.749111>,  <38.769310, 33.374802, 26.621250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138950, 33.124489, 26.749111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373058, 32.810200, 26.829199>,  <38.513523, 32.621624, 26.877253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373058, 32.810200, 26.829199>,  <38.138950, 33.124489, 26.749111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373058, 32.810200, 26.829199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518516, -0.172840, 0.837417,
		-0.623376, -0.593935, -0.508571,
		0.585273, -0.785728, 0.200220,
		38.548641, 32.574482, 26.889265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665707, 32.676815, 27.076136>,  <38.138950, 33.124489, 26.749111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665707, 32.676815, 27.076136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024490, 32.533180, 27.179304>,  <38.239761, 32.446999, 27.241205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024490, 32.533180, 27.179304>,  <37.665707, 32.676815, 27.076136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024490, 32.533180, 27.179304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350641, -0.222432, 0.909712,
		-0.269297, -0.906410, -0.325423,
		0.896956, -0.359090, 0.257924,
		38.293575, 32.425453, 27.256681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878704, 32.496014, 26.947979>,  <37.665707, 32.676815, 27.076136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878704, 32.496014, 26.947979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484127, 32.560917, 26.938198>,  <36.247379, 32.599861, 26.932329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484127, 32.560917, 26.938198>,  <36.878704, 32.496014, 26.947979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484127, 32.560917, 26.938198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053855, 0.179389, -0.982303,
		-0.155003, -0.970305, -0.185696,
		-0.986445, 0.162261, -0.024450,
		36.188194, 32.609596, 26.930862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604126, 32.061031, 26.395287>,  <36.878704, 32.496014, 26.947979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604126, 32.061031, 26.395287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328075, 32.342087, 26.464602>,  <36.162445, 32.510719, 26.506191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328075, 32.342087, 26.464602>,  <36.604126, 32.061031, 26.395287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328075, 32.342087, 26.464602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005728, 0.244744, -0.969571,
		-0.723669, -0.668131, -0.172928,
		-0.690124, 0.702639, 0.173287,
		36.121037, 32.552879, 26.516588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933231, 32.006527, 25.865412>,  <36.604126, 32.061031, 26.395287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933231, 32.006527, 25.865412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901951, 32.377647, 26.011326>,  <35.883183, 32.600319, 26.098875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901951, 32.377647, 26.011326>,  <35.933231, 32.006527, 25.865412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901951, 32.377647, 26.011326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121749, 0.354280, -0.927180,
		-0.989476, -0.116919, 0.085254,
		-0.078201, 0.927802, 0.364786,
		35.878490, 32.655987, 26.120762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329891, 32.284454, 25.514782>,  <35.933231, 32.006527, 25.865412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329891, 32.284454, 25.514782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543571, 32.602871, 25.628590>,  <35.671780, 32.793919, 25.696875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543571, 32.602871, 25.628590>,  <35.329891, 32.284454, 25.514782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543571, 32.602871, 25.628590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142516, 0.246944, -0.958493,
		-0.833257, 0.552578, 0.018470,
		0.534203, 0.796038, 0.284519,
		35.703831, 32.841682, 25.713945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129730, 32.839787, 25.071751>,  <35.329891, 32.284454, 25.514782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129730, 32.839787, 25.071751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491508, 32.923607, 25.220375>,  <35.708576, 32.973900, 25.309551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491508, 32.923607, 25.220375>,  <35.129730, 32.839787, 25.071751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491508, 32.923607, 25.220375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326480, 0.220575, -0.919107,
		-0.274556, 0.952594, 0.131085,
		0.904450, 0.209550, 0.371563,
		35.762844, 32.986473, 25.331844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237305, 33.355919, 24.644716>,  <35.129730, 32.839787, 25.071751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237305, 33.355919, 24.644716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581528, 33.240952, 24.812923>,  <35.788063, 33.171970, 24.913847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581528, 33.240952, 24.812923>,  <35.237305, 33.355919, 24.644716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581528, 33.240952, 24.812923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471251, 0.135950, -0.871459,
		0.193301, 0.948109, 0.252438,
		0.860556, -0.287416, 0.420517,
		35.839695, 33.154728, 24.939079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721958, 33.904629, 24.460377>,  <35.237305, 33.355919, 24.644716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721958, 33.904629, 24.460377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946159, 33.586540, 24.552868>,  <36.080681, 33.395687, 24.608362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946159, 33.586540, 24.552868>,  <35.721958, 33.904629, 24.460377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946159, 33.586540, 24.552868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564396, 0.162468, -0.809359,
		0.606051, 0.584148, 0.539882,
		0.560499, -0.795220, 0.231227,
		36.114307, 33.347973, 24.622236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893929, 34.665333, 24.571415>,  <35.721958, 33.904629, 24.460377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893929, 34.665333, 24.571415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573162, 34.870792, 24.449371>,  <35.380703, 34.994068, 24.376144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573162, 34.870792, 24.449371>,  <35.893929, 34.665333, 24.571415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573162, 34.870792, 24.449371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387901, -0.059236, 0.919795,
		0.454380, 0.855952, 0.246748,
		-0.801917, 0.513650, -0.305109,
		35.332588, 35.024887, 24.357840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711906, 35.108959, 25.134415>,  <35.893929, 34.665333, 24.571415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711906, 35.108959, 25.134415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.382172, 35.108227, 24.907978>,  <35.184330, 35.107788, 24.772116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.382172, 35.108227, 24.907978>,  <35.711906, 35.108959, 25.134415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382172, 35.108227, 24.907978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565986, 0.022342, 0.824112,
		0.011142, 0.999749, -0.019451,
		-0.824339, -0.001827, -0.566093,
		35.134869, 35.107677, 24.738150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305862, 35.516979, 25.464001>,  <35.711906, 35.108959, 25.134415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305862, 35.516979, 25.464001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062679, 35.297398, 25.234554>,  <34.916771, 35.165649, 25.096888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062679, 35.297398, 25.234554>,  <35.305862, 35.516979, 25.464001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062679, 35.297398, 25.234554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708881, 0.049908, 0.703560,
		-0.357597, 0.834359, -0.419488,
		-0.607957, -0.548958, -0.573614,
		34.880291, 35.132710, 25.062469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579128, 35.766369, 25.499407>,  <35.305862, 35.516979, 25.464001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579128, 35.766369, 25.499407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509274, 35.399784, 25.355406>,  <34.467361, 35.179832, 25.269005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509274, 35.399784, 25.355406>,  <34.579128, 35.766369, 25.499407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509274, 35.399784, 25.355406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693794, -0.144908, 0.705444,
		-0.698679, 0.372963, -0.610530,
		-0.174633, -0.916461, -0.360004,
		34.456882, 35.124847, 25.247404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961559, 35.633720, 25.673750>,  <34.579128, 35.766369, 25.499407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961559, 35.633720, 25.673750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115528, 35.270519, 25.607576>,  <34.207909, 35.052601, 25.567871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115528, 35.270519, 25.607576>,  <33.961559, 35.633720, 25.673750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115528, 35.270519, 25.607576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443850, -0.339273, 0.829392,
		-0.809215, -0.245825, -0.533611,
		0.384925, -0.908000, -0.165435,
		34.231007, 34.998119, 25.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316074, 35.070610, 25.716999>,  <33.961559, 35.633720, 25.673750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316074, 35.070610, 25.716999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678169, 34.915665, 25.786852>,  <33.895428, 34.822697, 25.828764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678169, 34.915665, 25.786852>,  <33.316074, 35.070610, 25.716999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678169, 34.915665, 25.786852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317993, -0.345005, 0.883093,
		-0.281827, -0.854940, -0.435489,
		0.905237, -0.387361, 0.174633,
		33.949741, 34.799458, 25.839243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151501, 34.511681, 25.847445>,  <33.316074, 35.070610, 25.716999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151501, 34.511681, 25.847445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511475, 34.502792, 26.021627>,  <33.727459, 34.497459, 26.126137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511475, 34.502792, 26.021627>,  <33.151501, 34.511681, 25.847445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511475, 34.502792, 26.021627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435542, -0.092810, 0.895371,
		0.020525, -0.995436, -0.093198,
		0.899935, -0.022214, 0.435459,
		33.781456, 34.496128, 26.152266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.071110, 37.676029, 22.100386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157074, 37.373478, 22.347513>,  <40.208652, 37.191948, 22.495790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157074, 37.373478, 22.347513>,  <40.071110, 37.676029, 22.100386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157074, 37.373478, 22.347513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481346, 0.468398, 0.740885,
		-0.849777, -0.456607, -0.263418,
		0.214909, -0.756382, 0.617819,
		40.221546, 37.146564, 22.532860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654530, 37.766281, 22.650885>,  <40.071110, 37.676029, 22.100386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654530, 37.766281, 22.650885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887730, 37.505112, 22.844297>,  <40.027649, 37.348412, 22.960344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887730, 37.505112, 22.844297>,  <39.654530, 37.766281, 22.650885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887730, 37.505112, 22.844297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422116, 0.265097, 0.866915,
		-0.694214, -0.709515, -0.121060,
		0.582997, -0.652925, 0.483532,
		40.062630, 37.309235, 22.989357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237991, 37.257236, 22.976486>,  <39.654530, 37.766281, 22.650885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237991, 37.257236, 22.976486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.577499, 37.244270, 23.187595>,  <39.781204, 37.236492, 23.314260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.577499, 37.244270, 23.187595>,  <39.237991, 37.257236, 22.976486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577499, 37.244270, 23.187595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508085, 0.226434, 0.831010,
		-0.146441, -0.973487, 0.175721,
		0.848766, -0.032412, 0.527774,
		39.832130, 37.234547, 23.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154579, 36.734051, 23.591608>,  <39.237991, 37.257236, 22.976486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154579, 36.734051, 23.591608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450890, 36.987728, 23.680197>,  <39.628677, 37.139935, 23.733349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450890, 36.987728, 23.680197>,  <39.154579, 36.734051, 23.591608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450890, 36.987728, 23.680197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339807, 0.069373, 0.937933,
		0.579469, -0.770054, 0.266893,
		0.740775, 0.634195, 0.221470,
		39.673122, 37.177986, 23.746637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437569, 36.376835, 24.185015>,  <39.154579, 36.734051, 23.591608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437569, 36.376835, 24.185015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571003, 36.753922, 24.185358>,  <39.651062, 36.980175, 24.185564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571003, 36.753922, 24.185358>,  <39.437569, 36.376835, 24.185015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571003, 36.753922, 24.185358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541024, 0.190698, 0.819101,
		0.772020, -0.273702, 0.573648,
		0.333584, 0.942720, 0.000857,
		39.671078, 37.036739, 24.185616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707611, 36.583813, 24.893101>,  <39.437569, 36.376835, 24.185015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707611, 36.583813, 24.893101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.604210, 36.918976, 24.700813>,  <39.542171, 37.120075, 24.585442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.604210, 36.918976, 24.700813>,  <39.707611, 36.583813, 24.893101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604210, 36.918976, 24.700813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461697, 0.329950, 0.823389,
		0.848536, 0.434793, 0.301567,
		-0.258502, 0.837907, -0.480717,
		39.526661, 37.170349, 24.556599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015404, 37.111473, 25.312258>,  <39.707611, 36.583813, 24.893101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015404, 37.111473, 25.312258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704967, 37.284718, 25.128908>,  <39.518707, 37.388664, 25.018898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704967, 37.284718, 25.128908>,  <40.015404, 37.111473, 25.312258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704967, 37.284718, 25.128908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386753, 0.247225, 0.888426,
		0.498109, 0.866772, -0.024361,
		-0.776086, 0.433111, -0.458372,
		39.472141, 37.414650, 24.991396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849327, 37.749805, 25.686415>,  <40.015404, 37.111473, 25.312258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849327, 37.749805, 25.686415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.522232, 37.675636, 25.468452>,  <39.325974, 37.631134, 25.337675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.522232, 37.675636, 25.468452>,  <39.849327, 37.749805, 25.686415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522232, 37.675636, 25.468452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557613, 0.489966, 0.670075,
		0.142737, 0.851793, -0.504059,
		-0.817737, -0.185425, -0.544907,
		39.276913, 37.620010, 25.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631386, 38.436577, 25.873940>,  <39.849327, 37.749805, 25.686415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631386, 38.436577, 25.873940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353302, 38.206383, 25.701660>,  <39.186451, 38.068264, 25.598293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353302, 38.206383, 25.701660>,  <39.631386, 38.436577, 25.873940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353302, 38.206383, 25.701660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672834, 0.310150, 0.671641,
		-0.252940, 0.756718, -0.602826,
		-0.695209, -0.575487, -0.430696,
		39.144741, 38.033737, 25.572451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964901, 38.892601, 25.758335>,  <39.631386, 38.436577, 25.873940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964901, 38.892601, 25.758335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893822, 38.500732, 25.795572>,  <38.851173, 38.265610, 25.817915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893822, 38.500732, 25.795572>,  <38.964901, 38.892601, 25.758335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893822, 38.500732, 25.795572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737521, 0.195209, 0.646496,
		-0.651526, 0.046223, -0.757217,
		-0.177699, -0.979672, 0.093093,
		38.840511, 38.206829, 25.823500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254444, 38.936485, 25.798401>,  <38.964901, 38.892601, 25.758335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254444, 38.936485, 25.798401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384647, 38.590935, 25.952162>,  <38.462769, 38.383606, 26.044418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384647, 38.590935, 25.952162>,  <38.254444, 38.936485, 25.798401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384647, 38.590935, 25.952162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475561, 0.201805, 0.856222,
		-0.817241, -0.461518, -0.345135,
		0.325512, -0.863873, 0.384403,
		38.482300, 38.331772, 26.067482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595657, 38.481724, 25.951572>,  <38.254444, 38.936485, 25.798401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595657, 38.481724, 25.951572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896336, 38.372505, 26.191706>,  <38.076744, 38.306973, 26.335785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896336, 38.372505, 26.191706>,  <37.595657, 38.481724, 25.951572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896336, 38.372505, 26.191706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584115, 0.146998, 0.798249,
		-0.306208, -0.950703, -0.048994,
		0.751696, -0.273048, 0.600332,
		38.121845, 38.290592, 26.371805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970737, 38.011936, 25.847380>,  <37.595657, 38.481724, 25.951572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970737, 38.011936, 25.847380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652912, 38.251389, 25.806749>,  <36.462219, 38.395061, 25.782372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652912, 38.251389, 25.806749>,  <36.970737, 38.011936, 25.847380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652912, 38.251389, 25.806749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063523, -0.084416, -0.994404,
		-0.603855, -0.796565, 0.029047,
		-0.794559, 0.598630, -0.101575,
		36.414543, 38.430977, 25.776278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605625, 37.752224, 25.282366>,  <36.970737, 38.011936, 25.847380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605625, 37.752224, 25.282366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.480732, 38.131710, 25.302130>,  <36.405796, 38.359402, 25.313988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.480732, 38.131710, 25.302130>,  <36.605625, 37.752224, 25.282366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480732, 38.131710, 25.302130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079648, 0.025683, -0.996492,
		-0.946660, -0.315076, 0.067544,
		-0.312236, 0.948719, 0.049408,
		36.387062, 38.416325, 25.316952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032520, 37.736328, 24.860867>,  <36.605625, 37.752224, 25.282366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032520, 37.736328, 24.860867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.166561, 38.113033, 24.872042>,  <36.246986, 38.339058, 24.878746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.166561, 38.113033, 24.872042>,  <36.032520, 37.736328, 24.860867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166561, 38.113033, 24.872042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025645, 0.038756, -0.998920,
		-0.941831, 0.334028, 0.037139,
		0.335106, 0.941766, 0.027936,
		36.267094, 38.395565, 24.880423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713543, 38.065964, 24.344810>,  <36.032520, 37.736328, 24.860867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713543, 38.065964, 24.344810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007050, 38.329952, 24.409334>,  <36.183155, 38.488346, 24.448048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007050, 38.329952, 24.409334>,  <35.713543, 38.065964, 24.344810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007050, 38.329952, 24.409334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067477, 0.307049, -0.949298,
		-0.676039, 0.685682, 0.269836,
		0.733770, 0.659971, 0.161310,
		36.227180, 38.527943, 24.457727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604828, 38.622654, 24.039736>,  <35.713543, 38.065964, 24.344810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604828, 38.622654, 24.039736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.001873, 38.663158, 24.066467>,  <36.240101, 38.687462, 24.082506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.001873, 38.663158, 24.066467>,  <35.604828, 38.622654, 24.039736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001873, 38.663158, 24.066467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047553, 0.182053, -0.982138,
		-0.111622, 0.978061, 0.175893,
		0.992612, 0.101263, 0.066831,
		36.299656, 38.693539, 24.086517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814793, 39.183510, 23.662939>,  <35.604828, 38.622654, 24.039736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814793, 39.183510, 23.662939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155350, 38.974594, 23.643574>,  <36.359684, 38.849243, 23.631954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155350, 38.974594, 23.643574>,  <35.814793, 39.183510, 23.662939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155350, 38.974594, 23.643574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053173, 0.005886, -0.998568,
		0.521828, 0.852747, -0.022760,
		0.851392, -0.522291, -0.048414,
		36.410767, 38.817905, 23.629049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264324, 39.449459, 23.087435>,  <35.814793, 39.183510, 23.662939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264324, 39.449459, 23.087435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.405560, 39.083405, 23.165268>,  <36.490299, 38.863773, 23.211967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.405560, 39.083405, 23.165268>,  <36.264324, 39.449459, 23.087435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405560, 39.083405, 23.165268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145501, -0.151735, -0.977653,
		0.924207, 0.373509, 0.079577,
		0.353088, -0.915132, 0.194581,
		36.511486, 38.808865, 23.223642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912769, 39.440002, 22.709463>,  <36.264324, 39.449459, 23.087435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912769, 39.440002, 22.709463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.789253, 39.063469, 22.763931>,  <36.715141, 38.837551, 22.796612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.789253, 39.063469, 22.763931>,  <36.912769, 39.440002, 22.709463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789253, 39.063469, 22.763931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011394, -0.146816, -0.989098,
		0.951061, -0.303874, 0.056061,
		-0.308792, -0.941332, 0.136168,
		36.696617, 38.781071, 22.804781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240311, 39.114147, 22.097233>,  <36.912769, 39.440002, 22.709463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240311, 39.114147, 22.097233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997711, 38.836823, 22.252913>,  <36.852154, 38.670425, 22.346321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997711, 38.836823, 22.252913>,  <37.240311, 39.114147, 22.097233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997711, 38.836823, 22.252913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189911, -0.349015, -0.917672,
		0.772074, -0.630477, 0.080008,
		-0.606495, -0.693316, 0.389200,
		36.815762, 38.628826, 22.369673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482868, 38.384315, 21.900393>,  <37.240311, 39.114147, 22.097233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482868, 38.384315, 21.900393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093147, 38.350208, 21.983786>,  <36.859314, 38.329746, 22.033821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093147, 38.350208, 21.983786>,  <37.482868, 38.384315, 21.900393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093147, 38.350208, 21.983786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180175, -0.260441, -0.948529,
		0.135175, -0.961717, 0.238385,
		-0.974302, -0.085266, 0.208483,
		36.800858, 38.324627, 22.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269352, 37.691513, 21.628019>,  <37.482868, 38.384315, 21.900393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269352, 37.691513, 21.628019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935928, 37.908669, 21.668907>,  <36.735874, 38.038963, 21.693439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935928, 37.908669, 21.668907>,  <37.269352, 37.691513, 21.628019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935928, 37.908669, 21.668907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362323, -0.397592, -0.842996,
		-0.417014, -0.739723, 0.528119,
		-0.833559, 0.542891, 0.102217,
		36.685860, 38.071537, 21.699574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779503, 37.310631, 21.342344>,  <37.269352, 37.691513, 21.628019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779503, 37.310631, 21.342344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576462, 37.654499, 21.365364>,  <36.454636, 37.860821, 21.379175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576462, 37.654499, 21.365364>,  <36.779503, 37.310631, 21.342344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576462, 37.654499, 21.365364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548407, -0.270852, -0.791132,
		-0.664523, -0.433140, 0.608932,
		-0.507601, 0.859668, 0.057550,
		36.424183, 37.912399, 21.382629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050007, 37.156109, 21.410837>,  <36.779503, 37.310631, 21.342344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050007, 37.156109, 21.410837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.085777, 37.518051, 21.244345>,  <36.107239, 37.735214, 21.144449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.085777, 37.518051, 21.244345>,  <36.050007, 37.156109, 21.410837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085777, 37.518051, 21.244345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664511, -0.257087, -0.701663,
		-0.741908, 0.339338, 0.578292,
		0.089430, 0.904851, -0.416229,
		36.112606, 37.789505, 21.119476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594398, 37.043514, 22.024214>,  <36.050007, 37.156109, 21.410837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594398, 37.043514, 22.024214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308422, 36.826290, 21.848057>,  <36.136837, 36.695953, 21.742363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308422, 36.826290, 21.848057>,  <36.594398, 37.043514, 22.024214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308422, 36.826290, 21.848057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323065, -0.302014, 0.896893,
		-0.620076, 0.783497, 0.040476,
		-0.714937, -0.543065, -0.440392,
		36.093941, 36.663372, 21.715939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992626, 37.158752, 22.382555>,  <36.594398, 37.043514, 22.024214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992626, 37.158752, 22.382555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912537, 36.817379, 22.190075>,  <35.864483, 36.612553, 22.074587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912537, 36.817379, 22.190075>,  <35.992626, 37.158752, 22.382555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912537, 36.817379, 22.190075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300408, -0.414013, 0.859272,
		-0.932558, 0.316607, -0.173483,
		-0.200227, -0.853436, -0.481202,
		35.852467, 36.561348, 22.045713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235897, 36.908215, 22.454329>,  <35.992626, 37.158752, 22.382555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235897, 36.908215, 22.454329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.464298, 36.586697, 22.387560>,  <35.601341, 36.393787, 22.347498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.464298, 36.586697, 22.387560>,  <35.235897, 36.908215, 22.454329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464298, 36.586697, 22.387560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306091, -0.397122, 0.865218,
		-0.761748, -0.442952, -0.472794,
		0.571007, -0.803796, -0.166924,
		35.635601, 36.345558, 22.337482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807343, 36.286133, 22.638062>,  <35.235897, 36.908215, 22.454329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807343, 36.286133, 22.638062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.176376, 36.131821, 22.638710>,  <35.397797, 36.039234, 22.639099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.176376, 36.131821, 22.638710>,  <34.807343, 36.286133, 22.638062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176376, 36.131821, 22.638710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220314, -0.523414, 0.823104,
		-0.316687, -0.759745, -0.567889,
		0.922589, -0.385780, 0.001624,
		35.453152, 36.016087, 22.639196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746334, 35.482403, 22.707405>,  <34.807343, 36.286133, 22.638062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746334, 35.482403, 22.707405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.114376, 35.601734, 22.808916>,  <35.335201, 35.673332, 22.869822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.114376, 35.601734, 22.808916>,  <34.746334, 35.482403, 22.707405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114376, 35.601734, 22.808916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022766, -0.606107, 0.795057,
		0.391005, -0.737315, -0.550891,
		0.920107, 0.298330, 0.253776,
		35.390408, 35.691235, 22.885050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108887, 34.827118, 22.848572>,  <34.746334, 35.482403, 22.707405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108887, 34.827118, 22.848572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.317936, 35.125202, 23.014238>,  <35.443363, 35.304050, 23.113638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.317936, 35.125202, 23.014238>,  <35.108887, 34.827118, 22.848572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317936, 35.125202, 23.014238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095715, -0.431431, 0.897054,
		0.847176, -0.508460, -0.154147,
		0.522619, 0.745209, 0.414166,
		35.474720, 35.348766, 23.138489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578724, 34.475349, 23.228155>,  <35.108887, 34.827118, 22.848572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578724, 34.475349, 23.228155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.522621, 34.849155, 23.358999>,  <35.488960, 35.073441, 23.437506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.522621, 34.849155, 23.358999>,  <35.578724, 34.475349, 23.228155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522621, 34.849155, 23.358999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190460, -0.349671, 0.917309,
		0.971624, 0.066358, 0.227033,
		-0.140258, 0.934520, 0.327110,
		35.480545, 35.129513, 23.457132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835705, 34.443161, 23.902674>,  <35.578724, 34.475349, 23.228155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835705, 34.443161, 23.902674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607304, 34.771534, 23.900938>,  <35.470261, 34.968559, 23.899897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607304, 34.771534, 23.900938>,  <35.835705, 34.443161, 23.902674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607304, 34.771534, 23.900938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233976, -0.157670, 0.959372,
		0.786897, 0.548824, 0.282110,
		-0.571007, 0.820934, -0.004342,
		35.436001, 35.017815, 23.899635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393505, 34.062862, 24.222286>,  <35.835705, 34.443161, 23.902674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393505, 34.062862, 24.222286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403728, 33.664959, 24.261890>,  <36.409863, 33.426216, 24.285652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403728, 33.664959, 24.261890>,  <36.393505, 34.062862, 24.222286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403728, 33.664959, 24.261890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597867, -0.064167, -0.799023,
		0.801188, 0.079615, 0.593093,
		0.025557, -0.994758, 0.099009,
		36.411396, 33.366531, 24.291594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077576, 33.873013, 24.152674>,  <36.393505, 34.062862, 24.222286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077576, 33.873013, 24.152674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884560, 33.529453, 24.084030>,  <36.768749, 33.323318, 24.042845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884560, 33.529453, 24.084030>,  <37.077576, 33.873013, 24.152674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884560, 33.529453, 24.084030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639875, -0.211898, -0.738688,
		0.598096, -0.466251, 0.651837,
		-0.482537, -0.858900, -0.171607,
		36.739799, 33.271782, 24.032549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570667, 33.199032, 24.154934>,  <37.077576, 33.873013, 24.152674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570667, 33.199032, 24.154934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.238091, 33.138168, 23.941185>,  <37.038544, 33.101650, 23.812937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.238091, 33.138168, 23.941185>,  <37.570667, 33.199032, 24.154934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238091, 33.138168, 23.941185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546010, -0.401799, -0.735139,
		-0.102849, -0.902997, 0.417155,
		-0.831442, -0.152163, -0.534370,
		36.988659, 33.092518, 23.780874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676945, 32.434658, 23.903444>,  <37.570667, 33.199032, 24.154934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676945, 32.434658, 23.903444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.398067, 32.595886, 23.666311>,  <37.230740, 32.692623, 23.524033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.398067, 32.595886, 23.666311>,  <37.676945, 32.434658, 23.903444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398067, 32.595886, 23.666311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437636, -0.415675, -0.797302,
		-0.567798, -0.815319, 0.113406,
		-0.697195, 0.403076, -0.592832,
		37.188908, 32.716808, 23.488462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750889, 32.007488, 23.472885>,  <37.676945, 32.434658, 23.903444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750889, 32.007488, 23.472885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507832, 32.256954, 23.276190>,  <37.361996, 32.406635, 23.158173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507832, 32.256954, 23.276190>,  <37.750889, 32.007488, 23.472885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507832, 32.256954, 23.276190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386506, -0.308675, -0.869099,
		-0.693815, -0.718165, -0.053486,
		-0.607647, 0.623666, -0.491738,
		37.325539, 32.444054, 23.128668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200291, 31.636837, 23.168493>,  <37.750889, 32.007488, 23.472885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200291, 31.636837, 23.168493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252506, 31.962891, 22.942745>,  <37.283836, 32.158524, 22.807297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252506, 31.962891, 22.942745>,  <37.200291, 31.636837, 23.168493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252506, 31.962891, 22.942745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413021, -0.562204, -0.716477,
		-0.901318, -0.139571, -0.410056,
		0.130536, 0.815136, -0.564371,
		37.291668, 32.207432, 22.773434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233685, 31.403234, 22.434759>,  <37.200291, 31.636837, 23.168493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233685, 31.403234, 22.434759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.388988, 31.770260, 22.400499>,  <37.482170, 31.990475, 22.379944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.388988, 31.770260, 22.400499>,  <37.233685, 31.403234, 22.434759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388988, 31.770260, 22.400499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612665, -0.326430, -0.719782,
		-0.688403, 0.226985, -0.688897,
		0.388256, 0.917563, -0.085650,
		37.505466, 32.045528, 22.374804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294258, 31.502224, 21.696707>,  <37.233685, 31.403234, 22.434759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294258, 31.502224, 21.696707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527107, 31.786064, 21.855505>,  <37.666817, 31.956367, 21.950783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527107, 31.786064, 21.855505>,  <37.294258, 31.502224, 21.696707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527107, 31.786064, 21.855505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733251, -0.247124, -0.633461,
		-0.351397, 0.659846, -0.664171,
		0.582120, 0.709600, 0.396994,
		37.701744, 31.998943, 21.974604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497559, 31.822453, 21.130873>,  <37.294258, 31.502224, 21.696707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497559, 31.822453, 21.130873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777615, 31.925028, 21.397419>,  <37.945648, 31.986572, 21.557346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777615, 31.925028, 21.397419>,  <37.497559, 31.822453, 21.130873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777615, 31.925028, 21.397419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713963, -0.241201, -0.657327,
		-0.007835, 0.935982, -0.351961,
		0.700140, 0.256437, 0.666366,
		37.987656, 32.001961, 21.597328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.613495, 34.891903, 37.028324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980324, 34.977650, 36.893845>,  <35.200420, 35.029099, 36.813156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980324, 34.977650, 36.893845>,  <34.613495, 34.891903, 37.028324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980324, 34.977650, 36.893845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274152, -0.273247, -0.922050,
		-0.289520, 0.937755, -0.191818,
		0.917071, 0.214364, -0.336198,
		35.255444, 35.041958, 36.792984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430279, 34.426125, 36.442944>,  <34.613495, 34.891903, 37.028324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430279, 34.426125, 36.442944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700611, 34.142941, 36.524956>,  <34.862812, 33.973030, 36.574162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700611, 34.142941, 36.524956>,  <34.430279, 34.426125, 36.442944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700611, 34.142941, 36.524956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232775, -0.058924, -0.970744,
		0.699330, 0.703789, 0.124972,
		0.675835, -0.707961, 0.205032,
		34.903362, 33.930553, 36.586464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121750, 34.667969, 36.194824>,  <34.430279, 34.426125, 36.442944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121750, 34.667969, 36.194824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121601, 34.268387, 36.213074>,  <35.121510, 34.028637, 36.224022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121601, 34.268387, 36.213074>,  <35.121750, 34.667969, 36.194824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121601, 34.268387, 36.213074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120695, -0.045333, -0.991654,
		0.992690, 0.005135, 0.120586,
		-0.000374, -0.998959, 0.045622,
		35.121490, 33.968700, 36.226761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665138, 34.508820, 35.735603>,  <35.121750, 34.667969, 36.194824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665138, 34.508820, 35.735603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417419, 34.196171, 35.765392>,  <35.268787, 34.008583, 35.783264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417419, 34.196171, 35.765392>,  <35.665138, 34.508820, 35.735603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417419, 34.196171, 35.765392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019547, -0.110164, -0.993721,
		0.784914, -0.613952, 0.083502,
		-0.619297, -0.781618, 0.074469,
		35.231632, 33.961685, 35.787731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993340, 34.084019, 35.303066>,  <35.665138, 34.508820, 35.735603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993340, 34.084019, 35.303066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647747, 33.883781, 35.324783>,  <35.440392, 33.763638, 35.337814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647747, 33.883781, 35.324783>,  <35.993340, 34.084019, 35.303066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647747, 33.883781, 35.324783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075551, -0.235483, -0.968937,
		0.497830, -0.833038, 0.241272,
		-0.863978, -0.500595, 0.054294,
		35.388554, 33.733604, 35.341072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123116, 33.385605, 35.005856>,  <35.993340, 34.084019, 35.303066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123116, 33.385605, 35.005856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732758, 33.472374, 34.996254>,  <35.498543, 33.524437, 34.990494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732758, 33.472374, 34.996254>,  <36.123116, 33.385605, 35.005856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732758, 33.472374, 34.996254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028553, -0.235941, -0.971348,
		-0.216366, -0.947248, 0.236447,
		-0.975895, 0.216918, -0.024003,
		35.439991, 33.537453, 34.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802059, 32.752522, 34.726852>,  <36.123116, 33.385605, 35.005856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802059, 32.752522, 34.726852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580860, 33.080597, 34.668232>,  <35.448139, 33.277443, 34.633060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580860, 33.080597, 34.668232>,  <35.802059, 32.752522, 34.726852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580860, 33.080597, 34.668232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131481, -0.259596, -0.956725,
		-0.822743, -0.509799, 0.251396,
		-0.552999, 0.820193, -0.146552,
		35.414959, 33.326656, 34.624268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121815, 32.520634, 34.444782>,  <35.802059, 32.752522, 34.726852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121815, 32.520634, 34.444782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157360, 32.905323, 34.341099>,  <35.178688, 33.136139, 34.278889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157360, 32.905323, 34.341099>,  <35.121815, 32.520634, 34.444782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157360, 32.905323, 34.341099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098619, -0.250464, -0.963090,
		-0.991150, 0.111144, 0.072588,
		0.088861, 0.961725, -0.259208,
		35.184017, 33.193840, 34.263336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516407, 32.573215, 34.077412>,  <35.121815, 32.520634, 34.444782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516407, 32.573215, 34.077412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740314, 32.883553, 33.960979>,  <34.874657, 33.069756, 33.891121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740314, 32.883553, 33.960979>,  <34.516407, 32.573215, 34.077412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740314, 32.883553, 33.960979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201919, -0.212979, -0.955965,
		-0.803674, 0.593891, 0.037439,
		0.559766, 0.775843, -0.291083,
		34.908245, 33.116306, 33.873653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158054, 32.861126, 33.602406>,  <34.516407, 32.573215, 34.077412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158054, 32.861126, 33.602406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529781, 32.995178, 33.540359>,  <34.752815, 33.075611, 33.503132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529781, 32.995178, 33.540359>,  <34.158054, 32.861126, 33.602406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529781, 32.995178, 33.540359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105676, -0.161130, -0.981259,
		-0.353844, 0.928291, -0.114326,
		0.929315, 0.335131, -0.155113,
		34.808575, 33.095718, 33.493824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123695, 33.359379, 33.037556>,  <34.158054, 32.861126, 33.602406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123695, 33.359379, 33.037556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506817, 33.244579, 33.043758>,  <34.736691, 33.175697, 33.047478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506817, 33.244579, 33.043758>,  <34.123695, 33.359379, 33.037556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506817, 33.244579, 33.043758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108780, -0.411902, -0.904712,
		0.266040, 0.864850, -0.425742,
		0.957804, -0.287002, 0.015504,
		34.794159, 33.158478, 33.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351299, 33.618286, 32.447330>,  <34.123695, 33.359379, 33.037556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351299, 33.618286, 32.447330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630241, 33.345623, 32.535912>,  <34.797607, 33.182026, 32.589058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630241, 33.345623, 32.535912>,  <34.351299, 33.618286, 32.447330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630241, 33.345623, 32.535912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125606, -0.420424, -0.898592,
		0.705635, 0.598820, -0.378805,
		0.697353, -0.681658, 0.221450,
		34.839447, 33.141125, 32.602348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235806, 34.275623, 31.968435>,  <34.351299, 33.618286, 32.447330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235806, 34.275623, 31.968435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836857, 34.256844, 31.946363>,  <33.597488, 34.245575, 31.933121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836857, 34.256844, 31.946363>,  <34.235806, 34.275623, 31.968435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836857, 34.256844, 31.946363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070897, 0.475574, 0.876814,
		-0.014925, 0.878422, -0.477653,
		-0.997372, -0.046951, -0.055179,
		33.537643, 34.242760, 31.929810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108582, 34.928921, 32.079586>,  <34.235806, 34.275623, 31.968435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108582, 34.928921, 32.079586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784767, 34.711983, 32.169491>,  <33.590477, 34.581821, 32.223434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784767, 34.711983, 32.169491>,  <34.108582, 34.928921, 32.079586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784767, 34.711983, 32.169491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128940, 0.537761, 0.833179,
		-0.572736, 0.645507, -0.505266,
		-0.809536, -0.542341, 0.224764,
		33.541908, 34.549282, 32.236919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586262, 35.381813, 32.309177>,  <34.108582, 34.928921, 32.079586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586262, 35.381813, 32.309177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459435, 35.032127, 32.456268>,  <33.383339, 34.822315, 32.544521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459435, 35.032127, 32.456268>,  <33.586262, 35.381813, 32.309177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459435, 35.032127, 32.456268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294620, 0.459338, 0.837978,
		-0.901480, 0.157357, -0.403202,
		-0.317068, -0.874212, 0.367724,
		33.364315, 34.769863, 32.566586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967442, 35.544670, 32.679501>,  <33.586262, 35.381813, 32.309177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967442, 35.544670, 32.679501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086803, 35.193096, 32.828327>,  <33.158421, 34.982151, 32.917622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086803, 35.193096, 32.828327>,  <32.967442, 35.544670, 32.679501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086803, 35.193096, 32.828327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211880, 0.319094, 0.923735,
		-0.930623, -0.354484, -0.091008,
		0.298409, -0.878931, 0.372064,
		33.176327, 34.929417, 32.939945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562164, 35.464630, 33.237556>,  <32.967442, 35.544670, 32.679501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562164, 35.464630, 33.237556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813889, 35.164322, 33.317875>,  <32.964924, 34.984138, 33.366066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813889, 35.164322, 33.317875>,  <32.562164, 35.464630, 33.237556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813889, 35.164322, 33.317875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166939, 0.121749, 0.978421,
		-0.759012, -0.649252, -0.048714,
		0.629311, -0.750766, 0.200794,
		33.002682, 34.939091, 33.378113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205441, 35.051308, 33.751171>,  <32.562164, 35.464630, 33.237556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205441, 35.051308, 33.751171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599468, 34.987301, 33.776581>,  <32.835884, 34.948895, 33.791828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599468, 34.987301, 33.776581>,  <32.205441, 35.051308, 33.751171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599468, 34.987301, 33.776581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043420, 0.126148, 0.991061,
		-0.166605, -0.979020, 0.117316,
		0.985067, -0.160022, 0.063526,
		32.894989, 34.939293, 33.795639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303291, 34.545387, 34.202950>,  <32.205441, 35.051308, 33.751171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303291, 34.545387, 34.202950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655815, 34.734398, 34.201714>,  <32.867329, 34.847805, 34.200974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655815, 34.734398, 34.201714>,  <32.303291, 34.545387, 34.202950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655815, 34.734398, 34.201714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029648, 0.061816, 0.997647,
		0.471609, -0.879144, 0.068488,
		0.881310, 0.472530, -0.003088,
		32.920208, 34.876156, 34.200787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687290, 34.153683, 34.609081>,  <32.303291, 34.545387, 34.202950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687290, 34.153683, 34.609081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874954, 34.506927, 34.608681>,  <32.987553, 34.718876, 34.608440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874954, 34.506927, 34.608681>,  <32.687290, 34.153683, 34.609081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874954, 34.506927, 34.608681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014527, 0.008852, 0.999855,
		0.882995, -0.469074, 0.016982,
		0.469157, 0.883114, -0.001002,
		33.015701, 34.771862, 34.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040276, 34.191143, 35.238895>,  <32.687290, 34.153683, 34.609081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040276, 34.191143, 35.238895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067890, 34.575653, 35.132168>,  <33.084457, 34.806358, 35.068130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067890, 34.575653, 35.132168>,  <33.040276, 34.191143, 35.238895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067890, 34.575653, 35.132168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253509, 0.241774, 0.936631,
		0.964867, -0.132301, -0.227000,
		0.069034, 0.961271, -0.266819,
		33.088600, 34.864033, 35.052120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634613, 34.446758, 35.576466>,  <33.040276, 34.191143, 35.238895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634613, 34.446758, 35.576466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420586, 34.772728, 35.487385>,  <33.292168, 34.968311, 35.433937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420586, 34.772728, 35.487385>,  <33.634613, 34.446758, 35.576466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420586, 34.772728, 35.487385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153324, 0.352908, 0.923010,
		0.830780, 0.459727, -0.313778,
		-0.535067, 0.814928, -0.222702,
		33.260067, 35.017208, 35.420574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105015, 34.982552, 35.948071>,  <33.634613, 34.446758, 35.576466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105015, 34.982552, 35.948071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724224, 35.093811, 35.896870>,  <33.495750, 35.160564, 35.866150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724224, 35.093811, 35.896870>,  <34.105015, 34.982552, 35.948071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724224, 35.093811, 35.896870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040929, 0.529894, 0.847076,
		0.303436, 0.801154, -0.515829,
		-0.951973, 0.278145, -0.127999,
		33.438633, 35.177254, 35.858471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092072, 35.598755, 36.287598>,  <34.105015, 34.982552, 35.948071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092072, 35.598755, 36.287598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703510, 35.517548, 36.238361>,  <33.470371, 35.468822, 36.208820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703510, 35.517548, 36.238361>,  <34.092072, 35.598755, 36.287598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703510, 35.517548, 36.238361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192908, 0.372705, 0.907677,
		-0.138399, 0.905469, -0.401213,
		-0.971407, -0.203019, -0.123090,
		33.412086, 35.456642, 36.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716442, 36.180786, 36.283012>,  <34.092072, 35.598755, 36.287598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716442, 36.180786, 36.283012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445652, 35.906757, 36.390625>,  <33.283176, 35.742340, 36.455193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445652, 35.906757, 36.390625>,  <33.716442, 36.180786, 36.283012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445652, 35.906757, 36.390625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221534, 0.538248, 0.813149,
		-0.701872, 0.490883, -0.516148,
		-0.676977, -0.685072, 0.269034,
		33.242558, 35.701237, 36.471336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058952, 36.504154, 36.472672>,  <33.716442, 36.180786, 36.283012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058952, 36.504154, 36.472672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061142, 36.149750, 36.658123>,  <33.062454, 35.937107, 36.769394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061142, 36.149750, 36.658123>,  <33.058952, 36.504154, 36.472672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061142, 36.149750, 36.658123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155872, 0.457217, 0.875590,
		-0.987762, -0.077061, -0.135600,
		0.005475, -0.886011, 0.463633,
		33.062786, 35.883945, 36.797215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757072, 37.036995, 35.952831>,  <33.058952, 36.504154, 36.472672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757072, 37.036995, 35.952831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513187, 36.816624, 35.724892>,  <32.366856, 36.684402, 35.588127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513187, 36.816624, 35.724892>,  <32.757072, 37.036995, 35.952831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513187, 36.816624, 35.724892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696711, -0.715326, -0.053876,
		-0.377947, -0.429870, 0.819981,
		-0.609713, -0.550927, -0.569850,
		32.330273, 36.651344, 35.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962727, 37.388767, 35.880886>,  <32.757072, 37.036995, 35.952831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962727, 37.388767, 35.880886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296009, 37.593151, 35.965439>,  <32.495979, 37.715782, 36.016171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296009, 37.593151, 35.965439>,  <31.962727, 37.388767, 35.880886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296009, 37.593151, 35.965439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093274, 0.246923, -0.964536,
		-0.545036, 0.823375, 0.158079,
		0.833208, 0.510962, 0.211381,
		32.545971, 37.746441, 36.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964369, 38.145088, 35.558598>,  <31.962727, 37.388767, 35.880886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964369, 38.145088, 35.558598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333099, 37.992989, 35.588646>,  <32.554337, 37.901730, 35.606674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333099, 37.992989, 35.588646>,  <31.964369, 38.145088, 35.558598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333099, 37.992989, 35.588646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063201, -0.043748, -0.997042,
		0.382412, 0.923848, -0.016295,
		0.921828, -0.380251, 0.075118,
		32.609646, 37.878914, 35.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430538, 38.636574, 35.196110>,  <31.964369, 38.145088, 35.558598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430538, 38.636574, 35.196110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649918, 38.302101, 35.197605>,  <32.781544, 38.101418, 35.198502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649918, 38.302101, 35.197605>,  <32.430538, 38.636574, 35.196110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649918, 38.302101, 35.197605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155537, 0.097621, -0.982995,
		0.821594, 0.539699, 0.183596,
		0.548444, -0.836179, 0.003738,
		32.814449, 38.051247, 35.198727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036533, 38.820869, 34.841015>,  <32.430538, 38.636574, 35.196110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036533, 38.820869, 34.841015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011284, 38.422779, 34.811253>,  <32.996132, 38.183926, 34.793396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011284, 38.422779, 34.811253>,  <33.036533, 38.820869, 34.841015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011284, 38.422779, 34.811253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359752, 0.046847, -0.931871,
		0.930910, -0.085592, 0.355078,
		-0.063126, -0.995228, -0.074402,
		32.992348, 38.124210, 34.788933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627041, 38.696339, 34.441208>,  <33.036533, 38.820869, 34.841015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627041, 38.696339, 34.441208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400398, 38.367931, 34.413269>,  <33.264412, 38.170887, 34.396507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400398, 38.367931, 34.413269>,  <33.627041, 38.696339, 34.441208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400398, 38.367931, 34.413269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325186, -0.144921, -0.934480,
		0.757105, -0.552198, 0.349098,
		-0.566609, -0.821021, -0.069847,
		33.230415, 38.121624, 34.392315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034969, 38.283230, 34.014374>,  <33.627041, 38.696339, 34.441208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034969, 38.283230, 34.014374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674149, 38.112816, 33.986671>,  <33.457657, 38.010567, 33.970051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674149, 38.112816, 33.986671>,  <34.034969, 38.283230, 34.014374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674149, 38.112816, 33.986671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130688, -0.116655, -0.984537,
		0.411372, -0.897152, 0.160907,
		-0.902050, -0.426039, -0.069259,
		33.403534, 37.985004, 33.965893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171520, 37.647549, 33.629246>,  <34.034969, 38.283230, 34.014374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171520, 37.647549, 33.629246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786709, 37.754467, 33.607117>,  <33.555824, 37.818619, 33.593838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786709, 37.754467, 33.607117>,  <34.171520, 37.647549, 33.629246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786709, 37.754467, 33.607117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023966, -0.284617, -0.958342,
		-0.271889, -0.920628, 0.280216,
		-0.962030, 0.267278, -0.055320,
		33.498100, 37.834656, 33.590519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850014, 37.253174, 33.016308>,  <34.171520, 37.647549, 33.629246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850014, 37.253174, 33.016308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581600, 37.546673, 33.058899>,  <33.420551, 37.722771, 33.084454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581600, 37.546673, 33.058899>,  <33.850014, 37.253174, 33.016308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581600, 37.546673, 33.058899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113414, 0.040336, -0.992729,
		-0.732704, -0.678227, 0.056150,
		-0.671030, 0.733745, 0.106475,
		33.380291, 37.766796, 33.090839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369991, 37.114281, 32.488834>,  <33.850014, 37.253174, 33.016308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369991, 37.114281, 32.488834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290684, 37.496559, 32.575863>,  <33.243099, 37.725925, 32.628078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290684, 37.496559, 32.575863>,  <33.369991, 37.114281, 32.488834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290684, 37.496559, 32.575863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003425, 0.221301, -0.975200,
		-0.980142, -0.194095, -0.040604,
		-0.198267, 0.955695, 0.217571,
		33.231205, 37.783268, 32.641136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050175, 37.317955, 31.848791>,  <33.369991, 37.114281, 32.488834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050175, 37.317955, 31.848791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148235, 37.649269, 32.050323>,  <33.207069, 37.848057, 32.171242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148235, 37.649269, 32.050323>,  <33.050175, 37.317955, 31.848791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148235, 37.649269, 32.050323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287011, 0.434389, -0.853774,
		-0.926027, 0.353907, -0.131237,
		0.245149, 0.828285, 0.503831,
		33.221779, 37.897755, 32.201473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691044, 37.961498, 31.459812>,  <33.050175, 37.317955, 31.848791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691044, 37.961498, 31.459812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004971, 38.080952, 31.677025>,  <33.193325, 38.152626, 31.807352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004971, 38.080952, 31.677025>,  <32.691044, 37.961498, 31.459812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004971, 38.080952, 31.677025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377969, 0.463749, -0.801296,
		-0.491126, 0.834118, 0.251082,
		0.784815, 0.298636, 0.543030,
		33.240414, 38.170544, 31.839933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819656, 38.567688, 31.210171>,  <32.691044, 37.961498, 31.459812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819656, 38.567688, 31.210171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167614, 38.474796, 31.384230>,  <33.376389, 38.419060, 31.488665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167614, 38.474796, 31.384230>,  <32.819656, 38.567688, 31.210171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167614, 38.474796, 31.384230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482329, 0.585015, -0.652010,
		-0.103152, 0.777064, 0.620912,
		0.869896, -0.232228, 0.435145,
		33.428581, 38.405128, 31.514772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262928, 39.192848, 31.168827>,  <32.819656, 38.567688, 31.210171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262928, 39.192848, 31.168827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503056, 38.877369, 31.221863>,  <33.647133, 38.688084, 31.253685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503056, 38.877369, 31.221863>,  <33.262928, 39.192848, 31.168827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503056, 38.877369, 31.221863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638890, 0.373202, -0.672711,
		0.481080, 0.488552, 0.727929,
		0.600318, -0.788694, 0.132591,
		33.683151, 38.640762, 31.261641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848145, 39.467319, 31.204556>,  <33.262928, 39.192848, 31.168827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848145, 39.467319, 31.204556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929630, 39.092461, 31.091236>,  <33.978519, 38.867546, 31.023245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929630, 39.092461, 31.091236>,  <33.848145, 39.467319, 31.204556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929630, 39.092461, 31.091236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604369, 0.348021, -0.716673,
		0.770221, -0.025221, 0.637278,
		0.203711, -0.937147, -0.283296,
		33.990742, 38.811317, 31.006247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525043, 39.552238, 30.973503>,  <33.848145, 39.467319, 31.204556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525043, 39.552238, 30.973503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427521, 39.194397, 30.823708>,  <34.369007, 38.979691, 30.733829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427521, 39.194397, 30.823708>,  <34.525043, 39.552238, 30.973503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427521, 39.194397, 30.823708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594865, 0.167028, -0.786281,
		0.765960, -0.414469, 0.491447,
		-0.243804, -0.894605, -0.374489,
		34.354382, 38.926014, 30.711361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156441, 39.230984, 30.756886>,  <34.525043, 39.552238, 30.973503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156441, 39.230984, 30.756886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873112, 39.020611, 30.568556>,  <34.703114, 38.894386, 30.455557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873112, 39.020611, 30.568556>,  <35.156441, 39.230984, 30.756886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873112, 39.020611, 30.568556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481499, 0.127756, -0.867085,
		0.516181, -0.840875, 0.162745,
		-0.708319, -0.525934, -0.470826,
		34.660618, 38.862831, 30.427307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558376, 38.734535, 30.344078>,  <35.156441, 39.230984, 30.756886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558376, 38.734535, 30.344078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201244, 38.758850, 30.165569>,  <34.986965, 38.773438, 30.058464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201244, 38.758850, 30.165569>,  <35.558376, 38.734535, 30.344078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201244, 38.758850, 30.165569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438416, -0.109691, -0.892053,
		-0.103197, -0.992104, 0.071276,
		-0.892828, 0.060809, -0.446274,
		34.933395, 38.777084, 30.031687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602680, 38.215820, 29.828058>,  <35.558376, 38.734535, 30.344078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602680, 38.215820, 29.828058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304493, 38.445812, 29.693190>,  <35.125580, 38.583805, 29.612268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304493, 38.445812, 29.693190>,  <35.602680, 38.215820, 29.828058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304493, 38.445812, 29.693190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362509, -0.074766, -0.928977,
		-0.559348, -0.814747, -0.152698,
		-0.745465, 0.574975, -0.337173,
		35.080853, 38.618305, 29.592037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288067, 37.861099, 29.282532>,  <35.602680, 38.215820, 29.828058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288067, 37.861099, 29.282532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187172, 38.243839, 29.224817>,  <35.126637, 38.473484, 29.190189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187172, 38.243839, 29.224817>,  <35.288067, 37.861099, 29.282532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187172, 38.243839, 29.224817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077082, -0.128763, -0.988675,
		-0.964591, -0.260502, -0.041277,
		-0.252237, 0.956848, -0.144284,
		35.111500, 38.530895, 29.181532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848076, 37.778522, 28.647848>,  <35.288067, 37.861099, 29.282532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848076, 37.778522, 28.647848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938946, 38.167614, 28.666559>,  <34.993469, 38.401070, 28.677786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938946, 38.167614, 28.666559>,  <34.848076, 37.778522, 28.647848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938946, 38.167614, 28.666559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223428, -0.005309, -0.974706,
		-0.947877, 0.231883, -0.218541,
		0.227178, 0.972729, 0.046777,
		35.007099, 38.459435, 28.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567657, 38.060661, 27.979429>,  <34.848076, 37.778522, 28.647848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567657, 38.060661, 27.979429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831844, 38.315334, 28.138638>,  <34.990356, 38.468136, 28.234163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831844, 38.315334, 28.138638>,  <34.567657, 38.060661, 27.979429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831844, 38.315334, 28.138638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446886, 0.092664, -0.889779,
		-0.603385, 0.765541, -0.223321,
		0.660469, 0.636679, 0.398022,
		35.029984, 38.506336, 28.258043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553200, 38.796021, 27.625809>,  <34.567657, 38.060661, 27.979429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553200, 38.796021, 27.625809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910496, 38.718616, 27.788132>,  <35.124874, 38.672173, 27.885527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910496, 38.718616, 27.788132>,  <34.553200, 38.796021, 27.625809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910496, 38.718616, 27.788132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444403, 0.243372, -0.862135,
		0.068068, 0.950434, 0.303385,
		0.893237, -0.193509, 0.405810,
		35.178467, 38.660564, 27.909874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859386, 39.301853, 27.240892>,  <34.553200, 38.796021, 27.625809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859386, 39.301853, 27.240892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140751, 39.079876, 27.418545>,  <35.309570, 38.946690, 27.525137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140751, 39.079876, 27.418545>,  <34.859386, 39.301853, 27.240892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140751, 39.079876, 27.418545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610815, 0.152411, -0.776965,
		0.363482, 0.817807, 0.446176,
		0.703410, -0.554944, 0.444130,
		35.351772, 38.913391, 27.551785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440605, 39.662003, 27.088156>,  <34.859386, 39.301853, 27.240892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440605, 39.662003, 27.088156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570721, 39.290970, 27.161678>,  <35.648788, 39.068352, 27.205791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570721, 39.290970, 27.161678>,  <35.440605, 39.662003, 27.088156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570721, 39.290970, 27.161678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531756, 0.018698, -0.846691,
		0.781938, 0.373156, 0.499328,
		0.325284, -0.927580, 0.183807,
		35.668304, 39.012695, 27.216820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190140, 39.630402, 26.899544>,  <35.440605, 39.662003, 27.088156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190140, 39.630402, 26.899544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106430, 39.240341, 26.928644>,  <36.056206, 39.006306, 26.946104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106430, 39.240341, 26.928644>,  <36.190140, 39.630402, 26.899544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106430, 39.240341, 26.928644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543969, -0.177915, -0.820027,
		0.812591, -0.132035, 0.567682,
		-0.209271, -0.975148, 0.072749,
		36.043648, 38.947796, 26.950468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829868, 39.242275, 26.705332>,  <36.190140, 39.630402, 26.899544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829868, 39.242275, 26.705332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515381, 39.007103, 26.629234>,  <36.326687, 38.866001, 26.583576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515381, 39.007103, 26.629234>,  <36.829868, 39.242275, 26.705332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515381, 39.007103, 26.629234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488499, -0.402793, -0.774032,
		0.378450, -0.701494, 0.603889,
		-0.786222, -0.587932, -0.190243,
		36.279514, 38.830723, 26.572161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141613, 38.618374, 26.459084>,  <36.829868, 39.242275, 26.705332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141613, 38.618374, 26.459084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771442, 38.657425, 26.312628>,  <36.549339, 38.680855, 26.224754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771442, 38.657425, 26.312628>,  <37.141613, 38.618374, 26.459084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771442, 38.657425, 26.312628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351822, -0.137543, -0.925906,
		-0.140775, -0.985670, 0.092930,
		-0.925421, 0.097650, -0.366144,
		36.493816, 38.686714, 26.202785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244827, 37.908291, 26.693621>,  <37.141613, 38.618374, 26.459084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244827, 37.908291, 26.693621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625381, 38.002510, 26.773006>,  <37.853714, 38.059040, 26.820639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625381, 38.002510, 26.773006>,  <37.244827, 37.908291, 26.693621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625381, 38.002510, 26.773006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240010, 0.163088, 0.956973,
		0.193052, -0.958080, 0.211694,
		0.951381, 0.235554, 0.198464,
		37.910797, 38.073174, 26.832546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455254, 37.497948, 27.336014>,  <37.244827, 37.908291, 26.693621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455254, 37.497948, 27.336014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.715900, 37.799919, 27.306431>,  <37.872288, 37.981102, 27.288681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.715900, 37.799919, 27.306431>,  <37.455254, 37.497948, 27.336014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715900, 37.799919, 27.306431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096480, 0.014224, 0.995233,
		0.752385, -0.655649, -0.063567,
		0.651619, 0.754932, -0.073959,
		37.911385, 38.026398, 27.284243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827179, 37.284313, 27.863647>,  <37.455254, 37.497948, 27.336014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827179, 37.284313, 27.863647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915016, 37.666527, 27.784929>,  <37.967720, 37.895855, 27.737698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915016, 37.666527, 27.784929>,  <37.827179, 37.284313, 27.863647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915016, 37.666527, 27.784929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109922, 0.176202, 0.978197,
		0.969379, -0.236438, -0.066341,
		0.219594, 0.955536, -0.196796,
		37.980896, 37.953186, 27.725891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499382, 37.424648, 28.192354>,  <37.827179, 37.284313, 27.863647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499382, 37.424648, 28.192354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339645, 37.790432, 28.166174>,  <38.243805, 38.009903, 28.150465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339645, 37.790432, 28.166174>,  <38.499382, 37.424648, 28.192354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339645, 37.790432, 28.166174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008691, 0.067612, 0.997674,
		0.916761, 0.398982, -0.019052,
		-0.399342, 0.914463, -0.065452,
		38.219841, 38.064770, 28.146538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985508, 37.819122, 28.537001>,  <38.499382, 37.424648, 28.192354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985508, 37.819122, 28.537001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638027, 38.016827, 28.523952>,  <38.429539, 38.135448, 28.516123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638027, 38.016827, 28.523952>,  <38.985508, 37.819122, 28.537001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638027, 38.016827, 28.523952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001729, 0.068879, 0.997623,
		0.495335, 0.866579, -0.060690,
		-0.868700, 0.494263, -0.032620,
		38.377419, 38.165104, 28.514166>
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
