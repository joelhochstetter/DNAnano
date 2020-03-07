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
	<4.578933, 3.853779, 2.034683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.278872, 4.101635, 1.942323>,  <4.098835, 4.250349, 1.886907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.278872, 4.101635, 1.942323>,  <4.578933, 3.853779, 2.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.278872, 4.101635, 1.942323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131709, -0.482193, -0.866108,
		-0.648015, -0.619301, 0.443331,
		-0.750153, 0.619642, -0.230901,
		4.053825, 4.287527, 1.873052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.022732, 3.430882, 1.615417>,  <4.578933, 3.853779, 2.034683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.022732, 3.430882, 1.615417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919922, 3.813828, 1.562667>,  <3.858236, 4.043595, 1.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919922, 3.813828, 1.562667>,  <4.022732, 3.430882, 1.615417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.919922, 3.813828, 1.562667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342252, -0.217789, -0.914020,
		-0.903771, -0.189791, 0.383637,
		-0.257025, 0.957365, -0.131874,
		3.842814, 4.101037, 1.523105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.390046, 3.438371, 1.213457>,  <4.022732, 3.430882, 1.615417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.390046, 3.438371, 1.213457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559956, 3.797523, 1.167190>,  <3.661901, 4.013015, 1.139430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559956, 3.797523, 1.167190>,  <3.390046, 3.438371, 1.213457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.559956, 3.797523, 1.167190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443767, 0.095149, -0.891077,
		-0.789074, 0.429835, 0.438866,
		0.424774, 0.897880, -0.115667,
		3.687388, 4.066887, 1.132490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.860539, 3.941637, 0.957980>,  <3.390046, 3.438371, 1.213457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.860539, 3.941637, 0.957980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217737, 4.070385, 0.832149>,  <3.432056, 4.147634, 0.756651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217737, 4.070385, 0.832149>,  <2.860539, 3.941637, 0.957980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.217737, 4.070385, 0.832149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387482, 0.194276, -0.901174,
		-0.228945, 0.926638, 0.298207,
		0.892996, 0.321869, -0.314577,
		3.485636, 4.166946, 0.737776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.696475, 4.314466, 0.400305>,  <2.860539, 3.941637, 0.957980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.696475, 4.314466, 0.400305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.090548, 4.268280, 0.349577>,  <3.326991, 4.240568, 0.319140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.090548, 4.268280, 0.349577>,  <2.696475, 4.314466, 0.400305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.090548, 4.268280, 0.349577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116455, 0.092499, -0.988879,
		0.125912, 0.988995, 0.077681,
		0.985182, -0.115465, -0.126821,
		3.386102, 4.233641, 0.311531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.879206, 4.788470, -0.054478>,  <2.696475, 4.314466, 0.400305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.879206, 4.788470, -0.054478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158871, 4.504124, -0.085052>,  <3.326669, 4.333516, -0.103396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158871, 4.504124, -0.085052>,  <2.879206, 4.788470, -0.054478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158871, 4.504124, -0.085052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136691, 0.237839, -0.961638,
		0.701776, 0.661892, 0.263457,
		0.699162, -0.710866, -0.076435,
		3.368619, 4.290864, -0.107982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.496499, 4.990559, -0.277556>,  <2.879206, 4.788470, -0.054478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.496499, 4.990559, -0.277556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490757, 4.605827, -0.386867>,  <3.487312, 4.374989, -0.452453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490757, 4.605827, -0.386867>,  <3.496499, 4.990559, -0.277556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.490757, 4.605827, -0.386867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232620, 0.262594, -0.936447,
		0.972462, -0.077012, 0.219971,
		-0.014354, -0.961828, -0.273277,
		3.486451, 4.317279, -0.468850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266579, 5.613406, -0.266768>,  <3.496499, 4.990559, -0.277556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266579, 5.613406, -0.266768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.403688, 5.653721, 0.106830>,  <3.485954, 5.677910, 0.330989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.403688, 5.653721, 0.106830>,  <3.266579, 5.613406, -0.266768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.403688, 5.653721, 0.106830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779707, -0.585083, -0.223013,
		0.523988, 0.804686, -0.279135,
		0.342773, 0.100788, 0.933996,
		3.506520, 5.683957, 0.387029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.469071, -0.011036, 2.042130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675205, 0.278336, 2.225904>,  <0.798886, 0.451959, 2.336168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675205, 0.278336, 2.225904>,  <0.469071, -0.011036, 2.042130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675205, 0.278336, 2.225904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157704, 0.606999, -0.778897,
		-0.842353, 0.328939, 0.426896,
		0.515335, 0.723430, 0.459433,
		0.829806, 0.495365, 2.363734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.061913, 0.486995, 2.064831>,  <0.469071, -0.011036, 2.042130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.061913, 0.486995, 2.064831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438519, 0.621758, 2.067529>,  <0.664482, 0.702615, 2.069148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438519, 0.621758, 2.067529>,  <0.061913, 0.486995, 2.064831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.438519, 0.621758, 2.067529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211292, 0.605832, -0.767022,
		-0.262501, 0.720737, 0.641585,
		0.941514, 0.336906, 0.006745,
		0.720973, 0.722829, 2.069552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.014463, 1.099800, 1.849790>,  <0.061913, 0.486995, 2.064831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.014463, 1.099800, 1.849790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.401758, 1.029961, 1.778200>,  <0.634135, 0.988057, 1.735247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.401758, 1.029961, 1.778200>,  <0.014463, 1.099800, 1.849790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.401758, 1.029961, 1.778200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062833, 0.522921, -0.850062,
		0.242009, 0.834308, 0.495341,
		0.968237, -0.174599, -0.178973,
		0.692229, 0.977581, 1.724508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.209938, 1.724899, 1.710594>,  <0.014463, 1.099800, 1.849790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.209938, 1.724899, 1.710594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.423315, 1.443607, 1.522591>,  <0.551341, 1.274832, 1.409789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.423315, 1.443607, 1.522591>,  <0.209938, 1.724899, 1.710594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.423315, 1.443607, 1.522591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088674, 0.506114, -0.857896,
		0.841175, 0.499315, 0.207624,
		0.533442, -0.703230, -0.470007,
		0.583348, 1.232638, 1.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704796, 2.066094, 1.330987>,  <0.209938, 1.724899, 1.710594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704796, 2.066094, 1.330987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.593632, 1.714954, 1.174964>,  <0.526933, 1.504270, 1.081350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.593632, 1.714954, 1.174964>,  <0.704796, 2.066094, 1.330987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.593632, 1.714954, 1.174964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281628, 0.462669, -0.840609,
		0.918396, -0.123763, -0.375808,
		-0.277910, -0.877850, -0.390058,
		0.510259, 1.451599, 1.057947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.007635, 2.066298, 0.688346>,  <0.704796, 2.066094, 1.330987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.007635, 2.066298, 0.688346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.676680, 1.841862, 0.698199>,  <0.478106, 1.707200, 0.704111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.676680, 1.841862, 0.698199>,  <1.007635, 2.066298, 0.688346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.676680, 1.841862, 0.698199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311541, 0.422024, -0.851374,
		0.467308, -0.712087, -0.523981,
		-0.827385, -0.561095, 0.024629,
		0.428463, 1.673535, 0.705589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.884112, 1.751882, 0.017222>,  <1.007635, 2.066298, 0.688346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.884112, 1.751882, 0.017222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562454, 1.833488, 0.240553>,  <0.369459, 1.882453, 0.374551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562454, 1.833488, 0.240553>,  <0.884112, 1.751882, 0.017222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.562454, 1.833488, 0.240553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426724, 0.455766, -0.781143,
		-0.413833, -0.866403, -0.279442,
		-0.804145, 0.204018, 0.558326,
		0.321211, 1.894694, 0.408051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261028, 1.338253, -0.264793>,  <0.884112, 1.751882, 0.017222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261028, 1.338253, -0.264793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220633, 1.697884, -0.094398>,  <0.196396, 1.913662, 0.007840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220633, 1.697884, -0.094398>,  <0.261028, 1.338253, -0.264793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.220633, 1.697884, -0.094398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534073, 0.312261, -0.785659,
		-0.839385, -0.306850, 0.448637,
		-0.100987, 0.899075, 0.425988,
		0.190336, 1.967606, 0.033399>
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
