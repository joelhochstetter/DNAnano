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
	<35.703312, 53.550800, 49.596577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991241, 53.305279, 49.726250>,  <36.163998, 53.157967, 49.804054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991241, 53.305279, 49.726250>,  <35.703312, 53.550800, 49.596577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991241, 53.305279, 49.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063662, -0.523425, -0.849690,
		0.691232, 0.590989, -0.415849,
		0.719823, -0.613807, 0.324184,
		36.207188, 53.121136, 49.823505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084473, 53.554939, 49.050152>,  <35.703312, 53.550800, 49.596577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084473, 53.554939, 49.050152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226707, 53.249374, 49.265556>,  <36.312046, 53.066036, 49.394798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226707, 53.249374, 49.265556>,  <36.084473, 53.554939, 49.050152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226707, 53.249374, 49.265556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247558, -0.478610, -0.842406,
		0.901263, 0.432859, 0.018927,
		0.355584, -0.763915, 0.538511,
		36.333382, 53.020199, 49.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822765, 53.334503, 48.895275>,  <36.084473, 53.554939, 49.050152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822765, 53.334503, 48.895275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567833, 53.054417, 49.023960>,  <36.414871, 52.886364, 49.101173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567833, 53.054417, 49.023960>,  <36.822765, 53.334503, 48.895275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567833, 53.054417, 49.023960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029717, -0.439517, -0.897743,
		0.770014, -0.562601, 0.300928,
		-0.637334, -0.700217, 0.321715,
		36.376633, 52.844353, 49.120476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147354, 52.696308, 48.911339>,  <36.822765, 53.334503, 48.895275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147354, 52.696308, 48.911339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751324, 52.659668, 48.868706>,  <36.513706, 52.637684, 48.843128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751324, 52.659668, 48.868706>,  <37.147354, 52.696308, 48.911339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751324, 52.659668, 48.868706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135060, -0.410618, -0.901749,
		0.038835, -0.907195, 0.418914,
		-0.990076, -0.091598, -0.106579,
		36.454300, 52.632187, 48.836731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700207, 52.507229, 49.365257>,  <37.147354, 52.696308, 48.911339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700207, 52.507229, 49.365257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992146, 52.489914, 49.092361>,  <38.167309, 52.479527, 48.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992146, 52.489914, 49.092361>,  <37.700207, 52.507229, 49.365257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992146, 52.489914, 49.092361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441263, -0.732411, 0.518519,
		-0.522126, -0.679486, -0.515445,
		0.729843, -0.043285, -0.682243,
		38.211098, 52.476929, 48.887688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942181, 51.842712, 49.368687>,  <37.700207, 52.507229, 49.365257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942181, 51.842712, 49.368687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275177, 52.018059, 49.233162>,  <38.474976, 52.123264, 49.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275177, 52.018059, 49.233162>,  <37.942181, 51.842712, 49.368687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275177, 52.018059, 49.233162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553838, -0.674759, 0.487815,
		-0.014778, -0.593750, -0.804514,
		0.832493, 0.438362, -0.338813,
		38.524925, 52.149567, 49.131519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385036, 51.284184, 49.422512>,  <37.942181, 51.842712, 49.368687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385036, 51.284184, 49.422512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621037, 51.606365, 49.400070>,  <38.762638, 51.799675, 49.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621037, 51.606365, 49.400070>,  <38.385036, 51.284184, 49.422512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621037, 51.606365, 49.400070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702041, -0.477447, 0.528378,
		0.398794, -0.351132, -0.847154,
		0.590001, 0.805450, -0.056106,
		38.798038, 51.848000, 49.383240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879543, 51.100853, 49.861824>,  <38.385036, 51.284184, 49.422512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879543, 51.100853, 49.861824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047478, 51.449100, 49.759243>,  <39.148239, 51.658047, 49.697697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047478, 51.449100, 49.759243>,  <38.879543, 51.100853, 49.861824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047478, 51.449100, 49.759243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818455, -0.241047, 0.521562,
		0.392264, -0.428863, -0.813760,
		0.419833, 0.870616, -0.256451,
		39.173428, 51.710285, 49.682308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649082, 50.937313, 49.888126>,  <38.879543, 51.100853, 49.861824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649082, 50.937313, 49.888126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591091, 51.331707, 49.855095>,  <39.556297, 51.568344, 49.835274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591091, 51.331707, 49.855095>,  <39.649082, 50.937313, 49.888126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591091, 51.331707, 49.855095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843039, 0.166791, 0.511338,
		0.517944, 0.004515, -0.855403,
		-0.144982, 0.985982, -0.082582,
		39.547596, 51.627502, 49.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144180, 51.273472, 49.502590>,  <39.649082, 50.937313, 49.888126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144180, 51.273472, 49.502590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004463, 51.497620, 49.802986>,  <39.920631, 51.632107, 49.983223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004463, 51.497620, 49.802986>,  <40.144180, 51.273472, 49.502590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004463, 51.497620, 49.802986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917146, 0.040289, 0.396511,
		0.191935, 0.827264, -0.528011,
		-0.349292, 0.560367, 0.750989,
		39.899677, 51.665730, 50.028282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551243, 51.924301, 49.564064>,  <40.144180, 51.273472, 49.502590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551243, 51.924301, 49.564064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397266, 51.790672, 49.908207>,  <40.304882, 51.710495, 50.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397266, 51.790672, 49.908207>,  <40.551243, 51.924301, 49.564064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397266, 51.790672, 49.908207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909799, 0.019411, 0.414595,
		-0.155204, 0.942349, 0.296463,
		-0.384938, -0.334069, 0.860361,
		40.281784, 51.690453, 50.166317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933041, 51.275497, 49.917217>,  <40.551243, 51.924301, 49.564064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933041, 51.275497, 49.917217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204063, 51.394581, 50.186226>,  <41.366676, 51.466030, 50.347630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204063, 51.394581, 50.186226>,  <40.933041, 51.275497, 49.917217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204063, 51.394581, 50.186226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260212, -0.758231, 0.597809,
		0.687898, -0.580048, -0.436279,
		0.677558, 0.297706, 0.672522,
		41.407330, 51.483894, 50.387981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487511, 50.724720, 49.974148>,  <40.933041, 51.275497, 49.917217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487511, 50.724720, 49.974148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400291, 50.931015, 50.305561>,  <41.347961, 51.054790, 50.504410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400291, 50.931015, 50.305561>,  <41.487511, 50.724720, 49.974148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400291, 50.931015, 50.305561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460308, -0.802947, 0.378671,
		0.860564, -0.298812, 0.412481,
		-0.218049, 0.515739, 0.828533,
		41.334877, 51.085735, 50.554123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348991, 50.191746, 50.373417>,  <41.487511, 50.724720, 49.974148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348991, 50.191746, 50.373417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410103, 50.137074, 50.764923>,  <41.446770, 50.104271, 50.999825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410103, 50.137074, 50.764923>,  <41.348991, 50.191746, 50.373417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410103, 50.137074, 50.764923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938036, -0.291659, -0.187146,
		0.311044, 0.946707, 0.083653,
		0.152774, -0.136680, 0.978764,
		41.455936, 50.096069, 51.058552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823750, 50.694988, 50.756832>,  <41.348991, 50.191746, 50.373417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823750, 50.694988, 50.756832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811615, 50.319771, 50.894909>,  <41.804333, 50.094639, 50.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811615, 50.319771, 50.894909>,  <41.823750, 50.694988, 50.756832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811615, 50.319771, 50.894909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955743, -0.128333, -0.264737,
		0.292634, 0.321880, 0.900421,
		-0.030340, -0.938042, 0.345190,
		41.802513, 50.038357, 50.998466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254063, 50.401531, 51.335842>,  <41.823750, 50.694988, 50.756832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254063, 50.401531, 51.335842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169704, 50.146561, 51.039406>,  <42.119091, 49.993580, 50.861546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169704, 50.146561, 51.039406>,  <42.254063, 50.401531, 51.335842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169704, 50.146561, 51.039406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972350, -0.059005, -0.225950,
		0.100297, -0.768252, 0.632241,
		-0.210892, -0.637422, -0.741092,
		42.106438, 49.955334, 50.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972485, 50.631058, 51.297253>,  <42.254063, 50.401531, 51.335842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972485, 50.631058, 51.297253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787388, 50.290333, 51.395462>,  <42.676331, 50.085899, 51.454388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787388, 50.290333, 51.395462>,  <42.972485, 50.631058, 51.297253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787388, 50.290333, 51.395462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885514, -0.431151, 0.173130,
		-0.041617, 0.297528, 0.953805,
		-0.462745, -0.851813, 0.245522,
		42.648563, 50.034790, 51.469120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685284, 51.207699, 50.919445>,  <42.972485, 50.631058, 51.297253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685284, 51.207699, 50.919445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075096, 51.137718, 50.975571>,  <43.308983, 51.095730, 51.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075096, 51.137718, 50.975571>,  <42.685284, 51.207699, 50.919445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075096, 51.137718, 50.975571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143708, 0.006804, -0.989597,
		0.172178, 0.984553, 0.031773,
		0.974527, -0.174953, 0.140317,
		43.367455, 51.085232, 51.017666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821293, 51.312366, 50.282791>,  <42.685284, 51.207699, 50.919445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821293, 51.312366, 50.282791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148403, 51.157543, 50.453171>,  <43.344669, 51.064651, 50.555397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148403, 51.157543, 50.453171>,  <42.821293, 51.312366, 50.282791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148403, 51.157543, 50.453171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369000, -0.215357, -0.904135,
		0.441682, 0.896554, -0.033290,
		0.817775, -0.387056, 0.425948,
		43.393734, 51.041428, 50.580956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343430, 51.841625, 50.281742>,  <42.821293, 51.312366, 50.282791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343430, 51.841625, 50.281742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398777, 51.448238, 50.235020>,  <43.431988, 51.212208, 50.206985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398777, 51.448238, 50.235020>,  <43.343430, 51.841625, 50.281742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398777, 51.448238, 50.235020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202337, 0.143529, -0.968741,
		0.969491, 0.110412, 0.218852,
		0.138373, -0.983468, -0.116809,
		43.440289, 51.153198, 50.199978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398273, 52.379211, 50.717693>,  <43.343430, 51.841625, 50.281742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398273, 52.379211, 50.717693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195408, 52.723690, 50.704323>,  <43.073689, 52.930378, 50.696301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195408, 52.723690, 50.704323>,  <43.398273, 52.379211, 50.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195408, 52.723690, 50.704323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802148, 0.485863, 0.347123,
		0.315182, 0.149238, -0.937224,
		-0.507166, 0.861200, -0.033425,
		43.043259, 52.982048, 50.694294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742603, 52.999199, 50.366096>,  <43.398273, 52.379211, 50.717693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742603, 52.999199, 50.366096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513134, 53.117035, 50.671806>,  <43.375454, 53.187737, 50.855232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513134, 53.117035, 50.671806>,  <43.742603, 52.999199, 50.366096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513134, 53.117035, 50.671806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792017, 0.437396, 0.425904,
		-0.208827, 0.849649, -0.484239,
		-0.573673, 0.294585, 0.764277,
		43.341034, 53.205410, 50.901089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058170, 53.634132, 50.630814>,  <43.742603, 52.999199, 50.366096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058170, 53.634132, 50.630814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786240, 53.535664, 50.907143>,  <43.623081, 53.476582, 51.072941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786240, 53.535664, 50.907143>,  <44.058170, 53.634132, 50.630814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786240, 53.535664, 50.907143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578356, 0.399243, 0.711413,
		-0.450939, 0.883178, -0.129038,
		-0.679822, -0.246174, 0.690826,
		43.582294, 53.461811, 51.114391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143337, 54.190098, 51.145279>,  <44.058170, 53.634132, 50.630814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143337, 54.190098, 51.145279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942234, 53.900848, 51.334732>,  <43.821571, 53.727299, 51.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942234, 53.900848, 51.334732>,  <44.143337, 54.190098, 51.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942234, 53.900848, 51.334732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400116, 0.291020, 0.869031,
		-0.766251, 0.626423, 0.143018,
		-0.502760, -0.723119, 0.473636,
		43.791405, 53.683914, 51.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287113, 54.912079, 50.722725>,  <44.143337, 54.190098, 51.145279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287113, 54.912079, 50.722725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624756, 55.125229, 50.746449>,  <44.827343, 55.253120, 50.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624756, 55.125229, 50.746449>,  <44.287113, 54.912079, 50.722725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624756, 55.125229, 50.746449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250552, -0.294230, -0.922308,
		-0.474026, 0.793391, -0.381877,
		0.844111, 0.532878, 0.059313,
		44.877991, 55.285091, 50.764244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516903, 55.465012, 50.206860>,  <44.287113, 54.912079, 50.722725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516903, 55.465012, 50.206860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856091, 55.307503, 50.348782>,  <45.059605, 55.212997, 50.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856091, 55.307503, 50.348782>,  <44.516903, 55.465012, 50.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856091, 55.307503, 50.348782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303304, -0.188486, -0.934066,
		0.434685, 0.899676, -0.040398,
		0.847971, -0.393772, 0.354807,
		45.110481, 55.189373, 50.455223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108936, 55.720100, 49.801270>,  <44.516903, 55.465012, 50.206860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108936, 55.720100, 49.801270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177715, 55.360291, 49.961914>,  <45.218983, 55.144405, 50.058300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177715, 55.360291, 49.961914>,  <45.108936, 55.720100, 49.801270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177715, 55.360291, 49.961914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263351, -0.350871, -0.898630,
		0.949252, 0.260282, 0.176559,
		0.171948, -0.899523, 0.401611,
		45.229301, 55.090435, 50.082397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784492, 55.451279, 49.683899>,  <45.108936, 55.720100, 49.801270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784492, 55.451279, 49.683899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553661, 55.130310, 49.744705>,  <45.415165, 54.937729, 49.781189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553661, 55.130310, 49.744705>,  <45.784492, 55.451279, 49.683899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553661, 55.130310, 49.744705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354254, -0.413653, -0.838687,
		0.735859, -0.430134, 0.522969,
		-0.577075, -0.802419, 0.152014,
		45.380539, 54.889584, 49.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181694, 54.843292, 49.643990>,  <45.784492, 55.451279, 49.683899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181694, 54.843292, 49.643990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800827, 54.778202, 49.540527>,  <45.572308, 54.739147, 49.478451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800827, 54.778202, 49.540527>,  <46.181694, 54.843292, 49.643990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800827, 54.778202, 49.540527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304718, -0.441822, -0.843765,
		0.023023, -0.882221, 0.470273,
		-0.952164, -0.162727, -0.258657,
		45.515179, 54.729385, 49.462929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561741, 54.087002, 49.696400>,  <46.181694, 54.843292, 49.643990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561741, 54.087002, 49.696400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485916, 53.704262, 49.608299>,  <46.440422, 53.474617, 49.555439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485916, 53.704262, 49.608299>,  <46.561741, 54.087002, 49.696400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485916, 53.704262, 49.608299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127654, -0.246429, 0.960717,
		-0.973535, 0.154001, 0.168860,
		-0.189563, -0.956847, -0.220248,
		46.429047, 53.417206, 49.542225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126167, 53.725128, 50.300625>,  <46.561741, 54.087002, 49.696400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126167, 53.725128, 50.300625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410656, 53.502609, 50.128723>,  <46.581348, 53.369099, 50.025581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410656, 53.502609, 50.128723>,  <46.126167, 53.725128, 50.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410656, 53.502609, 50.128723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253336, -0.367427, 0.894884,
		-0.655729, -0.745336, -0.120392,
		0.711224, -0.556302, -0.429753,
		46.624023, 53.335720, 49.999798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083492, 52.955521, 50.498447>,  <46.126167, 53.725128, 50.300625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083492, 52.955521, 50.498447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450016, 53.101952, 50.433502>,  <46.669930, 53.189808, 50.394535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450016, 53.101952, 50.433502>,  <46.083492, 52.955521, 50.498447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450016, 53.101952, 50.433502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291971, -0.333207, 0.896508,
		0.274088, -0.868886, -0.412205,
		0.916313, 0.366073, -0.162361,
		46.724911, 53.211773, 50.384792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455254, 52.361546, 50.640652>,  <46.083492, 52.955521, 50.498447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455254, 52.361546, 50.640652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659168, 52.704910, 50.663429>,  <46.781517, 52.910931, 50.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659168, 52.704910, 50.663429>,  <46.455254, 52.361546, 50.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659168, 52.704910, 50.663429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370875, -0.279011, 0.885779,
		0.776255, -0.430438, -0.460600,
		0.509785, 0.858415, 0.056945,
		46.812103, 52.962437, 50.680511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256367, 52.369987, 50.658936>,  <46.455254, 52.361546, 50.640652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256367, 52.369987, 50.658936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110310, 52.677868, 50.868401>,  <47.022675, 52.862598, 50.994080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110310, 52.677868, 50.868401>,  <47.256367, 52.369987, 50.658936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110310, 52.677868, 50.868401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477187, -0.328242, 0.815199,
		0.799350, 0.547553, -0.247437,
		-0.365145, 0.769704, 0.523665,
		47.000767, 52.908779, 51.025501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.746597, 52.814156, 51.038593>,  <47.256367, 52.369987, 50.658936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.746597, 52.814156, 51.038593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403648, 52.875706, 51.235058>,  <47.197880, 52.912636, 51.352936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403648, 52.875706, 51.235058>,  <47.746597, 52.814156, 51.038593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403648, 52.875706, 51.235058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459864, -0.199576, 0.865271,
		0.231170, 0.967725, 0.100348,
		-0.857371, 0.153878, 0.491158,
		47.146439, 52.921867, 51.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.370152, 53.266121, 50.758759>,  <47.746597, 52.814156, 51.038593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.370152, 53.266121, 50.758759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374290, 53.291206, 50.359566>,  <48.376774, 53.306259, 50.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374290, 53.291206, 50.359566>,  <48.370152, 53.266121, 50.758759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.374290, 53.291206, 50.359566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483193, -0.873462, -0.059899,
		-0.875453, 0.482836, 0.021270,
		0.010343, 0.062717, -0.997978,
		48.377392, 53.310020, 50.060173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.578358, 52.807713, 51.312721>,  <48.370152, 53.266121, 50.758759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.578358, 52.807713, 51.312721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897888, 52.890564, 51.538635>,  <49.089607, 52.940273, 51.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897888, 52.890564, 51.538635>,  <48.578358, 52.807713, 51.312721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.897888, 52.890564, 51.538635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550591, -0.629956, -0.547727,
		0.242339, 0.748501, -0.617266,
		0.798825, 0.207126, 0.564781,
		49.137535, 52.952702, 51.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.153366, 52.864109, 50.894417>,  <48.578358, 52.807713, 51.312721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.153366, 52.864109, 50.894417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.309998, 52.756252, 51.246315>,  <49.403976, 52.691536, 51.457455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.309998, 52.756252, 51.246315>,  <49.153366, 52.864109, 50.894417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.309998, 52.756252, 51.246315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585477, -0.664568, -0.464290,
		0.709846, 0.696879, -0.102360,
		0.391580, -0.269645, 0.879748,
		49.427471, 52.675358, 51.510239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.633018, 52.520809, 50.622944>,  <49.153366, 52.864109, 50.894417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.633018, 52.520809, 50.622944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.648205, 52.382580, 50.997993>,  <49.657318, 52.299644, 51.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.648205, 52.382580, 50.997993>,  <49.633018, 52.520809, 50.622944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.648205, 52.382580, 50.997993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674508, -0.683437, -0.279199,
		0.737290, 0.643035, 0.207144,
		0.037964, -0.345571, 0.937624,
		49.659595, 52.278908, 51.279282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.323021, 52.199314, 50.689545>,  <49.633018, 52.520809, 50.622944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.323021, 52.199314, 50.689545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.084560, 52.049809, 50.973770>,  <49.941483, 51.960106, 51.144306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.084560, 52.049809, 50.973770>,  <50.323021, 52.199314, 50.689545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.084560, 52.049809, 50.973770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440319, -0.892264, -0.099924,
		0.671360, 0.253306, 0.696500,
		-0.596150, -0.373767, 0.710566,
		49.905716, 51.937679, 51.186939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.450024, 52.928993, 50.862404>,  <50.323021, 52.199314, 50.689545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.450024, 52.928993, 50.862404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603340, 53.222176, 50.637596>,  <50.695332, 53.398083, 50.502712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603340, 53.222176, 50.637596>,  <50.450024, 52.928993, 50.862404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.603340, 53.222176, 50.637596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857239, -0.055774, 0.511888,
		0.343844, -0.677988, -0.649695,
		0.383290, 0.732954, -0.562021,
		50.718327, 53.442062, 50.468990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.026756, 52.652897, 50.396305>,  <50.450024, 52.928993, 50.862404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.026756, 52.652897, 50.396305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050232, 53.039444, 50.496460>,  <51.064316, 53.271370, 50.556553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050232, 53.039444, 50.496460>,  <51.026756, 52.652897, 50.396305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.050232, 53.039444, 50.496460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966447, -0.117833, 0.228246,
		0.250073, 0.228592, -0.940856,
		0.058689, 0.966365, 0.250389,
		51.067837, 53.329353, 50.571575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.263683, 53.033005, 49.876129>,  <51.026756, 52.652897, 50.396305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.263683, 53.033005, 49.876129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.358948, 53.166157, 50.241089>,  <51.416107, 53.246048, 50.460064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.358948, 53.166157, 50.241089>,  <51.263683, 53.033005, 49.876129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.358948, 53.166157, 50.241089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971226, -0.081418, -0.223812,
		-0.000218, 0.939446, -0.342696,
		0.238161, 0.332884, 0.912397,
		51.430397, 53.266022, 50.514809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.739807, 53.653542, 49.886627>,  <51.263683, 53.033005, 49.876129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.739807, 53.653542, 49.886627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.774014, 53.410530, 50.202499>,  <51.794537, 53.264725, 50.392021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.774014, 53.410530, 50.202499>,  <51.739807, 53.653542, 49.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.774014, 53.410530, 50.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959591, -0.163045, -0.229351,
		0.268091, 0.777385, 0.569035,
		0.085516, -0.607527, 0.789682,
		51.799667, 53.228271, 50.439404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.723965, 54.330475, 50.309944>,  <51.739807, 53.653542, 49.886627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.723965, 54.330475, 50.309944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.828117, 53.955635, 50.402935>,  <51.890610, 53.730732, 50.458729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.828117, 53.955635, 50.402935>,  <51.723965, 54.330475, 50.309944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.828117, 53.955635, 50.402935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481897, 0.334786, 0.809749,
		-0.836647, -0.098809, 0.538757,
		0.260379, -0.937099, 0.232482,
		51.906231, 53.674507, 50.472679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.440495, 54.144077, 50.978043>,  <51.723965, 54.330475, 50.309944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.440495, 54.144077, 50.978043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.795303, 53.983852, 50.886181>,  <52.008190, 53.887718, 50.831066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.795303, 53.983852, 50.886181>,  <51.440495, 54.144077, 50.978043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.795303, 53.983852, 50.886181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420518, 0.495453, 0.760060,
		-0.190673, -0.770762, 0.607923,
		0.887022, -0.400565, -0.229650,
		52.061409, 53.863682, 50.817287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.762173, 53.910824, 51.620163>,  <51.440495, 54.144077, 50.978043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.762173, 53.910824, 51.620163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.043159, 54.007263, 51.352310>,  <52.211754, 54.065128, 51.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.043159, 54.007263, 51.352310>,  <51.762173, 53.910824, 51.620163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.043159, 54.007263, 51.352310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553891, 0.405627, 0.727098,
		0.446924, -0.881668, 0.151397,
		0.702470, 0.241100, -0.669633,
		52.253902, 54.079594, 51.151421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.432961, 53.598579, 51.685497>,  <51.762173, 53.910824, 51.620163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.432961, 53.598579, 51.685497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.498383, 53.947334, 51.500862>,  <52.537636, 54.156586, 51.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.498383, 53.947334, 51.500862>,  <52.432961, 53.598579, 51.685497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.498383, 53.947334, 51.500862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723880, 0.211827, 0.656602,
		0.670260, -0.441524, -0.596497,
		0.163551, 0.871886, -0.461590,
		52.547447, 54.208900, 51.362385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.142815, 53.756523, 51.618450>,  <52.432961, 53.598579, 51.685497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.142815, 53.756523, 51.618450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931160, 54.083366, 51.709976>,  <52.804169, 54.279472, 51.764893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931160, 54.083366, 51.709976>,  <53.142815, 53.756523, 51.618450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.931160, 54.083366, 51.709976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694056, 0.261632, 0.670697,
		0.488163, 0.513701, -0.705555,
		-0.529134, 0.817104, 0.228819,
		52.772419, 54.328499, 51.778622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.622646, 54.286842, 51.566902>,  <53.142815, 53.756523, 51.618450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.622646, 54.286842, 51.566902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.340515, 54.332455, 51.846764>,  <53.171238, 54.359821, 52.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.340515, 54.332455, 51.846764>,  <53.622646, 54.286842, 51.566902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.340515, 54.332455, 51.846764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708566, 0.083801, 0.700651,
		0.021265, 0.989936, -0.139906,
		-0.705324, 0.114032, 0.699653,
		53.128918, 54.366665, 52.056660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.700447, 54.934258, 51.834297>,  <53.622646, 54.286842, 51.566902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.700447, 54.934258, 51.834297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552410, 54.652939, 52.077084>,  <53.463589, 54.484146, 52.222755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552410, 54.652939, 52.077084>,  <53.700447, 54.934258, 51.834297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.552410, 54.652939, 52.077084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731995, 0.181534, 0.656680,
		-0.572026, 0.687327, 0.447626,
		-0.370094, -0.703297, 0.606962,
		53.441383, 54.441948, 52.259171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.517715, 55.243172, 52.584347>,  <53.700447, 54.934258, 51.834297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.517715, 55.243172, 52.584347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.568104, 54.846802, 52.603096>,  <53.598339, 54.608978, 52.614346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.568104, 54.846802, 52.603096>,  <53.517715, 55.243172, 52.584347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.568104, 54.846802, 52.603096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657032, 0.118741, 0.744452,
		-0.743262, -0.062984, 0.666028,
		0.125974, -0.990926, 0.046873,
		53.605896, 54.549522, 52.617157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.501484, 55.002312, 53.328671>,  <53.517715, 55.243172, 52.584347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.501484, 55.002312, 53.328671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.707390, 54.757545, 53.088478>,  <53.830933, 54.610687, 52.944363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.707390, 54.757545, 53.088478>,  <53.501484, 55.002312, 53.328671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.707390, 54.757545, 53.088478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798303, 0.086709, 0.595981,
		-0.312624, -0.786155, 0.533129,
		0.514761, -0.611917, -0.600483,
		53.861816, 54.573971, 52.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.822598, 54.509270, 53.801174>,  <53.501484, 55.002312, 53.328671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.822598, 54.509270, 53.801174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.009995, 54.533684, 53.448631>,  <54.122433, 54.548332, 53.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.009995, 54.533684, 53.448631>,  <53.822598, 54.509270, 53.801174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.009995, 54.533684, 53.448631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869043, 0.147686, 0.472180,
		0.158985, -0.987149, 0.016146,
		0.468496, 0.061038, -0.881355,
		54.150543, 54.551994, 53.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.421673, 53.960213, 53.852402>,  <53.822598, 54.509270, 53.801174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.421673, 53.960213, 53.852402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.483292, 54.304131, 53.657661>,  <54.520264, 54.510483, 53.540817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.483292, 54.304131, 53.657661>,  <54.421673, 53.960213, 53.852402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.483292, 54.304131, 53.657661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979658, -0.068771, 0.188526,
		0.128613, -0.505985, -0.852900,
		0.154046, 0.859797, -0.486847,
		54.529507, 54.562069, 53.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.152874, 53.842819, 53.609367>,  <54.421673, 53.960213, 53.852402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.152874, 53.842819, 53.609367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.067055, 54.232281, 53.578445>,  <55.015564, 54.465958, 53.559891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.067055, 54.232281, 53.578445>,  <55.152874, 53.842819, 53.609367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.067055, 54.232281, 53.578445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976661, 0.214683, -0.006641,
		0.010131, -0.076928, -0.996985,
		-0.214547, 0.973649, -0.077307,
		55.002689, 54.524376, 53.555252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.526176, 54.215961, 53.034756>,  <55.152874, 53.842819, 53.609367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.526176, 54.215961, 53.034756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419014, 54.459274, 53.333611>,  <55.354717, 54.605263, 53.512924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419014, 54.459274, 53.333611>,  <55.526176, 54.215961, 53.034756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.419014, 54.459274, 53.333611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961078, 0.223054, 0.163019,
		-0.067491, 0.761734, -0.644365,
		-0.267905, 0.608283, 0.747140,
		55.338642, 54.641758, 53.557755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.565887, 54.963795, 52.961876>,  <55.526176, 54.215961, 53.034756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.565887, 54.963795, 52.961876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.649567, 54.871979, 53.342098>,  <55.699776, 54.816891, 53.570232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.649567, 54.871979, 53.342098>,  <55.565887, 54.963795, 52.961876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.649567, 54.871979, 53.342098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915538, 0.387483, -0.107925,
		-0.343550, 0.892844, 0.291210,
		0.209199, -0.229536, 0.950552,
		55.712326, 54.803120, 53.627262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.183441, 55.384464, 53.010521>,  <55.565887, 54.963795, 52.961876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.183441, 55.384464, 53.010521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.128059, 55.243168, 53.380615>,  <56.094830, 55.158390, 53.602673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.128059, 55.243168, 53.380615>,  <56.183441, 55.384464, 53.010521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.128059, 55.243168, 53.380615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974507, 0.117937, 0.190857,
		-0.176537, 0.928070, 0.327903,
		-0.138457, -0.353237, 0.925231,
		56.086521, 55.137196, 53.658184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.318447, 55.846306, 53.584492>,  <56.183441, 55.384464, 53.010521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.318447, 55.846306, 53.584492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364975, 55.506920, 53.791016>,  <56.392891, 55.303288, 53.914928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364975, 55.506920, 53.791016>,  <56.318447, 55.846306, 53.584492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.364975, 55.506920, 53.791016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937283, 0.265749, 0.225563,
		-0.328591, 0.457687, 0.826166,
		0.116315, -0.848469, 0.516305,
		56.399868, 55.252380, 53.945908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.450958, 56.012581, 54.252388>,  <56.318447, 55.846306, 53.584492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.450958, 56.012581, 54.252388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.656387, 55.687740, 54.141579>,  <56.779644, 55.492836, 54.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.656387, 55.687740, 54.141579>,  <56.450958, 56.012581, 54.252388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.656387, 55.687740, 54.141579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851736, 0.443407, 0.279170,
		-0.103879, -0.379325, 0.919414,
		0.513571, -0.812098, -0.277024,
		56.810459, 55.444111, 54.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.845215, 55.768723, 54.785458>,  <56.450958, 56.012581, 54.252388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.845215, 55.768723, 54.785458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.018074, 55.689491, 54.433544>,  <57.121792, 55.641953, 54.222397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.018074, 55.689491, 54.433544>,  <56.845215, 55.768723, 54.785458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.018074, 55.689491, 54.433544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835723, 0.454524, 0.308180,
		0.338838, -0.868433, 0.361958,
		0.432152, -0.198074, -0.879779,
		57.147720, 55.630070, 54.169609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.592613, 55.425430, 54.946564>,  <56.845215, 55.768723, 54.785458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.592613, 55.425430, 54.946564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582489, 55.595245, 54.584541>,  <57.576412, 55.697136, 54.367329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582489, 55.595245, 54.584541>,  <57.592613, 55.425430, 54.946564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.582489, 55.595245, 54.584541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970589, 0.227255, 0.079452,
		0.239409, -0.876426, -0.417806,
		-0.025315, 0.424539, -0.905056,
		57.574894, 55.722607, 54.313026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.254379, 55.541245, 55.322739>,  <57.592613, 55.425430, 54.946564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.254379, 55.541245, 55.322739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.436043, 55.409218, 55.653748>,  <58.545040, 55.330002, 55.852352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.436043, 55.409218, 55.653748>,  <58.254379, 55.541245, 55.322739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.436043, 55.409218, 55.653748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784148, 0.588997, -0.195432,
		-0.422903, 0.737658, 0.526320,
		0.454163, -0.330064, 0.827522,
		58.572292, 55.310200, 55.902004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.801579, 56.084660, 55.579834>,  <58.254379, 55.541245, 55.322739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.801579, 56.084660, 55.579834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.914108, 55.735943, 55.740250>,  <58.981625, 55.526711, 55.836498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.914108, 55.735943, 55.740250>,  <58.801579, 56.084660, 55.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.914108, 55.735943, 55.740250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944993, 0.179011, -0.273757,
		0.166870, 0.455992, 0.874200,
		0.281323, -0.871795, 0.401038,
		58.998505, 55.474403, 55.860561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.487694, 56.108097, 55.350288>,  <58.801579, 56.084660, 55.579834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.487694, 56.108097, 55.350288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.465645, 55.782047, 55.580948>,  <59.452415, 55.586418, 55.719345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.465645, 55.782047, 55.580948>,  <59.487694, 56.108097, 55.350288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.465645, 55.782047, 55.580948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973190, -0.173019, -0.151546,
		0.223301, 0.552838, 0.802812,
		-0.055122, -0.815129, 0.576652,
		59.449108, 55.537510, 55.753944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.076527, 56.159977, 55.753063>,  <59.487694, 56.108097, 55.350288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.076527, 56.159977, 55.753063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.954727, 55.779945, 55.725845>,  <59.881649, 55.551926, 55.709515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.954727, 55.779945, 55.725845>,  <60.076527, 56.159977, 55.753063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.954727, 55.779945, 55.725845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948099, -0.295446, -0.117560,
		0.091588, -0.100308, 0.990732,
		-0.304500, -0.950079, -0.068042,
		59.863377, 55.494923, 55.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.461433, 55.687859, 56.195877>,  <60.076527, 56.159977, 55.753063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.461433, 55.687859, 56.195877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292686, 55.484108, 55.895859>,  <60.191437, 55.361858, 55.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292686, 55.484108, 55.895859>,  <60.461433, 55.687859, 56.195877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.292686, 55.484108, 55.895859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886949, -0.403410, -0.224902,
		-0.188015, -0.760129, 0.621977,
		-0.421866, -0.509377, -0.750043,
		60.166126, 55.331295, 55.670845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.942085, 55.564087, 55.713970>,  <60.461433, 55.687859, 56.195877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.942085, 55.564087, 55.713970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.797203, 55.836586, 55.459503>,  <60.710274, 56.000084, 55.306824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.797203, 55.836586, 55.459503>,  <60.942085, 55.564087, 55.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.797203, 55.836586, 55.459503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930840, 0.228882, -0.284869,
		-0.048458, -0.695353, -0.717033,
		-0.362201, 0.681247, -0.636170,
		60.688541, 56.040958, 55.268654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.487537, 55.882938, 55.434906>,  <60.942085, 55.564087, 55.713970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.487537, 55.882938, 55.434906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236397, 56.103340, 55.215019>,  <61.085712, 56.235580, 55.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236397, 56.103340, 55.215019>,  <61.487537, 55.882938, 55.434906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.236397, 56.103340, 55.215019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776441, 0.394215, -0.491665,
		-0.054201, -0.735520, -0.675332,
		-0.627855, 0.551004, -0.549721,
		61.048038, 56.268642, 55.050102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.897171, 55.723576, 54.833485>,  <61.487537, 55.882938, 55.434906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.897171, 55.723576, 54.833485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.662621, 55.417431, 54.939606>,  <61.521889, 55.233746, 55.003281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.662621, 55.417431, 54.939606>,  <61.897171, 55.723576, 54.833485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.662621, 55.417431, 54.939606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804163, -0.589390, 0.077086,
		0.097370, 0.258550, 0.961078,
		-0.586380, -0.765357, 0.265305,
		61.486706, 55.187824, 55.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.405670, 55.847725, 54.206062>,  <61.897171, 55.723576, 54.833485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.405670, 55.847725, 54.206062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.642433, 55.543282, 54.312164>,  <62.784489, 55.360615, 54.375824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.642433, 55.543282, 54.312164>,  <62.405670, 55.847725, 54.206062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.642433, 55.543282, 54.312164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779984, 0.457940, -0.426517,
		0.203158, 0.459349, 0.864711,
		0.591906, -0.761111, 0.265251,
		62.820004, 55.314949, 54.391739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.077156, 56.105957, 54.626217>,  <62.405670, 55.847725, 54.206062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.077156, 56.105957, 54.626217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.105385, 55.771641, 54.408417>,  <63.122322, 55.571053, 54.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.105385, 55.771641, 54.408417>,  <63.077156, 56.105957, 54.626217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.105385, 55.771641, 54.408417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881886, 0.307367, -0.357493,
		0.466150, -0.454958, 0.758761,
		0.070574, -0.835786, -0.544500,
		63.126556, 55.520905, 54.245068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.739201, 55.797264, 54.738396>,  <63.077156, 56.105957, 54.626217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.739201, 55.797264, 54.738396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.589165, 55.751484, 54.370438>,  <63.499142, 55.724014, 54.149662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.589165, 55.751484, 54.370438>,  <63.739201, 55.797264, 54.738396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.589165, 55.751484, 54.370438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780623, 0.496185, -0.380037,
		0.499936, -0.860639, -0.096768,
		-0.375089, -0.114455, -0.919896,
		63.476639, 55.717148, 54.094467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.928188, 55.136890, 54.757347>,  <63.739201, 55.797264, 54.738396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.928188, 55.136890, 54.757347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.065361, 55.148285, 55.132919>,  <64.147667, 55.155121, 55.358261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.065361, 55.148285, 55.132919>,  <63.928188, 55.136890, 54.757347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.065361, 55.148285, 55.132919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832902, -0.471412, -0.289905,
		0.434362, 0.881453, -0.185392,
		0.342933, 0.028490, 0.938928,
		64.168243, 55.156834, 55.414597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.648506, 55.258350, 54.662083>,  <63.928188, 55.136890, 54.757347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.648506, 55.258350, 54.662083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.592613, 55.158257, 55.045303>,  <64.559074, 55.098198, 55.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.592613, 55.158257, 55.045303>,  <64.648506, 55.258350, 54.662083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.592613, 55.158257, 55.045303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858785, -0.512266, -0.008541,
		0.492912, 0.821563, 0.286482,
		-0.139737, -0.250236, 0.958048,
		64.550690, 55.083187, 55.332718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.239838, 55.517426, 55.117962>,  <64.648506, 55.258350, 54.662083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.239838, 55.517426, 55.117962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.061478, 55.179001, 55.234818>,  <64.954460, 54.975945, 55.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.061478, 55.179001, 55.234818>,  <65.239838, 55.517426, 55.117962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.061478, 55.179001, 55.234818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867514, -0.488882, -0.091723,
		0.220425, 0.212534, 0.951968,
		-0.445906, -0.846064, 0.292137,
		64.927704, 54.925182, 55.322460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.656075, 55.195854, 55.694862>,  <65.239838, 55.517426, 55.117962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.656075, 55.195854, 55.694862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.450172, 54.947964, 55.457893>,  <65.326630, 54.799229, 55.315712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.450172, 54.947964, 55.457893>,  <65.656075, 55.195854, 55.694862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.450172, 54.947964, 55.457893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843168, -0.491044, -0.218959,
		-0.155213, -0.612225, 0.775300,
		-0.514759, -0.619723, -0.592425,
		65.295746, 54.762047, 55.280167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.364777, 55.136421, 55.697250>,  <65.656075, 55.195854, 55.694862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.364777, 55.136421, 55.697250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.741531, 55.051861, 55.592834>,  <66.967583, 55.001125, 55.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.741531, 55.051861, 55.592834>,  <66.364777, 55.136421, 55.697250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.741531, 55.051861, 55.592834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328165, 0.745031, 0.580720,
		0.071718, -0.632642, 0.771116,
		0.941894, -0.211405, -0.261042,
		67.024101, 54.988438, 55.514523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.783035, 55.166748, 56.290886>,  <66.364777, 55.136421, 55.697250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.783035, 55.166748, 56.290886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.006378, 55.236130, 55.966377>,  <67.140381, 55.277760, 55.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.006378, 55.236130, 55.966377>,  <66.783035, 55.166748, 56.290886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.006378, 55.236130, 55.966377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440062, 0.767059, 0.466869,
		0.703273, -0.617685, 0.351956,
		0.558348, 0.173454, -0.811271,
		67.173882, 55.288166, 55.722996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.506821, 55.137421, 56.471729>,  <66.783035, 55.166748, 56.290886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.506821, 55.137421, 56.471729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.399147, 55.385513, 56.177017>,  <67.334541, 55.534370, 56.000191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.399147, 55.385513, 56.177017>,  <67.506821, 55.137421, 56.471729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.399147, 55.385513, 56.177017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415420, 0.764972, 0.492184,
		0.868887, -0.173584, -0.463578,
		-0.269188, 0.620231, -0.736784,
		67.318390, 55.571583, 55.955982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.065598, 55.388805, 56.101833>,  <67.506821, 55.137421, 56.471729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.065598, 55.388805, 56.101833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.757202, 55.642048, 56.129410>,  <67.572166, 55.793995, 56.145954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.757202, 55.642048, 56.129410>,  <68.065598, 55.388805, 56.101833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.757202, 55.642048, 56.129410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577369, 0.649193, 0.495170,
		0.268738, 0.421576, -0.866056,
		-0.770990, 0.633105, 0.068942,
		67.525902, 55.831978, 56.150093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.054985, 55.966240, 55.623623>,  <68.065598, 55.388805, 56.101833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.054985, 55.966240, 55.623623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.911491, 56.047867, 55.987968>,  <67.825394, 56.096844, 56.206573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.911491, 56.047867, 55.987968>,  <68.054985, 55.966240, 55.623623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.911491, 56.047867, 55.987968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855398, 0.462462, 0.233286,
		-0.373632, 0.862836, -0.340460,
		-0.358738, 0.204065, 0.910859,
		67.803871, 56.109085, 56.261227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.378380, 56.604836, 55.901390>,  <68.054985, 55.966240, 55.623623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.378380, 56.604836, 55.901390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.293808, 56.414532, 56.242905>,  <68.243065, 56.300350, 56.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.293808, 56.414532, 56.242905>,  <68.378380, 56.604836, 55.901390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.293808, 56.414532, 56.242905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940821, 0.137657, 0.309687,
		-0.264865, 0.868738, 0.418497,
		-0.211428, -0.475756, 0.853788,
		68.230377, 56.271805, 56.499043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.539474, 57.061901, 56.442410>,  <68.378380, 56.604836, 55.901390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.539474, 57.061901, 56.442410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.614822, 56.676170, 56.516808>,  <68.660034, 56.444733, 56.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.614822, 56.676170, 56.516808>,  <68.539474, 57.061901, 56.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.614822, 56.676170, 56.516808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970284, 0.212025, 0.116599,
		-0.151874, 0.158502, 0.975608,
		0.188372, -0.964325, 0.185993,
		68.671333, 56.386871, 56.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.767113, 57.107769, 57.117313>,  <68.539474, 57.061901, 56.442410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.767113, 57.107769, 57.117313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.894363, 56.774963, 56.935524>,  <68.970711, 56.575279, 56.826450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.894363, 56.774963, 56.935524>,  <68.767113, 57.107769, 57.117313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.894363, 56.774963, 56.935524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941872, 0.222747, 0.251518,
		-0.108033, -0.508072, 0.854513,
		0.318129, -0.832014, -0.454475,
		68.989799, 56.525360, 56.799183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.011169, 56.658424, 57.634571>,  <68.767113, 57.107769, 57.117313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.011169, 56.658424, 57.634571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185890, 56.646702, 57.274940>,  <69.290726, 56.639668, 57.059162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185890, 56.646702, 57.274940>,  <69.011169, 56.658424, 57.634571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.185890, 56.646702, 57.274940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843775, 0.359828, 0.398205,
		0.311843, -0.932558, 0.181905,
		0.436804, -0.029309, -0.899079,
		69.316933, 56.637909, 57.005219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.527557, 56.126251, 57.540226>,  <69.011169, 56.658424, 57.634571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.527557, 56.126251, 57.540226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.622993, 56.393333, 57.258163>,  <69.680252, 56.553581, 57.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.622993, 56.393333, 57.258163>,  <69.527557, 56.126251, 57.540226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.622993, 56.393333, 57.258163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879102, 0.160021, 0.448970,
		0.412619, -0.727024, -0.548801,
		0.238592, 0.667705, -0.705155,
		69.694572, 56.593643, 57.046616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.156197, 55.966438, 57.293858>,  <69.527557, 56.126251, 57.540226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.156197, 55.966438, 57.293858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.121727, 56.353687, 57.199776>,  <70.101044, 56.586037, 57.143326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.121727, 56.353687, 57.199776>,  <70.156197, 55.966438, 57.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.121727, 56.353687, 57.199776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908487, 0.173264, 0.380304,
		0.408931, -0.180907, -0.894454,
		-0.086177, 0.968118, -0.235205,
		70.095871, 56.644123, 57.129215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.766548, 56.256836, 56.823849>,  <70.156197, 55.966438, 57.293858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.766548, 56.256836, 56.823849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.620735, 56.556858, 57.044586>,  <70.533249, 56.736870, 57.177029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.620735, 56.556858, 57.044586>,  <70.766548, 56.256836, 56.823849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.620735, 56.556858, 57.044586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922084, 0.208081, 0.326287,
		0.129903, 0.627793, -0.767464,
		-0.364536, 0.750052, 0.551847,
		70.511375, 56.781876, 57.210140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.275040, 56.844589, 56.737808>,  <70.766548, 56.256836, 56.823849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.275040, 56.844589, 56.737808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.062538, 56.826019, 57.076187>,  <70.935036, 56.814877, 57.279213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.062538, 56.826019, 57.076187>,  <71.275040, 56.844589, 56.737808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.062538, 56.826019, 57.076187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846957, -0.053814, 0.528932,
		0.020966, 0.997471, 0.067912,
		-0.531249, -0.046430, 0.845943,
		70.903160, 56.812092, 57.329971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.238808, 57.388908, 57.302296>,  <71.275040, 56.844589, 56.737808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.238808, 57.388908, 57.302296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.206062, 57.029652, 57.475105>,  <71.186417, 56.814098, 57.578793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.206062, 57.029652, 57.475105>,  <71.238808, 57.388908, 57.302296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.206062, 57.029652, 57.475105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846857, 0.165872, 0.505291,
		-0.525482, 0.407230, 0.747016,
		-0.081861, -0.898137, 0.432028,
		71.181503, 56.760212, 57.604713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.348518, 57.424244, 58.052353>,  <71.238808, 57.388908, 57.302296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.348518, 57.424244, 58.052353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413200, 57.036869, 57.976486>,  <71.452011, 56.804443, 57.930965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413200, 57.036869, 57.976486>,  <71.348518, 57.424244, 58.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.413200, 57.036869, 57.976486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782524, 0.008743, 0.622558,
		-0.601253, -0.249090, 0.759242,
		0.161711, -0.968441, -0.189662,
		71.461716, 56.746338, 57.919586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.216560, 56.932301, 58.686241>,  <71.348518, 57.424244, 58.052353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.216560, 56.932301, 58.686241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.514076, 56.798653, 58.454681>,  <71.692589, 56.718464, 58.315746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.514076, 56.798653, 58.454681>,  <71.216560, 56.932301, 58.686241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.514076, 56.798653, 58.454681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637348, 0.093600, 0.764870,
		-0.201376, -0.937871, 0.282573,
		0.743798, -0.334123, -0.578901,
		71.737213, 56.698418, 58.281010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.618668, 56.460346, 59.022972>,  <71.216560, 56.932301, 58.686241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.618668, 56.460346, 59.022972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.841400, 56.678711, 58.772560>,  <71.975044, 56.809731, 58.622314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.841400, 56.678711, 58.772560>,  <71.618668, 56.460346, 59.022972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.841400, 56.678711, 58.772560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614407, 0.236478, 0.752716,
		0.558959, -0.803777, -0.203734,
		0.556837, 0.545913, -0.626028,
		72.008453, 56.842484, 58.584751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.264992, 56.328579, 59.140114>,  <71.618668, 56.460346, 59.022972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.264992, 56.328579, 59.140114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.244995, 56.687511, 58.964706>,  <72.233002, 56.902870, 58.859463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.244995, 56.687511, 58.964706>,  <72.264992, 56.328579, 59.140114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.244995, 56.687511, 58.964706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552388, 0.390638, 0.736390,
		0.832087, -0.205421, -0.515202,
		-0.049988, 0.897332, -0.438516,
		72.229996, 56.956711, 58.833153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.929008, 56.566147, 59.281239>,  <72.264992, 56.328579, 59.140114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.929008, 56.566147, 59.281239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.716843, 56.895416, 59.200211>,  <72.589539, 57.092979, 59.151596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.716843, 56.895416, 59.200211>,  <72.929008, 56.566147, 59.281239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.716843, 56.895416, 59.200211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345749, 0.428240, 0.834906,
		0.774021, 0.372816, -0.511761,
		-0.530423, 0.823176, -0.202566,
		72.557716, 57.142368, 59.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.335205, 57.186306, 59.226223>,  <72.929008, 56.566147, 59.281239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.335205, 57.186306, 59.226223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.968361, 57.276161, 59.357948>,  <72.748253, 57.330074, 59.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.968361, 57.276161, 59.357948>,  <73.335205, 57.186306, 59.226223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.968361, 57.276161, 59.357948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396723, 0.433556, 0.809098,
		0.038975, 0.872679, -0.486737,
		-0.917111, 0.224634, 0.329314,
		72.693230, 57.343552, 59.456741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.239182, 58.000923, 59.356220>,  <73.335205, 57.186306, 59.226223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.239182, 58.000923, 59.356220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.041008, 57.751984, 59.598618>,  <72.922104, 57.602619, 59.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.041008, 57.751984, 59.598618>,  <73.239182, 58.000923, 59.356220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.041008, 57.751984, 59.598618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513353, 0.352993, 0.782217,
		-0.700721, 0.698629, 0.144596,
		-0.495438, -0.622345, 0.605993,
		72.892380, 57.565281, 59.780415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.090508, 58.400974, 59.898540>,  <73.239182, 58.000923, 59.356220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.090508, 58.400974, 59.898540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.087486, 58.012955, 59.995651>,  <73.085670, 57.780144, 60.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.087486, 58.012955, 59.995651>,  <73.090508, 58.400974, 59.898540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.087486, 58.012955, 59.995651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593309, 0.191085, 0.781966,
		-0.804940, 0.149946, 0.574098,
		-0.007551, -0.970053, 0.242776,
		73.085220, 57.721939, 60.068485>
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
