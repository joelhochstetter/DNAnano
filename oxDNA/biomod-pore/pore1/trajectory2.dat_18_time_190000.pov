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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.215607, 40.836781, 45.173840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.111900, 41.126862, 45.428986>,  <50.049675, 41.300911, 45.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.111900, 41.126862, 45.428986>,  <50.215607, 40.836781, 45.173840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.111900, 41.126862, 45.428986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744370, -0.570857, 0.346461,
		0.615381, -0.384978, 0.687822,
		-0.259268, 0.725199, 0.637861,
		50.034119, 41.344421, 45.620342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.046192, 40.601299, 45.917664>,  <50.215607, 40.836781, 45.173840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.046192, 40.601299, 45.917664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861145, 40.954506, 45.886009>,  <49.750118, 41.166431, 45.867016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861145, 40.954506, 45.886009>,  <50.046192, 40.601299, 45.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.861145, 40.954506, 45.886009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827652, -0.398163, 0.395548,
		0.317767, 0.248485, 0.915030,
		-0.462618, 0.883018, -0.079137,
		49.722359, 41.219410, 45.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.690125, 40.727448, 46.628059>,  <50.046192, 40.601299, 45.917664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.690125, 40.727448, 46.628059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.483025, 40.961143, 46.378067>,  <49.358765, 41.101360, 46.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.483025, 40.961143, 46.378067>,  <49.690125, 40.727448, 46.628059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.483025, 40.961143, 46.378067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850100, -0.269112, 0.452668,
		0.096280, 0.765661, 0.635998,
		-0.517745, 0.584244, -0.624979,
		49.327702, 41.136417, 46.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.208023, 40.997700, 47.065445>,  <49.690125, 40.727448, 46.628059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.208023, 40.997700, 47.065445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.074417, 41.053925, 46.692635>,  <48.994255, 41.087658, 46.468948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.074417, 41.053925, 46.692635>,  <49.208023, 40.997700, 47.065445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.074417, 41.053925, 46.692635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936381, -0.162599, 0.311050,
		-0.107826, 0.976629, 0.185926,
		-0.334012, 0.140558, -0.932030,
		48.974213, 41.096092, 46.413025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.675774, 41.562145, 47.102070>,  <49.208023, 40.997700, 47.065445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.675774, 41.562145, 47.102070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596375, 41.369125, 46.760838>,  <48.548737, 41.253315, 46.556099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596375, 41.369125, 46.760838>,  <48.675774, 41.562145, 47.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.596375, 41.369125, 46.760838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939049, -0.155639, 0.306534,
		-0.280690, 0.861930, -0.422243,
		-0.198494, -0.482548, -0.853081,
		48.536827, 41.224361, 46.504913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.111366, 41.926888, 46.719761>,  <48.675774, 41.562145, 47.102070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.111366, 41.926888, 46.719761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.112862, 41.539062, 46.621834>,  <48.113758, 41.306366, 46.563076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.112862, 41.539062, 46.621834>,  <48.111366, 41.926888, 46.719761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.112862, 41.539062, 46.621834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940080, -0.086878, 0.329700,
		-0.340934, 0.228917, -0.911790,
		0.003740, -0.969561, -0.244820,
		48.113983, 41.248196, 46.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576233, 41.907490, 46.346447>,  <48.111366, 41.926888, 46.719761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576233, 41.907490, 46.346447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635452, 41.522308, 46.436607>,  <47.670982, 41.291199, 46.490704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635452, 41.522308, 46.436607>,  <47.576233, 41.907490, 46.346447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635452, 41.522308, 46.436607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981087, -0.114262, 0.156247,
		-0.124705, -0.244259, -0.961658,
		0.148046, -0.962955, 0.225390,
		47.679867, 41.233421, 46.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928207, 41.685547, 46.255920>,  <47.576233, 41.907490, 46.346447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928207, 41.685547, 46.255920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110802, 41.378738, 46.436272>,  <47.220360, 41.194653, 46.544483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110802, 41.378738, 46.436272>,  <46.928207, 41.685547, 46.255920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110802, 41.378738, 46.436272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831054, -0.186590, 0.523959,
		-0.317759, -0.613888, -0.722614,
		0.456485, -0.767024, 0.450883,
		47.247746, 41.148632, 46.571537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450031, 41.137169, 46.254826>,  <46.928207, 41.685547, 46.255920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450031, 41.137169, 46.254826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705971, 41.067535, 46.554234>,  <46.859535, 41.025757, 46.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705971, 41.067535, 46.554234>,  <46.450031, 41.137169, 46.254826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705971, 41.067535, 46.554234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767462, -0.195307, 0.610620,
		0.039893, -0.965169, -0.258570,
		0.639852, -0.174083, 0.748521,
		46.897926, 41.015308, 46.778790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212173, 40.422348, 46.531948>,  <46.450031, 41.137169, 46.254826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212173, 40.422348, 46.531948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414223, 40.604927, 46.824932>,  <46.535454, 40.714474, 47.000721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414223, 40.604927, 46.824932>,  <46.212173, 40.422348, 46.531948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414223, 40.604927, 46.824932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653323, -0.352318, 0.670106,
		0.563929, -0.817022, 0.120244,
		0.505127, 0.456450, 0.732461,
		46.565762, 40.741863, 47.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261353, 39.836494, 47.028496>,  <46.212173, 40.422348, 46.531948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261353, 39.836494, 47.028496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347374, 40.172997, 47.226910>,  <46.398987, 40.374897, 47.345959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347374, 40.172997, 47.226910>,  <46.261353, 39.836494, 47.028496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347374, 40.172997, 47.226910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610987, -0.280342, 0.740340,
		0.761870, -0.462283, 0.453705,
		0.215055, 0.841251, 0.496033,
		46.411892, 40.425373, 47.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427174, 39.646961, 47.655273>,  <46.261353, 39.836494, 47.028496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427174, 39.646961, 47.655273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335526, 40.034119, 47.696625>,  <46.280537, 40.266415, 47.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335526, 40.034119, 47.696625>,  <46.427174, 39.646961, 47.655273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335526, 40.034119, 47.696625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571181, -0.219681, 0.790881,
		0.788199, 0.122156, 0.603175,
		-0.229117, 0.967893, 0.103379,
		46.266788, 40.324486, 47.727638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594463, 39.806229, 48.268047>,  <46.427174, 39.646961, 47.655273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594463, 39.806229, 48.268047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320198, 40.079437, 48.167374>,  <46.155640, 40.243362, 48.106968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320198, 40.079437, 48.167374>,  <46.594463, 39.806229, 48.268047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320198, 40.079437, 48.167374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545009, -0.252510, 0.799502,
		0.482524, 0.685362, 0.545390,
		-0.685664, 0.683021, -0.251686,
		46.114498, 40.284344, 48.091869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473015, 40.087025, 48.881554>,  <46.594463, 39.806229, 48.268047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473015, 40.087025, 48.881554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153084, 40.198677, 48.669006>,  <45.961124, 40.265667, 48.541477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153084, 40.198677, 48.669006>,  <46.473015, 40.087025, 48.881554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153084, 40.198677, 48.669006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571474, -0.083433, 0.816368,
		0.183537, 0.956622, 0.226247,
		-0.799832, 0.279128, -0.531372,
		45.913136, 40.282417, 48.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191849, 40.779289, 49.139256>,  <46.473015, 40.087025, 48.881554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191849, 40.779289, 49.139256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882660, 40.599564, 48.960087>,  <45.697147, 40.491726, 48.852585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882660, 40.599564, 48.960087>,  <46.191849, 40.779289, 49.139256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882660, 40.599564, 48.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481965, -0.043261, 0.875122,
		-0.412586, 0.892324, -0.183116,
		-0.772970, -0.449318, -0.447917,
		45.650768, 40.464767, 48.825710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568100, 41.026897, 49.511372>,  <46.191849, 40.779289, 49.139256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568100, 41.026897, 49.511372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424545, 40.698105, 49.334488>,  <45.338413, 40.500828, 49.228359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424545, 40.698105, 49.334488>,  <45.568100, 41.026897, 49.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424545, 40.698105, 49.334488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563420, -0.186940, 0.804743,
		-0.744150, 0.537960, -0.396030,
		-0.358886, -0.821980, -0.442209,
		45.316879, 40.451511, 49.201824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842312, 40.846272, 49.774857>,  <45.568100, 41.026897, 49.511372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842312, 40.846272, 49.774857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928497, 40.513145, 49.570900>,  <44.980209, 40.313271, 49.448528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928497, 40.513145, 49.570900>,  <44.842312, 40.846272, 49.774857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928497, 40.513145, 49.570900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524739, -0.539104, 0.658798,
		-0.823543, 0.125610, -0.553171,
		0.215465, -0.832820, -0.509888,
		44.993137, 40.263298, 49.417934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267231, 40.529518, 49.526493>,  <44.842312, 40.846272, 49.774857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267231, 40.529518, 49.526493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535217, 40.233910, 49.554752>,  <44.696007, 40.056545, 49.571709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535217, 40.233910, 49.554752>,  <44.267231, 40.529518, 49.526493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535217, 40.233910, 49.554752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627636, -0.513002, 0.585578,
		-0.396513, -0.436658, -0.807531,
		0.669963, -0.739025, 0.070650,
		44.736206, 40.012203, 49.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862705, 39.934902, 49.503857>,  <44.267231, 40.529518, 49.526493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862705, 39.934902, 49.503857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213516, 39.812378, 49.651913>,  <44.424004, 39.738865, 49.740746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213516, 39.812378, 49.651913>,  <43.862705, 39.934902, 49.503857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213516, 39.812378, 49.651913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479238, -0.503167, 0.719134,
		-0.034036, -0.808083, -0.588085,
		0.877025, -0.306309, 0.370139,
		44.476624, 39.720486, 49.762955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762657, 39.176071, 49.753239>,  <43.862705, 39.934902, 49.503857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762657, 39.176071, 49.753239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085350, 39.314743, 49.944653>,  <44.278965, 39.397945, 50.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085350, 39.314743, 49.944653>,  <43.762657, 39.176071, 49.753239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085350, 39.314743, 49.944653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308426, -0.443730, 0.841414,
		0.504045, -0.826387, -0.251045,
		0.806729, 0.346682, 0.478539,
		44.327370, 39.418747, 50.088215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011524, 38.657997, 50.213062>,  <43.762657, 39.176071, 49.753239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011524, 38.657997, 50.213062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166901, 38.980652, 50.391258>,  <44.260128, 39.174244, 50.498177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166901, 38.980652, 50.391258>,  <44.011524, 38.657997, 50.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166901, 38.980652, 50.391258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251188, -0.372450, 0.893412,
		0.886576, -0.458939, 0.057942,
		0.388441, 0.806632, 0.445486,
		44.283432, 39.222641, 50.524902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429039, 38.363533, 50.893173>,  <44.011524, 38.657997, 50.213062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429039, 38.363533, 50.893173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383232, 38.756523, 50.952011>,  <44.355747, 38.992317, 50.987312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383232, 38.756523, 50.952011>,  <44.429039, 38.363533, 50.893173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383232, 38.756523, 50.952011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353367, -0.178667, 0.918264,
		0.928449, 0.053179, 0.367634,
		-0.114517, 0.982471, 0.147092,
		44.348877, 39.051266, 50.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563148, 38.394299, 51.584564>,  <44.429039, 38.363533, 50.893173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563148, 38.394299, 51.584564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420517, 38.763695, 51.527977>,  <44.334938, 38.985332, 51.494026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420517, 38.763695, 51.527977>,  <44.563148, 38.394299, 51.584564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420517, 38.763695, 51.527977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330439, 0.016965, 0.943675,
		0.873876, 0.383243, 0.299108,
		-0.356582, 0.923492, -0.141463,
		44.313541, 39.040741, 51.485538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769482, 38.757015, 52.173336>,  <44.563148, 38.394299, 51.584564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769482, 38.757015, 52.173336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457474, 38.959785, 52.026588>,  <44.270267, 39.081448, 51.938538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457474, 38.959785, 52.026588>,  <44.769482, 38.757015, 52.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457474, 38.959785, 52.026588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410769, 0.027482, 0.911325,
		0.472060, 0.861550, 0.186795,
		-0.780018, 0.506929, -0.366871,
		44.223469, 39.111866, 51.916527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621223, 39.402412, 52.547794>,  <44.769482, 38.757015, 52.173336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621223, 39.402412, 52.547794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262955, 39.335754, 52.382866>,  <44.047993, 39.295757, 52.283909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262955, 39.335754, 52.382866>,  <44.621223, 39.402412, 52.547794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262955, 39.335754, 52.382866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422892, 0.032254, 0.905606,
		-0.137618, 0.985489, -0.099363,
		-0.895669, -0.166648, -0.412317,
		43.994255, 39.285759, 52.259171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113789, 39.871731, 52.930378>,  <44.621223, 39.402412, 52.547794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113789, 39.871731, 52.930378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894341, 39.583954, 52.760002>,  <43.762672, 39.411289, 52.657776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894341, 39.583954, 52.760002>,  <44.113789, 39.871731, 52.930378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894341, 39.583954, 52.760002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531919, -0.092702, 0.841706,
		-0.645045, 0.688336, -0.331828,
		-0.548616, -0.719444, -0.425936,
		43.729755, 39.368122, 52.632221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320633, 40.039337, 53.039879>,  <44.113789, 39.871731, 52.930378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320633, 40.039337, 53.039879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335625, 39.645378, 52.972279>,  <43.344620, 39.409000, 52.931717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335625, 39.645378, 52.972279>,  <43.320633, 40.039337, 53.039879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335625, 39.645378, 52.972279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641422, -0.153396, 0.751697,
		-0.766273, 0.080231, -0.637487,
		0.037478, -0.984903, -0.169005,
		43.346867, 39.349907, 52.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657082, 39.906120, 53.118156>,  <43.320633, 40.039337, 53.039879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657082, 39.906120, 53.118156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823738, 39.544174, 53.153091>,  <42.923733, 39.327007, 53.174053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823738, 39.544174, 53.153091>,  <42.657082, 39.906120, 53.118156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823738, 39.544174, 53.153091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589622, -0.195855, 0.783573,
		-0.691924, -0.377963, -0.615131,
		0.416638, -0.904868, 0.087338,
		42.948730, 39.272713, 53.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127911, 39.322285, 53.214897>,  <42.657082, 39.906120, 53.118156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127911, 39.322285, 53.214897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460953, 39.182434, 53.386723>,  <42.660778, 39.098522, 53.489819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460953, 39.182434, 53.386723>,  <42.127911, 39.322285, 53.214897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460953, 39.182434, 53.386723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524446, -0.248256, 0.814448,
		-0.178104, -0.903402, -0.390057,
		0.832607, -0.349620, 0.429570,
		42.710735, 39.077545, 53.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884853, 38.668980, 53.460144>,  <42.127911, 39.322285, 53.214897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884853, 38.668980, 53.460144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225899, 38.694939, 53.667542>,  <42.430527, 38.710514, 53.791981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225899, 38.694939, 53.667542>,  <41.884853, 38.668980, 53.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225899, 38.694939, 53.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516838, -0.041479, 0.855078,
		0.076998, -0.997030, -0.001824,
		0.852613, 0.064896, 0.518496,
		42.481682, 38.714409, 53.823090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001080, 38.004547, 53.793278>,  <41.884853, 38.668980, 53.460144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001080, 38.004547, 53.793278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209969, 38.291962, 53.977009>,  <42.335300, 38.464413, 54.087250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209969, 38.291962, 53.977009>,  <42.001080, 38.004547, 53.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209969, 38.291962, 53.977009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518305, -0.160303, 0.840038,
		0.677233, -0.676758, 0.288709,
		0.522221, 0.718541, 0.459330,
		42.366634, 38.507523, 54.114807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222004, 37.730145, 54.487823>,  <42.001080, 38.004547, 53.793278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222004, 37.730145, 54.487823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224373, 38.129883, 54.502136>,  <42.225796, 38.369724, 54.510723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224373, 38.129883, 54.502136>,  <42.222004, 37.730145, 54.487823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224373, 38.129883, 54.502136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594753, -0.025240, 0.803512,
		0.803887, -0.026041, 0.594212,
		0.005927, 0.999342, 0.035778,
		42.226151, 38.429684, 54.512871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254009, 37.844635, 55.114452>,  <42.222004, 37.730145, 54.487823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254009, 37.844635, 55.114452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121925, 38.205505, 55.003426>,  <42.042675, 38.422028, 54.936810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121925, 38.205505, 55.003426>,  <42.254009, 37.844635, 55.114452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121925, 38.205505, 55.003426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590829, 0.031776, 0.806171,
		0.736127, 0.430200, 0.522537,
		-0.330210, 0.902174, -0.277566,
		42.022861, 38.476158, 54.920155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231949, 38.313633, 55.781303>,  <42.254009, 37.844635, 55.114452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231949, 38.313633, 55.781303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991096, 38.500366, 55.522224>,  <41.846584, 38.612408, 55.366779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991096, 38.500366, 55.522224>,  <42.231949, 38.313633, 55.781303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991096, 38.500366, 55.522224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661192, 0.163142, 0.732263,
		0.447510, 0.869168, 0.210433,
		-0.602129, 0.466832, -0.647695,
		41.810459, 38.640415, 55.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108395, 38.925537, 56.108665>,  <42.231949, 38.313633, 55.781303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108395, 38.925537, 56.108665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812675, 38.883682, 55.842587>,  <41.635246, 38.858570, 55.682938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812675, 38.883682, 55.842587>,  <42.108395, 38.925537, 56.108665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812675, 38.883682, 55.842587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649439, 0.371863, 0.663285,
		0.177962, 0.922372, -0.342869,
		-0.739296, -0.104633, -0.665202,
		41.590885, 38.852291, 55.643024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764244, 39.502052, 56.279964>,  <42.108395, 38.925537, 56.108665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764244, 39.502052, 56.279964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518070, 39.269699, 56.066872>,  <41.370365, 39.130287, 55.939014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518070, 39.269699, 56.066872>,  <41.764244, 39.502052, 56.279964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518070, 39.269699, 56.066872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764725, 0.276392, 0.582068,
		-0.190872, 0.765623, -0.614321,
		-0.615438, -0.580887, -0.532735,
		41.333439, 39.095432, 55.907051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145233, 39.949493, 56.163902>,  <41.764244, 39.502052, 56.279964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145233, 39.949493, 56.163902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028210, 39.567329, 56.147881>,  <40.957996, 39.338032, 56.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028210, 39.567329, 56.147881>,  <41.145233, 39.949493, 56.163902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028210, 39.567329, 56.147881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756006, 0.205439, 0.621490,
		-0.585548, 0.212102, -0.782398,
		-0.292554, -0.955410, -0.040056,
		40.940445, 39.280708, 56.135864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440403, 39.965420, 56.234898>,  <41.145233, 39.949493, 56.163902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440403, 39.965420, 56.234898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498077, 39.581978, 56.333118>,  <40.532681, 39.351913, 56.392052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498077, 39.581978, 56.333118>,  <40.440403, 39.965420, 56.234898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498077, 39.581978, 56.333118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686107, 0.081965, 0.722869,
		-0.713069, -0.272701, -0.645884,
		0.144187, -0.958601, 0.245549,
		40.541332, 39.294399, 56.406784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778721, 39.683990, 56.254673>,  <40.440403, 39.965420, 56.234898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778721, 39.683990, 56.254673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015224, 39.436142, 56.461159>,  <40.157127, 39.287434, 56.585052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015224, 39.436142, 56.461159>,  <39.778721, 39.683990, 56.254673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015224, 39.436142, 56.461159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687394, -0.052427, 0.724390,
		-0.421783, -0.783149, -0.456921,
		0.591260, -0.619620, 0.516219,
		40.192604, 39.250256, 56.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305252, 39.227585, 56.549789>,  <39.778721, 39.683990, 56.254673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305252, 39.227585, 56.549789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639263, 39.187012, 56.766098>,  <39.839672, 39.162666, 56.895882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639263, 39.187012, 56.766098>,  <39.305252, 39.227585, 56.549789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639263, 39.187012, 56.766098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550048, -0.130565, 0.824864,
		-0.013063, -0.986237, -0.164819,
		0.835031, -0.101433, 0.540772,
		39.889771, 39.156582, 56.928329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220211, 38.561321, 56.895756>,  <39.305252, 39.227585, 56.549789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220211, 38.561321, 56.895756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514374, 38.754883, 57.085495>,  <39.690872, 38.871021, 57.199341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514374, 38.754883, 57.085495>,  <39.220211, 38.561321, 56.895756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514374, 38.754883, 57.085495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490842, -0.102201, 0.865234,
		0.467171, -0.869132, 0.162361,
		0.735409, 0.483905, 0.474352,
		39.734997, 38.900055, 57.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133991, 38.266380, 57.421116>,  <39.220211, 38.561321, 56.895756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133991, 38.266380, 57.421116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346443, 38.589584, 57.523113>,  <39.473915, 38.783508, 57.584312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346443, 38.589584, 57.523113>,  <39.133991, 38.266380, 57.421116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346443, 38.589584, 57.523113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465233, 0.026588, 0.884789,
		0.708141, -0.588564, 0.390036,
		0.531126, 0.808013, 0.254991,
		39.505779, 38.831989, 57.599609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576004, 38.118340, 58.021103>,  <39.133991, 38.266380, 57.421116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576004, 38.118340, 58.021103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483948, 38.507095, 58.001244>,  <39.428715, 38.740349, 57.989326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483948, 38.507095, 58.001244>,  <39.576004, 38.118340, 58.021103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483948, 38.507095, 58.001244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400071, -0.047978, 0.915227,
		0.887119, 0.230491, 0.399867,
		-0.230136, 0.971891, -0.049650,
		39.414906, 38.798664, 57.986347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912079, 38.527836, 58.627628>,  <39.576004, 38.118340, 58.021103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912079, 38.527836, 58.627628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574089, 38.706810, 58.510448>,  <39.371296, 38.814194, 58.440140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574089, 38.706810, 58.510448>,  <39.912079, 38.527836, 58.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574089, 38.706810, 58.510448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337869, -0.022004, 0.940936,
		0.414559, 0.894047, 0.169766,
		-0.844977, 0.447432, -0.292949,
		39.320595, 38.841042, 58.422565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738571, 39.020443, 59.148849>,  <39.912079, 38.527836, 58.627628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738571, 39.020443, 59.148849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406624, 38.905083, 58.957794>,  <39.207455, 38.835865, 58.843159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406624, 38.905083, 58.957794>,  <39.738571, 39.020443, 59.148849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406624, 38.905083, 58.957794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378240, -0.338544, 0.861581,
		-0.410186, 0.895662, 0.171862,
		-0.829868, -0.288403, -0.477642,
		39.157661, 38.818562, 58.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042725, 39.274548, 59.417648>,  <39.738571, 39.020443, 59.148849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042725, 39.274548, 59.417648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982140, 38.919861, 59.242931>,  <38.945789, 38.707047, 59.138103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982140, 38.919861, 59.242931>,  <39.042725, 39.274548, 59.417648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982140, 38.919861, 59.242931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472039, -0.323358, 0.820134,
		-0.868469, 0.330403, -0.369589,
		-0.151465, -0.886721, -0.436790,
		38.936699, 38.653843, 59.111893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436691, 39.141079, 59.683117>,  <39.042725, 39.274548, 59.417648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436691, 39.141079, 59.683117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607170, 38.802757, 59.554764>,  <38.709457, 38.599762, 59.477753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607170, 38.802757, 59.554764>,  <38.436691, 39.141079, 59.683117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607170, 38.802757, 59.554764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378735, -0.488960, 0.785797,
		-0.821534, -0.213371, -0.528729,
		0.426194, -0.845808, -0.320886,
		38.735027, 38.549015, 59.458496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460758, 39.814194, 59.303402>,  <38.436691, 39.141079, 59.683117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460758, 39.814194, 59.303402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376579, 40.190399, 59.410095>,  <38.326073, 40.416122, 59.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376579, 40.190399, 59.410095>,  <38.460758, 39.814194, 59.303402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376579, 40.190399, 59.410095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968487, 0.237755, -0.074202,
		-0.133205, 0.242712, -0.960910,
		-0.210451, 0.940512, 0.266734,
		38.313442, 40.472553, 59.490116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813541, 40.203625, 58.835892>,  <38.460758, 39.814194, 59.303402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813541, 40.203625, 58.835892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753918, 40.455711, 59.140682>,  <38.718143, 40.606964, 59.323555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753918, 40.455711, 59.140682>,  <38.813541, 40.203625, 58.835892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753918, 40.455711, 59.140682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978349, 0.205881, 0.021108,
		-0.143574, 0.748626, -0.647260,
		-0.149061, 0.630216, 0.761977,
		38.709198, 40.644775, 59.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072361, 40.880859, 58.709625>,  <38.813541, 40.203625, 58.835892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072361, 40.880859, 58.709625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087223, 40.836441, 59.106873>,  <39.096142, 40.809788, 59.345222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087223, 40.836441, 59.106873>,  <39.072361, 40.880859, 58.709625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087223, 40.836441, 59.106873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947057, 0.321065, 0.000470,
		-0.318908, 0.940524, 0.117097,
		0.037154, -0.111048, 0.993120,
		39.098370, 40.803127, 59.404808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219223, 41.552170, 59.060307>,  <39.072361, 40.880859, 58.709625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219223, 41.552170, 59.060307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352188, 41.200287, 59.196316>,  <39.431969, 40.989159, 59.277920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352188, 41.200287, 59.196316>,  <39.219223, 41.552170, 59.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352188, 41.200287, 59.196316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937656, 0.269465, -0.219521,
		0.101490, 0.391798, 0.914437,
		0.332417, -0.879706, 0.340024,
		39.451912, 40.936375, 59.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844280, 41.624638, 59.607731>,  <39.219223, 41.552170, 59.060307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844280, 41.624638, 59.607731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868294, 41.269951, 59.424370>,  <39.882702, 41.057140, 59.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868294, 41.269951, 59.424370>,  <39.844280, 41.624638, 59.607731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868294, 41.269951, 59.424370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984809, 0.127572, -0.117801,
		0.162935, -0.444364, 0.880905,
		0.060032, -0.886717, -0.458399,
		39.886303, 41.003937, 59.286850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551582, 41.345669, 59.606194>,  <39.844280, 41.624638, 59.607731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551582, 41.345669, 59.606194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375259, 41.161949, 59.297718>,  <40.269466, 41.051716, 59.112633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375259, 41.161949, 59.297718>,  <40.551582, 41.345669, 59.606194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375259, 41.161949, 59.297718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811962, 0.162211, -0.560718,
		0.382634, -0.873344, 0.301431,
		-0.440805, -0.459300, -0.771190,
		40.243019, 41.024158, 59.066360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027046, 40.966682, 59.392487>,  <40.551582, 41.345669, 59.606194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027046, 40.966682, 59.392487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789352, 40.980537, 59.071068>,  <40.646736, 40.988850, 58.878216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789352, 40.980537, 59.071068>,  <41.027046, 40.966682, 59.392487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789352, 40.980537, 59.071068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799290, 0.136715, -0.585188,
		0.089587, -0.990005, -0.108926,
		-0.594231, 0.034638, -0.803548,
		40.611084, 40.990929, 58.830002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336807, 40.563282, 58.981510>,  <41.027046, 40.966682, 59.392487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336807, 40.563282, 58.981510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129883, 40.804108, 58.738232>,  <41.005726, 40.948601, 58.592262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129883, 40.804108, 58.738232>,  <41.336807, 40.563282, 58.981510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129883, 40.804108, 58.738232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665320, -0.164065, -0.728307,
		-0.538271, -0.781411, -0.315691,
		-0.517314, 0.602062, -0.608200,
		40.974689, 40.984726, 58.555771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395824, 40.246670, 58.365158>,  <41.336807, 40.563282, 58.981510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395824, 40.246670, 58.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281727, 40.614380, 58.256672>,  <41.213268, 40.835007, 58.191578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281727, 40.614380, 58.256672>,  <41.395824, 40.246670, 58.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281727, 40.614380, 58.256672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607134, -0.045656, -0.793287,
		-0.741635, -0.390948, -0.545102,
		-0.285247, 0.919280, -0.271217,
		41.196152, 40.890163, 58.175308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207069, 40.169853, 57.740551>,  <41.395824, 40.246670, 58.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207069, 40.169853, 57.740551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309475, 40.556313, 57.753262>,  <41.370918, 40.788189, 57.760887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309475, 40.556313, 57.753262>,  <41.207069, 40.169853, 57.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309475, 40.556313, 57.753262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335351, -0.057935, -0.940310,
		-0.906639, 0.251393, -0.338831,
		0.256018, 0.966150, 0.031779,
		41.386280, 40.846157, 57.762794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898067, 40.504860, 57.116386>,  <41.207069, 40.169853, 57.740551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898067, 40.504860, 57.116386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171783, 40.765678, 57.246971>,  <41.336014, 40.922169, 57.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171783, 40.765678, 57.246971>,  <40.898067, 40.504860, 57.116386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171783, 40.765678, 57.246971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336402, 0.114924, -0.934680,
		-0.646974, 0.749417, -0.140709,
		0.684294, 0.652049, 0.326458,
		41.377071, 40.961292, 57.344910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998230, 40.993309, 56.634853>,  <40.898067, 40.504860, 57.116386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998230, 40.993309, 56.634853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343765, 41.015167, 56.835171>,  <41.551086, 41.028282, 56.955360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343765, 41.015167, 56.835171>,  <40.998230, 40.993309, 56.634853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343765, 41.015167, 56.835171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465564, 0.293111, -0.835066,
		-0.192423, 0.954515, 0.227759,
		0.863842, 0.054650, 0.500790,
		41.602917, 41.031563, 56.985409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257732, 41.509384, 56.255764>,  <40.998230, 40.993309, 56.634853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257732, 41.509384, 56.255764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576981, 41.376541, 56.456841>,  <41.768532, 41.296833, 56.577488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576981, 41.376541, 56.456841>,  <41.257732, 41.509384, 56.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576981, 41.376541, 56.456841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545786, 0.045155, -0.836707,
		0.255181, 0.942159, 0.217301,
		0.798123, -0.332111, 0.502695,
		41.816418, 41.276909, 56.607651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847862, 41.923420, 56.029533>,  <41.257732, 41.509384, 56.255764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847862, 41.923420, 56.029533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032570, 41.616287, 56.207161>,  <42.143394, 41.432007, 56.313740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032570, 41.616287, 56.207161>,  <41.847862, 41.923420, 56.029533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032570, 41.616287, 56.207161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777575, 0.109530, -0.619176,
		0.426785, 0.631217, 0.647626,
		0.461770, -0.767833, 0.444073,
		42.171101, 41.385937, 56.340382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538357, 42.143322, 56.327175>,  <41.847862, 41.923420, 56.029533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538357, 42.143322, 56.327175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534569, 41.748756, 56.261574>,  <42.532295, 41.512016, 56.222214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534569, 41.748756, 56.261574>,  <42.538357, 42.143322, 56.327175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534569, 41.748756, 56.261574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853287, 0.077541, -0.515644,
		0.521356, -0.144825, 0.840960,
		-0.009469, -0.986414, -0.164004,
		42.531727, 41.452831, 56.212372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248447, 42.009850, 56.275982>,  <42.538357, 42.143322, 56.327175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248447, 42.009850, 56.275982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076797, 41.680420, 56.127617>,  <42.973808, 41.482761, 56.038597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076797, 41.680420, 56.127617>,  <43.248447, 42.009850, 56.275982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076797, 41.680420, 56.127617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726126, -0.070313, -0.683956,
		0.537211, -0.562828, 0.628195,
		-0.429120, -0.823578, -0.370911,
		42.948063, 41.433346, 56.016342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834496, 41.621708, 56.068237>,  <43.248447, 42.009850, 56.275982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834496, 41.621708, 56.068237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503696, 41.499802, 55.879261>,  <43.305218, 41.426659, 55.765877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503696, 41.499802, 55.879261>,  <43.834496, 41.621708, 56.068237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503696, 41.499802, 55.879261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479862, 0.055206, -0.875605,
		0.292938, -0.950825, 0.100591,
		-0.826995, -0.304768, -0.472437,
		43.255600, 41.408371, 55.737530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003796, 41.074127, 55.693703>,  <43.834496, 41.621708, 56.068237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003796, 41.074127, 55.693703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679813, 41.211716, 55.503685>,  <43.485424, 41.294270, 55.389675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679813, 41.211716, 55.503685>,  <44.003796, 41.074127, 55.693703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679813, 41.211716, 55.503685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499879, -0.018767, -0.865892,
		-0.306753, -0.938795, -0.156741,
		-0.809953, 0.343967, -0.475040,
		43.436829, 41.314907, 55.361172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912529, 40.643459, 55.106266>,  <44.003796, 41.074127, 55.693703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912529, 40.643459, 55.106266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695423, 40.958527, 54.989655>,  <43.565159, 41.147568, 54.919689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695423, 40.958527, 54.989655>,  <43.912529, 40.643459, 55.106266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695423, 40.958527, 54.989655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260444, -0.172150, -0.950018,
		-0.798482, -0.591564, -0.111705,
		-0.542767, 0.787665, -0.291528,
		43.532593, 41.194824, 54.902195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631947, 40.488869, 54.439491>,  <43.912529, 40.643459, 55.106266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631947, 40.488869, 54.439491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611382, 40.887672, 54.462585>,  <43.599041, 41.126953, 54.476444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611382, 40.887672, 54.462585>,  <43.631947, 40.488869, 54.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611382, 40.887672, 54.462585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167798, 0.065616, -0.983635,
		-0.984480, -0.040884, -0.170669,
		-0.051413, 0.997007, 0.057737,
		43.595959, 41.186775, 54.479908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197788, 40.657902, 53.920826>,  <43.631947, 40.488869, 54.439491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197788, 40.657902, 53.920826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410660, 40.988693, 53.993374>,  <43.538383, 41.187168, 54.036903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410660, 40.988693, 53.993374>,  <43.197788, 40.657902, 53.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410660, 40.988693, 53.993374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308430, 0.010132, -0.951193,
		-0.788452, 0.562144, -0.249673,
		0.532178, 0.826977, 0.181371,
		43.570312, 41.236786, 54.047787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093124, 41.044861, 53.342010>,  <43.197788, 40.657902, 53.920826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093124, 41.044861, 53.342010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400940, 41.219810, 53.528137>,  <43.585629, 41.324780, 53.639812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400940, 41.219810, 53.528137>,  <43.093124, 41.044861, 53.342010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400940, 41.219810, 53.528137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425553, 0.192066, -0.884317,
		-0.476144, 0.878532, -0.038322,
		0.769540, 0.437370, 0.465313,
		43.631802, 41.351021, 53.667732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139496, 41.776325, 53.163799>,  <43.093124, 41.044861, 53.342010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139496, 41.776325, 53.163799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508514, 41.676788, 53.281776>,  <43.729923, 41.617065, 53.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508514, 41.676788, 53.281776>,  <43.139496, 41.776325, 53.163799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508514, 41.676788, 53.281776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369760, 0.351317, -0.860148,
		0.110423, 0.902582, 0.416117,
		0.922542, -0.248844, 0.294945,
		43.785278, 41.602135, 53.370258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525940, 42.090702, 52.695820>,  <43.139496, 41.776325, 53.163799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525940, 42.090702, 52.695820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831131, 41.906128, 52.876904>,  <44.014244, 41.795383, 52.985554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831131, 41.906128, 52.876904>,  <43.525940, 42.090702, 52.695820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831131, 41.906128, 52.876904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611381, 0.287633, -0.737211,
		0.209958, 0.839254, 0.501568,
		0.762975, -0.461432, 0.452713,
		44.060024, 41.767696, 53.012718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123749, 42.588779, 52.769901>,  <43.525940, 42.090702, 52.695820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123749, 42.588779, 52.769901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265572, 42.214821, 52.763592>,  <44.350666, 41.990444, 52.759808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265572, 42.214821, 52.763592>,  <44.123749, 42.588779, 52.769901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265572, 42.214821, 52.763592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731557, 0.287868, -0.618026,
		0.582333, 0.207587, 0.786000,
		0.354559, -0.934901, -0.015773,
		44.371941, 41.934349, 52.758862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797321, 42.607487, 52.848038>,  <44.123749, 42.588779, 52.769901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797321, 42.607487, 52.848038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773987, 42.246132, 52.678101>,  <44.759987, 42.029320, 52.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773987, 42.246132, 52.678101>,  <44.797321, 42.607487, 52.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773987, 42.246132, 52.678101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862643, 0.168573, -0.476897,
		0.502439, -0.394307, 0.769465,
		-0.058333, -0.903385, -0.424844,
		44.756489, 41.975117, 52.550648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429050, 42.171104, 53.095001>,  <44.797321, 42.607487, 52.848038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429050, 42.171104, 53.095001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293526, 42.006630, 52.756500>,  <45.212212, 41.907944, 52.553402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293526, 42.006630, 52.756500>,  <45.429050, 42.171104, 53.095001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293526, 42.006630, 52.756500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931127, -0.017531, -0.364273,
		0.134948, -0.911383, 0.388806,
		-0.338808, -0.411185, -0.846248,
		45.191883, 41.883274, 52.502625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889038, 41.704849, 53.004890>,  <45.429050, 42.171104, 53.095001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889038, 41.704849, 53.004890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717918, 41.736679, 52.644745>,  <45.615246, 41.755775, 52.428658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717918, 41.736679, 52.644745>,  <45.889038, 41.704849, 53.004890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717918, 41.736679, 52.644745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903528, 0.010153, -0.428408,
		-0.024948, -0.996777, -0.076238,
		-0.427802, 0.079571, -0.900363,
		45.589577, 41.760551, 52.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230206, 41.304993, 52.584309>,  <45.889038, 41.704849, 53.004890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230206, 41.304993, 52.584309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029884, 41.530441, 52.321545>,  <45.909691, 41.665710, 52.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029884, 41.530441, 52.321545>,  <46.230206, 41.304993, 52.584309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029884, 41.530441, 52.321545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858163, 0.224278, -0.461796,
		-0.112949, -0.795003, -0.595998,
		-0.500798, 0.563622, -0.656910,
		45.879646, 41.699528, 52.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412067, 41.022591, 51.971996>,  <46.230206, 41.304993, 52.584309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412067, 41.022591, 51.971996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326637, 41.407143, 51.902569>,  <46.275379, 41.637875, 51.860912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326637, 41.407143, 51.902569>,  <46.412067, 41.022591, 51.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326637, 41.407143, 51.902569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841233, 0.090648, -0.533019,
		-0.496702, -0.259854, -0.828108,
		-0.213574, 0.961384, -0.173572,
		46.262566, 41.695557, 51.850498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407249, 41.114716, 51.184010>,  <46.412067, 41.022591, 51.971996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407249, 41.114716, 51.184010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482605, 41.468407, 51.354958>,  <46.527821, 41.680622, 51.457527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482605, 41.468407, 51.354958>,  <46.407249, 41.114716, 51.184010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482605, 41.468407, 51.354958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815621, 0.101531, -0.569608,
		-0.547057, 0.455879, -0.702071,
		0.188391, 0.884232, 0.427367,
		46.539124, 41.733677, 51.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547020, 41.536255, 50.641705>,  <46.407249, 41.114716, 51.184010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547020, 41.536255, 50.641705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666664, 41.769325, 50.943970>,  <46.738449, 41.909168, 51.125328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666664, 41.769325, 50.943970>,  <46.547020, 41.536255, 50.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666664, 41.769325, 50.943970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737017, 0.361924, -0.570803,
		-0.606085, 0.727668, -0.321187,
		0.299110, 0.582675, 0.755661,
		46.756397, 41.944126, 51.170670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471611, 42.269402, 50.380318>,  <46.547020, 41.536255, 50.641705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471611, 42.269402, 50.380318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748260, 42.260872, 50.669094>,  <46.914249, 42.255753, 50.842361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748260, 42.260872, 50.669094>,  <46.471611, 42.269402, 50.380318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748260, 42.260872, 50.669094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667611, 0.400277, -0.627753,
		-0.275591, 0.916146, 0.291077,
		0.691625, -0.021323, 0.721942,
		46.955750, 42.254475, 50.885677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807735, 42.914093, 50.392513>,  <46.471611, 42.269402, 50.380318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807735, 42.914093, 50.392513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077133, 42.693626, 50.589542>,  <47.238770, 42.561348, 50.707760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077133, 42.693626, 50.589542>,  <46.807735, 42.914093, 50.392513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077133, 42.693626, 50.589542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733230, 0.413627, -0.539710,
		0.093726, 0.724660, 0.682703,
		0.673491, -0.551163, 0.492575,
		47.279179, 42.528278, 50.737316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316563, 43.347828, 50.422768>,  <46.807735, 42.914093, 50.392513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316563, 43.347828, 50.422768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563461, 43.059433, 50.548744>,  <47.711601, 42.886398, 50.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563461, 43.059433, 50.548744>,  <47.316563, 43.347828, 50.422768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563461, 43.059433, 50.548744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733024, 0.381574, -0.563096,
		0.285809, 0.578430, 0.764024,
		0.617243, -0.720986, 0.314946,
		47.748634, 42.843136, 50.643227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.056248, 43.631660, 50.626389>,  <47.316563, 43.347828, 50.422768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.056248, 43.631660, 50.626389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.058296, 43.248932, 50.510139>,  <48.059525, 43.019295, 50.440388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.058296, 43.248932, 50.510139>,  <48.056248, 43.631660, 50.626389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.058296, 43.248932, 50.510139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776878, 0.186800, -0.601304,
		0.629630, -0.222699, 0.744292,
		0.005124, -0.956823, -0.290625,
		48.059834, 42.961884, 50.422951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.772312, 43.306335, 50.659035>,  <48.056248, 43.631660, 50.626389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.772312, 43.306335, 50.659035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.549019, 43.124527, 50.381393>,  <48.415043, 43.015442, 50.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.549019, 43.124527, 50.381393>,  <48.772312, 43.306335, 50.659035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.549019, 43.124527, 50.381393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702158, 0.186853, -0.687066,
		0.441981, -0.870917, 0.214837,
		-0.558235, -0.454520, -0.694107,
		48.381550, 42.988171, 50.173161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.257626, 42.933285, 50.257095>,  <48.772312, 43.306335, 50.659035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.257626, 42.933285, 50.257095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.938301, 42.920937, 50.016518>,  <48.746704, 42.913528, 49.872169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.938301, 42.920937, 50.016518>,  <49.257626, 42.933285, 50.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.938301, 42.920937, 50.016518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550171, 0.368827, -0.749185,
		0.244959, -0.928985, -0.277456,
		-0.798315, -0.030872, -0.601448,
		48.698807, 42.911674, 49.836082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.482235, 42.607632, 49.706837>,  <49.257626, 42.933285, 50.257095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.482235, 42.607632, 49.706837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.165863, 42.799225, 49.554520>,  <48.976040, 42.914181, 49.463131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.165863, 42.799225, 49.554520>,  <49.482235, 42.607632, 49.706837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.165863, 42.799225, 49.554520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525650, 0.213292, -0.823528,
		-0.313234, -0.851519, -0.420475,
		-0.790934, 0.478979, -0.380790,
		48.928581, 42.942917, 49.440281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.428078, 42.335739, 49.058270>,  <49.482235, 42.607632, 49.706837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.428078, 42.335739, 49.058270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.212990, 42.671806, 49.030041>,  <49.083939, 42.873447, 49.013103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.212990, 42.671806, 49.030041>,  <49.428078, 42.335739, 49.058270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.212990, 42.671806, 49.030041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351617, 0.147384, -0.924469,
		-0.766306, -0.521919, -0.374668,
		-0.537718, 0.840166, -0.070574,
		49.051674, 42.923855, 49.008869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.096409, 42.266273, 48.464912>,  <49.428078, 42.335739, 49.058270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.096409, 42.266273, 48.464912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.121140, 42.657745, 48.543259>,  <49.135979, 42.892628, 48.590267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.121140, 42.657745, 48.543259>,  <49.096409, 42.266273, 48.464912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.121140, 42.657745, 48.543259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359738, 0.161203, -0.919022,
		-0.931003, 0.127278, -0.342102,
		0.061824, 0.978680, 0.195867,
		49.139687, 42.951347, 48.602020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.700455, 42.686920, 47.894543>,  <49.096409, 42.266273, 48.464912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.700455, 42.686920, 47.894543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.968582, 42.924683, 48.072243>,  <49.129459, 43.067341, 48.178864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.968582, 42.924683, 48.072243>,  <48.700455, 42.686920, 47.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.968582, 42.924683, 48.072243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357195, 0.266290, -0.895266,
		-0.650447, 0.758799, -0.033818,
		0.670321, 0.594403, 0.444246,
		49.169678, 43.103004, 48.205517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.782188, 43.206856, 47.378490>,  <48.700455, 42.686920, 47.894543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.782188, 43.206856, 47.378490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.079102, 43.275223, 47.637657>,  <49.257252, 43.316242, 47.793159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.079102, 43.275223, 47.637657>,  <48.782188, 43.206856, 47.378490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.079102, 43.275223, 47.637657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587458, 0.299154, -0.751931,
		-0.322346, 0.938773, 0.121652,
		0.742285, 0.170916, 0.647920,
		49.301788, 43.326496, 47.832035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.919167, 43.873219, 47.137772>,  <48.782188, 43.206856, 47.378490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.919167, 43.873219, 47.137772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.238380, 43.750359, 47.345158>,  <49.429909, 43.676643, 47.469589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.238380, 43.750359, 47.345158>,  <48.919167, 43.873219, 47.137772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.238380, 43.750359, 47.345158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567528, 0.093783, -0.817996,
		0.202623, 0.947029, 0.249157,
		0.798033, -0.307148, 0.518463,
		49.477791, 43.658215, 47.500698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.366531, 44.326244, 46.903015>,  <48.919167, 43.873219, 47.137772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.366531, 44.326244, 46.903015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612946, 44.049461, 47.053581>,  <49.760796, 43.883392, 47.143921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612946, 44.049461, 47.053581>,  <49.366531, 44.326244, 46.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.612946, 44.049461, 47.053581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550606, 0.036529, -0.833966,
		0.563322, 0.721010, 0.403501,
		0.616037, -0.691961, 0.376415,
		49.797756, 43.841873, 47.166504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.018051, 44.662415, 46.362030>,  <49.366531, 44.326244, 46.903015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.018051, 44.662415, 46.362030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.845833, 45.019257, 46.307217>,  <48.742500, 45.233360, 46.274330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.845833, 45.019257, 46.307217>,  <49.018051, 44.662415, 46.362030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.845833, 45.019257, 46.307217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308798, -0.002933, 0.951123,
		0.848098, 0.451822, 0.276743,
		-0.430550, 0.892104, -0.137034,
		48.716667, 45.286888, 46.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.020107, 45.040627, 47.010220>,  <49.018051, 44.662415, 46.362030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.020107, 45.040627, 47.010220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.733635, 45.249695, 46.825226>,  <48.561752, 45.375137, 46.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.733635, 45.249695, 46.825226>,  <49.020107, 45.040627, 47.010220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.733635, 45.249695, 46.825226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569938, -0.055539, 0.819809,
		0.402805, 0.850723, 0.337667,
		-0.716184, 0.522672, -0.462488,
		48.518780, 45.406498, 46.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.737328, 45.537003, 47.520058>,  <49.020107, 45.040627, 47.010220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.737328, 45.537003, 47.520058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.458961, 45.528198, 47.232941>,  <48.291943, 45.522915, 47.060669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.458961, 45.528198, 47.232941>,  <48.737328, 45.537003, 47.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.458961, 45.528198, 47.232941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717901, 0.046507, 0.694590,
		0.018092, 0.998675, -0.048169,
		-0.695910, -0.022014, -0.717791,
		48.250187, 45.521595, 47.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320679, 46.071491, 47.646591>,  <48.737328, 45.537003, 47.520058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320679, 46.071491, 47.646591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099678, 45.807045, 47.443546>,  <47.967075, 45.648376, 47.321720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099678, 45.807045, 47.443546>,  <48.320679, 46.071491, 47.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.099678, 45.807045, 47.443546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725860, 0.082273, 0.682905,
		-0.409714, 0.745763, -0.525331,
		-0.552506, -0.661112, -0.507611,
		47.933926, 45.608711, 47.291264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.697529, 46.396626, 47.668903>,  <48.320679, 46.071491, 47.646591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.697529, 46.396626, 47.668903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586670, 46.023956, 47.574944>,  <47.520153, 45.800354, 47.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586670, 46.023956, 47.574944>,  <47.697529, 46.396626, 47.668903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586670, 46.023956, 47.574944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800532, 0.088709, 0.592689,
		-0.531354, 0.352306, -0.770418,
		-0.277151, -0.931671, -0.234896,
		47.503525, 45.744453, 47.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909466, 46.404301, 47.560486>,  <47.697529, 46.396626, 47.668903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909466, 46.404301, 47.560486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022896, 46.034615, 47.662796>,  <47.090954, 45.812805, 47.724182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022896, 46.034615, 47.662796>,  <46.909466, 46.404301, 47.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022896, 46.034615, 47.662796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804026, -0.083785, 0.588661,
		-0.522618, -0.372576, -0.766849,
		0.283572, -0.924212, 0.255773,
		47.107967, 45.757351, 47.739529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254551, 46.013947, 47.561188>,  <46.909466, 46.404301, 47.560486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254551, 46.013947, 47.561188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499527, 45.788193, 47.782593>,  <46.646515, 45.652740, 47.915436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499527, 45.788193, 47.782593>,  <46.254551, 46.013947, 47.561188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499527, 45.788193, 47.782593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711993, -0.089586, 0.696449,
		-0.343480, -0.820634, -0.456707,
		0.612444, -0.564388, 0.553514,
		46.683262, 45.618877, 47.948647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915592, 45.379242, 47.776096>,  <46.254551, 46.013947, 47.561188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915592, 45.379242, 47.776096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222557, 45.409599, 48.030754>,  <46.406738, 45.427814, 48.183548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222557, 45.409599, 48.030754>,  <45.915592, 45.379242, 47.776096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222557, 45.409599, 48.030754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564566, -0.390623, 0.727103,
		0.303872, -0.917417, -0.256921,
		0.767416, 0.075898, 0.636641,
		46.452782, 45.432369, 48.221748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704247, 44.714283, 48.201294>,  <45.915592, 45.379242, 47.776096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704247, 44.714283, 48.201294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977058, 44.940300, 48.387005>,  <46.140747, 45.075912, 48.498432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977058, 44.940300, 48.387005>,  <45.704247, 44.714283, 48.201294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977058, 44.940300, 48.387005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376124, -0.273430, 0.885306,
		0.627186, -0.778434, 0.026038,
		0.682033, 0.565045, 0.464279,
		46.181667, 45.109814, 48.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005268, 44.321842, 48.800812>,  <45.704247, 44.714283, 48.201294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005268, 44.321842, 48.800812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025192, 44.714142, 48.876335>,  <46.037148, 44.949520, 48.921650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025192, 44.714142, 48.876335>,  <46.005268, 44.321842, 48.800812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025192, 44.714142, 48.876335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496050, -0.139789, 0.856968,
		0.866864, -0.136342, 0.479538,
		0.049806, 0.980749, 0.188811,
		46.040134, 45.008366, 48.932980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129387, 44.335808, 49.541122>,  <46.005268, 44.321842, 48.800812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129387, 44.335808, 49.541122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013840, 44.708321, 49.452343>,  <45.944511, 44.931828, 49.399075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013840, 44.708321, 49.452343>,  <46.129387, 44.335808, 49.541122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013840, 44.708321, 49.452343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410579, 0.088923, 0.907479,
		0.864858, 0.353270, 0.356679,
		-0.288868, 0.931286, -0.221951,
		45.927177, 44.987705, 49.385757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250885, 44.723240, 50.179127>,  <46.129387, 44.335808, 49.541122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250885, 44.723240, 50.179127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981667, 44.931381, 49.968891>,  <45.820137, 45.056267, 49.842751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981667, 44.931381, 49.968891>,  <46.250885, 44.723240, 50.179127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981667, 44.931381, 49.968891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530861, 0.154925, 0.833177,
		0.514969, 0.839783, 0.171961,
		-0.673047, 0.520349, -0.525590,
		45.779751, 45.087486, 49.811214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167492, 45.369228, 50.490200>,  <46.250885, 44.723240, 50.179127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167492, 45.369228, 50.490200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826675, 45.388000, 50.281654>,  <45.622185, 45.399265, 50.156528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826675, 45.388000, 50.281654>,  <46.167492, 45.369228, 50.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826675, 45.388000, 50.281654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523459, -0.082276, 0.848069,
		-0.003094, 0.995504, 0.094669,
		-0.852045, 0.046932, -0.521360,
		45.571060, 45.402081, 50.125248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808556, 45.823936, 50.838444>,  <46.167492, 45.369228, 50.490200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808556, 45.823936, 50.838444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540871, 45.609360, 50.632771>,  <45.380260, 45.480614, 50.509365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540871, 45.609360, 50.632771>,  <45.808556, 45.823936, 50.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540871, 45.609360, 50.632771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599749, -0.018585, 0.799972,
		-0.438691, 0.843735, -0.309290,
		-0.669217, -0.536437, -0.514183,
		45.340107, 45.448429, 50.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223938, 46.006683, 51.101437>,  <45.808556, 45.823936, 50.838444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223938, 46.006683, 51.101437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116669, 45.664742, 50.923759>,  <45.052307, 45.459576, 50.817154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116669, 45.664742, 50.923759>,  <45.223938, 46.006683, 51.101437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116669, 45.664742, 50.923759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648324, -0.180898, 0.739562,
		-0.712570, 0.486314, -0.505709,
		-0.268178, -0.854854, -0.444192,
		45.036217, 45.408287, 50.790501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461384, 45.975079, 51.165684>,  <45.223938, 46.006683, 51.101437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461384, 45.975079, 51.165684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621140, 45.610306, 51.128025>,  <44.716991, 45.391441, 51.105431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621140, 45.610306, 51.128025>,  <44.461384, 45.975079, 51.165684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621140, 45.610306, 51.128025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445984, -0.282981, 0.849129,
		-0.800992, -0.297144, -0.519728,
		0.399387, -0.911936, -0.094144,
		44.740955, 45.336723, 51.099781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957993, 45.469646, 51.206348>,  <44.461384, 45.975079, 51.165684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957993, 45.469646, 51.206348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276234, 45.238182, 51.278084>,  <44.467178, 45.099304, 51.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276234, 45.238182, 51.278084>,  <43.957993, 45.469646, 51.206348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276234, 45.238182, 51.278084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515766, -0.491705, 0.701579,
		-0.317795, -0.650676, -0.689657,
		0.795608, -0.578660, 0.179335,
		44.514915, 45.064583, 51.331882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612682, 44.680183, 51.208233>,  <43.957993, 45.469646, 51.206348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612682, 44.680183, 51.208233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969994, 44.655914, 51.386391>,  <44.184380, 44.641354, 51.493286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969994, 44.655914, 51.386391>,  <43.612682, 44.680183, 51.208233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969994, 44.655914, 51.386391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401326, -0.553946, 0.729438,
		0.202469, -0.830339, -0.519176,
		0.893276, -0.060670, 0.445394,
		44.237976, 44.637714, 51.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839649, 43.956181, 51.323547>,  <43.612682, 44.680183, 51.208233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839649, 43.956181, 51.323547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033752, 44.180733, 51.591690>,  <44.150215, 44.315464, 51.752575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033752, 44.180733, 51.591690>,  <43.839649, 43.956181, 51.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033752, 44.180733, 51.591690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491982, -0.458494, 0.740093,
		0.722826, -0.688940, 0.053700,
		0.485258, 0.561378, 0.670358,
		44.179329, 44.349148, 51.792797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175385, 43.424152, 51.798008>,  <43.839649, 43.956181, 51.323547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175385, 43.424152, 51.798008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157822, 43.776329, 51.986855>,  <44.147282, 43.987637, 52.100163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157822, 43.776329, 51.986855>,  <44.175385, 43.424152, 51.798008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157822, 43.776329, 51.986855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437231, -0.441844, 0.783328,
		0.898276, -0.172028, 0.404359,
		-0.043909, 0.880443, 0.472114,
		44.144650, 44.040462, 52.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389061, 43.285679, 52.482567>,  <44.175385, 43.424152, 51.798008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389061, 43.285679, 52.482567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211746, 43.643784, 52.500504>,  <44.105358, 43.858646, 52.511265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211746, 43.643784, 52.500504>,  <44.389061, 43.285679, 52.482567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211746, 43.643784, 52.500504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454452, -0.267575, 0.849633,
		0.772640, 0.356251, 0.525465,
		-0.443284, 0.895259, 0.044840,
		44.078762, 43.912361, 52.513954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495224, 43.643513, 53.168526>,  <44.389061, 43.285679, 52.482567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495224, 43.643513, 53.168526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158340, 43.757431, 52.985405>,  <43.956211, 43.825783, 52.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158340, 43.757431, 52.985405>,  <44.495224, 43.643513, 53.168526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158340, 43.757431, 52.985405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529938, -0.280906, 0.800161,
		0.099281, 0.916507, 0.387503,
		-0.842205, 0.284793, -0.457803,
		43.905678, 43.842869, 52.848064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130730, 43.850769, 53.776859>,  <44.495224, 43.643513, 53.168526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130730, 43.850769, 53.776859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862514, 43.854729, 53.480133>,  <43.701588, 43.857105, 53.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862514, 43.854729, 53.480133>,  <44.130730, 43.850769, 53.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862514, 43.854729, 53.480133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740353, -0.072998, 0.668242,
		-0.047538, 0.997283, 0.056274,
		-0.670535, 0.009896, -0.741812,
		43.661354, 43.857697, 53.257591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558357, 44.190975, 54.127144>,  <44.130730, 43.850769, 53.776859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558357, 44.190975, 54.127144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411942, 43.981644, 53.819340>,  <43.324093, 43.856045, 53.634659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411942, 43.981644, 53.819340>,  <43.558357, 44.190975, 54.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411942, 43.981644, 53.819340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827878, -0.194524, 0.526097,
		-0.425010, 0.829630, -0.362050,
		-0.366039, -0.523330, -0.769507,
		43.302132, 43.824646, 53.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911480, 44.521519, 53.932503>,  <43.558357, 44.190975, 54.127144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911480, 44.521519, 53.932503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923801, 44.132614, 53.839756>,  <42.931194, 43.899273, 53.784107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923801, 44.132614, 53.839756>,  <42.911480, 44.521519, 53.932503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923801, 44.132614, 53.839756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900030, -0.127876, 0.416647,
		-0.434739, 0.195849, -0.879002,
		0.030803, -0.972261, -0.231863,
		42.933041, 43.840935, 53.770199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209026, 44.373886, 53.719097>,  <42.911480, 44.521519, 53.932503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209026, 44.373886, 53.719097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390594, 44.028564, 53.807327>,  <42.499535, 43.821369, 53.860264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390594, 44.028564, 53.807327>,  <42.209026, 44.373886, 53.719097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390594, 44.028564, 53.807327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857171, -0.355477, 0.372684,
		-0.243331, -0.358241, -0.901362,
		0.453924, -0.863307, 0.220575,
		42.526772, 43.769573, 53.873501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795269, 43.929295, 53.445084>,  <42.209026, 44.373886, 53.719097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795269, 43.929295, 53.445084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973118, 43.716118, 53.733051>,  <42.079826, 43.588211, 53.905834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973118, 43.716118, 53.733051>,  <41.795269, 43.929295, 53.445084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973118, 43.716118, 53.733051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895363, -0.241799, 0.373975,
		-0.025229, -0.810870, -0.584683,
		0.444621, -0.532939, 0.719922,
		42.106503, 43.556236, 53.949028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353840, 43.309093, 53.609001>,  <41.795269, 43.929295, 53.445084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353840, 43.309093, 53.609001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595196, 43.251541, 53.922745>,  <41.740009, 43.217010, 54.110989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595196, 43.251541, 53.922745>,  <41.353840, 43.309093, 53.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595196, 43.251541, 53.922745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790285, -0.239388, 0.564042,
		0.106612, -0.960204, -0.258150,
		0.603393, -0.143878, 0.784357,
		41.776215, 43.208378, 54.158051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247726, 42.630753, 53.937592>,  <41.353840, 43.309093, 53.609001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247726, 42.630753, 53.937592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397865, 42.871231, 54.219776>,  <41.487949, 43.015518, 54.389088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397865, 42.871231, 54.219776>,  <41.247726, 42.630753, 53.937592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397865, 42.871231, 54.219776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766634, -0.226409, 0.600842,
		0.520946, -0.766357, 0.375914,
		0.375349, 0.601195, 0.705463,
		41.510471, 43.051590, 54.431416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436661, 42.250126, 54.560524>,  <41.247726, 42.630753, 53.937592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436661, 42.250126, 54.560524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361980, 42.628456, 54.666771>,  <41.317173, 42.855453, 54.730518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361980, 42.628456, 54.666771>,  <41.436661, 42.250126, 54.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361980, 42.628456, 54.666771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741216, -0.313069, 0.593790,
		0.644780, -0.086018, 0.759513,
		-0.186704, 0.945827, 0.265618,
		41.305969, 42.912205, 54.746456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110466, 42.148121, 55.161930>,  <41.436661, 42.250126, 54.560524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110466, 42.148121, 55.161930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014687, 42.526794, 55.075718>,  <40.957218, 42.753998, 55.023991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014687, 42.526794, 55.075718>,  <41.110466, 42.148121, 55.161930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014687, 42.526794, 55.075718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824138, -0.080827, 0.560592,
		0.513282, 0.311861, 0.799552,
		-0.239452, 0.946684, -0.215530,
		40.942852, 42.810799, 55.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094456, 42.404041, 55.774300>,  <41.110466, 42.148121, 55.161930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094456, 42.404041, 55.774300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866074, 42.631821, 55.537746>,  <40.729042, 42.768490, 55.395813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866074, 42.631821, 55.537746>,  <41.094456, 42.404041, 55.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866074, 42.631821, 55.537746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798130, -0.216243, 0.562341,
		0.192343, 0.793073, 0.577961,
		-0.570958, 0.569450, -0.591383,
		40.694786, 42.802654, 55.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694706, 42.859646, 56.194221>,  <41.094456, 42.404041, 55.774300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694706, 42.859646, 56.194221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497684, 42.870331, 55.846275>,  <40.379471, 42.876740, 55.637508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497684, 42.870331, 55.846275>,  <40.694706, 42.859646, 56.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497684, 42.870331, 55.846275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869278, -0.063035, 0.490288,
		-0.041736, 0.997654, 0.054267,
		-0.492558, 0.026710, -0.869869,
		40.349918, 42.878345, 55.585316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219669, 43.413475, 56.187870>,  <40.694706, 42.859646, 56.194221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219669, 43.413475, 56.187870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071121, 43.188629, 55.892273>,  <39.981991, 43.053722, 55.714916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071121, 43.188629, 55.892273>,  <40.219669, 43.413475, 56.187870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071121, 43.188629, 55.892273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919010, 0.109130, 0.378828,
		-0.132299, 0.819827, -0.557118,
		-0.371372, -0.562116, -0.738991,
		39.959709, 43.019993, 55.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647781, 43.803646, 56.037910>,  <40.219669, 43.413475, 56.187870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647781, 43.803646, 56.037910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563507, 43.452705, 55.865459>,  <39.512943, 43.242142, 55.761990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563507, 43.452705, 55.865459>,  <39.647781, 43.803646, 56.037910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563507, 43.452705, 55.865459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925213, 0.036584, 0.377679,
		-0.315584, 0.478457, -0.819443,
		-0.210682, -0.877349, -0.431129,
		39.500301, 43.189499, 55.736122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011826, 43.842419, 55.604645>,  <39.647781, 43.803646, 56.037910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011826, 43.842419, 55.604645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045341, 43.462845, 55.726295>,  <39.065449, 43.235100, 55.799286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045341, 43.462845, 55.726295>,  <39.011826, 43.842419, 55.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045341, 43.462845, 55.726295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971209, -0.009461, 0.238042,
		-0.223010, -0.315319, -0.922410,
		0.083786, -0.948938, 0.304131,
		39.070477, 43.178162, 55.817535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390736, 43.588436, 55.530697>,  <39.011826, 43.842419, 55.604645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390736, 43.588436, 55.530697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550735, 43.314598, 55.774445>,  <38.646736, 43.150295, 55.920692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550735, 43.314598, 55.774445>,  <38.390736, 43.588436, 55.530697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550735, 43.314598, 55.774445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907032, -0.200289, 0.370375,
		-0.131504, -0.700871, -0.701061,
		0.399999, -0.684591, 0.609374,
		38.670734, 43.109219, 55.957256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877888, 42.990162, 55.486233>,  <38.390736, 43.588436, 55.530697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877888, 42.990162, 55.486233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110943, 42.937363, 55.807007>,  <38.250778, 42.905682, 55.999474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110943, 42.937363, 55.807007>,  <37.877888, 42.990162, 55.486233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110943, 42.937363, 55.807007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809106, -0.001134, 0.587662,
		-0.076662, -0.991249, -0.107463,
		0.582641, -0.132000, 0.801938,
		38.285736, 42.897762, 56.047588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239418, 42.555176, 55.388336>,  <37.877888, 42.990162, 55.486233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239418, 42.555176, 55.388336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003483, 42.409653, 55.099968>,  <36.861919, 42.322338, 54.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003483, 42.409653, 55.099968>,  <37.239418, 42.555176, 55.388336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003483, 42.409653, 55.099968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709902, 0.191883, -0.677658,
		0.384871, -0.911495, 0.145088,
		-0.589842, -0.363809, -0.720922,
		36.826530, 42.300510, 54.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621540, 42.005905, 55.071987>,  <37.239418, 42.555176, 55.388336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621540, 42.005905, 55.071987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360352, 42.174210, 54.820087>,  <37.203640, 42.275192, 54.668945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360352, 42.174210, 54.820087>,  <37.621540, 42.005905, 55.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360352, 42.174210, 54.820087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740450, 0.179801, -0.647615,
		-0.159262, -0.889174, -0.428959,
		-0.652969, 0.420763, -0.629753,
		37.164459, 42.300438, 54.631161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766953, 41.669674, 54.458797>,  <37.621540, 42.005905, 55.071987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766953, 41.669674, 54.458797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569778, 42.011665, 54.394253>,  <37.451473, 42.216858, 54.355526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569778, 42.011665, 54.394253>,  <37.766953, 41.669674, 54.458797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569778, 42.011665, 54.394253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702158, 0.281387, -0.654061,
		-0.513802, -0.435706, -0.739032,
		-0.492932, 0.854975, -0.161357,
		37.421898, 42.268158, 54.345844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886726, 41.792580, 53.820820>,  <37.766953, 41.669674, 54.458797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886726, 41.792580, 53.820820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770538, 42.160225, 53.927292>,  <37.700825, 42.380814, 53.991177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770538, 42.160225, 53.927292>,  <37.886726, 41.792580, 53.820820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770538, 42.160225, 53.927292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588671, 0.390950, -0.707548,
		-0.754382, -0.048830, -0.654617,
		-0.290472, 0.919116, 0.266181,
		37.683395, 42.435959, 54.007145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640717, 42.090649, 53.195038>,  <37.886726, 41.792580, 53.820820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640717, 42.090649, 53.195038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763226, 42.381844, 53.440392>,  <37.836731, 42.556561, 53.587605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763226, 42.381844, 53.440392>,  <37.640717, 42.090649, 53.195038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763226, 42.381844, 53.440392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681732, 0.281989, -0.675073,
		-0.664409, 0.624919, -0.409924,
		0.306272, 0.727983, 0.613383,
		37.855106, 42.600239, 53.624405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653873, 42.697155, 52.729183>,  <37.640717, 42.090649, 53.195038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653873, 42.697155, 52.729183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887951, 42.772583, 53.044647>,  <38.028397, 42.817841, 53.233925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887951, 42.772583, 53.044647>,  <37.653873, 42.697155, 52.729183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887951, 42.772583, 53.044647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727917, 0.306425, -0.613384,
		-0.357332, 0.933030, 0.042054,
		0.585193, 0.188570, 0.788664,
		38.063507, 42.829155, 53.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112091, 43.203045, 52.533894>,  <37.653873, 42.697155, 52.729183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112091, 43.203045, 52.533894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301929, 43.088409, 52.866791>,  <38.415833, 43.019627, 53.066528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301929, 43.088409, 52.866791>,  <38.112091, 43.203045, 52.533894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301929, 43.088409, 52.866791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878496, 0.213093, -0.427593,
		-0.054801, 0.934055, 0.352900,
		0.474596, -0.286588, 0.832242,
		38.444309, 43.002434, 53.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594746, 43.781616, 52.733486>,  <38.112091, 43.203045, 52.533894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594746, 43.781616, 52.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715805, 43.438560, 52.899792>,  <38.788441, 43.232727, 52.999577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715805, 43.438560, 52.899792>,  <38.594746, 43.781616, 52.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715805, 43.438560, 52.899792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943892, 0.209196, -0.255549,
		0.132193, 0.469777, 0.872832,
		0.302644, -0.857640, 0.415764,
		38.806599, 43.181267, 53.024521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266445, 43.862278, 53.035126>,  <38.594746, 43.781616, 52.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266445, 43.862278, 53.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273354, 43.463638, 53.002911>,  <39.277500, 43.224453, 52.983582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273354, 43.463638, 53.002911>,  <39.266445, 43.862278, 53.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273354, 43.463638, 53.002911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879214, 0.053499, -0.473415,
		0.476115, -0.062631, 0.877150,
		0.017276, -0.996602, -0.080538,
		39.278538, 43.164658, 52.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953224, 43.632912, 53.194275>,  <39.266445, 43.862278, 53.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953224, 43.632912, 53.194275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818062, 43.312271, 52.996994>,  <39.736965, 43.119884, 52.878624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818062, 43.312271, 52.996994>,  <39.953224, 43.632912, 53.194275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818062, 43.312271, 52.996994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848966, -0.033381, -0.527393,
		0.406296, -0.596923, 0.691813,
		-0.337906, -0.801604, -0.493205,
		39.716690, 43.071789, 52.849033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450363, 43.159534, 53.215210>,  <39.953224, 43.632912, 53.194275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450363, 43.159534, 53.215210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222019, 43.048622, 52.906086>,  <40.085014, 42.982075, 52.720612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222019, 43.048622, 52.906086>,  <40.450363, 43.159534, 53.215210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222019, 43.048622, 52.906086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812851, -0.058171, -0.579560,
		0.115748, -0.959026, 0.258598,
		-0.570856, -0.277284, -0.772812,
		40.050762, 42.965439, 52.674244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813091, 42.639713, 52.970444>,  <40.450363, 43.159534, 53.215210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813091, 42.639713, 52.970444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567238, 42.716507, 52.664406>,  <40.419727, 42.762585, 52.480785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567238, 42.716507, 52.664406>,  <40.813091, 42.639713, 52.970444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567238, 42.716507, 52.664406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779762, 0.001371, -0.626075,
		-0.119148, -0.981397, -0.150545,
		-0.614634, 0.191984, -0.765092,
		40.382847, 42.774101, 52.434879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997597, 42.193676, 52.415462>,  <40.813091, 42.639713, 52.970444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997597, 42.193676, 52.415462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812355, 42.490387, 52.221436>,  <40.701210, 42.668415, 52.105019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812355, 42.490387, 52.221436>,  <40.997597, 42.193676, 52.415462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812355, 42.490387, 52.221436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785407, 0.089867, -0.612422,
		-0.410692, -0.664593, -0.624219,
		-0.463108, 0.741782, -0.485068,
		40.673424, 42.712921, 52.075916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045650, 42.094193, 51.741936>,  <40.997597, 42.193676, 52.415462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045650, 42.094193, 51.741936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984283, 42.489456, 51.742836>,  <40.947464, 42.726616, 51.743374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984283, 42.489456, 51.742836>,  <41.045650, 42.094193, 51.741936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984283, 42.489456, 51.742836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677785, 0.106885, -0.727450,
		-0.719076, -0.110081, -0.686157,
		-0.153418, 0.988159, 0.002248,
		40.938259, 42.785904, 51.743511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929470, 42.299911, 51.000008>,  <41.045650, 42.094193, 51.741936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929470, 42.299911, 51.000008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997147, 42.649529, 51.182182>,  <41.037754, 42.859299, 51.291489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997147, 42.649529, 51.182182>,  <40.929470, 42.299911, 51.000008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997147, 42.649529, 51.182182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627863, 0.260609, -0.733397,
		-0.759711, 0.410039, -0.504685,
		0.169196, 0.874043, 0.455436,
		41.047905, 42.911743, 51.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163403, 42.780426, 50.463058>,  <40.929470, 42.299911, 51.000008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163403, 42.780426, 50.463058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280510, 42.993904, 50.780411>,  <41.350773, 43.121990, 50.970821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280510, 42.993904, 50.780411>,  <41.163403, 42.780426, 50.463058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280510, 42.993904, 50.780411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669544, 0.477948, -0.568574,
		-0.682640, 0.697667, -0.217402,
		0.292768, 0.533691, 0.793385,
		41.368340, 43.154011, 51.018425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003460, 43.576248, 50.326340>,  <41.163403, 42.780426, 50.463058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003460, 43.576248, 50.326340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309788, 43.503143, 50.572952>,  <41.493584, 43.459278, 50.720921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309788, 43.503143, 50.572952>,  <41.003460, 43.576248, 50.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309788, 43.503143, 50.572952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624385, 0.440692, -0.644930,
		-0.153831, 0.878855, 0.451607,
		0.765820, -0.182767, 0.616536,
		41.539536, 43.448315, 50.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349869, 44.261066, 50.386513>,  <41.003460, 43.576248, 50.326340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349869, 44.261066, 50.386513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625965, 44.024872, 50.553791>,  <41.791622, 43.883156, 50.654160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625965, 44.024872, 50.553791>,  <41.349869, 44.261066, 50.386513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625965, 44.024872, 50.553791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718059, 0.487719, -0.496510,
		0.089220, 0.643002, 0.760650,
		0.690240, -0.590490, 0.418199,
		41.833038, 43.847725, 50.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824184, 44.738697, 50.716209>,  <41.349869, 44.261066, 50.386513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824184, 44.738697, 50.716209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996662, 44.386543, 50.637211>,  <42.100147, 44.175251, 50.589813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996662, 44.386543, 50.637211>,  <41.824184, 44.738697, 50.716209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996662, 44.386543, 50.637211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722368, 0.468000, -0.509077,
		0.540609, 0.076847, 0.837757,
		0.431192, -0.880381, -0.197493,
		42.126019, 44.122429, 50.577961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584145, 44.793381, 50.776424>,  <41.824184, 44.738697, 50.716209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584145, 44.793381, 50.776424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498440, 44.485931, 50.535324>,  <42.447018, 44.301460, 50.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498440, 44.485931, 50.535324>,  <42.584145, 44.793381, 50.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498440, 44.485931, 50.535324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694901, 0.313717, -0.647066,
		0.686445, -0.557490, 0.466903,
		-0.214258, -0.768626, -0.602750,
		42.434162, 44.255344, 50.354500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240654, 44.596867, 50.461296>,  <42.584145, 44.793381, 50.776424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240654, 44.596867, 50.461296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001663, 44.406670, 50.203014>,  <42.858269, 44.292553, 50.048046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001663, 44.406670, 50.203014>,  <43.240654, 44.596867, 50.461296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001663, 44.406670, 50.203014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591257, 0.282728, -0.755301,
		0.541696, -0.833051, 0.112214,
		-0.597478, -0.475491, -0.645700,
		42.822418, 44.264023, 50.009304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693756, 44.297619, 49.975624>,  <43.240654, 44.596867, 50.461296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693756, 44.297619, 49.975624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333839, 44.300018, 49.801109>,  <43.117889, 44.301456, 49.696400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333839, 44.300018, 49.801109>,  <43.693756, 44.297619, 49.975624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333839, 44.300018, 49.801109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393768, 0.441887, -0.806029,
		0.187957, -0.897051, -0.399965,
		-0.899788, 0.005995, -0.436286,
		43.063904, 44.301815, 49.670223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836502, 44.036682, 49.326302>,  <43.693756, 44.297619, 49.975624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836502, 44.036682, 49.326302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495285, 44.243431, 49.297573>,  <43.290554, 44.367481, 49.280334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495285, 44.243431, 49.297573>,  <43.836502, 44.036682, 49.326302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495285, 44.243431, 49.297573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330423, 0.428474, -0.840970,
		-0.403899, -0.741118, -0.536293,
		-0.853046, 0.516870, -0.071822,
		43.239372, 44.398491, 49.276028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607849, 43.938683, 48.631832>,  <43.836502, 44.036682, 49.326302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607849, 43.938683, 48.631832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448364, 44.276497, 48.774822>,  <43.352673, 44.479187, 48.860615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448364, 44.276497, 48.774822>,  <43.607849, 43.938683, 48.631832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448364, 44.276497, 48.774822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262446, 0.478571, -0.837909,
		-0.878721, -0.240268, -0.412458,
		-0.398713, 0.844537, 0.357473,
		43.328751, 44.529858, 48.882065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246063, 44.108807, 48.124981>,  <43.607849, 43.938683, 48.631832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246063, 44.108807, 48.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287403, 44.445251, 48.337337>,  <43.312206, 44.647118, 48.464752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287403, 44.445251, 48.337337>,  <43.246063, 44.108807, 48.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287403, 44.445251, 48.337337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188857, 0.507445, -0.840734,
		-0.976551, 0.187153, -0.106406,
		0.103351, 0.841115, 0.530891,
		43.318409, 44.697586, 48.496605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050133, 44.718506, 47.649704>,  <43.246063, 44.108807, 48.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050133, 44.718506, 47.649704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253891, 44.917175, 47.930798>,  <43.376144, 45.036377, 48.099453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253891, 44.917175, 47.930798>,  <43.050133, 44.718506, 47.649704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253891, 44.917175, 47.930798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254837, 0.692928, -0.674469,
		-0.821933, 0.522654, 0.226405,
		0.509397, 0.496671, 0.702732,
		43.406712, 45.066177, 48.141617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758316, 45.316185, 47.615253>,  <43.050133, 44.718506, 47.649704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758316, 45.316185, 47.615253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118683, 45.357796, 47.783791>,  <43.334904, 45.382763, 47.884914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118683, 45.357796, 47.783791>,  <42.758316, 45.316185, 47.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118683, 45.357796, 47.783791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183731, 0.788141, -0.587432,
		-0.393186, 0.606641, 0.690936,
		0.900915, 0.104024, 0.421344,
		43.388958, 45.389004, 47.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898579, 46.046505, 47.566017>,  <42.758316, 45.316185, 47.615253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898579, 46.046505, 47.566017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259853, 45.889030, 47.634441>,  <43.476620, 45.794544, 47.675495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259853, 45.889030, 47.634441>,  <42.898579, 46.046505, 47.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259853, 45.889030, 47.634441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395362, 0.607781, -0.688688,
		0.167158, 0.689647, 0.704589,
		0.903187, -0.393688, 0.171065,
		43.530811, 45.770924, 47.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291840, 46.605305, 47.640209>,  <42.898579, 46.046505, 47.566017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291840, 46.605305, 47.640209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533989, 46.302803, 47.540932>,  <43.679279, 46.121304, 47.481365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533989, 46.302803, 47.540932>,  <43.291840, 46.605305, 47.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533989, 46.302803, 47.540932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431799, 0.573990, -0.695762,
		0.668634, 0.314027, 0.674029,
		0.605374, -0.756255, -0.248193,
		43.715603, 46.075928, 47.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949535, 46.891323, 47.563103>,  <43.291840, 46.605305, 47.640209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949535, 46.891323, 47.563103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998070, 46.541252, 47.375771>,  <44.027191, 46.331207, 47.263371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998070, 46.541252, 47.375771>,  <43.949535, 46.891323, 47.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998070, 46.541252, 47.375771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611875, 0.437463, -0.658966,
		0.781592, -0.206603, 0.588582,
		0.121338, -0.875181, -0.468333,
		44.034470, 46.278698, 47.235271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696800, 46.923409, 47.085117>,  <43.949535, 46.891323, 47.563103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696800, 46.923409, 47.085117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501312, 46.598930, 46.956673>,  <44.384018, 46.404243, 46.879604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501312, 46.598930, 46.956673>,  <44.696800, 46.923409, 47.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501312, 46.598930, 46.956673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446055, 0.083993, -0.891056,
		0.749789, -0.578715, 0.320787,
		-0.488724, -0.811193, -0.321116,
		44.354694, 46.355572, 46.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168144, 46.435211, 46.723782>,  <44.696800, 46.923409, 47.085117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168144, 46.435211, 46.723782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804260, 46.357780, 46.576832>,  <44.585930, 46.311321, 46.488663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804260, 46.357780, 46.576832>,  <45.168144, 46.435211, 46.723782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804260, 46.357780, 46.576832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357925, 0.083012, -0.930053,
		0.210535, -0.977566, -0.006230,
		-0.909706, -0.193579, -0.367372,
		44.531349, 46.299706, 46.466621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267757, 45.968586, 46.177219>,  <45.168144, 46.435211, 46.723782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267757, 45.968586, 46.177219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911118, 46.144676, 46.134785>,  <44.697132, 46.250332, 46.109325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911118, 46.144676, 46.134785>,  <45.267757, 45.968586, 46.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911118, 46.144676, 46.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175190, 0.119317, -0.977278,
		-0.417565, -0.889924, -0.183506,
		-0.891599, 0.440225, -0.106083,
		44.643639, 46.276745, 46.102959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069565, 45.736973, 45.559666>,  <45.267757, 45.968586, 46.177219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069565, 45.736973, 45.559666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862709, 46.073837, 45.620781>,  <44.738598, 46.275955, 45.657448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862709, 46.073837, 45.620781>,  <45.069565, 45.736973, 45.559666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862709, 46.073837, 45.620781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132966, 0.255387, -0.957652,
		-0.845512, -0.474920, -0.244048,
		-0.517135, 0.842157, 0.152785,
		44.707569, 46.326485, 45.666615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587269, 45.891838, 44.914112>,  <45.069565, 45.736973, 45.559666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587269, 45.891838, 44.914112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642750, 46.239426, 45.104122>,  <44.676037, 46.447979, 45.218128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642750, 46.239426, 45.104122>,  <44.587269, 45.891838, 44.914112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642750, 46.239426, 45.104122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276519, 0.426599, -0.861133,
		-0.950946, 0.250795, -0.181117,
		0.138704, 0.868974, 0.475022,
		44.684361, 46.500118, 45.246628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251369, 46.396870, 44.438610>,  <44.587269, 45.891838, 44.914112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251369, 46.396870, 44.438610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447891, 46.649414, 44.678612>,  <44.565804, 46.800941, 44.822613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447891, 46.649414, 44.678612>,  <44.251369, 46.396870, 44.438610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447891, 46.649414, 44.678612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499051, 0.360528, -0.788015,
		-0.713840, 0.686587, -0.137953,
		0.491305, 0.631362, 0.600001,
		44.595284, 46.838821, 44.858612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165424, 47.132336, 44.148388>,  <44.251369, 46.396870, 44.438610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165424, 47.132336, 44.148388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491913, 47.092010, 44.375938>,  <44.687805, 47.067814, 44.512466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491913, 47.092010, 44.375938>,  <44.165424, 47.132336, 44.148388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491913, 47.092010, 44.375938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570114, 0.299991, -0.764837,
		-0.093552, 0.948600, 0.302334,
		0.816222, -0.100813, 0.568874,
		44.736778, 47.061768, 44.546600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497948, 47.765785, 44.028664>,  <44.165424, 47.132336, 44.148388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497948, 47.765785, 44.028664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773540, 47.510719, 44.166462>,  <44.938896, 47.357677, 44.249142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773540, 47.510719, 44.166462>,  <44.497948, 47.765785, 44.028664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773540, 47.510719, 44.166462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605870, 0.245870, -0.756617,
		0.397770, 0.730018, 0.555745,
		0.688985, -0.637669, 0.344496,
		44.980236, 47.319420, 44.269810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150990, 48.113892, 44.187290>,  <44.497948, 47.765785, 44.028664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150990, 48.113892, 44.187290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240509, 47.730873, 44.114605>,  <45.294220, 47.501060, 44.070995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240509, 47.730873, 44.114605>,  <45.150990, 48.113892, 44.187290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240509, 47.730873, 44.114605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621846, 0.283847, -0.729889,
		0.750481, 0.050352, 0.658971,
		0.223798, -0.957547, -0.181711,
		45.307648, 47.443607, 44.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899395, 48.147335, 43.983765>,  <45.150990, 48.113892, 44.187290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899395, 48.147335, 43.983765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766991, 47.788177, 43.867683>,  <45.687550, 47.572681, 43.798035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766991, 47.788177, 43.867683>,  <45.899395, 48.147335, 43.983765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766991, 47.788177, 43.867683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313621, 0.185378, -0.931277,
		0.889986, -0.399275, 0.220237,
		-0.331008, -0.897894, -0.290205,
		45.667686, 47.518810, 43.780621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.983330, 39.839176, 50.187027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269299, 39.569023, 50.259415>,  <41.440880, 39.406933, 50.302849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.269299, 39.569023, 50.259415>,  <40.983330, 39.839176, 50.187027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269299, 39.569023, 50.259415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540515, 0.369641, -0.755784,
		0.443549, 0.638142, 0.629317,
		0.714918, -0.675382, 0.180971,
		41.483772, 39.366409, 50.313705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754112, 40.222324, 50.286339>,  <40.983330, 39.839176, 50.187027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754112, 40.222324, 50.286339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771976, 39.842010, 50.163692>,  <41.782696, 39.613823, 50.090103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771976, 39.842010, 50.163692>,  <41.754112, 40.222324, 50.286339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771976, 39.842010, 50.163692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597314, 0.271431, -0.754679,
		0.800763, -0.149439, 0.580040,
		0.044662, -0.950785, -0.306614,
		41.785374, 39.556774, 50.071709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333488, 40.356167, 49.986790>,  <41.754112, 40.222324, 50.286339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333488, 40.356167, 49.986790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.196411, 40.003708, 49.856468>,  <42.114166, 39.792233, 49.778275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.196411, 40.003708, 49.856468>,  <42.333488, 40.356167, 49.986790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196411, 40.003708, 49.856468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491292, 0.127506, -0.861612,
		0.800746, -0.455330, 0.389204,
		-0.342692, -0.881145, -0.325799,
		42.093605, 39.739365, 49.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973965, 39.899349, 49.741558>,  <42.333488, 40.356167, 49.986790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973965, 39.899349, 49.741558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.641968, 39.750092, 49.575729>,  <42.442768, 39.660538, 49.476234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.641968, 39.750092, 49.575729>,  <42.973965, 39.899349, 49.741558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641968, 39.750092, 49.575729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456842, -0.028374, -0.889095,
		0.320001, -0.927338, 0.194020,
		-0.829997, -0.373148, -0.414567,
		42.392967, 39.638145, 49.451359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316967, 39.447495, 49.269768>,  <42.973965, 39.899349, 49.741558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316967, 39.447495, 49.269768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.936317, 39.446327, 49.146866>,  <42.707928, 39.445625, 49.073124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.936317, 39.446327, 49.146866>,  <43.316967, 39.447495, 49.269768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936317, 39.446327, 49.146866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307265, -0.013170, -0.951533,
		-0.001258, -0.999909, 0.013433,
		-0.951623, -0.002930, -0.307254,
		42.650829, 39.445450, 49.054691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221310, 38.918938, 48.703224>,  <43.316967, 39.447495, 49.269768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221310, 38.918938, 48.703224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.943684, 39.199921, 48.640202>,  <42.777107, 39.368511, 48.602390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.943684, 39.199921, 48.640202>,  <43.221310, 38.918938, 48.703224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943684, 39.199921, 48.640202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454121, 0.257390, -0.852950,
		-0.558609, -0.663553, -0.497647,
		-0.694068, 0.702458, -0.157553,
		42.735462, 39.410660, 48.592937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983337, 38.879505, 47.985291>,  <43.221310, 38.918938, 48.703224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983337, 38.879505, 47.985291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.872276, 39.249962, 48.087410>,  <42.805641, 39.472237, 48.148682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.872276, 39.249962, 48.087410>,  <42.983337, 38.879505, 47.985291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872276, 39.249962, 48.087410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470344, 0.362768, -0.804472,
		-0.837666, -0.103286, -0.536327,
		-0.277653, 0.926138, 0.255299,
		42.788979, 39.527802, 48.164001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798534, 39.106010, 47.365334>,  <42.983337, 38.879505, 47.985291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798534, 39.106010, 47.365334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.841354, 39.429573, 47.596577>,  <42.867046, 39.623711, 47.735321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.841354, 39.429573, 47.596577>,  <42.798534, 39.106010, 47.365334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841354, 39.429573, 47.596577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433200, 0.485406, -0.759420,
		-0.894918, 0.331729, -0.298459,
		0.107047, 0.808911, 0.578104,
		42.873470, 39.672245, 47.770008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424942, 39.739964, 47.086967>,  <42.798534, 39.106010, 47.365334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424942, 39.739964, 47.086967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.707771, 39.900063, 47.320152>,  <42.877468, 39.996124, 47.460064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.707771, 39.900063, 47.320152>,  <42.424942, 39.739964, 47.086967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707771, 39.900063, 47.320152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334051, 0.537548, -0.774243,
		-0.623260, 0.742188, 0.246384,
		0.707076, 0.400250, 0.582961,
		42.919895, 40.020138, 47.495041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556503, 40.408970, 46.850075>,  <42.424942, 39.739964, 47.086967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556503, 40.408970, 46.850075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.889717, 40.382248, 47.069748>,  <43.089645, 40.366215, 47.201550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.889717, 40.382248, 47.069748>,  <42.556503, 40.408970, 46.850075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889717, 40.382248, 47.069748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480771, 0.578560, -0.658884,
		-0.273716, 0.812900, 0.514075,
		0.833030, -0.066805, 0.549180,
		43.139626, 40.362206, 47.234501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842190, 41.030025, 46.721340>,  <42.556503, 40.408970, 46.850075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842190, 41.030025, 46.721340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.144783, 40.826576, 46.885799>,  <43.326340, 40.704506, 46.984474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.144783, 40.826576, 46.885799>,  <42.842190, 41.030025, 46.721340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144783, 40.826576, 46.885799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653047, 0.553284, -0.517113,
		0.035533, 0.659684, 0.750703,
		0.756483, -0.508619, 0.411145,
		43.371727, 40.673992, 47.009144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269646, 41.591282, 46.974293>,  <42.842190, 41.030025, 46.721340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269646, 41.591282, 46.974293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.504955, 41.270187, 46.935188>,  <43.646141, 41.077530, 46.911728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.504955, 41.270187, 46.935188>,  <43.269646, 41.591282, 46.974293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504955, 41.270187, 46.935188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594881, 0.511466, -0.620097,
		0.547773, 0.306629, 0.778410,
		0.588270, -0.802734, -0.097759,
		43.681435, 41.029366, 46.905861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995449, 41.906261, 47.058975>,  <43.269646, 41.591282, 46.974293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995449, 41.906261, 47.058975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.048904, 41.549721, 46.885708>,  <44.080978, 41.335796, 46.781746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.048904, 41.549721, 46.885708>,  <43.995449, 41.906261, 47.058975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048904, 41.549721, 46.885708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653897, 0.407751, -0.637305,
		0.744687, -0.198076, 0.637344,
		0.133643, -0.891350, -0.433168,
		44.088997, 41.282314, 46.755756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795635, 41.719379, 46.982441>,  <43.995449, 41.906261, 47.058975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795635, 41.719379, 46.982441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.585690, 41.510559, 46.713524>,  <44.459721, 41.385265, 46.552174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.585690, 41.510559, 46.713524>,  <44.795635, 41.719379, 46.982441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585690, 41.510559, 46.713524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603034, 0.329355, -0.726550,
		0.600718, -0.786758, 0.141947,
		-0.524868, -0.522051, -0.672292,
		44.428230, 41.353943, 46.511837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302872, 41.543320, 46.446407>,  <44.795635, 41.719379, 46.982441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302872, 41.543320, 46.446407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.969376, 41.489929, 46.232098>,  <44.769276, 41.457897, 46.103512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.969376, 41.489929, 46.232098>,  <45.302872, 41.543320, 46.446407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969376, 41.489929, 46.232098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427214, 0.458799, -0.779097,
		0.349803, -0.878458, -0.325499,
		-0.833742, -0.133473, -0.535778,
		44.719254, 41.449886, 46.071365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580734, 41.542133, 45.849445>,  <45.302872, 41.543320, 46.446407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580734, 41.542133, 45.849445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.193184, 41.574188, 45.755760>,  <44.960655, 41.593422, 45.699547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.193184, 41.574188, 45.755760>,  <45.580734, 41.542133, 45.849445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193184, 41.574188, 45.755760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241065, 0.520572, -0.819080,
		0.056284, -0.850048, -0.523689,
		-0.968876, 0.080142, -0.234217,
		44.902523, 41.598232, 45.685493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507080, 41.155628, 45.205414>,  <45.580734, 41.542133, 45.849445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507080, 41.155628, 45.205414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.212555, 41.424355, 45.237701>,  <45.035839, 41.585590, 45.257072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.212555, 41.424355, 45.237701>,  <45.507080, 41.155628, 45.205414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212555, 41.424355, 45.237701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252348, 0.383322, -0.888473,
		-0.627829, -0.633823, -0.451774,
		-0.736309, 0.671813, 0.080716,
		44.991661, 41.625900, 45.261917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138584, 41.136131, 44.560135>,  <45.507080, 41.155628, 45.205414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138584, 41.136131, 44.560135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.071205, 41.496017, 44.721203>,  <45.030777, 41.711948, 44.817844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.071205, 41.496017, 44.721203>,  <45.138584, 41.136131, 44.560135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071205, 41.496017, 44.721203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339263, 0.436464, -0.833306,
		-0.925486, -0.003761, -0.378763,
		-0.168451, 0.899714, 0.402665,
		45.020668, 41.765930, 44.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897106, 41.544254, 43.966782>,  <45.138584, 41.136131, 44.560135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897106, 41.544254, 43.966782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.970741, 41.830467, 44.236340>,  <45.014923, 42.002193, 44.398075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.970741, 41.830467, 44.236340>,  <44.897106, 41.544254, 43.966782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970741, 41.830467, 44.236340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312598, 0.607391, -0.730314,
		-0.931876, 0.345102, -0.111857,
		0.184092, 0.715528, 0.673891,
		45.025970, 42.045124, 44.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632504, 42.232269, 43.739304>,  <44.897106, 41.544254, 43.966782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632504, 42.232269, 43.739304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903732, 42.331558, 44.016029>,  <45.066471, 42.391132, 44.182064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903732, 42.331558, 44.016029>,  <44.632504, 42.232269, 43.739304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903732, 42.331558, 44.016029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294932, 0.770256, -0.565439,
		-0.673224, 0.587447, 0.449083,
		0.678074, 0.248218, 0.691811,
		45.107155, 42.406025, 44.223572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688232, 42.987564, 43.763836>,  <44.632504, 42.232269, 43.739304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688232, 42.987564, 43.763836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.034126, 42.849457, 43.909721>,  <45.241665, 42.766594, 43.997253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.034126, 42.849457, 43.909721>,  <44.688232, 42.987564, 43.763836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034126, 42.849457, 43.909721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484856, 0.763251, -0.427040,
		-0.130927, 0.546113, 0.827417,
		0.864738, -0.345267, 0.364716,
		45.293549, 42.745876, 44.019135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007458, 43.525440, 44.112591>,  <44.688232, 42.987564, 43.763836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007458, 43.525440, 44.112591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.289032, 43.262093, 44.005989>,  <45.457977, 43.104084, 43.942028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.289032, 43.262093, 44.005989>,  <45.007458, 43.525440, 44.112591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289032, 43.262093, 44.005989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584385, 0.750130, -0.309516,
		0.403687, 0.062140, 0.912784,
		0.703940, -0.658365, -0.266504,
		45.500214, 43.064583, 43.926037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076843, 44.045872, 43.565720>,  <45.007458, 43.525440, 44.112591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076843, 44.045872, 43.565720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.846573, 44.371376, 43.533749>,  <44.708412, 44.566681, 43.514565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.846573, 44.371376, 43.533749>,  <45.076843, 44.045872, 43.565720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846573, 44.371376, 43.533749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603095, -0.356555, 0.713543,
		0.552156, 0.458974, 0.696036,
		-0.575673, 0.813764, -0.079931,
		44.673870, 44.615505, 43.509769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062286, 44.266182, 44.277218>,  <45.076843, 44.045872, 43.565720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062286, 44.266182, 44.277218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.743637, 44.411591, 44.084038>,  <44.552448, 44.498837, 43.968128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.743637, 44.411591, 44.084038>,  <45.062286, 44.266182, 44.277218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743637, 44.411591, 44.084038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579822, -0.233683, 0.780512,
		0.170878, 0.901799, 0.396937,
		-0.796622, 0.363525, -0.482952,
		44.504650, 44.520649, 43.939152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628075, 44.559620, 44.816166>,  <45.062286, 44.266182, 44.277218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628075, 44.559620, 44.816166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.385468, 44.523857, 44.500153>,  <44.239902, 44.502399, 44.310547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.385468, 44.523857, 44.500153>,  <44.628075, 44.559620, 44.816166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385468, 44.523857, 44.500153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769924, -0.181891, 0.611664,
		-0.198386, 0.979246, 0.041483,
		-0.606514, -0.089407, -0.790030,
		44.203514, 44.497036, 44.263145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030460, 44.897690, 44.936722>,  <44.628075, 44.559620, 44.816166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030460, 44.897690, 44.936722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.908833, 44.638298, 44.657574>,  <43.835857, 44.482662, 44.490086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.908833, 44.638298, 44.657574>,  <44.030460, 44.897690, 44.936722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908833, 44.638298, 44.657574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744218, -0.295620, 0.598957,
		-0.594713, 0.701490, -0.392719,
		-0.304066, -0.648476, -0.697870,
		43.817612, 44.443756, 44.448212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340649, 44.958168, 44.984310>,  <44.030460, 44.897690, 44.936722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340649, 44.958168, 44.984310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.414959, 44.600540, 44.821274>,  <43.459545, 44.385963, 44.723454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.414959, 44.600540, 44.821274>,  <43.340649, 44.958168, 44.984310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414959, 44.600540, 44.821274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733157, -0.402300, 0.548302,
		-0.654194, 0.196969, -0.730228,
		0.185772, -0.894068, -0.407592,
		43.470692, 44.332321, 44.698997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770290, 44.666222, 44.868317>,  <43.340649, 44.958168, 44.984310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770290, 44.666222, 44.868317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.008427, 44.344948, 44.876976>,  <43.151306, 44.152184, 44.882172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.008427, 44.344948, 44.876976>,  <42.770290, 44.666222, 44.868317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008427, 44.344948, 44.876976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700806, -0.505894, 0.502934,
		-0.392994, -0.314590, -0.864054,
		0.595338, -0.803184, 0.021653,
		43.187027, 44.103992, 44.883472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266682, 44.114059, 44.733227>,  <42.770290, 44.666222, 44.868317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266682, 44.114059, 44.733227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.594086, 43.941589, 44.885078>,  <42.790527, 43.838108, 44.976189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.594086, 43.941589, 44.885078>,  <42.266682, 44.114059, 44.733227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594086, 43.941589, 44.885078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572499, -0.557279, 0.601402,
		-0.047751, -0.709594, -0.702990,
		0.818514, -0.431179, 0.379632,
		42.839642, 43.812237, 44.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095367, 43.454838, 44.835854>,  <42.266682, 44.114059, 44.733227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095367, 43.454838, 44.835854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.407372, 43.480141, 45.084877>,  <42.594574, 43.495323, 45.234291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.407372, 43.480141, 45.084877>,  <42.095367, 43.454838, 44.835854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407372, 43.480141, 45.084877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567089, -0.349158, 0.745988,
		0.264563, -0.934926, -0.236473,
		0.780010, 0.063260, 0.622561,
		42.641376, 43.499119, 45.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043720, 42.811829, 45.234085>,  <42.095367, 43.454838, 44.835854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043720, 42.811829, 45.234085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275669, 43.060783, 45.444374>,  <42.414837, 43.210155, 45.570545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275669, 43.060783, 45.444374>,  <42.043720, 42.811829, 45.234085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275669, 43.060783, 45.444374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398439, -0.346205, 0.849346,
		0.710629, -0.701980, 0.047229,
		0.579873, 0.622388, 0.525719,
		42.449631, 43.247501, 45.602089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438560, 42.404587, 45.634987>,  <42.043720, 42.811829, 45.234085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438560, 42.404587, 45.634987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425419, 42.760445, 45.817177>,  <42.417534, 42.973957, 45.926491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425419, 42.760445, 45.817177>,  <42.438560, 42.404587, 45.634987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425419, 42.760445, 45.817177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338841, -0.438645, 0.832332,
		0.940270, -0.126991, 0.315857,
		-0.032851, 0.889642, 0.455475,
		42.415565, 43.027336, 45.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568531, 42.234314, 46.277889>,  <42.438560, 42.404587, 45.634987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568531, 42.234314, 46.277889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.418961, 42.600685, 46.336197>,  <42.329220, 42.820507, 46.371181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.418961, 42.600685, 46.336197>,  <42.568531, 42.234314, 46.277889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418961, 42.600685, 46.336197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504661, -0.332802, 0.796593,
		0.778138, 0.224300, 0.586677,
		-0.373923, 0.915932, 0.145770,
		42.306782, 42.875465, 46.379929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805473, 42.456905, 46.866734>,  <42.568531, 42.234314, 46.277889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805473, 42.456905, 46.866734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.458302, 42.643661, 46.798946>,  <42.250000, 42.755714, 46.758274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.458302, 42.643661, 46.798946>,  <42.805473, 42.456905, 46.866734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458302, 42.643661, 46.798946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336183, -0.301040, 0.892388,
		0.365629, 0.831499, 0.418241,
		-0.867926, 0.466889, -0.169467,
		42.197922, 42.783730, 46.748108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685455, 42.961346, 47.437489>,  <42.805473, 42.456905, 46.866734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685455, 42.961346, 47.437489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359600, 42.810921, 47.260880>,  <42.164085, 42.720665, 47.154915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359600, 42.810921, 47.260880>,  <42.685455, 42.961346, 47.437489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359600, 42.810921, 47.260880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351325, -0.285728, 0.891589,
		-0.461447, 0.881440, 0.100645,
		-0.814639, -0.376062, -0.441520,
		42.115208, 42.698101, 47.128422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100960, 43.145515, 47.826054>,  <42.685455, 42.961346, 47.437489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100960, 43.145515, 47.826054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998291, 42.837395, 47.592552>,  <41.936691, 42.652523, 47.452454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998291, 42.837395, 47.592552>,  <42.100960, 43.145515, 47.826054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998291, 42.837395, 47.592552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444878, -0.442034, 0.778903,
		-0.858024, 0.459616, -0.229232,
		-0.256668, -0.770297, -0.583749,
		41.921291, 42.606304, 47.417427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398315, 43.149620, 47.745876>,  <42.100960, 43.145515, 47.826054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398315, 43.149620, 47.745876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496124, 42.768433, 47.674248>,  <41.554810, 42.539722, 47.631271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496124, 42.768433, 47.674248>,  <41.398315, 43.149620, 47.745876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496124, 42.768433, 47.674248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621105, -0.295749, 0.725784,
		-0.744607, -0.066244, -0.664207,
		0.244518, -0.952966, -0.179072,
		41.569481, 42.482544, 47.620525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793468, 42.798573, 47.778542>,  <41.398315, 43.149620, 47.745876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793468, 42.798573, 47.778542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068024, 42.511856, 47.827667>,  <41.232758, 42.339828, 47.857143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068024, 42.511856, 47.827667>,  <40.793468, 42.798573, 47.778542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068024, 42.511856, 47.827667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502445, -0.345327, 0.792653,
		-0.525755, -0.605775, -0.597176,
		0.686390, -0.716789, 0.122812,
		41.273941, 42.296818, 47.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397381, 42.117924, 47.815823>,  <40.793468, 42.798573, 47.778542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397381, 42.117924, 47.815823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.755684, 42.023117, 47.966251>,  <40.970665, 41.966232, 48.056511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.755684, 42.023117, 47.966251>,  <40.397381, 42.117924, 47.815823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755684, 42.023117, 47.966251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443826, -0.429043, 0.786728,
		-0.025117, -0.871633, -0.489515,
		0.895761, -0.237020, 0.376077,
		41.024414, 41.952011, 48.079075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528469, 41.284943, 47.934956>,  <40.397381, 42.117924, 47.815823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528469, 41.284943, 47.934956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770073, 41.498260, 48.171856>,  <40.915035, 41.626251, 48.313995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770073, 41.498260, 48.171856>,  <40.528469, 41.284943, 47.934956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770073, 41.498260, 48.171856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319433, -0.518827, 0.792957,
		0.730159, -0.668140, -0.143025,
		0.604012, 0.533299, 0.592252,
		40.951275, 41.658249, 48.349533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.887199, 40.671001, 48.461121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941628, 41.043190, 48.597179>,  <40.974285, 41.266502, 48.678814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941628, 41.043190, 48.597179>,  <40.887199, 40.671001, 48.461121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941628, 41.043190, 48.597179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333887, -0.280185, 0.900009,
		0.932741, -0.236033, 0.272550,
		0.136067, 0.930475, 0.340148,
		40.982449, 41.322334, 48.699223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187126, 40.569340, 49.090275>,  <40.887199, 40.671001, 48.461121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187126, 40.569340, 49.090275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008316, 40.926796, 49.106110>,  <40.901031, 41.141270, 49.115612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008316, 40.926796, 49.106110>,  <41.187126, 40.569340, 49.090275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008316, 40.926796, 49.106110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321139, -0.201637, 0.925317,
		0.834888, 0.400926, 0.377121,
		-0.447025, 0.893645, 0.039591,
		40.874210, 41.194889, 49.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327236, 40.835232, 49.754150>,  <41.187126, 40.569340, 49.090275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327236, 40.835232, 49.754150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013882, 41.042313, 49.616573>,  <40.825871, 41.166561, 49.534027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013882, 41.042313, 49.616573>,  <41.327236, 40.835232, 49.754150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013882, 41.042313, 49.616573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500927, -0.198304, 0.842465,
		0.367941, 0.832263, 0.414679,
		-0.783385, 0.517701, -0.343939,
		40.778866, 41.197624, 49.513393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165031, 41.373718, 50.264130>,  <41.327236, 40.835232, 49.754150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165031, 41.373718, 50.264130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811691, 41.320755, 50.084278>,  <40.599689, 41.288975, 49.976368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811691, 41.320755, 50.084278>,  <41.165031, 41.373718, 50.264130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811691, 41.320755, 50.084278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411994, -0.238087, 0.879531,
		-0.223509, 0.962176, 0.155761,
		-0.883348, -0.132410, -0.449625,
		40.546688, 41.281033, 49.949390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728088, 41.471390, 50.770775>,  <41.165031, 41.373718, 50.264130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728088, 41.471390, 50.770775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462051, 41.347443, 50.499001>,  <40.302429, 41.273075, 50.335934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462051, 41.347443, 50.499001>,  <40.728088, 41.471390, 50.770775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462051, 41.347443, 50.499001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636502, -0.240598, 0.732788,
		-0.390541, 0.919833, -0.037214,
		-0.665089, -0.309871, -0.679439,
		40.262524, 41.254482, 50.295170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103378, 41.765068, 51.014545>,  <40.728088, 41.471390, 50.770775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103378, 41.765068, 51.014545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031334, 41.450432, 50.778297>,  <39.988106, 41.261650, 50.636551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031334, 41.450432, 50.778297>,  <40.103378, 41.765068, 51.014545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031334, 41.450432, 50.778297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637235, -0.364099, 0.679238,
		-0.749328, 0.498700, -0.435667,
		-0.180110, -0.786594, -0.590618,
		39.977303, 41.214455, 50.601112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333260, 41.716812, 50.950382>,  <40.103378, 41.765068, 51.014545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333260, 41.716812, 50.950382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483238, 41.356140, 50.864223>,  <39.573227, 41.139736, 50.812531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483238, 41.356140, 50.864223>,  <39.333260, 41.716812, 50.950382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483238, 41.356140, 50.864223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706578, -0.428367, 0.563249,
		-0.600136, -0.058996, -0.797719,
		0.374945, -0.901677, -0.215393,
		39.595722, 41.085636, 50.799606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712070, 41.287491, 50.820923>,  <39.333260, 41.716812, 50.950382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712070, 41.287491, 50.820923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001038, 41.026634, 50.912853>,  <39.174419, 40.870121, 50.968010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001038, 41.026634, 50.912853>,  <38.712070, 41.287491, 50.820923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001038, 41.026634, 50.912853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639343, -0.503415, 0.581218,
		-0.263337, -0.566823, -0.780618,
		0.722423, -0.652139, 0.229827,
		39.217766, 40.830994, 50.981800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452026, 40.649586, 50.855415>,  <38.712070, 41.287491, 50.820923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452026, 40.649586, 50.855415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793751, 40.610336, 51.059582>,  <38.998787, 40.586788, 51.182083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793751, 40.610336, 51.059582>,  <38.452026, 40.649586, 50.855415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793751, 40.610336, 51.059582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479626, -0.527215, 0.701429,
		0.200275, -0.844048, -0.497466,
		0.854312, -0.098119, 0.510416,
		39.050045, 40.580902, 51.212708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431259, 39.979504, 51.037560>,  <38.452026, 40.649586, 50.855415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431259, 39.979504, 51.037560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677879, 40.169540, 51.288689>,  <38.825851, 40.283562, 51.439365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677879, 40.169540, 51.288689>,  <38.431259, 39.979504, 51.037560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677879, 40.169540, 51.288689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447722, -0.444357, 0.775945,
		0.647621, -0.759496, -0.061258,
		0.616548, 0.475092, 0.627819,
		38.862843, 40.312069, 51.477036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434898, 39.501499, 51.453625>,  <38.431259, 39.979504, 51.037560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434898, 39.501499, 51.453625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567135, 39.831886, 51.636269>,  <38.646477, 40.030117, 51.745857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567135, 39.831886, 51.636269>,  <38.434898, 39.501499, 51.453625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567135, 39.831886, 51.636269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401516, -0.314759, 0.860065,
		0.854106, -0.467664, 0.227582,
		0.330588, 0.825964, 0.456612,
		38.666313, 40.079674, 51.773251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593761, 39.233425, 52.156479>,  <38.434898, 39.501499, 51.453625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593761, 39.233425, 52.156479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594215, 39.631821, 52.192272>,  <38.594490, 39.870857, 52.213749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594215, 39.631821, 52.192272>,  <38.593761, 39.233425, 52.156479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594215, 39.631821, 52.192272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286555, -0.085407, 0.954249,
		0.958063, -0.026727, 0.285308,
		0.001137, 0.995988, 0.089484,
		38.594555, 39.930618, 52.219116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827469, 39.394653, 52.814423>,  <38.593761, 39.233425, 52.156479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827469, 39.394653, 52.814423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605999, 39.717339, 52.731804>,  <38.473118, 39.910950, 52.682232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605999, 39.717339, 52.731804>,  <38.827469, 39.394653, 52.814423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605999, 39.717339, 52.731804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427926, -0.062853, 0.901626,
		0.714370, 0.587593, 0.380013,
		-0.553673, 0.806712, -0.206546,
		38.439896, 39.959351, 52.669842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811474, 39.833153, 53.507347>,  <38.827469, 39.394653, 52.814423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811474, 39.833153, 53.507347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504295, 39.940811, 53.274857>,  <38.319988, 40.005405, 53.135361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504295, 39.940811, 53.274857>,  <38.811474, 39.833153, 53.507347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504295, 39.940811, 53.274857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523983, 0.257909, 0.811742,
		0.368380, 0.927924, -0.057031,
		-0.767944, 0.269146, -0.581225,
		38.273911, 40.021553, 53.100491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642647, 40.529472, 53.775005>,  <38.811474, 39.833153, 53.507347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642647, 40.529472, 53.775005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337936, 40.359383, 53.579502>,  <38.155109, 40.257328, 53.462200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337936, 40.359383, 53.579502>,  <38.642647, 40.529472, 53.775005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337936, 40.359383, 53.579502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578912, 0.108170, 0.808183,
		-0.290788, 0.898602, -0.328568,
		-0.761776, -0.425222, -0.488757,
		38.109402, 40.231815, 53.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084370, 40.994827, 53.716690>,  <38.642647, 40.529472, 53.775005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084370, 40.994827, 53.716690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900314, 40.640984, 53.686394>,  <37.789883, 40.428677, 53.668217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900314, 40.640984, 53.686394>,  <38.084370, 40.994827, 53.716690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900314, 40.640984, 53.686394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523298, 0.201297, 0.828034,
		-0.717241, 0.420646, -0.555539,
		-0.460137, -0.884611, -0.075745,
		37.762272, 40.375599, 53.663670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427746, 41.143944, 53.882210>,  <38.084370, 40.994827, 53.716690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427746, 41.143944, 53.882210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458252, 40.748001, 53.930153>,  <37.476555, 40.510437, 53.958920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458252, 40.748001, 53.930153>,  <37.427746, 41.143944, 53.882210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458252, 40.748001, 53.930153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275511, 0.094606, 0.956631,
		-0.958268, -0.105982, -0.265501,
		0.076268, -0.989857, 0.119857,
		37.481133, 40.451042, 53.966110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758286, 40.899437, 54.066410>,  <37.427746, 41.143944, 53.882210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758286, 40.899437, 54.066410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995674, 40.598846, 54.181698>,  <37.138107, 40.418491, 54.250870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995674, 40.598846, 54.181698>,  <36.758286, 40.899437, 54.066410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995674, 40.598846, 54.181698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467546, -0.030401, 0.883446,
		-0.655125, -0.659060, -0.369392,
		0.593474, -0.751475, 0.288224,
		37.173717, 40.373405, 54.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310272, 40.380264, 54.290329>,  <36.758286, 40.899437, 54.066410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310272, 40.380264, 54.290329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670879, 40.335266, 54.457478>,  <36.887241, 40.308266, 54.557766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670879, 40.335266, 54.457478>,  <36.310272, 40.380264, 54.290329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670879, 40.335266, 54.457478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419239, 0.012332, 0.907792,
		-0.107275, -0.993576, -0.036045,
		0.901516, -0.112495, 0.417868,
		36.941334, 40.301517, 54.582840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320091, 39.747654, 54.738338>,  <36.310272, 40.380264, 54.290329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320091, 39.747654, 54.738338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608345, 39.982162, 54.886379>,  <36.781300, 40.122868, 54.975204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608345, 39.982162, 54.886379>,  <36.320091, 39.747654, 54.738338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608345, 39.982162, 54.886379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398343, -0.086797, 0.913120,
		0.567456, -0.805454, 0.170987,
		0.720636, 0.586267, 0.370101,
		36.824535, 40.158043, 54.997410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469082, 39.418491, 55.340981>,  <36.320091, 39.747654, 54.738338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469082, 39.418491, 55.340981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635979, 39.780830, 55.370235>,  <36.736118, 39.998234, 55.387787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635979, 39.780830, 55.370235>,  <36.469082, 39.418491, 55.340981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635979, 39.780830, 55.370235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236685, 0.030618, 0.971104,
		0.877432, -0.422498, 0.227176,
		0.417245, 0.905847, 0.073133,
		36.761150, 40.052586, 55.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821213, 39.428402, 56.037933>,  <36.469082, 39.418491, 55.340981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821213, 39.428402, 56.037933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783531, 39.813385, 55.936111>,  <36.760921, 40.044376, 55.875019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783531, 39.813385, 55.936111>,  <36.821213, 39.428402, 56.037933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783531, 39.813385, 55.936111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399127, 0.197733, 0.895320,
		0.912043, 0.185947, 0.365515,
		-0.094207, 0.962458, -0.254557,
		36.755268, 40.102123, 55.859745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004517, 39.855141, 56.613911>,  <36.821213, 39.428402, 56.037933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004517, 39.855141, 56.613911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742073, 40.050110, 56.383453>,  <36.584606, 40.167091, 56.245178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742073, 40.050110, 56.383453>,  <37.004517, 39.855141, 56.613911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742073, 40.050110, 56.383453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457898, 0.349729, 0.817325,
		0.599879, 0.800066, -0.006268,
		-0.656106, 0.487426, -0.576143,
		36.545242, 40.196339, 56.210609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683170, 39.189205, 56.697933>,  <37.004517, 39.855141, 56.613911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683170, 39.189205, 56.697933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563873, 39.325218, 57.054680>,  <36.492294, 39.406826, 57.268726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563873, 39.325218, 57.054680>,  <36.683170, 39.189205, 56.697933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563873, 39.325218, 57.054680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613639, 0.784006, -0.093709,
		-0.731094, 0.519338, -0.442481,
		-0.298242, 0.340034, 0.891868,
		36.474400, 39.427227, 57.322239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808292, 38.546303, 56.410740>,  <36.683170, 39.189205, 56.697933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808292, 38.546303, 56.410740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975876, 38.210793, 56.549839>,  <37.076424, 38.009487, 56.633301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975876, 38.210793, 56.549839>,  <36.808292, 38.546303, 56.410740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975876, 38.210793, 56.549839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824713, 0.191273, -0.532224,
		0.379901, 0.509773, 0.771885,
		0.418955, -0.838776, 0.347751,
		37.101562, 37.959160, 56.654163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445011, 38.727276, 56.613560>,  <36.808292, 38.546303, 56.410740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445011, 38.727276, 56.613560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451160, 38.331665, 56.554794>,  <37.454849, 38.094299, 56.519535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451160, 38.331665, 56.554794>,  <37.445011, 38.727276, 56.613560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451160, 38.331665, 56.554794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756381, 0.107598, -0.645221,
		0.653951, -0.101203, 0.749737,
		0.015372, -0.989030, -0.146912,
		37.455772, 38.034958, 56.510719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133778, 38.592842, 56.589561>,  <37.445011, 38.727276, 56.613560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133778, 38.592842, 56.589561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964668, 38.266243, 56.432289>,  <37.863201, 38.070282, 56.337925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964668, 38.266243, 56.432289>,  <38.133778, 38.592842, 56.589561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964668, 38.266243, 56.432289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683482, -0.002393, -0.729964,
		0.595073, -0.577344, 0.559073,
		-0.422778, -0.816497, -0.393180,
		37.837833, 38.021294, 56.314335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698303, 38.169247, 56.405281>,  <38.133778, 38.592842, 56.589561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698303, 38.169247, 56.405281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.395645, 38.056679, 56.169216>,  <38.214050, 37.989136, 56.027576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.395645, 38.056679, 56.169216>,  <38.698303, 38.169247, 56.405281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395645, 38.056679, 56.169216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619615, -0.020474, -0.784639,
		0.208734, -0.959365, 0.189866,
		-0.756642, -0.281424, -0.590163,
		38.168652, 37.972252, 55.992168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883579, 37.525791, 56.132072>,  <38.698303, 38.169247, 56.405281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883579, 37.525791, 56.132072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609314, 37.686699, 55.889404>,  <38.444756, 37.783241, 55.743801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609314, 37.686699, 55.889404>,  <38.883579, 37.525791, 56.132072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609314, 37.686699, 55.889404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653826, -0.026011, -0.756198,
		-0.319973, -0.915153, -0.245177,
		-0.685659, 0.402266, -0.606673,
		38.403618, 37.807381, 55.707401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036476, 37.163910, 55.477039>,  <38.883579, 37.525791, 56.132072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036476, 37.163910, 55.477039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818790, 37.489197, 55.394566>,  <38.688179, 37.684368, 55.345081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818790, 37.489197, 55.394566>,  <39.036476, 37.163910, 55.477039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818790, 37.489197, 55.394566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540047, 0.151503, -0.827887,
		-0.642015, -0.561893, -0.521625,
		-0.544212, 0.813218, -0.206182,
		38.655525, 37.733162, 55.332710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902683, 37.116722, 54.768867>,  <39.036476, 37.163910, 55.477039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902683, 37.116722, 54.768867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821796, 37.501534, 54.842197>,  <38.773266, 37.732422, 54.886196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821796, 37.501534, 54.842197>,  <38.902683, 37.116722, 54.768867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821796, 37.501534, 54.842197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454644, 0.258010, -0.852485,
		-0.867415, -0.089038, -0.489554,
		-0.202213, 0.962031, 0.183321,
		38.761131, 37.790142, 54.897194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708263, 37.401978, 54.147568>,  <38.902683, 37.116722, 54.768867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708263, 37.401978, 54.147568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835159, 37.715942, 54.360458>,  <38.911297, 37.904324, 54.488194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835159, 37.715942, 54.360458>,  <38.708263, 37.401978, 54.147568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835159, 37.715942, 54.360458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522308, 0.323816, -0.788884,
		-0.791551, 0.528251, -0.307242,
		0.317239, 0.784917, 0.532227,
		38.930332, 37.951416, 54.520126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687134, 37.938572, 53.672962>,  <38.708263, 37.401978, 54.147568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687134, 37.938572, 53.672962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924274, 38.088982, 53.957817>,  <39.066559, 38.179230, 54.128731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924274, 38.088982, 53.957817>,  <38.687134, 37.938572, 53.672962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924274, 38.088982, 53.957817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582387, 0.410556, -0.701619,
		-0.556200, 0.830690, 0.024403,
		0.592847, 0.376028, 0.712134,
		39.102127, 38.201790, 54.171459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790108, 38.647404, 53.528225>,  <38.687134, 37.938572, 53.672962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790108, 38.647404, 53.528225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111595, 38.553398, 53.746876>,  <39.304489, 38.496994, 53.878067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111595, 38.553398, 53.746876>,  <38.790108, 38.647404, 53.528225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111595, 38.553398, 53.746876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594583, 0.282580, -0.752741,
		0.022435, 0.930010, 0.366848,
		0.803721, -0.235009, 0.546629,
		39.352711, 38.482895, 53.910866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203045, 39.236160, 53.478683>,  <38.790108, 38.647404, 53.528225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203045, 39.236160, 53.478683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439674, 38.933144, 53.589081>,  <39.581654, 38.751335, 53.655319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439674, 38.933144, 53.589081>,  <39.203045, 39.236160, 53.478683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439674, 38.933144, 53.589081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714297, 0.333679, -0.615173,
		0.373922, 0.561065, 0.738504,
		0.591576, -0.757538, 0.275997,
		39.617146, 38.705883, 53.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822178, 39.459290, 53.664371>,  <39.203045, 39.236160, 53.478683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822178, 39.459290, 53.664371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900566, 39.077805, 53.573128>,  <39.947598, 38.848915, 53.518383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900566, 39.077805, 53.573128>,  <39.822178, 39.459290, 53.664371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900566, 39.077805, 53.573128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717589, 0.298011, -0.629488,
		0.668328, -0.040328, 0.742772,
		0.195968, -0.953710, -0.228109,
		39.959358, 38.791691, 53.504696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528831, 39.332489, 53.641941>,  <39.822178, 39.459290, 53.664371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528831, 39.332489, 53.641941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383133, 39.048378, 53.401001>,  <40.295715, 38.877911, 53.256435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383133, 39.048378, 53.401001>,  <40.528831, 39.332489, 53.641941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383133, 39.048378, 53.401001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673045, 0.246273, -0.697395,
		0.643689, -0.659433, 0.388346,
		-0.364246, -0.710280, -0.602351,
		40.273861, 38.835293, 53.220295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101078, 39.063339, 53.297565>,  <40.528831, 39.332489, 53.641941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101078, 39.063339, 53.297565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794319, 38.926300, 53.080498>,  <40.610264, 38.844078, 52.950256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794319, 38.926300, 53.080498>,  <41.101078, 39.063339, 53.297565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794319, 38.926300, 53.080498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546748, 0.094002, -0.832004,
		0.336054, -0.934768, 0.115224,
		-0.766899, -0.342597, -0.542672,
		40.564251, 38.823521, 52.917698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454460, 38.576736, 52.852932>,  <41.101078, 39.063339, 53.297565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454460, 38.576736, 52.852932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088947, 38.638763, 52.702759>,  <40.869640, 38.675980, 52.612656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088947, 38.638763, 52.702759>,  <41.454460, 38.576736, 52.852932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088947, 38.638763, 52.702759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383673, 0.025974, -0.923104,
		-0.133388, -0.987563, -0.083228,
		-0.913785, 0.155064, -0.375437,
		40.814812, 38.685284, 52.590126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402260, 38.076920, 52.376099>,  <41.454460, 38.576736, 52.852932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402260, 38.076920, 52.376099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146168, 38.373474, 52.295647>,  <40.992512, 38.551407, 52.247375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146168, 38.373474, 52.295647>,  <41.402260, 38.076920, 52.376099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146168, 38.373474, 52.295647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376575, 0.074698, -0.923369,
		-0.669553, -0.666905, -0.327012,
		-0.640227, 0.741389, -0.201125,
		40.954102, 38.595890, 52.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090607, 37.858280, 51.704826>,  <41.402260, 38.076920, 52.376099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090607, 37.858280, 51.704826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057144, 38.251930, 51.767441>,  <41.037067, 38.488121, 51.805008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057144, 38.251930, 51.767441>,  <41.090607, 37.858280, 51.704826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057144, 38.251930, 51.767441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158346, 0.168219, -0.972949,
		-0.983833, -0.056608, -0.169904,
		-0.083658, 0.984123, 0.156536,
		41.032047, 38.547169, 51.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735497, 38.077648, 51.095661>,  <41.090607, 37.858280, 51.704826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735497, 38.077648, 51.095661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895176, 38.410469, 51.249718>,  <40.990982, 38.610161, 51.342152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895176, 38.410469, 51.249718>,  <40.735497, 38.077648, 51.095661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895176, 38.410469, 51.249718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207365, 0.327243, -0.921907,
		-0.893107, 0.447888, -0.041904,
		0.399198, 0.832051, 0.385139,
		41.014935, 38.660084, 51.365261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432491, 38.659264, 50.742607>,  <40.735497, 38.077648, 51.095661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432491, 38.659264, 50.742607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785751, 38.784698, 50.882153>,  <40.997707, 38.859959, 50.965881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785751, 38.784698, 50.882153>,  <40.432491, 38.659264, 50.742607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785751, 38.784698, 50.882153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205479, 0.409958, -0.888658,
		-0.421690, 0.856505, 0.297620,
		0.883151, 0.313583, 0.348868,
		41.050697, 38.878773, 50.986813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649685, 39.159958, 50.224079>,  <40.432491, 38.659264, 50.742607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649685, 39.159958, 50.224079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990940, 39.108963, 50.426426>,  <41.195694, 39.078365, 50.547832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990940, 39.108963, 50.426426>,  <40.649685, 39.159958, 50.224079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990940, 39.108963, 50.426426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515069, 0.359775, -0.777988,
		-0.082812, 0.924288, 0.372605,
		0.853139, -0.127490, 0.505866,
		41.246883, 39.070717, 50.578186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.181103, 43.549828, 46.584145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503284, 43.321388, 46.647507>,  <41.696594, 43.184326, 46.685524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503284, 43.321388, 46.647507>,  <41.181103, 43.549828, 46.584145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503284, 43.321388, 46.647507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542085, 0.601889, -0.586408,
		0.239555, 0.558192, 0.794377,
		0.805455, -0.571097, 0.158403,
		41.744923, 43.150059, 46.695026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694347, 43.977745, 46.615639>,  <41.181103, 43.549828, 46.584145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694347, 43.977745, 46.615639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884018, 43.635551, 46.532402>,  <41.997822, 43.430237, 46.482460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884018, 43.635551, 46.532402>,  <41.694347, 43.977745, 46.615639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884018, 43.635551, 46.532402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576492, 0.480326, -0.661018,
		0.665442, 0.193477, 0.720940,
		0.474178, -0.855484, -0.208091,
		42.026272, 43.378906, 46.469975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390755, 44.158779, 46.571575>,  <41.694347, 43.977745, 46.615639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390755, 44.158779, 46.571575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380150, 43.810791, 46.374622>,  <42.373787, 43.601997, 46.256451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380150, 43.810791, 46.374622>,  <42.390755, 44.158779, 46.571575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380150, 43.810791, 46.374622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660298, 0.354574, -0.662031,
		0.750536, -0.342670, 0.565042,
		-0.026509, -0.869974, -0.492384,
		42.372196, 43.549797, 46.226906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068939, 44.102036, 46.361855>,  <42.390755, 44.158779, 46.571575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068939, 44.102036, 46.361855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891983, 43.837151, 46.119938>,  <42.785809, 43.678219, 45.974789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891983, 43.837151, 46.119938>,  <43.068939, 44.102036, 46.361855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891983, 43.837151, 46.119938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713303, 0.148937, -0.684848,
		0.543588, -0.734369, 0.406467,
		-0.442393, -0.662209, -0.604787,
		42.759266, 43.638489, 45.938503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664394, 43.670795, 46.044041>,  <43.068939, 44.102036, 46.361855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664394, 43.670795, 46.044041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341904, 43.620789, 45.812744>,  <43.148411, 43.590786, 45.673965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341904, 43.620789, 45.812744>,  <43.664394, 43.670795, 46.044041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341904, 43.620789, 45.812744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559268, 0.157671, -0.813855,
		0.192922, -0.979546, -0.057198,
		-0.806226, -0.125022, -0.578246,
		43.100037, 43.583282, 45.639271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880524, 43.224033, 45.473301>,  <43.664394, 43.670795, 46.044041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880524, 43.224033, 45.473301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560356, 43.424194, 45.341282>,  <43.368256, 43.544289, 45.262070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560356, 43.424194, 45.341282>,  <43.880524, 43.224033, 45.473301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560356, 43.424194, 45.341282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505848, 0.268419, -0.819798,
		-0.321636, -0.823135, -0.467973,
		-0.800418, 0.500400, -0.330048,
		43.320232, 43.574314, 45.242268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819221, 42.996048, 44.757256>,  <43.880524, 43.224033, 45.473301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819221, 42.996048, 44.757256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636482, 43.349823, 44.795341>,  <43.526840, 43.562088, 44.818195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636482, 43.349823, 44.795341>,  <43.819221, 42.996048, 44.757256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636482, 43.349823, 44.795341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462988, 0.327813, -0.823517,
		-0.759560, -0.332139, -0.559243,
		-0.456849, 0.884433, 0.095217,
		43.499428, 43.615154, 44.823906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630024, 43.133434, 44.141739>,  <43.819221, 42.996048, 44.757256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630024, 43.133434, 44.141739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604767, 43.496544, 44.307610>,  <43.589611, 43.714409, 44.407131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604767, 43.496544, 44.307610>,  <43.630024, 43.133434, 44.141739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604767, 43.496544, 44.307610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420251, 0.401062, -0.813965,
		-0.905208, 0.122870, -0.406818,
		-0.063147, 0.907773, 0.414681,
		43.585823, 43.768875, 44.432014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505684, 43.572643, 43.514072>,  <43.630024, 43.133434, 44.141739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505684, 43.572643, 43.514072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576797, 43.834518, 43.807953>,  <43.619465, 43.991642, 43.984280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576797, 43.834518, 43.807953>,  <43.505684, 43.572643, 43.514072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576797, 43.834518, 43.807953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552366, 0.551495, -0.625096,
		-0.814423, 0.516955, -0.263577,
		0.177785, 0.654684, 0.734699,
		43.630135, 44.030922, 44.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571705, 44.213627, 43.185623>,  <43.505684, 43.572643, 43.514072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571705, 44.213627, 43.185623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.764702, 44.295662, 43.526245>,  <43.880501, 44.344883, 43.730618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.764702, 44.295662, 43.526245>,  <43.571705, 44.213627, 43.185623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764702, 44.295662, 43.526245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567099, 0.667779, -0.482152,
		-0.667533, 0.715548, 0.205891,
		0.482492, 0.205091, 0.851551,
		43.909451, 44.357189, 43.781712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380615, 44.897987, 43.462154>,  <43.571705, 44.213627, 43.185623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380615, 44.897987, 43.462154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744362, 44.803490, 43.599113>,  <43.962612, 44.746792, 43.681290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744362, 44.803490, 43.599113>,  <43.380615, 44.897987, 43.462154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744362, 44.803490, 43.599113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415604, 0.551422, -0.723331,
		-0.017926, 0.800078, 0.599629,
		0.909369, -0.236241, 0.342400,
		44.017174, 44.732616, 43.701832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763309, 45.537487, 43.615826>,  <43.380615, 44.897987, 43.462154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763309, 45.537487, 43.615826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033424, 45.249100, 43.553616>,  <44.195492, 45.076065, 43.516289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033424, 45.249100, 43.553616>,  <43.763309, 45.537487, 43.615826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033424, 45.249100, 43.553616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342852, 0.493549, -0.799288,
		0.653023, 0.486427, 0.580474,
		0.675287, -0.720971, -0.155527,
		44.236012, 45.032810, 43.506958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438705, 45.797604, 43.477314>,  <43.763309, 45.537487, 43.615826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438705, 45.797604, 43.477314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421696, 45.444344, 43.290455>,  <44.411488, 45.232388, 43.178337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421696, 45.444344, 43.290455>,  <44.438705, 45.797604, 43.477314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421696, 45.444344, 43.290455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438666, 0.403590, -0.802924,
		0.897643, -0.239070, 0.370246,
		-0.042528, -0.883154, -0.467152,
		44.408936, 45.179398, 43.150311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102222, 45.710785, 43.275322>,  <44.438705, 45.797604, 43.477314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102222, 45.710785, 43.275322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864246, 45.465126, 43.067909>,  <44.721462, 45.317730, 42.943462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864246, 45.465126, 43.067909>,  <45.102222, 45.710785, 43.275322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864246, 45.465126, 43.067909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495257, 0.228012, -0.838291,
		0.633063, -0.755538, 0.168506,
		-0.594939, -0.614145, -0.518531,
		44.685764, 45.280884, 42.912350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128323, 46.430504, 43.411530>,  <45.102222, 45.710785, 43.275322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128323, 46.430504, 43.411530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.319580, 46.765030, 43.518829>,  <45.434334, 46.965744, 43.583210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.319580, 46.765030, 43.518829>,  <45.128323, 46.430504, 43.411530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319580, 46.765030, 43.518829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298470, -0.132525, 0.945173,
		0.826012, -0.531992, 0.186249,
		0.478142, 0.836314, 0.268252,
		45.463024, 47.015923, 43.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664917, 46.206512, 44.006325>,  <45.128323, 46.430504, 43.411530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664917, 46.206512, 44.006325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557991, 46.591949, 44.008224>,  <45.493835, 46.823212, 44.009365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557991, 46.591949, 44.008224>,  <45.664917, 46.206512, 44.006325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557991, 46.591949, 44.008224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265400, -0.078361, 0.960949,
		0.926339, 0.255620, 0.276686,
		-0.267319, 0.963597, 0.004747,
		45.477795, 46.881027, 44.009647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859833, 46.463535, 44.678165>,  <45.664917, 46.206512, 44.006325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859833, 46.463535, 44.678165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582077, 46.715637, 44.539253>,  <45.415424, 46.866898, 44.455906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582077, 46.715637, 44.539253>,  <45.859833, 46.463535, 44.678165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582077, 46.715637, 44.539253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536442, -0.131709, 0.833596,
		0.479640, 0.765133, 0.429554,
		-0.694388, 0.630257, -0.347276,
		45.373760, 46.904713, 44.435070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849888, 46.968433, 45.206303>,  <45.859833, 46.463535, 44.678165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849888, 46.968433, 45.206303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502312, 47.001976, 45.011200>,  <45.293766, 47.022102, 44.894138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502312, 47.001976, 45.011200>,  <45.849888, 46.968433, 45.206303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502312, 47.001976, 45.011200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494841, -0.164265, 0.853317,
		-0.008563, 0.982845, 0.184234,
		-0.868941, 0.083859, -0.487759,
		45.241631, 47.027134, 44.864872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393684, 47.517281, 45.512802>,  <45.849888, 46.968433, 45.206303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393684, 47.517281, 45.512802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140427, 47.279831, 45.314114>,  <44.988472, 47.137360, 45.194901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140427, 47.279831, 45.314114>,  <45.393684, 47.517281, 45.512802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140427, 47.279831, 45.314114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611848, -0.009232, 0.790922,
		-0.474099, 0.804687, -0.357365,
		-0.633145, -0.593628, -0.496722,
		44.950481, 47.101742, 45.165096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654411, 47.689968, 45.827980>,  <45.393684, 47.517281, 45.512802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654411, 47.689968, 45.827980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669945, 47.321136, 45.673958>,  <44.679264, 47.099838, 45.581543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669945, 47.321136, 45.673958>,  <44.654411, 47.689968, 45.827980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669945, 47.321136, 45.673958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458902, -0.358766, 0.812832,
		-0.887638, 0.145139, -0.437074,
		0.038834, -0.922075, -0.385059,
		44.681595, 47.044514, 45.558441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052246, 47.353256, 46.054787>,  <44.654411, 47.689968, 45.827980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052246, 47.353256, 46.054787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255844, 47.035988, 45.921036>,  <44.378002, 46.845627, 45.840786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255844, 47.035988, 45.921036>,  <44.052246, 47.353256, 46.054787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255844, 47.035988, 45.921036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398245, -0.561380, 0.725433,
		-0.763104, -0.236076, -0.601614,
		0.508991, -0.793171, -0.334376,
		44.408543, 46.798035, 45.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497234, 46.865177, 45.933693>,  <44.052246, 47.353256, 46.054787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497234, 46.865177, 45.933693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850502, 46.690231, 46.001488>,  <44.062462, 46.585262, 46.042164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850502, 46.690231, 46.001488>,  <43.497234, 46.865177, 45.933693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850502, 46.690231, 46.001488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394375, -0.496759, 0.773110,
		-0.253934, -0.749629, -0.611207,
		0.883168, -0.437363, 0.169491,
		44.115452, 46.559021, 46.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291973, 46.187408, 46.121384>,  <43.497234, 46.865177, 45.933693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291973, 46.187408, 46.121384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674950, 46.201866, 46.235924>,  <43.904736, 46.210541, 46.304649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674950, 46.201866, 46.235924>,  <43.291973, 46.187408, 46.121384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674950, 46.201866, 46.235924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249806, -0.393173, 0.884879,
		0.144568, -0.918754, -0.367412,
		0.957443, 0.036143, 0.286351,
		43.962181, 46.212708, 46.321831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502079, 45.517525, 46.384731>,  <43.291973, 46.187408, 46.121384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502079, 45.517525, 46.384731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766685, 45.770950, 46.545227>,  <43.925449, 45.923004, 46.641525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766685, 45.770950, 46.545227>,  <43.502079, 45.517525, 46.384731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766685, 45.770950, 46.545227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090558, -0.463636, 0.881386,
		0.744446, -0.619384, -0.249327,
		0.661514, 0.633565, 0.401243,
		43.965141, 45.961021, 46.665600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151253, 45.149380, 46.613968>,  <43.502079, 45.517525, 46.384731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151253, 45.149380, 46.613968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097580, 45.495522, 46.807110>,  <44.065376, 45.703209, 46.922997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097580, 45.495522, 46.807110>,  <44.151253, 45.149380, 46.613968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097580, 45.495522, 46.807110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032694, -0.490863, 0.870623,
		0.990417, 0.101036, 0.094157,
		-0.134182, 0.865358, 0.482856,
		44.057323, 45.755131, 46.951965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496498, 45.068233, 47.186695>,  <44.151253, 45.149380, 46.613968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496498, 45.068233, 47.186695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262360, 45.380943, 47.272663>,  <44.121876, 45.568569, 47.324245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262360, 45.380943, 47.272663>,  <44.496498, 45.068233, 47.186695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262360, 45.380943, 47.272663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288405, -0.448509, 0.845968,
		0.757752, 0.433204, 0.488003,
		-0.585350, 0.781776, 0.214920,
		44.086754, 45.615475, 47.337139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719048, 45.279274, 47.914959>,  <44.496498, 45.068233, 47.186695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719048, 45.279274, 47.914959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353886, 45.430099, 47.852432>,  <44.134789, 45.520596, 47.814919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353886, 45.430099, 47.852432>,  <44.719048, 45.279274, 47.914959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353886, 45.430099, 47.852432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276688, -0.290095, 0.916127,
		0.300093, 0.879583, 0.369157,
		-0.912901, 0.377065, -0.156315,
		44.080017, 45.543221, 47.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533562, 45.720947, 48.508331>,  <44.719048, 45.279274, 47.914959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533562, 45.720947, 48.508331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193527, 45.599335, 48.336327>,  <43.989506, 45.526367, 48.233124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193527, 45.599335, 48.336327>,  <44.533562, 45.720947, 48.508331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193527, 45.599335, 48.336327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343147, -0.299629, 0.890209,
		-0.399499, 0.904315, 0.150383,
		-0.850089, -0.304034, -0.430014,
		43.938499, 45.508125, 48.207321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946495, 45.899757, 49.110451>,  <44.533562, 45.720947, 48.508331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946495, 45.899757, 49.110451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192047, 45.655113, 49.310081>,  <45.339378, 45.508327, 49.429859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192047, 45.655113, 49.310081>,  <44.946495, 45.899757, 49.110451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192047, 45.655113, 49.310081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724840, 0.186326, -0.663242,
		0.312656, 0.768903, 0.557704,
		0.613884, -0.611613, 0.499076,
		45.376213, 45.471630, 49.459805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600098, 46.241745, 49.100906>,  <44.946495, 45.899757, 49.110451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600098, 46.241745, 49.100906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690941, 45.860291, 49.179901>,  <45.745445, 45.631416, 49.227299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690941, 45.860291, 49.179901>,  <45.600098, 46.241745, 49.100906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690941, 45.860291, 49.179901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750884, 0.042337, -0.659076,
		0.620157, 0.297972, 0.725684,
		0.227110, -0.953635, 0.197487,
		45.759075, 45.574200, 49.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332588, 46.275646, 49.096733>,  <45.600098, 46.241745, 49.100906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332588, 46.275646, 49.096733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.264862, 45.882881, 49.062859>,  <46.224224, 45.647221, 49.042534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.264862, 45.882881, 49.062859>,  <46.332588, 46.275646, 49.096733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264862, 45.882881, 49.062859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792703, -0.084627, -0.603706,
		0.585623, -0.169348, 0.792696,
		-0.169319, -0.981916, -0.084683,
		46.214066, 45.588306, 49.037453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938156, 45.897812, 49.305786>,  <46.332588, 46.275646, 49.096733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938156, 45.897812, 49.305786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725166, 45.666641, 49.058411>,  <46.597374, 45.527939, 48.909985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725166, 45.666641, 49.058411>,  <46.938156, 45.897812, 49.305786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725166, 45.666641, 49.058411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748677, 0.019310, -0.662653,
		0.394908, -0.815859, 0.422400,
		-0.532475, -0.577928, -0.618441,
		46.565422, 45.493263, 48.872879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417835, 45.400753, 49.084789>,  <46.938156, 45.897812, 49.305786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417835, 45.400753, 49.084789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.123352, 45.418678, 48.814682>,  <46.946663, 45.429432, 48.652618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.123352, 45.418678, 48.814682>,  <47.417835, 45.400753, 49.084789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123352, 45.418678, 48.814682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676441, 0.018253, -0.736271,
		-0.020672, -0.998829, -0.043755,
		-0.736207, 0.044817, -0.675271,
		46.902489, 45.432121, 48.612099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.662468, 44.942261, 48.564713>,  <47.417835, 45.400753, 49.084789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.662468, 44.942261, 48.564713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.362625, 45.134155, 48.382309>,  <47.182720, 45.249290, 48.272869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.362625, 45.134155, 48.382309>,  <47.662468, 44.942261, 48.564713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362625, 45.134155, 48.382309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547756, 0.062886, -0.834271,
		-0.371555, -0.875155, -0.309920,
		-0.749606, 0.479738, -0.456006,
		47.137745, 45.278076, 48.245506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484955, 44.546173, 47.947159>,  <47.662468, 44.942261, 48.564713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484955, 44.546173, 47.947159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.347321, 44.914993, 47.876251>,  <47.264740, 45.136288, 47.833706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.347321, 44.914993, 47.876251>,  <47.484955, 44.546173, 47.947159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347321, 44.914993, 47.876251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525325, 0.032563, -0.850279,
		-0.778230, -0.385691, -0.495582,
		-0.344083, 0.922053, -0.177271,
		47.244095, 45.191608, 47.823071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263950, 44.522064, 47.229931>,  <47.484955, 44.546173, 47.947159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263950, 44.522064, 47.229931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.332550, 44.901878, 47.334984>,  <47.373711, 45.129765, 47.398014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.332550, 44.901878, 47.334984>,  <47.263950, 44.522064, 47.229931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332550, 44.901878, 47.334984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652144, 0.090396, -0.752686,
		-0.738441, 0.300361, -0.603729,
		0.171503, 0.949533, 0.262631,
		47.384003, 45.186737, 47.413773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.400688, 44.672150, 46.622055>,  <47.263950, 44.522064, 47.229931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.400688, 44.672150, 46.622055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.528725, 45.003731, 46.805523>,  <47.605549, 45.202679, 46.915604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.528725, 45.003731, 46.805523>,  <47.400688, 44.672150, 46.622055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528725, 45.003731, 46.805523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535331, 0.241179, -0.809477,
		-0.781639, 0.504651, -0.366562,
		0.320096, 0.828951, 0.458670,
		47.624752, 45.252415, 46.943123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403427, 45.244087, 46.055378>,  <47.400688, 44.672150, 46.622055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403427, 45.244087, 46.055378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.637695, 45.357445, 46.359135>,  <47.778255, 45.425461, 46.541389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.637695, 45.357445, 46.359135>,  <47.403427, 45.244087, 46.055378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637695, 45.357445, 46.359135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687585, 0.322400, -0.650603,
		-0.429206, 0.903186, -0.006039,
		0.585669, 0.283395, 0.759394,
		47.813396, 45.442463, 46.586952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575264, 45.953091, 46.041264>,  <47.403427, 45.244087, 46.055378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575264, 45.953091, 46.041264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.885185, 45.808594, 46.248795>,  <48.071140, 45.721897, 46.373314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.885185, 45.808594, 46.248795>,  <47.575264, 45.953091, 46.041264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.885185, 45.808594, 46.248795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630804, 0.387241, -0.672406,
		0.041989, 0.848262, 0.527909,
		0.774805, -0.361241, 0.518827,
		48.117626, 45.700222, 46.404442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.077217, 46.444790, 46.187458>,  <47.575264, 45.953091, 46.041264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.077217, 46.444790, 46.187458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.256889, 46.087555, 46.177456>,  <48.364693, 45.873215, 46.171455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.256889, 46.087555, 46.177456>,  <48.077217, 46.444790, 46.187458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.256889, 46.087555, 46.177456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590085, 0.317568, -0.742260,
		0.670844, 0.318658, 0.669645,
		0.449185, -0.893089, -0.025004,
		48.391644, 45.819630, 46.169956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.489086, 45.116951, 52.633282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647518, 44.750198, 52.613480>,  <43.742577, 44.530148, 52.601597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647518, 44.750198, 52.613480>,  <43.489086, 45.116951, 52.633282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647518, 44.750198, 52.613480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717759, 0.342784, -0.606071,
		0.572666, 0.204514, 0.793868,
		0.396075, -0.916882, -0.049509,
		43.766342, 44.475132, 52.598625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183678, 45.164925, 52.791691>,  <43.489086, 45.116951, 52.633282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183678, 45.164925, 52.791691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177109, 44.822739, 52.584648>,  <44.173168, 44.617428, 52.460423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177109, 44.822739, 52.584648>,  <44.183678, 45.164925, 52.791691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177109, 44.822739, 52.584648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652587, 0.383039, -0.653767,
		0.757536, -0.348518, 0.551974,
		-0.016422, -0.855463, -0.517604,
		44.172180, 44.566101, 52.429367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909386, 45.025051, 52.642082>,  <44.183678, 45.164925, 52.791691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909386, 45.025051, 52.642082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677925, 44.811592, 52.395382>,  <44.539047, 44.683517, 52.247364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677925, 44.811592, 52.395382>,  <44.909386, 45.025051, 52.642082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677925, 44.811592, 52.395382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564951, 0.283122, -0.775030,
		0.588208, -0.796909, 0.137654,
		-0.578655, -0.533647, -0.616749,
		44.504330, 44.651497, 52.210358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373081, 44.718960, 52.172592>,  <44.909386, 45.025051, 52.642082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373081, 44.718960, 52.172592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021938, 44.701546, 51.981815>,  <44.811253, 44.691097, 51.867352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021938, 44.701546, 51.981815>,  <45.373081, 44.718960, 52.172592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021938, 44.701546, 51.981815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422756, 0.397501, -0.814414,
		0.225038, -0.916568, -0.330546,
		-0.877858, -0.043533, -0.476938,
		44.758579, 44.688484, 51.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524624, 44.299881, 51.550121>,  <45.373081, 44.718960, 52.172592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524624, 44.299881, 51.550121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200890, 44.521095, 51.471001>,  <45.006649, 44.653824, 51.423531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200890, 44.521095, 51.471001>,  <45.524624, 44.299881, 51.550121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200890, 44.521095, 51.471001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441855, 0.351426, -0.825387,
		-0.386955, -0.755417, -0.528783,
		-0.809340, 0.553033, -0.197798,
		44.958088, 44.687004, 51.411663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262497, 44.122265, 50.905682>,  <45.524624, 44.299881, 51.550121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262497, 44.122265, 50.905682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107170, 44.486679, 50.961155>,  <45.013973, 44.705326, 50.994438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107170, 44.486679, 50.961155>,  <45.262497, 44.122265, 50.905682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107170, 44.486679, 50.961155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237000, 0.244158, -0.940329,
		-0.890529, -0.332277, -0.310725,
		-0.388316, 0.911032, 0.138680,
		44.990677, 44.759987, 51.002758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807854, 44.219429, 50.306370>,  <45.262497, 44.122265, 50.905682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807854, 44.219429, 50.306370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869202, 44.582787, 50.461964>,  <44.906010, 44.800800, 50.555321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869202, 44.582787, 50.461964>,  <44.807854, 44.219429, 50.306370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869202, 44.582787, 50.461964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236307, 0.348504, -0.907030,
		-0.959499, 0.231028, -0.161209,
		0.153367, 0.908389, 0.388983,
		44.915211, 44.855305, 50.578659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497330, 44.697384, 49.809612>,  <44.807854, 44.219429, 50.306370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497330, 44.697384, 49.809612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739830, 44.936462, 50.019459>,  <44.885330, 45.079910, 50.145367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739830, 44.936462, 50.019459>,  <44.497330, 44.697384, 49.809612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739830, 44.936462, 50.019459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397969, 0.343118, -0.850818,
		-0.688538, 0.724586, -0.029852,
		0.606247, 0.597700, 0.524613,
		44.921703, 45.115772, 50.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505737, 45.383263, 49.379814>,  <44.497330, 44.697384, 49.809612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505737, 45.383263, 49.379814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828594, 45.364182, 49.615181>,  <45.022308, 45.352734, 49.756401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828594, 45.364182, 49.615181>,  <44.505737, 45.383263, 49.379814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828594, 45.364182, 49.615181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578100, 0.265877, -0.771434,
		-0.119647, 0.962826, 0.242179,
		0.807146, -0.047705, 0.588421,
		45.070740, 45.349869, 49.791706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962196, 45.733891, 49.074402>,  <44.505737, 45.383263, 49.379814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962196, 45.733891, 49.074402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796364, 45.520935, 48.779190>,  <43.696865, 45.393162, 48.602062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796364, 45.520935, 48.779190>,  <43.962196, 45.733891, 49.074402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796364, 45.520935, 48.779190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604129, -0.445496, 0.660728,
		-0.680554, 0.719787, -0.136940,
		-0.414577, -0.532391, -0.738028,
		43.671989, 45.361217, 48.557781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286560, 45.770550, 49.256042>,  <43.962196, 45.733891, 49.074402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286560, 45.770550, 49.256042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311581, 45.449905, 49.018219>,  <43.326591, 45.257519, 48.875523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311581, 45.449905, 49.018219>,  <43.286560, 45.770550, 49.256042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311581, 45.449905, 49.018219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604628, -0.504400, 0.616447,
		-0.794049, 0.320930, -0.516228,
		0.062549, -0.801614, -0.594561,
		43.330345, 45.209419, 48.839851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558937, 45.600662, 49.220505>,  <43.286560, 45.770550, 49.256042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558937, 45.600662, 49.220505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808647, 45.297226, 49.145874>,  <42.958473, 45.115162, 49.101093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808647, 45.297226, 49.145874>,  <42.558937, 45.600662, 49.220505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808647, 45.297226, 49.145874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467603, -0.554186, 0.688640,
		-0.625796, -0.342660, -0.700687,
		0.624281, -0.758592, -0.186579,
		42.995930, 45.069649, 49.089901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102051, 45.035027, 49.212769>,  <42.558937, 45.600662, 49.220505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102051, 45.035027, 49.212769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440628, 44.822037, 49.214222>,  <42.643772, 44.694244, 49.215096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440628, 44.822037, 49.214222>,  <42.102051, 45.035027, 49.212769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440628, 44.822037, 49.214222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357509, -0.563231, 0.744955,
		-0.394619, -0.631860, -0.667105,
		0.846441, -0.532469, 0.003633,
		42.694561, 44.662296, 49.215313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899845, 44.389851, 49.107918>,  <42.102051, 45.035027, 49.212769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899845, 44.389851, 49.107918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257484, 44.359810, 49.284531>,  <42.472069, 44.341785, 49.390499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257484, 44.359810, 49.284531>,  <41.899845, 44.389851, 49.107918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257484, 44.359810, 49.284531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417046, -0.499027, 0.759634,
		0.163289, -0.863326, -0.477498,
		0.894097, -0.075099, 0.441533,
		42.525715, 44.337280, 49.416992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043167, 43.643150, 49.227173>,  <41.899845, 44.389851, 49.107918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043167, 43.643150, 49.227173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269875, 43.842003, 49.489967>,  <42.405899, 43.961315, 49.647644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269875, 43.842003, 49.489967>,  <42.043167, 43.643150, 49.227173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269875, 43.842003, 49.489967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379483, -0.550278, 0.743765,
		0.731275, -0.670859, -0.123228,
		0.566771, 0.497134, 0.656984,
		42.439907, 43.991142, 49.687061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431755, 43.134422, 49.649586>,  <42.043167, 43.643150, 49.227173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431755, 43.134422, 49.649586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435444, 43.475029, 49.859283>,  <42.437656, 43.679394, 49.985104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435444, 43.475029, 49.859283>,  <42.431755, 43.134422, 49.649586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435444, 43.475029, 49.859283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431884, -0.469456, 0.770121,
		0.901882, -0.233520, 0.363425,
		0.009227, 0.851516, 0.524247,
		42.438213, 43.730484, 50.016556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584988, 42.921165, 50.322010>,  <42.431755, 43.134422, 49.649586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584988, 42.921165, 50.322010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469879, 43.292503, 50.416122>,  <42.400814, 43.515308, 50.472591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469879, 43.292503, 50.416122>,  <42.584988, 42.921165, 50.322010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469879, 43.292503, 50.416122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545863, -0.360855, 0.756186,
		0.786906, 0.089176, 0.610595,
		-0.287770, 0.928349, 0.235281,
		42.383549, 43.571007, 50.486706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655651, 42.874172, 50.963486>,  <42.584988, 42.921165, 50.322010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655651, 42.874172, 50.963486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398239, 43.172935, 50.896549>,  <42.243793, 43.352192, 50.856388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398239, 43.172935, 50.896549>,  <42.655651, 42.874172, 50.963486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398239, 43.172935, 50.896549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565464, -0.316561, 0.761603,
		0.515872, 0.584738, 0.626065,
		-0.643526, 0.746907, -0.167344,
		42.205181, 43.397007, 50.846348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415340, 43.179691, 51.606815>,  <42.655651, 42.874172, 50.963486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415340, 43.179691, 51.606815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142616, 43.296463, 51.338516>,  <41.978981, 43.366528, 51.177536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142616, 43.296463, 51.338516>,  <42.415340, 43.179691, 51.606815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142616, 43.296463, 51.338516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726354, -0.161317, 0.668122,
		0.086843, 0.942736, 0.322035,
		-0.681812, 0.291933, -0.670751,
		41.938072, 43.384045, 51.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903542, 43.581779, 52.044712>,  <42.415340, 43.179691, 51.606815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903542, 43.581779, 52.044712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702778, 43.502029, 51.708061>,  <41.582321, 43.454178, 51.506069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702778, 43.502029, 51.708061>,  <41.903542, 43.581779, 52.044712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702778, 43.502029, 51.708061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844435, -0.097573, 0.526697,
		-0.187132, 0.975053, -0.119389,
		-0.501908, -0.199378, -0.841628,
		41.552204, 43.442215, 51.455574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229378, 44.047199, 51.974041>,  <41.903542, 43.581779, 52.044712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229378, 44.047199, 51.974041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201378, 43.702095, 51.773743>,  <41.184578, 43.495033, 51.653564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201378, 43.702095, 51.773743>,  <41.229378, 44.047199, 51.974041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201378, 43.702095, 51.773743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839236, -0.220426, 0.497087,
		-0.539244, 0.455042, -0.708628,
		-0.069996, -0.862757, -0.500750,
		41.180378, 43.443268, 51.623516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607273, 44.049198, 51.913544>,  <41.229378, 44.047199, 51.974041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607273, 44.049198, 51.913544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697594, 43.669785, 51.824738>,  <40.751785, 43.442135, 51.771454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697594, 43.669785, 51.824738>,  <40.607273, 44.049198, 51.913544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697594, 43.669785, 51.824738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907862, -0.287537, 0.305138,
		-0.353273, 0.132663, -0.926066,
		0.225798, -0.948538, -0.222018,
		40.765331, 43.385223, 51.758133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078033, 43.767929, 51.511547>,  <40.607273, 44.049198, 51.913544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078033, 43.767929, 51.511547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247879, 43.445961, 51.677341>,  <40.349789, 43.252781, 51.776817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247879, 43.445961, 51.677341>,  <40.078033, 43.767929, 51.511547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247879, 43.445961, 51.677341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896388, -0.309425, 0.317402,
		-0.127231, -0.506317, -0.852910,
		0.424617, -0.804922, 0.414488,
		40.375263, 43.204483, 51.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.517220, 38.126610, 53.313328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.349968, 38.488060, 53.276165>,  <43.249619, 38.704929, 53.253868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.349968, 38.488060, 53.276165>,  <43.517220, 38.126610, 53.313328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349968, 38.488060, 53.276165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408520, 0.095700, -0.907719,
		-0.811345, -0.417499, -0.409163,
		-0.418128, 0.903624, -0.092911,
		43.224529, 38.759148, 53.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197659, 38.143780, 52.609493>,  <43.517220, 38.126610, 53.313328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197659, 38.143780, 52.609493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.268562, 38.520027, 52.725292>,  <43.311104, 38.745777, 52.794773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.268562, 38.520027, 52.725292>,  <43.197659, 38.143780, 52.609493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268562, 38.520027, 52.725292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379835, 0.205979, -0.901830,
		-0.907912, 0.269818, -0.320770,
		0.177258, 0.940622, 0.289498,
		43.321739, 38.802216, 52.812141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855339, 38.674976, 52.077053>,  <43.197659, 38.143780, 52.609493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855339, 38.674976, 52.077053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.125984, 38.897011, 52.270580>,  <43.288372, 39.030231, 52.386696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.125984, 38.897011, 52.270580>,  <42.855339, 38.674976, 52.077053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125984, 38.897011, 52.270580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401352, 0.272854, -0.874338,
		-0.617341, 0.785769, -0.038168,
		0.676614, 0.555084, 0.483814,
		43.328968, 39.063538, 52.415726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825912, 39.129192, 51.705124>,  <42.855339, 38.674976, 52.077053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825912, 39.129192, 51.705124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179832, 39.191574, 51.880764>,  <43.392185, 39.229004, 51.986149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179832, 39.191574, 51.880764>,  <42.825912, 39.129192, 51.705124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179832, 39.191574, 51.880764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398665, 0.234502, -0.886609,
		-0.241237, 0.959525, 0.145315,
		0.884800, 0.155951, 0.439099,
		43.445274, 39.238358, 52.012493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108849, 39.626724, 51.378033>,  <42.825912, 39.129192, 51.705124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108849, 39.626724, 51.378033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431396, 39.436501, 51.518669>,  <43.624924, 39.322369, 51.603050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431396, 39.436501, 51.518669>,  <43.108849, 39.626724, 51.378033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431396, 39.436501, 51.518669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535627, 0.335183, -0.775084,
		0.250748, 0.813326, 0.525002,
		0.806367, -0.475556, 0.351593,
		43.673306, 39.293835, 51.624146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572628, 40.140938, 51.364029>,  <43.108849, 39.626724, 51.378033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572628, 40.140938, 51.364029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.809750, 39.819588, 51.386566>,  <43.952023, 39.626778, 51.400089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.809750, 39.819588, 51.386566>,  <43.572628, 40.140938, 51.364029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809750, 39.819588, 51.386566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645337, 0.432001, -0.630013,
		0.481798, 0.409831, 0.774538,
		0.592800, -0.803376, 0.056342,
		43.987591, 39.578575, 51.403469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307610, 40.309822, 51.319679>,  <43.572628, 40.140938, 51.364029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307610, 40.309822, 51.319679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.301514, 39.929420, 51.196159>,  <44.297855, 39.701180, 51.122047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.301514, 39.929420, 51.196159>,  <44.307610, 40.309822, 51.319679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301514, 39.929420, 51.196159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541259, 0.251829, -0.802260,
		0.840718, -0.179366, 0.510902,
		-0.015238, -0.951005, -0.308801,
		44.296944, 39.644119, 51.103519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894814, 40.285408, 50.924629>,  <44.307610, 40.309822, 51.319679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894814, 40.285408, 50.924629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.707870, 39.949043, 50.815491>,  <44.595703, 39.747227, 50.750008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.707870, 39.949043, 50.815491>,  <44.894814, 40.285408, 50.924629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707870, 39.949043, 50.815491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702877, -0.166240, -0.691613,
		0.536225, -0.515011, 0.668750,
		-0.467362, -0.840909, -0.272847,
		44.567661, 39.696770, 50.733635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364651, 39.743092, 50.798088>,  <44.894814, 40.285408, 50.924629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364651, 39.743092, 50.798088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.050896, 39.650459, 50.567921>,  <44.862644, 39.594879, 50.429821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.050896, 39.650459, 50.567921>,  <45.364651, 39.743092, 50.798088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050896, 39.650459, 50.567921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567031, 0.108311, -0.816544,
		0.251417, -0.966768, 0.046353,
		-0.784389, -0.231576, -0.575419,
		44.815578, 39.580986, 50.395294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621014, 39.389965, 50.284908>,  <45.364651, 39.743092, 50.798088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621014, 39.389965, 50.284908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.269569, 39.505432, 50.132740>,  <45.058704, 39.574715, 50.041439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.269569, 39.505432, 50.132740>,  <45.621014, 39.389965, 50.284908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269569, 39.505432, 50.132740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428897, 0.126703, -0.894424,
		-0.209995, -0.949007, -0.235132,
		-0.878607, 0.288672, -0.380420,
		45.005989, 39.592033, 50.018616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605309, 39.055916, 49.702957>,  <45.621014, 39.389965, 50.284908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605309, 39.055916, 49.702957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341255, 39.351173, 49.647289>,  <45.182823, 39.528328, 49.613888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.341255, 39.351173, 49.647289>,  <45.605309, 39.055916, 49.702957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341255, 39.351173, 49.647289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434564, 0.224177, -0.872295,
		-0.612680, -0.636310, -0.468757,
		-0.660135, 0.738143, -0.139169,
		45.143215, 39.572617, 49.605537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507023, 39.123032, 48.935177>,  <45.605309, 39.055916, 49.702957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507023, 39.123032, 48.935177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.328400, 39.459045, 49.058414>,  <45.221226, 39.660656, 49.132359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.328400, 39.459045, 49.058414>,  <45.507023, 39.123032, 48.935177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328400, 39.459045, 49.058414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281448, 0.458733, -0.842823,
		-0.849335, -0.289659, -0.441279,
		-0.446561, 0.840037, 0.308094,
		45.194431, 39.711056, 49.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994732, 39.419640, 48.488628>,  <45.507023, 39.123032, 48.935177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994732, 39.419640, 48.488628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.114990, 39.736366, 48.701283>,  <45.187145, 39.926403, 48.828876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.114990, 39.736366, 48.701283>,  <44.994732, 39.419640, 48.488628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114990, 39.736366, 48.701283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236641, 0.478060, -0.845848,
		-0.923912, 0.380107, -0.043650,
		0.300646, 0.791819, 0.531634,
		45.205185, 39.973911, 48.860771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674374, 39.936348, 48.192772>,  <44.994732, 39.419640, 48.488628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674374, 39.936348, 48.192772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.986214, 40.105797, 48.377277>,  <45.173317, 40.207466, 48.487980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.986214, 40.105797, 48.377277>,  <44.674374, 39.936348, 48.192772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986214, 40.105797, 48.377277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331569, 0.345645, -0.877833,
		-0.531304, 0.837301, 0.129005,
		0.779601, 0.423622, 0.461266,
		45.220093, 40.232883, 48.515656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107914, 40.441505, 48.150486>,  <44.674374, 39.936348, 48.192772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107914, 40.441505, 48.150486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.824768, 40.413040, 47.869385>,  <43.654881, 40.395962, 47.700722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.824768, 40.413040, 47.869385>,  <44.107914, 40.441505, 48.150486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824768, 40.413040, 47.869385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671744, -0.239774, 0.700906,
		-0.218382, 0.968217, 0.121923,
		-0.707863, -0.071164, -0.702756,
		43.612408, 40.391689, 47.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573032, 40.618099, 48.511665>,  <44.107914, 40.441505, 48.150486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573032, 40.618099, 48.511665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.399818, 40.470352, 48.182777>,  <43.295891, 40.381702, 47.985443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.399818, 40.470352, 48.182777>,  <43.573032, 40.618099, 48.511665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399818, 40.470352, 48.182777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767276, -0.327665, 0.551293,
		-0.473044, 0.869599, -0.141519,
		-0.433033, -0.369370, -0.822222,
		43.269909, 40.359543, 47.936111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961788, 40.798355, 48.477196>,  <43.573032, 40.618099, 48.511665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961788, 40.798355, 48.477196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930012, 40.463127, 48.261295>,  <42.910946, 40.261990, 48.131756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930012, 40.463127, 48.261295>,  <42.961788, 40.798355, 48.477196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930012, 40.463127, 48.261295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669154, -0.356506, 0.652024,
		-0.738865, 0.412976, -0.532474,
		-0.079440, -0.838066, -0.539755,
		42.906181, 40.211708, 48.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275692, 40.661533, 48.508080>,  <42.961788, 40.798355, 48.477196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275692, 40.661533, 48.508080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.446655, 40.318291, 48.394257>,  <42.549232, 40.112347, 48.325962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.446655, 40.318291, 48.394257>,  <42.275692, 40.661533, 48.508080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446655, 40.318291, 48.394257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583570, -0.502267, 0.638102,
		-0.690485, -0.106670, -0.715439,
		0.427407, -0.858108, -0.284558,
		42.574879, 40.060860, 48.308887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770424, 40.254402, 48.535439>,  <42.275692, 40.661533, 48.508080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770424, 40.254402, 48.535439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.078297, 39.999359, 48.548367>,  <42.263020, 39.846333, 48.556122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.078297, 39.999359, 48.548367>,  <41.770424, 40.254402, 48.535439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078297, 39.999359, 48.548367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471336, -0.533376, 0.702390,
		-0.430609, -0.555852, -0.711058,
		0.769687, -0.637604, 0.032317,
		42.309204, 39.808079, 48.558060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375122, 39.696415, 48.680946>,  <41.770424, 40.254402, 48.535439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375122, 39.696415, 48.680946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751671, 39.619995, 48.792175>,  <41.977600, 39.574142, 48.858913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751671, 39.619995, 48.792175>,  <41.375122, 39.696415, 48.680946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751671, 39.619995, 48.792175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333545, -0.403094, 0.852211,
		-0.050723, -0.894995, -0.443183,
		0.941368, -0.191048, 0.278075,
		42.034081, 39.562679, 48.875599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369331, 38.984486, 48.953583>,  <41.375122, 39.696415, 48.680946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369331, 38.984486, 48.953583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.698792, 39.158783, 49.098759>,  <41.896469, 39.263359, 49.185863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.698792, 39.158783, 49.098759>,  <41.369331, 38.984486, 48.953583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698792, 39.158783, 49.098759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244700, -0.304272, 0.920619,
		0.511583, -0.847083, -0.143989,
		0.823653, 0.435739, 0.362942,
		41.945889, 39.289505, 49.207642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591797, 38.546177, 49.531445>,  <41.369331, 38.984486, 48.953583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591797, 38.546177, 49.531445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777931, 38.894165, 49.596695>,  <41.889614, 39.102959, 49.635845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777931, 38.894165, 49.596695>,  <41.591797, 38.546177, 49.531445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777931, 38.894165, 49.596695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204699, -0.073525, 0.976060,
		0.861138, -0.487590, 0.143868,
		0.465340, 0.869972, 0.163124,
		41.917534, 39.155155, 49.645634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135815, 38.366634, 49.902664>,  <41.591797, 38.546177, 49.531445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135815, 38.366634, 49.902664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.009262, 38.740074, 49.969955>,  <41.933331, 38.964138, 50.010330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.009262, 38.740074, 49.969955>,  <42.135815, 38.366634, 49.902664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009262, 38.740074, 49.969955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097525, -0.208411, 0.973167,
		0.943606, 0.291483, 0.156986,
		-0.316379, 0.933596, 0.168231,
		41.914349, 39.020153, 50.020424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428089, 38.527882, 50.533817>,  <42.135815, 38.366634, 49.902664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428089, 38.527882, 50.533817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119347, 38.774117, 50.470211>,  <41.934101, 38.921860, 50.432045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119347, 38.774117, 50.470211>,  <42.428089, 38.527882, 50.533817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119347, 38.774117, 50.470211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284394, -0.110584, 0.952308,
		0.568648, 0.780268, 0.260425,
		-0.771855, 0.615592, -0.159020,
		41.887791, 38.958794, 50.422504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399548, 38.837761, 51.160728>,  <42.428089, 38.527882, 50.533817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399548, 38.837761, 51.160728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052181, 38.929413, 50.984837>,  <41.843761, 38.984406, 50.879303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052181, 38.929413, 50.984837>,  <42.399548, 38.837761, 51.160728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052181, 38.929413, 50.984837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456667, -0.024090, 0.889312,
		0.193174, 0.973098, 0.125556,
		-0.868412, 0.229129, -0.439728,
		41.791656, 38.998150, 50.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127460, 39.261215, 51.542858>,  <42.399548, 38.837761, 51.160728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127460, 39.261215, 51.542858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.785793, 39.156586, 51.363091>,  <41.580795, 39.093807, 51.255230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.785793, 39.156586, 51.363091>,  <42.127460, 39.261215, 51.542858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785793, 39.156586, 51.363091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486068, 0.094537, 0.868793,
		-0.184767, 0.960542, -0.207893,
		-0.854166, -0.261575, -0.449421,
		41.529545, 39.078114, 51.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563519, 39.793041, 51.729832>,  <42.127460, 39.261215, 51.542858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563519, 39.793041, 51.729832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.430298, 39.429054, 51.631004>,  <41.350365, 39.210663, 51.571709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.430298, 39.429054, 51.631004>,  <41.563519, 39.793041, 51.729832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430298, 39.429054, 51.631004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505655, -0.048803, 0.861354,
		-0.795859, 0.411806, -0.443874,
		-0.333048, -0.909964, -0.247072,
		41.330383, 39.156067, 51.556881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834248, 39.831161, 51.767082>,  <41.563519, 39.793041, 51.729832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834248, 39.831161, 51.767082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912186, 39.440094, 51.798595>,  <40.958950, 39.205456, 51.817505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912186, 39.440094, 51.798595>,  <40.834248, 39.831161, 51.767082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912186, 39.440094, 51.798595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507045, -0.031643, 0.861338,
		-0.839607, -0.207777, -0.501885,
		0.194847, -0.977664, 0.078785,
		40.970638, 39.146793, 51.822231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202164, 40.030380, 51.284256>,  <40.834248, 39.831161, 51.767082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202164, 40.030380, 51.284256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905128, 40.273071, 51.170799>,  <39.726910, 40.418686, 51.102726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905128, 40.273071, 51.170799>,  <40.202164, 40.030380, 51.284256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905128, 40.273071, 51.170799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537835, 0.287832, -0.792393,
		-0.399126, -0.740969, -0.540058,
		-0.742585, 0.606727, -0.283637,
		39.682354, 40.455090, 51.085709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038860, 39.892612, 50.597027>,  <40.202164, 40.030380, 51.284256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038860, 39.892612, 50.597027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892860, 40.263084, 50.634911>,  <39.805260, 40.485367, 50.657639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892860, 40.263084, 50.634911>,  <40.038860, 39.892612, 50.597027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892860, 40.263084, 50.634911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355205, 0.232565, -0.905397,
		-0.860584, -0.296829, -0.413869,
		-0.365000, 0.926178, 0.094707,
		39.783360, 40.540939, 50.663322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719624, 40.141338, 49.906406>,  <40.038860, 39.892612, 50.597027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719624, 40.141338, 49.906406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792801, 40.478058, 50.109543>,  <39.836708, 40.680092, 50.231426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792801, 40.478058, 50.109543>,  <39.719624, 40.141338, 49.906406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792801, 40.478058, 50.109543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331833, 0.433374, -0.837899,
		-0.925429, 0.321805, -0.200055,
		0.182942, 0.841801, 0.507842,
		39.847683, 40.730598, 50.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479225, 40.668774, 49.431698>,  <39.719624, 40.141338, 49.906406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479225, 40.668774, 49.431698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722866, 40.844147, 49.696053>,  <39.869049, 40.949371, 49.854668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722866, 40.844147, 49.696053>,  <39.479225, 40.668774, 49.431698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722866, 40.844147, 49.696053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296090, 0.647348, -0.702332,
		-0.735750, 0.623474, 0.264485,
		0.609100, 0.438430, 0.660891,
		39.905598, 40.975677, 49.894321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392700, 41.402988, 49.376205>,  <39.479225, 40.668774, 49.431698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392700, 41.402988, 49.376205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757256, 41.325981, 49.521702>,  <39.975990, 41.279778, 49.609001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757256, 41.325981, 49.521702>,  <39.392700, 41.402988, 49.376205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757256, 41.325981, 49.521702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409228, 0.517672, -0.751364,
		-0.043648, 0.833638, 0.550584,
		0.911388, -0.192519, 0.363744,
		40.030670, 41.268227, 49.630825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825367, 41.919579, 49.111992>,  <39.392700, 41.402988, 49.376205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825367, 41.919579, 49.111992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128235, 41.705559, 49.261879>,  <40.309956, 41.577148, 49.351810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128235, 41.705559, 49.261879>,  <39.825367, 41.919579, 49.111992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128235, 41.705559, 49.261879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621145, 0.412211, -0.666529,
		0.202161, 0.737433, 0.644456,
		0.757172, -0.535047, 0.374720,
		40.355385, 41.545044, 49.374294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367252, 42.413731, 49.204063>,  <39.825367, 41.919579, 49.111992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367252, 42.413731, 49.204063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522106, 42.045013, 49.195885>,  <40.615017, 41.823784, 49.190979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522106, 42.045013, 49.195885>,  <40.367252, 42.413731, 49.204063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522106, 42.045013, 49.195885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698011, 0.307492, -0.646706,
		0.602418, 0.236093, 0.762465,
		0.387134, -0.921797, -0.020443,
		40.638245, 41.768475, 49.189751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130707, 42.517082, 49.346134>,  <40.367252, 42.413731, 49.204063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130707, 42.517082, 49.346134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073959, 42.175278, 49.146259>,  <41.039913, 41.970196, 49.026333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073959, 42.175278, 49.146259>,  <41.130707, 42.517082, 49.346134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073959, 42.175278, 49.146259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664670, 0.291845, -0.687779,
		0.733545, -0.429700, 0.526564,
		-0.141864, -0.854508, -0.499691,
		41.031399, 41.918926, 48.996353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777512, 42.246445, 49.137169>,  <41.130707, 42.517082, 49.346134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777512, 42.246445, 49.137169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514984, 42.055321, 48.903606>,  <41.357468, 41.940647, 48.763470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514984, 42.055321, 48.903606>,  <41.777512, 42.246445, 49.137169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514984, 42.055321, 48.903606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581682, 0.172436, -0.794929,
		0.480508, -0.861375, 0.164758,
		-0.656322, -0.477807, -0.583903,
		41.318089, 41.911980, 48.728436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233559, 41.896637, 48.543854>,  <41.777512, 42.246445, 49.137169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233559, 41.896637, 48.543854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858101, 41.860588, 48.410690>,  <41.632828, 41.838959, 48.330791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858101, 41.860588, 48.410690>,  <42.233559, 41.896637, 48.543854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858101, 41.860588, 48.410690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323276, 0.106437, -0.940300,
		0.120180, -0.990226, -0.070771,
		-0.938642, -0.090127, -0.332908,
		41.576508, 41.833553, 48.310818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230175, 41.436039, 47.910126>,  <42.233559, 41.896637, 48.543854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230175, 41.436039, 47.910126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.916313, 41.682457, 47.882404>,  <41.727997, 41.830307, 47.865772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.916313, 41.682457, 47.882404>,  <42.230175, 41.436039, 47.910126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916313, 41.682457, 47.882404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328290, 0.318095, -0.889405,
		-0.525868, -0.720630, -0.451837,
		-0.784659, 0.616043, -0.069300,
		41.680916, 41.867271, 47.861614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889675, 41.305279, 47.265358>,  <42.230175, 41.436039, 47.910126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889675, 41.305279, 47.265358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.797646, 41.679420, 47.372818>,  <41.742428, 41.903904, 47.437294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.797646, 41.679420, 47.372818>,  <41.889675, 41.305279, 47.265358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797646, 41.679420, 47.372818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284986, 0.328715, -0.900405,
		-0.930509, -0.130601, -0.342194,
		-0.230078, 0.935355, 0.268652,
		41.728622, 41.960026, 47.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745415, 41.597054, 46.626976>,  <41.889675, 41.305279, 47.265358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745415, 41.597054, 46.626976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778572, 41.899101, 46.887108>,  <41.798466, 42.080330, 47.043186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778572, 41.899101, 46.887108>,  <41.745415, 41.597054, 46.626976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778572, 41.899101, 46.887108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219071, 0.622806, -0.751079,
		-0.972181, 0.204727, -0.113798,
		0.082892, 0.755115, 0.650330,
		41.803440, 42.125637, 47.082207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342449, 42.189110, 46.425495>,  <41.745415, 41.597054, 46.626976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342449, 42.189110, 46.425495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667683, 42.290871, 46.634941>,  <41.862823, 42.351925, 46.760609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667683, 42.290871, 46.634941>,  <41.342449, 42.189110, 46.425495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667683, 42.290871, 46.634941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336776, 0.528104, -0.779544,
		-0.474837, 0.810177, 0.343719,
		0.813088, 0.254400, 0.523611,
		41.911610, 42.367191, 46.792023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.605312, 43.219372, 51.440037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839630, 43.089417, 51.737034>,  <39.980221, 43.011444, 51.915230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839630, 43.089417, 51.737034>,  <39.605312, 43.219372, 51.440037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839630, 43.089417, 51.737034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805321, -0.336349, 0.488188,
		0.091129, -0.883921, -0.458671,
		0.585793, -0.324889, 0.742491,
		40.015369, 42.991951, 51.959782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485451, 42.456787, 51.628502>,  <39.605312, 43.219372, 51.440037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485451, 42.456787, 51.628502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635422, 42.635796, 51.953255>,  <39.725407, 42.743202, 52.148106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635422, 42.635796, 51.953255>,  <39.485451, 42.456787, 51.628502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635422, 42.635796, 51.953255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766277, -0.343304, 0.543104,
		0.521772, -0.825753, 0.214209,
		0.374931, 0.447520, 0.811882,
		39.747902, 42.770050, 52.196819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073269, 42.255974, 52.132038>,  <39.485451, 42.456787, 51.628502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073269, 42.255974, 52.132038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290726, 42.494423, 52.368374>,  <39.421200, 42.637493, 52.510174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290726, 42.494423, 52.368374>,  <39.073269, 42.255974, 52.132038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290726, 42.494423, 52.368374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624416, -0.183144, 0.759317,
		0.560856, -0.781725, 0.272665,
		0.543640, 0.596125, 0.590840,
		39.453819, 42.673260, 52.545628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159210, 41.907135, 52.776901>,  <39.073269, 42.255974, 52.132038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159210, 41.907135, 52.776901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203640, 42.298172, 52.848427>,  <39.230297, 42.532795, 52.891342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203640, 42.298172, 52.848427>,  <39.159210, 41.907135, 52.776901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203640, 42.298172, 52.848427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614922, -0.073744, 0.785132,
		0.780726, -0.197170, 0.592951,
		0.111078, 0.977592, 0.178818,
		39.236965, 42.591450, 52.902073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256096, 42.007751, 53.429680>,  <39.159210, 41.907135, 52.776901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256096, 42.007751, 53.429680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107292, 42.363319, 53.322781>,  <39.018009, 42.576660, 53.258640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107292, 42.363319, 53.322781>,  <39.256096, 42.007751, 53.429680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107292, 42.363319, 53.322781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646628, -0.041621, 0.761669,
		0.665942, 0.456161, 0.590286,
		-0.372012, 0.888923, -0.267250,
		38.995689, 42.629997, 53.242607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067635, 42.341671, 54.046535>,  <39.256096, 42.007751, 53.429680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067635, 42.341671, 54.046535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.883446, 42.564369, 53.769985>,  <38.772934, 42.697987, 53.604053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.883446, 42.564369, 53.769985>,  <39.067635, 42.341671, 54.046535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883446, 42.564369, 53.769985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792584, 0.092854, 0.602651,
		0.399718, 0.825480, 0.398508,
		-0.460473, 0.556742, -0.691377,
		38.745304, 42.731392, 53.562572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733452, 42.956192, 54.393131>,  <39.067635, 42.341671, 54.046535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733452, 42.956192, 54.393131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543774, 42.919090, 54.042923>,  <38.429966, 42.896828, 53.832798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543774, 42.919090, 54.042923>,  <38.733452, 42.956192, 54.393131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543774, 42.919090, 54.042923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880280, 0.067570, 0.469618,
		0.015600, 0.993393, -0.113691,
		-0.474198, -0.092754, -0.875519,
		38.401516, 42.891266, 53.780266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210579, 43.527340, 54.389088>,  <38.733452, 42.956192, 54.393131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210579, 43.527340, 54.389088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109371, 43.218803, 54.155502>,  <38.048649, 43.033680, 54.015350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109371, 43.218803, 54.155502>,  <38.210579, 43.527340, 54.389088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109371, 43.218803, 54.155502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843693, -0.119477, 0.523361,
		-0.473460, 0.625107, -0.620546,
		-0.253016, -0.771341, -0.583966,
		38.033466, 42.987400, 53.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421734, 43.610622, 54.259201>,  <38.210579, 43.527340, 54.389088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421734, 43.610622, 54.259201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477180, 43.224442, 54.170944>,  <37.510448, 42.992733, 54.117989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477180, 43.224442, 54.170944>,  <37.421734, 43.610622, 54.259201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477180, 43.224442, 54.170944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919657, -0.208152, 0.333022,
		-0.367444, 0.156752, -0.916741,
		0.138620, -0.965454, -0.220643,
		37.518768, 42.934807, 54.104752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776123, 43.341560, 53.956284>,  <37.421734, 43.610622, 54.259201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776123, 43.341560, 53.956284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966469, 43.019539, 54.097954>,  <37.080677, 42.826324, 54.182957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966469, 43.019539, 54.097954>,  <36.776123, 43.341560, 53.956284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966469, 43.019539, 54.097954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867847, -0.364418, 0.337701,
		-0.142799, -0.468071, -0.872077,
		0.475868, -0.805052, 0.354176,
		37.109230, 42.778023, 54.204205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288254, 42.906910, 53.910118>,  <36.776123, 43.341560, 53.956284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288254, 42.906910, 53.910118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555748, 42.731735, 54.150452>,  <36.716244, 42.626629, 54.294651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555748, 42.731735, 54.150452>,  <36.288254, 42.906910, 53.910118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555748, 42.731735, 54.150452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743466, -0.401708, 0.534686,
		0.007199, -0.804263, -0.594230,
		0.668735, -0.437940, 0.600834,
		36.756367, 42.600353, 54.330700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082668, 42.226349, 53.865669>,  <36.288254, 42.906910, 53.910118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082668, 42.226349, 53.865669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315277, 42.262123, 54.189110>,  <36.454842, 42.283588, 54.383175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315277, 42.262123, 54.189110>,  <36.082668, 42.226349, 53.865669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315277, 42.262123, 54.189110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659610, -0.529938, 0.532991,
		0.476178, -0.843306, -0.249176,
		0.581523, 0.089440, 0.808599,
		36.489735, 42.288956, 54.431690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320477, 41.602600, 54.150696>,  <36.082668, 42.226349, 53.865669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320477, 41.602600, 54.150696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273224, 41.888954, 54.425957>,  <36.244873, 42.060768, 54.591114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273224, 41.888954, 54.425957>,  <36.320477, 41.602600, 54.150696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273224, 41.888954, 54.425957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524012, -0.633599, 0.569178,
		0.843479, -0.293364, 0.449979,
		-0.118130, 0.715884, 0.688154,
		36.237785, 42.103718, 54.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605736, 41.433987, 54.829762>,  <36.320477, 41.602600, 54.150696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605736, 41.433987, 54.829762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.281654, 41.667038, 54.855438>,  <36.087208, 41.806870, 54.870842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.281654, 41.667038, 54.855438>,  <36.605736, 41.433987, 54.829762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281654, 41.667038, 54.855438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487126, -0.730183, 0.479105,
		0.326009, 0.356903, 0.875407,
		-0.810202, 0.582626, 0.064190,
		36.038593, 41.841827, 54.874695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585011, 41.331299, 55.535957>,  <36.605736, 41.433987, 54.829762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585011, 41.331299, 55.535957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652397, 40.954414, 55.651791>,  <36.692829, 40.728283, 55.721291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652397, 40.954414, 55.651791>,  <36.585011, 41.331299, 55.535957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652397, 40.954414, 55.651791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483265, -0.177102, -0.857374,
		0.859112, 0.284385, 0.425501,
		0.168468, -0.942210, 0.289584,
		36.702938, 40.671753, 55.738667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361828, 41.166687, 55.660175>,  <36.585011, 41.331299, 55.535957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361828, 41.166687, 55.660175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166626, 40.830856, 55.564713>,  <37.049503, 40.629356, 55.507435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166626, 40.830856, 55.564713>,  <37.361828, 41.166687, 55.660175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166626, 40.830856, 55.564713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637688, -0.156251, -0.754280,
		0.595989, -0.520280, 0.611642,
		-0.488007, -0.839580, -0.238653,
		37.020226, 40.578983, 55.493118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907921, 40.720818, 55.407543>,  <37.361828, 41.166687, 55.660175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907921, 40.720818, 55.407543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563248, 40.559135, 55.284828>,  <37.356445, 40.462124, 55.211201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.563248, 40.559135, 55.284828>,  <37.907921, 40.720818, 55.407543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563248, 40.559135, 55.284828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463289, -0.379983, -0.800610,
		0.207041, -0.832002, 0.514691,
		-0.861683, -0.404210, -0.306785,
		37.304745, 40.437874, 55.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102711, 40.041489, 55.069023>,  <37.907921, 40.720818, 55.407543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102711, 40.041489, 55.069023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741081, 40.126526, 54.920723>,  <37.524105, 40.177547, 54.831741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741081, 40.126526, 54.920723>,  <38.102711, 40.041489, 55.069023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741081, 40.126526, 54.920723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273848, -0.377862, -0.884436,
		-0.328112, -0.901126, 0.283399,
		-0.904074, 0.212586, -0.370753,
		37.469860, 40.190304, 54.809498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890713, 39.422752, 54.729034>,  <38.102711, 40.041489, 55.069023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890713, 39.422752, 54.729034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689800, 39.737434, 54.585480>,  <37.569252, 39.926243, 54.499348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689800, 39.737434, 54.585480>,  <37.890713, 39.422752, 54.729034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689800, 39.737434, 54.585480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284119, -0.241844, -0.927786,
		-0.816692, -0.567979, -0.102045,
		-0.502285, 0.786709, -0.358886,
		37.539116, 39.973446, 54.477814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380093, 39.170567, 54.196213>,  <37.890713, 39.422752, 54.729034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380093, 39.170567, 54.196213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420460, 39.558289, 54.106533>,  <37.444679, 39.790920, 54.052723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420460, 39.558289, 54.106533>,  <37.380093, 39.170567, 54.196213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420460, 39.558289, 54.106533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170960, -0.238896, -0.955877,
		-0.980096, 0.058136, -0.189821,
		0.100919, 0.969303, -0.224202,
		37.450737, 39.849079, 54.039272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085651, 39.234112, 53.504162>,  <37.380093, 39.170567, 54.196213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085651, 39.234112, 53.504162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294830, 39.572014, 53.549618>,  <37.420338, 39.774754, 53.576893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294830, 39.572014, 53.549618>,  <37.085651, 39.234112, 53.504162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294830, 39.572014, 53.549618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277206, -0.042481, -0.959871,
		-0.806027, 0.533466, -0.256386,
		0.522950, 0.844754, 0.113639,
		37.451714, 39.825439, 53.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993286, 39.639637, 52.917599>,  <37.085651, 39.234112, 53.504162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993286, 39.639637, 52.917599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332890, 39.804260, 53.050144>,  <37.536652, 39.903034, 53.129673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332890, 39.804260, 53.050144>,  <36.993286, 39.639637, 52.917599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332890, 39.804260, 53.050144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299851, 0.141086, -0.943496,
		-0.435057, 0.900396, -0.003624,
		0.849008, 0.411561, 0.331365,
		37.587593, 39.927731, 53.149555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184959, 40.351818, 52.528805>,  <36.993286, 39.639637, 52.917599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184959, 40.351818, 52.528805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532257, 40.247147, 52.697414>,  <37.740635, 40.184345, 52.798580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532257, 40.247147, 52.697414>,  <37.184959, 40.351818, 52.528805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532257, 40.247147, 52.697414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470546, 0.164960, -0.866818,
		0.157293, 0.950954, 0.266357,
		0.868242, -0.261678, 0.421521,
		37.792728, 40.168644, 52.823872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600262, 40.898766, 52.440552>,  <37.184959, 40.351818, 52.528805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600262, 40.898766, 52.440552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850555, 40.591400, 52.494225>,  <38.000732, 40.406982, 52.526428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850555, 40.591400, 52.494225>,  <37.600262, 40.898766, 52.440552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850555, 40.591400, 52.494225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511044, 0.273878, -0.814755,
		0.589317, 0.578390, 0.564066,
		0.625731, -0.768411, 0.134182,
		38.038273, 40.360878, 52.534477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254387, 41.160847, 52.437481>,  <37.600262, 40.898766, 52.440552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254387, 41.160847, 52.437481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350510, 40.783394, 52.346436>,  <38.408184, 40.556923, 52.291809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350510, 40.783394, 52.346436>,  <38.254387, 41.160847, 52.437481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350510, 40.783394, 52.346436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459192, 0.317100, -0.829814,
		0.855217, 0.094889, 0.509509,
		0.240306, -0.943633, -0.227617,
		38.422600, 40.500305, 52.278149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982983, 41.159554, 52.409760>,  <38.254387, 41.160847, 52.437481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982983, 41.159554, 52.409760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896709, 40.823944, 52.209953>,  <38.844944, 40.622578, 52.090069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896709, 40.823944, 52.209953>,  <38.982983, 41.159554, 52.409760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896709, 40.823944, 52.209953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729870, 0.201304, -0.653273,
		0.648667, -0.505483, 0.568962,
		-0.215684, -0.839025, -0.499516,
		38.832005, 40.572235, 52.060097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590050, 40.829811, 52.418816>,  <38.982983, 41.159554, 52.409760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590050, 40.829811, 52.418816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379650, 40.666550, 52.120358>,  <39.253410, 40.568592, 51.941284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379650, 40.666550, 52.120358>,  <39.590050, 40.829811, 52.418816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379650, 40.666550, 52.120358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712799, 0.267011, -0.648555,
		0.463940, -0.872991, 0.150485,
		-0.526002, -0.408156, -0.746144,
		39.221848, 40.544102, 51.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008305, 40.277546, 52.002159>,  <39.590050, 40.829811, 52.418816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008305, 40.277546, 52.002159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.727131, 40.391891, 51.741646>,  <39.558426, 40.460499, 51.585339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.727131, 40.391891, 51.741646>,  <40.008305, 40.277546, 52.002159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727131, 40.391891, 51.741646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709942, 0.226400, -0.666877,
		-0.043187, -0.931142, -0.362091,
		-0.702935, 0.285864, -0.651279,
		39.516251, 40.477650, 51.546261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079811, 39.498787, 51.902401>,  <40.008305, 40.277546, 52.002159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079811, 39.498787, 51.902401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368324, 39.245232, 52.014069>,  <40.541431, 39.093098, 52.081070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368324, 39.245232, 52.014069>,  <40.079811, 39.498787, 51.902401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368324, 39.245232, 52.014069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509705, -0.212858, 0.833602,
		-0.468990, -0.743555, -0.476628,
		0.721283, -0.633891, 0.279165,
		40.584709, 39.055065, 52.097816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640533, 38.955223, 52.039200>,  <40.079811, 39.498787, 51.902401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640533, 38.955223, 52.039200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.999115, 38.883453, 52.201275>,  <40.214264, 38.840393, 52.298519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.999115, 38.883453, 52.201275>,  <39.640533, 38.955223, 52.039200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999115, 38.883453, 52.201275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443134, -0.359652, 0.821148,
		-0.001609, -0.915673, -0.401921,
		0.896454, -0.179426, 0.405187,
		40.268051, 38.829624, 52.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646175, 38.187138, 52.211926>,  <39.640533, 38.955223, 52.039200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646175, 38.187138, 52.211926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.890785, 38.406616, 52.439949>,  <40.037552, 38.538303, 52.576763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.890785, 38.406616, 52.439949>,  <39.646175, 38.187138, 52.211926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890785, 38.406616, 52.439949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353907, -0.454700, 0.817311,
		0.707664, -0.701553, -0.083872,
		0.611524, 0.548699, 0.570060,
		40.074242, 38.571224, 52.610966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766857, 37.757786, 52.696743>,  <39.646175, 38.187138, 52.211926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766857, 37.757786, 52.696743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927071, 38.086662, 52.858521>,  <40.023197, 38.283989, 52.955585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927071, 38.086662, 52.858521>,  <39.766857, 37.757786, 52.696743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927071, 38.086662, 52.858521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204310, -0.350140, 0.914144,
		0.893214, -0.448775, 0.027740,
		0.400532, 0.822194, 0.404439,
		40.047230, 38.333321, 52.979851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130783, 37.540306, 53.314877>,  <39.766857, 37.757786, 52.696743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130783, 37.540306, 53.314877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071205, 37.933083, 53.361526>,  <40.035458, 38.168751, 53.389519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071205, 37.933083, 53.361526>,  <40.130783, 37.540306, 53.314877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071205, 37.933083, 53.361526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392554, -0.166969, 0.904446,
		0.907587, 0.088934, 0.410336,
		-0.148949, 0.981943, 0.116628,
		40.026520, 38.227665, 53.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309921, 37.659882, 53.928047>,  <40.130783, 37.540306, 53.314877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309921, 37.659882, 53.928047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126625, 38.008820, 53.859890>,  <40.016647, 38.218182, 53.818996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126625, 38.008820, 53.859890>,  <40.309921, 37.659882, 53.928047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126625, 38.008820, 53.859890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476875, -0.079512, 0.875367,
		0.750073, 0.482382, 0.452435,
		-0.458236, 0.872345, -0.170396,
		39.989155, 38.270523, 53.808773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408546, 38.162472, 54.559929>,  <40.309921, 37.659882, 53.928047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408546, 38.162472, 54.559929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064785, 38.226479, 54.365685>,  <39.858528, 38.264885, 54.249138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064785, 38.226479, 54.365685>,  <40.408546, 38.162472, 54.559929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064785, 38.226479, 54.365685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496478, -0.034173, 0.867376,
		0.122204, 0.986522, 0.108815,
		-0.859404, 0.160021, -0.485611,
		39.806965, 38.274487, 54.220001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634930, 38.836231, 54.753262>,  <40.408546, 38.162472, 54.559929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634930, 38.836231, 54.753262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935356, 38.855881, 55.016621>,  <41.115612, 38.867672, 55.174637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935356, 38.855881, 55.016621>,  <40.634930, 38.836231, 54.753262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935356, 38.855881, 55.016621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660061, -0.078168, -0.747134,
		0.014761, 0.995729, -0.091136,
		0.751067, 0.049126, 0.658396,
		41.160675, 38.870617, 55.214138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052925, 39.281219, 54.478065>,  <40.634930, 38.836231, 54.753262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052925, 39.281219, 54.478065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295166, 39.088478, 54.731380>,  <41.440510, 38.972832, 54.883369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295166, 39.088478, 54.731380>,  <41.052925, 39.281219, 54.478065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295166, 39.088478, 54.731380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740982, 0.051294, -0.669564,
		0.290150, 0.874747, 0.388111,
		0.605606, -0.481857, 0.633289,
		41.476849, 38.943920, 54.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643322, 39.586700, 54.433285>,  <41.052925, 39.281219, 54.478065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643322, 39.586700, 54.433285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743340, 39.226967, 54.576771>,  <41.803349, 39.011127, 54.662861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743340, 39.226967, 54.576771>,  <41.643322, 39.586700, 54.433285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743340, 39.226967, 54.576771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720183, -0.074878, -0.689732,
		0.647161, 0.430798, 0.628964,
		0.250039, -0.899337, 0.358711,
		41.818352, 38.957165, 54.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346981, 39.712624, 54.529106>,  <41.643322, 39.586700, 54.433285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346981, 39.712624, 54.529106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309433, 39.314796, 54.547108>,  <42.286903, 39.076099, 54.557907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309433, 39.314796, 54.547108>,  <42.346981, 39.712624, 54.529106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309433, 39.314796, 54.547108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773078, -0.101303, -0.626169,
		0.627326, -0.023988, 0.778387,
		-0.093874, -0.994566, 0.045005,
		42.281269, 39.016426, 54.560608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005695, 39.386433, 54.736649>,  <42.346981, 39.712624, 54.529106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005695, 39.386433, 54.736649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792130, 39.122826, 54.524750>,  <42.663990, 38.964661, 54.397610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792130, 39.122826, 54.524750>,  <43.005695, 39.386433, 54.736649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792130, 39.122826, 54.524750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751800, -0.083284, -0.654110,
		0.386953, -0.747499, 0.539919,
		-0.533913, -0.659021, -0.529743,
		42.631954, 38.925117, 54.365826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551476, 38.941803, 54.458683>,  <43.005695, 39.386433, 54.736649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551476, 38.941803, 54.458683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.206734, 38.884995, 54.263935>,  <42.999889, 38.850910, 54.147087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.206734, 38.884995, 54.263935>,  <43.551476, 38.941803, 54.458683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206734, 38.884995, 54.263935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490659, 0.009389, -0.871301,
		0.128314, -0.989819, 0.061592,
		-0.861852, -0.142021, -0.486869,
		42.948177, 38.842388, 54.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682491, 38.335842, 53.984390>,  <43.551476, 38.941803, 54.458683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682491, 38.335842, 53.984390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383331, 38.557098, 53.837593>,  <43.203835, 38.689854, 53.749516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383331, 38.557098, 53.837593>,  <43.682491, 38.335842, 53.984390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383331, 38.557098, 53.837593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426858, -0.022642, -0.904035,
		-0.508370, -0.832779, -0.219179,
		-0.747899, 0.553143, -0.366989,
		43.158962, 38.723042, 53.727497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.052761, 42.754593, 57.103909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805267, 42.766449, 56.789894>,  <38.656769, 42.773563, 56.601486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805267, 42.766449, 56.789894>,  <39.052761, 42.754593, 57.103909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805267, 42.766449, 56.789894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767337, -0.191398, -0.612014,
		-0.168392, -0.981065, 0.095684,
		-0.618739, 0.029636, -0.785037,
		38.619644, 42.775341, 56.554382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225945, 42.195141, 56.748268>,  <39.052761, 42.754593, 57.103909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225945, 42.195141, 56.748268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064201, 42.461823, 56.497826>,  <38.967155, 42.621830, 56.347561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064201, 42.461823, 56.497826>,  <39.225945, 42.195141, 56.748268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064201, 42.461823, 56.497826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771994, -0.118276, -0.624529,
		-0.490426, -0.735882, -0.466862,
		-0.404360, 0.666700, -0.626102,
		38.942894, 42.661831, 56.309994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234684, 41.899612, 56.106239>,  <39.225945, 42.195141, 56.748268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234684, 41.899612, 56.106239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187752, 42.284279, 56.007103>,  <39.159592, 42.515079, 55.947620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187752, 42.284279, 56.007103>,  <39.234684, 41.899612, 56.106239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187752, 42.284279, 56.007103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692208, -0.099756, -0.714771,
		-0.712097, -0.255426, -0.653970,
		-0.117334, 0.961669, -0.247843,
		39.152554, 42.572781, 55.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228352, 41.966778, 55.345074>,  <39.234684, 41.899612, 56.106239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228352, 41.966778, 55.345074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314804, 42.331253, 55.485371>,  <39.366676, 42.549938, 55.569550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314804, 42.331253, 55.485371>,  <39.228352, 41.966778, 55.345074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314804, 42.331253, 55.485371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798486, 0.041773, -0.600563,
		-0.561879, 0.409861, -0.718544,
		0.216132, 0.911191, 0.350740,
		39.379642, 42.604610, 55.590591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580200, 42.241230, 54.730114>,  <39.228352, 41.966778, 55.345074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580200, 42.241230, 54.730114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675709, 42.480553, 55.036060>,  <39.733013, 42.624146, 55.219627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675709, 42.480553, 55.036060>,  <39.580200, 42.241230, 54.730114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675709, 42.480553, 55.036060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848698, 0.254195, -0.463785,
		-0.471911, 0.759876, -0.447089,
		0.238771, 0.598309, 0.764863,
		39.747341, 42.660046, 55.265518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700317, 42.868713, 54.483696>,  <39.580200, 42.241230, 54.730114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700317, 42.868713, 54.483696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900444, 42.903381, 54.828293>,  <40.020519, 42.924183, 55.035049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900444, 42.903381, 54.828293>,  <39.700317, 42.868713, 54.483696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900444, 42.903381, 54.828293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820465, 0.270417, -0.503698,
		-0.276616, 0.958834, 0.064189,
		0.500321, 0.086666, 0.861492,
		40.050541, 42.929382, 55.086739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092506, 43.519489, 54.401760>,  <39.700317, 42.868713, 54.483696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092506, 43.519489, 54.401760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271614, 43.325333, 54.702133>,  <40.379078, 43.208839, 54.882359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271614, 43.325333, 54.702133>,  <40.092506, 43.519489, 54.401760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271614, 43.325333, 54.702133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893367, 0.277965, -0.353032,
		-0.037375, 0.828936, 0.558094,
		0.447771, -0.485388, 0.750932,
		40.405945, 43.179718, 54.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547783, 43.997696, 54.741657>,  <40.092506, 43.519489, 54.401760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547783, 43.997696, 54.741657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672028, 43.623543, 54.809284>,  <40.746574, 43.399052, 54.849861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672028, 43.623543, 54.809284>,  <40.547783, 43.997696, 54.741657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672028, 43.623543, 54.809284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928604, 0.260624, -0.264139,
		0.203008, 0.239039, 0.949552,
		0.310616, -0.935380, 0.169064,
		40.765213, 43.342930, 54.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211258, 44.102448, 55.137173>,  <40.547783, 43.997696, 54.741657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211258, 44.102448, 55.137173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227448, 43.731628, 54.988068>,  <41.237160, 43.509136, 54.898605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227448, 43.731628, 54.988068>,  <41.211258, 44.102448, 55.137173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227448, 43.731628, 54.988068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882485, 0.208127, -0.421787,
		0.468597, -0.311885, 0.826526,
		0.040473, -0.927044, -0.372761,
		41.239590, 43.453514, 54.876240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899849, 43.917389, 55.285595>,  <41.211258, 44.102448, 55.137173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899849, 43.917389, 55.285595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.789917, 43.636726, 55.022644>,  <41.723957, 43.468327, 54.864876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.789917, 43.636726, 55.022644>,  <41.899849, 43.917389, 55.285595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789917, 43.636726, 55.022644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905169, 0.041757, -0.422997,
		0.324250, -0.711287, 0.623645,
		-0.274831, -0.701661, -0.657374,
		41.707466, 43.426228, 54.825432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467896, 43.433800, 55.218357>,  <41.899849, 43.917389, 55.285595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467896, 43.433800, 55.218357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238178, 43.377846, 54.895714>,  <42.100349, 43.344273, 54.702126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238178, 43.377846, 54.895714>,  <42.467896, 43.433800, 55.218357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238178, 43.377846, 54.895714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818316, -0.126343, -0.560710,
		-0.023475, -0.982074, 0.187028,
		-0.574289, -0.139885, -0.806613,
		42.065891, 43.335880, 54.653728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564713, 42.809452, 54.934387>,  <42.467896, 43.433800, 55.218357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564713, 42.809452, 54.934387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.470879, 43.068535, 54.644436>,  <42.414577, 43.223984, 54.470467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.470879, 43.068535, 54.644436>,  <42.564713, 42.809452, 54.934387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470879, 43.068535, 54.644436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885333, -0.165589, -0.434471,
		-0.401442, -0.743675, -0.534595,
		-0.234582, 0.647710, -0.724875,
		42.400505, 43.262848, 54.426975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826000, 42.262108, 54.579456>,  <42.564713, 42.809452, 54.934387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826000, 42.262108, 54.579456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051300, 41.952667, 54.695587>,  <43.186478, 41.767002, 54.765266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051300, 41.952667, 54.695587>,  <42.826000, 42.262108, 54.579456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051300, 41.952667, 54.695587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589981, -0.130527, 0.796797,
		-0.578511, -0.620079, -0.529931,
		0.563248, -0.773605, 0.290324,
		43.220276, 41.720585, 54.782684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387146, 41.881432, 54.888580>,  <42.826000, 42.262108, 54.579456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387146, 41.881432, 54.888580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.718613, 41.694519, 55.011841>,  <42.917492, 41.582371, 55.085796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.718613, 41.694519, 55.011841>,  <42.387146, 41.881432, 54.888580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718613, 41.694519, 55.011841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504097, -0.383738, 0.773713,
		-0.243290, -0.796490, -0.553546,
		0.828671, -0.467278, 0.308149,
		42.967213, 41.554337, 55.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242073, 41.112877, 54.911617>,  <42.387146, 41.881432, 54.888580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242073, 41.112877, 54.911617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.527851, 41.232094, 55.164833>,  <42.699318, 41.303623, 55.316761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.527851, 41.232094, 55.164833>,  <42.242073, 41.112877, 54.911617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527851, 41.232094, 55.164833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473514, -0.460129, 0.751043,
		0.515120, -0.836333, -0.187612,
		0.714448, 0.298041, 0.633037,
		42.742184, 41.321507, 55.354744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290222, 40.546322, 55.345215>,  <42.242073, 41.112877, 54.911617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290222, 40.546322, 55.345215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.485977, 40.818237, 55.563713>,  <42.603432, 40.981388, 55.694813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.485977, 40.818237, 55.563713>,  <42.290222, 40.546322, 55.345215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485977, 40.818237, 55.563713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445430, -0.343652, 0.826738,
		0.749726, -0.647911, 0.134620,
		0.489390, 0.679790, 0.546244,
		42.632793, 41.022175, 55.727585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555080, 40.197636, 55.927456>,  <42.290222, 40.546322, 55.345215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555080, 40.197636, 55.927456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.557816, 40.585426, 56.025494>,  <42.559456, 40.818100, 56.084316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.557816, 40.585426, 56.025494>,  <42.555080, 40.197636, 55.927456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557816, 40.585426, 56.025494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321139, -0.229992, 0.918680,
		0.947007, -0.084990, 0.309764,
		0.006836, 0.969474, 0.245097,
		42.559868, 40.876270, 56.099022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796745, 40.292709, 56.637470>,  <42.555080, 40.197636, 55.927456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796745, 40.292709, 56.637470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.620544, 40.643021, 56.558502>,  <42.514824, 40.853207, 56.511120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.620544, 40.643021, 56.558502>,  <42.796745, 40.292709, 56.637470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620544, 40.643021, 56.558502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285930, 0.071591, 0.955573,
		0.851003, 0.477376, 0.218876,
		-0.440498, 0.875778, -0.197420,
		42.488396, 40.905754, 56.499275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844330, 40.751114, 57.195446>,  <42.796745, 40.292709, 56.637470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844330, 40.751114, 57.195446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529282, 40.934525, 57.030807>,  <42.340252, 41.044571, 56.932026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529282, 40.934525, 57.030807>,  <42.844330, 40.751114, 57.195446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529282, 40.934525, 57.030807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475556, -0.027611, 0.879252,
		0.391795, 0.888252, 0.239801,
		-0.787619, 0.458526, -0.411595,
		42.292995, 41.072083, 56.907330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601753, 41.163078, 57.730255>,  <42.844330, 40.751114, 57.195446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601753, 41.163078, 57.730255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286354, 41.150085, 57.484581>,  <42.097115, 41.142292, 57.337177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286354, 41.150085, 57.484581>,  <42.601753, 41.163078, 57.730255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286354, 41.150085, 57.484581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604948, 0.221124, 0.764945,
		0.110967, 0.974704, -0.194003,
		-0.788495, -0.032478, -0.614183,
		42.049805, 41.140343, 57.300327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273243, 41.710400, 57.926647>,  <42.601753, 41.163078, 57.730255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273243, 41.710400, 57.926647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003765, 41.497475, 57.721600>,  <41.842079, 41.369720, 57.598572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003765, 41.497475, 57.721600>,  <42.273243, 41.710400, 57.926647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003765, 41.497475, 57.721600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686956, 0.195374, 0.699943,
		-0.272434, 0.823696, -0.497297,
		-0.673699, -0.532310, -0.512617,
		41.801655, 41.337780, 57.567814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602932, 42.100430, 57.681705>,  <42.273243, 41.710400, 57.926647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602932, 42.100430, 57.681705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531975, 41.709763, 57.730118>,  <41.489403, 41.475361, 57.759167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531975, 41.709763, 57.730118>,  <41.602932, 42.100430, 57.681705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531975, 41.709763, 57.730118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707261, 0.212032, 0.674407,
		-0.684336, 0.034032, -0.728373,
		-0.177390, -0.976670, 0.121032,
		41.478760, 41.416763, 57.766426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837353, 42.087646, 57.859692>,  <41.602932, 42.100430, 57.681705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837353, 42.087646, 57.859692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.934254, 41.705215, 57.925686>,  <40.992393, 41.475758, 57.965282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.934254, 41.705215, 57.925686>,  <40.837353, 42.087646, 57.859692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934254, 41.705215, 57.925686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758968, -0.080814, 0.646093,
		-0.604385, -0.281738, -0.745213,
		0.242252, -0.956082, 0.164987,
		41.006931, 41.418392, 57.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245403, 41.750801, 57.747742>,  <40.837353, 42.087646, 57.859692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245403, 41.750801, 57.747742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.466263, 41.517082, 57.985641>,  <40.598778, 41.376850, 58.128380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.466263, 41.517082, 57.985641>,  <40.245403, 41.750801, 57.747742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466263, 41.517082, 57.985641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832801, -0.352570, 0.426775,
		-0.039674, -0.730950, -0.681277,
		0.552149, -0.584300, 0.594748,
		40.631908, 41.341793, 58.164066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843761, 41.130733, 57.787567>,  <40.245403, 41.750801, 57.747742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843761, 41.130733, 57.787567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072277, 41.105339, 58.114883>,  <40.209389, 41.090103, 58.311272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072277, 41.105339, 58.114883>,  <39.843761, 41.130733, 57.787567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072277, 41.105339, 58.114883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762118, -0.411086, 0.500184,
		0.304631, -0.909383, -0.283235,
		0.571293, -0.063486, 0.818287,
		40.243664, 41.086292, 58.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697933, 40.442627, 58.061985>,  <39.843761, 41.130733, 57.787567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697933, 40.442627, 58.061985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851070, 40.648384, 58.368927>,  <39.942951, 40.771839, 58.553093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851070, 40.648384, 58.368927>,  <39.697933, 40.442627, 58.061985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851070, 40.648384, 58.368927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706678, -0.371936, 0.601889,
		0.595013, -0.772701, 0.221117,
		0.382839, 0.514390, 0.767357,
		39.965923, 40.802700, 58.599133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127472, 39.947788, 57.920555>,  <39.697933, 40.442627, 58.061985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127472, 39.947788, 57.920555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943302, 39.605988, 57.824356>,  <39.832798, 39.400909, 57.766636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943302, 39.605988, 57.824356>,  <40.127472, 39.947788, 57.920555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943302, 39.605988, 57.824356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721257, -0.202170, -0.662507,
		0.517490, -0.478496, 0.709397,
		-0.460426, -0.854499, -0.240498,
		39.805176, 39.349636, 57.752205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686092, 39.486443, 57.838997>,  <40.127472, 39.947788, 57.920555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686092, 39.486443, 57.838997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.383915, 39.329231, 57.629299>,  <40.202606, 39.234905, 57.503479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.383915, 39.329231, 57.629299>,  <40.686092, 39.486443, 57.838997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383915, 39.329231, 57.629299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644193, -0.299415, -0.703822,
		0.119652, -0.869415, 0.479375,
		-0.755446, -0.393024, -0.524245,
		40.157280, 39.211323, 57.472027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980015, 38.848118, 57.496082>,  <40.686092, 39.486443, 57.838997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980015, 38.848118, 57.496082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644066, 38.957474, 57.308517>,  <40.442497, 39.023087, 57.195980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644066, 38.957474, 57.308517>,  <40.980015, 38.848118, 57.496082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644066, 38.957474, 57.308517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381587, -0.316989, -0.868279,
		-0.386021, -0.908171, 0.161906,
		-0.839868, 0.273393, -0.468911,
		40.392105, 39.039490, 57.167843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739101, 38.242531, 57.236828>,  <40.980015, 38.848118, 57.496082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739101, 38.242531, 57.236828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599571, 38.553886, 57.028049>,  <40.515854, 38.740700, 56.902782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599571, 38.553886, 57.028049>,  <40.739101, 38.242531, 57.236828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599571, 38.553886, 57.028049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406712, -0.376024, -0.832581,
		-0.844338, -0.502707, -0.185414,
		-0.348825, 0.778390, -0.521949,
		40.494923, 38.787403, 56.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522900, 38.025471, 56.632816>,  <40.739101, 38.242531, 57.236828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522900, 38.025471, 56.632816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.551552, 38.414223, 56.543087>,  <40.568741, 38.647472, 56.489250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.551552, 38.414223, 56.543087>,  <40.522900, 38.025471, 56.632816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551552, 38.414223, 56.543087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339306, -0.235230, -0.910790,
		-0.937945, -0.010876, -0.346614,
		0.071629, 0.971879, -0.224323,
		40.573040, 38.705788, 56.475792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561661, 38.054836, 56.027027>,  <40.522900, 38.025471, 56.632816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561661, 38.054836, 56.027027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.670879, 38.439087, 56.047581>,  <40.736412, 38.669636, 56.059914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.670879, 38.439087, 56.047581>,  <40.561661, 38.054836, 56.027027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670879, 38.439087, 56.047581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342058, -0.047024, -0.938502,
		-0.899133, 0.273834, -0.341430,
		0.273049, 0.960627, 0.051386,
		40.752792, 38.727276, 56.062996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549911, 38.265549, 55.309471>,  <40.561661, 38.054836, 56.027027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549911, 38.265549, 55.309471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783909, 38.524429, 55.504986>,  <40.924309, 38.679756, 55.622295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783909, 38.524429, 55.504986>,  <40.549911, 38.265549, 55.309471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783909, 38.524429, 55.504986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625313, 0.023883, -0.780009,
		-0.516494, 0.761947, -0.390730,
		0.584994, 0.647198, 0.488791,
		40.959408, 38.718590, 55.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976833, 38.526863, 55.053238>,  <40.549911, 38.265549, 55.309471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976833, 38.526863, 55.053238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693520, 38.450005, 54.781528>,  <39.523533, 38.403889, 54.618504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693520, 38.450005, 54.781528>,  <39.976833, 38.526863, 55.053238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693520, 38.450005, 54.781528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592462, -0.361384, 0.719993,
		-0.383823, 0.912404, 0.142123,
		-0.708285, -0.192147, -0.679273,
		39.481033, 38.392361, 54.577747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416878, 38.836998, 55.300671>,  <39.976833, 38.526863, 55.053238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416878, 38.836998, 55.300671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265495, 38.560814, 55.054081>,  <39.174667, 38.395103, 54.906128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265495, 38.560814, 55.054081>,  <39.416878, 38.836998, 55.300671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265495, 38.560814, 55.054081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675778, -0.249015, 0.693769,
		-0.632530, 0.679158, -0.372357,
		-0.378456, -0.690461, -0.616470,
		39.151958, 38.353676, 54.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603920, 39.050823, 55.109547>,  <39.416878, 38.836998, 55.300671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603920, 39.050823, 55.109547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654308, 38.657310, 55.058468>,  <38.684544, 38.421204, 55.027821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.654308, 38.657310, 55.058468>,  <38.603920, 39.050823, 55.109547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654308, 38.657310, 55.058468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687190, -0.179378, 0.703984,
		-0.715472, -0.000930, -0.698641,
		0.125975, -0.983780, -0.127701,
		38.692101, 38.362175, 55.020157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887676, 38.739658, 54.944553>,  <38.603920, 39.050823, 55.109547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887676, 38.739658, 54.944553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110153, 38.428139, 55.060566>,  <38.243641, 38.241226, 55.130173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110153, 38.428139, 55.060566>,  <37.887676, 38.739658, 54.944553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110153, 38.428139, 55.060566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724023, -0.282771, 0.629151,
		-0.407970, -0.559921, -0.721144,
		0.556194, -0.778800, 0.290033,
		38.277012, 38.194500, 55.147575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404778, 38.264057, 55.045769>,  <37.887676, 38.739658, 54.944553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404778, 38.264057, 55.045769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726143, 38.113525, 55.230335>,  <37.918961, 38.023205, 55.341076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726143, 38.113525, 55.230335>,  <37.404778, 38.264057, 55.045769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726143, 38.113525, 55.230335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569952, -0.261809, 0.778852,
		-0.172303, -0.888724, -0.424830,
		0.803409, -0.376332, 0.461420,
		37.967167, 38.000626, 55.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157024, 37.675045, 55.247852>,  <37.404778, 38.264057, 55.045769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157024, 37.675045, 55.247852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.471085, 37.764381, 55.478905>,  <37.659519, 37.817982, 55.617538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.471085, 37.764381, 55.478905>,  <37.157024, 37.675045, 55.247852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471085, 37.764381, 55.478905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516398, -0.278776, 0.809702,
		0.341869, -0.934025, -0.103549,
		0.785149, 0.223340, 0.577634,
		37.706631, 37.831383, 55.652195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207504, 37.101639, 55.658669>,  <37.157024, 37.675045, 55.247852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207504, 37.101639, 55.658669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407593, 37.389435, 55.851379>,  <37.527645, 37.562115, 55.967007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407593, 37.389435, 55.851379>,  <37.207504, 37.101639, 55.658669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407593, 37.389435, 55.851379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493326, -0.220451, 0.841446,
		0.711621, -0.658584, 0.244669,
		0.500225, 0.719492, 0.481774,
		37.557659, 37.605282, 55.995911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505737, 36.754772, 56.222466>,  <37.207504, 37.101639, 55.658669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505737, 36.754772, 56.222466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477299, 37.145630, 56.302597>,  <37.460236, 37.380146, 56.350677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477299, 37.145630, 56.302597>,  <37.505737, 36.754772, 56.222466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477299, 37.145630, 56.302597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512289, -0.208098, 0.833220,
		0.855865, -0.043392, 0.515375,
		-0.071093, 0.977145, 0.200333,
		37.455971, 37.438774, 56.362698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612537, 36.849785, 56.986855>,  <37.505737, 36.754772, 56.222466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612537, 36.849785, 56.986855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433079, 37.186935, 56.868011>,  <37.325405, 37.389225, 56.796703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433079, 37.186935, 56.868011>,  <37.612537, 36.849785, 56.986855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433079, 37.186935, 56.868011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481834, 0.051867, 0.874726,
		0.752698, 0.535599, 0.382858,
		-0.448644, 0.842878, -0.297110,
		37.298485, 37.439800, 56.778877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.498631, 42.533054, 43.685638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.217499, 42.734207, 43.886890>,  <46.048820, 42.854900, 44.007641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.217499, 42.734207, 43.886890>,  <46.498631, 42.533054, 43.685638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217499, 42.734207, 43.886890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186826, -0.812941, 0.551565,
		0.686391, 0.293656, 0.665307,
		-0.702826, 0.502886, 0.503133,
		46.006653, 42.885075, 44.037830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438023, 42.444763, 44.488091>,  <46.498631, 42.533054, 43.685638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438023, 42.444763, 44.488091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.072670, 42.544365, 44.359261>,  <45.853458, 42.604126, 44.281963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.072670, 42.544365, 44.359261>,  <46.438023, 42.444763, 44.488091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072670, 42.544365, 44.359261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406293, -0.507509, 0.759842,
		0.025750, 0.824881, 0.564719,
		-0.913380, 0.249008, -0.322075,
		45.798656, 42.619068, 44.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062241, 42.730762, 45.046673>,  <46.438023, 42.444763, 44.488091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062241, 42.730762, 45.046673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.779228, 42.611954, 44.790176>,  <45.609421, 42.540668, 44.636280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.779228, 42.611954, 44.790176>,  <46.062241, 42.730762, 45.046673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779228, 42.611954, 44.790176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427715, -0.542336, 0.723140,
		-0.562552, 0.785908, 0.256678,
		-0.707527, -0.297019, -0.641237,
		45.566971, 42.522846, 44.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470070, 42.913338, 45.347511>,  <46.062241, 42.730762, 45.046673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470070, 42.913338, 45.347511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.356888, 42.642662, 45.075623>,  <45.288979, 42.480255, 44.912491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.356888, 42.642662, 45.075623>,  <45.470070, 42.913338, 45.347511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356888, 42.642662, 45.075623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539234, -0.473843, 0.696204,
		-0.793197, 0.563526, -0.230818,
		-0.282957, -0.676692, -0.679723,
		45.271999, 42.439655, 44.871704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741089, 42.848152, 45.441254>,  <45.470070, 42.913338, 45.347511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741089, 42.848152, 45.441254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.793652, 42.511261, 45.232109>,  <44.825188, 42.309128, 45.106621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.793652, 42.511261, 45.232109>,  <44.741089, 42.848152, 45.441254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793652, 42.511261, 45.232109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652200, -0.470661, 0.594233,
		-0.746571, 0.262928, -0.611148,
		0.131403, -0.842228, -0.522863,
		44.833073, 42.258595, 45.075249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102203, 42.516773, 45.383957>,  <44.741089, 42.848152, 45.441254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102203, 42.516773, 45.383957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.364960, 42.218658, 45.338287>,  <44.522614, 42.039787, 45.310886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.364960, 42.218658, 45.338287>,  <44.102203, 42.516773, 45.383957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364960, 42.218658, 45.338287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522949, -0.559440, 0.643080,
		-0.543149, -0.362733, -0.757241,
		0.656897, -0.745287, -0.114168,
		44.562027, 41.995071, 45.304035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687687, 41.828194, 45.394817>,  <44.102203, 42.516773, 45.383957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687687, 41.828194, 45.394817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.062721, 41.732750, 45.496014>,  <44.287743, 41.675484, 45.556732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.062721, 41.732750, 45.496014>,  <43.687687, 41.828194, 45.394817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062721, 41.732750, 45.496014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346989, -0.593294, 0.726362,
		-0.023220, -0.768809, -0.639057,
		0.937581, -0.238612, 0.252992,
		44.343994, 41.661167, 45.571911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733120, 41.087872, 45.360256>,  <43.687687, 41.828194, 45.394817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733120, 41.087872, 45.360256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007568, 41.242821, 45.606567>,  <44.172237, 41.335789, 45.754353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007568, 41.242821, 45.606567>,  <43.733120, 41.087872, 45.360256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007568, 41.242821, 45.606567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333565, -0.584707, 0.739494,
		0.646507, -0.712785, -0.271967,
		0.686122, 0.387369, 0.615777,
		44.213406, 41.359032, 45.791302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722988, 40.547737, 45.790890>,  <43.733120, 41.087872, 45.360256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722988, 40.547737, 45.790890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.960613, 40.803925, 45.985573>,  <44.103188, 40.957638, 46.102383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.960613, 40.803925, 45.985573>,  <43.722988, 40.547737, 45.790890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960613, 40.803925, 45.985573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281828, -0.400988, 0.871654,
		0.753435, -0.654985, -0.057709,
		0.594061, 0.640471, 0.486712,
		44.138832, 40.996067, 46.131588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187508, 40.162914, 46.125164>,  <43.722988, 40.547737, 45.790890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187508, 40.162914, 46.125164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.146385, 40.503105, 46.331512>,  <44.121712, 40.707218, 46.455322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.146385, 40.503105, 46.331512>,  <44.187508, 40.162914, 46.125164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146385, 40.503105, 46.331512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268283, -0.523107, 0.808939,
		0.957839, -0.055234, 0.281948,
		-0.102808, 0.850475, 0.515871,
		44.115543, 40.758247, 46.486275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573448, 40.065811, 46.809662>,  <44.187508, 40.162914, 46.125164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573448, 40.065811, 46.809662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.288605, 40.341614, 46.862556>,  <44.117699, 40.507095, 46.894295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.288605, 40.341614, 46.862556>,  <44.573448, 40.065811, 46.809662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288605, 40.341614, 46.862556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411589, -0.562594, 0.716995,
		0.568765, 0.456153, 0.684420,
		-0.712110, 0.689502, 0.132236,
		44.074970, 40.548466, 46.902225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455563, 40.161831, 47.524952>,  <44.573448, 40.065811, 46.809662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455563, 40.161831, 47.524952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.113060, 40.299812, 47.371151>,  <43.907558, 40.382599, 47.278870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.113060, 40.299812, 47.371151>,  <44.455563, 40.161831, 47.524952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113060, 40.299812, 47.371151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487859, -0.295397, 0.821422,
		0.169769, 0.890927, 0.421221,
		-0.856254, 0.344949, -0.384498,
		43.856182, 40.403297, 47.255802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851875, 40.594330, 47.863270>,  <44.455563, 40.161831, 47.524952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851875, 40.594330, 47.863270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.187660, 40.494179, 48.056190>,  <45.389130, 40.434090, 48.171944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.187660, 40.494179, 48.056190>,  <44.851875, 40.594330, 47.863270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187660, 40.494179, 48.056190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541323, 0.463132, -0.701768,
		-0.047663, 0.850189, 0.524316,
		0.839463, -0.250376, 0.482301,
		45.439499, 40.419067, 48.200882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289822, 41.242809, 47.836891>,  <44.851875, 40.594330, 47.863270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289822, 41.242809, 47.836891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.542717, 40.943214, 47.916176>,  <45.694454, 40.763458, 47.963749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.542717, 40.943214, 47.916176>,  <45.289822, 41.242809, 47.836891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542717, 40.943214, 47.916176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714709, 0.465050, -0.522418,
		0.299104, 0.471961, 0.829331,
		0.632241, -0.748987, 0.198216,
		45.732388, 40.718517, 47.975639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945152, 41.551548, 47.970615>,  <45.289822, 41.242809, 47.836891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945152, 41.551548, 47.970615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041061, 41.171959, 47.888683>,  <46.098606, 40.944206, 47.839523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041061, 41.171959, 47.888683>,  <45.945152, 41.551548, 47.970615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041061, 41.171959, 47.888683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808314, 0.311997, -0.499285,
		0.537715, -0.045851, 0.841879,
		0.239771, -0.948976, -0.204827,
		46.112991, 40.887264, 47.827236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630962, 41.652164, 47.832722>,  <45.945152, 41.551548, 47.970615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630962, 41.652164, 47.832722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.541290, 41.283417, 47.706299>,  <46.487488, 41.062168, 47.630444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.541290, 41.283417, 47.706299>,  <46.630962, 41.652164, 47.832722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541290, 41.283417, 47.706299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805436, 0.007321, -0.592637,
		0.548650, -0.387423, 0.740868,
		-0.224178, -0.921873, -0.316061,
		46.474037, 41.006855, 47.611481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253540, 41.230320, 47.997780>,  <46.630962, 41.652164, 47.832722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253540, 41.230320, 47.997780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.018547, 41.093956, 47.704212>,  <46.877552, 41.012138, 47.528072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.018547, 41.093956, 47.704212>,  <47.253540, 41.230320, 47.997780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018547, 41.093956, 47.704212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788710, -0.038242, -0.613575,
		0.181107, -0.939318, 0.291345,
		-0.587484, -0.340909, -0.733923,
		46.842300, 40.991684, 47.484035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.541481, 40.613075, 47.790672>,  <47.253540, 41.230320, 47.997780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.541481, 40.613075, 47.790672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.336304, 40.759430, 47.480057>,  <47.213196, 40.847244, 47.293686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.336304, 40.759430, 47.480057>,  <47.541481, 40.613075, 47.790672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336304, 40.759430, 47.480057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828384, -0.026222, -0.559547,
		-0.225095, -0.930289, -0.289646,
		-0.512945, 0.365889, -0.776539,
		47.182419, 40.869198, 47.247097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.899593, 40.156033, 47.276337>,  <47.541481, 40.613075, 47.790672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.899593, 40.156033, 47.276337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.718674, 40.445755, 47.068180>,  <47.610123, 40.619587, 46.943287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.718674, 40.445755, 47.068180>,  <47.899593, 40.156033, 47.276337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718674, 40.445755, 47.068180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728183, -0.036993, -0.684384,
		-0.514952, -0.688489, -0.510693,
		-0.452298, 0.724303, -0.520396,
		47.582985, 40.663044, 46.912060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.794075, 39.966766, 46.552227>,  <47.899593, 40.156033, 47.276337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.794075, 39.966766, 46.552227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.779884, 40.366486, 46.556892>,  <47.771370, 40.606319, 46.559692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.779884, 40.366486, 46.556892>,  <47.794075, 39.966766, 46.552227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779884, 40.366486, 46.556892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735281, 0.034007, -0.676909,
		-0.676834, -0.015442, -0.735974,
		-0.035481, 0.999302, 0.011663,
		47.769241, 40.666275, 46.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897507, 40.160465, 45.870365>,  <47.794075, 39.966766, 46.552227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897507, 40.160465, 45.870365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.973557, 40.500168, 46.067387>,  <48.019188, 40.703991, 46.185600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.973557, 40.500168, 46.067387>,  <47.897507, 40.160465, 45.870365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.973557, 40.500168, 46.067387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702939, 0.232484, -0.672181,
		-0.685367, 0.474039, -0.552775,
		0.190128, 0.849258, 0.492557,
		48.030594, 40.754944, 46.215153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.207130, 40.624950, 45.372349>,  <47.897507, 40.160465, 45.870365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.207130, 40.624950, 45.372349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.309288, 40.801147, 45.716614>,  <48.370583, 40.906868, 45.923172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.309288, 40.801147, 45.716614>,  <48.207130, 40.624950, 45.372349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.309288, 40.801147, 45.716614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769698, 0.446074, -0.456709,
		-0.585097, 0.779090, -0.225124,
		0.255395, 0.440496, 0.860660,
		48.385906, 40.933296, 45.974812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.531982, 41.265549, 45.170143>,  <48.207130, 40.624950, 45.372349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.531982, 41.265549, 45.170143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.652031, 41.216728, 45.548569>,  <48.724060, 41.187435, 45.775623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.652031, 41.216728, 45.548569>,  <48.531982, 41.265549, 45.170143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.652031, 41.216728, 45.548569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845384, 0.493454, -0.204523,
		-0.441875, 0.861166, 0.251275,
		0.300120, -0.122050, 0.946061,
		48.742065, 41.180115, 45.832386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.714344, 41.917320, 45.334499>,  <48.531982, 41.265549, 45.170143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.714344, 41.917320, 45.334499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.908325, 41.680008, 45.591511>,  <49.024715, 41.537621, 45.745716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.908325, 41.680008, 45.591511>,  <48.714344, 41.917320, 45.334499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.908325, 41.680008, 45.591511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857001, 0.468788, -0.213977,
		-0.174262, 0.654416, 0.735780,
		0.484955, -0.593276, 0.642527,
		49.053810, 41.502026, 45.784267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.139320, 42.381046, 45.710609>,  <48.714344, 41.917320, 45.334499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.139320, 42.381046, 45.710609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.316284, 42.026131, 45.762737>,  <49.422462, 41.813179, 45.794014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.316284, 42.026131, 45.762737>,  <49.139320, 42.381046, 45.710609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.316284, 42.026131, 45.762737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887710, 0.412622, -0.204239,
		0.127447, 0.206042, 0.970208,
		0.442411, -0.887293, 0.130318,
		49.449009, 41.759941, 45.801834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.660652, 42.451630, 46.219528>,  <49.139320, 42.381046, 45.710609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.660652, 42.451630, 46.219528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.742119, 42.148361, 45.971756>,  <49.791000, 41.966400, 45.823093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.742119, 42.148361, 45.971756>,  <49.660652, 42.451630, 46.219528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.742119, 42.148361, 45.971756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862750, 0.438065, -0.252511,
		0.462797, -0.482982, 0.743336,
		0.203671, -0.758174, -0.619427,
		49.803219, 41.920910, 45.785927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.317646, 42.191975, 46.367317>,  <49.660652, 42.451630, 46.219528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.317646, 42.191975, 46.367317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.241737, 42.079666, 45.990986>,  <50.196194, 42.012280, 45.765186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.241737, 42.079666, 45.990986>,  <50.317646, 42.191975, 46.367317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.241737, 42.079666, 45.990986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927145, 0.264085, -0.265821,
		0.323093, -0.922728, 0.210201,
		-0.189770, -0.280771, -0.940827,
		50.184807, 41.995434, 45.708736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.287369, 42.731342, 46.867897>,  <50.317646, 42.191975, 46.367317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.287369, 42.731342, 46.867897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.294724, 43.120201, 46.961349>,  <50.299137, 43.353516, 47.017422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.294724, 43.120201, 46.961349>,  <50.287369, 42.731342, 46.867897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.294724, 43.120201, 46.961349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610837, -0.174072, 0.772383,
		0.791542, -0.156912, 0.590626,
		0.018385, 0.972151, 0.233633,
		50.300240, 43.411846, 47.031441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.335987, 42.707073, 47.599110>,  <50.287369, 42.731342, 46.867897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.335987, 42.707073, 47.599110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.222176, 43.073235, 47.485210>,  <50.153889, 43.292931, 47.416870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.222176, 43.073235, 47.485210>,  <50.335987, 42.707073, 47.599110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.222176, 43.073235, 47.485210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659423, 0.028712, 0.751224,
		0.695846, 0.401519, 0.595467,
		-0.284533, 0.915401, -0.284750,
		50.136814, 43.347855, 47.399784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.447910, 43.067478, 48.116539>,  <50.335987, 42.707073, 47.599110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.447910, 43.067478, 48.116539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.166901, 43.264542, 47.911114>,  <49.998295, 43.382778, 47.787857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.166901, 43.264542, 47.911114>,  <50.447910, 43.067478, 48.116539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.166901, 43.264542, 47.911114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604563, -0.032418, 0.795897,
		0.375458, 0.869618, 0.320618,
		-0.702520, 0.492660, -0.513568,
		49.956146, 43.412338, 47.757042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.337669, 43.608929, 48.511078>,  <50.447910, 43.067478, 48.116539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.337669, 43.608929, 48.511078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.007568, 43.492661, 48.317390>,  <49.809509, 43.422901, 48.201180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.007568, 43.492661, 48.317390>,  <50.337669, 43.608929, 48.511078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.007568, 43.492661, 48.317390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498772, -0.027074, 0.866310,
		-0.264919, 0.956441, -0.122634,
		-0.825254, -0.290669, -0.484219,
		49.759991, 43.405460, 48.172127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.851143, 43.982456, 48.896114>,  <50.337669, 43.608929, 48.511078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.851143, 43.982456, 48.896114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.631691, 43.740143, 48.665627>,  <49.500019, 43.594753, 48.527336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.631691, 43.740143, 48.665627>,  <49.851143, 43.982456, 48.896114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.631691, 43.740143, 48.665627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663426, -0.103978, 0.740982,
		-0.508790, 0.788804, -0.344848,
		-0.548633, -0.605786, -0.576216,
		49.467102, 43.558407, 48.492760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.124062, 44.264164, 48.907597>,  <49.851143, 43.982456, 48.896114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.124062, 44.264164, 48.907597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.116844, 43.875252, 48.814350>,  <49.112514, 43.641903, 48.758404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.116844, 43.875252, 48.814350>,  <49.124062, 44.264164, 48.907597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.116844, 43.875252, 48.814350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726585, -0.147417, 0.671075,
		-0.686839, 0.181486, -0.703786,
		-0.018041, -0.972282, -0.233117,
		49.111431, 43.583569, 48.744415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.474998, 44.033695, 48.957901>,  <49.124062, 44.264164, 48.907597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.474998, 44.033695, 48.957901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.649612, 43.673981, 48.968639>,  <48.754379, 43.458153, 48.975082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.649612, 43.673981, 48.968639>,  <48.474998, 44.033695, 48.957901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.649612, 43.673981, 48.968639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643112, -0.291035, 0.708312,
		-0.629164, -0.326465, -0.705389,
		0.436532, -0.899288, 0.026845,
		48.780571, 43.404194, 48.976692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.924530, 43.596931, 49.008305>,  <48.474998, 44.033695, 48.957901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.924530, 43.596931, 49.008305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.235069, 43.376480, 49.130646>,  <48.421391, 43.244209, 49.204048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.235069, 43.376480, 49.130646>,  <47.924530, 43.596931, 49.008305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.235069, 43.376480, 49.130646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603147, -0.508660, 0.614394,
		-0.183038, -0.661453, -0.727308,
		0.776345, -0.551131, 0.305849,
		48.467972, 43.211140, 49.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.694824, 42.910103, 49.015278>,  <47.924530, 43.596931, 49.008305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.694824, 42.910103, 49.015278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.001457, 42.924843, 49.271713>,  <48.185436, 42.933685, 49.425575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.001457, 42.924843, 49.271713>,  <47.694824, 42.910103, 49.015278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.001457, 42.924843, 49.271713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564158, -0.438216, 0.699780,
		0.306723, -0.898114, -0.315138,
		0.766581, 0.036851, 0.641089,
		48.231430, 42.935898, 49.464039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702873, 42.211571, 49.392067>,  <47.694824, 42.910103, 49.015278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702873, 42.211571, 49.392067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.916481, 42.450668, 49.631241>,  <48.044643, 42.594128, 49.774746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.916481, 42.450668, 49.631241>,  <47.702873, 42.211571, 49.392067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.916481, 42.450668, 49.631241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303070, -0.524883, 0.795391,
		0.789287, -0.605968, -0.099137,
		0.534017, 0.597746, 0.597934,
		48.076687, 42.629993, 49.810619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989239, 41.738960, 49.948727>,  <47.702873, 42.211571, 49.392067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989239, 41.738960, 49.948727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.999428, 42.116524, 50.080410>,  <48.005539, 42.343063, 50.159420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.999428, 42.116524, 50.080410>,  <47.989239, 41.738960, 49.948727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.999428, 42.116524, 50.080410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359412, -0.298652, 0.884099,
		0.932831, -0.140840, 0.331647,
		0.025470, 0.943913, 0.329211,
		48.007069, 42.399696, 50.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.294296, 41.660107, 50.660725>,  <47.989239, 41.738960, 49.948727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.294296, 41.660107, 50.660725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.094482, 42.006569, 50.654446>,  <47.974594, 42.214447, 50.650677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.094482, 42.006569, 50.654446>,  <48.294296, 41.660107, 50.660725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.094482, 42.006569, 50.654446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367515, -0.195471, 0.909243,
		0.784476, 0.459965, 0.415968,
		-0.499530, 0.866154, -0.015702,
		47.944622, 42.266415, 50.649734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.260635, 41.988785, 51.365971>,  <48.294296, 41.660107, 50.660725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.260635, 41.988785, 51.365971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.946190, 42.157349, 51.185108>,  <47.757523, 42.258488, 51.076591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.946190, 42.157349, 51.185108>,  <48.260635, 41.988785, 51.365971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946190, 42.157349, 51.185108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554374, -0.157244, 0.817278,
		0.273306, 0.893136, 0.357228,
		-0.786113, 0.421405, -0.452156,
		47.710358, 42.283772, 51.049461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775692, 42.226181, 51.876328>,  <48.260635, 41.988785, 51.365971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775692, 42.226181, 51.876328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.519943, 42.243134, 51.569237>,  <47.366493, 42.253304, 51.384983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.519943, 42.243134, 51.569237>,  <47.775692, 42.226181, 51.876328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519943, 42.243134, 51.569237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754955, -0.223866, 0.616382,
		-0.145747, 0.973698, 0.175127,
		-0.639375, 0.042377, -0.767726,
		47.328129, 42.255848, 51.338921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211468, 42.616970, 52.141682>,  <47.775692, 42.226181, 51.876328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211468, 42.616970, 52.141682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.050430, 42.434608, 51.824173>,  <46.953808, 42.325191, 51.633667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.050430, 42.434608, 51.824173>,  <47.211468, 42.616970, 52.141682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.050430, 42.434608, 51.824173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866506, -0.089750, 0.491032,
		-0.295103, 0.885494, -0.358908,
		-0.402593, -0.455901, -0.793771,
		46.929653, 42.297836, 51.586040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530231, 42.981499, 51.937485>,  <47.211468, 42.616970, 52.141682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530231, 42.981499, 51.937485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.543060, 42.614563, 51.778763>,  <46.550758, 42.394402, 51.683529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.543060, 42.614563, 51.778763>,  <46.530231, 42.981499, 51.937485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543060, 42.614563, 51.778763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981499, -0.103881, 0.160836,
		-0.188762, 0.384306, -0.903702,
		0.032068, -0.917343, -0.396804,
		46.552681, 42.339359, 51.659721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960522, 42.917587, 51.603630>,  <46.530231, 42.981499, 51.937485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960522, 42.917587, 51.603630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.047897, 42.535179, 51.681911>,  <46.100323, 42.305733, 51.728882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.047897, 42.535179, 51.681911>,  <45.960522, 42.917587, 51.603630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047897, 42.535179, 51.681911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962166, -0.177539, 0.206678,
		-0.162843, -0.233453, -0.958635,
		0.218444, -0.956023, 0.195710,
		46.113430, 42.248371, 51.740623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346012, 42.571171, 51.267658>,  <45.960522, 42.917587, 51.603630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346012, 42.571171, 51.267658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.511688, 42.327866, 51.538498>,  <45.611095, 42.181885, 51.701004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.511688, 42.327866, 51.538498>,  <45.346012, 42.571171, 51.267658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511688, 42.327866, 51.538498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899132, -0.389039, 0.200527,
		0.141447, -0.691860, -0.708041,
		0.414192, -0.608258, 0.677101,
		45.635944, 42.145390, 51.741627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971088, 41.989780, 51.235889>,  <45.346012, 42.571171, 51.267658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971088, 41.989780, 51.235889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.161446, 41.893692, 51.574314>,  <45.275661, 41.836040, 51.777370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.161446, 41.893692, 51.574314>,  <44.971088, 41.989780, 51.235889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161446, 41.893692, 51.574314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792916, -0.533408, 0.294551,
		0.380538, -0.811030, -0.444321,
		0.475894, -0.240221, 0.846061,
		45.304214, 41.821625, 51.828133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736786, 41.319546, 51.442265>,  <44.971088, 41.989780, 51.235889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736786, 41.319546, 51.442265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.881870, 41.465256, 51.785366>,  <44.968922, 41.552681, 51.991226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.881870, 41.465256, 51.785366>,  <44.736786, 41.319546, 51.442265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881870, 41.465256, 51.785366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784265, -0.377842, 0.492101,
		0.503354, -0.851200, 0.148637,
		0.362715, 0.364272, 0.857755,
		44.990685, 41.574539, 52.042694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786369, 40.791409, 52.040760>,  <44.736786, 41.319546, 51.442265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786369, 40.791409, 52.040760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.790985, 41.148163, 52.221607>,  <44.793755, 41.362213, 52.330116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.790985, 41.148163, 52.221607>,  <44.786369, 40.791409, 52.040760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790985, 41.148163, 52.221607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621095, -0.347960, 0.702257,
		0.783650, -0.288913, 0.549929,
		0.011538, 0.891882, 0.452121,
		44.794445, 41.415726, 52.357243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982498, 40.772934, 52.709545>,  <44.786369, 40.791409, 52.040760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982498, 40.772934, 52.709545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.770401, 41.112053, 52.713394>,  <44.643143, 41.315525, 52.715706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.770401, 41.112053, 52.713394>,  <44.982498, 40.772934, 52.709545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770401, 41.112053, 52.713394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416077, -0.270088, 0.868293,
		0.738733, 0.456397, 0.495959,
		-0.530238, 0.847794, 0.009626,
		44.611328, 41.366390, 52.716282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967453, 40.944805, 53.501518>,  <44.982498, 40.772934, 52.709545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967453, 40.944805, 53.501518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.708939, 41.213280, 53.356289>,  <44.553829, 41.374367, 53.269150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.708939, 41.213280, 53.356289>,  <44.967453, 40.944805, 53.501518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708939, 41.213280, 53.356289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403376, 0.103398, 0.909174,
		0.647768, 0.734040, 0.203917,
		-0.646285, 0.671189, -0.363072,
		44.515053, 41.414635, 53.247368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997234, 41.557941, 53.771973>,  <44.967453, 40.944805, 53.501518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997234, 41.557941, 53.771973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.616432, 41.543678, 53.650375>,  <44.387951, 41.535122, 53.577419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.616432, 41.543678, 53.650375>,  <44.997234, 41.557941, 53.771973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616432, 41.543678, 53.650375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305044, 0.029167, 0.951891,
		-0.025075, 0.998938, -0.038644,
		-0.952008, -0.035656, -0.303989,
		44.330830, 41.532982, 53.559177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690964, 41.947163, 54.123901>,  <44.997234, 41.557941, 53.771973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690964, 41.947163, 54.123901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.352318, 41.785751, 53.985104>,  <44.149132, 41.688904, 53.901825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.352318, 41.785751, 53.985104>,  <44.690964, 41.947163, 54.123901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352318, 41.785751, 53.985104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393000, 0.034356, 0.918896,
		-0.358883, 0.914320, -0.187674,
		-0.846613, -0.403532, -0.346998,
		44.098335, 41.664692, 53.881004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198990, 42.350399, 54.319595>,  <44.690964, 41.947163, 54.123901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198990, 42.350399, 54.319595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007591, 42.006386, 54.248726>,  <43.892754, 41.799980, 54.206203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007591, 42.006386, 54.248726>,  <44.198990, 42.350399, 54.319595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007591, 42.006386, 54.248726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457166, 0.071729, 0.886484,
		-0.749694, 0.505178, -0.427498,
		-0.478496, -0.860029, -0.177176,
		43.864044, 41.748379, 54.195572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587555, 42.470623, 54.564220>,  <44.198990, 42.350399, 54.319595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587555, 42.470623, 54.564220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.602165, 42.071205, 54.548328>,  <43.610931, 41.831554, 54.538795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.602165, 42.071205, 54.548328>,  <43.587555, 42.470623, 54.564220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602165, 42.071205, 54.548328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551492, -0.053293, 0.832476,
		-0.833380, -0.008496, -0.552635,
		0.036525, -0.998543, -0.039728,
		43.613121, 41.771641, 54.536411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099205, 42.638844, 54.054165>,  <43.587555, 42.470623, 54.564220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099205, 42.638844, 54.054165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.915016, 42.992172, 54.019058>,  <42.804504, 43.204170, 53.997993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.915016, 42.992172, 54.019058>,  <43.099205, 42.638844, 54.054165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915016, 42.992172, 54.019058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578633, 0.223707, -0.784308,
		-0.673164, -0.411937, -0.614132,
		-0.460471, 0.883325, -0.087768,
		42.776875, 43.257172, 53.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073776, 42.640182, 53.385094>,  <43.099205, 42.638844, 54.054165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073776, 42.640182, 53.385094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.019348, 43.018410, 53.503342>,  <42.986691, 43.245346, 53.574291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.019348, 43.018410, 53.503342>,  <43.073776, 42.640182, 53.385094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019348, 43.018410, 53.503342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596754, 0.316422, -0.737402,
		-0.790803, 0.076073, -0.607325,
		-0.136075, 0.945563, 0.295624,
		42.978527, 43.302078, 53.592030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832806, 43.021721, 52.714699>,  <43.073776, 42.640182, 53.385094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832806, 43.021721, 52.714699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.990112, 43.283928, 52.972576>,  <43.084496, 43.441254, 53.127304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.990112, 43.283928, 52.972576>,  <42.832806, 43.021721, 52.714699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990112, 43.283928, 52.972576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423757, 0.493052, -0.759822,
		-0.815950, 0.572005, -0.083883,
		0.393263, 0.655522, 0.644697,
		43.108089, 43.480583, 53.165985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705292, 43.588795, 52.389256>,  <42.832806, 43.021721, 52.714699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705292, 43.588795, 52.389256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.987671, 43.689758, 52.653961>,  <43.157101, 43.750336, 52.812782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.987671, 43.689758, 52.653961>,  <42.705292, 43.588795, 52.389256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987671, 43.689758, 52.653961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523150, 0.444014, -0.727438,
		-0.477440, 0.859734, 0.181405,
		0.705950, 0.252406, 0.661760,
		43.199455, 43.765480, 52.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804447, 44.267605, 52.332935>,  <42.705292, 43.588795, 52.389256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804447, 44.267605, 52.332935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.144405, 44.114502, 52.477806>,  <43.348381, 44.022640, 52.564728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.144405, 44.114502, 52.477806>,  <42.804447, 44.267605, 52.332935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144405, 44.114502, 52.477806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525487, 0.564466, -0.636586,
		0.039221, 0.731351, 0.680872,
		0.849897, -0.382757, 0.362176,
		43.399376, 43.999676, 52.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
