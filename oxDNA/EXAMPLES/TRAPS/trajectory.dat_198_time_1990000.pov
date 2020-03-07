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
	<35.791763, 52.673435, 49.828533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070896, 52.956257, 49.782742>,  <36.238377, 53.125950, 49.755268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070896, 52.956257, 49.782742>,  <35.791763, 52.673435, 49.828533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070896, 52.956257, 49.782742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457797, -0.317360, 0.830485,
		0.550869, -0.631944, -0.545151,
		0.697829, 0.707057, -0.114478,
		36.280247, 53.168373, 49.748398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371910, 52.457596, 50.020065>,  <35.791763, 52.673435, 49.828533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371910, 52.457596, 50.020065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500931, 52.835617, 49.998772>,  <36.578342, 53.062431, 49.985996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500931, 52.835617, 49.998772>,  <36.371910, 52.457596, 50.020065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500931, 52.835617, 49.998772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563115, -0.146381, 0.813310,
		0.760831, -0.292307, -0.579390,
		0.322548, 0.945055, -0.053231,
		36.597694, 53.119133, 49.982803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061596, 52.531326, 50.066292>,  <36.371910, 52.457596, 50.020065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061596, 52.531326, 50.066292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943466, 52.889286, 50.200119>,  <36.872589, 53.104061, 50.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943466, 52.889286, 50.200119>,  <37.061596, 52.531326, 50.066292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943466, 52.889286, 50.200119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499042, -0.154128, 0.852761,
		0.814703, 0.418805, -0.401075,
		-0.295324, 0.894900, 0.334570,
		36.854870, 53.157757, 50.300491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607620, 52.976746, 50.295029>,  <37.061596, 52.531326, 50.066292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607620, 52.976746, 50.295029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297447, 53.118019, 50.504395>,  <37.111343, 53.202785, 50.630013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297447, 53.118019, 50.504395>,  <37.607620, 52.976746, 50.295029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297447, 53.118019, 50.504395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586912, 0.097411, 0.803770,
		0.232895, 0.930468, -0.282825,
		-0.775432, 0.353187, 0.523416,
		37.064819, 53.223976, 50.661419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778240, 53.718090, 50.498543>,  <37.607620, 52.976746, 50.295029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778240, 53.718090, 50.498543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618610, 53.433266, 50.729614>,  <37.522831, 53.262371, 50.868256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618610, 53.433266, 50.729614>,  <37.778240, 53.718090, 50.498543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618610, 53.433266, 50.729614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740428, 0.121355, 0.661090,
		-0.540838, 0.691555, 0.478797,
		-0.399076, -0.712057, 0.577680,
		37.498886, 53.219650, 50.902920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833721, 54.453053, 50.800648>,  <37.778240, 53.718090, 50.498543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833721, 54.453053, 50.800648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978699, 54.822445, 50.750351>,  <38.065685, 55.044083, 50.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978699, 54.822445, 50.750351>,  <37.833721, 54.453053, 50.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978699, 54.822445, 50.750351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861552, -0.280525, 0.423125,
		0.355475, -0.261693, -0.897304,
		0.362445, 0.923484, -0.125743,
		38.087433, 55.099491, 50.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432590, 54.552258, 50.283543>,  <37.833721, 54.453053, 50.800648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432590, 54.552258, 50.283543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450874, 54.816868, 50.582954>,  <38.461845, 54.975636, 50.762600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450874, 54.816868, 50.582954>,  <38.432590, 54.552258, 50.283543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450874, 54.816868, 50.582954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814728, -0.458270, 0.355256,
		0.578039, 0.593606, -0.559913,
		0.045710, 0.661529, 0.748526,
		38.464588, 55.015327, 50.807510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067467, 54.911865, 50.398571>,  <38.432590, 54.552258, 50.283543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067467, 54.911865, 50.398571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906746, 54.902168, 50.764732>,  <38.810314, 54.896351, 50.984428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906746, 54.902168, 50.764732>,  <39.067467, 54.911865, 50.398571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906746, 54.902168, 50.764732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887575, -0.256274, 0.382798,
		0.225314, 0.966300, 0.124488,
		-0.401801, -0.024243, 0.915406,
		38.786205, 54.894894, 51.039352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633602, 55.209599, 50.663956>,  <39.067467, 54.911865, 50.398571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633602, 55.209599, 50.663956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392838, 55.051800, 50.941685>,  <39.248379, 54.957123, 51.108322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392838, 55.051800, 50.941685>,  <39.633602, 55.209599, 50.663956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392838, 55.051800, 50.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794589, -0.209230, 0.569957,
		-0.079572, 0.894761, 0.439399,
		-0.601910, -0.394494, 0.694319,
		39.212265, 54.933453, 51.149979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764690, 55.482670, 51.296970>,  <39.633602, 55.209599, 50.663956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764690, 55.482670, 51.296970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607609, 55.122398, 51.371326>,  <39.513359, 54.906235, 51.415939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607609, 55.122398, 51.371326>,  <39.764690, 55.482670, 51.296970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607609, 55.122398, 51.371326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821422, -0.252616, 0.511323,
		-0.413578, 0.353498, 0.839043,
		-0.392707, -0.900680, 0.185894,
		39.489796, 54.852196, 51.427094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411594, 55.618023, 51.439568>,  <39.764690, 55.482670, 51.296970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411594, 55.618023, 51.439568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368996, 55.464272, 51.806374>,  <40.343437, 55.372021, 52.026455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368996, 55.464272, 51.806374>,  <40.411594, 55.618023, 51.439568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368996, 55.464272, 51.806374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230378, -0.887621, -0.398816,
		0.967256, -0.253733, 0.005977,
		-0.106498, -0.384380, 0.917011,
		40.337048, 55.348957, 52.081478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886673, 55.078072, 51.652786>,  <40.411594, 55.618023, 51.439568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886673, 55.078072, 51.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739460, 54.889992, 51.973652>,  <40.651131, 54.777145, 52.166172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739460, 54.889992, 51.973652>,  <40.886673, 55.078072, 51.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739460, 54.889992, 51.973652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867066, -0.485100, 0.113463,
		0.335778, 0.737285, 0.586228,
		-0.368034, -0.470200, 0.802162,
		40.629051, 54.748932, 52.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380070, 55.192249, 52.161259>,  <40.886673, 55.078072, 51.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380070, 55.192249, 52.161259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176109, 54.855812, 52.233440>,  <41.053734, 54.653950, 52.276749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176109, 54.855812, 52.233440>,  <41.380070, 55.192249, 52.161259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176109, 54.855812, 52.233440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851012, -0.523846, -0.036945,
		0.125603, 0.134729, 0.982890,
		-0.509905, -0.841091, 0.180453,
		41.023136, 54.603485, 52.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600403, 54.748905, 52.882023>,  <41.380070, 55.192249, 52.161259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600403, 54.748905, 52.882023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481438, 54.600826, 52.529999>,  <41.410057, 54.511978, 52.318787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481438, 54.600826, 52.529999>,  <41.600403, 54.748905, 52.882023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481438, 54.600826, 52.529999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933924, -0.304276, -0.187624,
		-0.198323, -0.877708, 0.436230,
		-0.297413, -0.370195, -0.880058,
		41.392216, 54.489769, 52.265980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911579, 54.070007, 52.819607>,  <41.600403, 54.748905, 52.882023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911579, 54.070007, 52.819607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842400, 54.220139, 52.455360>,  <41.800892, 54.310219, 52.236813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842400, 54.220139, 52.455360>,  <41.911579, 54.070007, 52.819607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842400, 54.220139, 52.455360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920447, -0.267441, -0.285050,
		-0.350523, -0.887470, -0.299216,
		-0.172951, 0.375329, -0.910613,
		41.790516, 54.332737, 52.182175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527508, 53.914158, 52.482124>,  <41.911579, 54.070007, 52.819607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527508, 53.914158, 52.482124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354958, 54.125210, 52.189407>,  <42.251427, 54.251842, 52.013779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354958, 54.125210, 52.189407>,  <42.527508, 53.914158, 52.482124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354958, 54.125210, 52.189407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862481, 0.003239, -0.506079,
		-0.264652, -0.849469, -0.456468,
		-0.431377, 0.527629, -0.731793,
		42.225544, 54.283497, 51.969868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848042, 53.704494, 51.856209>,  <42.527508, 53.914158, 52.482124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848042, 53.704494, 51.856209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716576, 54.078232, 51.801102>,  <42.637695, 54.302475, 51.768036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716576, 54.078232, 51.801102>,  <42.848042, 53.704494, 51.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716576, 54.078232, 51.801102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728811, 0.158133, -0.666205,
		-0.600677, -0.319369, -0.732933,
		-0.328666, 0.934343, -0.137772,
		42.617977, 54.358536, 51.759769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731998, 53.722649, 51.162292>,  <42.848042, 53.704494, 51.856209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731998, 53.722649, 51.162292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804230, 54.087799, 51.308746>,  <42.847569, 54.306889, 51.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804230, 54.087799, 51.308746>,  <42.731998, 53.722649, 51.162292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804230, 54.087799, 51.308746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823270, 0.063397, -0.564099,
		-0.538163, 0.403287, -0.740094,
		0.180574, 0.912875, 0.366132,
		42.858402, 54.361660, 51.418587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825176, 54.115662, 50.523449>,  <42.731998, 53.722649, 51.162292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825176, 54.115662, 50.523449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997982, 54.257721, 50.855049>,  <43.101665, 54.342957, 51.054008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997982, 54.257721, 50.855049>,  <42.825176, 54.115662, 50.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997982, 54.257721, 50.855049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860725, 0.112104, -0.496574,
		-0.269289, 0.928066, -0.257251,
		0.432014, 0.355144, 0.828997,
		43.127586, 54.364265, 51.103748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013866, 54.732841, 50.520061>,  <42.825176, 54.115662, 50.523449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013866, 54.732841, 50.520061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252312, 54.514618, 50.755692>,  <43.395378, 54.383682, 50.897068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252312, 54.514618, 50.755692>,  <43.013866, 54.732841, 50.520061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252312, 54.514618, 50.755692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748102, 0.111014, -0.654232,
		0.291527, 0.830687, 0.474311,
		0.596117, -0.545559, 0.589075,
		43.431149, 54.350948, 50.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510910, 55.118820, 50.696831>,  <43.013866, 54.732841, 50.520061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510910, 55.118820, 50.696831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656666, 54.747662, 50.665276>,  <43.744122, 54.524967, 50.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656666, 54.747662, 50.665276>,  <43.510910, 55.118820, 50.696831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656666, 54.747662, 50.665276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718690, 0.334081, -0.609815,
		0.592201, 0.165514, 0.788608,
		0.364392, -0.927898, -0.078890,
		43.765984, 54.469292, 50.641609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586018, 55.602043, 51.218899>,  <43.510910, 55.118820, 50.696831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586018, 55.602043, 51.218899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612904, 55.758728, 51.585949>,  <43.629036, 55.852737, 51.806179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612904, 55.758728, 51.585949>,  <43.586018, 55.602043, 51.218899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612904, 55.758728, 51.585949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884121, 0.402850, -0.236730,
		-0.462397, 0.827209, -0.319241,
		0.067219, 0.391711, 0.917629,
		43.633068, 55.876240, 51.861237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580849, 56.255966, 51.004700>,  <43.586018, 55.602043, 51.218899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580849, 56.255966, 51.004700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759197, 56.146461, 51.345581>,  <43.866207, 56.080757, 51.550110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759197, 56.146461, 51.345581>,  <43.580849, 56.255966, 51.004700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759197, 56.146461, 51.345581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894505, 0.170891, -0.413107,
		-0.032540, 0.946493, 0.321080,
		0.445872, -0.273765, 0.852203,
		43.892960, 56.064331, 51.601242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110531, 56.773434, 51.238506>,  <43.580849, 56.255966, 51.004700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110531, 56.773434, 51.238506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213146, 56.413761, 51.380299>,  <44.274715, 56.197956, 51.465374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213146, 56.413761, 51.380299>,  <44.110531, 56.773434, 51.238506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213146, 56.413761, 51.380299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884745, 0.070814, -0.460663,
		0.389117, 0.431807, 0.813714,
		0.256540, -0.899182, 0.354485,
		44.290108, 56.144005, 51.486645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732082, 56.786732, 51.552887>,  <44.110531, 56.773434, 51.238506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732082, 56.786732, 51.552887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684204, 56.407734, 51.434277>,  <44.655476, 56.180336, 51.363110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684204, 56.407734, 51.434277>,  <44.732082, 56.786732, 51.552887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684204, 56.407734, 51.434277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921061, 0.005504, -0.389378,
		0.370566, -0.319725, 0.872042,
		-0.119694, -0.947494, -0.296526,
		44.648296, 56.123486, 51.345318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330017, 56.396641, 51.783634>,  <44.732082, 56.786732, 51.552887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330017, 56.396641, 51.783634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170441, 56.198135, 51.475201>,  <45.074696, 56.079033, 51.290142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170441, 56.198135, 51.475201>,  <45.330017, 56.396641, 51.783634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170441, 56.198135, 51.475201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902043, -0.061237, -0.427281,
		0.164826, -0.866009, 0.472081,
		-0.398938, -0.496264, -0.771084,
		45.050758, 56.049255, 51.243874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633759, 55.841179, 51.679451>,  <45.330017, 56.396641, 51.783634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633759, 55.841179, 51.679451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487179, 55.976921, 51.332912>,  <45.399231, 56.058365, 51.124989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487179, 55.976921, 51.332912>,  <45.633759, 55.841179, 51.679451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487179, 55.976921, 51.332912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917238, -0.024537, -0.397582,
		-0.156179, -0.940338, -0.302277,
		-0.366445, 0.339354, -0.866347,
		45.377247, 56.078728, 51.073009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861092, 55.390759, 51.168842>,  <45.633759, 55.841179, 51.679451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861092, 55.390759, 51.168842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815140, 55.776596, 51.073883>,  <45.787567, 56.008099, 51.016907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815140, 55.776596, 51.073883>,  <45.861092, 55.390759, 51.168842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815140, 55.776596, 51.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906093, 0.003794, -0.423061,
		-0.407182, -0.263710, -0.874448,
		-0.114883, 0.964594, -0.237401,
		45.780674, 56.065975, 51.002663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165180, 55.396130, 50.431732>,  <45.861092, 55.390759, 51.168842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165180, 55.396130, 50.431732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085205, 55.767727, 50.556313>,  <46.037220, 55.990685, 50.631062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085205, 55.767727, 50.556313>,  <46.165180, 55.396130, 50.431732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085205, 55.767727, 50.556313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576288, 0.368566, -0.729419,
		-0.792413, 0.033647, -0.609056,
		-0.199935, 0.928992, 0.311447,
		46.025223, 56.046425, 50.649746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910339, 55.469017, 50.589672>,  <46.165180, 55.396130, 50.431732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910339, 55.469017, 50.589672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049721, 55.843517, 50.571724>,  <47.133350, 56.068218, 50.560955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049721, 55.843517, 50.571724>,  <46.910339, 55.469017, 50.589672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049721, 55.843517, 50.571724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754339, -0.308522, -0.579471,
		-0.556374, 0.168070, -0.813757,
		0.348453, 0.936251, -0.044872,
		47.154255, 56.124393, 50.558262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.396061, 55.055920, 51.049778>,  <46.910339, 55.469017, 50.589672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.396061, 55.055920, 51.049778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631145, 54.748398, 51.150604>,  <47.772194, 54.563885, 51.211102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631145, 54.748398, 51.150604>,  <47.396061, 55.055920, 51.049778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631145, 54.748398, 51.150604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213119, -0.153443, -0.964902,
		0.780500, 0.620801, 0.073668,
		0.587708, -0.768806, 0.252067,
		47.807457, 54.517757, 51.226223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.026264, 55.040951, 50.691261>,  <47.396061, 55.055920, 51.049778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.026264, 55.040951, 50.691261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949970, 54.657753, 50.776924>,  <47.904194, 54.427834, 50.828320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949970, 54.657753, 50.776924>,  <48.026264, 55.040951, 50.691261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949970, 54.657753, 50.776924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321532, -0.267095, -0.908448,
		0.927490, -0.104414, 0.358971,
		-0.190734, -0.957997, 0.214155,
		47.892750, 54.370354, 50.841171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666756, 54.578995, 50.656971>,  <48.026264, 55.040951, 50.691261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666756, 54.578995, 50.656971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340515, 54.352661, 50.608604>,  <48.144772, 54.216862, 50.579586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340515, 54.352661, 50.608604>,  <48.666756, 54.578995, 50.656971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.340515, 54.352661, 50.608604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385634, -0.375793, -0.842654,
		0.431364, -0.733902, 0.524703,
		-0.815605, -0.565834, -0.120914,
		48.095833, 54.182911, 50.572330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.861664, 53.892941, 50.632885>,  <48.666756, 54.578995, 50.656971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.861664, 53.892941, 50.632885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.526737, 53.959339, 50.424522>,  <48.325783, 53.999180, 50.299503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.526737, 53.959339, 50.424522>,  <48.861664, 53.892941, 50.632885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.526737, 53.959339, 50.424522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409623, -0.440552, -0.798826,
		-0.362090, -0.882247, 0.300886,
		-0.837317, 0.165997, -0.520908,
		48.275543, 54.009140, 50.268250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.984921, 54.225487, 51.332344>,  <48.861664, 53.892941, 50.632885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.984921, 54.225487, 51.332344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.048630, 53.831314, 51.356178>,  <49.086857, 53.594810, 51.370480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.048630, 53.831314, 51.356178>,  <48.984921, 54.225487, 51.332344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.048630, 53.831314, 51.356178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987121, -0.159879, -0.005534,
		0.014980, -0.057935, -0.998208,
		0.159272, -0.985435, 0.059584,
		49.096413, 53.535683, 51.374054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.724800, 54.571453, 51.252522>,  <48.984921, 54.225487, 51.332344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.724800, 54.571453, 51.252522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.856945, 54.795658, 51.556282>,  <49.936230, 54.930180, 51.738537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.856945, 54.795658, 51.556282>,  <49.724800, 54.571453, 51.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.856945, 54.795658, 51.556282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303678, -0.824913, 0.476758,
		0.893668, 0.073112, -0.442732,
		0.330358, 0.560512, 0.759401,
		49.956051, 54.963810, 51.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.921944, 54.104786, 51.703049>,  <49.724800, 54.571453, 51.252522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.921944, 54.104786, 51.703049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042103, 54.407059, 51.935844>,  <50.114197, 54.588421, 52.075523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042103, 54.407059, 51.935844>,  <49.921944, 54.104786, 51.703049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.042103, 54.407059, 51.935844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585450, -0.627788, 0.512963,
		0.753002, 0.186635, -0.630996,
		0.300395, 0.755679, 0.581990,
		50.132221, 54.633762, 52.110443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.543648, 53.824734, 52.057697>,  <49.921944, 54.104786, 51.703049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.543648, 53.824734, 52.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.455612, 54.167667, 52.243835>,  <50.402790, 54.373428, 52.355518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.455612, 54.167667, 52.243835>,  <50.543648, 53.824734, 52.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.455612, 54.167667, 52.243835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674346, -0.210977, 0.707634,
		0.704853, 0.469547, -0.531703,
		-0.220090, 0.857330, 0.465345,
		50.389584, 54.424866, 52.383438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.057247, 54.047092, 52.466110>,  <50.543648, 53.824734, 52.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.057247, 54.047092, 52.466110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758930, 54.237022, 52.653015>,  <50.579941, 54.350983, 52.765160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758930, 54.237022, 52.653015>,  <51.057247, 54.047092, 52.466110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.758930, 54.237022, 52.653015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446153, -0.164873, 0.879639,
		0.494715, 0.864498, -0.088885,
		-0.745791, 0.474827, 0.467263,
		50.535194, 54.379471, 52.793194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.294308, 54.686127, 52.843697>,  <51.057247, 54.047092, 52.466110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.294308, 54.686127, 52.843697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.963375, 54.529236, 53.004539>,  <50.764816, 54.435101, 53.101044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.963375, 54.529236, 53.004539>,  <51.294308, 54.686127, 52.843697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.963375, 54.529236, 53.004539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498098, -0.181342, 0.847946,
		-0.259667, 0.901817, 0.345396,
		-0.827328, -0.392225, 0.402105,
		50.715176, 54.411568, 53.125172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.115246, 54.958004, 53.491215>,  <51.294308, 54.686127, 52.843697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.115246, 54.958004, 53.491215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.950256, 54.593616, 53.490303>,  <50.851265, 54.374985, 53.489758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.950256, 54.593616, 53.490303>,  <51.115246, 54.958004, 53.491215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.950256, 54.593616, 53.490303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292399, -0.134761, 0.946754,
		-0.862769, 0.389843, 0.321951,
		-0.412471, -0.910968, -0.002278,
		50.826515, 54.320328, 53.489620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.842648, 54.627335, 53.453407>,  <51.115246, 54.958004, 53.491215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.842648, 54.627335, 53.453407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.860237, 54.890678, 53.753975>,  <51.870792, 55.048683, 53.934315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.860237, 54.890678, 53.753975>,  <51.842648, 54.627335, 53.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.860237, 54.890678, 53.753975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764015, -0.506789, 0.399307,
		0.643698, 0.556536, -0.525281,
		0.043978, 0.658355, 0.751421,
		51.873432, 55.088184, 53.979401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.503567, 54.753334, 53.536686>,  <51.842648, 54.627335, 53.453407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.503567, 54.753334, 53.536686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.380329, 54.877666, 53.896343>,  <52.306385, 54.952267, 54.112137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.380329, 54.877666, 53.896343>,  <52.503567, 54.753334, 53.536686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.380329, 54.877666, 53.896343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733325, -0.524494, 0.432596,
		0.606061, 0.792646, -0.066346,
		-0.308098, 0.310833, 0.899143,
		52.287899, 54.970917, 54.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.068527, 54.942856, 53.892761>,  <52.503567, 54.753334, 53.536686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.068527, 54.942856, 53.892761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.818352, 54.906269, 54.202721>,  <52.668247, 54.884315, 54.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.818352, 54.906269, 54.202721>,  <53.068527, 54.942856, 53.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.818352, 54.906269, 54.202721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634437, -0.637734, 0.436790,
		0.454226, 0.764807, 0.456890,
		-0.625434, -0.091466, 0.774897,
		52.630722, 54.878830, 54.435188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.400463, 55.152271, 54.551914>,  <53.068527, 54.942856, 53.892761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.400463, 55.152271, 54.551914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133251, 54.859291, 54.604446>,  <52.972923, 54.683502, 54.635967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133251, 54.859291, 54.604446>,  <53.400463, 55.152271, 54.551914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.133251, 54.859291, 54.604446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645632, -0.482750, 0.591702,
		-0.369994, 0.480067, 0.795387,
		-0.668030, -0.732453, 0.131332,
		52.932842, 54.639557, 54.643845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.994267, 54.978806, 55.285564>,  <53.400463, 55.152271, 54.551914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.994267, 54.978806, 55.285564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.063236, 54.660870, 55.052841>,  <53.104618, 54.470108, 54.913208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.063236, 54.660870, 55.052841>,  <52.994267, 54.978806, 55.285564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.063236, 54.660870, 55.052841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728543, -0.294620, 0.618405,
		-0.662944, -0.530501, 0.528274,
		0.172425, -0.794838, -0.581809,
		53.114964, 54.422417, 54.878300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.183357, 54.552166, 55.738899>,  <52.994267, 54.978806, 55.285564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.183357, 54.552166, 55.738899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.341740, 54.500652, 56.102577>,  <53.436768, 54.469746, 56.320786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.341740, 54.500652, 56.102577>,  <53.183357, 54.552166, 55.738899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.341740, 54.500652, 56.102577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915097, 0.137574, -0.379039,
		-0.076268, 0.982083, 0.172323,
		0.395955, -0.128784, 0.909194,
		53.460526, 54.462017, 56.375336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.610046, 55.127075, 55.835934>,  <53.183357, 54.552166, 55.738899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.610046, 55.127075, 55.835934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696854, 54.783607, 56.021660>,  <53.748940, 54.577526, 56.133095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696854, 54.783607, 56.021660>,  <53.610046, 55.127075, 55.835934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.696854, 54.783607, 56.021660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865063, -0.051216, -0.499042,
		0.452293, 0.509965, 0.731688,
		0.217020, -0.858669, 0.464316,
		53.761959, 54.526005, 56.160954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.367615, 55.042423, 56.069557>,  <53.610046, 55.127075, 55.835934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.367615, 55.042423, 56.069557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.225204, 54.671295, 56.025024>,  <54.139759, 54.448620, 55.998306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.225204, 54.671295, 56.025024>,  <54.367615, 55.042423, 56.069557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.225204, 54.671295, 56.025024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887874, -0.298704, -0.349935,
		0.291422, -0.223434, 0.930135,
		-0.356023, -0.927822, -0.111332,
		54.118397, 54.392948, 55.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.871151, 54.419876, 56.343609>,  <54.367615, 55.042423, 56.069557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.871151, 54.419876, 56.343609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.646599, 54.340580, 56.022224>,  <54.511868, 54.293003, 55.829391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.646599, 54.340580, 56.022224>,  <54.871151, 54.419876, 56.343609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.646599, 54.340580, 56.022224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820322, -0.261420, -0.508656,
		-0.109207, -0.944649, 0.309374,
		-0.561378, -0.198238, -0.803465,
		54.478184, 54.281109, 55.781185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.856140, 53.615376, 56.127895>,  <54.871151, 54.419876, 56.343609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.856140, 53.615376, 56.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.861542, 53.915379, 55.863380>,  <54.864780, 54.095383, 55.704670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.861542, 53.915379, 55.863380>,  <54.856140, 53.615376, 56.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.861542, 53.915379, 55.863380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961112, -0.192170, -0.198329,
		-0.275829, -0.632895, -0.723438,
		0.013502, 0.750010, -0.661289,
		54.865593, 54.140381, 55.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.996769, 53.337116, 55.377491>,  <54.856140, 53.615376, 56.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.996769, 53.337116, 55.377491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.176727, 53.665154, 55.518936>,  <55.284702, 53.861977, 55.603802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.176727, 53.665154, 55.518936>,  <54.996769, 53.337116, 55.377491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.176727, 53.665154, 55.518936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887146, -0.455956, -0.071244,
		0.102803, 0.345755, -0.932676,
		0.449893, 0.820096, 0.353608,
		55.311695, 53.911182, 55.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.617397, 53.436714, 54.929150>,  <54.996769, 53.337116, 55.377491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.617397, 53.436714, 54.929150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.679359, 53.614418, 55.282112>,  <55.716537, 53.721039, 55.493889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.679359, 53.614418, 55.282112>,  <55.617397, 53.436714, 54.929150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.679359, 53.614418, 55.282112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942580, -0.333969, 0.002675,
		0.295884, 0.831323, -0.470483,
		0.154903, 0.444260, 0.882405,
		55.725830, 53.747696, 55.546833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.986446, 54.087269, 54.895805>,  <55.617397, 53.436714, 54.929150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.986446, 54.087269, 54.895805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060722, 53.832115, 55.194771>,  <56.105286, 53.679024, 55.374149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060722, 53.832115, 55.194771>,  <55.986446, 54.087269, 54.895805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.060722, 53.832115, 55.194771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916943, -0.160911, -0.365135,
		0.353180, 0.753136, 0.555022,
		0.185687, -0.637882, 0.747413,
		56.116428, 53.640751, 55.418995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.649868, 54.336071, 55.063217>,  <55.986446, 54.087269, 54.895805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.649868, 54.336071, 55.063217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.575523, 53.976307, 55.221466>,  <56.530914, 53.760448, 55.316414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.575523, 53.976307, 55.221466>,  <56.649868, 54.336071, 55.063217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.575523, 53.976307, 55.221466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944409, -0.274654, -0.180711,
		0.271191, 0.340039, 0.900460,
		-0.185866, -0.899410, 0.395620,
		56.519764, 53.706482, 55.340153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.120117, 54.582947, 55.539238>,  <56.649868, 54.336071, 55.063217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.120117, 54.582947, 55.539238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.428299, 54.713150, 55.758492>,  <57.613209, 54.791271, 55.890041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.428299, 54.713150, 55.758492>,  <57.120117, 54.582947, 55.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.428299, 54.713150, 55.758492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530371, -0.804346, -0.267832,
		0.353705, 0.497064, -0.792351,
		0.770454, 0.325507, 0.548130,
		57.659435, 54.810802, 55.922932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.621422, 54.400074, 55.135609>,  <57.120117, 54.582947, 55.539238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.621422, 54.400074, 55.135609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.748909, 54.442108, 55.512413>,  <57.825401, 54.467327, 55.738495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.748909, 54.442108, 55.512413>,  <57.621422, 54.400074, 55.135609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.748909, 54.442108, 55.512413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582644, -0.805619, -0.107258,
		0.747628, 0.583040, -0.317988,
		0.318713, 0.105084, 0.942008,
		57.844524, 54.473633, 55.795017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.302078, 54.218544, 55.089699>,  <57.621422, 54.400074, 55.135609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.302078, 54.218544, 55.089699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226875, 54.227264, 55.482468>,  <58.181751, 54.232494, 55.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226875, 54.227264, 55.482468>,  <58.302078, 54.218544, 55.089699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.226875, 54.227264, 55.482468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632581, -0.762094, 0.138039,
		0.751328, 0.647099, 0.129492,
		-0.188010, 0.021799, 0.981925,
		58.170471, 54.233803, 55.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.940708, 53.669888, 55.172958>,  <58.302078, 54.218544, 55.089699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.940708, 53.669888, 55.172958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.071930, 53.357143, 55.385025>,  <58.150665, 53.169498, 55.512264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.071930, 53.357143, 55.385025>,  <57.940708, 53.669888, 55.172958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.071930, 53.357143, 55.385025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219856, 0.482620, 0.847786,
		-0.918717, -0.394683, -0.013569,
		0.328058, -0.781859, 0.530165,
		58.170349, 53.122585, 55.544075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.910618, 53.071686, 54.805691>,  <57.940708, 53.669888, 55.172958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.910618, 53.071686, 54.805691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.757889, 53.301357, 54.515991>,  <57.666252, 53.439159, 54.342171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.757889, 53.301357, 54.515991>,  <57.910618, 53.071686, 54.805691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.757889, 53.301357, 54.515991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914751, 0.346744, -0.207359,
		0.132066, -0.741678, -0.657626,
		-0.381822, 0.574179, -0.724244,
		57.643341, 53.473610, 54.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.161732, 52.902874, 54.138378>,  <57.910618, 53.071686, 54.805691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.161732, 52.902874, 54.138378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.076866, 53.291405, 54.181282>,  <58.025948, 53.524525, 54.207024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.076866, 53.291405, 54.181282>,  <58.161732, 52.902874, 54.138378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.076866, 53.291405, 54.181282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960847, 0.227357, -0.158374,
		-0.178219, 0.069456, -0.981536,
		-0.212159, 0.971331, 0.107255,
		58.013218, 53.582806, 54.213459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.363178, 53.265617, 53.572338>,  <58.161732, 52.902874, 54.138378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.363178, 53.265617, 53.572338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.386681, 53.497429, 53.897469>,  <58.400780, 53.636517, 54.092548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.386681, 53.497429, 53.897469>,  <58.363178, 53.265617, 53.572338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.386681, 53.497429, 53.897469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973208, 0.148059, -0.175908,
		-0.222291, 0.801388, -0.555305,
		0.058753, 0.579530, 0.812830,
		58.404308, 53.671288, 54.141319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.605438, 53.959389, 53.465939>,  <58.363178, 53.265617, 53.572338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.605438, 53.959389, 53.465939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.701530, 53.810104, 53.824379>,  <58.759186, 53.720535, 54.039444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.701530, 53.810104, 53.824379>,  <58.605438, 53.959389, 53.465939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.701530, 53.810104, 53.824379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959748, -0.047059, -0.276891,
		0.145509, 0.926552, 0.346885,
		0.240229, -0.373212, 0.896104,
		58.773598, 53.698139, 54.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.099735, 54.375427, 53.831741>,  <58.605438, 53.959389, 53.465939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.099735, 54.375427, 53.831741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.164719, 54.000443, 53.954887>,  <59.203709, 53.775452, 54.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.164719, 54.000443, 53.954887>,  <59.099735, 54.375427, 53.831741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.164719, 54.000443, 53.954887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982164, 0.123702, -0.141602,
		0.094663, 0.325378, 0.940834,
		0.162457, -0.937458, 0.307865,
		59.213455, 53.719204, 54.047245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.693336, 54.467655, 54.172134>,  <59.099735, 54.375427, 53.831741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.693336, 54.467655, 54.172134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.705170, 54.084404, 54.058205>,  <59.712269, 53.854454, 53.989849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.705170, 54.084404, 54.058205>,  <59.693336, 54.467655, 54.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.705170, 54.084404, 54.058205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999198, 0.020642, 0.034326,
		-0.027010, -0.285609, 0.957966,
		0.029578, -0.958124, -0.284822,
		59.714043, 53.796967, 53.972759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.069859, 53.925358, 54.697659>,  <59.693336, 54.467655, 54.172134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.069859, 53.925358, 54.697659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.116066, 53.883560, 54.302540>,  <60.143791, 53.858482, 54.065468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.116066, 53.883560, 54.302540>,  <60.069859, 53.925358, 54.697659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.116066, 53.883560, 54.302540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957144, 0.277591, 0.082571,
		0.265574, -0.955000, 0.132080,
		0.115520, -0.104491, -0.987794,
		60.150723, 53.852215, 54.006203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.668156, 53.381813, 54.469391>,  <60.069859, 53.925358, 54.697659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.668156, 53.381813, 54.469391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.592560, 53.663795, 54.195946>,  <60.547203, 53.832985, 54.031879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.592560, 53.663795, 54.195946>,  <60.668156, 53.381813, 54.469391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.592560, 53.663795, 54.195946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971254, 0.236799, -0.024313,
		0.144739, -0.668554, -0.729443,
		-0.188986, 0.704955, -0.683610,
		60.535866, 53.875282, 53.990864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.249489, 53.390217, 54.065392>,  <60.668156, 53.381813, 54.469391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.249489, 53.390217, 54.065392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.134949, 53.773445, 54.061249>,  <61.066223, 54.003380, 54.058765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.134949, 53.773445, 54.061249>,  <61.249489, 53.390217, 54.065392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.134949, 53.773445, 54.061249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958101, 0.286405, 0.003740,
		0.006548, -0.008850, -0.999939,
		-0.286355, 0.958068, -0.010355,
		61.049042, 54.060867, 54.058144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.600105, 53.848465, 53.424068>,  <61.249489, 53.390217, 54.065392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.600105, 53.848465, 53.424068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.500053, 54.076302, 53.737247>,  <61.440022, 54.213005, 53.925156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.500053, 54.076302, 53.737247>,  <61.600105, 53.848465, 53.424068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.500053, 54.076302, 53.737247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904230, 0.426509, -0.021412,
		-0.346128, 0.702605, -0.621724,
		-0.250127, 0.569593, 0.782943,
		61.425014, 54.247181, 53.972130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.735291, 54.614956, 53.379959>,  <61.600105, 53.848465, 53.424068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.735291, 54.614956, 53.379959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.757584, 54.529129, 53.770004>,  <61.770958, 54.477631, 54.004032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.757584, 54.529129, 53.770004>,  <61.735291, 54.614956, 53.379959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.757584, 54.529129, 53.770004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719726, 0.685534, 0.109717,
		-0.692018, 0.695703, 0.192636,
		0.055728, -0.214571, 0.975117,
		61.774303, 54.464756, 54.062538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.795891, 55.220970, 53.707764>,  <61.735291, 54.614956, 53.379959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.795891, 55.220970, 53.707764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.962044, 54.930237, 53.926552>,  <62.061737, 54.755798, 54.057823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.962044, 54.930237, 53.926552>,  <61.795891, 55.220970, 53.707764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.962044, 54.930237, 53.926552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835160, 0.543027, 0.087347,
		-0.360504, 0.420521, 0.832585,
		0.415385, -0.726831, 0.546966,
		62.086658, 54.712189, 54.090641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.226734, 55.570015, 54.238716>,  <61.795891, 55.220970, 53.707764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.226734, 55.570015, 54.238716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.397072, 55.212620, 54.181679>,  <62.499275, 54.998184, 54.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.397072, 55.212620, 54.181679>,  <62.226734, 55.570015, 54.238716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.397072, 55.212620, 54.181679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901280, 0.432769, -0.020121,
		0.079688, -0.119949, 0.989577,
		0.425845, -0.893489, -0.142594,
		62.524826, 54.944572, 54.138901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.920307, 55.534000, 54.564392>,  <62.226734, 55.570015, 54.238716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.920307, 55.534000, 54.564392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.932533, 55.201958, 54.341686>,  <62.939869, 55.002731, 54.208065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.932533, 55.201958, 54.341686>,  <62.920307, 55.534000, 54.564392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.932533, 55.201958, 54.341686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920537, 0.240419, -0.307914,
		0.389459, -0.503105, 0.771497,
		0.030569, -0.830111, -0.556760,
		62.941704, 54.952923, 54.174660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.552200, 55.213226, 54.802620>,  <62.920307, 55.534000, 54.564392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.552200, 55.213226, 54.802620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.451088, 55.133785, 54.423851>,  <63.390419, 55.086121, 54.196590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.451088, 55.133785, 54.423851>,  <63.552200, 55.213226, 54.802620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.451088, 55.133785, 54.423851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778255, 0.539727, -0.320957,
		0.574822, -0.818077, 0.018135,
		-0.252780, -0.198607, -0.946920,
		63.375256, 55.074203, 54.139774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.311226, 55.294712, 55.085453>,  <63.552200, 55.213226, 54.802620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.311226, 55.294712, 55.085453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.434357, 55.460777, 54.743019>,  <64.508232, 55.560417, 54.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.434357, 55.460777, 54.743019>,  <64.311226, 55.294712, 55.085453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.434357, 55.460777, 54.743019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512179, 0.685975, 0.516828,
		0.801821, -0.597563, -0.001475,
		0.307825, 0.415159, -0.856088,
		64.526703, 55.585323, 54.486191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.812843, 54.901978, 55.017719>,  <64.311226, 55.294712, 55.085453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.812843, 54.901978, 55.017719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.971611, 54.613319, 55.244591>,  <65.066872, 54.440125, 55.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.971611, 54.613319, 55.244591>,  <64.812843, 54.901978, 55.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.971611, 54.613319, 55.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777561, -0.063971, -0.625545,
		0.487702, 0.689305, 0.535729,
		0.396920, -0.721642, 0.567175,
		65.090691, 54.396828, 55.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.501579, 55.166817, 55.345181>,  <64.812843, 54.901978, 55.017719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.501579, 55.166817, 55.345181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.452820, 54.782223, 55.246643>,  <65.423561, 54.551468, 55.187519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.452820, 54.782223, 55.246643>,  <65.501579, 55.166817, 55.345181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.452820, 54.782223, 55.246643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735777, 0.079048, -0.672594,
		0.666163, -0.263245, 0.697803,
		-0.121897, -0.961485, -0.246348,
		65.416252, 54.493778, 55.172737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.153702, 54.986443, 55.422337>,  <65.501579, 55.166817, 55.345181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.153702, 54.986443, 55.422337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.945320, 54.752663, 55.173492>,  <65.820290, 54.612396, 55.024185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.945320, 54.752663, 55.173492>,  <66.153702, 54.986443, 55.422337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.945320, 54.752663, 55.173492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679077, 0.157802, -0.716906,
		0.517164, -0.795940, 0.314676,
		-0.520957, -0.584447, -0.622114,
		65.789032, 54.577328, 54.986858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.338867, 54.573215, 55.985298>,  <66.153702, 54.986443, 55.422337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.338867, 54.573215, 55.985298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.738464, 54.557076, 55.993103>,  <66.978226, 54.547390, 55.997784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.738464, 54.557076, 55.993103>,  <66.338867, 54.573215, 55.985298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.738464, 54.557076, 55.993103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015804, 0.090222, 0.995796,
		-0.041942, -0.995104, 0.089494,
		0.998995, -0.040351, 0.019510,
		67.038162, 54.544971, 55.998955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.708603, 54.007332, 56.411381>,  <66.338867, 54.573215, 55.985298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.708603, 54.007332, 56.411381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.891342, 54.363152, 56.411240>,  <67.000984, 54.576641, 56.411156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.891342, 54.363152, 56.411240>,  <66.708603, 54.007332, 56.411381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.891342, 54.363152, 56.411240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076382, -0.038837, 0.996322,
		0.886261, -0.455190, -0.085687,
		0.456844, 0.889547, -0.000349,
		67.028397, 54.630016, 56.411137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.337967, 53.831768, 56.720737>,  <66.708603, 54.007332, 56.411381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.337967, 53.831768, 56.720737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131165, 54.168686, 56.781708>,  <67.007080, 54.370838, 56.818291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131165, 54.168686, 56.781708>,  <67.337967, 53.831768, 56.720737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.131165, 54.168686, 56.781708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, -0.121976, 0.988203,
		0.850952, 0.525031, -0.014945,
		-0.517014, 0.842297, 0.152421,
		66.976059, 54.421375, 56.827435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.731125, 54.295433, 57.128780>,  <67.337967, 53.831768, 56.720737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.731125, 54.295433, 57.128780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.347664, 54.376316, 57.208870>,  <67.117584, 54.424847, 57.256924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.347664, 54.376316, 57.208870>,  <67.731125, 54.295433, 57.128780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.347664, 54.376316, 57.208870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225865, 0.112720, 0.967615,
		0.173088, 0.972835, -0.153731,
		-0.958658, 0.202205, 0.200219,
		67.060066, 54.436977, 57.268936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.532204, 55.028103, 57.320160>,  <67.731125, 54.295433, 57.128780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.532204, 55.028103, 57.320160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275871, 54.776405, 57.496056>,  <67.122070, 54.625385, 57.601593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275871, 54.776405, 57.496056>,  <67.532204, 55.028103, 57.320160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.275871, 54.776405, 57.496056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198094, 0.417878, 0.886643,
		-0.741676, 0.655306, -0.143143,
		-0.640839, -0.629247, 0.439743,
		67.083618, 54.587631, 57.627979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.989403, 55.407066, 57.739750>,  <67.532204, 55.028103, 57.320160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.989403, 55.407066, 57.739750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.072868, 55.050507, 57.900681>,  <67.122948, 54.836571, 57.997238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.072868, 55.050507, 57.900681>,  <66.989403, 55.407066, 57.739750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.072868, 55.050507, 57.900681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376453, 0.452886, 0.808194,
		-0.902633, -0.017178, 0.430069,
		0.208655, -0.891403, 0.402323,
		67.135468, 54.783085, 58.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.646469, 55.237854, 58.461418>,  <66.989403, 55.407066, 57.739750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.646469, 55.237854, 58.461418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.994698, 55.045341, 58.420456>,  <67.203636, 54.929832, 58.395878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.994698, 55.045341, 58.420456>,  <66.646469, 55.237854, 58.461418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.994698, 55.045341, 58.420456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370107, 0.503318, 0.780828,
		-0.324257, -0.717660, 0.616297,
		0.870562, -0.481284, -0.102406,
		67.255867, 54.900955, 58.389732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.949928, 55.064129, 59.045902>,  <66.646469, 55.237854, 58.461418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.949928, 55.064129, 59.045902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.286224, 55.072987, 58.829506>,  <67.487999, 55.078300, 58.699669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.286224, 55.072987, 58.829506>,  <66.949928, 55.064129, 59.045902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.286224, 55.072987, 58.829506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507281, 0.317072, 0.801331,
		0.189276, -0.948143, 0.255342,
		0.840738, 0.022143, -0.540989,
		67.538445, 55.079632, 58.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.506134, 54.568420, 59.302738>,  <66.949928, 55.064129, 59.045902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.506134, 54.568420, 59.302738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.659378, 54.904648, 59.149551>,  <67.751328, 55.106384, 59.057640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.659378, 54.904648, 59.149551>,  <67.506134, 54.568420, 59.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.659378, 54.904648, 59.149551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381239, 0.233748, 0.894438,
		0.841356, -0.488674, -0.230907,
		0.383114, 0.840572, -0.382967,
		67.774315, 55.156818, 59.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.988518, 54.790359, 59.719662>,  <67.506134, 54.568420, 59.302738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.988518, 54.790359, 59.719662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.029449, 55.143185, 59.535706>,  <68.054008, 55.354877, 59.425331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.029449, 55.143185, 59.535706>,  <67.988518, 54.790359, 59.719662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.029449, 55.143185, 59.535706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510006, 0.350411, 0.785561,
		0.854063, -0.314930, -0.414000,
		0.102326, 0.882061, -0.459889,
		68.060150, 55.407803, 59.397739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.631615, 54.989773, 59.591896>,  <67.988518, 54.790359, 59.719662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.631615, 54.989773, 59.591896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.432907, 55.326210, 59.677483>,  <68.313683, 55.528072, 59.728836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.432907, 55.326210, 59.677483>,  <68.631615, 54.989773, 59.591896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.432907, 55.326210, 59.677483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582801, 0.140620, 0.800355,
		0.643082, 0.522299, -0.560044,
		-0.496778, 0.841089, 0.213966,
		68.283875, 55.578537, 59.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.904778, 55.713455, 59.547092>,  <68.631615, 54.989773, 59.591896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.904778, 55.713455, 59.547092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.625847, 55.719421, 59.833733>,  <68.458488, 55.723000, 60.005718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.625847, 55.719421, 59.833733>,  <68.904778, 55.713455, 59.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.625847, 55.719421, 59.833733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707322, 0.176010, 0.684628,
		-0.115919, 0.984275, -0.133285,
		-0.697322, 0.014914, 0.716603,
		68.416649, 55.723896, 60.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.822746, 56.485687, 59.956230>,  <68.904778, 55.713455, 59.547092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.822746, 56.485687, 59.956230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.807869, 56.103710, 60.074005>,  <68.798943, 55.874523, 60.144669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.807869, 56.103710, 60.074005>,  <68.822746, 56.485687, 59.956230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.807869, 56.103710, 60.074005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909460, 0.089757, 0.405989,
		-0.414126, 0.282877, 0.865148,
		-0.037191, -0.954947, 0.294436,
		68.796715, 55.817226, 60.162334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.276924, 56.384888, 60.480881>,  <68.822746, 56.485687, 59.956230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.276924, 56.384888, 60.480881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.217545, 55.995827, 60.409424>,  <69.181915, 55.762390, 60.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.217545, 55.995827, 60.409424>,  <69.276924, 56.384888, 60.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.217545, 55.995827, 60.409424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919246, -0.202321, 0.337719,
		-0.364625, -0.114080, 0.924140,
		-0.148446, -0.972652, -0.178639,
		69.173012, 55.704033, 60.355831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.862740, 56.561741, 60.457432>,  <69.276924, 56.384888, 60.480881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.862740, 56.561741, 60.457432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735672, 56.803715, 60.165367>,  <69.659431, 56.948898, 59.990128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735672, 56.803715, 60.165367>,  <69.862740, 56.561741, 60.457432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.735672, 56.803715, 60.165367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862741, 0.503888, 0.042131,
		0.393408, -0.616561, -0.681970,
		-0.317660, 0.604938, -0.730166,
		69.640373, 56.985195, 59.946316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.445869, 56.648926, 60.120628>,  <69.862740, 56.561741, 60.457432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.445869, 56.648926, 60.120628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.229889, 56.949905, 59.969749>,  <70.100304, 57.130493, 59.879223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.229889, 56.949905, 59.969749>,  <70.445869, 56.648926, 60.120628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.229889, 56.949905, 59.969749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799471, 0.598640, 0.049750,
		0.263239, -0.274695, -0.924796,
		-0.539954, 0.752444, -0.377197,
		70.067902, 57.175640, 59.856590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.825706, 57.058666, 59.686501>,  <70.445869, 56.648926, 60.120628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.825706, 57.058666, 59.686501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.534637, 57.309711, 59.797203>,  <70.359993, 57.460339, 59.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.534637, 57.309711, 59.797203>,  <70.825706, 57.058666, 59.686501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.534637, 57.309711, 59.797203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666424, 0.742409, 0.068618,
		-0.162401, 0.234369, -0.958487,
		-0.727671, 0.627615, 0.276757,
		70.316338, 57.497997, 59.880230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.800484, 57.713600, 59.293221>,  <70.825706, 57.058666, 59.686501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.800484, 57.713600, 59.293221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.643288, 57.783607, 59.654312>,  <70.548965, 57.825611, 59.870968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.643288, 57.783607, 59.654312>,  <70.800484, 57.713600, 59.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.643288, 57.783607, 59.654312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712827, 0.678153, 0.178847,
		-0.580890, 0.713778, -0.391265,
		-0.392995, 0.175014, 0.902732,
		70.525391, 57.836113, 59.925133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.053688, 58.346397, 59.180473>,  <70.800484, 57.713600, 59.293221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.053688, 58.346397, 59.180473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.993896, 58.120762, 59.505302>,  <70.958023, 57.985382, 59.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.993896, 58.120762, 59.505302>,  <71.053688, 58.346397, 59.180473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.993896, 58.120762, 59.505302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123517, 0.804214, 0.581363,
		-0.981019, 0.187209, -0.050543,
		-0.149484, -0.564086, 0.812073,
		70.949051, 57.951534, 59.748924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.603615, 58.586468, 59.445293>,  <71.053688, 58.346397, 59.180473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.603615, 58.586468, 59.445293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.929886, 58.355263, 59.454819>,  <72.125648, 58.216537, 59.460533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.929886, 58.355263, 59.454819>,  <71.603615, 58.586468, 59.445293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.929886, 58.355263, 59.454819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300117, 0.457991, 0.836764,
		-0.494570, -0.675383, 0.547046,
		0.815678, -0.578016, 0.023815,
		72.174591, 58.181858, 59.461964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.722763, 58.293018, 60.201279>,  <71.603615, 58.586468, 59.445293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.722763, 58.293018, 60.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.027191, 58.364544, 59.951866>,  <72.209846, 58.407459, 59.802219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.027191, 58.364544, 59.951866>,  <71.722763, 58.293018, 60.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.027191, 58.364544, 59.951866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569362, 0.276421, 0.774221,
		0.310803, -0.944254, 0.108564,
		0.761071, 0.178818, -0.623535,
		72.255516, 58.418186, 59.764805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.425400, 57.999683, 60.394814>,  <71.722763, 58.293018, 60.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.425400, 57.999683, 60.394814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496460, 58.342438, 60.201241>,  <72.539101, 58.548088, 60.085098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496460, 58.342438, 60.201241>,  <72.425400, 57.999683, 60.394814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.496460, 58.342438, 60.201241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212469, 0.446757, 0.869059,
		0.960882, -0.257214, -0.102692,
		0.177656, 0.856883, -0.483932,
		72.549759, 58.599503, 60.056061>
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
