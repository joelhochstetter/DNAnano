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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.356483, 53.629505, 49.366570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181370, 53.377159, 49.622803>,  <36.076302, 53.225750, 49.776543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181370, 53.377159, 49.622803>,  <36.356483, 53.629505, 49.366570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181370, 53.377159, 49.622803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727524, -0.667196, -0.159872,
		0.528253, 0.396051, 0.751060,
		-0.437787, -0.630867, 0.640585,
		36.050034, 53.187901, 49.814980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802025, 53.465256, 49.991451>,  <36.356483, 53.629505, 49.366570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802025, 53.465256, 49.991451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550602, 53.184639, 49.857132>,  <36.399750, 53.016270, 49.776543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550602, 53.184639, 49.857132>,  <36.802025, 53.465256, 49.991451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550602, 53.184639, 49.857132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739842, -0.672481, 0.020066,
		-0.239892, -0.235823, 0.941721,
		-0.628558, -0.701539, -0.335795,
		36.362034, 52.974178, 49.756393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230198, 53.852375, 50.440697>,  <36.802025, 53.465256, 49.991451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230198, 53.852375, 50.440697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555599, 53.624924, 50.391895>,  <37.750839, 53.488453, 50.362614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555599, 53.624924, 50.391895>,  <37.230198, 53.852375, 50.440697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555599, 53.624924, 50.391895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320709, 0.613634, -0.721526,
		0.485143, 0.547833, 0.681554,
		0.813500, -0.568624, -0.122005,
		37.799648, 53.454338, 50.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547981, 54.141296, 49.827526>,  <37.230198, 53.852375, 50.440697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547981, 54.141296, 49.827526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778126, 53.819817, 49.888226>,  <37.916214, 53.626930, 49.924644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778126, 53.819817, 49.888226>,  <37.547981, 54.141296, 49.827526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778126, 53.819817, 49.888226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610944, 0.298965, -0.733053,
		0.543786, 0.514480, 0.663028,
		0.575364, -0.803697, 0.151746,
		37.950733, 53.578709, 49.933750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226906, 54.487209, 49.973156>,  <37.547981, 54.141296, 49.827526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226906, 54.487209, 49.973156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204025, 54.120518, 49.814999>,  <38.190296, 53.900501, 49.720104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204025, 54.120518, 49.814999>,  <38.226906, 54.487209, 49.973156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204025, 54.120518, 49.814999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668757, 0.258872, -0.696957,
		0.741277, -0.304288, 0.598261,
		-0.057203, -0.916730, -0.395390,
		38.186863, 53.845497, 49.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867569, 54.031281, 50.017975>,  <38.226906, 54.487209, 49.973156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867569, 54.031281, 50.017975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 53.957623, 49.693336>,  <38.512722, 53.913425, 49.498554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 53.957623, 49.693336>,  <38.867569, 54.031281, 50.017975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645790, 53.957623, 49.693336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812132, 0.093263, -0.575972,
		0.181757, -0.978463, 0.097844,
		-0.554443, -0.184149, -0.811592,
		38.479458, 53.902378, 49.449860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667526, 54.562138, 50.559368>,  <38.867569, 54.031281, 50.017975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667526, 54.562138, 50.559368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700882, 54.943405, 50.675652>,  <38.720898, 55.172165, 50.745422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700882, 54.943405, 50.675652>,  <38.667526, 54.562138, 50.559368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700882, 54.943405, 50.675652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754303, -0.251014, 0.606646,
		0.651209, 0.168691, -0.739913,
		0.083393, 0.953171, 0.290706,
		38.725899, 55.229355, 50.762863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135418, 54.588951, 51.305180>,  <38.667526, 54.562138, 50.559368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135418, 54.588951, 51.305180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321114, 54.268166, 51.154804>,  <39.432529, 54.075695, 51.064579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321114, 54.268166, 51.154804>,  <39.135418, 54.588951, 51.305180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321114, 54.268166, 51.154804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554214, -0.068067, 0.829586,
		-0.690890, -0.593477, 0.412862,
		0.464239, -0.801967, -0.375940,
		39.460384, 54.027576, 51.042023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858513, 54.008198, 51.743252>,  <39.135418, 54.588951, 51.305180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858513, 54.008198, 51.743252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215652, 54.034748, 51.565079>,  <39.429935, 54.050678, 51.458176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215652, 54.034748, 51.565079>,  <38.858513, 54.008198, 51.743252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215652, 54.034748, 51.565079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377527, 0.428955, 0.820653,
		0.245541, -0.900884, 0.357935,
		0.892851, 0.066374, -0.445434,
		39.483509, 54.054661, 51.431450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369598, 53.669594, 52.202408>,  <38.858513, 54.008198, 51.743252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369598, 53.669594, 52.202408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566738, 53.938507, 51.981453>,  <39.685020, 54.099854, 51.848881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566738, 53.938507, 51.981453>,  <39.369598, 53.669594, 52.202408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566738, 53.938507, 51.981453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441648, 0.353710, 0.824522,
		0.749697, -0.650328, -0.122586,
		0.492850, 0.672282, -0.552392,
		39.714592, 54.140190, 51.815735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198654, 53.649776, 52.251019>,  <39.369598, 53.669594, 52.202408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198654, 53.649776, 52.251019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017258, 54.000198, 52.185436>,  <39.908421, 54.210449, 52.146088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017258, 54.000198, 52.185436>,  <40.198654, 53.649776, 52.251019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017258, 54.000198, 52.185436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471143, 0.391786, 0.790271,
		0.756552, 0.281136, -0.590417,
		-0.453490, 0.876052, -0.163951,
		39.881210, 54.263016, 52.136250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680790, 54.212231, 52.412952>,  <40.198654, 53.649776, 52.251019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680790, 54.212231, 52.412952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320480, 54.383858, 52.439796>,  <40.104294, 54.486835, 52.455902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320480, 54.383858, 52.439796>,  <40.680790, 54.212231, 52.412952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320480, 54.383858, 52.439796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236749, 0.355614, 0.904151,
		0.364080, 0.830324, -0.421910,
		-0.900775, 0.429070, 0.067106,
		40.050247, 54.512577, 52.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619225, 54.931831, 52.866962>,  <40.680790, 54.212231, 52.412952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619225, 54.931831, 52.866962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621853, 54.547935, 52.979294>,  <40.623432, 54.317600, 53.046692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621853, 54.547935, 52.979294>,  <40.619225, 54.931831, 52.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621853, 54.547935, 52.979294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998262, 0.010149, 0.058050,
		-0.058562, -0.280720, -0.958001,
		0.006573, -0.959736, 0.280826,
		40.623825, 54.260014, 53.063541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892597, 55.557816, 53.233944>,  <40.619225, 54.931831, 52.866962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892597, 55.557816, 53.233944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230335, 55.497440, 53.439583>,  <41.432980, 55.461216, 53.562965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230335, 55.497440, 53.439583>,  <40.892597, 55.557816, 53.233944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230335, 55.497440, 53.439583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139238, -0.864726, -0.482557,
		0.517392, 0.479027, -0.709111,
		0.844345, -0.150936, 0.514101,
		41.483639, 55.452160, 53.593815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564369, 55.541679, 52.836433>,  <40.892597, 55.557816, 53.233944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564369, 55.541679, 52.836433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511497, 55.305359, 53.154800>,  <41.479774, 55.163567, 53.345821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511497, 55.305359, 53.154800>,  <41.564369, 55.541679, 52.836433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511497, 55.305359, 53.154800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010497, -0.802081, -0.597124,
		0.991170, -0.087281, 0.099816,
		-0.132178, -0.590803, 0.795915,
		41.471844, 55.128117, 53.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511215, 55.664276, 52.101696>,  <41.564369, 55.541679, 52.836433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511215, 55.664276, 52.101696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606575, 56.050980, 52.138664>,  <41.663792, 56.283001, 52.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606575, 56.050980, 52.138664>,  <41.511215, 55.664276, 52.101696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606575, 56.050980, 52.138664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860525, -0.254392, 0.441340,
		0.450181, -0.025684, -0.892568,
		0.238398, 0.966760, 0.092421,
		41.678093, 56.341007, 52.166389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171432, 55.976372, 51.684875>,  <41.511215, 55.664276, 52.101696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171432, 55.976372, 51.684875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106541, 56.153625, 52.037537>,  <42.067604, 56.259979, 52.249134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106541, 56.153625, 52.037537>,  <42.171432, 55.976372, 51.684875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106541, 56.153625, 52.037537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860108, -0.374409, 0.346456,
		0.483626, 0.814522, -0.320405,
		-0.162233, 0.443139, 0.881651,
		42.057869, 56.286568, 52.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811741, 56.477451, 51.939560>,  <42.171432, 55.976372, 51.684875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811741, 56.477451, 51.939560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600456, 56.275772, 52.212845>,  <42.473686, 56.154762, 52.376816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600456, 56.275772, 52.212845>,  <42.811741, 56.477451, 51.939560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600456, 56.275772, 52.212845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844323, -0.397232, 0.359618,
		0.090072, 0.766803, 0.635531,
		-0.528210, -0.504202, 0.683209,
		42.441994, 56.124512, 52.417809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744610, 56.809296, 52.565121>,  <42.811741, 56.477451, 51.939560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744610, 56.809296, 52.565121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805794, 56.414795, 52.540115>,  <42.842503, 56.178093, 52.525112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805794, 56.414795, 52.540115>,  <42.744610, 56.809296, 52.565121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805794, 56.414795, 52.540115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847224, 0.098305, 0.522060,
		-0.508738, -0.132819, 0.850614,
		0.152960, -0.986253, -0.062516,
		42.851681, 56.118919, 52.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593628, 56.446487, 53.312263>,  <42.744610, 56.809296, 52.565121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593628, 56.446487, 53.312263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860989, 56.292019, 53.057987>,  <43.021404, 56.199337, 52.905422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860989, 56.292019, 53.057987>,  <42.593628, 56.446487, 53.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860989, 56.292019, 53.057987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737842, 0.236318, 0.632252,
		-0.093930, -0.891643, 0.442887,
		0.668406, -0.386169, -0.635695,
		43.061512, 56.176167, 52.867279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122044, 56.127434, 53.706802>,  <42.593628, 56.446487, 53.312263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122044, 56.127434, 53.706802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306034, 56.221184, 53.364227>,  <43.416428, 56.277435, 53.158684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306034, 56.221184, 53.364227>,  <43.122044, 56.127434, 53.706802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306034, 56.221184, 53.364227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772579, 0.369769, 0.516133,
		0.437653, -0.899077, -0.010986,
		0.459980, 0.234375, -0.856438,
		43.444027, 56.291496, 53.107296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832783, 55.882828, 53.687809>,  <43.122044, 56.127434, 53.706802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832783, 55.882828, 53.687809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803127, 56.198662, 53.444153>,  <43.785332, 56.388165, 53.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803127, 56.198662, 53.444153>,  <43.832783, 55.882828, 53.687809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803127, 56.198662, 53.444153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751171, 0.445983, 0.486664,
		0.655931, -0.421488, -0.626181,
		-0.074143, 0.789587, -0.609143,
		43.780884, 56.435539, 53.261410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481823, 55.901817, 53.446842>,  <43.832783, 55.882828, 53.687809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481823, 55.901817, 53.446842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289528, 56.249825, 53.490585>,  <44.174152, 56.458630, 53.516830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289528, 56.249825, 53.490585>,  <44.481823, 55.901817, 53.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289528, 56.249825, 53.490585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745294, 0.339708, 0.573703,
		0.461982, 0.357306, -0.811730,
		-0.480739, 0.870018, 0.109359,
		44.145306, 56.510830, 53.523392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769165, 56.488354, 53.229034>,  <44.481823, 55.901817, 53.446842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769165, 56.488354, 53.229034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567455, 56.642960, 53.537918>,  <44.446430, 56.735725, 53.723248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567455, 56.642960, 53.537918>,  <44.769165, 56.488354, 53.229034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567455, 56.642960, 53.537918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856344, 0.339056, 0.389506,
		-0.111272, 0.857698, -0.501970,
		-0.504274, 0.386518, 0.772212,
		44.416172, 56.758915, 53.769581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956448, 57.237152, 53.310371>,  <44.769165, 56.488354, 53.229034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956448, 57.237152, 53.310371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853256, 57.055397, 53.651424>,  <44.791340, 56.946342, 53.856056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853256, 57.055397, 53.651424>,  <44.956448, 57.237152, 53.310371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853256, 57.055397, 53.651424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868633, 0.277285, 0.410597,
		-0.422992, 0.846548, 0.323163,
		-0.257982, -0.454389, 0.852629,
		44.775860, 56.919079, 53.907211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415867, 57.621666, 53.657143>,  <44.956448, 57.237152, 53.310371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415867, 57.621666, 53.657143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341919, 57.308842, 53.895203>,  <45.297550, 57.121147, 54.038040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341919, 57.308842, 53.895203>,  <45.415867, 57.621666, 53.657143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341919, 57.308842, 53.895203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924090, 0.067781, 0.376117,
		-0.334485, 0.619509, 0.710161,
		-0.184872, -0.782058, 0.595154,
		45.286457, 57.074223, 54.073750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705841, 57.752445, 54.357323>,  <45.415867, 57.621666, 53.657143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705841, 57.752445, 54.357323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663700, 57.356964, 54.314667>,  <45.638416, 57.119675, 54.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663700, 57.356964, 54.314667>,  <45.705841, 57.752445, 54.357323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663700, 57.356964, 54.314667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912365, -0.138759, 0.385144,
		-0.395589, -0.056717, 0.916675,
		-0.105352, -0.988701, -0.106638,
		45.632095, 57.060352, 54.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785000, 57.430538, 55.005505>,  <45.705841, 57.752445, 54.357323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785000, 57.430538, 55.005505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884571, 57.201736, 54.692879>,  <45.944313, 57.064453, 54.505302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884571, 57.201736, 54.692879>,  <45.785000, 57.430538, 55.005505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884571, 57.201736, 54.692879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813122, -0.314979, 0.489510,
		-0.526180, -0.757361, 0.386704,
		0.248932, -0.572008, -0.781562,
		45.959251, 57.030132, 54.458408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933174, 56.619850, 55.050022>,  <45.785000, 57.430538, 55.005505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933174, 56.619850, 55.050022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171776, 56.803261, 54.786526>,  <46.314938, 56.913307, 54.628429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171776, 56.803261, 54.786526>,  <45.933174, 56.619850, 55.050022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171776, 56.803261, 54.786526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799165, -0.263382, 0.540338,
		0.074259, -0.848755, -0.523545,
		0.596507, 0.458524, -0.658737,
		46.350727, 56.940819, 54.588905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303558, 56.036831, 54.709953>,  <45.933174, 56.619850, 55.050022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303558, 56.036831, 54.709953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469757, 56.399414, 54.740166>,  <46.569477, 56.616962, 54.758293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469757, 56.399414, 54.740166>,  <46.303558, 56.036831, 54.709953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469757, 56.399414, 54.740166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575380, -0.326232, 0.750007,
		0.704488, -0.268164, -0.657103,
		0.415493, 0.906455, 0.075531,
		46.594406, 56.671352, 54.762825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075340, 55.919144, 54.570194>,  <46.303558, 56.036831, 54.709953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075340, 55.919144, 54.570194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941338, 56.184109, 54.838219>,  <46.860935, 56.343090, 54.999031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941338, 56.184109, 54.838219>,  <47.075340, 55.919144, 54.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941338, 56.184109, 54.838219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617877, -0.382442, 0.686998,
		0.711336, 0.644161, -0.281171,
		-0.335005, 0.662416, 0.670058,
		46.840836, 56.382832, 55.039234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573322, 56.366646, 54.754230>,  <47.075340, 55.919144, 54.570194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573322, 56.366646, 54.754230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332249, 56.267944, 55.057777>,  <47.187603, 56.208725, 55.239906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332249, 56.267944, 55.057777>,  <47.573322, 56.366646, 54.754230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332249, 56.267944, 55.057777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775894, -0.403391, 0.485041,
		0.186436, 0.881130, 0.434571,
		-0.602686, -0.246752, 0.758870,
		47.151443, 56.193920, 55.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742329, 56.709312, 55.458595>,  <47.573322, 56.366646, 54.754230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742329, 56.709312, 55.458595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566097, 56.351250, 55.485687>,  <47.460358, 56.136414, 55.501942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566097, 56.351250, 55.485687>,  <47.742329, 56.709312, 55.458595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566097, 56.351250, 55.485687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848181, -0.390371, 0.358049,
		-0.294070, 0.215197, 0.931243,
		-0.440582, -0.895154, 0.067729,
		47.433922, 56.082703, 55.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.828171, 56.587467, 56.179890>,  <47.742329, 56.709312, 55.458595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.828171, 56.587467, 56.179890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.886482, 56.273247, 55.939339>,  <47.921467, 56.084713, 55.795010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.886482, 56.273247, 55.939339>,  <47.828171, 56.587467, 56.179890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.886482, 56.273247, 55.939339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855959, -0.204653, 0.474816,
		-0.496068, -0.583970, 0.642570,
		0.145774, -0.785555, -0.601377,
		47.930214, 56.037579, 55.758926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.816841, 55.870193, 56.437901>,  <47.828171, 56.587467, 56.179890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.816841, 55.870193, 56.437901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071175, 55.896862, 56.130325>,  <48.223774, 55.912861, 55.945782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071175, 55.896862, 56.130325>,  <47.816841, 55.870193, 56.437901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.071175, 55.896862, 56.130325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760890, -0.221241, 0.610000,
		-0.129453, -0.972938, -0.191401,
		0.635837, 0.066669, -0.768938,
		48.261925, 55.916862, 55.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.198975, 55.291653, 56.476418>,  <47.816841, 55.870193, 56.437901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.198975, 55.291653, 56.476418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.390228, 55.578217, 56.273186>,  <48.504982, 55.750156, 56.151245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.390228, 55.578217, 56.273186>,  <48.198975, 55.291653, 56.476418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.390228, 55.578217, 56.273186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812970, -0.142096, 0.564702,
		0.332361, -0.683058, -0.650360,
		0.478137, 0.716408, -0.508078,
		48.533669, 55.793140, 56.120762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.859184, 55.068665, 56.094971>,  <48.198975, 55.291653, 56.476418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.859184, 55.068665, 56.094971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.826759, 55.433365, 56.256035>,  <48.807304, 55.652187, 56.352673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.826759, 55.433365, 56.256035>,  <48.859184, 55.068665, 56.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.826759, 55.433365, 56.256035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683249, -0.243295, 0.688461,
		0.725672, 0.330925, -0.603232,
		-0.081066, 0.911754, 0.402657,
		48.802441, 55.706890, 56.376831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.544113, 55.451481, 56.150211>,  <48.859184, 55.068665, 56.094971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.544113, 55.451481, 56.150211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.297005, 55.569824, 56.441643>,  <49.148739, 55.640831, 56.616501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.297005, 55.569824, 56.441643>,  <49.544113, 55.451481, 56.150211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.297005, 55.569824, 56.441643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724150, -0.147137, 0.673763,
		0.306541, 0.943831, -0.123351,
		-0.617769, 0.295861, 0.728579,
		49.111675, 55.658581, 56.660217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.857155, 55.990360, 56.555878>,  <49.544113, 55.451481, 56.150211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.857155, 55.990360, 56.555878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.604164, 55.795963, 56.797134>,  <49.452370, 55.679325, 56.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.604164, 55.795963, 56.797134>,  <49.857155, 55.990360, 56.555878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.604164, 55.795963, 56.797134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731690, -0.119357, 0.671106,
		-0.254164, 0.865774, 0.431088,
		-0.632479, -0.485994, 0.603142,
		49.414421, 55.650166, 56.978077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.006054, 56.181293, 57.268372>,  <49.857155, 55.990360, 56.555878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.006054, 56.181293, 57.268372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.842495, 55.824425, 57.191612>,  <49.744358, 55.610302, 57.145557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.842495, 55.824425, 57.191612>,  <50.006054, 56.181293, 57.268372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.842495, 55.824425, 57.191612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592032, -0.419368, 0.688207,
		-0.694477, 0.167798, 0.699675,
		-0.408901, -0.892174, -0.191899,
		49.719826, 55.556774, 57.134041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.866882, 55.935680, 57.876091>,  <50.006054, 56.181293, 57.268372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.866882, 55.935680, 57.876091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.851837, 55.609978, 57.644379>,  <49.842812, 55.414555, 57.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.851837, 55.609978, 57.644379>,  <49.866882, 55.935680, 57.876091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.851837, 55.609978, 57.644379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461206, -0.528404, 0.712796,
		-0.886496, -0.240361, 0.395414,
		-0.037610, -0.814258, -0.579284,
		49.840553, 55.365700, 57.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.458733, 55.318062, 58.255085>,  <49.866882, 55.935680, 57.876091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.458733, 55.318062, 58.255085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759377, 55.203739, 58.017296>,  <49.939762, 55.135147, 57.874622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759377, 55.203739, 58.017296>,  <49.458733, 55.318062, 58.255085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.759377, 55.203739, 58.017296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434004, -0.464403, 0.771991,
		-0.496722, -0.838237, -0.225004,
		0.751604, -0.285812, -0.594478,
		49.984859, 55.117996, 57.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.607544, 54.609722, 58.037476>,  <49.458733, 55.318062, 58.255085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.607544, 54.609722, 58.037476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.947441, 54.817474, 58.073662>,  <50.151379, 54.942123, 58.095371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.947441, 54.817474, 58.073662>,  <49.607544, 54.609722, 58.037476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.947441, 54.817474, 58.073662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295944, -0.611938, 0.733450,
		0.436294, -0.596473, -0.673697,
		0.849744, 0.519376, 0.090462,
		50.202366, 54.973286, 58.100800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.193596, 54.221313, 58.152157>,  <49.607544, 54.609722, 58.037476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.193596, 54.221313, 58.152157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.286709, 54.550323, 58.359718>,  <50.342579, 54.747730, 58.484257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.286709, 54.550323, 58.359718>,  <50.193596, 54.221313, 58.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.286709, 54.550323, 58.359718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241625, -0.565748, 0.788382,
		0.942034, -0.058144, -0.330442,
		0.232787, 0.822525, 0.518904,
		50.356544, 54.797081, 58.515388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.765930, 54.053619, 58.594715>,  <50.193596, 54.221313, 58.152157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.765930, 54.053619, 58.594715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559441, 54.345818, 58.773552>,  <50.435547, 54.521137, 58.880856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559441, 54.345818, 58.773552>,  <50.765930, 54.053619, 58.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.559441, 54.345818, 58.773552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303548, -0.332088, 0.893071,
		0.800859, 0.596737, -0.050310,
		-0.516221, 0.730495, 0.447094,
		50.404575, 54.564964, 58.907681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.220470, 54.394184, 58.948204>,  <50.765930, 54.053619, 58.594715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.220470, 54.394184, 58.948204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.861343, 54.400620, 59.124237>,  <50.645866, 54.404480, 59.229855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.861343, 54.400620, 59.124237>,  <51.220470, 54.394184, 58.948204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.861343, 54.400620, 59.124237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413446, -0.313290, 0.854934,
		0.151631, 0.949521, 0.274623,
		-0.897814, 0.016093, 0.440080,
		50.591999, 54.405449, 59.256260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.943413, 54.100147, 59.162819>,  <51.220470, 54.394184, 58.948204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.943413, 54.100147, 59.162819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.970478, 54.111927, 58.763908>,  <51.986717, 54.118996, 58.524563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.970478, 54.111927, 58.763908>,  <51.943413, 54.100147, 59.162819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.970478, 54.111927, 58.763908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455628, -0.890158, 0.004627,
		-0.887595, -0.454698, -0.073646,
		0.067660, 0.029448, -0.997274,
		51.990776, 54.120762, 58.464725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.394276, 54.098969, 59.760677>,  <51.943413, 54.100147, 59.162819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.394276, 54.098969, 59.760677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.613033, 53.890083, 59.498932>,  <52.744289, 53.764751, 59.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.613033, 53.890083, 59.498932>,  <52.394276, 54.098969, 59.760677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.613033, 53.890083, 59.498932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731730, 0.677936, 0.070530,
		0.406788, -0.517393, 0.752880,
		0.546896, -0.522214, -0.654368,
		52.777103, 53.733418, 59.302620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.944752, 53.842915, 60.050507>,  <52.394276, 54.098969, 59.760677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.944752, 53.842915, 60.050507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.980225, 53.942932, 59.664841>,  <53.001507, 54.002941, 59.433441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.980225, 53.942932, 59.664841>,  <52.944752, 53.842915, 60.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.980225, 53.942932, 59.664841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479190, 0.837891, 0.261372,
		0.873220, -0.485197, -0.045511,
		0.088683, 0.250043, -0.964165,
		53.006828, 54.017944, 59.375591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.607513, 53.995018, 59.885841>,  <52.944752, 53.842915, 60.050507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.607513, 53.995018, 59.885841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.439594, 54.198730, 59.585335>,  <53.338844, 54.320957, 59.405029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.439594, 54.198730, 59.585335>,  <53.607513, 53.995018, 59.885841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.439594, 54.198730, 59.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616179, 0.767670, 0.176086,
		0.666403, -0.388996, -0.636073,
		-0.419797, 0.509279, -0.751269,
		53.313656, 54.351513, 59.359955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.111687, 54.214661, 59.384922>,  <53.607513, 53.995018, 59.885841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.111687, 54.214661, 59.384922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.808975, 54.475204, 59.362984>,  <53.627346, 54.631531, 59.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.808975, 54.475204, 59.362984>,  <54.111687, 54.214661, 59.384922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.808975, 54.475204, 59.362984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644991, 0.757731, 0.099142,
		0.106139, 0.039652, -0.993560,
		-0.756783, 0.651361, -0.054849,
		53.581940, 54.670612, 59.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.141235, 54.818855, 58.920525>,  <54.111687, 54.214661, 59.384922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.141235, 54.818855, 58.920525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877579, 54.972546, 59.179108>,  <53.719383, 55.064758, 59.334259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877579, 54.972546, 59.179108>,  <54.141235, 54.818855, 58.920525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.877579, 54.972546, 59.179108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562679, 0.822295, 0.084986,
		-0.498925, 0.419766, -0.758202,
		-0.659140, 0.384223, 0.646457,
		53.679836, 55.087811, 59.373043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.549335, 54.759056, 59.532829>,  <54.141235, 54.818855, 58.920525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.549335, 54.759056, 59.532829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.568665, 54.554672, 59.876129>,  <54.580261, 54.432041, 60.082108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.568665, 54.554672, 59.876129>,  <54.549335, 54.759056, 59.532829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.568665, 54.554672, 59.876129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959854, -0.213938, -0.181413,
		0.276306, 0.832556, 0.480109,
		0.048323, -0.510960, 0.858245,
		54.583160, 54.401382, 60.133602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.254108, 54.972408, 59.906624>,  <54.549335, 54.759056, 59.532829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.254108, 54.972408, 59.906624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105217, 54.631229, 60.053001>,  <55.015881, 54.426521, 60.140827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105217, 54.631229, 60.053001>,  <55.254108, 54.972408, 59.906624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.105217, 54.631229, 60.053001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900977, -0.426755, -0.078234,
		0.222900, 0.300590, 0.927341,
		-0.372231, -0.852951, 0.365948,
		54.993549, 54.375343, 60.162785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.624882, 54.793358, 60.562031>,  <55.254108, 54.972408, 59.906624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.624882, 54.793358, 60.562031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.534325, 54.506824, 60.298027>,  <55.479988, 54.334904, 60.139626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.534325, 54.506824, 60.298027>,  <55.624882, 54.793358, 60.562031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.534325, 54.506824, 60.298027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973093, -0.136537, -0.185599,
		0.042836, -0.684265, 0.727974,
		-0.226395, -0.716337, -0.660005,
		55.466408, 54.291924, 60.100025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.907749, 54.072742, 60.651608>,  <55.624882, 54.793358, 60.562031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.907749, 54.072742, 60.651608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893768, 54.216202, 60.278481>,  <55.885380, 54.302277, 60.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893768, 54.216202, 60.278481>,  <55.907749, 54.072742, 60.651608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.893768, 54.216202, 60.278481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990294, -0.113213, -0.080631,
		-0.134526, -0.926581, -0.351213,
		-0.034950, 0.358651, -0.932817,
		55.883282, 54.323795, 59.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.527046, 53.779800, 60.369904>,  <55.907749, 54.072742, 60.651608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.527046, 53.779800, 60.369904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.430138, 54.061310, 60.102768>,  <56.371990, 54.230213, 59.942486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.430138, 54.061310, 60.102768>,  <56.527046, 53.779800, 60.369904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.430138, 54.061310, 60.102768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925102, -0.039873, -0.377620,
		-0.292387, -0.709307, -0.641399,
		-0.242274, 0.703771, -0.667840,
		56.357456, 54.272442, 59.902416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.093403, 53.320850, 59.996967>,  <56.527046, 53.779800, 60.369904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.093403, 53.320850, 59.996967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.463814, 53.436028, 60.094589>,  <57.686062, 53.505135, 60.153160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.463814, 53.436028, 60.094589>,  <57.093403, 53.320850, 59.996967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.463814, 53.436028, 60.094589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373079, -0.600047, -0.707641,
		-0.057321, 0.746345, -0.663086,
		0.926027, 0.287946, 0.244051,
		57.741623, 53.522411, 60.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.475380, 53.567314, 59.468910>,  <57.093403, 53.320850, 59.996967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.475380, 53.567314, 59.468910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.768265, 53.422165, 59.699455>,  <57.943996, 53.335075, 59.837780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.768265, 53.422165, 59.699455>,  <57.475380, 53.567314, 59.468910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.768265, 53.422165, 59.699455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326326, -0.555867, -0.764541,
		0.597814, 0.747885, -0.288595,
		0.732209, -0.362877, 0.576360,
		57.987926, 53.313301, 59.872364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.939445, 54.068691, 59.007977>,  <57.475380, 53.567314, 59.468910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.939445, 54.068691, 59.007977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.308350, 54.096069, 59.160164>,  <58.529690, 54.112495, 59.251476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.308350, 54.096069, 59.160164>,  <57.939445, 54.068691, 59.007977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.308350, 54.096069, 59.160164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385308, -0.242464, -0.890364,
		0.031311, 0.967743, -0.249986,
		0.922257, 0.068444, 0.380471,
		58.585026, 54.116604, 59.274303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.466927, 54.434757, 58.527985>,  <57.939445, 54.068691, 59.007977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.466927, 54.434757, 58.527985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.635986, 54.136669, 58.734291>,  <58.737423, 53.957817, 58.858074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.635986, 54.136669, 58.734291>,  <58.466927, 54.434757, 58.527985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.635986, 54.136669, 58.734291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300202, -0.421846, -0.855525,
		0.855131, 0.516418, 0.045426,
		0.422646, -0.745224, 0.515764,
		58.762779, 53.913101, 58.889019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.091961, 54.265209, 58.116550>,  <58.466927, 54.434757, 58.527985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.091961, 54.265209, 58.116550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.993248, 53.969254, 58.366882>,  <58.934021, 53.791679, 58.517082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.993248, 53.969254, 58.366882>,  <59.091961, 54.265209, 58.116550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.993248, 53.969254, 58.366882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283452, -0.672671, -0.683498,
		0.926690, 0.008718, 0.375726,
		-0.246781, -0.739891, 0.625828,
		58.919212, 53.747288, 58.554630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.692505, 53.837601, 58.204624>,  <59.091961, 54.265209, 58.116550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.692505, 53.837601, 58.204624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.323524, 53.683922, 58.189285>,  <59.102135, 53.591717, 58.180084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.323524, 53.683922, 58.189285>,  <59.692505, 53.837601, 58.204624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.323524, 53.683922, 58.189285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285272, -0.611261, -0.738228,
		0.260185, -0.691921, 0.673461,
		-0.922456, -0.384195, -0.038345,
		59.046787, 53.568665, 58.177780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.314350, 53.481007, 58.290207>,  <59.692505, 53.837601, 58.204624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.314350, 53.481007, 58.290207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.606712, 53.664608, 58.492233>,  <60.782131, 53.774769, 58.613449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.606712, 53.664608, 58.492233>,  <60.314350, 53.481007, 58.290207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.606712, 53.664608, 58.492233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038670, 0.711006, -0.702122,
		-0.681380, 0.532717, 0.501930,
		0.730908, 0.459002, 0.505066,
		60.825985, 53.802307, 58.643753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.283409, 54.196262, 58.542706>,  <60.314350, 53.481007, 58.290207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.283409, 54.196262, 58.542706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.611336, 54.024685, 58.390968>,  <60.808094, 53.921738, 58.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.611336, 54.024685, 58.390968>,  <60.283409, 54.196262, 58.542706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.611336, 54.024685, 58.390968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096398, 0.549639, -0.829822,
		0.564447, 0.716874, 0.409257,
		0.819821, -0.428939, -0.379348,
		60.857281, 53.896004, 58.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.785374, 54.688213, 58.441479>,  <60.283409, 54.196262, 58.542706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.785374, 54.688213, 58.441479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.875961, 54.395088, 58.184822>,  <60.930313, 54.219215, 58.030827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.875961, 54.395088, 58.184822>,  <60.785374, 54.688213, 58.441479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.875961, 54.395088, 58.184822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043087, 0.650574, -0.758220,
		0.973065, 0.199358, 0.115759,
		0.226467, -0.732810, -0.641640,
		60.943901, 54.175243, 57.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.857605, 55.183323, 58.969913>,  <60.785374, 54.688213, 58.441479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.857605, 55.183323, 58.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087761, 55.139023, 58.645775>,  <61.225857, 55.112442, 58.451294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087761, 55.139023, 58.645775>,  <60.857605, 55.183323, 58.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.087761, 55.139023, 58.645775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160903, 0.986755, -0.020609,
		0.801894, -0.118529, 0.585590,
		0.575392, -0.110749, -0.810345,
		61.260380, 55.105797, 58.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.522095, 55.446976, 59.032593>,  <60.857605, 55.183323, 58.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.522095, 55.446976, 59.032593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395264, 55.465801, 58.653702>,  <61.319164, 55.477097, 58.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395264, 55.465801, 58.653702>,  <61.522095, 55.446976, 59.032593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.395264, 55.465801, 58.653702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215732, 0.976165, -0.023716,
		0.923537, -0.211868, -0.319675,
		-0.317080, 0.047061, -0.947230,
		61.300140, 55.479919, 58.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.980301, 55.981411, 58.661179>,  <61.522095, 55.446976, 59.032593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.980301, 55.981411, 58.661179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.625198, 55.922512, 58.486725>,  <61.412136, 55.887173, 58.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.625198, 55.922512, 58.486725>,  <61.980301, 55.981411, 58.661179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.625198, 55.922512, 58.486725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178032, 0.983557, 0.030322,
		0.424497, 0.104564, -0.899371,
		-0.887754, -0.147246, -0.436133,
		61.358871, 55.878338, 58.355885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.491577, 56.492424, 58.259777>,  <61.980301, 55.981411, 58.661179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.491577, 56.492424, 58.259777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.093536, 56.469116, 58.227814>,  <61.854713, 56.455132, 58.208637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.093536, 56.469116, 58.227814>,  <62.491577, 56.492424, 58.259777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.093536, 56.469116, 58.227814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033343, 0.958358, -0.283615,
		0.093105, -0.279560, -0.955603,
		-0.995098, -0.058269, -0.079907,
		61.795006, 56.451637, 58.203842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.885719, 56.871037, 58.599098>,  <62.491577, 56.492424, 58.259777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.885719, 56.871037, 58.599098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.522354, 56.972778, 58.731819>,  <61.304337, 57.033825, 58.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.522354, 56.972778, 58.731819>,  <61.885719, 56.871037, 58.599098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.522354, 56.972778, 58.731819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007742, 0.803738, -0.594932,
		-0.418007, -0.537874, -0.732094,
		-0.908411, 0.254353, 0.331804,
		61.249832, 57.049084, 58.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.515720, 57.216026, 58.221378>,  <61.885719, 56.871037, 58.599098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.515720, 57.216026, 58.221378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412567, 57.408936, 58.556259>,  <62.350677, 57.524681, 58.757187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412567, 57.408936, 58.556259>,  <62.515720, 57.216026, 58.221378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.412567, 57.408936, 58.556259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903717, 0.426899, 0.032451,
		-0.341750, 0.764963, -0.545929,
		-0.257880, 0.482275, 0.837203,
		62.335201, 57.553619, 58.807419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.473820, 58.042706, 58.175484>,  <62.515720, 57.216026, 58.221378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.473820, 58.042706, 58.175484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.569092, 57.913208, 58.541756>,  <62.626255, 57.835510, 58.761517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.569092, 57.913208, 58.541756>,  <62.473820, 58.042706, 58.175484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.569092, 57.913208, 58.541756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830221, 0.557112, -0.018978,
		-0.503990, 0.764733, 0.401470,
		0.238177, -0.323743, 0.915676,
		62.640545, 57.816086, 58.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.208275, 58.259697, 57.932415>,  <62.473820, 58.042706, 58.175484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.208275, 58.259697, 57.932415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.477913, 58.436150, 58.169395>,  <63.639694, 58.542023, 58.311584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.477913, 58.436150, 58.169395>,  <63.208275, 58.259697, 57.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.477913, 58.436150, 58.169395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722556, -0.227330, -0.652866,
		-0.153322, 0.868171, -0.471987,
		0.674096, 0.441136, 0.592447,
		63.680141, 58.568489, 58.347130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.615746, 58.769009, 57.567848>,  <63.208275, 58.259697, 57.932415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.615746, 58.769009, 57.567848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.848938, 58.633675, 57.863327>,  <63.988853, 58.552475, 58.040615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.848938, 58.633675, 57.863327>,  <63.615746, 58.769009, 57.567848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.848938, 58.633675, 57.863327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689735, -0.274436, -0.670038,
		0.429419, 0.900120, 0.073369,
		0.582979, -0.338332, 0.738692,
		64.023834, 58.532173, 58.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.255211, 58.328491, 57.222668>,  <63.615746, 58.769009, 57.567848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.255211, 58.328491, 57.222668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.371315, 58.402122, 57.598297>,  <64.440979, 58.446301, 57.823673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.371315, 58.402122, 57.598297>,  <64.255211, 58.328491, 57.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.371315, 58.402122, 57.598297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899962, -0.386086, -0.202499,
		0.325287, 0.903910, -0.277732,
		0.290270, 0.184078, 0.939073,
		64.458397, 58.457344, 57.880020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.891907, 58.742863, 57.262207>,  <64.255211, 58.328491, 57.222668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.891907, 58.742863, 57.262207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.862732, 58.500839, 57.579338>,  <64.845222, 58.355625, 57.769619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.862732, 58.500839, 57.579338>,  <64.891907, 58.742863, 57.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.862732, 58.500839, 57.579338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875138, -0.420105, -0.240096,
		0.478345, 0.676324, 0.560154,
		-0.072941, -0.605060, 0.792831,
		64.840851, 58.319321, 57.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.539490, 58.702229, 57.515831>,  <64.891907, 58.742863, 57.262207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.539490, 58.702229, 57.515831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355492, 58.378326, 57.661545>,  <65.245094, 58.183987, 57.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355492, 58.378326, 57.661545>,  <65.539490, 58.702229, 57.515831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.355492, 58.378326, 57.661545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820992, -0.544143, -0.172860,
		0.338198, 0.219560, 0.915104,
		-0.459994, -0.809754, 0.364285,
		65.217491, 58.135399, 57.770832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.770317, 59.383209, 57.854660>,  <65.539490, 58.702229, 57.515831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.770317, 59.383209, 57.854660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.474915, 59.317139, 58.116142>,  <65.297676, 59.277496, 58.273033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.474915, 59.317139, 58.116142>,  <65.770317, 59.383209, 57.854660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.474915, 59.317139, 58.116142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618781, 0.219061, 0.754402,
		-0.267811, 0.961628, -0.059569,
		-0.738504, -0.165177, 0.653704,
		65.253365, 59.267586, 58.312252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.564758, 60.035294, 58.180740>,  <65.770317, 59.383209, 57.854660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.564758, 60.035294, 58.180740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.482323, 59.749439, 58.448120>,  <65.432861, 59.577927, 58.608547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.482323, 59.749439, 58.448120>,  <65.564758, 60.035294, 58.180740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.482323, 59.749439, 58.448120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657201, 0.405032, 0.635639,
		-0.724994, 0.570300, 0.386189,
		-0.206086, -0.714638, 0.668447,
		65.420494, 59.535049, 58.648655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.550400, 60.218929, 58.896259>,  <65.564758, 60.035294, 58.180740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.550400, 60.218929, 58.896259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.603500, 59.829506, 58.970619>,  <65.635361, 59.595852, 59.015236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.603500, 59.829506, 58.970619>,  <65.550400, 60.218929, 58.896259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.603500, 59.829506, 58.970619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409183, 0.224659, 0.884363,
		-0.902744, -0.041337, 0.428188,
		0.132753, -0.973560, 0.185896,
		65.643326, 59.537437, 59.026386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.196533, 59.852909, 59.429653>,  <65.550400, 60.218929, 58.896259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.196533, 59.852909, 59.429653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.575409, 59.725704, 59.413177>,  <65.802734, 59.649380, 59.403294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.575409, 59.725704, 59.413177>,  <65.196533, 59.852909, 59.429653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.575409, 59.725704, 59.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198544, 0.480729, 0.854096,
		-0.251816, -0.817169, 0.518482,
		0.947190, -0.318017, -0.041189,
		65.859566, 59.630299, 59.400822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.421242, 59.412140, 60.065006>,  <65.196533, 59.852909, 59.429653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.421242, 59.412140, 60.065006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.741821, 59.577667, 59.892296>,  <65.934166, 59.676983, 59.788670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.741821, 59.577667, 59.892296>,  <65.421242, 59.412140, 60.065006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.741821, 59.577667, 59.892296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103981, 0.614551, 0.781994,
		0.588957, -0.671623, 0.449501,
		0.801447, 0.413821, -0.431780,
		65.982254, 59.701813, 59.762760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.859482, 58.882660, 60.349705>,  <65.421242, 59.412140, 60.065006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.859482, 58.882660, 60.349705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.988243, 58.533012, 60.204216>,  <66.065498, 58.323223, 60.116924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.988243, 58.533012, 60.204216>,  <65.859482, 58.882660, 60.349705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.988243, 58.533012, 60.204216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903953, 0.397983, -0.156453,
		0.281514, -0.278427, 0.918275,
		0.321897, -0.874121, -0.363723,
		66.084808, 58.270775, 60.095100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.414192, 58.607265, 60.691216>,  <65.859482, 58.882660, 60.349705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.414192, 58.607265, 60.691216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.441322, 58.479633, 60.313095>,  <66.457603, 58.403053, 60.086224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.441322, 58.479633, 60.313095>,  <66.414192, 58.607265, 60.691216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.441322, 58.479633, 60.313095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872053, 0.479252, -0.099199,
		0.484689, -0.817622, 0.310758,
		0.067824, -0.319078, -0.945298,
		66.461670, 58.383911, 60.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.048431, 58.359344, 60.633934>,  <66.414192, 58.607265, 60.691216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.048431, 58.359344, 60.633934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952553, 58.489742, 60.268143>,  <66.895027, 58.567982, 60.048668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952553, 58.489742, 60.268143>,  <67.048431, 58.359344, 60.633934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.952553, 58.489742, 60.268143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880189, 0.470421, -0.063018,
		0.409646, -0.820020, -0.399696,
		-0.239702, 0.325993, -0.914479,
		66.880646, 58.587540, 59.993797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.603745, 58.292110, 60.091000>,  <67.048431, 58.359344, 60.633934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.603745, 58.292110, 60.091000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.372849, 58.593098, 59.964134>,  <67.234314, 58.773689, 59.888016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.372849, 58.593098, 59.964134>,  <67.603745, 58.292110, 60.091000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.372849, 58.593098, 59.964134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816575, 0.530508, -0.227525,
		-0.002948, -0.390322, -0.920674,
		-0.577232, 0.752470, -0.317163,
		67.199677, 58.818840, 59.868984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.950607, 58.510204, 59.461689>,  <67.603745, 58.292110, 60.091000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.950607, 58.510204, 59.461689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.695457, 58.779526, 59.611237>,  <67.542366, 58.941120, 59.700966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.695457, 58.779526, 59.611237>,  <67.950607, 58.510204, 59.461689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.695457, 58.779526, 59.611237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687097, 0.716813, -0.118647,
		-0.347883, 0.181206, -0.919860,
		-0.637868, 0.673308, 0.373873,
		67.504097, 58.981518, 59.723400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.550621, 58.078098, 59.595531>,  <67.950607, 58.510204, 59.461689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.550621, 58.078098, 59.595531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.592827, 57.723511, 59.415291>,  <68.618149, 57.510757, 59.307148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.592827, 57.723511, 59.415291>,  <68.550621, 58.078098, 59.595531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.592827, 57.723511, 59.415291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901338, -0.106159, 0.419906,
		-0.420068, -0.450452, 0.787805,
		0.105515, -0.886467, -0.450603,
		68.624481, 57.457569, 59.280109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.823631, 57.520535, 60.031467>,  <68.550621, 58.078098, 59.595531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.823631, 57.520535, 60.031467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916931, 57.389175, 59.665352>,  <68.972916, 57.310360, 59.445683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916931, 57.389175, 59.665352>,  <68.823631, 57.520535, 60.031467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.916931, 57.389175, 59.665352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960175, -0.071097, 0.270204,
		-0.153807, -0.941861, 0.298733,
		0.233255, -0.328395, -0.915286,
		68.986908, 57.290657, 59.390766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.142830, 56.866455, 60.014465>,  <68.823631, 57.520535, 60.031467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.142830, 56.866455, 60.014465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.268379, 57.072124, 59.695190>,  <69.343704, 57.195526, 59.503624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.268379, 57.072124, 59.695190>,  <69.142830, 56.866455, 60.014465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.268379, 57.072124, 59.695190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947488, -0.115374, 0.298255,
		0.061266, -0.849889, -0.523389,
		0.313869, 0.514177, -0.798191,
		69.362541, 57.226379, 59.455734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.703835, 56.632389, 59.545494>,  <69.142830, 56.866455, 60.014465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.703835, 56.632389, 59.545494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.692924, 57.031113, 59.575523>,  <69.686378, 57.270348, 59.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.692924, 57.031113, 59.575523>,  <69.703835, 56.632389, 59.545494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.692924, 57.031113, 59.575523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916446, -0.005059, 0.400127,
		0.399228, 0.079713, -0.913380,
		-0.027275, 0.996805, 0.075072,
		69.684746, 57.330154, 59.598045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.230034, 56.748470, 59.840057>,  <69.703835, 56.632389, 59.545494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.230034, 56.748470, 59.840057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161545, 57.136742, 59.772560>,  <70.120453, 57.369705, 59.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161545, 57.136742, 59.772560>,  <70.230034, 56.748470, 59.840057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.161545, 57.136742, 59.772560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907468, 0.222068, 0.356633,
		0.383647, -0.092068, -0.918879,
		-0.171219, 0.970675, -0.168745,
		70.110176, 57.427944, 59.721935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.744286, 57.174908, 59.382771>,  <70.230034, 56.748470, 59.840057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.744286, 57.174908, 59.382771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.580193, 57.424099, 59.649185>,  <70.481735, 57.573612, 59.809036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.580193, 57.424099, 59.649185>,  <70.744286, 57.174908, 59.382771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.580193, 57.424099, 59.649185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910113, 0.326374, 0.255294,
		-0.058335, 0.710901, -0.700869,
		-0.410234, 0.622977, 0.666038,
		70.457123, 57.610992, 59.848995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.947762, 57.913876, 59.305264>,  <70.744286, 57.174908, 59.382771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.947762, 57.913876, 59.305264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.889786, 57.787247, 59.680237>,  <70.855003, 57.711269, 59.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.889786, 57.787247, 59.680237>,  <70.947762, 57.913876, 59.305264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.889786, 57.787247, 59.680237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972071, 0.131188, 0.194598,
		-0.184583, 0.939454, 0.288712,
		-0.144940, -0.316568, 0.937431,
		70.846306, 57.692276, 59.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.032097, 58.385422, 59.921234>,  <70.947762, 57.913876, 59.305264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.032097, 58.385422, 59.921234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.118919, 57.995487, 59.941544>,  <71.171013, 57.761528, 59.953728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.118919, 57.995487, 59.941544>,  <71.032097, 58.385422, 59.921234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.118919, 57.995487, 59.941544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976053, 0.215979, -0.025943,
		0.014325, 0.055188, 0.998373,
		0.217059, -0.974837, 0.050773,
		71.184036, 57.703037, 59.956776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.411354, 58.229446, 60.531036>,  <71.032097, 58.385422, 59.921234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.411354, 58.229446, 60.531036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.495293, 57.985672, 60.225212>,  <71.545654, 57.839409, 60.041718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.495293, 57.985672, 60.225212>,  <71.411354, 58.229446, 60.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.495293, 57.985672, 60.225212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975854, 0.179037, 0.125120,
		0.060633, -0.772358, 0.632286,
		0.209840, -0.609433, -0.764565,
		71.558243, 57.802841, 59.995842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.786850, 57.567192, 60.653648>,  <71.411354, 58.229446, 60.531036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.786850, 57.567192, 60.653648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.877625, 57.754230, 60.311920>,  <71.932091, 57.866455, 60.106884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.877625, 57.754230, 60.311920>,  <71.786850, 57.567192, 60.653648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.877625, 57.754230, 60.311920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970134, -0.031347, 0.240536,
		0.085694, -0.883387, -0.460743,
		0.226930, 0.467595, -0.854317,
		71.945702, 57.894508, 60.055626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.450218, 57.179344, 60.437191>,  <71.786850, 57.567192, 60.653648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.450218, 57.179344, 60.437191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.416298, 57.551239, 60.293861>,  <72.395943, 57.774376, 60.207863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.416298, 57.551239, 60.293861>,  <72.450218, 57.179344, 60.437191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.416298, 57.551239, 60.293861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977053, 0.148113, 0.153066,
		0.195383, -0.337121, -0.920964,
		-0.084805, 0.929738, -0.358324,
		72.390854, 57.830162, 60.186363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.815422, 57.322067, 59.840374>,  <72.450218, 57.179344, 60.437191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.815422, 57.322067, 59.840374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.800842, 57.632519, 60.092186>,  <72.792091, 57.818790, 60.243271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.800842, 57.632519, 60.092186>,  <72.815422, 57.322067, 59.840374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.800842, 57.632519, 60.092186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997809, 0.063075, -0.019993,
		-0.055224, 0.627417, -0.776722,
		-0.036447, 0.776124, 0.629526,
		72.789909, 57.865356, 60.281044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
