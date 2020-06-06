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
	<24.161348, 34.900707, 35.015312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076733, 35.220718, 35.239887>,  <24.025963, 35.412724, 35.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076733, 35.220718, 35.239887>,  <24.161348, 34.900707, 35.015312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.076733, 35.220718, 35.239887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976864, 0.154576, 0.147797,
		0.031457, 0.579710, -0.814215,
		-0.211537, 0.800026, 0.561435,
		24.013271, 35.460728, 35.408318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555325, 35.600296, 34.769695>,  <24.161348, 34.900707, 35.015312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555325, 35.600296, 34.769695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468838, 35.571831, 35.159195>,  <24.416946, 35.554752, 35.392895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468838, 35.571831, 35.159195>,  <24.555325, 35.600296, 34.769695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468838, 35.571831, 35.159195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968696, 0.108966, 0.223059,
		-0.121980, 0.991495, 0.045378,
		-0.216217, -0.071166, 0.973748,
		24.403973, 35.550480, 35.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999054, 36.127178, 34.904484>,  <24.555325, 35.600296, 34.769695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999054, 36.127178, 34.904484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915264, 35.851288, 35.181728>,  <24.864990, 35.685753, 35.348076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915264, 35.851288, 35.181728>,  <24.999054, 36.127178, 34.904484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915264, 35.851288, 35.181728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923277, 0.093903, 0.372481,
		-0.321993, 0.717960, 0.617133,
		-0.209476, -0.689721, 0.693112,
		24.852421, 35.644371, 35.389664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374914, 36.584614, 35.410332>,  <24.999054, 36.127178, 34.904484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374914, 36.584614, 35.410332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086126, 36.859177, 35.445213>,  <24.912853, 37.023914, 35.466145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086126, 36.859177, 35.445213>,  <25.374914, 36.584614, 35.410332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086126, 36.859177, 35.445213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523240, 0.459138, 0.717922,
		0.452746, 0.563950, -0.690639,
		-0.721971, 0.686406, 0.087208,
		24.869535, 37.065098, 35.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564318, 37.362137, 35.221447>,  <25.374914, 36.584614, 35.410332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564318, 37.362137, 35.221447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294785, 37.298660, 35.510101>,  <25.133064, 37.260574, 35.683296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294785, 37.298660, 35.510101>,  <25.564318, 37.362137, 35.221447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294785, 37.298660, 35.510101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526133, 0.582676, 0.619414,
		-0.518780, 0.797060, -0.309131,
		-0.673833, -0.158695, 0.721640,
		25.092634, 37.251053, 35.726593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040098, 37.716682, 34.774456>,  <25.564318, 37.362137, 35.221447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040098, 37.716682, 34.774456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921139, 38.096931, 34.809925>,  <24.849762, 38.325081, 34.831207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921139, 38.096931, 34.809925>,  <25.040098, 37.716682, 34.774456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921139, 38.096931, 34.809925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479782, 0.229103, -0.846948,
		-0.825447, -0.209337, -0.524229,
		-0.297399, 0.950626, 0.088676,
		24.831919, 38.382118, 34.836529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617710, 37.964516, 34.215199>,  <25.040098, 37.716682, 34.774456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617710, 37.964516, 34.215199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839647, 38.258194, 34.371716>,  <24.972809, 38.434399, 34.465626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839647, 38.258194, 34.371716>,  <24.617710, 37.964516, 34.215199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839647, 38.258194, 34.371716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297246, 0.264343, -0.917479,
		-0.777042, 0.625367, -0.071567,
		0.554843, 0.734193, 0.391293,
		25.006100, 38.478451, 34.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508858, 38.503563, 33.842247>,  <24.617710, 37.964516, 34.215199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508858, 38.503563, 33.842247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857031, 38.634666, 33.989174>,  <25.065935, 38.713329, 34.077332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857031, 38.634666, 33.989174>,  <24.508858, 38.503563, 33.842247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857031, 38.634666, 33.989174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279451, 0.285303, -0.916793,
		-0.405280, 0.900655, 0.156746,
		0.870434, 0.327755, 0.367316,
		25.118160, 38.732994, 34.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689674, 39.130245, 33.406258>,  <24.508858, 38.503563, 33.842247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689674, 39.130245, 33.406258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041677, 39.064003, 33.584320>,  <25.252880, 39.024258, 33.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041677, 39.064003, 33.584320>,  <24.689674, 39.130245, 33.406258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041677, 39.064003, 33.584320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474955, 0.309752, -0.823694,
		-0.001481, 0.936285, 0.351238,
		0.880009, -0.165602, 0.445152,
		25.305679, 39.014324, 33.717865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125614, 39.724964, 33.260899>,  <24.689674, 39.130245, 33.406258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125614, 39.724964, 33.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376652, 39.431278, 33.364475>,  <25.527275, 39.255066, 33.426620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376652, 39.431278, 33.364475>,  <25.125614, 39.724964, 33.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376652, 39.431278, 33.364475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623913, 0.275369, -0.731372,
		0.465680, 0.620563, 0.630907,
		0.627594, -0.734217, 0.258943,
		25.564930, 39.211014, 33.442158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821377, 39.989742, 33.089256>,  <25.125614, 39.724964, 33.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821377, 39.989742, 33.089256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832846, 39.590576, 33.066116>,  <25.839727, 39.351078, 33.052231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832846, 39.590576, 33.066116>,  <25.821377, 39.989742, 33.089256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832846, 39.590576, 33.066116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504692, 0.064408, -0.860894,
		0.862823, -0.004515, 0.505485,
		0.028670, -0.997914, -0.057851,
		25.841446, 39.291203, 33.048759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534258, 39.895504, 32.937302>,  <25.821377, 39.989742, 33.089256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534258, 39.895504, 32.937302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313955, 39.585804, 32.812595>,  <26.181774, 39.399982, 32.737770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313955, 39.585804, 32.812595>,  <26.534258, 39.895504, 32.937302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313955, 39.585804, 32.812595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556032, -0.061771, -0.828862,
		0.622491, -0.629854, 0.464531,
		-0.550756, -0.774254, -0.311767,
		26.148727, 39.353527, 32.719067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069201, 39.470367, 32.563461>,  <26.534258, 39.895504, 32.937302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069201, 39.470367, 32.563461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705351, 39.380470, 32.423710>,  <26.487041, 39.326530, 32.339859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705351, 39.380470, 32.423710>,  <27.069201, 39.470367, 32.563461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705351, 39.380470, 32.423710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362990, -0.020981, -0.931557,
		0.202035, -0.974191, 0.100666,
		-0.909626, -0.224748, -0.349383,
		26.432463, 39.313046, 32.318893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930590, 38.739700, 32.061626>,  <27.069201, 39.470367, 32.563461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930590, 38.739700, 32.061626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771988, 39.093971, 31.964991>,  <26.676826, 39.306534, 31.907009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771988, 39.093971, 31.964991>,  <26.930590, 38.739700, 32.061626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771988, 39.093971, 31.964991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295618, -0.125967, -0.946965,
		-0.869135, -0.446894, -0.211875,
		-0.396503, 0.885674, -0.241592,
		26.653036, 39.359673, 31.892513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278515, 38.689625, 31.981564>,  <26.930590, 38.739700, 32.061626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278515, 38.689625, 31.981564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554867, 38.724113, 31.694439>,  <26.720678, 38.744808, 31.522165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554867, 38.724113, 31.694439>,  <26.278515, 38.689625, 31.981564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554867, 38.724113, 31.694439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311439, -0.931512, 0.187862,
		-0.652450, -0.353343, -0.670415,
		0.690879, 0.086223, -0.717810,
		26.762131, 38.749981, 31.479095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800039, 38.272610, 32.390873>,  <26.278515, 38.689625, 31.981564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800039, 38.272610, 32.390873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025970, 38.533726, 32.592796>,  <26.161530, 38.690395, 32.713951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025970, 38.533726, 32.592796>,  <25.800039, 38.272610, 32.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025970, 38.533726, 32.592796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599262, -0.096083, 0.794766,
		0.567321, -0.751419, 0.336922,
		0.564830, 0.652792, 0.504807,
		26.195419, 38.729565, 32.744240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936350, 38.004684, 33.086399>,  <25.800039, 38.272610, 32.390873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936350, 38.004684, 33.086399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967525, 38.402512, 33.114006>,  <25.986231, 38.641209, 33.130569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967525, 38.402512, 33.114006>,  <25.936350, 38.004684, 33.086399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967525, 38.402512, 33.114006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517331, -0.018835, 0.855578,
		0.852229, -0.102390, 0.513052,
		0.077939, 0.994566, 0.069021,
		25.990908, 38.700882, 33.134712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337013, 38.165558, 33.672668>,  <25.936350, 38.004684, 33.086399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337013, 38.165558, 33.672668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098629, 38.481312, 33.613743>,  <25.955599, 38.670765, 33.578388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098629, 38.481312, 33.613743>,  <26.337013, 38.165558, 33.672668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098629, 38.481312, 33.613743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477147, -0.200556, 0.855633,
		0.645882, 0.580210, 0.496177,
		-0.595958, 0.789388, -0.147310,
		25.919842, 38.718128, 33.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419376, 38.621445, 34.220360>,  <26.337013, 38.165558, 33.672668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419376, 38.621445, 34.220360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072485, 38.741295, 34.061295>,  <25.864351, 38.813206, 33.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072485, 38.741295, 34.061295>,  <26.419376, 38.621445, 34.220360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072485, 38.741295, 34.061295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428498, -0.042353, 0.902550,
		0.253589, 0.953115, 0.165120,
		-0.867227, 0.299630, -0.397668,
		25.812317, 38.831184, 33.941994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187912, 39.200226, 34.622711>,  <26.419376, 38.621445, 34.220360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187912, 39.200226, 34.622711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872774, 39.022820, 34.451786>,  <25.683691, 38.916374, 34.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872774, 39.022820, 34.451786>,  <26.187912, 39.200226, 34.622711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872774, 39.022820, 34.451786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448153, -0.063060, 0.891730,
		-0.422443, 0.894045, -0.149082,
		-0.787845, -0.443517, -0.427309,
		25.636421, 38.889763, 34.323593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718107, 39.668430, 34.721096>,  <26.187912, 39.200226, 34.622711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718107, 39.668430, 34.721096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546619, 39.931789, 34.968548>,  <26.443726, 40.089806, 35.117020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546619, 39.931789, 34.968548>,  <26.718107, 39.668430, 34.721096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546619, 39.931789, 34.968548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888800, 0.184621, 0.419463,
		0.161962, 0.729674, -0.664337,
		-0.428722, 0.658400, 0.618633,
		26.418003, 40.129311, 35.154137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173946, 40.310368, 34.786537>,  <26.718107, 39.668430, 34.721096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173946, 40.310368, 34.786537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962042, 40.300476, 35.125652>,  <26.834900, 40.294540, 35.329121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962042, 40.300476, 35.125652>,  <27.173946, 40.310368, 34.786537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962042, 40.300476, 35.125652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821221, 0.234909, 0.520013,
		-0.212012, 0.971703, -0.104138,
		-0.529761, -0.024729, 0.847786,
		26.803114, 40.293056, 35.379990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069510, 41.030205, 35.097195>,  <27.173946, 40.310368, 34.786537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069510, 41.030205, 35.097195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062164, 40.742264, 35.374748>,  <27.057756, 40.569500, 35.541279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062164, 40.742264, 35.374748>,  <27.069510, 41.030205, 35.097195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062164, 40.742264, 35.374748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759195, 0.441555, 0.478175,
		-0.650604, 0.535572, 0.538402,
		-0.018363, -0.719855, 0.693882,
		27.056656, 40.526306, 35.582912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537842, 41.285599, 35.474903>,  <27.069510, 41.030205, 35.097195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537842, 41.285599, 35.474903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493958, 40.917156, 35.624321>,  <27.467627, 40.696091, 35.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493958, 40.917156, 35.624321>,  <27.537842, 41.285599, 35.474903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493958, 40.917156, 35.624321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848445, 0.108988, 0.517941,
		-0.517788, 0.373755, 0.769547,
		-0.109712, -0.921102, 0.373543,
		27.461044, 40.640827, 35.736385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257673, 41.406006, 35.438225>,  <27.537842, 41.285599, 35.474903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257673, 41.406006, 35.438225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552187, 41.448887, 35.705475>,  <28.728895, 41.474617, 35.865826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552187, 41.448887, 35.705475>,  <28.257673, 41.406006, 35.438225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552187, 41.448887, 35.705475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657171, -0.348627, -0.668271,
		0.161287, 0.931110, -0.327139,
		0.736283, 0.107203, 0.668128,
		28.773071, 41.481049, 35.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154665, 41.765167, 34.885616>,  <28.257673, 41.406006, 35.438225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154665, 41.765167, 34.885616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356363, 41.984066, 35.152824>,  <28.477383, 42.115406, 35.313148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356363, 41.984066, 35.152824>,  <28.154665, 41.765167, 34.885616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356363, 41.984066, 35.152824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636667, -0.758220, 0.140565,
		0.583432, 0.354428, -0.730745,
		0.504245, 0.547251, 0.668022,
		28.507637, 42.148243, 35.353230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893948, 41.705399, 34.757256>,  <28.154665, 41.765167, 34.885616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893948, 41.705399, 34.757256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822754, 41.761154, 35.146900>,  <28.780037, 41.794605, 35.380688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822754, 41.761154, 35.146900>,  <28.893948, 41.705399, 34.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822754, 41.761154, 35.146900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650738, -0.725889, 0.222767,
		0.738148, 0.673540, 0.038492,
		-0.177984, 0.139386, 0.974112,
		28.769360, 41.802971, 35.439133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417133, 41.374691, 34.986526>,  <28.893948, 41.705399, 34.757256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417133, 41.374691, 34.986526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219496, 41.377426, 35.334278>,  <29.100912, 41.379066, 35.542931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219496, 41.377426, 35.334278>,  <29.417133, 41.374691, 34.986526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219496, 41.377426, 35.334278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581499, -0.740779, 0.336313,
		0.646319, 0.671714, 0.362037,
		-0.494096, 0.006841, 0.869381,
		29.071266, 41.379478, 35.595093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809597, 41.604027, 35.564384>,  <29.417133, 41.374691, 34.986526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809597, 41.604027, 35.564384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525913, 41.359116, 35.704178>,  <29.355703, 41.212170, 35.788055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525913, 41.359116, 35.704178>,  <29.809597, 41.604027, 35.564384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525913, 41.359116, 35.704178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701940, -0.659374, 0.269271,
		0.065573, 0.436287, 0.897415,
		-0.709212, -0.612274, 0.349484,
		29.313150, 41.175434, 35.809025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938515, 41.415321, 36.282078>,  <29.809597, 41.604027, 35.564384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938515, 41.415321, 36.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723196, 41.129021, 36.104122>,  <29.594004, 40.957241, 35.997349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723196, 41.129021, 36.104122>,  <29.938515, 41.415321, 36.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723196, 41.129021, 36.104122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506100, -0.696662, 0.508454,
		-0.673868, 0.048541, 0.737256,
		-0.538298, -0.715756, -0.444891,
		29.561707, 40.914295, 35.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631680, 41.120716, 36.202145>,  <29.938515, 41.415321, 36.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631680, 41.120716, 36.202145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885008, 40.994564, 35.919460>,  <31.037004, 40.918873, 35.749851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885008, 40.994564, 35.919460>,  <30.631680, 41.120716, 36.202145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885008, 40.994564, 35.919460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115403, 0.864497, -0.489211,
		0.765235, 0.391385, 0.511110,
		0.633323, -0.315378, -0.706710,
		31.075005, 40.899952, 35.707447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170012, 41.650463, 36.169609>,  <30.631680, 41.120716, 36.202145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170012, 41.650463, 36.169609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138563, 41.469227, 35.814411>,  <31.119694, 41.360485, 35.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138563, 41.469227, 35.814411>,  <31.170012, 41.650463, 36.169609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138563, 41.469227, 35.814411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188921, 0.881380, -0.432989,
		0.978840, 0.133718, -0.154892,
		-0.078620, -0.453089, -0.887991,
		31.114977, 41.333302, 35.548016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698849, 41.928360, 35.710598>,  <31.170012, 41.650463, 36.169609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698849, 41.928360, 35.710598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365488, 41.808575, 35.524796>,  <31.165472, 41.736702, 35.413315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365488, 41.808575, 35.524796>,  <31.698849, 41.928360, 35.710598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365488, 41.808575, 35.524796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081158, 0.897678, -0.433115,
		0.546676, -0.323260, -0.772430,
		-0.833402, -0.299462, -0.464504,
		31.115467, 41.718735, 35.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773823, 41.940781, 34.902477>,  <31.698849, 41.928360, 35.710598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773823, 41.940781, 34.902477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398851, 41.985126, 35.034496>,  <31.173868, 42.011734, 35.113708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398851, 41.985126, 35.034496>,  <31.773823, 41.940781, 34.902477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398851, 41.985126, 35.034496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110212, 0.804713, -0.583343,
		-0.330270, -0.583219, -0.742144,
		-0.937430, 0.110868, 0.330050,
		31.117622, 42.018387, 35.133511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360373, 42.184208, 34.344345>,  <31.773823, 41.940781, 34.902477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360373, 42.184208, 34.344345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241348, 42.302807, 34.707344>,  <31.169933, 42.373966, 34.925144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241348, 42.302807, 34.707344>,  <31.360373, 42.184208, 34.344345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241348, 42.302807, 34.707344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037468, 0.953448, -0.299222,
		-0.953967, -0.055035, -0.294819,
		-0.297563, 0.296494, 0.907495,
		31.152079, 42.391754, 34.979591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791849, 42.730869, 34.339508>,  <31.360373, 42.184208, 34.344345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791849, 42.730869, 34.339508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049852, 42.807758, 34.635349>,  <31.204655, 42.853893, 34.812855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049852, 42.807758, 34.635349>,  <30.791849, 42.730869, 34.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049852, 42.807758, 34.635349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137695, 0.922769, -0.359914,
		-0.751669, 0.333987, 0.568724,
		0.645007, 0.192226, 0.739605,
		31.243355, 42.865425, 34.857231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518642, 43.363083, 34.772163>,  <30.791849, 42.730869, 34.339508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518642, 43.363083, 34.772163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917160, 43.337280, 34.794918>,  <31.156271, 43.321796, 34.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917160, 43.337280, 34.794918>,  <30.518642, 43.363083, 34.772163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917160, 43.337280, 34.794918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079968, 0.938282, -0.336500,
		-0.031671, 0.339802, 0.939964,
		0.996294, -0.064510, 0.056889,
		31.216049, 43.317928, 34.811985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757963, 43.993134, 35.159397>,  <30.518642, 43.363083, 34.772163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757963, 43.993134, 35.159397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064428, 43.873329, 34.931961>,  <31.248306, 43.801445, 34.795502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064428, 43.873329, 34.931961>,  <30.757963, 43.993134, 35.159397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064428, 43.873329, 34.931961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022303, 0.871829, -0.489302,
		0.642262, 0.387565, 0.661282,
		0.766161, -0.299511, -0.568586,
		31.294277, 43.783474, 34.761387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288204, 44.553257, 35.247791>,  <30.757963, 43.993134, 35.159397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288204, 44.553257, 35.247791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363504, 44.343483, 34.915638>,  <31.408684, 44.217621, 34.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363504, 44.343483, 34.915638>,  <31.288204, 44.553257, 35.247791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363504, 44.343483, 34.915638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091807, 0.851192, -0.516764,
		0.977821, 0.021047, 0.208384,
		0.188251, -0.524433, -0.830380,
		31.419979, 44.186153, 34.666523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913021, 44.851593, 34.837471>,  <31.288204, 44.553257, 35.247791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913021, 44.851593, 34.837471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648424, 44.653484, 34.612213>,  <31.489666, 44.534618, 34.477058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648424, 44.653484, 34.612213>,  <31.913021, 44.851593, 34.837471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648424, 44.653484, 34.612213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103852, 0.804171, -0.585255,
		0.742726, -0.328658, -0.583388,
		-0.661493, -0.495270, -0.563147,
		31.449978, 44.504902, 34.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270363, 44.656193, 34.163120>,  <31.913021, 44.851593, 34.837471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270363, 44.656193, 34.163120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875729, 44.718105, 34.142368>,  <31.638948, 44.755253, 34.129917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875729, 44.718105, 34.142368>,  <32.270363, 44.656193, 34.163120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875729, 44.718105, 34.142368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152388, 0.759267, -0.632685,
		-0.058532, -0.632105, -0.772669,
		-0.986586, 0.154778, -0.051884,
		31.579752, 44.764538, 34.126804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922468, 44.387810, 33.500565>,  <32.270363, 44.656193, 34.163120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922468, 44.387810, 33.500565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763641, 44.702396, 33.689800>,  <31.668344, 44.891148, 33.803341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763641, 44.702396, 33.689800>,  <31.922468, 44.387810, 33.500565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763641, 44.702396, 33.689800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147503, 0.563446, -0.812878,
		-0.905859, -0.252986, -0.339733,
		-0.397068, 0.786465, 0.473086,
		31.644522, 44.938335, 33.831726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182457, 43.955917, 33.500622>,  <31.922468, 44.387810, 33.500565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182457, 43.955917, 33.500622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410652, 44.094688, 33.798397>,  <31.547569, 44.177952, 33.977062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410652, 44.094688, 33.798397>,  <31.182457, 43.955917, 33.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410652, 44.094688, 33.798397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033501, -0.895820, 0.443152,
		0.820624, -0.277752, -0.499430,
		0.570486, 0.346930, 0.744436,
		31.581799, 44.198769, 34.021729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802683, 43.510742, 33.579533>,  <31.182457, 43.955917, 33.500622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802683, 43.510742, 33.579533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731981, 43.703629, 33.922745>,  <31.689560, 43.819363, 34.128674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731981, 43.703629, 33.922745>,  <31.802683, 43.510742, 33.579533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731981, 43.703629, 33.922745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043369, -0.874730, 0.482667,
		0.983299, 0.048102, 0.175526,
		-0.176755, 0.482218, 0.858035,
		31.678955, 43.848293, 34.180157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262363, 43.271336, 34.070473>,  <31.802683, 43.510742, 33.579533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262363, 43.271336, 34.070473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965937, 43.440090, 34.279404>,  <31.788080, 43.541344, 34.404762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965937, 43.440090, 34.279404>,  <32.262363, 43.271336, 34.070473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965937, 43.440090, 34.279404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057782, -0.815122, 0.576401,
		0.668940, 0.396971, 0.628438,
		-0.741068, 0.421890, 0.522330,
		31.743616, 43.566658, 34.436104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497314, 43.306847, 34.740643>,  <32.262363, 43.271336, 34.070473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497314, 43.306847, 34.740643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097736, 43.288685, 34.737984>,  <31.857988, 43.277790, 34.736389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097736, 43.288685, 34.737984>,  <32.497314, 43.306847, 34.740643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097736, 43.288685, 34.737984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035737, -0.860703, 0.507851,
		-0.028781, 0.507079, 0.861419,
		-0.998947, -0.045401, -0.006650,
		31.798052, 43.275066, 34.735989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442257, 42.981918, 35.319427>,  <32.497314, 43.306847, 34.740643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442257, 42.981918, 35.319427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124847, 42.942867, 35.079166>,  <31.934401, 42.919437, 34.935009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124847, 42.942867, 35.079166>,  <32.442257, 42.981918, 35.319427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124847, 42.942867, 35.079166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125580, -0.939529, 0.318614,
		-0.595438, 0.328259, 0.733280,
		-0.793526, -0.097630, -0.600654,
		31.886789, 42.913578, 34.898972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887033, 42.629337, 35.735203>,  <32.442257, 42.981918, 35.319427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887033, 42.629337, 35.735203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874922, 42.558075, 35.341789>,  <31.867655, 42.515316, 35.105740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874922, 42.558075, 35.341789>,  <31.887033, 42.629337, 35.735203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874922, 42.558075, 35.341789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088132, -0.979679, 0.180173,
		-0.995649, 0.092136, 0.013960,
		-0.030277, -0.178158, -0.983536,
		31.865839, 42.504627, 35.046730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571360, 42.463512, 36.486176>,  <31.887033, 42.629337, 35.735203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571360, 42.463512, 36.486176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634394, 42.813992, 36.668362>,  <31.672215, 43.024277, 36.777676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634394, 42.813992, 36.668362>,  <31.571360, 42.463512, 36.486176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634394, 42.813992, 36.668362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936609, -0.013548, 0.350114,
		0.312939, -0.481768, 0.818517,
		0.157584, 0.876194, 0.455468,
		31.681669, 43.076851, 36.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658915, 42.151642, 37.181580>,  <31.571360, 42.463512, 36.486176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658915, 42.151642, 37.181580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014862, 42.219158, 37.351120>,  <32.228432, 42.259666, 37.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014862, 42.219158, 37.351120>,  <31.658915, 42.151642, 37.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014862, 42.219158, 37.351120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452623, 0.443043, 0.773851,
		-0.057166, -0.880468, 0.470647,
		0.889868, 0.168788, 0.423847,
		32.281822, 42.269794, 37.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630373, 42.160721, 37.946392>,  <31.658915, 42.151642, 37.181580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630373, 42.160721, 37.946392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979771, 42.347332, 37.890743>,  <32.189411, 42.459301, 37.857353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979771, 42.347332, 37.890743>,  <31.630373, 42.160721, 37.946392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979771, 42.347332, 37.890743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148368, 0.527290, 0.836632,
		0.463671, -0.710153, 0.529804,
		0.873497, 0.466528, -0.139125,
		32.241817, 42.487289, 37.849007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969595, 42.247528, 38.634678>,  <31.630373, 42.160721, 37.946392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969595, 42.247528, 38.634678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172829, 42.504341, 38.405018>,  <32.294769, 42.658428, 38.267223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172829, 42.504341, 38.405018>,  <31.969595, 42.247528, 38.634678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172829, 42.504341, 38.405018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093882, 0.621349, 0.777889,
		0.856177, -0.449134, 0.255421,
		0.508082, 0.642031, -0.574151,
		32.325253, 42.696949, 38.232773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644924, 42.222511, 38.980522>,  <31.969595, 42.247528, 38.634678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644924, 42.222511, 38.980522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540001, 42.551380, 38.778446>,  <32.477047, 42.748703, 38.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540001, 42.551380, 38.778446>,  <32.644924, 42.222511, 38.980522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540001, 42.551380, 38.778446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121675, 0.547526, 0.827895,
		0.957283, 0.155693, -0.243658,
		-0.262307, 0.822177, -0.505193,
		32.461308, 42.798035, 38.626888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206833, 42.738728, 38.994736>,  <32.644924, 42.222511, 38.980522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206833, 42.738728, 38.994736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854546, 42.926414, 38.968903>,  <32.643173, 43.039028, 38.953403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854546, 42.926414, 38.968903>,  <33.206833, 42.738728, 38.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854546, 42.926414, 38.968903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218584, 0.523622, 0.823433,
		0.420189, 0.711093, -0.563726,
		-0.880717, 0.469219, -0.064586,
		32.590332, 43.067181, 38.949528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426891, 43.424900, 38.913418>,  <33.206833, 42.738728, 38.994736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426891, 43.424900, 38.913418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083755, 43.383335, 39.114738>,  <32.877872, 43.358395, 39.235531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083755, 43.383335, 39.114738>,  <33.426891, 43.424900, 38.913418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083755, 43.383335, 39.114738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435041, 0.374523, 0.818823,
		-0.273587, 0.921376, -0.276073,
		-0.857840, -0.103917, 0.503301,
		32.826405, 43.352161, 39.265728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145176, 44.069084, 39.345417>,  <33.426891, 43.424900, 38.913418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145176, 44.069084, 39.345417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037903, 43.726856, 39.522541>,  <32.973541, 43.521519, 39.628815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037903, 43.726856, 39.522541>,  <33.145176, 44.069084, 39.345417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037903, 43.726856, 39.522541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347646, 0.342732, 0.872741,
		-0.898456, 0.387993, 0.205522,
		-0.268179, -0.855568, 0.442814,
		32.957451, 43.470184, 39.655384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544491, 44.043667, 39.824570>,  <33.145176, 44.069084, 39.345417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544491, 44.043667, 39.824570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886509, 43.847473, 39.891880>,  <33.091721, 43.729755, 39.932266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886509, 43.847473, 39.891880>,  <32.544491, 44.043667, 39.824570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886509, 43.847473, 39.891880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229031, 0.648362, 0.726066,
		-0.465226, -0.582282, 0.666717,
		0.855049, -0.490484, 0.168275,
		33.143024, 43.700329, 39.942364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374222, 43.303680, 39.995201>,  <32.544491, 44.043667, 39.824570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374222, 43.303680, 39.995201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080227, 43.501808, 39.809967>,  <31.903830, 43.620686, 39.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080227, 43.501808, 39.809967>,  <32.374222, 43.303680, 39.995201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080227, 43.501808, 39.809967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333598, -0.330436, -0.882907,
		-0.590343, -0.803410, 0.077628,
		-0.734988, 0.495322, -0.463087,
		31.859730, 43.650406, 39.671040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986141, 42.875900, 39.423668>,  <32.374222, 43.303680, 39.995201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986141, 42.875900, 39.423668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014099, 43.270222, 39.362602>,  <32.030872, 43.506813, 39.325962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014099, 43.270222, 39.362602>,  <31.986141, 42.875900, 39.423668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014099, 43.270222, 39.362602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384073, -0.167837, -0.907920,
		-0.920653, 0.004825, -0.390351,
		0.069896, 0.985803, -0.152667,
		32.035069, 43.565964, 39.316803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461462, 43.238350, 38.975422>,  <31.986141, 42.875900, 39.423668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461462, 43.238350, 38.975422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818724, 43.418243, 38.974033>,  <32.033081, 43.526180, 38.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818724, 43.418243, 38.974033>,  <31.461462, 43.238350, 38.975422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818724, 43.418243, 38.974033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135497, -0.276435, -0.951433,
		-0.428850, 0.849308, -0.307837,
		0.893156, 0.449733, -0.003471,
		32.086670, 43.553162, 38.972992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575008, 43.501335, 38.266624>,  <31.461462, 43.238350, 38.975422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575008, 43.501335, 38.266624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938253, 43.483761, 38.433193>,  <32.156200, 43.473217, 38.533134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938253, 43.483761, 38.433193>,  <31.575008, 43.501335, 38.266624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938253, 43.483761, 38.433193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395937, -0.233531, -0.888086,
		0.136269, 0.971356, -0.194674,
		0.908110, -0.043940, 0.416419,
		32.210686, 43.470577, 38.558121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138931, 43.788860, 37.857002>,  <31.575008, 43.501335, 38.266624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138931, 43.788860, 37.857002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279575, 43.511269, 38.108322>,  <32.363960, 43.344715, 38.259113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279575, 43.511269, 38.108322>,  <32.138931, 43.788860, 37.857002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279575, 43.511269, 38.108322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346353, -0.527097, -0.776021,
		0.869719, 0.490469, 0.055031,
		0.351608, -0.693981, 0.628302,
		32.385059, 43.303074, 38.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773338, 43.584358, 37.525814>,  <32.138931, 43.788860, 37.857002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773338, 43.584358, 37.525814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663937, 43.307701, 37.793194>,  <32.598297, 43.141708, 37.953621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663937, 43.307701, 37.793194>,  <32.773338, 43.584358, 37.525814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663937, 43.307701, 37.793194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175099, -0.719139, -0.672443,
		0.945800, -0.066868, 0.317791,
		-0.273500, -0.691642, 0.668453,
		32.581886, 43.100208, 37.993729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339428, 43.103546, 37.574223>,  <32.773338, 43.584358, 37.525814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339428, 43.103546, 37.574223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994244, 42.924431, 37.667847>,  <32.787132, 42.816963, 37.724022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994244, 42.924431, 37.667847>,  <33.339428, 43.103546, 37.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994244, 42.924431, 37.667847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222466, -0.752646, -0.619704,
		0.453660, -0.482710, 0.749122,
		-0.862961, -0.447789, 0.234059,
		32.735355, 42.790092, 37.738064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532200, 42.366856, 37.697529>,  <33.339428, 43.103546, 37.574223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532200, 42.366856, 37.697529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137657, 42.360214, 37.632023>,  <32.900932, 42.356228, 37.592720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137657, 42.360214, 37.632023>,  <33.532200, 42.366856, 37.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137657, 42.360214, 37.632023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120255, -0.752057, -0.648034,
		-0.112404, -0.658889, 0.743795,
		-0.986359, -0.016604, -0.163769,
		32.841751, 42.355232, 37.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233006, 41.635269, 37.842854>,  <33.532200, 42.366856, 37.697529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233006, 41.635269, 37.842854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014473, 41.834747, 37.573685>,  <32.883354, 41.954433, 37.412182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014473, 41.834747, 37.573685>,  <33.233006, 41.635269, 37.842854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014473, 41.834747, 37.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152108, -0.730987, -0.665223,
		-0.823640, -0.465790, 0.323506,
		-0.546333, 0.498696, -0.672921,
		32.850574, 41.984356, 37.371807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788113, 41.113293, 37.585056>,  <33.233006, 41.635269, 37.842854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788113, 41.113293, 37.585056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825535, 41.429882, 37.343456>,  <32.847988, 41.619835, 37.198498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825535, 41.429882, 37.343456>,  <32.788113, 41.113293, 37.585056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825535, 41.429882, 37.343456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035978, -0.608948, -0.792394,
		-0.994964, 0.052404, -0.085447,
		0.093558, 0.791477, -0.603996,
		32.853603, 41.667324, 37.162258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353008, 40.987347, 37.003727>,  <32.788113, 41.113293, 37.585056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353008, 40.987347, 37.003727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637306, 41.245701, 36.892246>,  <32.807884, 41.400715, 36.825359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637306, 41.245701, 36.892246>,  <32.353008, 40.987347, 37.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637306, 41.245701, 36.892246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054814, -0.445838, -0.893434,
		-0.701311, 0.619727, -0.352281,
		0.710745, 0.645885, -0.278702,
		32.850529, 41.439465, 36.808636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200226, 41.276035, 36.282864>,  <32.353008, 40.987347, 37.003727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200226, 41.276035, 36.282864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593494, 41.322243, 36.339485>,  <32.829456, 41.349968, 36.373459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593494, 41.322243, 36.339485>,  <32.200226, 41.276035, 36.282864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593494, 41.322243, 36.339485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175630, -0.383974, -0.906487,
		-0.050359, 0.916090, -0.397799,
		0.983167, 0.115515, 0.141557,
		32.888443, 41.356895, 36.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476254, 41.322411, 35.591850>,  <32.200226, 41.276035, 36.282864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476254, 41.322411, 35.591850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820980, 41.300522, 35.793552>,  <33.027817, 41.287388, 35.914574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820980, 41.300522, 35.793552>,  <32.476254, 41.322411, 35.591850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820980, 41.300522, 35.793552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451037, -0.372099, -0.811238,
		0.232027, 0.926578, -0.296000,
		0.861817, -0.054722, 0.504258,
		33.079525, 41.284103, 35.944828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894562, 41.633347, 35.119877>,  <32.476254, 41.322411, 35.591850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894562, 41.633347, 35.119877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124996, 41.418133, 35.366013>,  <33.263256, 41.289005, 35.513695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124996, 41.418133, 35.366013>,  <32.894562, 41.633347, 35.119877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124996, 41.418133, 35.366013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567124, -0.279041, -0.774924,
		0.588641, 0.795397, 0.144380,
		0.576084, -0.538033, 0.615344,
		33.297821, 41.256721, 35.550617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599655, 41.741413, 34.939468>,  <32.894562, 41.633347, 35.119877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599655, 41.741413, 34.939468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617050, 41.394855, 35.138454>,  <33.627487, 41.186920, 35.257847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617050, 41.394855, 35.138454>,  <33.599655, 41.741413, 34.939468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617050, 41.394855, 35.138454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641029, -0.357719, -0.679058,
		0.766284, 0.348420, 0.539827,
		0.043491, -0.866395, 0.497461,
		33.630096, 41.134937, 35.287693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289444, 41.616753, 34.995491>,  <33.599655, 41.741413, 34.939468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289444, 41.616753, 34.995491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108913, 41.265957, 35.061447>,  <34.000595, 41.055477, 35.101021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108913, 41.265957, 35.061447>,  <34.289444, 41.616753, 34.995491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108913, 41.265957, 35.061447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596862, -0.434041, -0.674807,
		0.663369, -0.206143, 0.719338,
		-0.451329, -0.876991, 0.164890,
		33.973515, 41.002861, 35.110912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860172, 41.125149, 34.942654>,  <34.289444, 41.616753, 34.995491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860172, 41.125149, 34.942654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519424, 40.929504, 34.867729>,  <34.314976, 40.812119, 34.822773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519424, 40.929504, 34.867729>,  <34.860172, 41.125149, 34.942654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519424, 40.929504, 34.867729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423065, -0.431772, -0.796610,
		0.308751, -0.757857, 0.574740,
		-0.851873, -0.489107, -0.187312,
		34.263863, 40.782772, 34.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079445, 40.429165, 34.825932>,  <34.860172, 41.125149, 34.942654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079445, 40.429165, 34.825932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713463, 40.476299, 34.671543>,  <34.493874, 40.504581, 34.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713463, 40.476299, 34.671543>,  <35.079445, 40.429165, 34.825932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713463, 40.476299, 34.671543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257975, -0.564704, -0.783937,
		-0.310335, -0.816837, 0.486280,
		-0.914954, 0.117835, -0.385971,
		34.438976, 40.511650, 34.555752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019016, 39.852409, 34.441132>,  <35.079445, 40.429165, 34.825932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019016, 39.852409, 34.441132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744923, 40.097790, 34.284096>,  <34.580467, 40.245018, 34.189877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744923, 40.097790, 34.284096>,  <35.019016, 39.852409, 34.441132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744923, 40.097790, 34.284096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197451, -0.362372, -0.910879,
		-0.701045, -0.701684, 0.127183,
		-0.685237, 0.613455, -0.392587,
		34.539352, 40.281826, 34.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695087, 39.508823, 33.970085>,  <35.019016, 39.852409, 34.441132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695087, 39.508823, 33.970085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606529, 39.879475, 33.848534>,  <34.553394, 40.101864, 33.775604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606529, 39.879475, 33.848534>,  <34.695087, 39.508823, 33.970085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606529, 39.879475, 33.848534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270566, -0.241009, -0.932045,
		-0.936898, -0.288570, -0.197356,
		-0.221396, 0.926629, -0.303878,
		34.540112, 40.157463, 33.757370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245960, 39.506729, 33.274540>,  <34.695087, 39.508823, 33.970085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245960, 39.506729, 33.274540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413738, 39.869576, 33.288441>,  <34.514404, 40.087284, 33.296783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413738, 39.869576, 33.288441>,  <34.245960, 39.506729, 33.274540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413738, 39.869576, 33.288441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308092, -0.106240, -0.945406,
		-0.853898, 0.407257, -0.324037,
		0.419449, 0.907113, 0.034755,
		34.539574, 40.141708, 33.298866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115189, 39.783447, 32.603363>,  <34.245960, 39.506729, 33.274540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115189, 39.783447, 32.603363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372437, 40.056423, 32.742317>,  <34.526783, 40.220207, 32.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372437, 40.056423, 32.742317>,  <34.115189, 39.783447, 32.603363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372437, 40.056423, 32.742317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237131, 0.253872, -0.937720,
		-0.728129, 0.685439, 0.001441,
		0.643115, 0.682439, 0.347390,
		34.565372, 40.261154, 32.846535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923622, 40.446697, 32.259563>,  <34.115189, 39.783447, 32.603363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923622, 40.446697, 32.259563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311863, 40.440075, 32.355618>,  <34.544807, 40.436100, 32.413250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311863, 40.440075, 32.355618>,  <33.923622, 40.446697, 32.259563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311863, 40.440075, 32.355618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230578, 0.350256, -0.907829,
		-0.069076, 0.936508, 0.343776,
		0.970599, -0.016558, 0.240133,
		34.603043, 40.435108, 32.427658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245575, 41.062508, 32.078804>,  <33.923622, 40.446697, 32.259563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245575, 41.062508, 32.078804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552925, 40.807083, 32.095982>,  <34.737335, 40.653828, 32.106289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552925, 40.807083, 32.095982>,  <34.245575, 41.062508, 32.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552925, 40.807083, 32.095982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315966, 0.320136, -0.893129,
		0.556567, 0.699825, 0.447747,
		0.768374, -0.638559, 0.042943,
		34.783436, 40.615517, 32.108864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878670, 41.529621, 32.052570>,  <34.245575, 41.062508, 32.078804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878670, 41.529621, 32.052570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970238, 41.159645, 31.931187>,  <35.025177, 40.937660, 31.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970238, 41.159645, 31.931187>,  <34.878670, 41.529621, 32.052570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970238, 41.159645, 31.931187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367140, 0.370748, -0.853085,
		0.901557, 0.083873, 0.424452,
		0.228916, -0.924938, -0.303458,
		35.038914, 40.882164, 31.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454636, 41.634830, 31.755873>,  <34.878670, 41.529621, 32.052570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454636, 41.634830, 31.755873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387135, 41.250423, 31.668264>,  <35.346634, 41.019779, 31.615700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387135, 41.250423, 31.668264>,  <35.454636, 41.634830, 31.755873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387135, 41.250423, 31.668264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392913, 0.138201, -0.909131,
		0.903958, -0.239479, 0.354273,
		-0.168757, -0.961015, -0.219023,
		35.336506, 40.962120, 31.602558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102592, 41.463154, 31.451674>,  <35.454636, 41.634830, 31.755873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102592, 41.463154, 31.451674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784576, 41.258636, 31.321140>,  <35.593765, 41.135925, 31.242821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784576, 41.258636, 31.321140>,  <36.102592, 41.463154, 31.451674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784576, 41.258636, 31.321140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290450, 0.151405, -0.944836,
		0.532496, -0.845965, 0.028132,
		-0.795039, -0.511292, -0.326333,
		35.546066, 41.105247, 31.223240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299873, 41.119446, 30.853165>,  <36.102592, 41.463154, 31.451674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299873, 41.119446, 30.853165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901005, 41.124199, 30.823498>,  <35.661682, 41.127048, 30.805698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901005, 41.124199, 30.823498>,  <36.299873, 41.119446, 30.853165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901005, 41.124199, 30.823498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075108, 0.167104, -0.983074,
		0.000713, -0.985868, -0.167525,
		-0.997175, 0.011881, -0.074166,
		35.601852, 41.127762, 30.801249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149326, 40.790516, 30.237778>,  <36.299873, 41.119446, 30.853165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149326, 40.790516, 30.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793514, 40.950069, 30.326883>,  <35.580029, 41.045803, 30.380346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793514, 40.950069, 30.326883>,  <36.149326, 40.790516, 30.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793514, 40.950069, 30.326883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265972, -0.055678, -0.962372,
		-0.371475, -0.915308, 0.155620,
		-0.889531, 0.398887, 0.222763,
		35.526653, 41.069736, 30.393713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669380, 40.330841, 29.926321>,  <36.149326, 40.790516, 30.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669380, 40.330841, 29.926321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501995, 40.689835, 29.982059>,  <35.401566, 40.905231, 30.015503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501995, 40.689835, 29.982059>,  <35.669380, 40.330841, 29.926321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501995, 40.689835, 29.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099632, 0.107136, -0.989240,
		-0.902752, -0.427844, 0.044585,
		-0.418464, 0.897480, 0.139344,
		35.376457, 40.959080, 30.023863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061695, 40.273655, 29.486799>,  <35.669380, 40.330841, 29.926321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061695, 40.273655, 29.486799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170635, 40.648251, 29.575171>,  <35.236000, 40.873009, 29.628193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170635, 40.648251, 29.575171>,  <35.061695, 40.273655, 29.486799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170635, 40.648251, 29.575171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147781, 0.267595, -0.952131,
		-0.950782, 0.226664, 0.211275,
		0.272350, 0.936491, 0.220928,
		35.252342, 40.929199, 29.641449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702534, 40.656044, 29.068893>,  <35.061695, 40.273655, 29.486799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702534, 40.656044, 29.068893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968609, 40.944775, 29.145309>,  <35.128254, 41.118011, 29.191160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968609, 40.944775, 29.145309>,  <34.702534, 40.656044, 29.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968609, 40.944775, 29.145309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014701, 0.268466, -0.963177,
		-0.746532, 0.637885, 0.189192,
		0.665187, 0.721823, 0.191041,
		35.168163, 41.161324, 29.202621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391418, 41.220974, 28.776318>,  <34.702534, 40.656044, 29.068893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391418, 41.220974, 28.776318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785755, 41.263737, 28.827997>,  <35.022358, 41.289394, 28.859005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785755, 41.263737, 28.827997>,  <34.391418, 41.220974, 28.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785755, 41.263737, 28.827997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081650, 0.366941, -0.926654,
		-0.146478, 0.924080, 0.353016,
		0.985839, 0.106911, 0.129200,
		35.081505, 41.295811, 28.866756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510422, 41.850750, 28.534319>,  <34.391418, 41.220974, 28.776318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510422, 41.850750, 28.534319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860779, 41.658592, 28.516266>,  <35.070992, 41.543297, 28.505434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860779, 41.658592, 28.516266>,  <34.510422, 41.850750, 28.534319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860779, 41.658592, 28.516266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199672, 0.446021, -0.872465,
		0.439257, 0.755173, 0.486587,
		0.875891, -0.480394, -0.045131,
		35.123547, 41.514473, 28.502728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056305, 42.320587, 28.214859>,  <34.510422, 41.850750, 28.534319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056305, 42.320587, 28.214859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238701, 41.969467, 28.156158>,  <35.348137, 41.758793, 28.120939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238701, 41.969467, 28.156158>,  <35.056305, 42.320587, 28.214859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238701, 41.969467, 28.156158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230791, 0.275878, -0.933074,
		0.859540, 0.391603, 0.328387,
		0.455990, -0.877803, -0.146750,
		35.375496, 41.706127, 28.112133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753422, 42.447277, 27.930342>,  <35.056305, 42.320587, 28.214859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753422, 42.447277, 27.930342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607159, 42.089375, 27.827814>,  <35.519402, 41.874634, 27.766298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607159, 42.089375, 27.827814>,  <35.753422, 42.447277, 27.930342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607159, 42.089375, 27.827814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184163, 0.200392, -0.962251,
		0.912346, -0.399062, 0.091506,
		-0.365661, -0.894758, -0.256319,
		35.497459, 41.820946, 27.750919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085915, 42.325287, 27.317593>,  <35.753422, 42.447277, 27.930342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085915, 42.325287, 27.317593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838593, 42.010963, 27.311987>,  <35.690201, 41.822369, 27.308624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838593, 42.010963, 27.311987>,  <36.085915, 42.325287, 27.317593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838593, 42.010963, 27.311987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034976, -0.009698, -0.999341,
		0.785159, -0.618389, 0.033481,
		-0.618306, -0.785812, -0.014015,
		35.653099, 41.775219, 27.307783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406376, 41.719631, 27.023922>,  <36.085915, 42.325287, 27.317593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406376, 41.719631, 27.023922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014034, 41.652546, 26.984327>,  <35.778629, 41.612293, 26.960571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014034, 41.652546, 26.984327>,  <36.406376, 41.719631, 27.023922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014034, 41.652546, 26.984327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144758, -0.287871, -0.946666,
		0.130278, -0.942869, 0.306637,
		-0.980853, -0.167717, -0.098984,
		35.719780, 41.602230, 26.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243542, 41.081532, 26.693697>,  <36.406376, 41.719631, 27.023922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243542, 41.081532, 26.693697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890469, 41.260708, 26.636820>,  <35.678623, 41.368214, 26.602694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890469, 41.260708, 26.636820>,  <36.243542, 41.081532, 26.693697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890469, 41.260708, 26.636820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119456, -0.078780, -0.989709,
		-0.454532, -0.890586, 0.016029,
		-0.882684, 0.447940, -0.142194,
		35.625664, 41.395088, 26.594162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904404, 40.736801, 26.218880>,  <36.243542, 41.081532, 26.693697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904404, 40.736801, 26.218880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713783, 41.088367, 26.226934>,  <35.599411, 41.299309, 26.231768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713783, 41.088367, 26.226934>,  <35.904404, 40.736801, 26.218880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713783, 41.088367, 26.226934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052783, 0.051468, -0.997279,
		-0.877563, -0.474188, -0.070919,
		-0.476548, 0.878918, 0.020138,
		35.570820, 41.352043, 26.232975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245960, 40.629704, 25.825315>,  <35.904404, 40.736801, 26.218880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245960, 40.629704, 25.825315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335983, 41.019325, 25.815807>,  <35.389996, 41.253098, 25.810102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335983, 41.019325, 25.815807>,  <35.245960, 40.629704, 25.825315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335983, 41.019325, 25.815807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068007, -0.008632, -0.997648,
		-0.971970, 0.226141, 0.064300,
		0.225054, 0.974056, -0.023769,
		35.403500, 41.311543, 25.808676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843327, 40.882313, 25.365795>,  <35.245960, 40.629704, 25.825315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843327, 40.882313, 25.365795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088039, 41.196930, 25.399437>,  <35.234867, 41.385700, 25.419622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088039, 41.196930, 25.399437>,  <34.843327, 40.882313, 25.365795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088039, 41.196930, 25.399437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052440, 0.146417, -0.987832,
		-0.789288, 0.599925, 0.130821,
		0.611779, 0.786544, 0.084105,
		35.271572, 41.432892, 25.424669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565487, 41.449810, 24.924860>,  <34.843327, 40.882313, 25.365795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565487, 41.449810, 24.924860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944553, 41.556133, 24.995605>,  <35.171993, 41.619926, 25.038054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944553, 41.556133, 24.995605>,  <34.565487, 41.449810, 24.924860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944553, 41.556133, 24.995605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097830, 0.285557, -0.953355,
		-0.303915, 0.920762, 0.244608,
		0.947663, 0.265808, 0.176863,
		35.228851, 41.635876, 25.048664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675930, 42.107265, 24.683268>,  <34.565487, 41.449810, 24.924860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675930, 42.107265, 24.683268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052429, 41.972725, 24.695423>,  <35.278328, 41.891998, 24.702717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052429, 41.972725, 24.695423>,  <34.675930, 42.107265, 24.683268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052429, 41.972725, 24.695423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157599, 0.357871, -0.920375,
		0.298696, 0.871089, 0.389853,
		0.941246, -0.336353, 0.030388,
		35.334805, 41.871819, 24.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101421, 42.625935, 24.493969>,  <34.675930, 42.107265, 24.683268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101421, 42.625935, 24.493969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333412, 42.305367, 24.435520>,  <35.472607, 42.113026, 24.400450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333412, 42.305367, 24.435520>,  <35.101421, 42.625935, 24.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333412, 42.305367, 24.435520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235529, 0.336679, -0.911687,
		0.779840, 0.494343, 0.384024,
		0.579979, -0.801419, -0.146124,
		35.507404, 42.064941, 24.391684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758659, 42.877876, 24.250942>,  <35.101421, 42.625935, 24.493969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758659, 42.877876, 24.250942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762123, 42.495811, 24.132561>,  <35.764202, 42.266571, 24.061533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762123, 42.495811, 24.132561>,  <35.758659, 42.877876, 24.250942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762123, 42.495811, 24.132561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415260, 0.272674, -0.867876,
		0.909662, -0.115378, 0.399003,
		0.008664, -0.955163, -0.295953,
		35.764721, 42.209263, 24.043776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473652, 42.841721, 23.821089>,  <35.758659, 42.877876, 24.250942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473652, 42.841721, 23.821089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277409, 42.503014, 23.738834>,  <36.159660, 42.299789, 23.689482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277409, 42.503014, 23.738834>,  <36.473652, 42.841721, 23.821089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277409, 42.503014, 23.738834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085339, 0.188163, -0.978423,
		0.867189, -0.497575, -0.020053,
		-0.490612, -0.846767, -0.205635,
		36.130226, 42.248985, 23.677143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850479, 42.496338, 23.317034>,  <36.473652, 42.841721, 23.821089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850479, 42.496338, 23.317034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468529, 42.388988, 23.266153>,  <36.239357, 42.324577, 23.235624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468529, 42.388988, 23.266153>,  <36.850479, 42.496338, 23.317034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468529, 42.388988, 23.266153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027721, 0.345889, -0.937866,
		0.295693, -0.899076, -0.322843,
		-0.954881, -0.268371, -0.127201,
		36.182064, 42.308475, 23.227993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821140, 42.076633, 22.666752>,  <36.850479, 42.496338, 23.317034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821140, 42.076633, 22.666752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455070, 42.218014, 22.744230>,  <36.235428, 42.302841, 22.790718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455070, 42.218014, 22.744230>,  <36.821140, 42.076633, 22.666752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455070, 42.218014, 22.744230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067099, 0.340263, -0.937933,
		-0.397426, -0.871373, -0.287685,
		-0.915178, 0.353455, 0.193698,
		36.180515, 42.324051, 22.802340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350616, 41.676754, 22.264221>,  <36.821140, 42.076633, 22.666752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350616, 41.676754, 22.264221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164978, 42.016525, 22.364689>,  <36.053596, 42.220387, 22.424969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164978, 42.016525, 22.364689>,  <36.350616, 41.676754, 22.264221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164978, 42.016525, 22.364689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131889, 0.346659, -0.928673,
		-0.875910, -0.397868, -0.272914,
		-0.464097, 0.849428, 0.251168,
		36.025749, 42.271355, 22.440039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203892, 41.871170, 21.645153>,  <36.350616, 41.676754, 22.264221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203892, 41.871170, 21.645153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046230, 42.167057, 21.863314>,  <35.951633, 42.344589, 21.994209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046230, 42.167057, 21.863314>,  <36.203892, 41.871170, 21.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046230, 42.167057, 21.863314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164853, 0.526911, -0.833779,
		-0.904137, -0.418552, -0.085742,
		-0.394158, 0.739716, 0.545399,
		35.927982, 42.388973, 22.026934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477371, 41.931423, 21.457188>,  <36.203892, 41.871170, 21.645153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477371, 41.931423, 21.457188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609631, 42.284328, 21.591223>,  <35.688988, 42.496071, 21.671644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609631, 42.284328, 21.591223>,  <35.477371, 41.931423, 21.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609631, 42.284328, 21.591223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282411, 0.431285, -0.856876,
		-0.900507, 0.188696, 0.391766,
		0.330652, 0.882262, 0.335086,
		35.708828, 42.549007, 21.691748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185146, 42.459087, 21.046577>,  <35.477371, 41.931423, 21.457188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185146, 42.459087, 21.046577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473408, 42.696522, 21.189861>,  <35.646366, 42.838982, 21.275831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473408, 42.696522, 21.189861>,  <35.185146, 42.459087, 21.046577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473408, 42.696522, 21.189861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069952, 0.451785, -0.889380,
		-0.689758, 0.665992, 0.284057,
		0.720653, 0.593587, 0.358210,
		35.689602, 42.874599, 21.297323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990845, 43.156769, 20.782833>,  <35.185146, 42.459087, 21.046577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990845, 43.156769, 20.782833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 43.111809, 20.844040>,  <35.619202, 43.084831, 20.880764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 43.111809, 20.844040>,  <34.990845, 43.156769, 20.782833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383568, 43.111809, 20.844040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173451, 0.203199, -0.963652,
		0.077225, 0.972664, 0.219000,
		0.981810, -0.112404, 0.153017,
		35.678112, 43.078087, 20.889946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304321, 43.667225, 20.412279>,  <34.990845, 43.156769, 20.782833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304321, 43.667225, 20.412279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555237, 43.358677, 20.455177>,  <35.705784, 43.173550, 20.480917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555237, 43.358677, 20.455177>,  <35.304321, 43.667225, 20.412279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555237, 43.358677, 20.455177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076303, -0.076173, -0.994171,
		0.775042, 0.631813, 0.011075,
		0.627286, -0.771369, 0.107247,
		35.743423, 43.127266, 20.487350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136246, 44.211205, 19.941446>,  <35.304321, 43.667225, 20.412279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136246, 44.211205, 19.941446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793758, 44.417789, 19.936396>,  <34.588264, 44.541740, 19.933365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793758, 44.417789, 19.936396>,  <35.136246, 44.211205, 19.941446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793758, 44.417789, 19.936396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133936, -0.198304, 0.970946,
		0.498953, 0.833032, 0.238964,
		-0.856217, 0.516462, -0.012629,
		34.536892, 44.572727, 19.932608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095882, 44.809505, 20.394836>,  <35.136246, 44.211205, 19.941446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095882, 44.809505, 20.394836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723717, 44.665337, 20.368250>,  <34.500416, 44.578835, 20.352299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723717, 44.665337, 20.368250>,  <35.095882, 44.809505, 20.394836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723717, 44.665337, 20.368250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022914, -0.123790, 0.992044,
		-0.365781, 0.924539, 0.106918,
		-0.930419, -0.360421, -0.066465,
		34.444592, 44.557209, 20.348310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807178, 44.952599, 20.220819>,  <35.095882, 44.809505, 20.394836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807178, 44.952599, 20.220819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879951, 45.345909, 20.217701>,  <35.923615, 45.581898, 20.215830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879951, 45.345909, 20.217701>,  <35.807178, 44.952599, 20.220819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879951, 45.345909, 20.217701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675414, 0.130724, 0.725760,
		0.714645, -0.126774, 0.687904,
		0.181933, 0.983280, -0.007797,
		35.934532, 45.640892, 20.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171249, 44.488922, 20.767843>,  <35.807178, 44.952599, 20.220819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171249, 44.488922, 20.767843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354485, 44.164185, 20.623037>,  <36.464428, 43.969341, 20.536154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354485, 44.164185, 20.623037>,  <36.171249, 44.488922, 20.767843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354485, 44.164185, 20.623037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879973, -0.356587, -0.313836,
		0.125697, 0.462330, -0.877754,
		0.458091, -0.811848, -0.362016,
		36.491913, 43.920631, 20.514433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513592, 44.657982, 20.194662>,  <36.171249, 44.488922, 20.767843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513592, 44.657982, 20.194662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525822, 45.018757, 20.366978>,  <36.533157, 45.235222, 20.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525822, 45.018757, 20.366978>,  <36.513592, 44.657982, 20.194662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525822, 45.018757, 20.366978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451337, -0.397007, 0.799174,
		0.891829, 0.170001, -0.419213,
		0.030570, 0.901934, 0.430791,
		36.534992, 45.289337, 20.496216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157410, 44.772285, 20.514303>,  <36.513592, 44.657982, 20.194662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157410, 44.772285, 20.514303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953678, 45.051685, 20.715376>,  <36.831440, 45.219326, 20.836020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953678, 45.051685, 20.715376>,  <37.157410, 44.772285, 20.514303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953678, 45.051685, 20.715376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549270, -0.185812, 0.814725,
		0.662487, 0.691069, -0.289024,
		-0.509327, 0.698497, 0.502681,
		36.800880, 45.261234, 20.866180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576427, 45.332729, 20.874043>,  <37.157410, 44.772285, 20.514303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576427, 45.332729, 20.874043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234207, 45.288837, 21.076422>,  <37.028873, 45.262501, 21.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234207, 45.288837, 21.076422>,  <37.576427, 45.332729, 20.874043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234207, 45.288837, 21.076422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517437, -0.213035, 0.828779,
		0.016840, 0.970863, 0.239043,
		-0.855556, -0.109733, 0.505948,
		36.977539, 45.255917, 21.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561031, 45.717880, 21.491282>,  <37.576427, 45.332729, 20.874043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561031, 45.717880, 21.491282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283051, 45.437218, 21.554173>,  <37.116264, 45.268818, 21.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283051, 45.437218, 21.554173>,  <37.561031, 45.717880, 21.491282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283051, 45.437218, 21.554173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357630, -0.147582, 0.922128,
		-0.623818, 0.697059, 0.353496,
		-0.694947, -0.701661, 0.157225,
		37.074566, 45.226719, 21.601339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415398, 45.785225, 22.197838>,  <37.561031, 45.717880, 21.491282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415398, 45.785225, 22.197838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323334, 45.413631, 22.081890>,  <37.268097, 45.190678, 22.012321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323334, 45.413631, 22.081890>,  <37.415398, 45.785225, 22.197838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323334, 45.413631, 22.081890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259048, -0.345604, 0.901916,
		-0.938041, 0.132495, 0.320194,
		-0.230160, -0.928979, -0.289868,
		37.254284, 45.134937, 21.994930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881775, 45.548935, 22.525963>,  <37.415398, 45.785225, 22.197838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881775, 45.548935, 22.525963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011559, 45.184990, 22.422523>,  <37.089428, 44.966621, 22.360460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011559, 45.184990, 22.422523>,  <36.881775, 45.548935, 22.525963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011559, 45.184990, 22.422523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109226, -0.235521, 0.965712,
		-0.939571, -0.341583, 0.022963,
		0.324462, -0.909863, -0.258599,
		37.108898, 44.912029, 22.344944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485657, 45.078911, 22.893404>,  <36.881775, 45.548935, 22.525963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485657, 45.078911, 22.893404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815369, 44.874645, 22.795605>,  <37.013195, 44.752087, 22.736925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815369, 44.874645, 22.795605>,  <36.485657, 45.078911, 22.893404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815369, 44.874645, 22.795605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231475, -0.090147, 0.968655,
		-0.516702, -0.855039, 0.043900,
		0.824280, -0.510668, -0.244499,
		37.062653, 44.721443, 22.722256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444210, 44.408356, 23.218439>,  <36.485657, 45.078911, 22.893404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444210, 44.408356, 23.218439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826092, 44.500786, 23.143452>,  <37.055222, 44.556244, 23.098459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826092, 44.500786, 23.143452>,  <36.444210, 44.408356, 23.218439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826092, 44.500786, 23.143452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220140, -0.124620, 0.967475,
		0.200194, -0.964922, -0.169843,
		0.954704, 0.231072, -0.187470,
		37.112503, 44.570107, 23.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781517, 43.931892, 23.715954>,  <36.444210, 44.408356, 23.218439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781517, 43.931892, 23.715954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065010, 44.189465, 23.600681>,  <37.235107, 44.344009, 23.531517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065010, 44.189465, 23.600681>,  <36.781517, 43.931892, 23.715954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065010, 44.189465, 23.600681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320044, 0.070564, 0.944771,
		0.628703, -0.761822, -0.156075,
		0.708734, 0.643932, -0.288181,
		37.277630, 44.382645, 23.514227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410107, 43.716576, 24.033854>,  <36.781517, 43.931892, 23.715954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410107, 43.716576, 24.033854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437252, 44.105801, 23.945717>,  <37.453541, 44.339336, 23.892836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437252, 44.105801, 23.945717>,  <37.410107, 43.716576, 24.033854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437252, 44.105801, 23.945717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490904, 0.159701, 0.856451,
		0.868566, -0.166288, -0.466841,
		0.067863, 0.973059, -0.220342,
		37.457611, 44.397717, 23.879614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984882, 43.876682, 24.396345>,  <37.410107, 43.716576, 24.033854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984882, 43.876682, 24.396345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822815, 44.232494, 24.311890>,  <37.725574, 44.445980, 24.261217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822815, 44.232494, 24.311890>,  <37.984882, 43.876682, 24.396345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822815, 44.232494, 24.311890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352113, 0.364955, 0.861873,
		0.843716, 0.274857, -0.461082,
		-0.405166, 0.889529, -0.211137,
		37.701263, 44.499352, 24.248549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515564, 44.418789, 24.542356>,  <37.984882, 43.876682, 24.396345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515564, 44.418789, 24.542356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162979, 44.605061, 24.573776>,  <37.951427, 44.716824, 24.592628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162979, 44.605061, 24.573776>,  <38.515564, 44.418789, 24.542356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162979, 44.605061, 24.573776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303073, 0.430239, 0.850318,
		0.362179, 0.773329, -0.520374,
		-0.881461, 0.465679, 0.078551,
		37.898540, 44.744762, 24.597342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595150, 45.108864, 24.768568>,  <38.515564, 44.418789, 24.542356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595150, 45.108864, 24.768568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227692, 44.996037, 24.879219>,  <38.007217, 44.928341, 24.945610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227692, 44.996037, 24.879219>,  <38.595150, 45.108864, 24.768568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227692, 44.996037, 24.879219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189234, 0.300489, 0.934825,
		-0.346804, 0.911123, -0.222668,
		-0.918650, -0.282065, 0.276626,
		37.952095, 44.911419, 24.962208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352257, 45.643578, 25.212015>,  <38.595150, 45.108864, 24.768568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352257, 45.643578, 25.212015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085968, 45.357002, 25.295473>,  <37.926197, 45.185055, 25.345547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085968, 45.357002, 25.295473>,  <38.352257, 45.643578, 25.212015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085968, 45.357002, 25.295473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088032, 0.353058, 0.931451,
		-0.740992, 0.601717, -0.298107,
		-0.665719, -0.716440, 0.208643,
		37.886253, 45.142071, 25.358067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043568, 45.887825, 25.840830>,  <38.352257, 45.643578, 25.212015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043568, 45.887825, 25.840830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935799, 45.503174, 25.820086>,  <37.871136, 45.272385, 25.807638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935799, 45.503174, 25.820086>,  <38.043568, 45.887825, 25.840830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935799, 45.503174, 25.820086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164827, -0.007011, 0.986298,
		-0.948811, 0.274280, -0.156613,
		-0.269424, -0.961624, -0.051861,
		37.854973, 45.214687, 25.804527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534348, 45.813660, 26.318916>,  <38.043568, 45.887825, 25.840830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534348, 45.813660, 26.318916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596176, 45.423313, 26.257208>,  <37.633274, 45.189106, 26.220182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596176, 45.423313, 26.257208>,  <37.534348, 45.813660, 26.318916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596176, 45.423313, 26.257208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294712, -0.194582, 0.935565,
		-0.943001, -0.099150, -0.317676,
		0.154575, -0.975863, -0.154270,
		37.642548, 45.130554, 26.210926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948776, 45.460377, 26.598749>,  <37.534348, 45.813660, 26.318916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948776, 45.460377, 26.598749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256130, 45.204731, 26.612097>,  <37.440544, 45.051342, 26.620106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256130, 45.204731, 26.612097>,  <36.948776, 45.460377, 26.598749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256130, 45.204731, 26.612097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277216, -0.285382, 0.917447,
		-0.576833, -0.714203, -0.396457,
		0.768385, -0.639118, 0.033370,
		37.486645, 45.012997, 26.622108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709499, 44.876629, 26.929621>,  <36.948776, 45.460377, 26.598749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709499, 44.876629, 26.929621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094154, 44.785233, 26.990347>,  <37.324947, 44.730396, 27.026783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094154, 44.785233, 26.990347>,  <36.709499, 44.876629, 26.929621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094154, 44.785233, 26.990347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226263, -0.347708, 0.909892,
		-0.155115, -0.909335, -0.386068,
		0.961636, -0.228491, 0.151814,
		37.382645, 44.716686, 27.035891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765728, 44.133186, 27.190588>,  <36.709499, 44.876629, 26.929621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765728, 44.133186, 27.190588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089581, 44.338490, 27.304468>,  <37.283894, 44.461674, 27.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089581, 44.338490, 27.304468>,  <36.765728, 44.133186, 27.190588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089581, 44.338490, 27.304468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248113, -0.140295, 0.958518,
		0.531912, -0.846688, 0.013759,
		0.809636, 0.513261, 0.284698,
		37.332470, 44.492470, 27.389877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257339, 43.695351, 27.559853>,  <36.765728, 44.133186, 27.190588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257339, 43.695351, 27.559853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372444, 44.055210, 27.691196>,  <37.441505, 44.271126, 27.770002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372444, 44.055210, 27.691196>,  <37.257339, 43.695351, 27.559853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372444, 44.055210, 27.691196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006475, -0.341026, 0.940032,
		0.957680, -0.272631, -0.092309,
		0.287762, 0.899652, 0.328359,
		37.458775, 44.325108, 27.789703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623775, 43.493633, 28.120420>,  <37.257339, 43.695351, 27.559853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623775, 43.493633, 28.120420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595596, 43.885708, 28.194468>,  <37.578690, 44.120953, 28.238895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595596, 43.885708, 28.194468>,  <37.623775, 43.493633, 28.120420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595596, 43.885708, 28.194468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066069, -0.189757, 0.979606,
		0.995325, 0.056777, 0.078127,
		-0.070444, 0.980188, 0.185119,
		37.574463, 44.179764, 28.250004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977879, 43.576145, 28.669439>,  <37.623775, 43.493633, 28.120420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977879, 43.576145, 28.669439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753193, 43.906818, 28.682600>,  <37.618382, 44.105221, 28.690496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753193, 43.906818, 28.682600>,  <37.977879, 43.576145, 28.669439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753193, 43.906818, 28.682600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054524, -0.076670, 0.995565,
		0.825534, 0.557427, 0.088140,
		-0.561712, 0.826678, 0.032900,
		37.584679, 44.154823, 28.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223644, 43.882175, 29.289505>,  <37.977879, 43.576145, 28.669439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223644, 43.882175, 29.289505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864132, 44.033699, 29.201233>,  <37.648426, 44.124611, 29.148270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864132, 44.033699, 29.201233>,  <38.223644, 43.882175, 29.289505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864132, 44.033699, 29.201233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268756, -0.078389, 0.960013,
		0.346359, 0.922150, 0.172261,
		-0.898780, 0.378806, -0.220682,
		37.594498, 44.147343, 29.135029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245850, 44.420982, 29.673258>,  <38.223644, 43.882175, 29.289505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245850, 44.420982, 29.673258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856544, 44.357162, 29.607155>,  <37.622963, 44.318871, 29.567493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856544, 44.357162, 29.607155>,  <38.245850, 44.420982, 29.673258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856544, 44.357162, 29.607155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201274, 0.245616, 0.948241,
		-0.110700, 0.956147, -0.271161,
		-0.973260, -0.159548, -0.165258,
		37.564568, 44.309299, 29.557577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838036, 45.080318, 29.992212>,  <38.245850, 44.420982, 29.673258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838036, 45.080318, 29.992212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584282, 44.778622, 29.924488>,  <37.432030, 44.597603, 29.883854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584282, 44.778622, 29.924488>,  <37.838036, 45.080318, 29.992212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584282, 44.778622, 29.924488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438615, 0.170861, 0.882283,
		-0.636529, 0.633973, -0.439215,
		-0.634388, -0.754245, -0.169312,
		37.393967, 44.552349, 29.873695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283131, 45.258507, 30.380350>,  <37.838036, 45.080318, 29.992212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283131, 45.258507, 30.380350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250576, 44.864273, 30.321030>,  <37.231041, 44.627731, 30.285437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250576, 44.864273, 30.321030>,  <37.283131, 45.258507, 30.380350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250576, 44.864273, 30.321030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506694, -0.087218, 0.857703,
		-0.858275, 0.144953, -0.492293,
		-0.081390, -0.985587, -0.148303,
		37.226158, 44.568596, 30.276539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599155, 45.127064, 30.403507>,  <37.283131, 45.258507, 30.380350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599155, 45.127064, 30.403507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750526, 44.761684, 30.463379>,  <36.841351, 44.542458, 30.499302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750526, 44.761684, 30.463379>,  <36.599155, 45.127064, 30.403507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750526, 44.761684, 30.463379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561792, -0.098140, 0.821437,
		-0.735650, -0.394945, -0.550306,
		0.378430, -0.913448, 0.149680,
		36.864056, 44.487652, 30.508284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041306, 44.716766, 30.642084>,  <36.599155, 45.127064, 30.403507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041306, 44.716766, 30.642084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362438, 44.497456, 30.735769>,  <36.555119, 44.365868, 30.791981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362438, 44.497456, 30.735769>,  <36.041306, 44.716766, 30.642084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362438, 44.497456, 30.735769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460922, -0.321585, 0.827124,
		-0.378182, -0.771988, -0.510894,
		0.802826, -0.548286, 0.234209,
		36.603287, 44.332970, 30.806032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901806, 43.921150, 30.690609>,  <36.041306, 44.716766, 30.642084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901806, 43.921150, 30.690609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212608, 44.033703, 30.915852>,  <36.399090, 44.101234, 31.050997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212608, 44.033703, 30.915852>,  <35.901806, 43.921150, 30.690609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212608, 44.033703, 30.915852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462689, -0.351260, 0.813963,
		0.426831, -0.892996, -0.142739,
		0.777003, 0.281381, 0.563108,
		36.445709, 44.118118, 31.084784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055466, 43.322235, 31.073467>,  <35.901806, 43.921150, 30.690609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055466, 43.322235, 31.073467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252331, 43.604118, 31.277885>,  <36.370449, 43.773247, 31.400536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252331, 43.604118, 31.277885>,  <36.055466, 43.322235, 31.073467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252331, 43.604118, 31.277885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385687, -0.349773, 0.853759,
		0.780397, -0.617293, 0.099650,
		0.492164, 0.704705, 0.511044,
		36.399979, 43.815529, 31.431198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259182, 43.040672, 31.685707>,  <36.055466, 43.322235, 31.073467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259182, 43.040672, 31.685707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310143, 43.423393, 31.790243>,  <36.340721, 43.653027, 31.852964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310143, 43.423393, 31.790243>,  <36.259182, 43.040672, 31.685707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310143, 43.423393, 31.790243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273307, -0.219419, 0.936567,
		0.953453, -0.190747, 0.233546,
		0.127403, 0.956802, 0.261338,
		36.348362, 43.710434, 31.868645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657871, 42.998940, 32.291897>,  <36.259182, 43.040672, 31.685707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657871, 42.998940, 32.291897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467613, 43.350197, 32.271400>,  <36.353458, 43.560951, 32.259102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467613, 43.350197, 32.271400>,  <36.657871, 42.998940, 32.291897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467613, 43.350197, 32.271400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392410, -0.159690, 0.905822,
		0.787259, 0.450957, 0.420548,
		-0.475644, 0.878144, -0.051242,
		36.324921, 43.613640, 32.256027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690598, 43.268719, 32.976379>,  <36.657871, 42.998940, 32.291897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690598, 43.268719, 32.976379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432995, 43.530235, 32.817478>,  <36.278435, 43.687145, 32.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432995, 43.530235, 32.817478>,  <36.690598, 43.268719, 32.976379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432995, 43.530235, 32.817478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502656, 0.029833, 0.863972,
		0.576711, 0.756084, 0.309421,
		-0.644005, 0.653794, -0.397255,
		36.239792, 43.726372, 32.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690388, 43.863129, 33.390747>,  <36.690598, 43.268719, 32.976379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690388, 43.863129, 33.390747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330582, 43.840939, 33.217407>,  <36.114697, 43.827625, 33.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330582, 43.840939, 33.217407>,  <36.690388, 43.863129, 33.390747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330582, 43.840939, 33.217407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436026, 0.051647, 0.898451,
		-0.027460, 0.997123, -0.070645,
		-0.899515, -0.055474, -0.433353,
		36.060726, 43.824295, 33.087402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245556, 44.199162, 33.829426>,  <36.690388, 43.863129, 33.390747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245556, 44.199162, 33.829426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986156, 44.002312, 33.597130>,  <35.830517, 43.884201, 33.457752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986156, 44.002312, 33.597130>,  <36.245556, 44.199162, 33.829426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986156, 44.002312, 33.597130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618262, -0.104539, 0.778989,
		-0.444070, 0.864225, -0.236468,
		-0.648502, -0.492125, -0.580740,
		35.791607, 43.854675, 33.422909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652359, 44.506836, 33.862061>,  <36.245556, 44.199162, 33.829426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652359, 44.506836, 33.862061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565536, 44.123558, 33.787495>,  <35.513443, 43.893593, 33.742756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565536, 44.123558, 33.787495>,  <35.652359, 44.506836, 33.862061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565536, 44.123558, 33.787495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650491, -0.000408, 0.759513,
		-0.727838, 0.286114, -0.623209,
		-0.217054, -0.958195, -0.186412,
		35.500420, 43.836098, 33.731571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948776, 44.475330, 33.962337>,  <35.652359, 44.506836, 33.862061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948776, 44.475330, 33.962337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035110, 44.084763, 33.960861>,  <35.086910, 43.850422, 33.959976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035110, 44.084763, 33.960861>,  <34.948776, 44.475330, 33.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035110, 44.084763, 33.960861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555473, -0.125890, 0.821950,
		-0.803036, -0.175352, -0.569548,
		0.215831, -0.976424, -0.003691,
		35.099861, 43.791836, 33.959755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268852, 44.035206, 33.967331>,  <34.948776, 44.475330, 33.962337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268852, 44.035206, 33.967331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520000, 43.751640, 34.095837>,  <34.670689, 43.581501, 34.172939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520000, 43.751640, 34.095837>,  <34.268852, 44.035206, 33.967331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520000, 43.751640, 34.095837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647174, -0.246235, 0.721480,
		-0.432365, -0.660910, -0.613398,
		0.627874, -0.708919, 0.321261,
		34.708363, 43.538963, 34.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900696, 43.568428, 34.096546>,  <34.268852, 44.035206, 33.967331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900696, 43.568428, 34.096546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226593, 43.510223, 34.321053>,  <34.422131, 43.475300, 34.455757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226593, 43.510223, 34.321053>,  <33.900696, 43.568428, 34.096546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226593, 43.510223, 34.321053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577399, -0.115255, 0.808286,
		-0.052926, -0.982620, -0.177922,
		0.814745, -0.145512, 0.561265,
		34.471016, 43.466568, 34.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746548, 43.042526, 34.541077>,  <33.900696, 43.568428, 34.096546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746548, 43.042526, 34.541077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078915, 43.187473, 34.709965>,  <34.278336, 43.274441, 34.811298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078915, 43.187473, 34.709965>,  <33.746548, 43.042526, 34.541077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078915, 43.187473, 34.709965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421830, -0.084557, 0.902723,
		0.362821, -0.928191, 0.082598,
		0.830916, 0.362369, 0.422218,
		34.328190, 43.296185, 34.836632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960220, 42.515270, 35.173004>,  <33.746548, 43.042526, 34.541077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960220, 42.515270, 35.173004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153233, 42.862076, 35.222721>,  <34.269039, 43.070160, 35.252552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153233, 42.862076, 35.222721>,  <33.960220, 42.515270, 35.173004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153233, 42.862076, 35.222721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100456, -0.086185, 0.991202,
		0.870099, -0.490771, 0.045510,
		0.482531, 0.867015, 0.124290,
		34.297993, 43.122181, 35.260010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562164, 42.392380, 35.518246>,  <33.960220, 42.515270, 35.173004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562164, 42.392380, 35.518246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494602, 42.780220, 35.589069>,  <34.454067, 43.012924, 35.631565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494602, 42.780220, 35.589069>,  <34.562164, 42.392380, 35.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494602, 42.780220, 35.589069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035772, -0.173493, 0.984185,
		0.984984, 0.172565, -0.005381,
		-0.168902, 0.969599, 0.177061,
		34.443932, 43.071098, 35.642189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026920, 42.579632, 35.994663>,  <34.562164, 42.392380, 35.518246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026920, 42.579632, 35.994663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757774, 42.871769, 36.041737>,  <34.596287, 43.047050, 36.069981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757774, 42.871769, 36.041737>,  <35.026920, 42.579632, 35.994663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757774, 42.871769, 36.041737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066184, -0.099008, 0.992883,
		0.736797, 0.675867, 0.018282,
		-0.672867, 0.730343, 0.117681,
		34.555916, 43.090874, 36.077042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762646, 42.677490, 35.998478>,  <35.026920, 42.579632, 35.994663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762646, 42.677490, 35.998478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074074, 42.467594, 36.136158>,  <36.260933, 42.341656, 36.218765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074074, 42.467594, 36.136158>,  <35.762646, 42.677490, 35.998478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074074, 42.467594, 36.136158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596015, 0.446604, -0.667317,
		0.196445, 0.724703, 0.660465,
		0.778573, -0.524738, 0.344201,
		36.307644, 42.310173, 36.239418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288651, 43.155937, 36.212082>,  <35.762646, 42.677490, 35.998478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288651, 43.155937, 36.212082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510174, 42.828594, 36.150650>,  <36.643089, 42.632187, 36.113792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510174, 42.828594, 36.150650>,  <36.288651, 43.155937, 36.212082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510174, 42.828594, 36.150650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378196, 0.411555, -0.829210,
		0.741795, 0.401143, 0.537423,
		0.553811, -0.818356, -0.153579,
		36.676315, 42.583088, 36.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026463, 43.365395, 36.189846>,  <36.288651, 43.155937, 36.212082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026463, 43.365395, 36.189846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016151, 43.013630, 35.999699>,  <37.009964, 42.802570, 35.885612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016151, 43.013630, 35.999699>,  <37.026463, 43.365395, 36.189846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016151, 43.013630, 35.999699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505899, 0.398658, -0.764943,
		0.862207, -0.260205, 0.434617,
		-0.025779, -0.879411, -0.475364,
		37.008419, 42.749805, 35.857090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664261, 43.334282, 35.966690>,  <37.026463, 43.365395, 36.189846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664261, 43.334282, 35.966690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471729, 43.074692, 35.731010>,  <37.356209, 42.918938, 35.589603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471729, 43.074692, 35.731010>,  <37.664261, 43.334282, 35.966690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471729, 43.074692, 35.731010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597659, 0.248716, -0.762196,
		0.641190, -0.719006, 0.268153,
		-0.481330, -0.648977, -0.589195,
		37.327332, 42.879997, 35.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180843, 42.902210, 35.669624>,  <37.664261, 43.334282, 35.966690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180843, 42.902210, 35.669624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854889, 42.898304, 35.437809>,  <37.659317, 42.895962, 35.298721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854889, 42.898304, 35.437809>,  <38.180843, 42.902210, 35.669624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854889, 42.898304, 35.437809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577405, 0.073623, -0.813132,
		0.050593, -0.997239, -0.054366,
		-0.814889, -0.009747, -0.579535,
		37.610424, 42.895374, 35.263947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475079, 42.593834, 35.156506>,  <38.180843, 42.902210, 35.669624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475079, 42.593834, 35.156506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134945, 42.719017, 34.987278>,  <37.930862, 42.794125, 34.885742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134945, 42.719017, 34.987278>,  <38.475079, 42.593834, 35.156506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134945, 42.719017, 34.987278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435394, -0.033145, -0.899629,
		-0.295567, -0.949189, -0.108075,
		-0.850336, 0.312956, -0.423068,
		37.879845, 42.812904, 34.860359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255390, 42.099400, 34.639572>,  <38.475079, 42.593834, 35.156506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255390, 42.099400, 34.639572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081985, 42.444614, 34.535847>,  <37.977943, 42.651741, 34.473614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081985, 42.444614, 34.535847>,  <38.255390, 42.099400, 34.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081985, 42.444614, 34.535847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452823, -0.040165, -0.890695,
		-0.779117, -0.503544, -0.373391,
		-0.433507, 0.863035, -0.259310,
		37.951935, 42.703526, 34.458054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045364, 42.050121, 33.929169>,  <38.255390, 42.099400, 34.639572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045364, 42.050121, 33.929169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000751, 42.441078, 34.001019>,  <37.973984, 42.675652, 34.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000751, 42.441078, 34.001019>,  <38.045364, 42.050121, 33.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000751, 42.441078, 34.001019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188032, 0.198239, -0.961949,
		-0.975810, -0.073509, -0.205890,
		-0.111528, 0.977393, 0.179622,
		37.967293, 42.734295, 34.054905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477436, 42.312893, 33.428123>,  <38.045364, 42.050121, 33.929169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477436, 42.312893, 33.428123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738377, 42.590401, 33.550182>,  <37.894943, 42.756905, 33.623417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738377, 42.590401, 33.550182>,  <37.477436, 42.312893, 33.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738377, 42.590401, 33.550182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228755, 0.203604, -0.951954,
		-0.722569, 0.690814, -0.025882,
		0.652353, 0.693774, 0.305145,
		37.934082, 42.798534, 33.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380753, 42.857460, 32.993332>,  <37.477436, 42.312893, 33.428123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380753, 42.857460, 32.993332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741566, 42.938244, 33.145931>,  <37.958054, 42.986713, 33.237492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741566, 42.938244, 33.145931>,  <37.380753, 42.857460, 32.993332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741566, 42.938244, 33.145931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326991, 0.257249, -0.909340,
		-0.281792, 0.945005, 0.166009,
		0.902037, 0.201962, 0.381499,
		38.012177, 42.998833, 33.260380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678539, 43.411686, 32.649761>,  <37.380753, 42.857460, 32.993332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678539, 43.411686, 32.649761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008846, 43.303165, 32.847553>,  <38.207031, 43.238052, 32.966228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008846, 43.303165, 32.847553>,  <37.678539, 43.411686, 32.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008846, 43.303165, 32.847553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558736, 0.273792, -0.782849,
		0.077001, 0.922732, 0.377672,
		0.825763, -0.271299, 0.494481,
		38.256577, 43.221775, 32.995899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151585, 43.890530, 32.409458>,  <37.678539, 43.411686, 32.649761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151585, 43.890530, 32.409458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371052, 43.594841, 32.565666>,  <38.502731, 43.417427, 32.659393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371052, 43.594841, 32.565666>,  <38.151585, 43.890530, 32.409458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371052, 43.594841, 32.565666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658314, 0.094068, -0.746843,
		0.515349, 0.666857, 0.538254,
		0.548670, -0.739224, 0.390523,
		38.535652, 43.373074, 32.682823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800278, 44.114929, 32.355755>,  <38.151585, 43.890530, 32.409458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800278, 44.114929, 32.355755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817390, 43.715496, 32.368404>,  <38.827656, 43.475838, 32.375996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817390, 43.715496, 32.368404>,  <38.800278, 44.114929, 32.355755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817390, 43.715496, 32.368404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611658, 0.001150, -0.791121,
		0.789965, 0.053187, 0.610841,
		0.042780, -0.998584, 0.031624,
		38.830223, 43.415920, 32.377892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520267, 43.940239, 32.277283>,  <38.800278, 44.114929, 32.355755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520267, 43.940239, 32.277283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313637, 43.611389, 32.181561>,  <39.189659, 43.414082, 32.124126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313637, 43.611389, 32.181561>,  <39.520267, 43.940239, 32.277283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313637, 43.611389, 32.181561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428596, -0.006320, -0.903474,
		0.741254, -0.569276, 0.355623,
		-0.516574, -0.822122, -0.239304,
		39.158665, 43.364754, 32.109768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005173, 43.481812, 31.893648>,  <39.520267, 43.940239, 32.277283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005173, 43.481812, 31.893648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650661, 43.351032, 31.762432>,  <39.437954, 43.272564, 31.683702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650661, 43.351032, 31.762432>,  <40.005173, 43.481812, 31.893648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650661, 43.351032, 31.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337344, 0.029605, -0.940916,
		0.317343, -0.944578, 0.084056,
		-0.886280, -0.326949, -0.328042,
		39.384777, 43.252949, 31.664019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090881, 42.894897, 31.438385>,  <40.005173, 43.481812, 31.893648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090881, 42.894897, 31.438385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723259, 43.002865, 31.323507>,  <39.502686, 43.067646, 31.254581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723259, 43.002865, 31.323507>,  <40.090881, 42.894897, 31.438385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723259, 43.002865, 31.323507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203673, -0.298574, -0.932401,
		-0.337425, -0.915421, 0.219430,
		-0.919055, 0.269923, -0.287193,
		39.447540, 43.083839, 31.237350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814701, 42.311569, 30.996138>,  <40.090881, 42.894897, 31.438385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814701, 42.311569, 30.996138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575932, 42.621246, 30.911942>,  <39.432671, 42.807053, 30.861423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575932, 42.621246, 30.911942>,  <39.814701, 42.311569, 30.996138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575932, 42.621246, 30.911942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171873, -0.132870, -0.976117,
		-0.783670, -0.618848, -0.053749,
		-0.596927, 0.774192, -0.210489,
		39.396854, 42.853504, 30.848795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347813, 42.098530, 30.451641>,  <39.814701, 42.311569, 30.996138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347813, 42.098530, 30.451641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389862, 42.496311, 30.453218>,  <39.415092, 42.734978, 30.454165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389862, 42.496311, 30.453218>,  <39.347813, 42.098530, 30.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389862, 42.496311, 30.453218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256208, -0.023251, -0.966342,
		-0.960888, 0.102600, -0.257230,
		0.105127, 0.994451, 0.003946,
		39.421402, 42.794647, 30.454403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023438, 42.321774, 29.840672>,  <39.347813, 42.098530, 30.451641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023438, 42.321774, 29.840672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262932, 42.626465, 29.939695>,  <39.406628, 42.809280, 29.999109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262932, 42.626465, 29.939695>,  <39.023438, 42.321774, 29.840672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262932, 42.626465, 29.939695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174582, 0.177538, -0.968505,
		-0.781688, 0.623099, -0.026686,
		0.598736, 0.761727, 0.247561,
		39.442554, 42.854984, 30.013964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882339, 42.855202, 29.413197>,  <39.023438, 42.321774, 29.840672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882339, 42.855202, 29.413197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246243, 42.976856, 29.526218>,  <39.464584, 43.049850, 29.594030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246243, 42.976856, 29.526218>,  <38.882339, 42.855202, 29.413197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246243, 42.976856, 29.526218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183868, 0.315022, -0.931103,
		-0.372194, 0.899033, 0.230674,
		0.909760, 0.304138, 0.282553,
		39.519169, 43.068096, 29.610985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935108, 43.524540, 29.161320>,  <38.882339, 42.855202, 29.413197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935108, 43.524540, 29.161320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313637, 43.409649, 29.220625>,  <39.540752, 43.340714, 29.256208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313637, 43.409649, 29.220625>,  <38.935108, 43.524540, 29.161320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313637, 43.409649, 29.220625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229272, 0.273121, -0.934259,
		0.227855, 0.918097, 0.324313,
		0.946317, -0.287232, 0.148262,
		39.597530, 43.323479, 29.265104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438560, 44.113110, 29.097143>,  <38.935108, 43.524540, 29.161320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438560, 44.113110, 29.097143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590740, 43.752342, 29.015358>,  <39.682049, 43.535881, 28.966288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590740, 43.752342, 29.015358>,  <39.438560, 44.113110, 29.097143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590740, 43.752342, 29.015358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, 0.282646, -0.945454,
		0.910511, 0.326586, 0.253597,
		0.380450, -0.901916, -0.204462,
		39.704876, 43.481766, 28.954020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932465, 44.294918, 28.594326>,  <39.438560, 44.113110, 29.097143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932465, 44.294918, 28.594326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915417, 43.897182, 28.555378>,  <39.905190, 43.658543, 28.532009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915417, 43.897182, 28.555378>,  <39.932465, 44.294918, 28.594326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915417, 43.897182, 28.555378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084652, 0.093514, -0.992013,
		0.995499, -0.050522, 0.080187,
		-0.042620, -0.994335, -0.097370,
		39.902630, 43.598881, 28.526167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410595, 44.181324, 28.066477>,  <39.932465, 44.294918, 28.594326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410595, 44.181324, 28.066477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188690, 43.849640, 28.093761>,  <40.055550, 43.650631, 28.110132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188690, 43.849640, 28.093761>,  <40.410595, 44.181324, 28.066477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188690, 43.849640, 28.093761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056413, -0.044307, -0.997424,
		0.830097, -0.557178, -0.022199,
		-0.554759, -0.829210, 0.068211,
		40.022263, 43.600876, 28.114225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787491, 43.625587, 27.677023>,  <40.410595, 44.181324, 28.066477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787491, 43.625587, 27.677023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401901, 43.521027, 27.696703>,  <40.170547, 43.458290, 27.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401901, 43.521027, 27.696703>,  <40.787491, 43.625587, 27.677023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401901, 43.521027, 27.696703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017764, -0.121287, -0.992458,
		0.265398, -0.957579, 0.112274,
		-0.963975, -0.261402, 0.049199,
		40.112709, 43.442608, 27.711462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673466, 42.960979, 27.287271>,  <40.787491, 43.625587, 27.677023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673466, 42.960979, 27.287271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304214, 43.114357, 27.298552>,  <40.082664, 43.206383, 27.305319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304214, 43.114357, 27.298552>,  <40.673466, 42.960979, 27.287271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304214, 43.114357, 27.298552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141590, -0.270853, -0.952151,
		-0.357462, -0.882953, 0.304325,
		-0.923132, 0.383447, 0.028198,
		40.027275, 43.229389, 27.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177868, 42.402775, 26.944023>,  <40.673466, 42.960979, 27.287271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177868, 42.402775, 26.944023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986221, 42.753380, 26.925379>,  <39.871235, 42.963741, 26.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986221, 42.753380, 26.925379>,  <40.177868, 42.402775, 26.944023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986221, 42.753380, 26.925379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028406, -0.068556, -0.997243,
		-0.877292, -0.476470, 0.057745,
		-0.479115, 0.876514, -0.046609,
		39.842487, 43.016335, 26.911396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767441, 42.343376, 26.381168>,  <40.177868, 42.402775, 26.944023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767441, 42.343376, 26.381168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713295, 42.730606, 26.465553>,  <39.680805, 42.962944, 26.516184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713295, 42.730606, 26.465553>,  <39.767441, 42.343376, 26.381168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713295, 42.730606, 26.465553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108677, 0.197128, -0.974336,
		-0.984817, -0.154819, 0.078523,
		-0.135367, 0.968076, 0.210961,
		39.672684, 43.021030, 26.528841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150379, 42.574707, 25.934015>,  <39.767441, 42.343376, 26.381168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150379, 42.574707, 25.934015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371761, 42.892197, 26.034964>,  <39.504593, 43.082691, 26.095533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371761, 42.892197, 26.034964>,  <39.150379, 42.574707, 25.934015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371761, 42.892197, 26.034964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203065, 0.165272, -0.965116,
		-0.807743, 0.585399, -0.069706,
		0.553458, 0.793721, 0.252372,
		39.537800, 43.130314, 26.110676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790730, 43.128361, 25.582170>,  <39.150379, 42.574707, 25.934015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790730, 43.128361, 25.582170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171314, 43.216644, 25.667974>,  <39.399666, 43.269615, 25.719458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171314, 43.216644, 25.667974>,  <38.790730, 43.128361, 25.582170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171314, 43.216644, 25.667974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125337, 0.358701, -0.924999,
		-0.281104, 0.906984, 0.313625,
		0.951457, 0.220712, 0.214511,
		39.456753, 43.282860, 25.732328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882668, 43.811657, 25.281311>,  <38.790730, 43.128361, 25.582170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882668, 43.811657, 25.281311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244869, 43.647533, 25.324604>,  <39.462189, 43.549061, 25.350580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244869, 43.647533, 25.324604>,  <38.882668, 43.811657, 25.281311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244869, 43.647533, 25.324604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167668, 0.111649, -0.979501,
		0.389813, 0.905087, 0.169894,
		0.905502, -0.410308, 0.108232,
		39.516521, 43.524441, 25.357073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327427, 44.253601, 24.961691>,  <38.882668, 43.811657, 25.281311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327427, 44.253601, 24.961691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496674, 43.891174, 24.960060>,  <39.598221, 43.673717, 24.959082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496674, 43.891174, 24.960060>,  <39.327427, 44.253601, 24.961691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496674, 43.891174, 24.960060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126344, 0.063452, -0.989955,
		0.897225, 0.418348, 0.141324,
		0.423113, -0.906068, -0.004075,
		39.623608, 43.619354, 24.958838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715092, 44.283333, 24.356529>,  <39.327427, 44.253601, 24.961691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715092, 44.283333, 24.356529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769684, 43.897377, 24.446291>,  <39.802437, 43.665802, 24.500149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769684, 43.897377, 24.446291>,  <39.715092, 44.283333, 24.356529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769684, 43.897377, 24.446291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325853, -0.170194, -0.929975,
		0.935518, 0.200042, 0.291185,
		0.136476, -0.964892, 0.224404,
		39.810627, 43.607910, 24.513613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392437, 44.011402, 24.156569>,  <39.715092, 44.283333, 24.356529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392437, 44.011402, 24.156569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168583, 43.680641, 24.178593>,  <40.034271, 43.482185, 24.191807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168583, 43.680641, 24.178593>,  <40.392437, 44.011402, 24.156569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168583, 43.680641, 24.178593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309598, -0.270236, -0.911659,
		0.768735, -0.493153, 0.407243,
		-0.559639, -0.826905, 0.055060,
		40.000690, 43.432571, 24.195110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772770, 43.438652, 23.799379>,  <40.392437, 44.011402, 24.156569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772770, 43.438652, 23.799379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392933, 43.313354, 23.794546>,  <40.165031, 43.238174, 23.791645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392933, 43.313354, 23.794546>,  <40.772770, 43.438652, 23.799379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392933, 43.313354, 23.794546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146247, -0.408585, -0.900927,
		0.277275, -0.857283, 0.433802,
		-0.949595, -0.313247, -0.012085,
		40.108055, 43.219379, 23.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813896, 42.690975, 23.655821>,  <40.772770, 43.438652, 23.799379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813896, 42.690975, 23.655821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450611, 42.831074, 23.564184>,  <40.232639, 42.915134, 23.509203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450611, 42.831074, 23.564184>,  <40.813896, 42.690975, 23.655821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450611, 42.831074, 23.564184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084398, -0.382867, -0.919940,
		-0.409927, -0.854830, 0.318161,
		-0.908205, 0.350256, -0.229093,
		40.178150, 42.936150, 23.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458412, 42.141026, 23.318842>,  <40.813896, 42.690975, 23.655821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458412, 42.141026, 23.318842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242233, 42.459229, 23.209238>,  <40.112526, 42.650150, 23.143475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242233, 42.459229, 23.209238>,  <40.458412, 42.141026, 23.318842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242233, 42.459229, 23.209238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005509, -0.322318, -0.946616,
		-0.841357, -0.513109, 0.169815,
		-0.540451, 0.795507, -0.274011,
		40.080097, 42.697880, 23.127035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390980, 41.505497, 23.116322>,  <40.458412, 42.141026, 23.318842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390980, 41.505497, 23.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228600, 41.272770, 22.834414>,  <40.131172, 41.133133, 22.665270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228600, 41.272770, 22.834414>,  <40.390980, 41.505497, 23.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228600, 41.272770, 22.834414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030014, -0.762265, 0.646569,
		-0.913404, 0.283625, 0.291976,
		-0.405946, -0.581815, -0.704769,
		40.106815, 41.098225, 22.622982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672791, 41.262566, 23.167089>,  <40.390980, 41.505497, 23.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672791, 41.262566, 23.167089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948105, 41.007145, 23.029392>,  <40.113297, 40.853893, 22.946774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948105, 41.007145, 23.029392>,  <39.672791, 41.262566, 23.167089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948105, 41.007145, 23.029392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083781, -0.401387, 0.912069,
		-0.720582, -0.656609, -0.222772,
		0.688290, -0.638556, -0.344243,
		40.154591, 40.815578, 22.926119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464748, 40.609020, 23.285139>,  <39.672791, 41.262566, 23.167089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464748, 40.609020, 23.285139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863144, 40.591805, 23.253784>,  <40.102180, 40.581474, 23.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863144, 40.591805, 23.253784>,  <39.464748, 40.609020, 23.285139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863144, 40.591805, 23.253784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057396, -0.364553, 0.929412,
		-0.068574, -0.930188, -0.360622,
		0.995994, -0.043035, -0.078388,
		40.161942, 40.578896, 23.230268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713799, 39.919102, 23.465479>,  <39.464748, 40.609020, 23.285139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713799, 39.919102, 23.465479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021557, 40.172871, 23.495262>,  <40.206211, 40.325130, 23.513132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021557, 40.172871, 23.495262>,  <39.713799, 39.919102, 23.465479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021557, 40.172871, 23.495262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108889, -0.245120, 0.963358,
		0.629426, -0.733094, -0.257676,
		0.769394, 0.634421, 0.074459,
		40.252377, 40.363197, 23.517599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377659, 39.632149, 23.693930>,  <39.713799, 39.919102, 23.465479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377659, 39.632149, 23.693930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425724, 40.013500, 23.804659>,  <40.454563, 40.242310, 23.871096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425724, 40.013500, 23.804659>,  <40.377659, 39.632149, 23.693930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425724, 40.013500, 23.804659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112330, -0.290108, 0.950378,
		0.986379, -0.083103, -0.141953,
		0.120161, 0.953379, 0.276821,
		40.461773, 40.299515, 23.887705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727345, 39.566547, 24.350132>,  <40.377659, 39.632149, 23.693930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727345, 39.566547, 24.350132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656723, 39.960243, 24.354088>,  <40.614349, 40.196461, 24.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656723, 39.960243, 24.354088>,  <40.727345, 39.566547, 24.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656723, 39.960243, 24.354088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007320, -0.011360, 0.999909,
		0.984264, 0.176463, 0.009210,
		-0.176551, 0.984242, 0.009889,
		40.603756, 40.255516, 24.357054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068989, 39.746910, 24.886530>,  <40.727345, 39.566547, 24.350132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068989, 39.746910, 24.886530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820770, 40.058029, 24.846624>,  <40.671841, 40.244701, 24.822681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820770, 40.058029, 24.846624>,  <41.068989, 39.746910, 24.886530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820770, 40.058029, 24.846624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153147, 0.004568, 0.988193,
		0.769071, 0.628497, 0.116283,
		-0.620545, 0.777798, -0.099766,
		40.634605, 40.291370, 24.816694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299911, 40.170300, 25.399805>,  <41.068989, 39.746910, 24.886530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299911, 40.170300, 25.399805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916992, 40.248085, 25.314234>,  <40.687241, 40.294758, 25.262892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916992, 40.248085, 25.314234>,  <41.299911, 40.170300, 25.399805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916992, 40.248085, 25.314234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215683, 0.012354, 0.976385,
		0.192514, 0.980832, 0.030116,
		-0.957298, 0.194463, -0.213927,
		40.629803, 40.306423, 25.250055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101135, 40.858158, 25.664156>,  <41.299911, 40.170300, 25.399805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101135, 40.858158, 25.664156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766781, 40.644577, 25.613266>,  <40.566170, 40.516426, 25.582733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766781, 40.644577, 25.613266>,  <41.101135, 40.858158, 25.664156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766781, 40.644577, 25.613266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192821, 0.068631, 0.978831,
		-0.513920, 0.842723, -0.160326,
		-0.835887, -0.533955, -0.127224,
		40.516014, 40.484390, 25.575098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665096, 41.142811, 26.031937>,  <41.101135, 40.858158, 25.664156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665096, 41.142811, 26.031937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470726, 40.798866, 25.969315>,  <40.354103, 40.592499, 25.931742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470726, 40.798866, 25.969315>,  <40.665096, 41.142811, 26.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470726, 40.798866, 25.969315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317402, 0.006717, 0.948267,
		-0.814331, 0.510476, -0.276187,
		-0.485923, -0.859866, -0.156556,
		40.324947, 40.540905, 25.922348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074970, 41.225674, 26.412563>,  <40.665096, 41.142811, 26.031937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074970, 41.225674, 26.412563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116665, 40.830013, 26.371164>,  <40.141682, 40.592617, 26.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116665, 40.830013, 26.371164>,  <40.074970, 41.225674, 26.412563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116665, 40.830013, 26.371164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154005, -0.118863, 0.980894,
		-0.982556, -0.086310, -0.164724,
		0.104241, -0.989152, -0.103497,
		40.147938, 40.533268, 26.340115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699265, 40.943348, 26.952650>,  <40.074970, 41.225674, 26.412563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699265, 40.943348, 26.952650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916824, 40.627296, 26.839598>,  <40.047359, 40.437668, 26.771767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916824, 40.627296, 26.839598>,  <39.699265, 40.943348, 26.952650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916824, 40.627296, 26.839598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070305, -0.378527, 0.922916,
		-0.836202, -0.482100, -0.261428,
		0.543896, -0.790125, -0.282631,
		40.079994, 40.390259, 26.754808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271877, 40.352932, 27.124073>,  <39.699265, 40.943348, 26.952650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271877, 40.352932, 27.124073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652275, 40.236076, 27.083544>,  <39.880512, 40.165962, 27.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652275, 40.236076, 27.083544>,  <39.271877, 40.352932, 27.124073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652275, 40.236076, 27.083544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007228, -0.348592, 0.937247,
		-0.309117, -0.890586, -0.333621,
		0.950997, -0.292130, -0.101319,
		39.937572, 40.148438, 27.053148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323780, 39.508224, 27.304092>,  <39.271877, 40.352932, 27.124073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323780, 39.508224, 27.304092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655201, 39.721394, 27.372787>,  <39.854053, 39.849297, 27.414005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655201, 39.721394, 27.372787>,  <39.323780, 39.508224, 27.304092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655201, 39.721394, 27.372787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094825, -0.168734, 0.981090,
		0.551826, -0.829168, -0.089270,
		0.828551, 0.532926, 0.171737,
		39.903767, 39.881271, 27.424309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631283, 39.123650, 27.882462>,  <39.323780, 39.508224, 27.304092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631283, 39.123650, 27.882462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834366, 39.467697, 27.862747>,  <39.956215, 39.674126, 27.850918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834366, 39.467697, 27.862747>,  <39.631283, 39.123650, 27.882462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834366, 39.467697, 27.862747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142439, -0.027382, 0.989425,
		0.849673, -0.509359, -0.136417,
		0.507708, 0.860118, -0.049287,
		39.986679, 39.725731, 27.847961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282394, 39.040051, 28.367971>,  <39.631283, 39.123650, 27.882462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282394, 39.040051, 28.367971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205627, 39.430180, 28.324312>,  <40.159569, 39.664257, 28.298117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205627, 39.430180, 28.324312>,  <40.282394, 39.040051, 28.367971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205627, 39.430180, 28.324312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064094, 0.123434, 0.990281,
		0.979317, 0.183053, -0.086201,
		-0.191914, 0.975323, -0.109148,
		40.148052, 39.722778, 28.291567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665455, 39.309380, 28.932280>,  <40.282394, 39.040051, 28.367971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665455, 39.309380, 28.932280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414455, 39.603436, 28.829662>,  <40.263855, 39.779869, 28.768091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414455, 39.603436, 28.829662>,  <40.665455, 39.309380, 28.932280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414455, 39.603436, 28.829662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019500, 0.344220, 0.938687,
		0.778375, 0.584020, -0.230332,
		-0.627497, 0.735141, -0.256544,
		40.226208, 39.823978, 28.752699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969055, 39.971485, 29.208323>,  <40.665455, 39.309380, 28.932280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969055, 39.971485, 29.208323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570969, 40.002144, 29.184088>,  <40.332115, 40.020538, 29.169546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570969, 40.002144, 29.184088>,  <40.969055, 39.971485, 29.208323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570969, 40.002144, 29.184088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009353, 0.542531, 0.839984,
		0.097251, 0.836532, -0.539219,
		-0.995216, 0.076646, -0.060586,
		40.272404, 40.025139, 29.165913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732151, 40.740543, 29.283453>,  <40.969055, 39.971485, 29.208323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732151, 40.740543, 29.283453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404499, 40.531857, 29.378809>,  <40.207909, 40.406643, 29.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404499, 40.531857, 29.378809>,  <40.732151, 40.740543, 29.283453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404499, 40.531857, 29.378809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154698, 0.601139, 0.784029,
		-0.552348, 0.605346, -0.573122,
		-0.819134, -0.521717, 0.238392,
		40.158760, 40.375340, 29.450327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347919, 41.217575, 29.633886>,  <40.732151, 40.740543, 29.283453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347919, 41.217575, 29.633886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151642, 40.875290, 29.699579>,  <40.033875, 40.669918, 29.738995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151642, 40.875290, 29.699579>,  <40.347919, 41.217575, 29.633886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151642, 40.875290, 29.699579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276764, 0.331792, 0.901840,
		-0.826206, 0.397078, -0.399640,
		-0.490698, -0.855712, 0.164231,
		40.004433, 40.618576, 29.748848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772999, 41.361023, 29.959106>,  <40.347919, 41.217575, 29.633886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772999, 41.361023, 29.959106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784901, 40.968571, 30.035530>,  <39.792042, 40.733101, 30.081385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784901, 40.968571, 30.035530>,  <39.772999, 41.361023, 29.959106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784901, 40.968571, 30.035530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218713, 0.180120, 0.959021,
		-0.975335, -0.070322, -0.209226,
		0.029755, -0.981128, 0.191058,
		39.793827, 40.674232, 30.092848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112125, 41.179138, 30.265207>,  <39.772999, 41.361023, 29.959106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112125, 41.179138, 30.265207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392570, 40.922924, 30.390526>,  <39.560837, 40.769196, 30.465717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392570, 40.922924, 30.390526>,  <39.112125, 41.179138, 30.265207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392570, 40.922924, 30.390526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199672, 0.245431, 0.948628,
		-0.684523, -0.727652, 0.044178,
		0.701113, -0.640536, 0.313295,
		39.602905, 40.730762, 30.484514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859436, 41.141254, 30.884113>,  <39.112125, 41.179138, 30.265207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859436, 41.141254, 30.884113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217682, 40.963905, 30.898479>,  <39.432629, 40.857494, 30.907099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217682, 40.963905, 30.898479>,  <38.859436, 41.141254, 30.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217682, 40.963905, 30.898479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019645, 0.041237, 0.998956,
		-0.444392, -0.895388, 0.028222,
		0.895617, -0.443373, 0.035915,
		39.486366, 40.830894, 30.909254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805080, 40.599609, 31.535603>,  <38.859436, 41.141254, 30.884113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805080, 40.599609, 31.535603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194050, 40.639378, 31.451218>,  <39.427433, 40.663239, 31.400587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194050, 40.639378, 31.451218>,  <38.805080, 40.599609, 31.535603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194050, 40.639378, 31.451218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208396, 0.035640, 0.977395,
		0.104696, -0.994407, 0.013937,
		0.972425, 0.099424, -0.210962,
		39.485779, 40.669205, 31.387930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190903, 40.145958, 31.863558>,  <38.805080, 40.599609, 31.535603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190903, 40.145958, 31.863558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444122, 40.447903, 31.794931>,  <39.596054, 40.629070, 31.753756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444122, 40.447903, 31.794931>,  <39.190903, 40.145958, 31.863558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444122, 40.447903, 31.794931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283787, -0.020102, 0.958677,
		0.720218, -0.655578, -0.226945,
		0.633049, 0.754860, -0.171567,
		39.634037, 40.674362, 31.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832993, 39.930462, 32.067833>,  <39.190903, 40.145958, 31.863558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832993, 39.930462, 32.067833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854031, 40.329872, 32.073174>,  <39.866653, 40.569519, 32.076378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854031, 40.329872, 32.073174>,  <39.832993, 39.930462, 32.067833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854031, 40.329872, 32.073174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260324, -0.026621, 0.965154,
		0.964088, -0.047290, -0.261340,
		0.052599, 0.998526, 0.013354,
		39.869812, 40.629429, 32.077179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363686, 40.026554, 32.586277>,  <39.832993, 39.930462, 32.067833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363686, 40.026554, 32.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208984, 40.391621, 32.533436>,  <40.116161, 40.610661, 32.501732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208984, 40.391621, 32.533436>,  <40.363686, 40.026554, 32.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208984, 40.391621, 32.533436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097303, 0.182842, 0.978315,
		0.917034, 0.365516, -0.159521,
		-0.386757, 0.912671, -0.132106,
		40.092957, 40.665421, 32.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925556, 40.460602, 32.769672>,  <40.363686, 40.026554, 32.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925556, 40.460602, 32.769672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587055, 40.670368, 32.807281>,  <40.383953, 40.796230, 32.829845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587055, 40.670368, 32.807281>,  <40.925556, 40.460602, 32.769672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587055, 40.670368, 32.807281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246272, 0.228541, 0.941870,
		0.472447, 0.820215, -0.322553,
		-0.846253, 0.524420, 0.094023,
		40.333179, 40.827694, 32.835487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072811, 41.095791, 33.004128>,  <40.925556, 40.460602, 32.769672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072811, 41.095791, 33.004128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695660, 41.038242, 33.124310>,  <40.469368, 41.003716, 33.196419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695660, 41.038242, 33.124310>,  <41.072811, 41.095791, 33.004128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695660, 41.038242, 33.124310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279301, 0.150156, 0.948390,
		-0.181559, 0.978139, -0.101396,
		-0.942883, -0.143869, 0.300457,
		40.412796, 40.995083, 33.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095562, 41.431744, 33.640667>,  <41.072811, 41.095791, 33.004128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095562, 41.431744, 33.640667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730900, 41.269371, 33.666313>,  <40.512104, 41.171947, 33.681702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730900, 41.269371, 33.666313>,  <41.095562, 41.431744, 33.640667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730900, 41.269371, 33.666313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020208, 0.111543, 0.993554,
		-0.410469, 0.907070, -0.093485,
		-0.911651, -0.405934, 0.064115,
		40.457405, 41.147591, 33.685547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808971, 41.775269, 34.191181>,  <41.095562, 41.431744, 33.640667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808971, 41.775269, 34.191181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583488, 41.444889, 34.188839>,  <40.448200, 41.246662, 34.187435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583488, 41.444889, 34.188839>,  <40.808971, 41.775269, 34.191181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583488, 41.444889, 34.188839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007321, -0.002092, 0.999971,
		-0.825941, 0.563735, -0.004867,
		-0.563709, -0.825953, -0.005855,
		40.414375, 41.197102, 34.187084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105461, 41.889454, 34.464275>,  <40.808971, 41.775269, 34.191181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105461, 41.889454, 34.464275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238792, 41.515896, 34.516014>,  <40.318790, 41.291759, 34.547058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238792, 41.515896, 34.516014>,  <40.105461, 41.889454, 34.464275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238792, 41.515896, 34.516014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017232, 0.143206, 0.989543,
		-0.942652, -0.327617, 0.063828,
		0.333332, -0.933894, 0.129348,
		40.338791, 41.235729, 34.554817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805836, 41.650925, 35.068932>,  <40.105461, 41.889454, 34.464275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805836, 41.650925, 35.068932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077950, 41.363449, 35.011375>,  <40.241219, 41.190964, 34.976841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077950, 41.363449, 35.011375>,  <39.805836, 41.650925, 35.068932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077950, 41.363449, 35.011375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163939, -0.042141, 0.985570,
		-0.714381, -0.694054, 0.089154,
		0.680282, -0.718688, -0.143888,
		40.282036, 41.147842, 34.968208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640659, 41.115501, 35.641281>,  <39.805836, 41.650925, 35.068932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640659, 41.115501, 35.641281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017738, 41.035488, 35.534466>,  <40.243984, 40.987480, 35.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017738, 41.035488, 35.534466>,  <39.640659, 41.115501, 35.641281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017738, 41.035488, 35.534466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228468, -0.196264, 0.953563,
		-0.243159, -0.959930, -0.139315,
		0.942696, -0.200039, -0.267037,
		40.300549, 40.975479, 35.454353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796459, 40.516548, 36.003170>,  <39.640659, 41.115501, 35.641281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796459, 40.516548, 36.003170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150475, 40.662525, 35.887562>,  <40.362885, 40.750111, 35.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150475, 40.662525, 35.887562>,  <39.796459, 40.516548, 36.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150475, 40.662525, 35.887562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435432, -0.429370, 0.791227,
		0.164656, -0.826111, -0.538915,
		0.885035, 0.364941, -0.289017,
		40.415985, 40.772007, 35.800858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152237, 40.008057, 36.086956>,  <39.796459, 40.516548, 36.003170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152237, 40.008057, 36.086956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395504, 40.325550, 36.082474>,  <40.541466, 40.516045, 36.079784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395504, 40.325550, 36.082474>,  <40.152237, 40.008057, 36.086956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395504, 40.325550, 36.082474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418899, -0.308917, 0.853870,
		0.674281, -0.523989, -0.520366,
		0.608168, 0.793729, -0.011201,
		40.577953, 40.563667, 36.079113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887718, 39.813404, 36.104584>,  <40.152237, 40.008057, 36.086956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887718, 39.813404, 36.104584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866592, 40.184425, 36.252560>,  <40.853916, 40.407040, 36.341343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866592, 40.184425, 36.252560>,  <40.887718, 39.813404, 36.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866592, 40.184425, 36.252560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175261, -0.356093, 0.917868,
		0.983104, 0.113317, -0.143756,
		-0.052819, 0.927554, 0.369937,
		40.850746, 40.462692, 36.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428905, 39.849422, 36.581558>,  <40.887718, 39.813404, 36.104584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428905, 39.849422, 36.581558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206932, 40.165989, 36.684093>,  <41.073750, 40.355930, 36.745613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206932, 40.165989, 36.684093>,  <41.428905, 39.849422, 36.581558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206932, 40.165989, 36.684093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179279, -0.187126, 0.965838,
		0.812348, 0.581930, -0.038043,
		-0.554931, 0.791417, 0.256339,
		41.040451, 40.403416, 36.760994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821182, 40.360630, 37.074978>,  <41.428905, 39.849422, 36.581558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821182, 40.360630, 37.074978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436939, 40.455669, 37.132652>,  <41.206394, 40.512691, 37.167255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436939, 40.455669, 37.132652>,  <41.821182, 40.360630, 37.074978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436939, 40.455669, 37.132652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100197, -0.187830, 0.977077,
		0.259232, 0.953031, 0.156624,
		-0.960604, 0.237596, 0.144182,
		41.148758, 40.526947, 37.175907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751358, 40.558868, 37.828209>,  <41.821182, 40.360630, 37.074978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751358, 40.558868, 37.828209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369812, 40.522091, 37.713882>,  <41.140884, 40.500027, 37.645287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369812, 40.522091, 37.713882>,  <41.751358, 40.558868, 37.828209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369812, 40.522091, 37.713882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266276, -0.180784, 0.946791,
		-0.138721, 0.979216, 0.147962,
		-0.953862, -0.091941, -0.285820,
		41.083652, 40.494507, 37.628136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310959, 40.939800, 38.333813>,  <41.751358, 40.558868, 37.828209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310959, 40.939800, 38.333813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069847, 40.672955, 38.158714>,  <40.925179, 40.512848, 38.053654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069847, 40.672955, 38.158714>,  <41.310959, 40.939800, 38.333813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069847, 40.672955, 38.158714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339502, -0.282044, 0.897323,
		-0.722077, 0.689504, -0.056475,
		-0.602780, -0.667109, -0.437746,
		40.889011, 40.472820, 38.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616627, 41.018562, 38.573509>,  <41.310959, 40.939800, 38.333813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616627, 41.018562, 38.573509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640247, 40.633846, 38.466568>,  <40.654419, 40.403019, 38.402401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640247, 40.633846, 38.466568>,  <40.616627, 41.018562, 38.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640247, 40.633846, 38.466568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255187, -0.273467, 0.927413,
		-0.965087, 0.013464, -0.261583,
		0.059047, -0.961787, -0.267355,
		40.657963, 40.345310, 38.386360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043148, 40.837585, 38.843166>,  <40.616627, 41.018562, 38.573509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043148, 40.837585, 38.843166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261757, 40.508438, 38.780937>,  <40.392921, 40.310951, 38.743599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261757, 40.508438, 38.780937>,  <40.043148, 40.837585, 38.843166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261757, 40.508438, 38.780937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237451, -0.330415, 0.913478,
		-0.803073, -0.462298, -0.375971,
		0.546526, -0.822865, -0.155574,
		40.425716, 40.261578, 38.734264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636223, 40.288280, 38.960144>,  <40.043148, 40.837585, 38.843166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636223, 40.288280, 38.960144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013008, 40.169945, 39.023628>,  <40.239079, 40.098942, 39.061718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013008, 40.169945, 39.023628>,  <39.636223, 40.288280, 38.960144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013008, 40.169945, 39.023628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241580, -0.269010, 0.932348,
		-0.233117, -0.916581, -0.324863,
		0.941963, -0.295826, 0.158717,
		40.295597, 40.081192, 39.071243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528305, 39.775379, 39.458603>,  <39.636223, 40.288280, 38.960144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528305, 39.775379, 39.458603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927700, 39.763103, 39.476856>,  <40.167336, 39.755737, 39.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927700, 39.763103, 39.476856>,  <39.528305, 39.775379, 39.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927700, 39.763103, 39.476856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053294, -0.335377, 0.940575,
		-0.013564, -0.941584, -0.336505,
		0.998487, -0.030692, 0.045631,
		40.227245, 39.753895, 39.490547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819920, 39.132401, 39.664268>,  <39.528305, 39.775379, 39.458603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819920, 39.132401, 39.664268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062832, 39.427517, 39.782162>,  <40.208580, 39.604588, 39.852898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062832, 39.427517, 39.782162>,  <39.819920, 39.132401, 39.664268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062832, 39.427517, 39.782162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080425, -0.311985, 0.946677,
		0.790406, -0.598603, -0.130125,
		0.607281, 0.737794, 0.294738,
		40.245018, 39.648853, 39.870583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041481, 38.944996, 40.263721>,  <39.819920, 39.132401, 39.664268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041481, 38.944996, 40.263721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180550, 39.319458, 40.284634>,  <40.263992, 39.544136, 40.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180550, 39.319458, 40.284634>,  <40.041481, 38.944996, 40.263721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180550, 39.319458, 40.284634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015065, -0.050177, 0.998627,
		0.937495, -0.347982, -0.003342,
		0.347672, 0.936158, 0.052283,
		40.284851, 39.600304, 40.300320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551289, 38.974846, 40.696110>,  <40.041481, 38.944996, 40.263721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551289, 38.974846, 40.696110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378693, 39.335453, 40.709213>,  <40.275135, 39.551819, 40.717075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378693, 39.335453, 40.709213>,  <40.551289, 38.974846, 40.696110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378693, 39.335453, 40.709213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072556, -0.070873, 0.994843,
		0.899193, 0.426892, 0.095992,
		-0.431494, 0.901521, 0.032755,
		40.249245, 39.605911, 40.719040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877701, 39.234966, 41.211090>,  <40.551289, 38.974846, 40.696110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877701, 39.234966, 41.211090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551937, 39.467068, 41.213539>,  <40.356480, 39.606327, 41.215008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551937, 39.467068, 41.213539>,  <40.877701, 39.234966, 41.211090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551937, 39.467068, 41.213539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103221, 0.134473, 0.985526,
		0.571032, 0.803257, -0.169410,
		-0.814412, 0.580254, 0.006124,
		40.307613, 39.641144, 41.215378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907059, 39.895611, 41.672516>,  <40.877701, 39.234966, 41.211090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907059, 39.895611, 41.672516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532455, 39.761692, 41.630829>,  <40.307693, 39.681339, 41.605816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532455, 39.761692, 41.630829>,  <40.907059, 39.895611, 41.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532455, 39.761692, 41.630829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139737, 0.083747, 0.986641,
		-0.321599, 0.938561, -0.125214,
		-0.936508, -0.334799, -0.104219,
		40.251503, 39.661251, 41.599564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417377, 40.323441, 41.917255>,  <40.907059, 39.895611, 41.672516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417377, 40.323441, 41.917255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216946, 39.980530, 41.964569>,  <40.096687, 39.774784, 41.992958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216946, 39.980530, 41.964569>,  <40.417377, 40.323441, 41.917255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216946, 39.980530, 41.964569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401221, 0.351239, 0.845963,
		-0.766774, 0.376434, -0.519957,
		-0.501079, -0.857280, 0.118288,
		40.066624, 39.723347, 42.000057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620750, 40.464054, 42.154884>,  <40.417377, 40.323441, 41.917255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620750, 40.464054, 42.154884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793983, 40.117249, 42.253452>,  <39.897923, 39.909164, 42.312592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793983, 40.117249, 42.253452>,  <39.620750, 40.464054, 42.154884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793983, 40.117249, 42.253452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165749, 0.192122, 0.967272,
		-0.885985, -0.459749, -0.060504,
		0.433079, -0.867018, 0.246421,
		39.923908, 39.857143, 42.327377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280193, 40.264175, 42.706150>,  <39.620750, 40.464054, 42.154884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280193, 40.264175, 42.706150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625767, 40.063877, 42.727581>,  <39.833111, 39.943699, 42.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625767, 40.063877, 42.727581>,  <39.280193, 40.264175, 42.706150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625767, 40.063877, 42.727581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080712, -0.032669, 0.996202,
		-0.497095, -0.864977, -0.068641,
		0.863934, -0.500747, 0.053574,
		39.884949, 39.913654, 42.743652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391235, 39.526562, 43.042469>,  <39.280193, 40.264175, 42.706150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391235, 39.526562, 43.042469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745544, 39.708687, 43.078453>,  <39.958130, 39.817963, 43.100044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745544, 39.708687, 43.078453>,  <39.391235, 39.526562, 43.042469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745544, 39.708687, 43.078453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011342, -0.215018, 0.976544,
		0.463974, -0.863979, -0.195622,
		0.885776, 0.455310, 0.089963,
		40.011276, 39.845280, 43.105442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679577, 39.588585, 43.186016>,  <39.391235, 39.526562, 43.042469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679577, 39.588585, 43.186016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750732, 39.223148, 43.332279>,  <38.793427, 39.003887, 43.420036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750732, 39.223148, 43.332279>,  <38.679577, 39.588585, 43.186016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750732, 39.223148, 43.332279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980045, -0.197973, -0.017850,
		0.088699, -0.355188, -0.930577,
		0.177889, -0.913591, 0.365660,
		38.804100, 38.949070, 43.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264774, 39.235527, 42.743893>,  <38.679577, 39.588585, 43.186016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264774, 39.235527, 42.743893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341984, 38.985291, 43.046249>,  <38.388309, 38.835148, 43.227665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341984, 38.985291, 43.046249>,  <38.264774, 39.235527, 42.743893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341984, 38.985291, 43.046249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980331, -0.155278, 0.121820,
		0.041165, -0.764541, -0.643259,
		0.193021, -0.625592, 0.755895,
		38.399891, 38.797611, 43.273018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917976, 38.494442, 42.552193>,  <38.264774, 39.235527, 42.743893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917976, 38.494442, 42.552193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953934, 38.591423, 42.938587>,  <37.975510, 38.649612, 43.170425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953934, 38.591423, 42.938587>,  <37.917976, 38.494442, 42.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953934, 38.591423, 42.938587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836844, -0.507507, 0.205253,
		0.540010, -0.826834, 0.157270,
		0.089895, 0.242450, 0.965990,
		37.980904, 38.664158, 43.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783306, 37.901424, 42.929340>,  <37.917976, 38.494442, 42.552193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783306, 37.901424, 42.929340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754967, 38.189861, 43.205025>,  <37.737965, 38.362923, 43.370434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754967, 38.189861, 43.205025>,  <37.783306, 37.901424, 42.929340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754967, 38.189861, 43.205025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900818, -0.342985, 0.266248,
		0.428377, -0.601989, 0.673871,
		-0.070850, 0.721089, 0.689210,
		37.733711, 38.406189, 43.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300304, 37.642879, 43.475769>,  <37.783306, 37.901424, 42.929340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300304, 37.642879, 43.475769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333473, 38.028690, 43.576015>,  <37.353374, 38.260178, 43.636162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333473, 38.028690, 43.576015>,  <37.300304, 37.642879, 43.475769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333473, 38.028690, 43.576015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830389, -0.072168, 0.552490,
		0.550979, -0.253921, 0.794951,
		0.082919, 0.964529, 0.250616,
		37.358349, 38.318050, 43.651199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186638, 37.585239, 44.132210>,  <37.300304, 37.642879, 43.475769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186638, 37.585239, 44.132210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118889, 37.965466, 44.028107>,  <37.078239, 38.193604, 43.965645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118889, 37.965466, 44.028107>,  <37.186638, 37.585239, 44.132210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118889, 37.965466, 44.028107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902895, -0.043795, 0.427625,
		0.395089, 0.307412, 0.865681,
		-0.169370, 0.950568, -0.260257,
		37.068077, 38.250637, 43.950031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955242, 37.828594, 44.752190>,  <37.186638, 37.585239, 44.132210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955242, 37.828594, 44.752190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830997, 38.066158, 44.455330>,  <36.756451, 38.208698, 44.277214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830997, 38.066158, 44.455330>,  <36.955242, 37.828594, 44.752190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830997, 38.066158, 44.455330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938856, -0.069655, 0.337190,
		0.148566, 0.801510, 0.579232,
		-0.310608, 0.593911, -0.742154,
		36.737816, 38.244331, 44.232685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429371, 38.291306, 44.970203>,  <36.955242, 37.828594, 44.752190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429371, 38.291306, 44.970203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338306, 38.229702, 44.585609>,  <36.283669, 38.192738, 44.354855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338306, 38.229702, 44.585609>,  <36.429371, 38.291306, 44.970203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338306, 38.229702, 44.585609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932944, -0.248316, 0.260680,
		-0.278900, 0.956358, -0.087152,
		-0.227662, -0.154012, -0.961483,
		36.270008, 38.183498, 44.297165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239594, 37.546642, 44.663113>,  <36.429371, 38.291306, 44.970203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239594, 37.546642, 44.663113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247353, 37.434502, 45.046993>,  <36.252007, 37.367218, 45.277321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247353, 37.434502, 45.046993>,  <36.239594, 37.546642, 44.663113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247353, 37.434502, 45.046993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071398, -0.957042, -0.281022,
		0.997259, 0.073971, 0.001457,
		0.019393, -0.280355, 0.959700,
		36.253170, 37.350395, 45.334904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569942, 37.666553, 44.214973>,  <36.239594, 37.546642, 44.663113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569942, 37.666553, 44.214973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511005, 38.058331, 44.159859>,  <35.475643, 38.293396, 44.126789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511005, 38.058331, 44.159859>,  <35.569942, 37.666553, 44.214973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511005, 38.058331, 44.159859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961160, 0.108912, -0.253595,
		-0.233375, -0.169799, -0.957447,
		-0.147338, 0.979442, -0.137787,
		35.466805, 38.352161, 44.118523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857616, 37.918819, 43.530331>,  <35.569942, 37.666553, 44.214973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857616, 37.918819, 43.530331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849117, 38.216671, 43.797188>,  <35.844017, 38.395382, 43.957302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849117, 38.216671, 43.797188>,  <35.857616, 37.918819, 43.530331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849117, 38.216671, 43.797188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961099, 0.199014, -0.191525,
		-0.275385, 0.637121, -0.719889,
		-0.021244, 0.744628, 0.667142,
		35.842743, 38.440060, 43.997330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147594, 38.604916, 43.213886>,  <35.857616, 37.918819, 43.530331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147594, 38.604916, 43.213886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172989, 38.618710, 43.612843>,  <36.188225, 38.626984, 43.852215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172989, 38.618710, 43.612843>,  <36.147594, 38.604916, 43.213886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172989, 38.618710, 43.612843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968843, 0.237610, -0.069887,
		-0.239399, 0.970748, -0.018320,
		0.063490, 0.034480, 0.997387,
		36.192036, 38.629055, 43.912060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379848, 39.282337, 43.221855>,  <36.147594, 38.604916, 43.213886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379848, 39.282337, 43.221855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473686, 39.030354, 43.517998>,  <36.529987, 38.879166, 43.695683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473686, 39.030354, 43.517998>,  <36.379848, 39.282337, 43.221855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473686, 39.030354, 43.517998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971929, 0.166029, -0.166701,
		-0.017906, 0.758677, 0.651221,
		0.234594, -0.629955, 0.740353,
		36.544064, 38.841366, 43.740105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893326, 39.502636, 43.485996>,  <36.379848, 39.282337, 43.221855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893326, 39.502636, 43.485996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927933, 39.136974, 43.644409>,  <36.948696, 38.917580, 43.739456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927933, 39.136974, 43.644409>,  <36.893326, 39.502636, 43.485996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927933, 39.136974, 43.644409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987332, 0.025603, -0.156588,
		0.133005, 0.404565, 0.904786,
		0.086515, -0.914151, 0.396034,
		36.953888, 38.862728, 43.763218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462189, 39.565628, 43.931583>,  <36.893326, 39.502636, 43.485996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462189, 39.565628, 43.931583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426022, 39.179882, 43.832127>,  <37.404324, 38.948433, 43.772453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426022, 39.179882, 43.832127>,  <37.462189, 39.565628, 43.931583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426022, 39.179882, 43.832127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995595, -0.081304, -0.046691,
		0.024812, -0.251767, 0.967470,
		-0.090414, -0.964367, -0.248641,
		37.398899, 38.890572, 43.757534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859409, 39.213871, 44.379322>,  <37.462189, 39.565628, 43.931583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859409, 39.213871, 44.379322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813309, 38.974865, 44.061909>,  <37.785648, 38.831463, 43.871460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813309, 38.974865, 44.061909>,  <37.859409, 39.213871, 44.379322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813309, 38.974865, 44.061909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985728, -0.167479, -0.017061,
		-0.122706, -0.784173, 0.608289,
		-0.115254, -0.597514, -0.793532,
		37.778732, 38.795612, 43.823849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175938, 38.589668, 44.428837>,  <37.859409, 39.213871, 44.379322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175938, 38.589668, 44.428837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114273, 38.506931, 44.042374>,  <38.077274, 38.457291, 43.810497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114273, 38.506931, 44.042374>,  <38.175938, 38.589668, 44.428837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114273, 38.506931, 44.042374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958180, 0.207306, -0.197269,
		0.241092, -0.956160, 0.166231,
		-0.154160, -0.206839, -0.966153,
		38.068024, 38.444881, 43.752529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653141, 38.074093, 44.365501>,  <38.175938, 38.589668, 44.428837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653141, 38.074093, 44.365501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569393, 38.280388, 44.033192>,  <38.519142, 38.404163, 43.833805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569393, 38.280388, 44.033192>,  <38.653141, 38.074093, 44.365501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569393, 38.280388, 44.033192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977326, 0.137805, -0.160759,
		0.031575, -0.845591, -0.532896,
		-0.209372, 0.515737, -0.830770,
		38.506580, 38.435108, 43.783962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100006, 37.770046, 43.817810>,  <38.653141, 38.074093, 44.365501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100006, 37.770046, 43.817810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013081, 38.141308, 43.696941>,  <38.960926, 38.364063, 43.624420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013081, 38.141308, 43.696941>,  <39.100006, 37.770046, 43.817810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013081, 38.141308, 43.696941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903120, 0.073734, -0.423010,
		-0.370339, -0.364820, -0.854258,
		-0.217310, 0.928154, -0.302170,
		38.947887, 38.419754, 43.606289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031708, 37.715912, 43.123623>,  <39.100006, 37.770046, 43.817810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031708, 37.715912, 43.123623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129578, 38.075779, 43.268250>,  <39.188301, 38.291698, 43.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129578, 38.075779, 43.268250>,  <39.031708, 37.715912, 43.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129578, 38.075779, 43.268250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915484, -0.091514, -0.391809,
		-0.319409, 0.426878, -0.846022,
		0.244678, 0.899667, 0.361569,
		39.202980, 38.345680, 43.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206078, 38.184147, 42.551113>,  <39.031708, 37.715912, 43.123623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206078, 38.184147, 42.551113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375610, 38.306690, 42.892056>,  <39.477329, 38.380215, 43.096622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375610, 38.306690, 42.892056>,  <39.206078, 38.184147, 42.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375610, 38.306690, 42.892056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894370, 0.007079, -0.447272,
		-0.143059, 0.951891, -0.270995,
		0.423836, 0.306356, 0.852355,
		39.502762, 38.398598, 43.147762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704189, 38.773342, 42.646873>,  <39.206078, 38.184147, 42.551113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704189, 38.773342, 42.646873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551941, 39.123749, 42.528404>,  <39.460594, 39.333992, 42.457321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551941, 39.123749, 42.528404>,  <39.704189, 38.773342, 42.646873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551941, 39.123749, 42.528404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147722, -0.258567, -0.954632,
		-0.912858, -0.407100, -0.030992,
		-0.380617, 0.876021, -0.296173,
		39.437756, 39.386555, 42.439552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045063, 38.962997, 42.195152>,  <39.704189, 38.773342, 42.646873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045063, 38.962997, 42.195152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331959, 39.233028, 42.126068>,  <39.504097, 39.395046, 42.084618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331959, 39.233028, 42.126068>,  <39.045063, 38.962997, 42.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331959, 39.233028, 42.126068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124574, -0.368089, -0.921408,
		-0.685596, 0.639359, -0.348107,
		0.717244, 0.675079, -0.172713,
		39.547131, 39.435551, 42.074253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032475, 39.156174, 41.487537>,  <39.045063, 38.962997, 42.195152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032475, 39.156174, 41.487537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376724, 39.356052, 41.526783>,  <39.583275, 39.475979, 41.550331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376724, 39.356052, 41.526783>,  <39.032475, 39.156174, 41.487537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376724, 39.356052, 41.526783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090037, 0.040321, -0.995122,
		-0.501211, 0.865264, -0.010289,
		0.860628, 0.499692, 0.098115,
		39.634914, 39.505959, 41.556217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751011, 39.738258, 41.199471>,  <39.032475, 39.156174, 41.487537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751011, 39.738258, 41.199471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356907, 39.705395, 41.259480>,  <38.120445, 39.685677, 41.295483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356907, 39.705395, 41.259480>,  <38.751011, 39.738258, 41.199471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356907, 39.705395, 41.259480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085196, -0.996267, 0.013945,
		0.148313, 0.026521, 0.988585,
		-0.985264, -0.082155, 0.150019,
		38.061329, 39.680748, 41.304485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239323, 40.325291, 41.064461>,  <38.751011, 39.738258, 41.199471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239323, 40.325291, 41.064461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584270, 40.133556, 41.129646>,  <39.791241, 40.018517, 41.168758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584270, 40.133556, 41.129646>,  <39.239323, 40.325291, 41.064461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584270, 40.133556, 41.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289293, 0.202382, -0.935602,
		0.415483, 0.853980, 0.313196,
		0.862371, -0.479332, 0.162965,
		39.842983, 39.989758, 41.178535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678291, 40.713928, 40.655724>,  <39.239323, 40.325291, 41.064461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678291, 40.713928, 40.655724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893322, 40.379208, 40.697239>,  <40.022343, 40.178375, 40.722149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893322, 40.379208, 40.697239>,  <39.678291, 40.713928, 40.655724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893322, 40.379208, 40.697239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234695, 0.030271, -0.971597,
		0.809893, 0.546668, 0.212666,
		0.537579, -0.836802, 0.103784,
		40.054596, 40.128166, 40.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348667, 40.867279, 40.407993>,  <39.678291, 40.713928, 40.655724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348667, 40.867279, 40.407993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292126, 40.473907, 40.362572>,  <40.258202, 40.237885, 40.335320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292126, 40.473907, 40.362572>,  <40.348667, 40.867279, 40.407993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292126, 40.473907, 40.362572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339242, 0.059637, -0.938807,
		0.930018, -0.171229, 0.325189,
		-0.141358, -0.983425, -0.113551,
		40.249718, 40.178879, 40.328506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952877, 40.664352, 40.148830>,  <40.348667, 40.867279, 40.407993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952877, 40.664352, 40.148830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720509, 40.351315, 40.059315>,  <40.581089, 40.163490, 40.005608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720509, 40.351315, 40.059315>,  <40.952877, 40.664352, 40.148830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720509, 40.351315, 40.059315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302610, 0.047580, -0.951926,
		0.755619, -0.620712, 0.209181,
		-0.580920, -0.782594, -0.223786,
		40.546234, 40.116535, 39.992180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384876, 40.197308, 39.804543>,  <40.952877, 40.664352, 40.148830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384876, 40.197308, 39.804543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012825, 40.104290, 39.690857>,  <40.789593, 40.048481, 39.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012825, 40.104290, 39.690857>,  <41.384876, 40.197308, 39.804543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012825, 40.104290, 39.690857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280367, 0.050171, -0.958581,
		0.237174, -0.971291, 0.018532,
		-0.930131, -0.232546, -0.284217,
		40.733788, 40.034527, 39.605591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544212, 39.793858, 39.166843>,  <41.384876, 40.197308, 39.804543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544212, 39.793858, 39.166843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154556, 39.874500, 39.126045>,  <40.920761, 39.922886, 39.101566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154556, 39.874500, 39.126045>,  <41.544212, 39.793858, 39.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154556, 39.874500, 39.126045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133061, 0.147058, -0.980137,
		-0.182599, -0.968365, -0.170081,
		-0.974142, 0.201603, -0.101999,
		40.862312, 39.934982, 39.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396366, 39.363476, 38.560360>,  <41.544212, 39.793858, 39.166843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396366, 39.363476, 38.560360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080898, 39.604851, 38.607464>,  <40.891617, 39.749676, 38.635727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080898, 39.604851, 38.607464>,  <41.396366, 39.363476, 38.560360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080898, 39.604851, 38.607464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081250, 0.292155, -0.952914,
		-0.609428, -0.741963, -0.279442,
		-0.788667, 0.603437, 0.117763,
		40.844299, 39.785881, 38.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838593, 39.088360, 38.101032>,  <41.396366, 39.363476, 38.560360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838593, 39.088360, 38.101032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773220, 39.473808, 38.185619>,  <40.733997, 39.705078, 38.236374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773220, 39.473808, 38.185619>,  <40.838593, 39.088360, 38.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773220, 39.473808, 38.185619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083215, 0.227053, -0.970321,
		-0.983039, -0.140979, -0.117295,
		-0.163427, 0.963624, 0.211470,
		40.724194, 39.762897, 38.249062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322906, 38.526489, 38.420780>,  <40.838593, 39.088360, 38.101032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322906, 38.526489, 38.420780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367016, 38.596405, 38.812145>,  <41.393482, 38.638355, 39.046963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367016, 38.596405, 38.812145>,  <41.322906, 38.526489, 38.420780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367016, 38.596405, 38.812145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107301, -0.976568, 0.186549,
		0.988093, -0.125555, -0.088931,
		0.110269, 0.174786, 0.978412,
		41.400097, 38.648842, 39.105667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969505, 38.138409, 38.728210>,  <41.322906, 38.526489, 38.420780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969505, 38.138409, 38.728210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652061, 38.199310, 38.963837>,  <41.461594, 38.235851, 39.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652061, 38.199310, 38.963837>,  <41.969505, 38.138409, 38.728210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652061, 38.199310, 38.963837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050761, -0.981376, 0.185271,
		0.606306, 0.117132, 0.786558,
		-0.793610, 0.152257, 0.589068,
		41.413979, 38.244987, 39.140556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694695, 37.550949, 38.278950>,  <41.969505, 38.138409, 38.728210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694695, 37.550949, 38.278950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795380, 37.244415, 38.042519>,  <41.855793, 37.060493, 37.900661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795380, 37.244415, 38.042519>,  <41.694695, 37.550949, 38.278950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795380, 37.244415, 38.042519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859478, 0.457767, -0.227482,
		0.444903, -0.450756, 0.773874,
		0.251715, -0.766334, -0.591077,
		41.870895, 37.014515, 37.865196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393322, 37.528175, 38.421619>,  <41.694695, 37.550949, 38.278950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393322, 37.528175, 38.421619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332745, 37.326012, 38.081825>,  <42.296398, 37.204712, 37.877949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332745, 37.326012, 38.081825>,  <42.393322, 37.528175, 38.421619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332745, 37.326012, 38.081825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869055, 0.341391, -0.358043,
		0.470966, -0.792472, 0.387530,
		-0.151440, -0.505411, -0.849485,
		42.287312, 37.174389, 37.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897308, 37.061680, 38.103798>,  <42.393322, 37.528175, 38.421619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897308, 37.061680, 38.103798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806705, 37.174667, 37.730938>,  <42.752342, 37.242462, 37.507221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806705, 37.174667, 37.730938>,  <42.897308, 37.061680, 38.103798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806705, 37.174667, 37.730938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974009, 0.065102, -0.216950,
		-0.000598, -0.957064, -0.289876,
		-0.226507, 0.282472, -0.932150,
		42.738754, 37.259411, 37.451294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944008, 36.558147, 37.520668>,  <42.897308, 37.061680, 38.103798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944008, 36.558147, 37.520668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037277, 36.933765, 37.419621>,  <43.093239, 37.159138, 37.358990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037277, 36.933765, 37.419621>,  <42.944008, 36.558147, 37.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037277, 36.933765, 37.419621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911106, -0.301767, -0.280752,
		-0.339873, -0.164702, -0.925937,
		0.233177, 0.939047, -0.252623,
		43.107231, 37.215481, 37.343834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368683, 36.438641, 36.952583>,  <42.944008, 36.558147, 37.520668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368683, 36.438641, 36.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411930, 36.816574, 37.076267>,  <43.437878, 37.043335, 37.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411930, 36.816574, 37.076267>,  <43.368683, 36.438641, 36.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411930, 36.816574, 37.076267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981740, -0.052502, -0.182840,
		-0.156519, 0.323328, -0.933253,
		0.108116, 0.944829, 0.309207,
		43.444366, 37.100021, 37.169029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632851, 37.019382, 36.308628>,  <43.368683, 36.438641, 36.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632851, 37.019382, 36.308628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725567, 37.128075, 36.682247>,  <43.781197, 37.193291, 36.906418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725567, 37.128075, 36.682247>,  <43.632851, 37.019382, 36.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725567, 37.128075, 36.682247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955495, 0.116534, -0.271015,
		-0.182491, 0.955292, -0.232625,
		0.231790, 0.271730, 0.934043,
		43.795105, 37.209595, 36.962460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044884, 37.519615, 36.173069>,  <43.632851, 37.019382, 36.308628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044884, 37.519615, 36.173069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109577, 37.387520, 36.545044>,  <44.148396, 37.308262, 36.768230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109577, 37.387520, 36.545044>,  <44.044884, 37.519615, 36.173069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109577, 37.387520, 36.545044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986549, 0.076738, -0.144331,
		-0.023698, 0.940772, 0.338211,
		0.161736, -0.330241, 0.929937,
		44.158096, 37.288448, 36.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499027, 38.034901, 36.680344>,  <44.044884, 37.519615, 36.173069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499027, 38.034901, 36.680344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503361, 37.640511, 36.746952>,  <44.505962, 37.403877, 36.786915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503361, 37.640511, 36.746952>,  <44.499027, 38.034901, 36.680344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503361, 37.640511, 36.746952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976743, -0.025228, -0.212924,
		0.214139, 0.164953, 0.962775,
		0.010834, -0.985979, 0.166519,
		44.506611, 37.344715, 36.796909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398342, 38.123440, 35.917320>,  <44.499027, 38.034901, 36.680344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398342, 38.123440, 35.917320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128639, 38.305275, 36.150120>,  <43.966816, 38.414375, 36.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128639, 38.305275, 36.150120>,  <44.398342, 38.123440, 35.917320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128639, 38.305275, 36.150120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019923, 0.798999, -0.601003,
		-0.738229, -0.393635, -0.547786,
		-0.674256, 0.454591, 0.582002,
		43.926361, 38.441650, 36.324718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807659, 38.729725, 35.702126>,  <44.398342, 38.123440, 35.917320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807659, 38.729725, 35.702126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549652, 38.460430, 35.557518>,  <44.394848, 38.298851, 35.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549652, 38.460430, 35.557518>,  <44.807659, 38.729725, 35.702126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549652, 38.460430, 35.557518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654558, -0.730895, 0.193251,
		-0.394338, -0.111986, 0.912116,
		-0.645020, -0.673240, -0.361522,
		44.356148, 38.258457, 35.449062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247478, 38.116879, 35.698814>,  <44.807659, 38.729725, 35.702126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247478, 38.116879, 35.698814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923512, 37.960262, 35.524128>,  <44.729130, 37.866291, 35.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923512, 37.960262, 35.524128>,  <45.247478, 38.116879, 35.698814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923512, 37.960262, 35.524128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496339, -0.854252, -0.154600,
		-0.312536, -0.341974, 0.886214,
		-0.809919, -0.391545, -0.436720,
		44.680534, 37.842800, 35.393112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207489, 37.470200, 35.998680>,  <45.247478, 38.116879, 35.698814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207489, 37.470200, 35.998680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076935, 37.511536, 35.622852>,  <44.998604, 37.536339, 35.397354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076935, 37.511536, 35.622852>,  <45.207489, 37.470200, 35.998680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076935, 37.511536, 35.622852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649516, -0.697645, -0.302358,
		-0.686734, -0.708951, 0.160577,
		-0.326383, 0.103342, -0.939572,
		44.979019, 37.542538, 35.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981129, 36.798595, 36.340237>,  <45.207489, 37.470200, 35.998680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981129, 36.798595, 36.340237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787746, 36.684250, 36.671188>,  <44.671719, 36.615643, 36.869759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787746, 36.684250, 36.671188>,  <44.981129, 36.798595, 36.340237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787746, 36.684250, 36.671188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237990, -0.952497, -0.190026,
		0.842398, 0.105040, 0.528519,
		-0.483453, -0.285860, 0.827380,
		44.642712, 36.598492, 36.919403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466923, 36.360336, 36.755245>,  <44.981129, 36.798595, 36.340237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466923, 36.360336, 36.755245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098270, 36.245693, 36.859894>,  <44.877079, 36.176907, 36.922684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098270, 36.245693, 36.859894>,  <45.466923, 36.360336, 36.755245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098270, 36.245693, 36.859894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233368, -0.947997, -0.216429,
		0.310051, -0.138413, 0.940590,
		-0.921633, -0.286608, 0.261626,
		44.821781, 36.159710, 36.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675655, 36.273304, 35.956821>,  <45.466923, 36.360336, 36.755245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675655, 36.273304, 35.956821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791077, 36.655949, 35.972996>,  <45.860329, 36.885536, 35.982700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791077, 36.655949, 35.972996>,  <45.675655, 36.273304, 35.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791077, 36.655949, 35.972996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126242, -0.003853, 0.991992,
		0.949104, -0.291350, 0.119652,
		0.288555, 0.956609, 0.040437,
		45.877644, 36.942932, 35.985126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393013, 35.902393, 35.765167>,  <45.675655, 36.273304, 35.956821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393013, 35.902393, 35.765167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787220, 35.925961, 35.828781>,  <47.023743, 35.940102, 35.866947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787220, 35.925961, 35.828781>,  <46.393013, 35.902393, 35.765167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787220, 35.925961, 35.828781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093013, -0.971871, -0.216371,
		0.141810, 0.228029, -0.963272,
		0.985515, 0.058913, 0.159030,
		47.082874, 35.943634, 35.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870197, 35.767120, 35.182362>,  <46.393013, 35.902393, 35.765167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870197, 35.767120, 35.182362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091492, 35.656960, 35.496834>,  <47.224270, 35.590862, 35.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091492, 35.656960, 35.496834>,  <46.870197, 35.767120, 35.182362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091492, 35.656960, 35.496834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176011, -0.883817, -0.433461,
		0.814217, 0.378183, -0.440487,
		0.553237, -0.275400, 0.786183,
		47.257462, 35.574341, 35.732689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.443031, 35.566868, 34.869843>,  <46.870197, 35.767120, 35.182362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.443031, 35.566868, 34.869843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431736, 35.384579, 35.225712>,  <47.424957, 35.275204, 35.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431736, 35.384579, 35.225712>,  <47.443031, 35.566868, 34.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431736, 35.384579, 35.225712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355584, -0.836393, -0.417142,
		0.934217, 0.304573, 0.185670,
		-0.028243, -0.455722, 0.889674,
		47.423264, 35.247864, 35.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157227, 35.335728, 35.040417>,  <47.443031, 35.566868, 34.869843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157227, 35.335728, 35.040417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857605, 35.116543, 35.189358>,  <47.677830, 34.985031, 35.278725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857605, 35.116543, 35.189358>,  <48.157227, 35.335728, 35.040417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857605, 35.116543, 35.189358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468409, -0.835508, -0.287262,
		0.468516, -0.040760, 0.882514,
		-0.749056, -0.547965, 0.372357,
		47.632889, 34.952152, 35.301064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.892525, 37.765030, 28.450361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637630, 38.073166, 28.459431>,  <36.484695, 38.258045, 28.464872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637630, 38.073166, 28.459431>,  <36.892525, 37.765030, 28.450361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637630, 38.073166, 28.459431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074437, 0.032236, 0.996705,
		0.767067, 0.636822, -0.077883,
		-0.637234, 0.770337, 0.022676,
		36.446461, 38.304268, 28.466234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098553, 38.254692, 28.952318>,  <36.892525, 37.765030, 28.450361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098553, 38.254692, 28.952318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718784, 38.367397, 28.896893>,  <36.490921, 38.435020, 28.863636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718784, 38.367397, 28.896893>,  <37.098553, 38.254692, 28.952318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718784, 38.367397, 28.896893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046403, 0.310547, 0.949425,
		0.310547, 0.907837, -0.281767,
		-0.949425, 0.281767, -0.138566,
		36.433956, 38.451927, 28.855322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988827, 38.845345, 29.302759>,  <37.098553, 38.254692, 28.952318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988827, 38.845345, 29.302759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608559, 38.725739, 29.269733>,  <36.380398, 38.653976, 29.249918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608559, 38.725739, 29.269733>,  <36.988827, 38.845345, 29.302759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608559, 38.725739, 29.269733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116351, 0.096986, 0.988462,
		-0.287554, 0.949308, -0.126992,
		-0.950671, -0.299012, -0.082564,
		36.323357, 38.636036, 29.244965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622299, 39.271729, 29.712292>,  <36.988827, 38.845345, 29.302759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622299, 39.271729, 29.712292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386909, 38.951710, 29.665609>,  <36.245674, 38.759697, 29.637600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386909, 38.951710, 29.665609>,  <36.622299, 39.271729, 29.712292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386909, 38.951710, 29.665609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160250, -0.026064, 0.986732,
		-0.792474, 0.599371, -0.112870,
		-0.588477, -0.800047, -0.116704,
		36.210365, 38.711697, 29.630598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212051, 39.371483, 30.307852>,  <36.622299, 39.271729, 29.712292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212051, 39.371483, 30.307852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125565, 38.997105, 30.196669>,  <36.073673, 38.772476, 30.129959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125565, 38.997105, 30.196669>,  <36.212051, 39.371483, 30.307852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125565, 38.997105, 30.196669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298229, -0.207776, 0.931606,
		-0.929684, 0.284320, -0.234202,
		-0.216213, -0.935944, -0.277958,
		36.060699, 38.716320, 30.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549408, 39.266159, 30.604883>,  <36.212051, 39.371483, 30.307852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549408, 39.266159, 30.604883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715382, 38.906868, 30.546883>,  <35.814964, 38.691296, 30.512083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715382, 38.906868, 30.546883>,  <35.549408, 39.266159, 30.604883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715382, 38.906868, 30.546883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166733, -0.231733, 0.958384,
		-0.894444, -0.373490, -0.245917,
		0.414934, -0.898224, -0.145000,
		35.839863, 38.637402, 30.503384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130314, 38.746944, 30.898209>,  <35.549408, 39.266159, 30.604883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130314, 38.746944, 30.898209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477131, 38.547947, 30.887312>,  <35.685219, 38.428551, 30.880774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477131, 38.547947, 30.887312>,  <35.130314, 38.746944, 30.898209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477131, 38.547947, 30.887312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050195, -0.141615, 0.988648,
		-0.495703, -0.855831, -0.147757,
		0.867041, -0.497492, -0.027240,
		35.737244, 38.398701, 30.879139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073288, 38.073616, 31.338060>,  <35.130314, 38.746944, 30.898209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073288, 38.073616, 31.338060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461220, 38.148094, 31.275116>,  <35.693977, 38.192780, 31.237350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461220, 38.148094, 31.275116>,  <35.073288, 38.073616, 31.338060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461220, 38.148094, 31.275116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179528, -0.108797, 0.977718,
		0.164927, -0.976470, -0.138942,
		0.969829, 0.186196, -0.157360,
		35.752167, 38.203953, 31.227907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454765, 37.482811, 31.714014>,  <35.073288, 38.073616, 31.338060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454765, 37.482811, 31.714014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715431, 37.782063, 31.663979>,  <35.871830, 37.961613, 31.633957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715431, 37.782063, 31.663979>,  <35.454765, 37.482811, 31.714014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715431, 37.782063, 31.663979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333812, -0.134777, 0.932955,
		0.681108, -0.649725, -0.337562,
		0.651660, 0.748126, -0.125088,
		35.910931, 38.006500, 31.626451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063389, 37.288746, 32.020889>,  <35.454765, 37.482811, 31.714014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063389, 37.288746, 32.020889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103134, 37.686432, 32.004532>,  <36.126980, 37.925041, 31.994719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103134, 37.686432, 32.004532>,  <36.063389, 37.288746, 32.020889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103134, 37.686432, 32.004532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437549, -0.006746, 0.899169,
		0.893688, -0.107236, -0.435686,
		0.099363, 0.994211, -0.040892,
		36.132942, 37.984695, 31.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611900, 37.405762, 32.413387>,  <36.063389, 37.288746, 32.020889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611900, 37.405762, 32.413387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455357, 37.773220, 32.391712>,  <36.361431, 37.993694, 32.378708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455357, 37.773220, 32.391712>,  <36.611900, 37.405762, 32.413387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455357, 37.773220, 32.391712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491233, 0.258341, 0.831836,
		0.778158, 0.298926, -0.552371,
		-0.391357, 0.918642, -0.054187,
		36.337948, 38.048813, 32.375458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136513, 37.891136, 32.623638>,  <36.611900, 37.405762, 32.413387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136513, 37.891136, 32.623638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777679, 38.056641, 32.685650>,  <36.562378, 38.155945, 32.722858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777679, 38.056641, 32.685650>,  <37.136513, 37.891136, 32.623638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777679, 38.056641, 32.685650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317562, 0.359792, 0.877328,
		0.307227, 0.836272, -0.454160,
		-0.897088, 0.413762, 0.155030,
		36.508553, 38.180771, 32.732159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259624, 38.559586, 32.830391>,  <37.136513, 37.891136, 32.623638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259624, 38.559586, 32.830391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883102, 38.497437, 32.950256>,  <36.657188, 38.460148, 33.022175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883102, 38.497437, 32.950256>,  <37.259624, 38.559586, 32.830391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883102, 38.497437, 32.950256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242539, 0.306115, 0.920581,
		-0.234769, 0.939229, -0.250463,
		-0.941307, -0.155377, 0.299666,
		36.600712, 38.450825, 33.040157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108452, 39.126015, 33.103256>,  <37.259624, 38.559586, 32.830391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108452, 39.126015, 33.103256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848301, 38.883339, 33.286095>,  <36.692211, 38.737732, 33.395798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848301, 38.883339, 33.286095>,  <37.108452, 39.126015, 33.103256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848301, 38.883339, 33.286095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306283, 0.341216, 0.888686,
		-0.695126, 0.717981, -0.036100,
		-0.650378, -0.606691, 0.457093,
		36.653187, 38.701332, 33.423222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680008, 39.468643, 33.649582>,  <37.108452, 39.126015, 33.103256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680008, 39.468643, 33.649582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664974, 39.081699, 33.749825>,  <36.655956, 38.849533, 33.809971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664974, 39.081699, 33.749825>,  <36.680008, 39.468643, 33.649582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664974, 39.081699, 33.749825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117139, 0.244787, 0.962475,
		-0.992404, 0.065525, 0.104116,
		-0.037580, -0.967360, 0.250603,
		36.653702, 38.791492, 33.825005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037052, 39.281185, 34.109608>,  <36.680008, 39.468643, 33.649582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037052, 39.281185, 34.109608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315697, 39.001686, 34.174706>,  <36.482883, 38.833988, 34.213764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315697, 39.001686, 34.174706>,  <36.037052, 39.281185, 34.109608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315697, 39.001686, 34.174706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025113, 0.202951, 0.978867,
		-0.717009, -0.685976, 0.123831,
		0.696611, -0.698747, 0.162745,
		36.524681, 38.792061, 34.223530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943810, 39.130657, 34.831051>,  <36.037052, 39.281185, 34.109608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943810, 39.130657, 34.831051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295010, 38.953175, 34.759232>,  <36.505730, 38.846684, 34.716141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295010, 38.953175, 34.759232>,  <35.943810, 39.130657, 34.831051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295010, 38.953175, 34.759232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309097, 0.239161, 0.920468,
		-0.365481, -0.863668, 0.347133,
		0.877999, -0.443711, -0.179548,
		36.558411, 38.820061, 34.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061256, 38.574657, 35.365440>,  <35.943810, 39.130657, 34.831051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061256, 38.574657, 35.365440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411285, 38.703728, 35.221146>,  <36.621304, 38.781170, 35.134567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411285, 38.703728, 35.221146>,  <36.061256, 38.574657, 35.365440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411285, 38.703728, 35.221146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341266, 0.117160, 0.932637,
		0.343203, -0.939230, -0.007595,
		0.875071, 0.322676, -0.360737,
		36.673805, 38.800529, 35.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579853, 38.369053, 35.896168>,  <36.061256, 38.574657, 35.365440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579853, 38.369053, 35.896168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808952, 38.613785, 35.677948>,  <36.946411, 38.760624, 35.547016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808952, 38.613785, 35.677948>,  <36.579853, 38.369053, 35.896168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808952, 38.613785, 35.677948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577753, 0.170823, 0.798136,
		0.581517, -0.772322, -0.255649,
		0.572748, 0.611832, -0.545547,
		36.980778, 38.797333, 35.514282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333202, 38.263351, 36.081802>,  <36.579853, 38.369053, 35.896168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333202, 38.263351, 36.081802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266918, 38.632359, 35.942368>,  <37.227146, 38.853764, 35.858707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266918, 38.632359, 35.942368>,  <37.333202, 38.263351, 36.081802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266918, 38.632359, 35.942368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496360, 0.383454, 0.778839,
		0.852154, -0.043961, -0.521441,
		-0.165710, 0.922513, -0.348582,
		37.217205, 38.909111, 35.837791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968182, 38.569244, 36.098675>,  <37.333202, 38.263351, 36.081802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968182, 38.569244, 36.098675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697956, 38.864140, 36.094959>,  <37.535820, 39.041077, 36.092731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697956, 38.864140, 36.094959>,  <37.968182, 38.569244, 36.098675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697956, 38.864140, 36.094959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595139, 0.552700, 0.583381,
		0.435224, 0.388586, -0.812146,
		-0.675566, 0.737241, -0.009286,
		37.495285, 39.085312, 36.092175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350113, 39.334393, 35.973946>,  <37.968182, 38.569244, 36.098675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350113, 39.334393, 35.973946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994358, 39.348473, 36.156265>,  <37.780907, 39.356922, 36.265656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994358, 39.348473, 36.156265>,  <38.350113, 39.334393, 35.973946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994358, 39.348473, 36.156265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425595, 0.427771, 0.797421,
		-0.166905, 0.903201, -0.395437,
		-0.889388, 0.035202, 0.455795,
		37.727543, 39.359032, 36.293003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931122, 38.837574, 36.214634>,  <38.350113, 39.334393, 35.973946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931122, 38.837574, 36.214634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270191, 38.635540, 36.279549>,  <39.473633, 38.514320, 36.318497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270191, 38.635540, 36.279549>,  <38.931122, 38.837574, 36.214634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270191, 38.635540, 36.279549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229987, 0.074206, -0.970360,
		0.478070, 0.859875, 0.179065,
		0.847676, -0.505083, 0.162285,
		39.524494, 38.484016, 36.328236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461357, 39.254604, 35.924625>,  <38.931122, 38.837574, 36.214634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461357, 39.254604, 35.924625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600143, 38.880333, 35.950306>,  <39.683414, 38.655769, 35.965714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600143, 38.880333, 35.950306>,  <39.461357, 39.254604, 35.924625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600143, 38.880333, 35.950306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351902, 0.066432, -0.933677,
		0.869355, 0.346548, 0.352316,
		0.346968, -0.935677, 0.064198,
		39.704235, 38.599628, 35.969566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120102, 39.238377, 35.565002>,  <39.461357, 39.254604, 35.924625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120102, 39.238377, 35.565002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971859, 38.867020, 35.554165>,  <39.882912, 38.644207, 35.547661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971859, 38.867020, 35.554165>,  <40.120102, 39.238377, 35.565002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971859, 38.867020, 35.554165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403731, -0.134758, -0.904899,
		0.836451, -0.346303, 0.424764,
		-0.370610, -0.928393, -0.027095,
		39.860676, 38.588501, 35.546036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690796, 38.808186, 35.349777>,  <40.120102, 39.238377, 35.565002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690796, 38.808186, 35.349777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343140, 38.634697, 35.254711>,  <40.134548, 38.530602, 35.197674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343140, 38.634697, 35.254711>,  <40.690796, 38.808186, 35.349777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343140, 38.634697, 35.254711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338743, -0.171925, -0.925038,
		0.360352, -0.884491, 0.296348,
		-0.869137, -0.433725, -0.237661,
		40.082397, 38.504578, 35.183414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899048, 38.470810, 34.784912>,  <40.690796, 38.808186, 35.349777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899048, 38.470810, 34.784912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.503773, 38.409622, 34.781387>,  <40.266605, 38.372910, 34.779270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.503773, 38.409622, 34.781387>,  <40.899048, 38.470810, 34.784912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503773, 38.409622, 34.781387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041455, -0.211516, -0.976495,
		0.147513, -0.965329, 0.215360,
		-0.988191, -0.152974, -0.008816,
		40.207314, 38.363731, 34.778744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849480, 37.882118, 34.462719>,  <40.899048, 38.470810, 34.784912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849480, 37.882118, 34.462719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501228, 38.075512, 34.426399>,  <40.292278, 38.191547, 34.404606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501228, 38.075512, 34.426399>,  <40.849480, 37.882118, 34.462719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501228, 38.075512, 34.426399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002440, -0.188824, -0.982008,
		-0.491934, -0.854743, 0.165576,
		-0.870629, 0.483487, -0.090803,
		40.240040, 38.220558, 34.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491562, 37.479469, 33.988049>,  <40.849480, 37.882118, 34.462719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491562, 37.479469, 33.988049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307297, 37.834499, 33.988495>,  <40.196739, 38.047516, 33.988762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307297, 37.834499, 33.988495>,  <40.491562, 37.479469, 33.988049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307297, 37.834499, 33.988495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156302, -0.079885, -0.984474,
		-0.873705, -0.453684, 0.175530,
		-0.460662, 0.887575, 0.001116,
		40.169098, 38.100773, 33.988831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872715, 37.416351, 33.530190>,  <40.491562, 37.479469, 33.988049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872715, 37.416351, 33.530190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959724, 37.806076, 33.553482>,  <40.011929, 38.039913, 33.567455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959724, 37.806076, 33.553482>,  <39.872715, 37.416351, 33.530190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959724, 37.806076, 33.553482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236966, 0.110589, -0.965203,
		-0.946853, 0.196157, 0.254936,
		0.217525, 0.974316, 0.058228,
		40.024982, 38.098370, 33.570950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288048, 37.793640, 33.329018>,  <39.872715, 37.416351, 33.530190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288048, 37.793640, 33.329018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597824, 38.041496, 33.277958>,  <39.783688, 38.190208, 33.247322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597824, 38.041496, 33.277958>,  <39.288048, 37.793640, 33.329018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597824, 38.041496, 33.277958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163259, 0.000808, -0.986583,
		-0.611223, 0.784885, 0.101788,
		0.774437, 0.619640, -0.127645,
		39.830154, 38.227390, 33.239666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066422, 38.278309, 32.927349>,  <39.288048, 37.793640, 33.329018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066422, 38.278309, 32.927349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462036, 38.276016, 32.868317>,  <39.699406, 38.274639, 32.832897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462036, 38.276016, 32.868317>,  <39.066422, 38.278309, 32.927349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462036, 38.276016, 32.868317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146985, -0.135859, -0.979764,
		-0.014435, 0.990712, -0.135211,
		0.989033, -0.005731, -0.147580,
		39.758747, 38.274296, 32.824043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127964, 38.457607, 32.263618>,  <39.066422, 38.278309, 32.927349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127964, 38.457607, 32.263618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506104, 38.341335, 32.322704>,  <39.732986, 38.271572, 32.358158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506104, 38.341335, 32.322704>,  <39.127964, 38.457607, 32.263618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506104, 38.341335, 32.322704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176817, 0.076385, -0.981275,
		0.273955, 0.953766, 0.123608,
		0.945349, -0.290681, 0.147716,
		39.789707, 38.254131, 32.367020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459126, 38.937260, 31.902935>,  <39.127964, 38.457607, 32.263618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459126, 38.937260, 31.902935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674664, 38.602299, 31.939606>,  <39.803986, 38.401321, 31.961609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674664, 38.602299, 31.939606>,  <39.459126, 38.937260, 31.902935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674664, 38.602299, 31.939606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145393, -0.014748, -0.989264,
		0.829764, 0.546388, 0.113806,
		0.538844, -0.837402, 0.091678,
		39.836315, 38.351078, 31.967110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963238, 39.092384, 31.419849>,  <39.459126, 38.937260, 31.902935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963238, 39.092384, 31.419849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954926, 38.699265, 31.493246>,  <39.949940, 38.463390, 31.537285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954926, 38.699265, 31.493246>,  <39.963238, 39.092384, 31.419849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954926, 38.699265, 31.493246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047814, -0.182346, -0.982071,
		0.998640, -0.029180, -0.043203,
		-0.020779, -0.982801, 0.183494,
		39.948692, 38.404423, 31.548294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531033, 38.766201, 30.999069>,  <39.963238, 39.092384, 31.419849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531033, 38.766201, 30.999069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268402, 38.482605, 31.102020>,  <40.110825, 38.312447, 31.163790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268402, 38.482605, 31.102020>,  <40.531033, 38.766201, 30.999069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268402, 38.482605, 31.102020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119625, -0.239029, -0.963616,
		0.744716, -0.663473, 0.072127,
		-0.656573, -0.708992, 0.257377,
		40.071430, 38.269909, 31.179234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535774, 38.308239, 30.448584>,  <40.531033, 38.766201, 30.999069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535774, 38.308239, 30.448584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206009, 38.186863, 30.639692>,  <40.008152, 38.114037, 30.754358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206009, 38.186863, 30.639692>,  <40.535774, 38.308239, 30.448584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206009, 38.186863, 30.639692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391643, -0.303572, -0.868596,
		0.408610, -0.903197, 0.131427,
		-0.824411, -0.303444, 0.477773,
		39.958687, 38.095829, 30.783024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484604, 37.677032, 30.212370>,  <40.535774, 38.308239, 30.448584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484604, 37.677032, 30.212370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126961, 37.813835, 30.328032>,  <39.912376, 37.895916, 30.397429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126961, 37.813835, 30.328032>,  <40.484604, 37.677032, 30.212370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126961, 37.813835, 30.328032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372466, -0.209332, -0.904129,
		-0.248693, -0.916083, 0.314552,
		-0.894103, 0.342010, 0.289151,
		39.858730, 37.916435, 30.414778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058121, 37.181656, 30.098997>,  <40.484604, 37.677032, 30.212370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058121, 37.181656, 30.098997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.827705, 37.508614, 30.102032>,  <39.689457, 37.704788, 30.103853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.827705, 37.508614, 30.102032>,  <40.058121, 37.181656, 30.098997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827705, 37.508614, 30.102032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461725, -0.317702, -0.828176,
		-0.674533, -0.480560, 0.560417,
		-0.576034, 0.817391, 0.007586,
		39.654896, 37.753830, 30.104307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356941, 37.022182, 30.156967>,  <40.058121, 37.181656, 30.098997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356941, 37.022182, 30.156967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.353512, 37.383633, 29.985672>,  <39.351456, 37.600502, 29.882895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.353512, 37.383633, 29.985672>,  <39.356941, 37.022182, 30.156967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353512, 37.383633, 29.985672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611043, -0.343731, -0.713074,
		-0.791551, 0.255562, 0.555100,
		-0.008570, 0.903625, -0.428240,
		39.350941, 37.654720, 29.857201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.749355, 37.043659, 29.742115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940285, 37.360981, 29.590948>,  <39.054844, 37.551376, 29.500248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940285, 37.360981, 29.590948>,  <38.749355, 37.043659, 29.742115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940285, 37.360981, 29.590948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475686, -0.128330, -0.870204,
		-0.738838, 0.595141, 0.316110,
		0.477328, 0.793308, -0.377915,
		39.083485, 37.598972, 29.477573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288284, 37.364361, 29.244354>,  <38.749355, 37.043659, 29.742115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288284, 37.364361, 29.244354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624752, 37.560226, 29.152565>,  <38.826633, 37.677746, 29.097492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624752, 37.560226, 29.152565>,  <38.288284, 37.364361, 29.244354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624752, 37.560226, 29.152565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350997, 0.171576, -0.920523,
		-0.411377, 0.854862, 0.316196,
		0.841172, 0.489666, -0.229472,
		38.877102, 37.707127, 29.083723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058182, 38.005203, 28.931555>,  <38.288284, 37.364361, 29.244354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058182, 38.005203, 28.931555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430080, 37.923252, 28.809177>,  <38.653217, 37.874081, 28.735750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430080, 37.923252, 28.809177>,  <38.058182, 38.005203, 28.931555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430080, 37.923252, 28.809177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260630, 0.220744, -0.939864,
		0.260094, 0.953570, 0.151837,
		0.929743, -0.204880, -0.305944,
		38.709003, 37.861790, 28.717394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275806, 38.595100, 28.480129>,  <38.058182, 38.005203, 28.931555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275806, 38.595100, 28.480129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496235, 38.280163, 28.369564>,  <38.628490, 38.091198, 28.303225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496235, 38.280163, 28.369564>,  <38.275806, 38.595100, 28.480129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496235, 38.280163, 28.369564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252102, 0.158683, -0.954602,
		0.795465, 0.595738, -0.111046,
		0.551072, -0.787347, -0.276413,
		38.661556, 38.043957, 28.286640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494350, 38.813641, 27.892776>,  <38.275806, 38.595100, 28.480129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494350, 38.813641, 27.892776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567261, 38.421017, 27.869755>,  <38.611008, 38.185444, 27.855942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567261, 38.421017, 27.869755>,  <38.494350, 38.813641, 27.892776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567261, 38.421017, 27.869755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124432, 0.035038, -0.991609,
		0.975341, 0.187912, -0.115751,
		0.182280, -0.981561, -0.057556,
		38.621944, 38.126549, 27.852488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938202, 38.756176, 27.351234>,  <38.494350, 38.813641, 27.892776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938202, 38.756176, 27.351234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831196, 38.373611, 27.398066>,  <38.766994, 38.144073, 27.426165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831196, 38.373611, 27.398066>,  <38.938202, 38.756176, 27.351234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831196, 38.373611, 27.398066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145128, -0.160111, -0.976372,
		0.952563, -0.244200, 0.181634,
		-0.267511, -0.956416, 0.117076,
		38.750942, 38.086685, 27.433187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338718, 38.415501, 26.979191>,  <38.938202, 38.756176, 27.351234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338718, 38.415501, 26.979191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033672, 38.158070, 27.005171>,  <38.850643, 38.003613, 27.020758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033672, 38.158070, 27.005171>,  <39.338718, 38.415501, 26.979191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033672, 38.158070, 27.005171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041208, -0.051866, -0.997803,
		0.645534, -0.763620, 0.013033,
		-0.762619, -0.643579, 0.064949,
		38.804886, 37.964996, 27.024656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469761, 37.785675, 26.579706>,  <39.338718, 38.415501, 26.979191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469761, 37.785675, 26.579706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070671, 37.808037, 26.594791>,  <38.831219, 37.821453, 26.603842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070671, 37.808037, 26.594791>,  <39.469761, 37.785675, 26.579706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070671, 37.808037, 26.594791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050916, -0.257874, -0.964836,
		-0.044210, -0.964560, 0.260133,
		-0.997724, 0.055900, 0.037711,
		38.771355, 37.824806, 26.606104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279774, 37.145199, 26.271008>,  <39.469761, 37.785675, 26.579706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279774, 37.145199, 26.271008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956810, 37.380226, 26.249641>,  <38.763031, 37.521240, 26.236822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956810, 37.380226, 26.249641>,  <39.279774, 37.145199, 26.271008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956810, 37.380226, 26.249641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148528, -0.290049, -0.945416,
		-0.570988, -0.755405, 0.321459,
		-0.807411, 0.587566, -0.053416,
		38.714588, 37.556496, 26.233616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807911, 36.823959, 25.902765>,  <39.279774, 37.145199, 26.271008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807911, 36.823959, 25.902765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673897, 37.198868, 25.864260>,  <38.593487, 37.423813, 25.841156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673897, 37.198868, 25.864260>,  <38.807911, 36.823959, 25.902765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673897, 37.198868, 25.864260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255306, -0.188653, -0.948277,
		-0.906957, -0.293129, 0.302498,
		-0.335035, 0.937276, -0.096262,
		38.573387, 37.480049, 25.835381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269459, 36.796478, 25.540354>,  <38.807911, 36.823959, 25.902765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269459, 36.796478, 25.540354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383648, 37.169262, 25.450949>,  <38.452164, 37.392933, 25.397306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383648, 37.169262, 25.450949>,  <38.269459, 36.796478, 25.540354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383648, 37.169262, 25.450949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222926, -0.162249, -0.961238,
		-0.932098, 0.324237, 0.161439,
		0.285476, 0.931958, -0.223513,
		38.469292, 37.448849, 25.383894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190987, 36.883198, 24.812532>,  <38.269459, 36.796478, 25.540354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190987, 36.883198, 24.812532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367039, 37.233776, 24.890633>,  <38.472668, 37.444122, 24.937492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367039, 37.233776, 24.890633>,  <38.190987, 36.883198, 24.812532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367039, 37.233776, 24.890633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060886, 0.187815, -0.980315,
		-0.895869, 0.443351, 0.029299,
		0.440127, 0.876450, 0.195252,
		38.499077, 37.496712, 24.949207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886757, 37.477104, 24.413624>,  <38.190987, 36.883198, 24.812532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886757, 37.477104, 24.413624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261791, 37.591595, 24.492626>,  <38.486813, 37.660290, 24.540028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261791, 37.591595, 24.492626>,  <37.886757, 37.477104, 24.413624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261791, 37.591595, 24.492626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119750, 0.267479, -0.956094,
		-0.326486, 0.920071, 0.216509,
		0.937586, 0.286224, 0.197506,
		38.543068, 37.677464, 24.551878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038254, 38.177452, 24.161579>,  <37.886757, 37.477104, 24.413624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038254, 38.177452, 24.161579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.401646, 38.012196, 24.186834>,  <38.619678, 37.913040, 24.201986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.401646, 38.012196, 24.186834>,  <38.038254, 38.177452, 24.161579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401646, 38.012196, 24.186834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240057, 0.392163, -0.888021,
		0.342119, 0.821901, 0.455448,
		0.908475, -0.413142, 0.063136,
		38.674187, 37.888252, 24.205776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414337, 38.693718, 23.902130>,  <38.038254, 38.177452, 24.161579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414337, 38.693718, 23.902130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685371, 38.399960, 23.886410>,  <38.847992, 38.223705, 23.876978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685371, 38.399960, 23.886410>,  <38.414337, 38.693718, 23.902130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685371, 38.399960, 23.886410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213235, 0.247323, -0.945178,
		0.703853, 0.632059, 0.324181,
		0.677586, -0.734393, -0.039302,
		38.888649, 38.179642, 23.874619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089714, 39.021942, 23.719355>,  <38.414337, 38.693718, 23.902130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089714, 39.021942, 23.719355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135372, 38.640232, 23.608847>,  <39.162766, 38.411205, 23.542542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135372, 38.640232, 23.608847>,  <39.089714, 39.021942, 23.719355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135372, 38.640232, 23.608847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204279, 0.294691, -0.933502,
		0.972235, 0.050118, 0.228576,
		0.114144, -0.954277, -0.276271,
		39.169617, 38.353951, 23.525965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732666, 39.063072, 23.375612>,  <39.089714, 39.021942, 23.719355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732666, 39.063072, 23.375612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542305, 38.731033, 23.259365>,  <39.428089, 38.531811, 23.189617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542305, 38.731033, 23.259365>,  <39.732666, 39.063072, 23.375612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542305, 38.731033, 23.259365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136947, 0.256468, -0.956802,
		0.868771, -0.495143, -0.008375,
		-0.475902, -0.830095, -0.290620,
		39.399536, 38.482006, 23.172178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103439, 38.713486, 22.857327>,  <39.732666, 39.063072, 23.375612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103439, 38.713486, 22.857327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738239, 38.562263, 22.795996>,  <39.519119, 38.471531, 22.759197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738239, 38.562263, 22.795996>,  <40.103439, 38.713486, 22.857327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738239, 38.562263, 22.795996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077410, 0.208464, -0.974962,
		0.400552, -0.902007, -0.161062,
		-0.912998, -0.378055, -0.153326,
		39.464340, 38.448849, 22.749998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234737, 38.255928, 22.339293>,  <40.103439, 38.713486, 22.857327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234737, 38.255928, 22.339293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.841480, 38.326473, 22.319984>,  <39.605526, 38.368801, 22.308399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.841480, 38.326473, 22.319984>,  <40.234737, 38.255928, 22.339293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841480, 38.326473, 22.319984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088348, 0.227056, -0.969866,
		-0.160090, -0.957779, -0.238809,
		-0.983141, 0.176364, -0.048269,
		39.546539, 38.379383, 22.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978504, 37.941689, 21.756065>,  <40.234737, 38.255928, 22.339293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978504, 37.941689, 21.756065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647507, 38.155582, 21.824560>,  <39.448910, 38.283916, 21.865656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647507, 38.155582, 21.824560>,  <39.978504, 37.941689, 21.756065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647507, 38.155582, 21.824560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041881, 0.245339, -0.968532,
		-0.559915, -0.808623, -0.180621,
		-0.827490, 0.534731, 0.171235,
		39.399258, 38.316002, 21.875931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414112, 37.778339, 21.236338>,  <39.978504, 37.941689, 21.756065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414112, 37.778339, 21.236338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337208, 38.147964, 21.368481>,  <39.291065, 38.369740, 21.447767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337208, 38.147964, 21.368481>,  <39.414112, 37.778339, 21.236338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337208, 38.147964, 21.368481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020832, 0.332721, -0.942795,
		-0.981122, -0.188147, -0.044720,
		-0.192263, 0.924066, 0.330359,
		39.279530, 38.425182, 21.467588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811764, 37.970943, 20.849331>,  <39.414112, 37.778339, 21.236338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811764, 37.970943, 20.849331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943150, 38.317188, 21.000505>,  <39.021980, 38.524933, 21.091209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943150, 38.317188, 21.000505>,  <38.811764, 37.970943, 20.849331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943150, 38.317188, 21.000505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053055, 0.416412, -0.907626,
		-0.943026, 0.278068, 0.182700,
		0.328460, 0.865609, 0.377935,
		39.041687, 38.576870, 21.113886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422581, 38.614792, 20.660927>,  <38.811764, 37.970943, 20.849331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422581, 38.614792, 20.660927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808414, 38.709339, 20.707762>,  <39.039913, 38.766068, 20.735863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808414, 38.709339, 20.707762>,  <38.422581, 38.614792, 20.660927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808414, 38.709339, 20.707762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028951, 0.346347, -0.937660,
		-0.262183, 0.907841, 0.327238,
		0.964584, 0.236365, 0.117089,
		39.097790, 38.780251, 20.742889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807350, 38.908978, 21.158016>,  <38.422581, 38.614792, 20.660927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807350, 38.908978, 21.158016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782368, 38.928040, 20.759253>,  <37.767380, 38.939476, 20.519995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782368, 38.928040, 20.759253>,  <37.807350, 38.908978, 21.158016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782368, 38.928040, 20.759253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803864, -0.594409, 0.021948,
		-0.591526, 0.802750, 0.075427,
		-0.062453, 0.047651, -0.996910,
		37.763630, 38.942333, 20.460180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047630, 39.161034, 21.005600>,  <37.807350, 38.908978, 21.158016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047630, 39.161034, 21.005600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769070, 39.377380, 20.816921>,  <36.601933, 39.507187, 20.703714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769070, 39.377380, 20.816921>,  <37.047630, 39.161034, 21.005600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769070, 39.377380, 20.816921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258773, 0.423811, 0.867998,
		0.669378, 0.726534, -0.155180,
		-0.696398, 0.540862, -0.471697,
		36.560150, 39.539639, 20.675411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139950, 39.879097, 21.022186>,  <37.047630, 39.161034, 21.005600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139950, 39.879097, 21.022186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745155, 39.824848, 20.987644>,  <36.508278, 39.792297, 20.966919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745155, 39.824848, 20.987644>,  <37.139950, 39.879097, 21.022186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745155, 39.824848, 20.987644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140030, 0.461145, 0.876206,
		-0.079014, 0.876899, -0.474137,
		-0.986990, -0.135626, -0.086356,
		36.449059, 39.784161, 20.961737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905876, 40.432316, 21.401388>,  <37.139950, 39.879097, 21.022186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905876, 40.432316, 21.401388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606331, 40.167850, 21.383204>,  <36.426605, 40.009171, 21.372293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606331, 40.167850, 21.383204>,  <36.905876, 40.432316, 21.401388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606331, 40.167850, 21.383204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108222, 0.054322, 0.992641,
		-0.653829, 0.748272, -0.112232,
		-0.748863, -0.661164, -0.045462,
		36.381672, 39.969501, 21.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234570, 40.664238, 21.702608>,  <36.905876, 40.432316, 21.401388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234570, 40.664238, 21.702608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197815, 40.266464, 21.723219>,  <36.175762, 40.027802, 21.735586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197815, 40.266464, 21.723219>,  <36.234570, 40.664238, 21.702608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197815, 40.266464, 21.723219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201433, 0.069240, 0.977052,
		-0.975183, 0.079396, -0.206674,
		-0.091884, -0.994436, 0.051528,
		36.170250, 39.968132, 21.738678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583057, 40.567554, 22.032763>,  <36.234570, 40.664238, 21.702608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583057, 40.567554, 22.032763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822491, 40.247887, 22.054775>,  <35.966152, 40.056087, 22.067982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822491, 40.247887, 22.054775>,  <35.583057, 40.567554, 22.032763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822491, 40.247887, 22.054775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149981, -0.044324, 0.987695,
		-0.786895, -0.599471, -0.146391,
		0.598583, -0.799169, 0.055031,
		36.002064, 40.008137, 22.071285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314835, 40.198177, 22.648779>,  <35.583057, 40.567554, 22.032763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314835, 40.198177, 22.648779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617390, 39.951958, 22.560249>,  <35.798923, 39.804226, 22.507132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617390, 39.951958, 22.560249>,  <35.314835, 40.198177, 22.648779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617390, 39.951958, 22.560249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095321, -0.438463, 0.893680,
		-0.647145, -0.654869, -0.390321,
		0.756385, -0.615546, -0.221326,
		35.844307, 39.767296, 22.493851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095974, 39.496578, 22.761160>,  <35.314835, 40.198177, 22.648779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095974, 39.496578, 22.761160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492714, 39.526604, 22.802341>,  <35.730759, 39.544621, 22.827049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492714, 39.526604, 22.802341>,  <35.095974, 39.496578, 22.761160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492714, 39.526604, 22.802341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056852, -0.462399, 0.884847,
		0.114024, -0.883489, -0.454363,
		0.991850, 0.075062, 0.102953,
		35.790268, 39.549122, 22.833227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347404, 38.834091, 23.122158>,  <35.095974, 39.496578, 22.761160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347404, 38.834091, 23.122158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660851, 39.073792, 23.187698>,  <35.848919, 39.217613, 23.227022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660851, 39.073792, 23.187698>,  <35.347404, 38.834091, 23.122158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660851, 39.073792, 23.187698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106155, -0.130709, 0.985721,
		0.612113, -0.789817, -0.038811,
		0.783613, 0.599253, 0.163852,
		35.895935, 39.253567, 23.236855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809460, 38.459122, 23.584440>,  <35.347404, 38.834091, 23.122158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809460, 38.459122, 23.584440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955246, 38.830566, 23.612299>,  <36.042717, 39.053432, 23.629013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955246, 38.830566, 23.612299>,  <35.809460, 38.459122, 23.584440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955246, 38.830566, 23.612299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158674, -0.135623, 0.977972,
		0.917600, -0.345383, -0.196776,
		0.364462, 0.928610, 0.069645,
		36.064583, 39.109150, 23.633192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444267, 38.408714, 24.026936>,  <35.809460, 38.459122, 23.584440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444267, 38.408714, 24.026936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305832, 38.783493, 24.046320>,  <36.222771, 39.008362, 24.057951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305832, 38.783493, 24.046320>,  <36.444267, 38.408714, 24.026936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305832, 38.783493, 24.046320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050190, -0.033091, 0.998191,
		0.936857, 0.347898, -0.035573,
		-0.346092, 0.936948, 0.048462,
		36.202003, 39.064579, 24.060858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904461, 38.826927, 24.454981>,  <36.444267, 38.408714, 24.026936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904461, 38.826927, 24.454981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583069, 39.061367, 24.496752>,  <36.390232, 39.202030, 24.521814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583069, 39.061367, 24.496752>,  <36.904461, 38.826927, 24.454981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583069, 39.061367, 24.496752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080083, -0.067408, 0.994506,
		0.589917, 0.807432, 0.007225,
		-0.803483, 0.586097, 0.104427,
		36.342026, 39.237198, 24.528080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071796, 39.350143, 24.945087>,  <36.904461, 38.826927, 24.454981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071796, 39.350143, 24.945087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673908, 39.309460, 24.950613>,  <36.435177, 39.285049, 24.953928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673908, 39.309460, 24.950613>,  <37.071796, 39.350143, 24.945087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673908, 39.309460, 24.950613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025922, -0.118694, 0.992593,
		-0.099319, 0.987708, 0.120704,
		-0.994718, -0.101712, 0.013815,
		36.375492, 39.278946, 24.954758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839916, 39.799099, 25.512964>,  <37.071796, 39.350143, 24.945087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839916, 39.799099, 25.512964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535263, 39.555935, 25.423203>,  <36.352470, 39.410038, 25.369345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535263, 39.555935, 25.423203>,  <36.839916, 39.799099, 25.512964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535263, 39.555935, 25.423203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102289, -0.229175, 0.967996,
		-0.639881, 0.760215, 0.112365,
		-0.761636, -0.607909, -0.224406,
		36.306774, 39.373562, 25.355881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429062, 39.990837, 25.964706>,  <36.839916, 39.799099, 25.512964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429062, 39.990837, 25.964706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316338, 39.619091, 25.869320>,  <36.248703, 39.396042, 25.812088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316338, 39.619091, 25.869320>,  <36.429062, 39.990837, 25.964706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316338, 39.619091, 25.869320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231032, -0.175498, 0.956987,
		-0.931241, 0.324778, -0.165256,
		-0.281807, -0.929365, -0.238465,
		36.231796, 39.340282, 25.797781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810863, 39.883686, 26.324217>,  <36.429062, 39.990837, 25.964706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810863, 39.883686, 26.324217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937424, 39.510319, 26.256544>,  <36.013359, 39.286297, 26.215940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937424, 39.510319, 26.256544>,  <35.810863, 39.883686, 26.324217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937424, 39.510319, 26.256544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136578, -0.221307, 0.965593,
		-0.938744, -0.282404, -0.197505,
		0.316397, -0.933419, -0.169180,
		36.032341, 39.230293, 26.205790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307762, 39.449978, 26.684778>,  <35.810863, 39.883686, 26.324217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307762, 39.449978, 26.684778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615021, 39.203358, 26.615713>,  <35.799377, 39.055386, 26.574274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615021, 39.203358, 26.615713>,  <35.307762, 39.449978, 26.684778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615021, 39.203358, 26.615713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127352, -0.411411, 0.902509,
		-0.627481, -0.671270, -0.394543,
		0.768146, -0.616554, -0.172665,
		35.845467, 39.018391, 26.563913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138512, 38.859016, 26.877705>,  <35.307762, 39.449978, 26.684778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138512, 38.859016, 26.877705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537491, 38.844296, 26.902205>,  <35.776878, 38.835464, 26.916904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537491, 38.844296, 26.902205>,  <35.138512, 38.859016, 26.877705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537491, 38.844296, 26.902205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070269, -0.349751, 0.934203,
		-0.012957, -0.936119, -0.351443,
		0.997444, -0.036799, 0.061248,
		35.836723, 38.833256, 26.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237312, 38.352039, 27.289326>,  <35.138512, 38.859016, 26.877705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237312, 38.352039, 27.289326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605553, 38.508148, 27.294868>,  <35.826496, 38.601814, 27.298193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605553, 38.508148, 27.294868>,  <35.237312, 38.352039, 27.289326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605553, 38.508148, 27.294868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126443, -0.331455, 0.934960,
		0.369479, -0.858969, -0.354483,
		0.920596, 0.390270, 0.013855,
		35.881733, 38.625229, 27.299025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761475, 37.781132, 27.476974>,  <35.237312, 38.352039, 27.289326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761475, 37.781132, 27.476974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944008, 38.121784, 27.580114>,  <36.053528, 38.326176, 27.641998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944008, 38.121784, 27.580114>,  <35.761475, 37.781132, 27.476974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944008, 38.121784, 27.580114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124042, -0.347839, 0.929312,
		0.881120, -0.392093, -0.264369,
		0.456334, 0.851629, 0.257852,
		36.080910, 38.377274, 27.657471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331367, 37.609169, 27.894867>,  <35.761475, 37.781132, 27.476974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331367, 37.609169, 27.894867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264244, 37.997860, 27.961302>,  <36.223969, 38.231075, 28.001163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264244, 37.997860, 27.961302>,  <36.331367, 37.609169, 27.894867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264244, 37.997860, 27.961302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187994, -0.133842, 0.973008,
		0.967729, 0.194502, -0.160219,
		-0.167808, 0.971728, 0.166088,
		36.213902, 38.289379, 28.011127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.582607, 37.363190, 32.177616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332085, 37.670269, 32.123386>,  <40.181770, 37.854515, 32.090847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332085, 37.670269, 32.123386>,  <40.582607, 37.363190, 32.177616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332085, 37.670269, 32.123386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206865, 0.331336, 0.920556,
		0.751628, 0.548506, -0.366328,
		-0.626309, 0.767696, -0.135575,
		40.144192, 37.900578, 32.082714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007439, 37.860645, 32.393551>,  <40.582607, 37.363190, 32.177616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007439, 37.860645, 32.393551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626057, 37.980572, 32.406384>,  <40.397228, 38.052528, 32.414082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626057, 37.980572, 32.406384>,  <41.007439, 37.860645, 32.393551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626057, 37.980572, 32.406384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126246, 0.300317, 0.945448,
		0.273822, 0.905496, -0.324190,
		-0.953459, 0.299812, 0.032081,
		40.340019, 38.070515, 32.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047493, 38.554516, 32.708683>,  <41.007439, 37.860645, 32.393551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047493, 38.554516, 32.708683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657753, 38.467438, 32.731461>,  <40.423908, 38.415192, 32.745129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657753, 38.467438, 32.731461>,  <41.047493, 38.554516, 32.708683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657753, 38.467438, 32.731461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023593, 0.350495, 0.936267,
		-0.223782, 0.910912, -0.346642,
		-0.974354, -0.217699, 0.056944,
		40.365448, 38.402126, 32.748543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851486, 39.006214, 33.182583>,  <41.047493, 38.554516, 32.708683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851486, 39.006214, 33.182583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525726, 38.774597, 33.197918>,  <40.330273, 38.635628, 33.207119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525726, 38.774597, 33.197918>,  <40.851486, 39.006214, 33.182583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525726, 38.774597, 33.197918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045736, 0.001817, 0.998952,
		-0.578502, 0.815298, 0.025003,
		-0.814398, -0.579039, 0.038339,
		40.281406, 38.600887, 33.209419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369308, 39.312054, 33.683712>,  <40.851486, 39.006214, 33.182583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369308, 39.312054, 33.683712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253551, 38.932964, 33.629940>,  <40.184097, 38.705509, 33.597675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253551, 38.932964, 33.629940>,  <40.369308, 39.312054, 33.683712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253551, 38.932964, 33.629940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180141, -0.084013, 0.980047,
		-0.940108, 0.307832, -0.146411,
		-0.289389, -0.947724, -0.134434,
		40.166737, 38.648647, 33.589611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589951, 39.281071, 33.850353>,  <40.369308, 39.312054, 33.683712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589951, 39.281071, 33.850353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772434, 38.926758, 33.884460>,  <39.881924, 38.714172, 33.904926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772434, 38.926758, 33.884460>,  <39.589951, 39.281071, 33.850353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772434, 38.926758, 33.884460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422967, -0.131537, 0.896547,
		-0.782927, -0.445076, -0.434663,
		0.456206, -0.885780, 0.085268,
		39.909294, 38.661022, 33.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128891, 38.880638, 34.162605>,  <39.589951, 39.281071, 33.850353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128891, 38.880638, 34.162605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467258, 38.676399, 34.224197>,  <39.670280, 38.553856, 34.261150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467258, 38.676399, 34.224197>,  <39.128891, 38.880638, 34.162605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467258, 38.676399, 34.224197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200509, -0.036963, 0.978994,
		-0.494176, -0.859027, -0.133647,
		0.845923, -0.510593, 0.153977,
		39.721035, 38.523220, 34.270390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932133, 38.316364, 34.621979>,  <39.128891, 38.880638, 34.162605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932133, 38.316364, 34.621979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.330822, 38.306194, 34.652672>,  <39.570038, 38.300091, 34.671089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.330822, 38.306194, 34.652672>,  <38.932133, 38.316364, 34.621979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330822, 38.306194, 34.652672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080785, -0.279315, 0.956795,
		-0.002897, -0.959863, -0.280455,
		0.996727, -0.025429, 0.076733,
		39.629841, 38.298565, 34.675694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159969, 37.663605, 34.920738>,  <38.932133, 38.316364, 34.621979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159969, 37.663605, 34.920738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426544, 37.942139, 35.027306>,  <39.586491, 38.109261, 35.091244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426544, 37.942139, 35.027306>,  <39.159969, 37.663605, 34.920738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426544, 37.942139, 35.027306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073554, -0.294187, 0.952913,
		0.741922, -0.654655, -0.144840,
		0.666440, 0.696334, 0.266417,
		39.626476, 38.151039, 35.107231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663658, 37.314362, 35.505154>,  <39.159969, 37.663605, 34.920738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663658, 37.314362, 35.505154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748226, 37.705059, 35.519413>,  <39.798969, 37.939476, 35.527969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748226, 37.705059, 35.519413>,  <39.663658, 37.314362, 35.505154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748226, 37.705059, 35.519413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172655, -0.073225, 0.982257,
		0.962024, -0.201517, -0.184121,
		0.211424, 0.976744, 0.035651,
		39.811653, 37.998081, 35.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230965, 37.449070, 35.956589>,  <39.663658, 37.314362, 35.505154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230965, 37.449070, 35.956589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047234, 37.803905, 35.974926>,  <39.936996, 38.016808, 35.985928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047234, 37.803905, 35.974926>,  <40.230965, 37.449070, 35.956589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047234, 37.803905, 35.974926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130021, 0.016094, 0.991381,
		0.878700, 0.461327, -0.122732,
		-0.459326, 0.887084, 0.045840,
		39.909435, 38.070030, 35.988678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555477, 37.751389, 36.485523>,  <40.230965, 37.449070, 35.956589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555477, 37.751389, 36.485523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233009, 37.985451, 36.450443>,  <40.039528, 38.125889, 36.429398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233009, 37.985451, 36.450443>,  <40.555477, 37.751389, 36.485523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233009, 37.985451, 36.450443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001617, 0.150392, 0.988625,
		0.591688, 0.796853, -0.122187,
		-0.806165, 0.585156, -0.087697,
		39.991161, 38.160999, 36.424133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639442, 38.540405, 36.647278>,  <40.555477, 37.751389, 36.485523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639442, 38.540405, 36.647278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296131, 38.345928, 36.712978>,  <40.090145, 38.229244, 36.752399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296131, 38.345928, 36.712978>,  <40.639442, 38.540405, 36.647278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296131, 38.345928, 36.712978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134658, 0.095484, 0.986281,
		-0.495202, 0.868622, -0.016483,
		-0.858279, -0.486189, 0.164251,
		40.038647, 38.200073, 36.762253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137203, 38.864132, 37.197983>,  <40.639442, 38.540405, 36.647278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137203, 38.864132, 37.197983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.088604, 38.467922, 37.172401>,  <40.059444, 38.230194, 37.157051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.088604, 38.467922, 37.172401>,  <40.137203, 38.864132, 37.197983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088604, 38.467922, 37.172401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130193, -0.079778, 0.988274,
		-0.984016, 0.111751, 0.138653,
		-0.121502, -0.990529, -0.063954,
		40.052155, 38.170765, 37.153214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202682, 39.521805, 37.507389>,  <40.137203, 38.864132, 37.197983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202682, 39.521805, 37.507389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.424591, 39.807076, 37.678783>,  <40.557735, 39.978237, 37.781620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.424591, 39.807076, 37.678783>,  <40.202682, 39.521805, 37.507389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424591, 39.807076, 37.678783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021245, 0.502696, -0.864202,
		-0.831730, 0.488540, 0.263732,
		0.554774, 0.713180, 0.428486,
		40.591022, 40.021030, 37.807331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863541, 40.133808, 37.435951>,  <40.202682, 39.521805, 37.507389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863541, 40.133808, 37.435951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250679, 40.225548, 37.477280>,  <40.482964, 40.280594, 37.502075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250679, 40.225548, 37.477280>,  <39.863541, 40.133808, 37.435951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250679, 40.225548, 37.477280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026646, 0.501890, -0.864521,
		-0.250134, 0.833969, 0.491863,
		0.967845, 0.229352, 0.103317,
		40.541031, 40.294353, 37.508274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906914, 40.796703, 37.276733>,  <39.863541, 40.133808, 37.435951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906914, 40.796703, 37.276733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291721, 40.691208, 37.248528>,  <40.522606, 40.627911, 37.231602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291721, 40.691208, 37.248528>,  <39.906914, 40.796703, 37.276733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291721, 40.691208, 37.248528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065721, 0.474443, -0.877829,
		0.264970, 0.839850, 0.473754,
		0.962014, -0.263734, -0.070517,
		40.580326, 40.612087, 37.227371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212780, 41.403191, 37.126606>,  <39.906914, 40.796703, 37.276733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212780, 41.403191, 37.126606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483223, 41.126358, 37.025494>,  <40.645489, 40.960258, 36.964828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483223, 41.126358, 37.025494>,  <40.212780, 41.403191, 37.126606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483223, 41.126358, 37.025494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162447, 0.474648, -0.865055,
		0.718672, 0.543807, 0.433341,
		0.676108, -0.692086, -0.252776,
		40.686054, 40.918732, 36.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789738, 41.675545, 36.720287>,  <40.212780, 41.403191, 37.126606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789738, 41.675545, 36.720287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837341, 41.290901, 36.621380>,  <40.865902, 41.060116, 36.562035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837341, 41.290901, 36.621380>,  <40.789738, 41.675545, 36.720287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837341, 41.290901, 36.621380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023884, 0.251736, -0.967501,
		0.992606, 0.109232, 0.052925,
		0.119005, -0.961612, -0.247266,
		40.873043, 41.002419, 36.547199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258270, 41.662952, 36.079147>,  <40.789738, 41.675545, 36.720287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258270, 41.662952, 36.079147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048935, 41.322102, 36.079628>,  <40.923332, 41.117592, 36.079918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048935, 41.322102, 36.079628>,  <41.258270, 41.662952, 36.079147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048935, 41.322102, 36.079628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117545, 0.070789, -0.990541,
		0.843980, -0.518529, -0.137210,
		-0.523337, -0.852125, 0.001206,
		40.891933, 41.066463, 36.079990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597855, 41.201157, 35.546188>,  <41.258270, 41.662952, 36.079147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597855, 41.201157, 35.546188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226425, 41.071640, 35.618759>,  <41.003567, 40.993931, 35.662300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226425, 41.071640, 35.618759>,  <41.597855, 41.201157, 35.546188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226425, 41.071640, 35.618759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203482, 0.035316, -0.978442,
		0.310409, -0.945467, -0.098680,
		-0.928570, -0.323797, 0.181423,
		40.947853, 40.974503, 35.673187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491032, 40.783478, 34.914639>,  <41.597855, 41.201157, 35.546188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491032, 40.783478, 34.914639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132847, 40.829948, 35.086521>,  <40.917934, 40.857830, 35.189651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132847, 40.829948, 35.086521>,  <41.491032, 40.783478, 34.914639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132847, 40.829948, 35.086521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444756, -0.193923, -0.874406,
		-0.018256, -0.974113, 0.225322,
		-0.895466, 0.116176, 0.429702,
		40.864208, 40.864799, 35.215431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152531, 40.229610, 34.727646>,  <41.491032, 40.783478, 34.914639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152531, 40.229610, 34.727646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880470, 40.514236, 34.798157>,  <40.717236, 40.685013, 34.840462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880470, 40.514236, 34.798157>,  <41.152531, 40.229610, 34.727646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880470, 40.514236, 34.798157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383247, -0.140164, -0.912949,
		-0.624914, -0.688499, 0.368037,
		-0.680150, 0.711564, 0.176275,
		40.676426, 40.727707, 34.851040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525986, 40.003048, 34.486805>,  <41.152531, 40.229610, 34.727646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525986, 40.003048, 34.486805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447662, 40.393566, 34.523708>,  <40.400669, 40.627876, 34.545853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447662, 40.393566, 34.523708>,  <40.525986, 40.003048, 34.486805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447662, 40.393566, 34.523708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347589, 0.018878, -0.937457,
		-0.916973, -0.215632, 0.335652,
		-0.195809, 0.976292, 0.092262,
		40.388920, 40.686455, 34.551388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912701, 40.013203, 34.142769>,  <40.525986, 40.003048, 34.486805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912701, 40.013203, 34.142769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.052322, 40.387550, 34.161961>,  <40.136093, 40.612160, 34.173477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.052322, 40.387550, 34.161961>,  <39.912701, 40.013203, 34.142769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052322, 40.387550, 34.161961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379447, 0.187969, -0.905918,
		-0.856844, 0.298006, 0.420726,
		0.349052, 0.935874, 0.047983,
		40.157040, 40.668312, 34.176357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439728, 40.478630, 33.941296>,  <39.912701, 40.013203, 34.142769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439728, 40.478630, 33.941296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741669, 40.719769, 33.837929>,  <39.922832, 40.864452, 33.775909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741669, 40.719769, 33.837929>,  <39.439728, 40.478630, 33.941296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741669, 40.719769, 33.837929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385383, 0.088841, -0.918470,
		-0.530737, 0.792897, 0.299388,
		0.754850, 0.602845, -0.258418,
		39.968124, 40.900623, 33.760403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130154, 40.919739, 33.436012>,  <39.439728, 40.478630, 33.941296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130154, 40.919739, 33.436012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527817, 40.947155, 33.402679>,  <39.766415, 40.963604, 33.382679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527817, 40.947155, 33.402679>,  <39.130154, 40.919739, 33.436012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527817, 40.947155, 33.402679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094823, 0.186485, -0.977871,
		-0.051484, 0.980064, 0.191896,
		0.994162, 0.068541, -0.083332,
		39.826065, 40.967716, 33.377682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270931, 41.562084, 33.117615>,  <39.130154, 40.919739, 33.436012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270931, 41.562084, 33.117615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585629, 41.334942, 33.020798>,  <39.774445, 41.198658, 32.962708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585629, 41.334942, 33.020798>,  <39.270931, 41.562084, 33.117615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585629, 41.334942, 33.020798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112809, 0.253234, -0.960805,
		0.606889, 0.783208, 0.135170,
		0.786740, -0.567854, -0.242038,
		39.821651, 41.164585, 32.948185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270081, 42.332741, 32.975574>,  <39.270931, 41.562084, 33.117615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270081, 42.332741, 32.975574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032524, 42.643803, 32.893066>,  <38.889992, 42.830441, 32.843559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032524, 42.643803, 32.893066>,  <39.270081, 42.332741, 32.975574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032524, 42.643803, 32.893066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293196, 0.029562, 0.955595,
		0.749223, 0.627994, 0.210449,
		-0.593887, 0.777656, -0.206274,
		38.854359, 42.877098, 32.831184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280357, 42.780136, 33.584934>,  <39.270081, 42.332741, 32.975574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280357, 42.780136, 33.584934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975494, 42.922535, 33.368641>,  <38.792576, 43.007973, 33.238865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975494, 42.922535, 33.368641>,  <39.280357, 42.780136, 33.584934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975494, 42.922535, 33.368641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447876, 0.313174, 0.837454,
		0.467472, 0.880449, -0.079245,
		-0.762153, 0.355994, -0.540732,
		38.746849, 43.029335, 33.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149601, 43.358345, 33.746674>,  <39.280357, 42.780136, 33.584934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149601, 43.358345, 33.746674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790710, 43.259491, 33.600296>,  <38.575378, 43.200180, 33.512470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790710, 43.259491, 33.600296>,  <39.149601, 43.358345, 33.746674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790710, 43.259491, 33.600296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392202, 0.065205, 0.917565,
		-0.202900, 0.966785, -0.155430,
		-0.897223, -0.247133, -0.365945,
		38.521545, 43.185352, 33.490513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751480, 43.810257, 34.010712>,  <39.149601, 43.358345, 33.746674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751480, 43.810257, 34.010712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516117, 43.507500, 33.896942>,  <38.374901, 43.325848, 33.828682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516117, 43.507500, 33.896942>,  <38.751480, 43.810257, 34.010712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516117, 43.507500, 33.896942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434687, -0.000495, 0.900582,
		-0.681782, 0.653542, -0.328719,
		-0.588405, -0.756890, -0.284424,
		38.339596, 43.280434, 33.811615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075211, 43.991879, 34.217648>,  <38.751480, 43.810257, 34.010712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075211, 43.991879, 34.217648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046741, 43.597343, 34.158230>,  <38.029659, 43.360622, 34.122578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046741, 43.597343, 34.158230>,  <38.075211, 43.991879, 34.217648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046741, 43.597343, 34.158230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474370, -0.097537, 0.874906,
		-0.877444, 0.132733, -0.460949,
		-0.071170, -0.986341, -0.148548,
		38.025391, 43.301441, 34.113667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332066, 43.852116, 34.226070>,  <38.075211, 43.991879, 34.217648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332066, 43.852116, 34.226070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531460, 43.513767, 34.301971>,  <37.651096, 43.310757, 34.347511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531460, 43.513767, 34.301971>,  <37.332066, 43.852116, 34.226070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531460, 43.513767, 34.301971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529995, -0.124151, 0.838863,
		-0.686015, -0.518732, -0.510197,
		0.498487, -0.845874, 0.189757,
		37.681007, 43.260006, 34.358898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818832, 43.450764, 34.459442>,  <37.332066, 43.852116, 34.226070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818832, 43.450764, 34.459442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132938, 43.222881, 34.556435>,  <37.321400, 43.086151, 34.614628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132938, 43.222881, 34.556435>,  <36.818832, 43.450764, 34.459442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132938, 43.222881, 34.556435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471410, -0.296221, 0.830678,
		-0.401420, -0.766604, -0.501179,
		0.785261, -0.569711, 0.242476,
		37.368515, 43.051968, 34.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629833, 42.770523, 34.426781>,  <36.818832, 43.450764, 34.459442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629833, 42.770523, 34.426781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929020, 42.809883, 34.689339>,  <37.108532, 42.833500, 34.846874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929020, 42.809883, 34.689339>,  <36.629833, 42.770523, 34.426781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929020, 42.809883, 34.689339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604598, -0.307051, 0.734970,
		0.273868, -0.946593, -0.170173,
		0.747969, 0.098398, 0.656399,
		37.153412, 42.839401, 34.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653885, 42.159763, 34.791595>,  <36.629833, 42.770523, 34.426781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653885, 42.159763, 34.791595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868683, 42.363819, 35.060337>,  <36.997562, 42.486252, 35.221584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868683, 42.363819, 35.060337>,  <36.653885, 42.159763, 34.791595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868683, 42.363819, 35.060337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339630, -0.598291, 0.725740,
		0.772194, -0.617904, -0.148023,
		0.536999, 0.510139, 0.671856,
		37.029781, 42.516861, 35.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026009, 41.594490, 35.283752>,  <36.653885, 42.159763, 34.791595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026009, 41.594490, 35.283752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019402, 41.949078, 35.468750>,  <37.015438, 42.161831, 35.579750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019402, 41.949078, 35.468750>,  <37.026009, 41.594490, 35.283752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019402, 41.949078, 35.468750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215766, -0.454820, 0.864051,
		0.976305, -0.085519, 0.198782,
		-0.016517, 0.886467, 0.462496,
		37.014446, 42.215019, 35.607498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273102, 41.458317, 35.988800>,  <37.026009, 41.594490, 35.283752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273102, 41.458317, 35.988800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.082302, 41.807838, 36.026604>,  <36.967823, 42.017551, 36.049286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.082302, 41.807838, 36.026604>,  <37.273102, 41.458317, 35.988800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082302, 41.807838, 36.026604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304899, -0.265366, 0.914668,
		0.824324, 0.407479, 0.393002,
		-0.476997, 0.873809, 0.094508,
		36.939201, 42.069981, 36.054955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362064, 41.680321, 36.704819>,  <37.273102, 41.458317, 35.988800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362064, 41.680321, 36.704819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040951, 41.869320, 36.559338>,  <36.848282, 41.982719, 36.472050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040951, 41.869320, 36.559338>,  <37.362064, 41.680321, 36.704819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040951, 41.869320, 36.559338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530517, -0.287567, 0.797406,
		0.272187, 0.833096, 0.481524,
		-0.802786, 0.472500, -0.363700,
		36.800114, 42.011070, 36.450226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.819859, 42.907211, 29.501139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453331, 43.052788, 29.434309>,  <40.233414, 43.140133, 29.394211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453331, 43.052788, 29.434309>,  <40.819859, 42.907211, 29.501139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453331, 43.052788, 29.434309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190201, -0.028379, 0.981335,
		0.352402, 0.930991, 0.095225,
		-0.916317, 0.363937, -0.167074,
		40.178436, 43.161968, 29.384186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690384, 43.388504, 29.998308>,  <40.819859, 42.907211, 29.501139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690384, 43.388504, 29.998308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319180, 43.292946, 29.883957>,  <40.096458, 43.235611, 29.815346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319180, 43.292946, 29.883957>,  <40.690384, 43.388504, 29.998308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319180, 43.292946, 29.883957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284582, -0.040667, 0.957789,
		-0.240435, 0.970194, -0.030245,
		-0.928011, -0.238894, -0.285878,
		40.040775, 43.221279, 29.798193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218971, 43.829357, 30.392918>,  <40.690384, 43.388504, 29.998308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218971, 43.829357, 30.392918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011456, 43.506477, 30.280285>,  <39.886948, 43.312752, 30.212706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011456, 43.506477, 30.280285>,  <40.218971, 43.829357, 30.392918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011456, 43.506477, 30.280285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399298, -0.062451, 0.914692,
		-0.755922, 0.586969, -0.289913,
		-0.518790, -0.807197, -0.281584,
		39.855820, 43.264317, 30.195810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447655, 44.076519, 30.447304>,  <40.218971, 43.829357, 30.392918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447655, 44.076519, 30.447304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450779, 43.676567, 30.441990>,  <39.452652, 43.436596, 30.438801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450779, 43.676567, 30.441990>,  <39.447655, 44.076519, 30.447304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450779, 43.676567, 30.441990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576275, -0.015358, 0.817111,
		-0.817218, 0.001273, -0.576327,
		0.007811, -0.999881, -0.013285,
		39.453121, 43.376602, 30.438005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667381, 43.858841, 30.516640>,  <39.447655, 44.076519, 30.447304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667381, 43.858841, 30.516640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910892, 43.559280, 30.621353>,  <39.056999, 43.379543, 30.684181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910892, 43.559280, 30.621353>,  <38.667381, 43.858841, 30.516640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910892, 43.559280, 30.621353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393564, 0.001418, 0.919296,
		-0.688833, -0.662680, -0.293877,
		0.608783, -0.748901, 0.261784,
		39.093529, 43.334610, 30.699888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218353, 43.351227, 30.938150>,  <38.667381, 43.858841, 30.516640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218353, 43.351227, 30.938150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598217, 43.267208, 31.031120>,  <38.826138, 43.216797, 31.086903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598217, 43.267208, 31.031120>,  <38.218353, 43.351227, 30.938150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598217, 43.267208, 31.031120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234935, 0.013282, 0.971920,
		-0.207231, -0.977602, -0.036733,
		0.949663, -0.210042, 0.232426,
		38.883118, 43.204197, 31.100847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227943, 42.785187, 31.305561>,  <38.218353, 43.351227, 30.938150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227943, 42.785187, 31.305561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580833, 42.935532, 31.418989>,  <38.792568, 43.025738, 31.487045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580833, 42.935532, 31.418989>,  <38.227943, 42.785187, 31.305561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580833, 42.935532, 31.418989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241658, -0.155424, 0.957833,
		0.404084, -0.913550, -0.046289,
		0.882223, 0.375859, 0.283571,
		38.845501, 43.048290, 31.504061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500935, 42.308414, 31.842655>,  <38.227943, 42.785187, 31.305561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500935, 42.308414, 31.842655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703941, 42.644985, 31.916872>,  <38.825745, 42.846928, 31.961403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703941, 42.644985, 31.916872>,  <38.500935, 42.308414, 31.842655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703941, 42.644985, 31.916872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129909, -0.138152, 0.981854,
		0.851793, -0.522411, 0.039195,
		0.507516, 0.841428, 0.185543,
		38.856197, 42.897415, 31.972534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834167, 42.143433, 32.377254>,  <38.500935, 42.308414, 31.842655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834167, 42.143433, 32.377254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827351, 42.543102, 32.362457>,  <38.823261, 42.782902, 32.353580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827351, 42.543102, 32.362457>,  <38.834167, 42.143433, 32.377254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827351, 42.543102, 32.362457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294230, 0.030344, 0.955253,
		0.955582, 0.027167, 0.293469,
		-0.017047, 0.999170, -0.036990,
		38.822235, 42.842854, 32.351360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571224, 41.870220, 32.450306>,  <38.834167, 42.143433, 32.377254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571224, 41.870220, 32.450306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730278, 41.503262, 32.443634>,  <39.825710, 41.283089, 32.439629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730278, 41.503262, 32.443634>,  <39.571224, 41.870220, 32.450306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730278, 41.503262, 32.443634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221399, 0.113575, -0.968547,
		0.890433, 0.381433, 0.248271,
		0.397633, -0.917393, -0.016682,
		39.849567, 41.228043, 32.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022949, 41.884701, 32.002705>,  <39.571224, 41.870220, 32.450306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022949, 41.884701, 32.002705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998039, 41.485657, 32.014637>,  <39.983093, 41.246231, 32.021797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998039, 41.485657, 32.014637>,  <40.022949, 41.884701, 32.002705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998039, 41.485657, 32.014637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012019, -0.029135, -0.999503,
		0.997987, -0.062602, -0.010176,
		-0.062274, -0.997613, 0.029829,
		39.979359, 41.186371, 32.023586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387150, 41.712643, 31.506699>,  <40.022949, 41.884701, 32.002705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387150, 41.712643, 31.506699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158806, 41.394470, 31.588085>,  <40.021797, 41.203568, 31.636917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158806, 41.394470, 31.588085>,  <40.387150, 41.712643, 31.506699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158806, 41.394470, 31.588085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041347, -0.219650, -0.974702,
		0.820003, -0.564835, 0.092502,
		-0.570864, -0.795434, 0.203468,
		39.987545, 41.155842, 31.649126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697910, 41.086338, 31.253250>,  <40.387150, 41.712643, 31.506699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697910, 41.086338, 31.253250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321564, 40.952168, 31.272245>,  <40.095757, 40.871666, 31.283642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321564, 40.952168, 31.272245>,  <40.697910, 41.086338, 31.253250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321564, 40.952168, 31.272245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076011, -0.345630, -0.935287,
		0.330130, -0.876374, 0.350689,
		-0.940870, -0.335422, 0.047489,
		40.039303, 40.851540, 31.286491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688984, 40.487698, 30.889299>,  <40.697910, 41.086338, 31.253250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688984, 40.487698, 30.889299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304790, 40.595516, 30.917049>,  <40.074276, 40.660206, 30.933699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304790, 40.595516, 30.917049>,  <40.688984, 40.487698, 30.889299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304790, 40.595516, 30.917049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202062, -0.503861, -0.839818,
		-0.191415, -0.820651, 0.538417,
		-0.960485, 0.269548, 0.069376,
		40.016644, 40.676380, 30.937862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493832, 39.844036, 30.746153>,  <40.688984, 40.487698, 30.889299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493832, 39.844036, 30.746153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224960, 40.131935, 30.676718>,  <40.063637, 40.304676, 30.635057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224960, 40.131935, 30.676718>,  <40.493832, 39.844036, 30.746153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224960, 40.131935, 30.676718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165311, -0.374437, -0.912398,
		-0.721695, -0.584601, 0.370672,
		-0.672182, 0.719748, -0.173588,
		40.023304, 40.347858, 30.624641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925816, 39.507149, 30.549255>,  <40.493832, 39.844036, 30.746153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925816, 39.507149, 30.549255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921513, 39.875786, 30.394054>,  <39.918930, 40.096970, 30.300934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921513, 39.875786, 30.394054>,  <39.925816, 39.507149, 30.549255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921513, 39.875786, 30.394054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175554, -0.383741, -0.906600,
		-0.984411, 0.058362, 0.165918,
		-0.010758, 0.921595, -0.388004,
		39.918285, 40.152264, 30.277653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356258, 39.551521, 30.068853>,  <39.925816, 39.507149, 30.549255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356258, 39.551521, 30.068853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559566, 39.885002, 29.982494>,  <39.681549, 40.085091, 29.930679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559566, 39.885002, 29.982494>,  <39.356258, 39.551521, 30.068853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559566, 39.885002, 29.982494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099359, -0.192255, -0.976302,
		-0.855449, 0.517673, -0.014881,
		0.508266, 0.833698, -0.215900,
		39.712048, 40.135113, 29.917725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999821, 39.841549, 29.527302>,  <39.356258, 39.551521, 30.068853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999821, 39.841549, 29.527302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361683, 40.011852, 29.520090>,  <39.578800, 40.114033, 29.515762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361683, 40.011852, 29.520090>,  <38.999821, 39.841549, 29.527302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361683, 40.011852, 29.520090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080062, -0.211374, -0.974121,
		-0.418547, 0.879804, -0.225308,
		0.904659, 0.425754, -0.018031,
		39.633080, 40.139580, 29.514681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992371, 40.338036, 28.974190>,  <38.999821, 39.841549, 29.527302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992371, 40.338036, 28.974190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378803, 40.248051, 29.024921>,  <39.610661, 40.194057, 29.055361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378803, 40.248051, 29.024921>,  <38.992371, 40.338036, 28.974190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378803, 40.248051, 29.024921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108663, -0.091424, -0.989866,
		0.234280, 0.970068, -0.063878,
		0.966077, -0.224965, 0.126830,
		39.668625, 40.180561, 29.062971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351299, 40.734154, 28.470016>,  <38.992371, 40.338036, 28.974190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351299, 40.734154, 28.470016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623352, 40.451031, 28.546352>,  <39.786583, 40.281155, 28.592154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623352, 40.451031, 28.546352>,  <39.351299, 40.734154, 28.470016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623352, 40.451031, 28.546352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234295, -0.036794, -0.971469,
		0.694637, 0.705445, 0.140812,
		0.680136, -0.707810, 0.190841,
		39.827393, 40.238689, 28.603605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002155, 40.975460, 28.218567>,  <39.351299, 40.734154, 28.470016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002155, 40.975460, 28.218567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034809, 40.576874, 28.226576>,  <40.054401, 40.337723, 28.231380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034809, 40.576874, 28.226576>,  <40.002155, 40.975460, 28.218567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034809, 40.576874, 28.226576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403832, 0.014705, -0.914715,
		0.911183, 0.082760, 0.403603,
		0.081636, -0.996461, 0.020023,
		40.059299, 40.277935, 28.232582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696266, 40.866852, 27.928017>,  <40.002155, 40.975460, 28.218567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696266, 40.866852, 27.928017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455780, 40.547760, 27.909393>,  <40.311489, 40.356304, 27.898220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455780, 40.547760, 27.909393>,  <40.696266, 40.866852, 27.928017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455780, 40.547760, 27.909393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149254, -0.054866, -0.987275,
		0.785026, -0.600512, 0.152051,
		-0.601213, -0.797731, -0.046558,
		40.275417, 40.308441, 27.895426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103855, 40.320503, 27.547680>,  <40.696266, 40.866852, 27.928017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103855, 40.320503, 27.547680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718861, 40.215828, 27.519005>,  <40.487865, 40.153023, 27.501799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718861, 40.215828, 27.519005>,  <41.103855, 40.320503, 27.547680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718861, 40.215828, 27.519005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094615, -0.076066, -0.992604,
		0.254304, -0.962149, 0.097972,
		-0.962485, -0.261693, -0.071689,
		40.430115, 40.137321, 27.497498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.389500, 41.337200, 26.896486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.783058, 41.404732, 26.919949>,  <35.019196, 41.445251, 26.934025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.783058, 41.404732, 26.919949>,  <34.389500, 41.337200, 26.896486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783058, 41.404732, 26.919949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023468, -0.203302, 0.978835,
		0.177180, -0.964451, -0.196066,
		0.983899, 0.168829, 0.058655,
		35.078228, 41.455379, 26.937546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694576, 40.863098, 27.257593>,  <34.389500, 41.337200, 26.896486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694576, 40.863098, 27.257593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982285, 41.140316, 27.276957>,  <35.154911, 41.306644, 27.288574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982285, 41.140316, 27.276957>,  <34.694576, 40.863098, 27.257593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982285, 41.140316, 27.276957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121392, -0.193982, 0.973466,
		0.684042, -0.694309, -0.223655,
		0.719271, 0.693042, 0.048408,
		35.198067, 41.348228, 27.291479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283516, 40.587360, 27.545071>,  <34.694576, 40.863098, 27.257593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283516, 40.587360, 27.545071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360249, 40.976238, 27.598795>,  <35.406288, 41.209564, 27.631029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360249, 40.976238, 27.598795>,  <35.283516, 40.587360, 27.545071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360249, 40.976238, 27.598795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300712, -0.188493, 0.934902,
		0.934223, -0.138954, -0.328509,
		0.191830, 0.972194, 0.134310,
		35.417797, 41.267895, 27.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946316, 40.592354, 27.942926>,  <35.283516, 40.587360, 27.545071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946316, 40.592354, 27.942926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747917, 40.935463, 27.996895>,  <35.628876, 41.141331, 28.029276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747917, 40.935463, 27.996895>,  <35.946316, 40.592354, 27.942926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747917, 40.935463, 27.996895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012128, -0.148520, 0.988835,
		0.868237, 0.492099, 0.063263,
		-0.496001, 0.857776, 0.134919,
		35.599117, 41.192795, 28.037371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328480, 40.973415, 28.418375>,  <35.946316, 40.592354, 27.942926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328480, 40.973415, 28.418375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972912, 41.153149, 28.453974>,  <35.759571, 41.260986, 28.475334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972912, 41.153149, 28.453974>,  <36.328480, 40.973415, 28.418375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972912, 41.153149, 28.453974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007611, -0.179779, 0.983678,
		0.457997, 0.875089, 0.156389,
		-0.888921, 0.449331, 0.088998,
		35.706234, 41.287949, 28.480673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349396, 41.399952, 28.977768>,  <36.328480, 40.973415, 28.418375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349396, 41.399952, 28.977768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953972, 41.350883, 28.942671>,  <35.716717, 41.321442, 28.921614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953972, 41.350883, 28.942671>,  <36.349396, 41.399952, 28.977768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953972, 41.350883, 28.942671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074092, -0.111711, 0.990975,
		-0.131368, 0.986140, 0.101344,
		-0.988561, -0.122673, -0.087741,
		35.657402, 41.314083, 28.916349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975990, 41.881134, 29.435440>,  <36.349396, 41.399952, 28.977768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975990, 41.881134, 29.435440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774353, 41.540947, 29.375320>,  <35.653370, 41.336834, 29.339249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774353, 41.540947, 29.375320>,  <35.975990, 41.881134, 29.435440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774353, 41.540947, 29.375320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088584, -0.122192, 0.988545,
		-0.859093, 0.511634, -0.013741,
		-0.504095, -0.850470, -0.150297,
		35.623123, 41.285805, 29.330231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538834, 42.287830, 29.973118>,  <35.975990, 41.881134, 29.435440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538834, 42.287830, 29.973118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470203, 41.908920, 29.864874>,  <35.429024, 41.681576, 29.799927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470203, 41.908920, 29.864874>,  <35.538834, 42.287830, 29.973118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470203, 41.908920, 29.864874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155744, -0.245149, 0.956894,
		-0.972782, 0.206329, -0.105470,
		-0.171579, -0.947275, -0.270611,
		35.418728, 41.624737, 29.783691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000576, 42.172909, 30.314766>,  <35.538834, 42.287830, 29.973118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000576, 42.172909, 30.314766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087868, 41.797436, 30.207991>,  <35.140244, 41.572151, 30.143925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087868, 41.797436, 30.207991>,  <35.000576, 42.172909, 30.314766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087868, 41.797436, 30.207991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242402, -0.317100, 0.916891,
		-0.945313, -0.135389, -0.296739,
		0.218232, -0.938678, -0.266940,
		35.153339, 41.515831, 30.127909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438049, 41.766609, 30.562750>,  <35.000576, 42.172909, 30.314766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438049, 41.766609, 30.562750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763336, 41.540607, 30.506968>,  <34.958508, 41.405006, 30.473497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763336, 41.540607, 30.506968>,  <34.438049, 41.766609, 30.562750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763336, 41.540607, 30.506968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109613, -0.384051, 0.916782,
		-0.571548, -0.730254, -0.374248,
		0.813214, -0.565007, -0.139458,
		35.007301, 41.371105, 30.465130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358444, 40.967819, 30.719095>,  <34.438049, 41.766609, 30.562750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358444, 40.967819, 30.719095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746281, 41.042862, 30.781956>,  <34.978981, 41.087887, 30.819672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746281, 41.042862, 30.781956>,  <34.358444, 40.967819, 30.719095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746281, 41.042862, 30.781956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, -0.464239, 0.884095,
		0.238821, -0.865612, -0.440091,
		0.969590, 0.187610, 0.157152,
		35.037159, 41.099144, 30.829102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605717, 40.277752, 30.825911>,  <34.358444, 40.967819, 30.719095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605717, 40.277752, 30.825911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896069, 40.518337, 30.959377>,  <35.070282, 40.662689, 31.039457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896069, 40.518337, 30.959377>,  <34.605717, 40.277752, 30.825911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896069, 40.518337, 30.959377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030813, -0.456184, 0.889352,
		0.687127, -0.655847, -0.312604,
		0.725883, 0.601466, 0.333665,
		35.113834, 40.698776, 31.059477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120224, 39.832588, 31.119398>,  <34.605717, 40.277752, 30.825911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120224, 39.832588, 31.119398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203655, 40.192242, 31.273314>,  <35.253712, 40.408031, 31.365664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203655, 40.192242, 31.273314>,  <35.120224, 39.832588, 31.119398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203655, 40.192242, 31.273314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151798, -0.358911, 0.920945,
		0.966154, -0.250497, 0.061626,
		0.208575, 0.899130, 0.384788,
		35.266228, 40.461979, 31.388750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573593, 39.655903, 31.702265>,  <35.120224, 39.832588, 31.119398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573593, 39.655903, 31.702265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.436142, 40.028606, 31.749159>,  <35.353672, 40.252228, 31.777296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.436142, 40.028606, 31.749159>,  <35.573593, 39.655903, 31.702265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436142, 40.028606, 31.749159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140368, -0.174395, 0.974620,
		0.928557, 0.318448, 0.190716,
		-0.343625, 0.931760, 0.117236,
		35.333054, 40.308136, 31.784330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217018, 39.293747, 31.898479>,  <35.573593, 39.655903, 31.702265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217018, 39.293747, 31.898479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181103, 38.897732, 31.941862>,  <36.159554, 38.660122, 31.967892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181103, 38.897732, 31.941862>,  <36.217018, 39.293747, 31.898479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181103, 38.897732, 31.941862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192877, -0.124120, -0.973341,
		0.977106, -0.066474, 0.202099,
		-0.089786, -0.990038, 0.108457,
		36.154167, 38.600719, 31.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765701, 38.949390, 31.439310>,  <36.217018, 39.293747, 31.898479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765701, 38.949390, 31.439310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.500603, 38.653721, 31.487301>,  <36.341545, 38.476318, 31.516096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.500603, 38.653721, 31.487301>,  <36.765701, 38.949390, 31.439310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500603, 38.653721, 31.487301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014052, -0.172463, -0.984916,
		0.748713, -0.651062, 0.124686,
		-0.662745, -0.739172, 0.119977,
		36.301781, 38.431969, 31.523294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024120, 38.488094, 31.037910>,  <36.765701, 38.949390, 31.439310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024120, 38.488094, 31.037910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642803, 38.382576, 31.096766>,  <36.414013, 38.319263, 31.132078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642803, 38.382576, 31.096766>,  <37.024120, 38.488094, 31.037910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642803, 38.382576, 31.096766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125664, -0.096599, -0.987359,
		0.274677, -0.959729, 0.058937,
		-0.953290, -0.263798, 0.147137,
		36.356815, 38.303436, 31.140907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848763, 37.835205, 30.629566>,  <37.024120, 38.488094, 31.037910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848763, 37.835205, 30.629566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.499649, 38.008144, 30.720179>,  <36.290180, 38.111908, 30.774546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.499649, 38.008144, 30.720179>,  <36.848763, 37.835205, 30.629566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499649, 38.008144, 30.720179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193322, 0.119954, -0.973775,
		-0.448183, -0.893693, -0.021113,
		-0.872788, 0.432348, 0.226532,
		36.237812, 38.137848, 30.788137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382622, 37.426826, 30.330954>,  <36.848763, 37.835205, 30.629566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382622, 37.426826, 30.330954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258728, 37.803699, 30.382124>,  <36.184391, 38.029823, 30.412827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258728, 37.803699, 30.382124>,  <36.382622, 37.426826, 30.330954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258728, 37.803699, 30.382124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158207, 0.081601, -0.984028,
		-0.937569, -0.325025, 0.123785,
		-0.309733, 0.942178, 0.127928,
		36.165810, 38.086353, 30.420502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800896, 37.403263, 30.017700>,  <36.382622, 37.426826, 30.330954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800896, 37.403263, 30.017700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890293, 37.793007, 30.028028>,  <35.943932, 38.026855, 30.034225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890293, 37.793007, 30.028028>,  <35.800896, 37.403263, 30.017700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890293, 37.793007, 30.028028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251645, 0.083276, -0.964230,
		-0.941661, 0.209002, 0.263805,
		0.223495, 0.974363, 0.025823,
		35.957340, 38.085316, 30.035776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351166, 37.748489, 29.544153>,  <35.800896, 37.403263, 30.017700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351166, 37.748489, 29.544153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628925, 38.035732, 29.562622>,  <35.795582, 38.208076, 29.573704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628925, 38.035732, 29.562622>,  <35.351166, 37.748489, 29.544153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628925, 38.035732, 29.562622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066473, 0.127902, -0.989557,
		-0.716510, 0.684082, 0.136550,
		0.694403, 0.718104, 0.046170,
		35.837246, 38.251163, 29.576473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087372, 38.166634, 29.112873>,  <35.351166, 37.748489, 29.544153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087372, 38.166634, 29.112873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460358, 38.299633, 29.169380>,  <35.684147, 38.379433, 29.203283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460358, 38.299633, 29.169380>,  <35.087372, 38.166634, 29.112873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460358, 38.299633, 29.169380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088094, 0.169952, -0.981507,
		-0.350361, 0.927663, 0.129183,
		0.932463, 0.332501, 0.141266,
		35.740097, 38.399384, 29.211760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122650, 38.753429, 28.745024>,  <35.087372, 38.166634, 29.112873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122650, 38.753429, 28.745024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509304, 38.665897, 28.798298>,  <35.741295, 38.613380, 28.830263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509304, 38.665897, 28.798298>,  <35.122650, 38.753429, 28.745024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509304, 38.665897, 28.798298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200799, 0.324385, -0.924367,
		0.159073, 0.920265, 0.357501,
		0.966631, -0.218828, 0.133188,
		35.799294, 38.600250, 28.838255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535450, 39.308880, 28.531988>,  <35.122650, 38.753429, 28.745024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535450, 39.308880, 28.531988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796051, 39.008205, 28.490980>,  <35.952412, 38.827801, 28.466375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796051, 39.008205, 28.490980>,  <35.535450, 39.308880, 28.531988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796051, 39.008205, 28.490980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170361, 0.276647, -0.945750,
		0.739269, 0.598695, 0.308294,
		0.651504, -0.751686, -0.102522,
		35.991501, 38.782700, 28.460224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065960, 39.554348, 28.181591>,  <35.535450, 39.308880, 28.531988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065960, 39.554348, 28.181591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102699, 39.157997, 28.142149>,  <36.124744, 38.920185, 28.118484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102699, 39.157997, 28.142149>,  <36.065960, 39.554348, 28.181591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102699, 39.157997, 28.142149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092035, 0.107046, -0.989985,
		0.991511, 0.081854, 0.101027,
		0.091849, -0.990879, -0.098604,
		36.130253, 38.860733, 28.112568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697483, 39.474792, 27.815113>,  <36.065960, 39.554348, 28.181591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697483, 39.474792, 27.815113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514431, 39.120445, 27.784636>,  <36.404598, 38.907837, 27.766348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514431, 39.120445, 27.784636>,  <36.697483, 39.474792, 27.815113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514431, 39.120445, 27.784636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082041, 0.043260, -0.995690,
		0.885350, -0.461909, 0.052881,
		-0.457630, -0.885872, -0.076196,
		36.377140, 38.854683, 27.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115959, 39.052811, 27.433203>,  <36.697483, 39.474792, 27.815113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115959, 39.052811, 27.433203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745628, 38.909138, 27.386148>,  <36.523430, 38.822933, 27.357916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745628, 38.909138, 27.386148>,  <37.115959, 39.052811, 27.433203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745628, 38.909138, 27.386148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089834, 0.093205, -0.991586,
		0.367122, -0.928602, -0.054025,
		-0.925825, -0.359180, -0.117638,
		36.467880, 38.801384, 27.350857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183384, 38.761242, 26.886745>,  <37.115959, 39.052811, 27.433203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183384, 38.761242, 26.886745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785458, 38.796192, 26.907557>,  <36.546703, 38.817162, 26.920042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785458, 38.796192, 26.907557>,  <37.183384, 38.761242, 26.886745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785458, 38.796192, 26.907557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048617, 0.040710, -0.997988,
		-0.089323, -0.995343, -0.036250,
		-0.994815, 0.087381, 0.052027,
		36.487015, 38.822407, 26.923164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481228, 38.040054, 26.756346>,  <37.183384, 38.761242, 26.886745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481228, 38.040054, 26.756346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875397, 37.988934, 26.711416>,  <38.111897, 37.958263, 26.684458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875397, 37.988934, 26.711416>,  <37.481228, 38.040054, 26.756346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875397, 37.988934, 26.711416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127480, 0.117329, 0.984877,
		-0.112689, -0.984836, 0.131910,
		0.985419, -0.127800, -0.112326,
		38.171021, 37.950592, 26.677719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661221, 37.342350, 27.157564>,  <37.481228, 38.040054, 26.756346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661221, 37.342350, 27.157564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006763, 37.540863, 27.123051>,  <38.214088, 37.659973, 27.102343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006763, 37.540863, 27.123051>,  <37.661221, 37.342350, 27.157564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006763, 37.540863, 27.123051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185717, -0.154559, 0.970372,
		0.468246, -0.854290, -0.225686,
		0.863860, 0.496286, -0.086284,
		38.265923, 37.689751, 27.097166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169701, 36.929451, 27.628817>,  <37.661221, 37.342350, 27.157564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169701, 36.929451, 27.628817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357594, 37.272346, 27.544441>,  <38.470329, 37.478085, 27.493816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357594, 37.272346, 27.544441>,  <38.169701, 36.929451, 27.628817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357594, 37.272346, 27.544441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479652, -0.047226, 0.876187,
		0.741141, -0.512747, -0.433360,
		0.469728, 0.857240, -0.210939,
		38.498512, 37.529518, 27.481159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906368, 36.862576, 27.773407>,  <38.169701, 36.929451, 27.628817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906368, 36.862576, 27.773407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832188, 37.254910, 27.797304>,  <38.787682, 37.490311, 27.811644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832188, 37.254910, 27.797304>,  <38.906368, 36.862576, 27.773407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832188, 37.254910, 27.797304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372753, 0.013962, 0.927826,
		0.909211, 0.194333, -0.368199,
		-0.185447, 0.980836, 0.059744,
		38.776554, 37.549160, 27.815228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487087, 37.074360, 27.956507>,  <38.906368, 36.862576, 27.773407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487087, 37.074360, 27.956507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241604, 37.373882, 28.056633>,  <39.094315, 37.553596, 28.116709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241604, 37.373882, 28.056633>,  <39.487087, 37.074360, 27.956507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241604, 37.373882, 28.056633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522246, 0.147226, 0.839990,
		0.592135, 0.646233, -0.481414,
		-0.613706, 0.748804, 0.250315,
		39.057491, 37.598522, 28.131727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982494, 37.539402, 28.334274>,  <39.487087, 37.074360, 27.956507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982494, 37.539402, 28.334274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610466, 37.645729, 28.435717>,  <39.387249, 37.709526, 28.496582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610466, 37.645729, 28.435717>,  <39.982494, 37.539402, 28.334274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610466, 37.645729, 28.435717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295375, 0.130556, 0.946419,
		0.218463, 0.955143, -0.199941,
		-0.930069, 0.265815, 0.253604,
		39.331444, 37.725475, 28.511797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007668, 38.246235, 28.597309>,  <39.982494, 37.539402, 28.334274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007668, 38.246235, 28.597309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685249, 38.054890, 28.736717>,  <39.491798, 37.940083, 28.820362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685249, 38.054890, 28.736717>,  <40.007668, 38.246235, 28.597309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685249, 38.054890, 28.736717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313461, 0.154454, 0.936956,
		-0.502031, 0.864475, 0.025451,
		-0.806044, -0.478358, 0.348520,
		39.443436, 37.911381, 28.841272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714115, 38.633556, 29.102150>,  <40.007668, 38.246235, 28.597309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714115, 38.633556, 29.102150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510509, 38.308155, 29.214661>,  <39.388348, 38.112915, 29.282167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510509, 38.308155, 29.214661>,  <39.714115, 38.633556, 29.102150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510509, 38.308155, 29.214661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198762, 0.206862, 0.957968,
		-0.837496, 0.543525, 0.056399,
		-0.509012, -0.813504, 0.281278,
		39.357807, 38.064102, 29.299044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204773, 38.905514, 29.584600>,  <39.714115, 38.633556, 29.102150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204773, 38.905514, 29.584600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236912, 38.514668, 29.663378>,  <39.256195, 38.280159, 29.710644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236912, 38.514668, 29.663378>,  <39.204773, 38.905514, 29.584600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236912, 38.514668, 29.663378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220031, 0.210094, 0.952600,
		-0.972179, -0.033200, 0.231876,
		0.080342, -0.977117, 0.196944,
		39.261013, 38.221531, 29.722462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862190, 38.811768, 30.212141>,  <39.204773, 38.905514, 29.584600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862190, 38.811768, 30.212141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064117, 38.467323, 30.187956>,  <39.185272, 38.260658, 30.173445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064117, 38.467323, 30.187956>,  <38.862190, 38.811768, 30.212141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064117, 38.467323, 30.187956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296749, 0.107339, 0.948904,
		-0.810617, -0.496965, 0.309718,
		0.504817, -0.861106, -0.060463,
		39.215561, 38.208992, 30.169817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717220, 38.355240, 30.832531>,  <38.862190, 38.811768, 30.212141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717220, 38.355240, 30.832531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070980, 38.221363, 30.702415>,  <39.283237, 38.141037, 30.624346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070980, 38.221363, 30.702415>,  <38.717220, 38.355240, 30.832531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070980, 38.221363, 30.702415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310954, -0.097208, 0.945441,
		-0.348050, -0.937301, 0.018102,
		0.884403, -0.334690, -0.325291,
		39.336300, 38.120956, 30.604828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789230, 37.870781, 31.325493>,  <38.717220, 38.355240, 30.832531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789230, 37.870781, 31.325493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143665, 37.928383, 31.149261>,  <39.356327, 37.962944, 31.043522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143665, 37.928383, 31.149261>,  <38.789230, 37.870781, 31.325493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143665, 37.928383, 31.149261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454081, -0.078879, 0.887462,
		0.093044, -0.986429, -0.135282,
		0.886088, 0.144002, -0.440580,
		39.409492, 37.971584, 31.017088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237175, 37.348309, 31.683294>,  <38.789230, 37.870781, 31.325493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237175, 37.348309, 31.683294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.457935, 37.633530, 31.510340>,  <39.590393, 37.804661, 31.406567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.457935, 37.633530, 31.510340>,  <39.237175, 37.348309, 31.683294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457935, 37.633530, 31.510340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502477, 0.129448, 0.854845,
		0.665521, -0.689056, -0.286850,
		0.551904, 0.713053, -0.432386,
		39.623508, 37.847446, 31.380625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870937, 37.146278, 31.837685>,  <39.237175, 37.348309, 31.683294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870937, 37.146278, 31.837685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872765, 37.540344, 31.769056>,  <39.873859, 37.776783, 31.727879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872765, 37.540344, 31.769056>,  <39.870937, 37.146278, 31.837685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872765, 37.540344, 31.769056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327475, 0.160639, 0.931104,
		0.944849, -0.060436, -0.321882,
		0.004565, 0.985161, -0.171571,
		39.874134, 37.835892, 31.717585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.162846, 39.902710, 26.936260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771469, 39.959244, 26.996496>,  <40.536644, 39.993164, 27.032639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771469, 39.959244, 26.996496>,  <41.162846, 39.902710, 26.936260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771469, 39.959244, 26.996496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154181, -0.014743, -0.987933,
		-0.137412, -0.989852, 0.036216,
		-0.978440, 0.141338, 0.150591,
		40.477936, 40.001644, 27.041674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828728, 39.407482, 26.420858>,  <41.162846, 39.902710, 26.936260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828728, 39.407482, 26.420858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577385, 39.703609, 26.516438>,  <40.426579, 39.881287, 26.573786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577385, 39.703609, 26.516438>,  <40.828728, 39.407482, 26.420858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577385, 39.703609, 26.516438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282797, 0.068763, -0.956712,
		-0.724702, -0.668731, 0.166152,
		-0.628358, 0.740318, 0.238947,
		40.388878, 39.925705, 26.588121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147255, 39.186081, 26.184771>,  <40.828728, 39.407482, 26.420858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147255, 39.186081, 26.184771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145218, 39.583076, 26.233675>,  <40.143993, 39.821274, 26.263018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145218, 39.583076, 26.233675>,  <40.147255, 39.186081, 26.184771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145218, 39.583076, 26.233675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265198, 0.116542, -0.957125,
		-0.964181, -0.037299, 0.262611,
		-0.005094, 0.992485, 0.122259,
		40.143688, 39.880821, 26.270353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565208, 39.516300, 25.782484>,  <40.147255, 39.186081, 26.184771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565208, 39.516300, 25.782484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.804737, 39.835979, 25.803221>,  <39.948456, 40.027786, 25.815662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.804737, 39.835979, 25.803221>,  <39.565208, 39.516300, 25.782484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804737, 39.835979, 25.803221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086116, 0.128610, -0.987949,
		-0.796239, 0.587141, 0.145838,
		0.598822, 0.799202, 0.051842,
		39.984383, 40.075741, 25.818773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303867, 39.957714, 25.281839>,  <39.565208, 39.516300, 25.782484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303867, 39.957714, 25.281839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663250, 40.096619, 25.389311>,  <39.878880, 40.179962, 25.453794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663250, 40.096619, 25.389311>,  <39.303867, 39.957714, 25.281839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663250, 40.096619, 25.389311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151899, 0.328309, -0.932277,
		-0.411952, 0.878421, 0.242223,
		0.898455, 0.347260, 0.268679,
		39.932785, 40.200798, 25.469915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381184, 40.638306, 25.003696>,  <39.303867, 39.957714, 25.281839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381184, 40.638306, 25.003696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764484, 40.544373, 25.068932>,  <39.994465, 40.488014, 25.108072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764484, 40.544373, 25.068932>,  <39.381184, 40.638306, 25.003696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764484, 40.544373, 25.068932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255880, 0.449916, -0.855629,
		0.127554, 0.861643, 0.491224,
		0.958257, -0.234833, 0.163089,
		40.051960, 40.473923, 25.117859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650398, 41.080357, 24.607269>,  <39.381184, 40.638306, 25.003696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650398, 41.080357, 24.607269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.972588, 40.858551, 24.690922>,  <40.165901, 40.725468, 24.741114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.972588, 40.858551, 24.690922>,  <39.650398, 41.080357, 24.607269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972588, 40.858551, 24.690922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432438, 0.308636, -0.847196,
		0.405233, 0.772828, 0.488389,
		0.805471, -0.554509, 0.209131,
		40.214230, 40.692200, 24.753660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268574, 41.516773, 24.478533>,  <39.650398, 41.080357, 24.607269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268574, 41.516773, 24.478533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357121, 41.128334, 24.442848>,  <40.410248, 40.895271, 24.421436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357121, 41.128334, 24.442848>,  <40.268574, 41.516773, 24.478533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357121, 41.128334, 24.442848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431550, 0.179588, -0.884032,
		0.874506, 0.157197, 0.458834,
		0.221369, -0.971101, -0.089212,
		40.423531, 40.837006, 24.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790859, 41.498085, 24.092882>,  <40.268574, 41.516773, 24.478533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790859, 41.498085, 24.092882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688992, 41.114525, 24.042837>,  <40.627872, 40.884388, 24.012810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688992, 41.114525, 24.042837>,  <40.790859, 41.498085, 24.092882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688992, 41.114525, 24.042837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310899, 0.041323, -0.949544,
		0.915689, -0.280716, 0.287598,
		-0.254668, -0.958901, -0.125113,
		40.612591, 40.826855, 24.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321575, 41.090328, 23.698233>,  <40.790859, 41.498085, 24.092882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321575, 41.090328, 23.698233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.982330, 40.886917, 23.638762>,  <40.778782, 40.764870, 23.603079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.982330, 40.886917, 23.638762>,  <41.321575, 41.090328, 23.698233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982330, 40.886917, 23.638762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142905, 0.050656, -0.988439,
		0.510178, -0.859556, 0.029709,
		-0.848114, -0.508525, -0.148678,
		40.727898, 40.734360, 23.594158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481300, 40.647320, 23.014366>,  <41.321575, 41.090328, 23.698233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481300, 40.647320, 23.014366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090244, 40.623058, 23.094902>,  <40.855610, 40.608501, 23.143223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090244, 40.623058, 23.094902>,  <41.481300, 40.647320, 23.014366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090244, 40.623058, 23.094902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203761, 0.036769, -0.978330,
		0.051954, -0.997480, -0.048309,
		-0.977641, -0.060671, 0.201338,
		40.796951, 40.604862, 23.155304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255783, 40.038574, 22.599922>,  <41.481300, 40.647320, 23.014366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255783, 40.038574, 22.599922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933315, 40.260738, 22.681511>,  <40.739834, 40.394035, 22.730465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933315, 40.260738, 22.681511>,  <41.255783, 40.038574, 22.599922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933315, 40.260738, 22.681511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232886, 0.019047, -0.972318,
		-0.543920, -0.831359, 0.113992,
		-0.806173, 0.555410, 0.203972,
		40.691463, 40.427361, 22.742702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722153, 39.864433, 22.174458>,  <41.255783, 40.038574, 22.599922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722153, 39.864433, 22.174458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624489, 40.230213, 22.303556>,  <40.565891, 40.449680, 22.381016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624489, 40.230213, 22.303556>,  <40.722153, 39.864433, 22.174458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624489, 40.230213, 22.303556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032482, 0.324919, -0.945184,
		-0.969190, -0.241262, -0.049630,
		-0.244162, 0.914451, 0.322745,
		40.551239, 40.504547, 22.400379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020824, 40.132912, 21.951921>,  <40.722153, 39.864433, 22.174458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020824, 40.132912, 21.951921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299519, 40.415966, 21.998917>,  <40.466736, 40.585800, 22.027113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299519, 40.415966, 21.998917>,  <40.020824, 40.132912, 21.951921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299519, 40.415966, 21.998917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217442, 0.364429, -0.905489,
		-0.683576, 0.605341, 0.407782,
		0.696737, 0.707639, 0.117488,
		40.508541, 40.628258, 22.034163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741665, 39.551762, 21.542789>,  <40.020824, 40.132912, 21.951921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741665, 39.551762, 21.542789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542763, 39.240189, 21.389950>,  <39.423424, 39.053246, 21.298246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542763, 39.240189, 21.389950>,  <39.741665, 39.551762, 21.542789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542763, 39.240189, 21.389950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470810, -0.127664, 0.872949,
		-0.728751, 0.613972, -0.303249,
		-0.497252, -0.778935, -0.382099,
		39.393585, 39.006508, 21.275320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081074, 39.574593, 21.924974>,  <39.741665, 39.551762, 21.542789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081074, 39.574593, 21.924974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138371, 39.202652, 21.789408>,  <39.172749, 38.979488, 21.708069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138371, 39.202652, 21.789408>,  <39.081074, 39.574593, 21.924974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138371, 39.202652, 21.789408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358370, -0.367939, 0.858016,
		-0.922526, -0.001444, -0.385933,
		0.143239, -0.929848, -0.338916,
		39.181343, 38.923698, 21.687733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463985, 39.129475, 22.096014>,  <39.081074, 39.574593, 21.924974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463985, 39.129475, 22.096014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780983, 38.896442, 22.023848>,  <38.971184, 38.756622, 21.980549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780983, 38.896442, 22.023848>,  <38.463985, 39.129475, 22.096014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780983, 38.896442, 22.023848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182774, -0.509099, 0.841078,
		-0.581846, -0.633576, -0.509939,
		0.792496, -0.582581, -0.180416,
		39.018734, 38.721668, 21.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247307, 38.485817, 22.189835>,  <38.463985, 39.129475, 22.096014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247307, 38.485817, 22.189835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642132, 38.452461, 22.244606>,  <38.879028, 38.432446, 22.277468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642132, 38.452461, 22.244606>,  <38.247307, 38.485817, 22.189835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642132, 38.452461, 22.244606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159621, -0.431339, 0.887957,
		-0.014987, -0.898328, -0.439071,
		0.987064, -0.083393, 0.136927,
		38.938251, 38.427444, 22.285685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323368, 37.914368, 22.592880>,  <38.247307, 38.485817, 22.189835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323368, 37.914368, 22.592880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687187, 38.072811, 22.643187>,  <38.905479, 38.167877, 22.673370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687187, 38.072811, 22.643187>,  <38.323368, 37.914368, 22.592880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687187, 38.072811, 22.643187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010029, -0.281605, 0.959478,
		0.415477, -0.873953, -0.252161,
		0.909549, 0.396112, 0.125765,
		38.960052, 38.191647, 22.680916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658016, 37.395561, 22.915401>,  <38.323368, 37.914368, 22.592880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658016, 37.395561, 22.915401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897251, 37.713306, 22.957870>,  <39.040794, 37.903954, 22.983353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897251, 37.713306, 22.957870>,  <38.658016, 37.395561, 22.915401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897251, 37.713306, 22.957870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088476, -0.197115, 0.976380,
		0.796530, -0.574570, -0.188174,
		0.598090, 0.794365, 0.106172,
		39.076679, 37.951614, 22.989721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313057, 37.086143, 23.218130>,  <38.658016, 37.395561, 22.915401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313057, 37.086143, 23.218130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263283, 37.471012, 23.315077>,  <39.233418, 37.701935, 23.373245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263283, 37.471012, 23.315077>,  <39.313057, 37.086143, 23.218130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263283, 37.471012, 23.315077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262879, -0.203566, 0.943110,
		0.956771, 0.181069, -0.227604,
		-0.124436, 0.962172, 0.242365,
		39.225952, 37.759663, 23.387787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765301, 37.227558, 23.810587>,  <39.313057, 37.086143, 23.218130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765301, 37.227558, 23.810587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487267, 37.514938, 23.821064>,  <39.320446, 37.687366, 23.827351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487267, 37.514938, 23.821064>,  <39.765301, 37.227558, 23.810587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487267, 37.514938, 23.821064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026447, -0.010856, 0.999591,
		0.718445, 0.695490, -0.011455,
		-0.695081, 0.718454, 0.026193,
		39.278744, 37.730476, 23.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823841, 37.412716, 24.462912>,  <39.765301, 37.227558, 23.810587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823841, 37.412716, 24.462912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478306, 37.592220, 24.371353>,  <39.270985, 37.699924, 24.316418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478306, 37.592220, 24.371353>,  <39.823841, 37.412716, 24.462912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478306, 37.592220, 24.371353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258384, -0.004645, 0.966031,
		0.432453, 0.893640, 0.119965,
		-0.863841, 0.448760, -0.228894,
		39.219154, 37.726849, 24.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708252, 37.997864, 24.901024>,  <39.823841, 37.412716, 24.462912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708252, 37.997864, 24.901024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.332504, 37.919014, 24.788788>,  <39.107056, 37.871704, 24.721445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.332504, 37.919014, 24.788788>,  <39.708252, 37.997864, 24.901024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332504, 37.919014, 24.788788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298583, 0.067791, 0.951973,
		-0.168637, 0.978032, -0.122539,
		-0.939367, -0.197126, -0.280592,
		39.050694, 37.859875, 24.704611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279915, 38.513012, 25.131098>,  <39.708252, 37.997864, 24.901024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279915, 38.513012, 25.131098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031834, 38.203793, 25.077831>,  <38.882984, 38.018261, 25.045872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031834, 38.203793, 25.077831>,  <39.279915, 38.513012, 25.131098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031834, 38.203793, 25.077831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331063, 0.104049, 0.937854,
		-0.711154, 0.625752, -0.320461,
		-0.620208, -0.773051, -0.133168,
		38.845772, 37.971878, 25.037880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633026, 38.790409, 25.376991>,  <39.279915, 38.513012, 25.131098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633026, 38.790409, 25.376991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653519, 38.391846, 25.403975>,  <38.665813, 38.152710, 25.420164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653519, 38.391846, 25.403975>,  <38.633026, 38.790409, 25.376991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653519, 38.391846, 25.403975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434753, 0.038558, 0.899724,
		-0.899091, -0.075425, -0.431215,
		0.051235, -0.996406, 0.067458,
		38.668888, 38.092922, 25.424212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032364, 38.589611, 25.714211>,  <38.633026, 38.790409, 25.376991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032364, 38.589611, 25.714211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228954, 38.242863, 25.747637>,  <38.346909, 38.034813, 25.767693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228954, 38.242863, 25.747637>,  <38.032364, 38.589611, 25.714211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228954, 38.242863, 25.747637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227918, -0.035418, 0.973036,
		-0.840536, -0.497274, -0.214983,
		0.491479, -0.866870, 0.083567,
		38.376400, 37.982803, 25.772707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591320, 38.111488, 26.053974>,  <38.032364, 38.589611, 25.714211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591320, 38.111488, 26.053974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966759, 37.992905, 26.124573>,  <38.192020, 37.921753, 26.166933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966759, 37.992905, 26.124573>,  <37.591320, 38.111488, 26.053974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966759, 37.992905, 26.124573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228115, -0.149423, 0.962100,
		-0.258854, -0.943283, -0.207875,
		0.938594, -0.296462, 0.176498,
		38.248337, 37.903969, 26.177523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893932, 38.297604, 26.331438>,  <37.591320, 38.111488, 26.053974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893932, 38.297604, 26.331438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559761, 38.504959, 26.404469>,  <36.359257, 38.629372, 26.448288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559761, 38.504959, 26.404469>,  <36.893932, 38.297604, 26.331438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559761, 38.504959, 26.404469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035157, 0.281115, -0.959030,
		-0.548475, -0.807619, -0.216626,
		-0.835428, 0.518388, 0.182578,
		36.309132, 38.660477, 26.459242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384689, 37.992203, 25.926228>,  <36.893932, 38.297604, 26.331438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384689, 37.992203, 25.926228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249744, 38.362309, 25.995584>,  <36.168777, 38.584373, 26.037199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249744, 38.362309, 25.995584>,  <36.384689, 37.992203, 25.926228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249744, 38.362309, 25.995584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126206, 0.138071, -0.982348,
		-0.932876, -0.353293, 0.070194,
		-0.337365, 0.925268, 0.173391,
		36.148537, 38.639889, 26.047602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840649, 38.145111, 25.488298>,  <36.384689, 37.992203, 25.926228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840649, 38.145111, 25.488298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968197, 38.507786, 25.598742>,  <36.044727, 38.725391, 25.665007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968197, 38.507786, 25.598742>,  <35.840649, 38.145111, 25.488298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968197, 38.507786, 25.598742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293898, 0.371542, -0.880670,
		-0.901080, 0.199674, 0.384949,
		0.318872, 0.906690, 0.276105,
		36.063858, 38.779793, 25.681574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333801, 38.545429, 25.176079>,  <35.840649, 38.145111, 25.488298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333801, 38.545429, 25.176079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657742, 38.772331, 25.235905>,  <35.852104, 38.908470, 25.271801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657742, 38.772331, 25.235905>,  <35.333801, 38.545429, 25.176079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657742, 38.772331, 25.235905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086451, 0.367570, -0.925969,
		-0.580233, 0.736965, 0.346716,
		0.809849, 0.567252, 0.149565,
		35.900696, 38.942505, 25.280775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105030, 39.254070, 24.927425>,  <35.333801, 38.545429, 25.176079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105030, 39.254070, 24.927425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504715, 39.264851, 24.939039>,  <35.744526, 39.271320, 24.946007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504715, 39.264851, 24.939039>,  <35.105030, 39.254070, 24.927425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504715, 39.264851, 24.939039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016839, 0.374423, -0.927105,
		-0.035860, 0.926866, 0.373675,
		0.999215, 0.026954, 0.029034,
		35.804478, 39.272938, 24.947750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255424, 39.865547, 24.592293>,  <35.105030, 39.254070, 24.927425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255424, 39.865547, 24.592293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595318, 39.657955, 24.555182>,  <35.799255, 39.533398, 24.532915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595318, 39.657955, 24.555182>,  <35.255424, 39.865547, 24.592293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595318, 39.657955, 24.555182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057709, 0.266482, -0.962111,
		0.524041, 0.812186, 0.256389,
		0.849735, -0.518982, -0.092777,
		35.850239, 39.502262, 24.527348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761105, 40.298801, 24.272449>,  <35.255424, 39.865547, 24.592293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761105, 40.298801, 24.272449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904308, 39.932362, 24.200245>,  <35.990231, 39.712498, 24.156921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904308, 39.932362, 24.200245>,  <35.761105, 40.298801, 24.272449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904308, 39.932362, 24.200245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100006, 0.229838, -0.968077,
		0.928345, 0.328533, 0.173901,
		0.358014, -0.916101, -0.180514,
		36.011711, 39.657532, 24.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203011, 40.953300, 24.219372>,  <35.761105, 40.298801, 24.272449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203011, 40.953300, 24.219372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031288, 41.311340, 24.267536>,  <35.928253, 41.526165, 24.296434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031288, 41.311340, 24.267536>,  <36.203011, 40.953300, 24.219372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031288, 41.311340, 24.267536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096518, -0.087089, 0.991514,
		0.897987, 0.437284, -0.049006,
		-0.429305, 0.895097, 0.120410,
		35.902496, 41.579868, 24.303659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504456, 41.231373, 24.789040>,  <36.203011, 40.953300, 24.219372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504456, 41.231373, 24.789040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159245, 41.428402, 24.744234>,  <35.952118, 41.546619, 24.717350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159245, 41.428402, 24.744234>,  <36.504456, 41.231373, 24.789040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159245, 41.428402, 24.744234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125764, 0.005252, 0.992046,
		0.489244, 0.870255, 0.057415,
		-0.863031, 0.492574, -0.112016,
		35.900333, 41.576176, 24.710629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524395, 41.844124, 25.143745>,  <36.504456, 41.231373, 24.789040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524395, 41.844124, 25.143745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132977, 41.770611, 25.106495>,  <35.898125, 41.726501, 25.084145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132977, 41.770611, 25.106495>,  <36.524395, 41.844124, 25.143745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132977, 41.770611, 25.106495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079656, -0.079379, 0.993657,
		-0.190011, 0.979756, 0.063036,
		-0.978545, -0.183785, -0.093126,
		35.839413, 41.715477, 25.078556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158897, 42.379066, 25.500910>,  <36.524395, 41.844124, 25.143745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158897, 42.379066, 25.500910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898174, 42.076504, 25.479029>,  <35.741741, 41.894966, 25.465900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898174, 42.076504, 25.479029>,  <36.158897, 42.379066, 25.500910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898174, 42.076504, 25.479029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083757, 0.000110, 0.996486,
		-0.753747, 0.654097, -0.063426,
		-0.651806, -0.756410, -0.054702,
		35.702633, 41.849579, 25.462618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567608, 42.637772, 25.876326>,  <36.158897, 42.379066, 25.500910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567608, 42.637772, 25.876326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537277, 42.239197, 25.861572>,  <35.519077, 42.000053, 25.852720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537277, 42.239197, 25.861572>,  <35.567608, 42.637772, 25.876326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537277, 42.239197, 25.861572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229434, -0.018563, 0.973147,
		-0.970366, 0.082255, -0.227210,
		-0.075828, -0.996438, -0.036885,
		35.514530, 41.940266, 25.850506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032288, 42.527069, 26.293234>,  <35.567608, 42.637772, 25.876326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032288, 42.527069, 26.293234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180565, 42.156063, 26.274042>,  <35.269531, 41.933460, 26.262527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180565, 42.156063, 26.274042>,  <35.032288, 42.527069, 26.293234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180565, 42.156063, 26.274042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365301, -0.193104, 0.910640,
		-0.853897, -0.320045, -0.410405,
		0.370696, -0.927514, -0.047978,
		35.291775, 41.877808, 26.259649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489719, 42.113441, 26.606287>,  <35.032288, 42.527069, 26.293234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489719, 42.113441, 26.606287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827648, 41.899426, 26.605494>,  <35.030407, 41.771015, 26.605017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827648, 41.899426, 26.605494>,  <34.489719, 42.113441, 26.606287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827648, 41.899426, 26.605494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211898, -0.337988, 0.916986,
		-0.491296, -0.774271, -0.398915,
		0.844824, -0.535040, -0.001985,
		35.081097, 41.738914, 26.604898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.566326, 44.331562, 22.308130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851261, 44.052357, 22.337391>,  <40.022224, 43.884834, 22.354948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851261, 44.052357, 22.337391>,  <39.566326, 44.331562, 22.308130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851261, 44.052357, 22.337391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528209, 0.601829, 0.598997,
		-0.462132, -0.388050, 0.797403,
		0.712341, -0.698011, 0.073153,
		40.064964, 43.842953, 22.359337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392319, 43.633339, 22.715593>,  <39.566326, 44.331562, 22.308130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392319, 43.633339, 22.715593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558949, 43.296162, 22.851778>,  <39.658928, 43.093857, 22.933489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558949, 43.296162, 22.851778>,  <39.392319, 43.633339, 22.715593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558949, 43.296162, 22.851778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026720, 0.362988, 0.931411,
		-0.908710, -0.397098, 0.128688,
		0.416573, -0.842943, 0.340461,
		39.683922, 43.043278, 22.953917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920376, 43.244843, 23.252329>,  <39.392319, 43.633339, 22.715593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920376, 43.244843, 23.252329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309010, 43.171799, 23.312571>,  <39.542191, 43.127972, 23.348717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309010, 43.171799, 23.312571>,  <38.920376, 43.244843, 23.252329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309010, 43.171799, 23.312571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132371, 0.108310, 0.985265,
		-0.196232, -0.977201, 0.081059,
		0.971582, -0.182610, 0.150607,
		39.600483, 43.117016, 23.357752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891132, 42.734997, 23.764748>,  <38.920376, 43.244843, 23.252329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891132, 42.734997, 23.764748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261059, 42.885136, 23.789486>,  <39.483013, 42.975220, 23.804329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261059, 42.885136, 23.789486>,  <38.891132, 42.734997, 23.764748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261059, 42.885136, 23.789486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085600, 0.046923, 0.995224,
		0.370655, -0.925694, 0.075525,
		0.924818, 0.375350, 0.061847,
		39.538506, 42.997742, 23.808041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319130, 42.332230, 24.148413>,  <38.891132, 42.734997, 23.764748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319130, 42.332230, 24.148413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.518696, 42.678001, 24.173193>,  <39.638435, 42.885464, 24.188061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.518696, 42.678001, 24.173193>,  <39.319130, 42.332230, 24.148413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518696, 42.678001, 24.173193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058841, -0.105107, 0.992719,
		0.864651, -0.491637, -0.103304,
		0.498915, 0.864433, 0.061953,
		39.668369, 42.937332, 24.191778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839996, 42.299210, 24.577297>,  <39.319130, 42.332230, 24.148413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839996, 42.299210, 24.577297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839920, 42.699207, 24.576344>,  <39.839874, 42.939205, 24.575771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839920, 42.699207, 24.576344>,  <39.839996, 42.299210, 24.577297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839920, 42.699207, 24.576344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250934, 0.002356, 0.968001,
		0.968004, -0.000409, -0.250934,
		-0.000196, 0.999997, -0.002383,
		39.839863, 42.999207, 24.575628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384174, 42.497929, 25.025669>,  <39.839996, 42.299210, 24.577297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384174, 42.497929, 25.025669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154037, 42.824089, 25.000055>,  <40.015957, 43.019787, 24.984688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154037, 42.824089, 25.000055>,  <40.384174, 42.497929, 25.025669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154037, 42.824089, 25.000055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013052, 0.069125, 0.997523,
		0.817808, 0.574753, -0.029128,
		-0.575343, 0.815402, -0.064033,
		39.981434, 43.068710, 24.980846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658035, 42.972977, 25.481234>,  <40.384174, 42.497929, 25.025669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658035, 42.972977, 25.481234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.283882, 43.110798, 25.449369>,  <40.059391, 43.193493, 25.430252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.283882, 43.110798, 25.449369>,  <40.658035, 42.972977, 25.481234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283882, 43.110798, 25.449369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009193, 0.201486, 0.979448,
		0.353526, 0.916888, -0.185299,
		-0.935379, 0.344557, -0.079659,
		40.003269, 43.214165, 25.425472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733906, 43.564510, 25.862371>,  <40.658035, 42.972977, 25.481234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733906, 43.564510, 25.862371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342003, 43.486691, 25.843533>,  <40.106861, 43.439999, 25.832230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342003, 43.486691, 25.843533>,  <40.733906, 43.564510, 25.862371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342003, 43.486691, 25.843533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069598, 0.110497, 0.991437,
		-0.187682, 0.974649, -0.121801,
		-0.979761, -0.194552, -0.047095,
		40.048073, 43.428326, 25.829405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387100, 44.105209, 26.358322>,  <40.733906, 43.564510, 25.862371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387100, 44.105209, 26.358322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135921, 43.809631, 26.260632>,  <39.985214, 43.632286, 26.202017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135921, 43.809631, 26.260632>,  <40.387100, 44.105209, 26.358322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135921, 43.809631, 26.260632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222805, -0.129986, 0.966158,
		-0.745683, 0.661109, -0.083016,
		-0.627945, -0.738944, -0.244227,
		39.947536, 43.587948, 26.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691982, 44.332592, 26.632811>,  <40.387100, 44.105209, 26.358322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691982, 44.332592, 26.632811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678078, 43.936287, 26.580381>,  <39.669735, 43.698505, 26.548923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678078, 43.936287, 26.580381>,  <39.691982, 44.332592, 26.632811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678078, 43.936287, 26.580381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280531, -0.116205, 0.952785,
		-0.959215, 0.069888, -0.273901,
		-0.034760, -0.990763, -0.131071,
		39.667648, 43.639057, 26.541059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139584, 44.118477, 26.878763>,  <39.691982, 44.332592, 26.632811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139584, 44.118477, 26.878763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371830, 43.793446, 26.899124>,  <39.511177, 43.598427, 26.911341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371830, 43.793446, 26.899124>,  <39.139584, 44.118477, 26.878763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371830, 43.793446, 26.899124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125416, -0.027492, 0.991723,
		-0.804457, -0.582198, -0.117873,
		0.580620, -0.812582, 0.050901,
		39.546017, 43.549671, 26.914394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472580, 44.197224, 26.588074>,  <39.139584, 44.118477, 26.878763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472580, 44.197224, 26.588074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154324, 44.438183, 26.613588>,  <37.963371, 44.582760, 26.628897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154324, 44.438183, 26.613588>,  <38.472580, 44.197224, 26.588074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154324, 44.438183, 26.613588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074753, 0.006854, -0.997178,
		-0.601137, -0.798165, 0.039578,
		-0.795642, 0.602400, 0.063786,
		37.915630, 44.618904, 26.632725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085323, 43.942078, 26.183653>,  <38.472580, 44.197224, 26.588074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085323, 43.942078, 26.183653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916481, 44.304672, 26.187916>,  <37.815178, 44.522228, 26.190474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916481, 44.304672, 26.187916>,  <38.085323, 43.942078, 26.183653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916481, 44.304672, 26.187916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015738, 0.019083, -0.999694,
		-0.906411, -0.421807, -0.022322,
		-0.422104, 0.906485, 0.010659,
		37.789848, 44.576618, 26.191114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597691, 43.914379, 25.714386>,  <38.085323, 43.942078, 26.183653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597691, 43.914379, 25.714386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.669834, 44.306488, 25.746735>,  <37.713120, 44.541752, 25.766144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.669834, 44.306488, 25.746735>,  <37.597691, 43.914379, 25.714386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669834, 44.306488, 25.746735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199834, 0.117026, -0.972816,
		-0.963087, 0.159296, 0.216998,
		0.180361, 0.980270, 0.080873,
		37.723942, 44.600571, 25.770996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026073, 44.217346, 25.370129>,  <37.597691, 43.914379, 25.714386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026073, 44.217346, 25.370129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283600, 44.523411, 25.372393>,  <37.438118, 44.707050, 25.373751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283600, 44.523411, 25.372393>,  <37.026073, 44.217346, 25.370129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283600, 44.523411, 25.372393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138638, 0.123921, -0.982560,
		-0.752514, 0.631805, 0.185862,
		0.643818, 0.765158, 0.005660,
		37.476746, 44.752956, 25.374090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705532, 44.772129, 24.994043>,  <37.026073, 44.217346, 25.370129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705532, 44.772129, 24.994043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102257, 44.817940, 25.016630>,  <37.340294, 44.845425, 25.030182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102257, 44.817940, 25.016630>,  <36.705532, 44.772129, 24.994043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102257, 44.817940, 25.016630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026787, 0.245752, -0.968963,
		-0.124848, 0.962544, 0.240673,
		0.991814, 0.114526, 0.056466,
		37.399799, 44.852299, 25.033569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764507, 45.363934, 24.654387>,  <36.705532, 44.772129, 24.994043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764507, 45.363934, 24.654387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111649, 45.165939, 24.637302>,  <37.319935, 45.047142, 24.627052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111649, 45.165939, 24.637302>,  <36.764507, 45.363934, 24.654387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111649, 45.165939, 24.637302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074616, -0.044868, -0.996202,
		0.491188, 0.867743, -0.075873,
		0.867852, -0.494984, -0.042708,
		37.372005, 45.017445, 24.624491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164837, 45.694595, 24.132286>,  <36.764507, 45.363934, 24.654387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164837, 45.694595, 24.132286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.319424, 45.327606, 24.169981>,  <37.412174, 45.107410, 24.192598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.319424, 45.327606, 24.169981>,  <37.164837, 45.694595, 24.132286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319424, 45.327606, 24.169981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123382, -0.152685, -0.980543,
		0.914014, 0.367319, -0.172207,
		0.386465, -0.917477, 0.094236,
		37.435364, 45.052364, 24.198252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572075, 45.663471, 23.564501>,  <37.164837, 45.694595, 24.132286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572075, 45.663471, 23.564501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528214, 45.283077, 23.680153>,  <37.501896, 45.054840, 23.749544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528214, 45.283077, 23.680153>,  <37.572075, 45.663471, 23.564501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528214, 45.283077, 23.680153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041074, -0.294971, -0.954623,
		0.993121, -0.092797, 0.071404,
		-0.109649, -0.950989, 0.289130,
		37.495319, 44.997780, 23.766891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115364, 45.369469, 23.258240>,  <37.572075, 45.663471, 23.564501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115364, 45.369469, 23.258240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.858868, 45.070400, 23.327278>,  <37.704971, 44.890957, 23.368702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.858868, 45.070400, 23.327278>,  <38.115364, 45.369469, 23.258240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858868, 45.070400, 23.327278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109381, -0.311696, -0.943865,
		0.759503, -0.586367, 0.281654,
		-0.641242, -0.747676, 0.172597,
		37.666496, 44.846096, 23.379057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351624, 44.720074, 22.777821>,  <38.115364, 45.369469, 23.258240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351624, 44.720074, 22.777821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969330, 44.670895, 22.884739>,  <37.739952, 44.641388, 22.948891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969330, 44.670895, 22.884739>,  <38.351624, 44.720074, 22.777821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969330, 44.670895, 22.884739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225356, -0.278161, -0.933724,
		0.189155, -0.952633, 0.238141,
		-0.955738, -0.122952, 0.267297,
		37.682610, 44.634010, 22.964928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162701, 44.104809, 22.378370>,  <38.351624, 44.720074, 22.777821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162701, 44.104809, 22.378370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838123, 44.315151, 22.480379>,  <37.643375, 44.441357, 22.541584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838123, 44.315151, 22.480379>,  <38.162701, 44.104809, 22.378370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838123, 44.315151, 22.480379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289963, 0.016620, -0.956894,
		-0.507424, -0.850413, 0.138992,
		-0.811444, 0.525853, 0.255021,
		37.594688, 44.472908, 22.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654633, 43.842323, 21.959953>,  <38.162701, 44.104809, 22.378370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654633, 43.842323, 21.959953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503902, 44.192978, 22.079630>,  <37.413464, 44.403370, 22.151436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503902, 44.192978, 22.079630>,  <37.654633, 43.842323, 21.959953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503902, 44.192978, 22.079630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167568, 0.253159, -0.952802,
		-0.911000, -0.409178, 0.051498,
		-0.376829, 0.876632, 0.299193,
		37.390854, 44.455967, 22.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114079, 43.930813, 21.519354>,  <37.654633, 43.842323, 21.959953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114079, 43.930813, 21.519354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145721, 44.300701, 21.668291>,  <37.164707, 44.522633, 21.757654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145721, 44.300701, 21.668291>,  <37.114079, 43.930813, 21.519354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145721, 44.300701, 21.668291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358907, 0.374884, -0.854779,
		-0.930015, -0.066020, 0.361543,
		0.079105, 0.924718, 0.372342,
		37.169453, 44.578117, 21.779993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754578, 43.276558, 21.708790>,  <37.114079, 43.930813, 21.519354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754578, 43.276558, 21.708790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380867, 43.211479, 21.581884>,  <36.156639, 43.172432, 21.505741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380867, 43.211479, 21.581884>,  <36.754578, 43.276558, 21.708790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380867, 43.211479, 21.581884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281100, -0.211275, 0.936133,
		-0.219334, 0.963791, 0.151656,
		-0.934278, -0.162696, -0.317262,
		36.100582, 43.162670, 21.486706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280178, 43.623657, 22.136559>,  <36.754578, 43.276558, 21.708790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280178, 43.623657, 22.136559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108215, 43.293346, 21.990530>,  <36.005039, 43.095161, 21.902912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108215, 43.293346, 21.990530>,  <36.280178, 43.623657, 22.136559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108215, 43.293346, 21.990530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227939, -0.291982, 0.928865,
		-0.873629, 0.482536, -0.062702,
		-0.429903, -0.825776, -0.365073,
		35.979244, 43.045612, 21.881008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712009, 43.530556, 22.584482>,  <36.280178, 43.623657, 22.136559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712009, 43.530556, 22.584482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777035, 43.177322, 22.408417>,  <35.816048, 42.965382, 22.302778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777035, 43.177322, 22.408417>,  <35.712009, 43.530556, 22.584482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777035, 43.177322, 22.408417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297130, -0.469202, 0.831603,
		-0.940897, -0.004400, -0.338663,
		0.162560, -0.883080, -0.440163,
		35.825802, 42.912399, 22.276367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128174, 43.173782, 22.750227>,  <35.712009, 43.530556, 22.584482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128174, 43.173782, 22.750227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.428993, 42.923553, 22.667202>,  <35.609486, 42.773415, 22.617386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.428993, 42.923553, 22.667202>,  <35.128174, 43.173782, 22.750227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428993, 42.923553, 22.667202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188925, -0.506299, 0.841409,
		-0.631452, -0.593566, -0.498947,
		0.752048, -0.625573, -0.207564,
		35.654606, 42.735882, 22.604933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874107, 42.573288, 22.928619>,  <35.128174, 43.173782, 22.750227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874107, 42.573288, 22.928619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.270569, 42.525352, 22.905832>,  <35.508446, 42.496590, 22.892160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.270569, 42.525352, 22.905832>,  <34.874107, 42.573288, 22.928619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270569, 42.525352, 22.905832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046730, -0.717067, 0.695436,
		-0.124190, -0.686625, -0.716327,
		0.991158, -0.119840, -0.056966,
		35.567917, 42.489399, 22.888742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955410, 41.924706, 23.073315>,  <34.874107, 42.573288, 22.928619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955410, 41.924706, 23.073315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325096, 42.069305, 23.122526>,  <35.546909, 42.156067, 23.152054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325096, 42.069305, 23.122526>,  <34.955410, 41.924706, 23.073315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325096, 42.069305, 23.122526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173102, -0.683797, 0.708842,
		0.340372, -0.633830, -0.694555,
		0.924220, 0.361499, 0.123029,
		35.602364, 42.177753, 23.159435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243572, 41.361637, 23.329128>,  <34.955410, 41.924706, 23.073315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243572, 41.361637, 23.329128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.527428, 41.623806, 23.432537>,  <35.697742, 41.781109, 23.494583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.527428, 41.623806, 23.432537>,  <35.243572, 41.361637, 23.329128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527428, 41.623806, 23.432537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008977, -0.375308, 0.926857,
		0.704508, -0.655413, -0.272217,
		0.709639, 0.655422, 0.258523,
		35.740318, 41.820431, 23.510094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712910, 40.952080, 23.696283>,  <35.243572, 41.361637, 23.329128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712910, 40.952080, 23.696283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.746235, 41.334545, 23.808580>,  <35.766228, 41.564022, 23.875959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.746235, 41.334545, 23.808580>,  <35.712910, 40.952080, 23.696283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746235, 41.334545, 23.808580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113362, -0.288988, 0.950597,
		0.990055, -0.047370, -0.132468,
		0.083311, 0.956160, 0.280744,
		35.771229, 41.621391, 23.892803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242947, 40.353729, 23.723114>,  <35.712910, 40.952080, 23.696283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242947, 40.353729, 23.723114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224991, 39.954445, 23.707355>,  <36.214218, 39.714874, 23.697901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224991, 39.954445, 23.707355>,  <36.242947, 40.353729, 23.723114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224991, 39.954445, 23.707355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018245, 0.040249, -0.999023,
		0.998825, -0.044127, -0.020020,
		-0.044890, -0.998215, -0.039396,
		36.211525, 39.654980, 23.695538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865849, 40.041729, 23.440926>,  <36.242947, 40.353729, 23.723114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865849, 40.041729, 23.440926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536884, 39.826031, 23.368416>,  <36.339508, 39.696613, 23.324911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536884, 39.826031, 23.368416>,  <36.865849, 40.041729, 23.440926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536884, 39.826031, 23.368416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208283, 0.011113, -0.978005,
		0.529399, -0.842076, 0.103176,
		-0.822408, -0.539245, -0.181273,
		36.290161, 39.664257, 23.314034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100849, 39.616795, 22.930603>,  <36.865849, 40.041729, 23.440926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100849, 39.616795, 22.930603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702038, 39.604904, 22.902163>,  <36.462753, 39.597771, 22.885098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702038, 39.604904, 22.902163>,  <37.100849, 39.616795, 22.930603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702038, 39.604904, 22.902163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062198, 0.234354, -0.970160,
		0.045504, -0.971697, -0.231808,
		-0.997026, -0.029728, -0.071101,
		36.402931, 39.595985, 22.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057980, 39.244022, 22.344017>,  <37.100849, 39.616795, 22.930603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057980, 39.244022, 22.344017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.704815, 39.426605, 22.388042>,  <36.492916, 39.536156, 22.414457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.704815, 39.426605, 22.388042>,  <37.057980, 39.244022, 22.344017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704815, 39.426605, 22.388042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060825, 0.121245, -0.990757,
		-0.465588, -0.881443, -0.079284,
		-0.882909, 0.456462, 0.110064,
		36.439941, 39.563545, 22.421062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567627, 38.874092, 21.945820>,  <37.057980, 39.244022, 22.344017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567627, 38.874092, 21.945820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396656, 39.231209, 22.002699>,  <36.294071, 39.445480, 22.036825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396656, 39.231209, 22.002699>,  <36.567627, 38.874092, 21.945820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396656, 39.231209, 22.002699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123269, 0.098263, -0.987496,
		-0.895604, -0.439615, 0.068053,
		-0.427431, 0.892795, 0.142196,
		36.268425, 39.499046, 22.045357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999126, 38.701416, 21.597752>,  <36.567627, 38.874092, 21.945820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999126, 38.701416, 21.597752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038647, 39.097946, 21.632416>,  <36.062359, 39.335865, 21.653214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038647, 39.097946, 21.632416>,  <35.999126, 38.701416, 21.597752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038647, 39.097946, 21.632416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225714, 0.107141, -0.968284,
		-0.969170, 0.076109, 0.234342,
		0.098803, 0.991326, 0.086659,
		36.068287, 39.395344, 21.658413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443382, 39.027813, 21.234653>,  <35.999126, 38.701416, 21.597752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443382, 39.027813, 21.234653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707909, 39.324490, 21.279478>,  <35.866623, 39.502495, 21.306374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707909, 39.324490, 21.279478>,  <35.443382, 39.027813, 21.234653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707909, 39.324490, 21.279478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019911, 0.166700, -0.985807,
		-0.749843, 0.649699, 0.125009,
		0.661316, 0.741689, 0.112062,
		35.906303, 39.546997, 21.313097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204617, 39.529293, 20.765554>,  <35.443382, 39.027813, 21.234653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204617, 39.529293, 20.765554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.587032, 39.615318, 20.845293>,  <35.816483, 39.666935, 20.893135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.587032, 39.615318, 20.845293>,  <35.204617, 39.529293, 20.765554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587032, 39.615318, 20.845293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212337, -0.038856, -0.976424,
		-0.202249, 0.975826, -0.082814,
		0.956038, 0.215065, 0.199345,
		35.873844, 39.679836, 20.905096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366638, 40.021824, 20.339420>,  <35.204617, 39.529293, 20.765554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366638, 40.021824, 20.339420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.726078, 39.878456, 20.440659>,  <35.941742, 39.792435, 20.501402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.726078, 39.878456, 20.440659>,  <35.366638, 40.021824, 20.339420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726078, 39.878456, 20.440659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289066, 0.049639, -0.956021,
		0.330095, 0.932239, 0.148213,
		0.898598, -0.358422, 0.253093,
		35.995659, 39.770931, 20.516586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.573620, 39.665146, 36.751556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936619, 39.589417, 36.601562>,  <37.154419, 39.543980, 36.511566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936619, 39.589417, 36.601562>,  <36.573620, 39.665146, 36.751556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936619, 39.589417, 36.601562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396360, -0.090277, -0.913646,
		0.139124, 0.977755, -0.156966,
		0.907493, -0.189326, -0.374983,
		37.208866, 39.532619, 36.489067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667171, 40.061821, 36.075272>,  <36.573620, 39.665146, 36.751556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667171, 40.061821, 36.075272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932858, 39.762814, 36.072922>,  <37.092270, 39.583408, 36.071514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932858, 39.762814, 36.072922>,  <36.667171, 40.061821, 36.075272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932858, 39.762814, 36.072922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218379, -0.186519, -0.957873,
		0.714929, 0.637520, -0.287131,
		0.664219, -0.747515, -0.005873,
		37.132122, 39.538559, 36.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101425, 40.082283, 35.397858>,  <36.667171, 40.061821, 36.075272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101425, 40.082283, 35.397858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161873, 39.708157, 35.525829>,  <37.198143, 39.483681, 35.602612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161873, 39.708157, 35.525829>,  <37.101425, 40.082283, 35.397858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161873, 39.708157, 35.525829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187885, -0.344920, -0.919635,
		0.970495, 0.078867, -0.227856,
		0.151121, -0.935313, 0.319925,
		37.207211, 39.427563, 35.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506649, 39.750263, 34.804775>,  <37.101425, 40.082283, 35.397858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506649, 39.750263, 34.804775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357834, 39.446690, 35.018539>,  <37.268543, 39.264545, 35.146797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357834, 39.446690, 35.018539>,  <37.506649, 39.750263, 34.804775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357834, 39.446690, 35.018539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284600, -0.454745, -0.843925,
		0.883509, -0.466070, -0.046810,
		-0.372042, -0.758937, 0.534415,
		37.246220, 39.219009, 35.178864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789066, 39.109814, 34.552551>,  <37.506649, 39.750263, 34.804775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789066, 39.109814, 34.552551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435333, 39.046722, 34.728313>,  <37.223095, 39.008869, 34.833771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435333, 39.046722, 34.728313>,  <37.789066, 39.109814, 34.552551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435333, 39.046722, 34.728313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304840, -0.517777, -0.799362,
		0.353599, -0.840850, 0.409803,
		-0.884330, -0.157729, 0.439410,
		37.170033, 38.999405, 34.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690556, 38.353676, 34.368290>,  <37.789066, 39.109814, 34.552551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690556, 38.353676, 34.368290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.331379, 38.477829, 34.493103>,  <37.115875, 38.552322, 34.567993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.331379, 38.477829, 34.493103>,  <37.690556, 38.353676, 34.368290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331379, 38.477829, 34.493103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421304, -0.401092, -0.813405,
		-0.127312, -0.861851, 0.490922,
		-0.897939, 0.310384, 0.312037,
		37.061996, 38.570946, 34.586716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231220, 37.785530, 34.376625>,  <37.690556, 38.353676, 34.368290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231220, 37.785530, 34.376625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040672, 38.132133, 34.316982>,  <36.926342, 38.340096, 34.281197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040672, 38.132133, 34.316982>,  <37.231220, 37.785530, 34.376625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040672, 38.132133, 34.316982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362221, -0.347933, -0.864719,
		-0.801166, -0.357917, 0.479613,
		-0.476371, 0.866509, -0.149106,
		36.897762, 38.392086, 34.272251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505966, 37.585320, 34.166519>,  <37.231220, 37.785530, 34.376625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505966, 37.585320, 34.166519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562778, 37.963558, 34.049442>,  <36.596867, 38.190502, 33.979195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562778, 37.963558, 34.049442>,  <36.505966, 37.585320, 34.166519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562778, 37.963558, 34.049442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526762, -0.178146, -0.831135,
		-0.838063, 0.272228, 0.472803,
		0.142031, 0.945598, -0.292697,
		36.605389, 38.247238, 33.961632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797115, 37.834774, 33.956657>,  <36.505966, 37.585320, 34.166519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797115, 37.834774, 33.956657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038521, 38.101254, 33.781410>,  <36.183365, 38.261143, 33.676262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038521, 38.101254, 33.781410>,  <35.797115, 37.834774, 33.956657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038521, 38.101254, 33.781410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528367, -0.077377, -0.845483,
		-0.597161, 0.741748, 0.305300,
		0.603512, 0.666200, -0.438122,
		36.219574, 38.301113, 33.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428005, 38.132210, 33.483551>,  <35.797115, 37.834774, 33.956657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428005, 38.132210, 33.483551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782440, 38.266800, 33.356026>,  <35.995102, 38.347553, 33.279510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782440, 38.266800, 33.356026>,  <35.428005, 38.132210, 33.483551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782440, 38.266800, 33.356026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397487, 0.197737, -0.896049,
		-0.238454, 0.920699, 0.308955,
		0.886083, 0.336472, -0.318814,
		36.048264, 38.367741, 33.260380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416676, 38.842453, 33.067719>,  <35.428005, 38.132210, 33.483551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416676, 38.842453, 33.067719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745842, 38.662537, 32.928867>,  <35.943340, 38.554588, 32.845554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745842, 38.662537, 32.928867>,  <35.416676, 38.842453, 33.067719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745842, 38.662537, 32.928867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365164, 0.049365, -0.929633,
		0.435273, 0.891771, -0.123623,
		0.822917, -0.449787, -0.347130,
		35.992718, 38.527599, 32.824730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689259, 39.138233, 32.441612>,  <35.416676, 38.842453, 33.067719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689259, 39.138233, 32.441612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898769, 38.798054, 32.422020>,  <36.024475, 38.593948, 32.410263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898769, 38.798054, 32.422020>,  <35.689259, 39.138233, 32.441612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898769, 38.798054, 32.422020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082735, 0.006438, -0.996551,
		0.847826, 0.526025, -0.066989,
		0.523780, -0.850445, -0.048980,
		36.055904, 38.542919, 32.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885796, 39.970291, 32.266895>,  <35.689259, 39.138233, 32.441612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885796, 39.970291, 32.266895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542953, 40.171757, 32.223644>,  <35.337250, 40.292637, 32.197693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542953, 40.171757, 32.223644>,  <35.885796, 39.970291, 32.266895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542953, 40.171757, 32.223644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092206, 0.056517, 0.994135,
		0.506825, 0.862047, -0.002000,
		-0.857104, 0.503668, -0.108130,
		35.285824, 40.322857, 32.191204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856277, 40.558487, 32.720131>,  <35.885796, 39.970291, 32.266895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856277, 40.558487, 32.720131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469139, 40.500763, 32.637714>,  <35.236858, 40.466129, 32.588264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469139, 40.500763, 32.637714>,  <35.856277, 40.558487, 32.720131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469139, 40.500763, 32.637714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222665, 0.110388, 0.968625,
		-0.117041, 0.983356, -0.138972,
		-0.967844, -0.144313, -0.206039,
		35.178787, 40.457470, 32.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526222, 41.007000, 33.190079>,  <35.856277, 40.558487, 32.720131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526222, 41.007000, 33.190079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231148, 40.755325, 33.092144>,  <35.054104, 40.604321, 33.033382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231148, 40.755325, 33.092144>,  <35.526222, 41.007000, 33.190079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231148, 40.755325, 33.092144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420351, 0.144240, 0.895823,
		-0.528321, 0.763756, -0.370881,
		-0.737686, -0.629183, -0.244841,
		35.009842, 40.566570, 33.018692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941223, 41.344105, 33.421425>,  <35.526222, 41.007000, 33.190079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941223, 41.344105, 33.421425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813404, 40.966129, 33.393177>,  <34.736713, 40.739346, 33.376228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813404, 40.966129, 33.393177>,  <34.941223, 41.344105, 33.421425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813404, 40.966129, 33.393177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664795, 0.170458, 0.727318,
		-0.675230, 0.279363, -0.682657,
		-0.319550, -0.944934, -0.070621,
		34.717541, 40.682648, 33.371990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277260, 41.432224, 33.557320>,  <34.941223, 41.344105, 33.421425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277260, 41.432224, 33.557320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352509, 41.042782, 33.609009>,  <34.397659, 40.809116, 33.640022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352509, 41.042782, 33.609009>,  <34.277260, 41.432224, 33.557320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352509, 41.042782, 33.609009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485221, 0.022262, 0.874108,
		-0.853916, -0.227139, -0.468227,
		0.188120, -0.973608, 0.129222,
		34.408943, 40.750698, 33.647774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687080, 41.097427, 33.654518>,  <34.277260, 41.432224, 33.557320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687080, 41.097427, 33.654518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959099, 40.847363, 33.807728>,  <34.122311, 40.697323, 33.899654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959099, 40.847363, 33.807728>,  <33.687080, 41.097427, 33.654518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959099, 40.847363, 33.807728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461598, 0.040807, 0.886150,
		-0.569618, -0.779427, -0.260824,
		0.680045, -0.625163, 0.383026,
		34.163113, 40.659813, 33.922634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284748, 40.564659, 33.976463>,  <33.687080, 41.097427, 33.654518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284748, 40.564659, 33.976463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634533, 40.560055, 34.170448>,  <33.844402, 40.557293, 34.286839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634533, 40.560055, 34.170448>,  <33.284748, 40.564659, 33.976463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634533, 40.560055, 34.170448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482736, 0.077971, 0.872288,
		-0.047851, -0.996889, 0.062628,
		0.874458, -0.011508, 0.484965,
		33.896870, 40.556602, 34.315937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168671, 40.173611, 34.595413>,  <33.284748, 40.564659, 33.976463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168671, 40.173611, 34.595413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503819, 40.375336, 34.678978>,  <33.704906, 40.496368, 34.729118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503819, 40.375336, 34.678978>,  <33.168671, 40.173611, 34.595413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503819, 40.375336, 34.678978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348760, 0.200148, 0.915591,
		0.419927, -0.840008, 0.343581,
		0.837871, 0.504309, 0.208913,
		33.755180, 40.526627, 34.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344467, 39.827080, 35.179348>,  <33.168671, 40.173611, 34.595413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344467, 39.827080, 35.179348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526672, 40.183014, 35.168774>,  <33.635998, 40.396576, 35.162430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526672, 40.183014, 35.168774>,  <33.344467, 39.827080, 35.179348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526672, 40.183014, 35.168774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207090, 0.134801, 0.968991,
		0.865805, -0.435916, 0.245680,
		0.455516, 0.889835, -0.026437,
		33.663326, 40.449963, 35.160843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626617, 39.956463, 35.794811>,  <33.344467, 39.827080, 35.179348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626617, 39.956463, 35.794811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645187, 40.333965, 35.663860>,  <33.656330, 40.560467, 35.585289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645187, 40.333965, 35.663860>,  <33.626617, 39.956463, 35.794811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645187, 40.333965, 35.663860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383212, 0.319483, 0.866648,
		0.922493, 0.085224, 0.376488,
		0.046422, 0.943752, -0.327380,
		33.659115, 40.617092, 35.565647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758228, 40.350170, 36.289742>,  <33.626617, 39.956463, 35.794811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758228, 40.350170, 36.289742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655956, 40.660606, 36.059155>,  <33.594593, 40.846867, 35.920803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655956, 40.660606, 36.059155>,  <33.758228, 40.350170, 36.289742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655956, 40.660606, 36.059155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242570, 0.525716, 0.815342,
		0.935836, 0.348298, 0.053843,
		-0.255676, 0.776087, -0.576471,
		33.579254, 40.893433, 35.886215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100815, 40.910599, 36.566559>,  <33.758228, 40.350170, 36.289742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100815, 40.910599, 36.566559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759869, 41.020813, 36.388775>,  <33.555302, 41.086941, 36.282104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759869, 41.020813, 36.388775>,  <34.100815, 40.910599, 36.566559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759869, 41.020813, 36.388775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276514, 0.483919, 0.830278,
		0.443854, 0.830604, -0.336288,
		-0.852369, 0.275534, -0.444464,
		33.504158, 41.103474, 36.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140564, 41.619720, 36.649734>,  <34.100815, 40.910599, 36.566559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140564, 41.619720, 36.649734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758419, 41.527168, 36.576248>,  <33.529133, 41.471638, 36.532158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758419, 41.527168, 36.576248>,  <34.140564, 41.619720, 36.649734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758419, 41.527168, 36.576248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289090, 0.603806, 0.742863,
		-0.060955, 0.762811, -0.643742,
		-0.955359, -0.231381, -0.183716,
		33.471809, 41.457752, 36.521133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759979, 42.209949, 36.338501>,  <34.140564, 41.619720, 36.649734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759979, 42.209949, 36.338501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458809, 42.003834, 36.502251>,  <33.278107, 41.880165, 36.600498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458809, 42.003834, 36.502251>,  <33.759979, 42.209949, 36.338501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458809, 42.003834, 36.502251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198908, 0.771129, 0.604811,
		-0.627331, 0.373948, -0.683094,
		-0.752922, -0.515290, 0.409372,
		33.232933, 41.849247, 36.625061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109295, 42.572769, 36.247017>,  <33.759979, 42.209949, 36.338501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109295, 42.572769, 36.247017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099464, 42.349396, 36.578690>,  <33.093567, 42.215370, 36.777695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099464, 42.349396, 36.578690>,  <33.109295, 42.572769, 36.247017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099464, 42.349396, 36.578690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287544, 0.798333, 0.529134,
		-0.957452, -0.225425, -0.180192,
		-0.024573, -0.558434, 0.829185,
		33.092094, 42.181866, 36.827446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267849, 43.301945, 36.204781>,  <33.109295, 42.572769, 36.247017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267849, 43.301945, 36.204781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651657, 43.362000, 36.300091>,  <33.881943, 43.398033, 36.357277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651657, 43.362000, 36.300091>,  <33.267849, 43.301945, 36.204781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651657, 43.362000, 36.300091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225014, 0.100089, -0.969201,
		-0.169362, 0.983586, 0.062255,
		0.959523, 0.150138, 0.238272,
		33.939514, 43.407040, 36.371571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576839, 43.986237, 35.987900>,  <33.267849, 43.301945, 36.204781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576839, 43.986237, 35.987900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876518, 43.721905, 36.005836>,  <34.056324, 43.563305, 36.016598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876518, 43.721905, 36.005836>,  <33.576839, 43.986237, 35.987900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876518, 43.721905, 36.005836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165133, 0.120789, -0.978847,
		0.641435, 0.740751, 0.199620,
		0.749194, -0.660831, 0.044844,
		34.101276, 43.523655, 36.019291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185997, 44.292473, 35.813179>,  <33.576839, 43.986237, 35.987900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185997, 44.292473, 35.813179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253368, 43.903103, 35.751102>,  <34.293793, 43.669483, 35.713856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253368, 43.903103, 35.751102>,  <34.185997, 44.292473, 35.813179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253368, 43.903103, 35.751102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236152, 0.192701, -0.952417,
		0.957007, 0.123770, 0.262332,
		0.168432, -0.973420, -0.155188,
		34.303898, 43.611076, 35.704544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941364, 44.279339, 35.527649>,  <34.185997, 44.292473, 35.813179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941364, 44.279339, 35.527649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748177, 43.937054, 35.453365>,  <34.632263, 43.731682, 35.408794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748177, 43.937054, 35.453365>,  <34.941364, 44.279339, 35.527649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748177, 43.937054, 35.453365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545721, -0.128292, -0.828088,
		0.684783, -0.501289, 0.528944,
		-0.482971, -0.855716, -0.185712,
		34.603287, 43.680340, 35.397652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414589, 43.788612, 35.354591>,  <34.941364, 44.279339, 35.527649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414589, 43.788612, 35.354591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086117, 43.623344, 35.197132>,  <34.889034, 43.524185, 35.102657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086117, 43.623344, 35.197132>,  <35.414589, 43.788612, 35.354591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086117, 43.623344, 35.197132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520155, -0.258146, -0.814125,
		0.234750, -0.873300, 0.426895,
		-0.821177, -0.413167, -0.393652,
		34.839764, 43.499393, 35.079037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614471, 43.189453, 35.094597>,  <35.414589, 43.788612, 35.354591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614471, 43.189453, 35.094597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270763, 43.259819, 34.902470>,  <35.064537, 43.302040, 34.787193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270763, 43.259819, 34.902470>,  <35.614471, 43.189453, 35.094597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270763, 43.259819, 34.902470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446868, -0.198786, -0.872234,
		-0.248921, -0.964125, 0.092200,
		-0.859271, 0.175917, -0.480319,
		35.012981, 43.312595, 34.758373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623085, 42.739830, 34.561466>,  <35.614471, 43.189453, 35.094597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623085, 42.739830, 34.561466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338127, 42.998913, 34.453407>,  <35.167152, 43.154362, 34.388573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338127, 42.998913, 34.453407>,  <35.623085, 42.739830, 34.561466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338127, 42.998913, 34.453407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428040, 0.095975, -0.898649,
		-0.556131, -0.755824, -0.345615,
		-0.712391, 0.647703, -0.270148,
		35.124409, 43.193222, 34.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346844, 42.499157, 33.817303>,  <35.623085, 42.739830, 34.561466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346844, 42.499157, 33.817303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287716, 42.893436, 33.849648>,  <35.252239, 43.130005, 33.869053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287716, 42.893436, 33.849648>,  <35.346844, 42.499157, 33.817303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287716, 42.893436, 33.849648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258401, 0.117411, -0.958876,
		-0.954661, -0.120847, -0.272063,
		-0.147821, 0.985703, 0.080860,
		35.243370, 43.189148, 33.873905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113373, 42.735050, 33.248589>,  <35.346844, 42.499157, 33.817303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113373, 42.735050, 33.248589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246052, 43.076450, 33.409340>,  <35.325661, 43.281292, 33.505791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246052, 43.076450, 33.409340>,  <35.113373, 42.735050, 33.248589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246052, 43.076450, 33.409340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430334, 0.242204, -0.869569,
		-0.839516, 0.461380, -0.286952,
		0.331700, 0.853502, 0.401881,
		35.345562, 43.332500, 33.529903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981068, 43.104832, 32.724945>,  <35.113373, 42.735050, 33.248589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981068, 43.104832, 32.724945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214951, 43.342392, 32.945999>,  <35.355278, 43.484928, 33.078632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214951, 43.342392, 32.945999>,  <34.981068, 43.104832, 32.724945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214951, 43.342392, 32.945999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368650, 0.412298, -0.833131,
		-0.722646, 0.690864, 0.022132,
		0.584705, 0.593900, 0.552632,
		35.390362, 43.520561, 33.111790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924019, 43.779068, 32.441525>,  <34.981068, 43.104832, 32.724945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924019, 43.779068, 32.441525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273560, 43.811340, 32.633308>,  <35.483284, 43.830704, 32.748379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273560, 43.811340, 32.633308>,  <34.924019, 43.779068, 32.441525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273560, 43.811340, 32.633308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363925, 0.545385, -0.755059,
		-0.322411, 0.834293, 0.447220,
		0.873848, 0.080685, 0.479458,
		35.535713, 43.835545, 32.777145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227741, 44.395596, 32.266037>,  <34.924019, 43.779068, 32.441525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227741, 44.395596, 32.266037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547085, 44.205585, 32.414082>,  <35.738689, 44.091579, 32.502907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547085, 44.205585, 32.414082>,  <35.227741, 44.395596, 32.266037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547085, 44.205585, 32.414082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502054, 0.185662, -0.844672,
		0.332524, 0.860164, 0.386712,
		0.798354, -0.475024, 0.370112,
		35.786591, 44.063080, 32.525116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820812, 44.795040, 32.185192>,  <35.227741, 44.395596, 32.266037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820812, 44.795040, 32.185192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980698, 44.430668, 32.226040>,  <36.076630, 44.212044, 32.250549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980698, 44.430668, 32.226040>,  <35.820812, 44.795040, 32.185192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980698, 44.430668, 32.226040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670210, 0.214440, -0.710517,
		0.625335, 0.352445, 0.696232,
		0.399718, -0.910932, 0.102115,
		36.100613, 44.157387, 32.256676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457706, 44.927971, 32.254150>,  <35.820812, 44.795040, 32.185192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457706, 44.927971, 32.254150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420834, 44.549679, 32.129509>,  <36.398712, 44.322704, 32.054726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420834, 44.549679, 32.129509>,  <36.457706, 44.927971, 32.254150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420834, 44.549679, 32.129509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697435, 0.162032, -0.698090,
		0.710695, -0.281671, 0.644650,
		-0.092178, -0.945731, -0.311603,
		36.393181, 44.265961, 32.036030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180969, 44.571716, 32.111176>,  <36.457706, 44.927971, 32.254150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180969, 44.571716, 32.111176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910564, 44.364864, 31.901190>,  <36.748322, 44.240753, 31.775198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910564, 44.364864, 31.901190>,  <37.180969, 44.571716, 32.111176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910564, 44.364864, 31.901190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529701, 0.154237, -0.834043,
		0.512278, -0.841894, 0.169660,
		-0.676008, -0.517131, -0.524965,
		36.707764, 44.209724, 31.743700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662544, 44.262321, 31.695694>,  <37.180969, 44.571716, 32.111176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662544, 44.262321, 31.695694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303894, 44.206585, 31.527576>,  <37.088703, 44.173141, 31.426706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303894, 44.206585, 31.527576>,  <37.662544, 44.262321, 31.695694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303894, 44.206585, 31.527576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432006, -0.067075, -0.899373,
		0.097135, -0.987969, 0.120340,
		-0.896625, -0.139348, -0.420293,
		37.034908, 44.164780, 31.401489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679508, 43.723679, 31.240490>,  <37.662544, 44.262321, 31.695694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679508, 43.723679, 31.240490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367996, 43.912758, 31.075539>,  <37.181087, 44.026207, 30.976568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367996, 43.912758, 31.075539>,  <37.679508, 43.723679, 31.240490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367996, 43.912758, 31.075539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343213, -0.229184, -0.910868,
		-0.525076, -0.850900, 0.016248,
		-0.778781, 0.472699, -0.412379,
		37.134361, 44.054565, 30.951824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562767, 43.393787, 30.630892>,  <37.679508, 43.723679, 31.240490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562767, 43.393787, 30.630892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364017, 43.738220, 30.587708>,  <37.244766, 43.944881, 30.561796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364017, 43.738220, 30.587708>,  <37.562767, 43.393787, 30.630892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364017, 43.738220, 30.587708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154044, -0.034917, -0.987447,
		-0.854042, -0.507267, -0.115295,
		-0.496873, 0.861081, -0.107962,
		37.214954, 43.996544, 30.555319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120907, 43.288700, 30.080271>,  <37.562767, 43.393787, 30.630892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120907, 43.288700, 30.080271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135864, 43.685482, 30.128643>,  <37.144840, 43.923553, 30.157667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135864, 43.685482, 30.128643>,  <37.120907, 43.288700, 30.080271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135864, 43.685482, 30.128643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100866, 0.116650, -0.988038,
		-0.994197, 0.049145, -0.095693,
		0.037394, 0.991956, 0.120930,
		37.147083, 43.983070, 30.164923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559677, 43.520271, 29.844042>,  <37.120907, 43.288700, 30.080271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559677, 43.520271, 29.844042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824368, 43.820145, 29.840284>,  <36.983181, 44.000069, 29.838030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824368, 43.820145, 29.840284>,  <36.559677, 43.520271, 29.844042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824368, 43.820145, 29.840284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072528, 0.051536, -0.996034,
		-0.746230, 0.659783, 0.088476,
		0.661726, 0.749687, -0.009395,
		37.022884, 44.045052, 29.837465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355362, 44.043961, 29.196922>,  <36.559677, 43.520271, 29.844042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355362, 44.043961, 29.196922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736366, 44.103447, 29.303204>,  <36.964970, 44.139137, 29.366972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736366, 44.103447, 29.303204>,  <36.355362, 44.043961, 29.196922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736366, 44.103447, 29.303204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216222, 0.284053, -0.934110,
		-0.214390, 0.947205, 0.238409,
		0.952515, 0.148714, 0.265705,
		37.022121, 44.148060, 29.382915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447910, 44.688820, 29.000597>,  <36.355362, 44.043961, 29.196922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447910, 44.688820, 29.000597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818062, 44.546249, 29.052193>,  <37.040154, 44.460709, 29.083151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818062, 44.546249, 29.052193>,  <36.447910, 44.688820, 29.000597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818062, 44.546249, 29.052193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254596, 0.332345, -0.908145,
		0.280818, 0.873216, 0.398289,
		0.925377, -0.356426, 0.128989,
		37.095676, 44.439323, 29.090889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725281, 45.034809, 28.509794>,  <36.447910, 44.688820, 29.000597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725281, 45.034809, 28.509794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020657, 44.782684, 28.605640>,  <37.197884, 44.631409, 28.663149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020657, 44.782684, 28.605640>,  <36.725281, 45.034809, 28.509794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020657, 44.782684, 28.605640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441855, 0.183862, -0.878043,
		0.509384, 0.754256, 0.414277,
		0.738438, -0.630312, 0.239615,
		37.242188, 44.593590, 28.677525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271927, 45.444214, 28.480093>,  <36.725281, 45.034809, 28.509794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271927, 45.444214, 28.480093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399815, 45.072090, 28.408207>,  <37.476547, 44.848816, 28.365076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399815, 45.072090, 28.408207>,  <37.271927, 45.444214, 28.480093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399815, 45.072090, 28.408207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282139, 0.274540, -0.919253,
		0.904531, 0.243199, 0.350254,
		0.319720, -0.930313, -0.179714,
		37.495731, 44.792995, 28.354292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892334, 45.465179, 28.156731>,  <37.271927, 45.444214, 28.480093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892334, 45.465179, 28.156731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757156, 45.106552, 28.042215>,  <37.676048, 44.891376, 27.973507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757156, 45.106552, 28.042215>,  <37.892334, 45.465179, 28.156731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757156, 45.106552, 28.042215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394432, 0.141264, -0.908002,
		0.854528, -0.419774, 0.305895,
		-0.337944, -0.896568, -0.286286,
		37.655773, 44.837582, 27.956329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488705, 45.011814, 27.742733>,  <37.892334, 45.465179, 28.156731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488705, 45.011814, 27.742733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137123, 44.850567, 27.640804>,  <37.926174, 44.753819, 27.579647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137123, 44.850567, 27.640804>,  <38.488705, 45.011814, 27.742733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137123, 44.850567, 27.640804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350108, -0.182616, -0.918736,
		0.323829, -0.896740, 0.301648,
		-0.878953, -0.403123, -0.254820,
		37.873436, 44.729630, 27.564358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644333, 44.424885, 27.288107>,  <38.488705, 45.011814, 27.742733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644333, 44.424885, 27.288107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273129, 44.532185, 27.184698>,  <38.050404, 44.596565, 27.122654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273129, 44.532185, 27.184698>,  <38.644333, 44.424885, 27.288107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273129, 44.532185, 27.184698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241095, -0.096585, -0.965683,
		-0.284011, -0.958496, 0.024959,
		-0.928015, 0.268247, -0.258520,
		37.994724, 44.612659, 27.107141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859558, 43.698372, 27.363523>,  <38.644333, 44.424885, 27.288107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859558, 43.698372, 27.363523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237782, 43.568352, 27.357008>,  <39.464714, 43.490337, 27.353100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237782, 43.568352, 27.357008>,  <38.859558, 43.698372, 27.363523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237782, 43.568352, 27.357008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025633, -0.124264, 0.991918,
		-0.324450, -0.937496, -0.125831,
		0.945556, -0.325053, -0.016286,
		39.521450, 43.470837, 27.352121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873505, 43.080242, 27.718941>,  <38.859558, 43.698372, 27.363523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873505, 43.080242, 27.718941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243797, 43.231148, 27.729513>,  <39.465973, 43.321690, 27.735857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243797, 43.231148, 27.729513>,  <38.873505, 43.080242, 27.718941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243797, 43.231148, 27.729513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013827, -0.036084, 0.999253,
		0.377932, -0.925404, -0.028188,
		0.925730, 0.377260, 0.026432,
		39.521515, 43.344326, 27.737442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155628, 42.637375, 28.247995>,  <38.873505, 43.080242, 27.718941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155628, 42.637375, 28.247995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435944, 42.918640, 28.199911>,  <39.604134, 43.087399, 28.171061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435944, 42.918640, 28.199911>,  <39.155628, 42.637375, 28.247995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435944, 42.918640, 28.199911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292074, -0.129080, 0.947645,
		0.650832, -0.699214, -0.295834,
		0.700793, 0.703163, -0.120213,
		39.646183, 43.129589, 28.163847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683941, 42.337708, 28.419641>,  <39.155628, 42.637375, 28.247995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683941, 42.337708, 28.419641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782810, 42.723484, 28.457083>,  <39.842133, 42.954948, 28.479548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782810, 42.723484, 28.457083>,  <39.683941, 42.337708, 28.419641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782810, 42.723484, 28.457083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205463, -0.146572, 0.967627,
		0.946937, -0.219940, -0.234386,
		0.247174, 0.964439, 0.093605,
		39.856964, 43.012817, 28.485165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364922, 42.333439, 28.763786>,  <39.683941, 42.337708, 28.419641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364922, 42.333439, 28.763786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171326, 42.679142, 28.818659>,  <40.055168, 42.886562, 28.851582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171326, 42.679142, 28.818659>,  <40.364922, 42.333439, 28.763786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171326, 42.679142, 28.818659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199109, -0.043890, 0.978994,
		0.852123, 0.501133, -0.150839,
		-0.483986, 0.864256, 0.137179,
		40.026131, 42.938419, 28.859812>
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
