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
	<4.600084, 3.689099, 4.260078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.244606, 3.855803, 4.183624>,  <4.031319, 3.955825, 4.137752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.244606, 3.855803, 4.183624>,  <4.600084, 3.689099, 4.260078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.244606, 3.855803, 4.183624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112114, -0.206694, -0.971961,
		-0.444580, -0.885206, 0.136964,
		-0.888695, 0.416759, -0.191136,
		3.977997, 3.980830, 4.126284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.267900, 3.282451, 3.740908>,  <4.600084, 3.689099, 4.260078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.267900, 3.282451, 3.740908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.114655, 3.651783, 3.730438>,  <4.022707, 3.873382, 3.724156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.114655, 3.651783, 3.730438>,  <4.267900, 3.282451, 3.740908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.114655, 3.651783, 3.730438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079406, 0.004690, -0.996831,
		-0.920282, -0.383978, -0.075114,
		-0.383114, 0.923330, -0.026174,
		3.999720, 3.928782, 3.722586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.521136, 3.411003, 3.603033>,  <4.267900, 3.282451, 3.740908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.521136, 3.411003, 3.603033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780426, 3.663136, 3.432159>,  <3.936000, 3.814415, 3.329635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780426, 3.663136, 3.432159>,  <3.521136, 3.411003, 3.603033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780426, 3.663136, 3.432159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108134, -0.479127, -0.871060,
		-0.753731, 0.610837, -0.242422,
		0.648226, 0.630330, -0.427185,
		3.974894, 3.852235, 3.304004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.256684, 3.777058, 3.016533>,  <3.521136, 3.411003, 3.603033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.256684, 3.777058, 3.016533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.649193, 3.702129, 2.998581>,  <3.884698, 3.657172, 2.987810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.649193, 3.702129, 2.998581>,  <3.256684, 3.777058, 3.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649193, 3.702129, 2.998581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115753, -0.387208, -0.914697,
		0.153965, 0.902763, -0.401640,
		0.981273, -0.187323, -0.044881,
		3.943575, 3.645933, 2.985117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.460608, 3.941016, 2.302649>,  <3.256684, 3.777058, 3.016533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.460608, 3.941016, 2.302649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.718712, 3.675966, 2.454739>,  <3.873574, 3.516937, 2.545993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.718712, 3.675966, 2.454739>,  <3.460608, 3.941016, 2.302649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.718712, 3.675966, 2.454739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071031, -0.443508, -0.893451,
		0.760655, 0.603515, -0.239111,
		0.645259, -0.662624, 0.380225,
		3.912289, 3.477179, 2.568806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047341, 3.887913, 1.782902>,  <3.460608, 3.941016, 2.302649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047341, 3.887913, 1.782902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041512, 3.553913, 2.002926>,  <4.038014, 3.353513, 2.134940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041512, 3.553913, 2.002926>,  <4.047341, 3.887913, 1.782902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041512, 3.553913, 2.002926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078869, -0.549363, -0.831853,
		0.996778, 0.031259, 0.073862,
		-0.014574, -0.834999, 0.550058,
		4.037139, 3.303413, 2.167943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.588865, 3.562385, 1.574895>,  <4.047341, 3.887913, 1.782902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.588865, 3.562385, 1.574895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326530, 3.312260, 1.744064>,  <4.169130, 3.162185, 1.845566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326530, 3.312260, 1.744064>,  <4.588865, 3.562385, 1.574895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.326530, 3.312260, 1.744064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022879, -0.543512, -0.839090,
		0.754557, -0.559981, 0.342148,
		-0.655836, -0.625313, 0.422922,
		4.129780, 3.124666, 1.870941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.826052, 2.926149, 1.633283>,  <4.588865, 3.562385, 1.574895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.826052, 2.926149, 1.633283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432343, 2.859934, 1.608620>,  <4.196117, 2.820204, 1.593822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432343, 2.859934, 1.608620>,  <4.826052, 2.926149, 1.633283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.432343, 2.859934, 1.608620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150817, -0.605757, -0.781225,
		0.091973, -0.778239, 0.621197,
		-0.984274, -0.165539, -0.061658,
		4.137060, 2.810272, 1.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.828042, 4.255460, 1.053437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.197845, 4.215473, 0.906311>,  <3.419728, 4.191481, 0.818035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.197845, 4.215473, 0.906311>,  <2.828042, 4.255460, 1.053437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.197845, 4.215473, 0.906311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063471, -0.911144, 0.407170,
		-0.375837, -0.399778, -0.836017,
		0.924509, -0.099967, -0.367816,
		3.475198, 4.185483, 0.795966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.847035, 3.574208, 0.945394>,  <2.828042, 4.255460, 1.053437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.847035, 3.574208, 0.945394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224945, 3.683708, 0.873325>,  <3.451691, 3.749409, 0.830084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224945, 3.683708, 0.873325>,  <2.847035, 3.574208, 0.945394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.224945, 3.683708, 0.873325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266907, -0.961746, -0.061681,
		-0.190165, 0.010185, -0.981699,
		0.944774, 0.273752, -0.180172,
		3.508377, 3.765834, 0.819274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.153502, 3.116572, 1.436913>,  <2.847035, 3.574208, 0.945394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.153502, 3.116572, 1.436913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420578, 2.828945, 1.359833>,  <3.580823, 2.656369, 1.313584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420578, 2.828945, 1.359833>,  <3.153502, 3.116572, 1.436913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420578, 2.828945, 1.359833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302315, 0.025356, 0.952871,
		-0.680292, -0.694478, 0.234314,
		0.667689, -0.719067, -0.192702,
		3.620885, 2.613225, 1.302022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.962821, 2.505722, 1.862299>,  <3.153502, 3.116572, 1.436913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.962821, 2.505722, 1.862299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.347153, 2.577511, 1.777824>,  <3.577751, 2.620584, 1.727140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.347153, 2.577511, 1.777824>,  <2.962821, 2.505722, 1.862299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347153, 2.577511, 1.777824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173458, 0.204885, 0.963293,
		0.216175, -0.962187, 0.165723,
		0.960823, 0.179494, -0.211190,
		3.635401, 2.631352, 1.714468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.380784, 2.251386, 2.442089>,  <2.962821, 2.505722, 1.862299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.380784, 2.251386, 2.442089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607376, 2.526882, 2.261097>,  <3.743331, 2.692180, 2.152502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607376, 2.526882, 2.261097>,  <3.380784, 2.251386, 2.442089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.607376, 2.526882, 2.261097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236788, 0.389880, 0.889902,
		0.789324, -0.611253, 0.057773,
		0.566480, 0.688740, -0.452479,
		3.777320, 2.733504, 2.125353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.021731, 2.239519, 2.874425>,  <3.380784, 2.251386, 2.442089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.021731, 2.239519, 2.874425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029510, 2.583004, 2.669590>,  <4.034178, 2.789095, 2.546689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029510, 2.583004, 2.669590>,  <4.021731, 2.239519, 2.874425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.029510, 2.583004, 2.669590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308310, 0.482072, 0.820092,
		0.951087, -0.173830, -0.255375,
		0.019448, 0.858714, -0.512087,
		4.035345, 2.840618, 2.515964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.704041, 2.574404, 3.038495>,  <4.021731, 2.239519, 2.874425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.704041, 2.574404, 3.038495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419540, 2.829460, 2.920151>,  <4.248840, 2.982494, 2.849144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419540, 2.829460, 2.920151>,  <4.704041, 2.574404, 3.038495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.419540, 2.829460, 2.920151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273438, 0.638717, 0.719216,
		0.647573, 0.430645, -0.628645,
		-0.711253, 0.637641, -0.295861,
		4.206164, 3.020752, 2.831392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.077996, 3.245023, 2.883680>,  <4.704041, 2.574404, 3.038495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.077996, 3.245023, 2.883680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.693237, 3.259563, 2.992073>,  <4.462382, 3.268288, 3.057109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.693237, 3.259563, 2.992073>,  <5.077996, 3.245023, 2.883680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693237, 3.259563, 2.992073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246860, 0.541517, 0.803629,
		-0.117528, 0.839904, -0.529858,
		-0.961898, 0.036352, 0.270982,
		4.404668, 3.270469, 3.073368>
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
