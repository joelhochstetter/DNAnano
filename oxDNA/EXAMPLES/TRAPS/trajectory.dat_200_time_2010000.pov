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
	<36.497025, 52.627846, 49.503674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391338, 52.998657, 49.610115>,  <36.327927, 53.221146, 49.673981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391338, 52.998657, 49.610115>,  <36.497025, 52.627846, 49.503674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391338, 52.998657, 49.610115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838003, 0.084081, 0.539149,
		0.477432, 0.365445, -0.799067,
		-0.264215, 0.927028, 0.266101,
		36.312073, 53.276764, 49.689945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849625, 53.238445, 49.172115>,  <36.497025, 52.627846, 49.503674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849625, 53.238445, 49.172115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726028, 53.314053, 49.544952>,  <36.651871, 53.359417, 49.768654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726028, 53.314053, 49.544952>,  <36.849625, 53.238445, 49.172115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726028, 53.314053, 49.544952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924737, -0.169288, 0.340887,
		0.222226, 0.967271, -0.122481,
		-0.308995, 0.189017, 0.932092,
		36.633331, 53.370758, 49.824581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206123, 53.836956, 49.482025>,  <36.849625, 53.238445, 49.172115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206123, 53.836956, 49.482025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087364, 53.552589, 49.737038>,  <37.016109, 53.381969, 49.890045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087364, 53.552589, 49.737038>,  <37.206123, 53.836956, 49.482025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087364, 53.552589, 49.737038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945262, -0.124135, 0.301780,
		-0.135400, 0.692235, 0.708856,
		-0.296896, -0.710916, 0.637536,
		36.998295, 53.339314, 49.928299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696144, 53.905743, 50.027473>,  <37.206123, 53.836956, 49.482025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696144, 53.905743, 50.027473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533497, 53.545368, 50.088120>,  <37.435909, 53.329144, 50.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533497, 53.545368, 50.088120>,  <37.696144, 53.905743, 50.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533497, 53.545368, 50.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850007, -0.312233, 0.424262,
		-0.334892, 0.301384, 0.892757,
		-0.406614, -0.900932, 0.151614,
		37.411514, 53.275089, 50.133602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984974, 54.641705, 50.200588>,  <37.696144, 53.905743, 50.027473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984974, 54.641705, 50.200588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617256, 54.512882, 50.110100>,  <37.396626, 54.435589, 50.055805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617256, 54.512882, 50.110100>,  <37.984974, 54.641705, 50.200588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617256, 54.512882, 50.110100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388101, -0.646350, -0.656969,
		0.065360, -0.691747, 0.719177,
		-0.919296, -0.322053, -0.226222,
		37.341469, 54.416267, 50.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295147, 54.757717, 49.509789>,  <37.984974, 54.641705, 50.200588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295147, 54.757717, 49.509789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427666, 55.098797, 49.671352>,  <38.507179, 55.303444, 49.768291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427666, 55.098797, 49.671352>,  <38.295147, 54.757717, 49.509789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427666, 55.098797, 49.671352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799940, -0.026840, -0.599480,
		-0.500336, 0.521710, -0.691001,
		0.331301, 0.852701, 0.403908,
		38.527058, 55.354607, 49.792526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393509, 55.296425, 49.009331>,  <38.295147, 54.757717, 49.509789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393509, 55.296425, 49.009331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637241, 55.346035, 49.322594>,  <38.783482, 55.375801, 49.510551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637241, 55.346035, 49.322594>,  <38.393509, 55.296425, 49.009331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637241, 55.346035, 49.322594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790789, -0.167334, -0.588771,
		0.058023, 0.978068, -0.200043,
		0.609332, 0.124029, 0.783155,
		38.820042, 55.383244, 49.557541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070183, 55.643715, 48.798378>,  <38.393509, 55.296425, 49.009331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070183, 55.643715, 48.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117519, 55.376354, 49.092110>,  <39.145924, 55.215939, 49.268349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117519, 55.376354, 49.092110>,  <39.070183, 55.643715, 48.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117519, 55.376354, 49.092110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885774, -0.263167, -0.382292,
		0.448775, 0.695691, 0.560906,
		0.118345, -0.668399, 0.734328,
		39.153023, 55.175835, 49.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803150, 55.779884, 49.032459>,  <39.070183, 55.643715, 48.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803150, 55.779884, 49.032459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679825, 55.405258, 49.099133>,  <39.605831, 55.180481, 49.139137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679825, 55.405258, 49.099133>,  <39.803150, 55.779884, 49.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679825, 55.405258, 49.099133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817156, -0.350449, -0.457648,
		0.487034, -0.004889, 0.873370,
		-0.308309, -0.936569, 0.166686,
		39.587334, 55.124287, 49.149139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277161, 55.432846, 49.374851>,  <39.803150, 55.779884, 49.032459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277161, 55.432846, 49.374851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046318, 55.199177, 49.146576>,  <39.907814, 55.058975, 49.009609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046318, 55.199177, 49.146576>,  <40.277161, 55.432846, 49.374851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046318, 55.199177, 49.146576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803103, -0.279117, -0.526421,
		0.148230, -0.762126, 0.630231,
		-0.577108, -0.584172, -0.570692,
		39.873184, 55.023926, 48.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799343, 54.923706, 49.620823>,  <40.277161, 55.432846, 49.374851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799343, 54.923706, 49.620823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622395, 55.257446, 49.752380>,  <40.516224, 55.457691, 49.831314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622395, 55.257446, 49.752380>,  <40.799343, 54.923706, 49.620823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622395, 55.257446, 49.752380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038021, -0.383845, 0.922614,
		0.896026, 0.395632, 0.201524,
		-0.442370, 0.834349, 0.328893,
		40.489685, 55.507751, 49.851048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573639, 54.902588, 49.380379>,  <40.799343, 54.923706, 49.620823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573639, 54.902588, 49.380379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735458, 55.233971, 49.225460>,  <41.832550, 55.432800, 49.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735458, 55.233971, 49.225460>,  <41.573639, 54.902588, 49.380379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735458, 55.233971, 49.225460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773169, -0.083661, 0.628657,
		0.488414, -0.553768, -0.674383,
		0.404549, 0.828458, -0.387295,
		41.856823, 55.482510, 49.109272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184620, 54.752769, 49.313782>,  <41.573639, 54.902588, 49.380379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184620, 54.752769, 49.313782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188625, 55.150417, 49.356911>,  <42.191029, 55.389008, 49.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188625, 55.150417, 49.356911>,  <42.184620, 54.752769, 49.313782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188625, 55.150417, 49.356911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611089, -0.091431, 0.786264,
		0.791499, 0.058016, -0.608411,
		0.010012, 0.994120, 0.107821,
		42.191628, 55.448654, 49.389256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937996, 55.074371, 49.365726>,  <42.184620, 54.752769, 49.313782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937996, 55.074371, 49.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652744, 55.294773, 49.539093>,  <42.481594, 55.427013, 49.643112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652744, 55.294773, 49.539093>,  <42.937996, 55.074371, 49.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652744, 55.294773, 49.539093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514459, -0.008651, 0.857471,
		0.476217, 0.834460, -0.277298,
		-0.713127, 0.551001, 0.433415,
		42.438805, 55.460072, 49.669117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236778, 55.754532, 49.677502>,  <42.937996, 55.074371, 49.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236778, 55.754532, 49.677502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920235, 55.594921, 49.862774>,  <42.730309, 55.499153, 49.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920235, 55.594921, 49.862774>,  <43.236778, 55.754532, 49.677502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920235, 55.594921, 49.862774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511296, -0.016623, 0.859244,
		-0.335162, 0.916788, 0.217176,
		-0.791355, -0.399027, 0.463179,
		42.682827, 55.475212, 50.001728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052654, 56.169682, 50.241840>,  <43.236778, 55.754532, 49.677502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052654, 56.169682, 50.241840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981846, 55.785606, 50.328278>,  <42.939362, 55.555161, 50.380138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981846, 55.785606, 50.328278>,  <43.052654, 56.169682, 50.241840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981846, 55.785606, 50.328278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442991, 0.118329, 0.888683,
		-0.878876, 0.253039, 0.404410,
		-0.177019, -0.960192, 0.216090,
		42.928741, 55.497547, 50.393105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782780, 56.125919, 50.864380>,  <43.052654, 56.169682, 50.241840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782780, 56.125919, 50.864380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961140, 55.772991, 50.804134>,  <43.068153, 55.561234, 50.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961140, 55.772991, 50.804134>,  <42.782780, 56.125919, 50.864380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961140, 55.772991, 50.804134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528197, 0.123527, 0.840089,
		-0.722623, -0.454147, 0.521120,
		0.445896, -0.882322, -0.150615,
		43.094910, 55.508293, 50.758949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678104, 55.607414, 51.473278>,  <42.782780, 56.125919, 50.864380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678104, 55.607414, 51.473278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034847, 55.521515, 51.314041>,  <43.248894, 55.469975, 51.218498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034847, 55.521515, 51.314041>,  <42.678104, 55.607414, 51.473278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034847, 55.521515, 51.314041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403555, -0.019751, 0.914742,
		-0.204301, -0.976470, 0.069048,
		0.891854, -0.214747, -0.398094,
		43.302402, 55.457092, 51.194614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013466, 55.167854, 51.953636>,  <42.678104, 55.607414, 51.473278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013466, 55.167854, 51.953636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315807, 55.340702, 51.756878>,  <43.497211, 55.444408, 51.638824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315807, 55.340702, 51.756878>,  <43.013466, 55.167854, 51.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315807, 55.340702, 51.756878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563465, -0.046689, 0.824819,
		0.333452, -0.900608, -0.278773,
		0.755855, 0.432117, -0.491893,
		43.542564, 55.470337, 51.609310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598152, 54.639202, 51.858124>,  <43.013466, 55.167854, 51.953636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598152, 54.639202, 51.858124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743595, 55.008213, 51.909859>,  <43.830860, 55.229618, 51.940899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743595, 55.008213, 51.909859>,  <43.598152, 54.639202, 51.858124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743595, 55.008213, 51.909859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664161, -0.354085, 0.658418,
		0.653205, -0.153509, -0.741457,
		0.363612, 0.922529, 0.129335,
		43.852680, 55.284973, 51.948658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308563, 54.663006, 51.612198>,  <43.598152, 54.639202, 51.858124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308563, 54.663006, 51.612198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248898, 54.930927, 51.903160>,  <44.213097, 55.091679, 52.077736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248898, 54.930927, 51.903160>,  <44.308563, 54.663006, 51.612198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248898, 54.930927, 51.903160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719959, -0.430682, 0.544217,
		0.677797, 0.604876, -0.417990,
		-0.149163, 0.669804, 0.727401,
		44.204147, 55.131870, 52.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636230, 54.152458, 51.991653>,  <44.308563, 54.663006, 51.612198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636230, 54.152458, 51.991653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562668, 54.232430, 51.606693>,  <44.518528, 54.280411, 51.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562668, 54.232430, 51.606693>,  <44.636230, 54.152458, 51.991653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562668, 54.232430, 51.606693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782423, 0.622420, -0.020219,
		0.594973, -0.756719, -0.270894,
		-0.183910, 0.199924, -0.962397,
		44.507496, 54.292408, 51.317974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282963, 53.850895, 51.686943>,  <44.636230, 54.152458, 51.991653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282963, 53.850895, 51.686943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073437, 54.122517, 51.481224>,  <44.947720, 54.285488, 51.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073437, 54.122517, 51.481224>,  <45.282963, 53.850895, 51.686943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073437, 54.122517, 51.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783542, 0.620954, 0.021840,
		0.334187, -0.391535, -0.857333,
		-0.523814, 0.679055, -0.514299,
		44.916294, 54.326233, 51.326935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726234, 54.105846, 51.134693>,  <45.282963, 53.850895, 51.686943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726234, 54.105846, 51.134693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453915, 54.385056, 51.223484>,  <45.290524, 54.552582, 51.276760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453915, 54.385056, 51.223484>,  <45.726234, 54.105846, 51.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453915, 54.385056, 51.223484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719554, 0.694004, 0.024512,
		-0.136945, 0.176414, -0.974743,
		-0.680800, 0.698023, 0.221979,
		45.249676, 54.594463, 51.290077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722862, 54.771240, 50.597839>,  <45.726234, 54.105846, 51.134693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722862, 54.771240, 50.597839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618675, 54.832039, 50.979218>,  <45.556164, 54.868519, 51.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618675, 54.832039, 50.979218>,  <45.722862, 54.771240, 50.597839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618675, 54.832039, 50.979218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728974, 0.678467, 0.090992,
		-0.633050, 0.718735, -0.287520,
		-0.260472, 0.151992, 0.953443,
		45.540535, 54.877636, 51.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630203, 55.522263, 50.928238>,  <45.722862, 54.771240, 50.597839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630203, 55.522263, 50.928238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765129, 55.282894, 51.218925>,  <45.846085, 55.139275, 51.393337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765129, 55.282894, 51.218925>,  <45.630203, 55.522263, 50.928238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765129, 55.282894, 51.218925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759782, 0.628848, 0.165171,
		-0.555835, 0.496431, 0.666786,
		0.337311, -0.598419, 0.726716,
		45.866322, 55.103367, 51.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682545, 55.841324, 51.651157>,  <45.630203, 55.522263, 50.928238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682545, 55.841324, 51.651157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957947, 55.561958, 51.572998>,  <46.123188, 55.394341, 51.526104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957947, 55.561958, 51.572998>,  <45.682545, 55.841324, 51.651157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957947, 55.561958, 51.572998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722554, 0.637471, 0.267482,
		-0.062251, -0.325349, 0.943543,
		0.688506, -0.698412, -0.195399,
		46.164497, 55.352436, 51.514378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119175, 55.911900, 52.148861>,  <45.682545, 55.841324, 51.651157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119175, 55.911900, 52.148861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357201, 55.716980, 51.893223>,  <46.500015, 55.600029, 51.739841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357201, 55.716980, 51.893223>,  <46.119175, 55.911900, 52.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357201, 55.716980, 51.893223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762236, 0.594260, 0.256613,
		0.254741, -0.639842, 0.725058,
		0.595065, -0.487295, -0.639094,
		46.535721, 55.570793, 51.701496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702938, 55.640682, 52.537609>,  <46.119175, 55.911900, 52.148861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702938, 55.640682, 52.537609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840664, 55.696980, 52.166313>,  <46.923302, 55.730759, 51.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840664, 55.696980, 52.166313>,  <46.702938, 55.640682, 52.537609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840664, 55.696980, 52.166313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810567, 0.454324, 0.369554,
		0.473736, -0.879648, 0.042351,
		0.344319, 0.140742, -0.928243,
		46.943958, 55.739201, 51.887840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472351, 55.436161, 52.485554>,  <46.702938, 55.640682, 52.537609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472351, 55.436161, 52.485554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399899, 55.681343, 52.177925>,  <47.356426, 55.828453, 51.993347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399899, 55.681343, 52.177925>,  <47.472351, 55.436161, 52.485554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399899, 55.681343, 52.177925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853409, 0.486606, 0.186835,
		0.488758, -0.622492, -0.611245,
		-0.181132, 0.612959, -0.769073,
		47.345558, 55.865231, 51.947205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.046993, 54.987907, 52.136608>,  <47.472351, 55.436161, 52.485554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.046993, 54.987907, 52.136608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.413692, 55.123276, 52.051712>,  <48.633713, 55.204494, 52.000774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.413692, 55.123276, 52.051712>,  <48.046993, 54.987907, 52.136608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.413692, 55.123276, 52.051712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397565, -0.824724, 0.402208,
		-0.038924, -0.453102, -0.890608,
		0.916748, 0.338419, -0.212240,
		48.688717, 55.224800, 51.988041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.474827, 54.472057, 52.181549>,  <48.046993, 54.987907, 52.136608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.474827, 54.472057, 52.181549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786461, 54.712868, 52.251514>,  <48.973442, 54.857353, 52.293495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786461, 54.712868, 52.251514>,  <48.474827, 54.472057, 52.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.786461, 54.712868, 52.251514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532578, -0.782759, 0.321947,
		0.330735, -0.157668, -0.930460,
		0.779086, 0.602021, 0.174915,
		49.020187, 54.893475, 52.303989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.079086, 54.474064, 51.724087>,  <48.474827, 54.472057, 52.181549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.079086, 54.474064, 51.724087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.131893, 54.542961, 52.114555>,  <49.163578, 54.584301, 52.348835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.131893, 54.542961, 52.114555>,  <49.079086, 54.474064, 51.724087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.131893, 54.542961, 52.114555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405603, -0.907957, 0.105359,
		0.904466, 0.382028, -0.189725,
		0.132012, 0.172247, 0.976168,
		49.171497, 54.594635, 52.407406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.797932, 54.432537, 51.910698>,  <49.079086, 54.474064, 51.724087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.797932, 54.432537, 51.910698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.552204, 54.324059, 52.207092>,  <49.404766, 54.258972, 52.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.552204, 54.324059, 52.207092>,  <49.797932, 54.432537, 51.910698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.552204, 54.324059, 52.207092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420524, -0.907129, 0.016640,
		0.667659, 0.321826, 0.671311,
		-0.614321, -0.271193, 0.740988,
		49.367908, 54.242702, 52.429390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.606930, 54.467953, 51.821701>,  <49.797932, 54.432537, 51.910698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.606930, 54.467953, 51.821701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.354073, 54.242744, 51.608757>,  <50.202358, 54.107620, 51.480991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.354073, 54.242744, 51.608757>,  <50.606930, 54.467953, 51.821701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.354073, 54.242744, 51.608757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037144, -0.708277, 0.704956,
		-0.773964, 0.425856, 0.468643,
		-0.632139, -0.563018, -0.532363,
		50.164433, 54.073837, 51.449047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.201553, 54.866692, 51.532005>,  <50.606930, 54.467953, 51.821701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.201553, 54.866692, 51.532005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.341305, 54.512993, 51.408043>,  <51.425156, 54.300774, 51.333664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.341305, 54.512993, 51.408043>,  <51.201553, 54.866692, 51.532005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.341305, 54.512993, 51.408043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936380, 0.341364, 0.081632,
		0.033608, -0.318709, 0.947257,
		0.349377, -0.884248, -0.309905,
		51.446117, 54.247719, 51.315071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.717159, 54.544323, 52.009022>,  <51.201553, 54.866692, 51.532005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.717159, 54.544323, 52.009022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784088, 54.428646, 51.632008>,  <51.824245, 54.359238, 51.405800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784088, 54.428646, 51.632008>,  <51.717159, 54.544323, 52.009022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.784088, 54.428646, 51.632008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927521, 0.370268, 0.051052,
		0.334226, -0.882762, 0.330190,
		0.167326, -0.289195, -0.942533,
		51.834286, 54.341888, 51.349247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.356445, 54.166203, 51.966953>,  <51.717159, 54.544323, 52.009022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.356445, 54.166203, 51.966953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.283718, 54.330227, 51.609451>,  <52.240082, 54.428642, 51.394951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.283718, 54.330227, 51.609451>,  <52.356445, 54.166203, 51.966953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.283718, 54.330227, 51.609451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911791, 0.410644, 0.002919,
		0.368211, -0.814384, -0.448554,
		-0.181819, 0.410062, -0.893751,
		52.229172, 54.453247, 51.341328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.739799, 53.737949, 51.359795>,  <52.356445, 54.166203, 51.966953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.739799, 53.737949, 51.359795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.734310, 54.115742, 51.491112>,  <52.731018, 54.342415, 51.569901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.734310, 54.115742, 51.491112>,  <52.739799, 53.737949, 51.359795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.734310, 54.115742, 51.491112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931047, -0.107660, 0.348655,
		0.364641, 0.310440, -0.877875,
		-0.013724, 0.944477, 0.328291,
		52.730194, 54.399086, 51.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.473869, 53.857315, 51.354591>,  <52.739799, 53.737949, 51.359795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.473869, 53.857315, 51.354591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.280087, 54.100761, 51.605953>,  <53.163818, 54.246830, 51.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.280087, 54.100761, 51.605953>,  <53.473869, 53.857315, 51.354591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.280087, 54.100761, 51.605953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826910, 0.084125, 0.556006,
		0.285527, 0.788996, -0.544022,
		-0.484453, 0.608612, 0.628409,
		53.134750, 54.283344, 51.794476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.895779, 54.373398, 51.386997>,  <53.473869, 53.857315, 51.354591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.895779, 54.373398, 51.386997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.676434, 54.304726, 51.714371>,  <53.544827, 54.263523, 51.910793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.676434, 54.304726, 51.714371>,  <53.895779, 54.373398, 51.386997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.676434, 54.304726, 51.714371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808683, 0.140322, 0.571263,
		-0.212920, 0.975107, 0.061891,
		-0.548358, -0.171683, 0.818430,
		53.511925, 54.253220, 51.959900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.595078, 54.641247, 51.217941>,  <53.895779, 54.373398, 51.386997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.595078, 54.641247, 51.217941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.974396, 54.717876, 51.319160>,  <55.201988, 54.763855, 51.379890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.974396, 54.717876, 51.319160>,  <54.595078, 54.641247, 51.217941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.974396, 54.717876, 51.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068053, -0.656008, 0.751680,
		0.310003, -0.730036, -0.609053,
		0.948297, 0.191575, 0.253045,
		55.258884, 54.775349, 51.395073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.978176, 54.077824, 51.383266>,  <54.595078, 54.641247, 51.217941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.978176, 54.077824, 51.383266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.152596, 54.367939, 51.596367>,  <55.257248, 54.542007, 51.724228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.152596, 54.367939, 51.596367>,  <54.978176, 54.077824, 51.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.152596, 54.367939, 51.596367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068939, -0.563336, 0.823347,
		0.897280, -0.395744, -0.195640,
		0.436046, 0.725285, 0.532752,
		55.283409, 54.585526, 51.756191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.671329, 53.819141, 51.711315>,  <54.978176, 54.077824, 51.383266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.671329, 53.819141, 51.711315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.410240, 54.079933, 51.865650>,  <55.253586, 54.236408, 51.958252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.410240, 54.079933, 51.865650>,  <55.671329, 53.819141, 51.711315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.410240, 54.079933, 51.865650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226775, -0.654088, 0.721625,
		0.722859, 0.383522, 0.574791,
		-0.652723, 0.651981, 0.385840,
		55.214424, 54.275528, 51.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.068325, 53.344059, 52.088421>,  <55.671329, 53.819141, 51.711315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.068325, 53.344059, 52.088421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259483, 53.669041, 52.222012>,  <56.374176, 53.864029, 52.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259483, 53.669041, 52.222012>,  <56.068325, 53.344059, 52.088421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.259483, 53.669041, 52.222012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802924, -0.558222, 0.209048,
		0.356276, 0.168258, -0.919107,
		0.477892, 0.812451, 0.333979,
		56.402851, 53.912777, 52.322205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.717567, 53.381397, 51.884350>,  <56.068325, 53.344059, 52.088421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.717567, 53.381397, 51.884350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.736961, 53.607395, 52.213818>,  <56.748596, 53.742992, 52.411499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.736961, 53.607395, 52.213818>,  <56.717567, 53.381397, 51.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.736961, 53.607395, 52.213818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878808, -0.416052, 0.233661,
		0.474707, 0.712520, -0.516690,
		0.048482, 0.564991, 0.823671,
		56.751507, 53.776894, 52.460918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.321995, 53.762489, 51.806244>,  <56.717567, 53.381397, 51.884350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.321995, 53.762489, 51.806244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.218758, 53.705063, 52.188400>,  <57.156815, 53.670605, 52.417694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.218758, 53.705063, 52.188400>,  <57.321995, 53.762489, 51.806244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.218758, 53.705063, 52.188400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933295, -0.292634, 0.208148,
		0.249697, 0.945385, 0.209520,
		-0.258093, -0.143570, 0.955393,
		57.141331, 53.661991, 52.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.704285, 54.208996, 52.328556>,  <57.321995, 53.762489, 51.806244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.704285, 54.208996, 52.328556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.590874, 53.852623, 52.470459>,  <57.522827, 53.638798, 52.555603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.590874, 53.852623, 52.470459>,  <57.704285, 54.208996, 52.328556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.590874, 53.852623, 52.470459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940664, -0.186454, 0.283524,
		-0.186454, 0.414095, 0.890932,
		-0.283524, -0.890932, 0.354759,
		57.505817, 53.585342, 52.576885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.924984, 54.160599, 53.101837>,  <57.704285, 54.208996, 52.328556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.924984, 54.160599, 53.101837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.967819, 53.814037, 52.906746>,  <57.993523, 53.606102, 52.789692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.967819, 53.814037, 52.906746>,  <57.924984, 54.160599, 53.101837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.967819, 53.814037, 52.906746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896107, -0.128404, 0.424858,
		-0.430724, -0.482553, 0.762640,
		0.107091, -0.866403, -0.487726,
		57.999947, 53.554115, 52.760429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.475185, 53.942204, 53.495327>,  <57.924984, 54.160599, 53.101837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.475185, 53.942204, 53.495327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.504410, 53.696335, 53.181168>,  <58.521946, 53.548813, 52.992672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.504410, 53.696335, 53.181168>,  <58.475185, 53.942204, 53.495327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.504410, 53.696335, 53.181168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957762, 0.262854, -0.116620,
		0.278127, -0.743701, 0.607911,
		0.073061, -0.614669, -0.785395,
		58.526329, 53.511936, 52.945549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.096706, 53.560966, 53.632252>,  <58.475185, 53.942204, 53.495327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.096706, 53.560966, 53.632252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.977119, 53.665722, 53.265202>,  <58.905369, 53.728577, 53.044971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.977119, 53.665722, 53.265202>,  <59.096706, 53.560966, 53.632252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.977119, 53.665722, 53.265202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821415, 0.560055, -0.107780,
		0.485693, -0.785973, -0.382556,
		-0.298964, 0.261889, -0.917625,
		58.887428, 53.744289, 52.989914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.583981, 53.443760, 53.154549>,  <59.096706, 53.560966, 53.632252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.583981, 53.443760, 53.154549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.352394, 53.723118, 52.986244>,  <59.213444, 53.890732, 52.885262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.352394, 53.723118, 52.986244>,  <59.583981, 53.443760, 53.154549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.352394, 53.723118, 52.986244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815142, 0.507532, -0.279205,
		0.018554, -0.504631, -0.863136,
		-0.578964, 0.698398, -0.420762,
		59.178703, 53.932636, 52.860016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.893093, 53.518623, 52.508194>,  <59.583981, 53.443760, 53.154549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.893093, 53.518623, 52.508194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.780380, 53.868031, 52.666973>,  <59.712753, 54.077675, 52.762241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.780380, 53.868031, 52.666973>,  <59.893093, 53.518623, 52.508194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.780380, 53.868031, 52.666973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930552, 0.349621, -0.108804,
		-0.233824, 0.338721, -0.911370,
		-0.281780, 0.873518, 0.396947,
		59.695847, 54.130085, 52.786057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.151005, 54.170692, 52.109299>,  <59.893093, 53.518623, 52.508194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.151005, 54.170692, 52.109299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.124718, 54.178234, 52.508362>,  <60.108944, 54.182758, 52.747799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.124718, 54.178234, 52.508362>,  <60.151005, 54.170692, 52.109299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.124718, 54.178234, 52.508362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975507, 0.211553, 0.060265,
		-0.209922, 0.977185, -0.032294,
		-0.065722, 0.018852, 0.997660,
		60.105000, 54.183891, 52.807659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.448872, 54.823833, 52.461071>,  <60.151005, 54.170692, 52.109299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.448872, 54.823833, 52.461071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.468773, 54.523796, 52.724854>,  <60.480713, 54.343773, 52.883121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.468773, 54.523796, 52.724854>,  <60.448872, 54.823833, 52.461071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.468773, 54.523796, 52.724854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935600, 0.266078, 0.232069,
		-0.349540, 0.605438, 0.715029,
		0.049750, -0.750098, 0.659453,
		60.483696, 54.298767, 52.922688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.108910, 54.518936, 52.554768>,  <60.448872, 54.823833, 52.461071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.108910, 54.518936, 52.554768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.434456, 54.672642, 52.729111>,  <61.629784, 54.764866, 52.833717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.434456, 54.672642, 52.729111>,  <61.108910, 54.518936, 52.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.434456, 54.672642, 52.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330854, -0.923096, 0.196032,
		0.477665, -0.015338, -0.878408,
		0.813862, 0.384263, 0.435856,
		61.678616, 54.787922, 52.859867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.739651, 54.357132, 52.117733>,  <61.108910, 54.518936, 52.554768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.739651, 54.357132, 52.117733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.797905, 54.372467, 52.513172>,  <61.832859, 54.381668, 52.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.797905, 54.372467, 52.513172>,  <61.739651, 54.357132, 52.117733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.797905, 54.372467, 52.513172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120172, -0.992536, 0.020787,
		0.982012, 0.115774, -0.149158,
		0.145638, 0.038338, 0.988595,
		61.841595, 54.383968, 52.809750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.270603, 53.844322, 52.227249>,  <61.739651, 54.357132, 52.117733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.270603, 53.844322, 52.227249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.055420, 53.921406, 52.555511>,  <61.926311, 53.967655, 52.752468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.055420, 53.921406, 52.555511>,  <62.270603, 53.844322, 52.227249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.055420, 53.921406, 52.555511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129473, -0.980857, 0.145454,
		0.832972, -0.028005, 0.552606,
		-0.537954, 0.192706, 0.820652,
		61.894035, 53.979218, 52.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.984573, 54.082844, 52.062164>,  <62.270603, 53.844322, 52.227249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.984573, 54.082844, 52.062164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.943420, 54.445709, 52.225365>,  <62.918728, 54.663429, 52.323284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.943420, 54.445709, 52.225365>,  <62.984573, 54.082844, 52.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.943420, 54.445709, 52.225365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945676, -0.037973, 0.322886,
		0.308404, 0.419055, -0.853979,
		-0.102879, 0.907167, 0.408001,
		62.912556, 54.717857, 52.347763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.660507, 54.160469, 52.404633>,  <62.984573, 54.082844, 52.062164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.660507, 54.160469, 52.404633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.453789, 54.380520, 52.667015>,  <63.329758, 54.512550, 52.824444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.453789, 54.380520, 52.667015>,  <63.660507, 54.160469, 52.404633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.453789, 54.380520, 52.667015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855998, 0.319710, 0.406267,
		0.013781, 0.771458, -0.636131,
		-0.516795, 0.550126, 0.655961,
		63.298752, 54.545559, 52.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.763390, 54.835209, 52.388351>,  <63.660507, 54.160469, 52.404633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.763390, 54.835209, 52.388351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.692276, 54.693703, 52.755665>,  <63.649609, 54.608799, 52.976051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.692276, 54.693703, 52.755665>,  <63.763390, 54.835209, 52.388351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.692276, 54.693703, 52.755665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867834, 0.383587, 0.315792,
		-0.463959, 0.853058, 0.238818,
		-0.177781, -0.353769, 0.918282,
		63.638943, 54.587570, 53.031151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.266632, 55.177158, 52.722870>,  <63.763390, 54.835209, 52.388351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.266632, 55.177158, 52.722870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.130066, 54.968521, 53.035629>,  <64.048126, 54.843338, 53.223286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.130066, 54.968521, 53.035629>,  <64.266632, 55.177158, 52.722870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.130066, 54.968521, 53.035629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822089, 0.237552, 0.517435,
		-0.455633, 0.819457, 0.347692,
		-0.341420, -0.521594, 0.781903,
		64.027641, 54.812042, 53.270199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.822250, 54.546986, 52.754131>,  <64.266632, 55.177158, 52.722870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.822250, 54.546986, 52.754131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.130753, 54.343269, 52.601402>,  <65.315857, 54.221039, 52.509766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.130753, 54.343269, 52.601402>,  <64.822250, 54.546986, 52.754131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.130753, 54.343269, 52.601402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478029, -0.067352, -0.875758,
		0.420295, 0.857957, -0.295399,
		0.771259, -0.509286, -0.381821,
		65.362129, 54.190483, 52.486855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.995064, 54.933178, 52.192852>,  <64.822250, 54.546986, 52.754131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.995064, 54.933178, 52.192852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.122925, 54.555977, 52.155815>,  <65.199638, 54.329659, 52.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.122925, 54.555977, 52.155815>,  <64.995064, 54.933178, 52.192852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.122925, 54.555977, 52.155815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377872, -0.037256, -0.925108,
		0.868927, 0.330702, -0.368242,
		0.319655, -0.942999, -0.092590,
		65.218819, 54.273079, 52.128036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.562477, 55.466068, 52.019085>,  <64.995064, 54.933178, 52.192852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.562477, 55.466068, 52.019085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.924240, 55.558460, 51.875587>,  <66.141296, 55.613895, 51.789490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.924240, 55.558460, 51.875587>,  <65.562477, 55.466068, 52.019085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.924240, 55.558460, 51.875587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143638, 0.626891, 0.765752,
		0.401762, -0.744081, 0.533789,
		0.904409, 0.230977, -0.358739,
		66.195564, 55.627754, 51.767967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.210693, 55.489040, 52.548172>,  <65.562477, 55.466068, 52.019085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.210693, 55.489040, 52.548172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285782, 55.732025, 52.239433>,  <66.330833, 55.877815, 52.054188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285782, 55.732025, 52.239433>,  <66.210693, 55.489040, 52.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.285782, 55.732025, 52.239433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227386, 0.737597, 0.635804,
		0.955539, -0.294866, 0.000340,
		0.187728, 0.607458, -0.771851,
		66.342102, 55.914261, 52.007877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.873047, 55.656998, 52.527725>,  <66.210693, 55.489040, 52.548172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.873047, 55.656998, 52.527725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.671173, 55.949993, 52.344963>,  <66.550049, 56.125790, 52.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.671173, 55.949993, 52.344963>,  <66.873047, 55.656998, 52.527725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.671173, 55.949993, 52.344963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346200, 0.656548, 0.670142,
		0.790851, 0.180025, -0.584933,
		-0.504679, 0.732486, -0.456907,
		66.519768, 56.169739, 52.207890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.308754, 56.129818, 52.176109>,  <66.873047, 55.656998, 52.527725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.308754, 56.129818, 52.176109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.977524, 56.287849, 52.335213>,  <66.778786, 56.382668, 52.430676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.977524, 56.287849, 52.335213>,  <67.308754, 56.129818, 52.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.977524, 56.287849, 52.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554889, 0.678786, 0.480986,
		-0.079969, 0.619004, -0.781306,
		-0.828072, 0.395074, 0.397760,
		66.729103, 56.406372, 52.454540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.285942, 56.861885, 52.042816>,  <67.308754, 56.129818, 52.176109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.285942, 56.861885, 52.042816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.065758, 56.795456, 52.370087>,  <66.933647, 56.755596, 52.566448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.065758, 56.795456, 52.370087>,  <67.285942, 56.861885, 52.042816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.065758, 56.795456, 52.370087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457969, 0.759338, 0.462245,
		-0.698043, 0.629146, -0.341922,
		-0.550454, -0.166077, 0.818180,
		66.900620, 56.745632, 52.615540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.881638, 57.505775, 52.390152>,  <67.285942, 56.861885, 52.042816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.881638, 57.505775, 52.390152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.029961, 57.227512, 52.636261>,  <67.118958, 57.060555, 52.783924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.029961, 57.227512, 52.636261>,  <66.881638, 57.505775, 52.390152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.029961, 57.227512, 52.636261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503152, 0.707330, 0.496510,
		-0.780600, 0.125462, 0.612309,
		0.370811, -0.695661, 0.615268,
		67.141205, 57.018814, 52.820843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.860825, 57.795090, 53.187992>,  <66.881638, 57.505775, 52.390152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.860825, 57.795090, 53.187992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.136627, 57.527412, 53.077164>,  <67.302109, 57.366806, 53.010666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.136627, 57.527412, 53.077164>,  <66.860825, 57.795090, 53.187992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.136627, 57.527412, 53.077164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717639, 0.579507, 0.386220,
		-0.097895, -0.465133, 0.879811,
		0.689500, -0.669196, -0.277067,
		67.343475, 57.326653, 52.994045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.219810, 57.447769, 53.744251>,  <66.860825, 57.795090, 53.187992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.219810, 57.447769, 53.744251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.438675, 57.462254, 53.409756>,  <67.569992, 57.470943, 53.209057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.438675, 57.462254, 53.409756>,  <67.219810, 57.447769, 53.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.438675, 57.462254, 53.409756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676718, 0.568832, 0.467421,
		0.492609, -0.821656, 0.286737,
		0.547165, 0.036215, -0.836241,
		67.602821, 57.473118, 53.158882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.856277, 57.141243, 53.875671>,  <67.219810, 57.447769, 53.744251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.856277, 57.141243, 53.875671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.878624, 57.433617, 53.603607>,  <67.892029, 57.609039, 53.440369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.878624, 57.433617, 53.603607>,  <67.856277, 57.141243, 53.875671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.878624, 57.433617, 53.603607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747666, 0.420865, 0.513681,
		0.661721, -0.537228, -0.522983,
		0.055858, 0.730930, -0.680163,
		67.895378, 57.652897, 53.399559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.543686, 57.102295, 53.552681>,  <67.856277, 57.141243, 53.875671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.543686, 57.102295, 53.552681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.360237, 57.454041, 53.603874>,  <68.250168, 57.665089, 53.634590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.360237, 57.454041, 53.603874>,  <68.543686, 57.102295, 53.552681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.360237, 57.454041, 53.603874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709158, 0.275401, 0.649037,
		0.535493, 0.388427, -0.749915,
		-0.458631, 0.879363, 0.127981,
		68.222649, 57.717850, 53.642269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.036850, 57.729980, 53.463280>,  <68.543686, 57.102295, 53.552681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.036850, 57.729980, 53.463280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.746750, 57.787766, 53.732544>,  <68.572693, 57.822437, 53.894104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.746750, 57.787766, 53.732544>,  <69.036850, 57.729980, 53.463280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.746750, 57.787766, 53.732544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688253, 0.177738, 0.703361,
		-0.018038, 0.973416, -0.228331,
		-0.725246, 0.144463, 0.673163,
		68.529175, 57.831104, 53.934494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.130547, 58.433968, 53.793770>,  <69.036850, 57.729980, 53.463280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.130547, 58.433968, 53.793770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.944382, 58.170986, 54.030796>,  <68.832680, 58.013195, 54.173012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.944382, 58.170986, 54.030796>,  <69.130547, 58.433968, 53.793770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.944382, 58.170986, 54.030796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514702, 0.343613, 0.785501,
		-0.720048, 0.670581, 0.178471,
		-0.465418, -0.657458, 0.592567,
		68.804756, 57.973747, 54.208565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.617188, 58.817909, 54.270222>,  <69.130547, 58.433968, 53.793770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.617188, 58.817909, 54.270222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.767319, 58.474056, 54.408882>,  <68.857399, 58.267746, 54.492081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.767319, 58.474056, 54.408882>,  <68.617188, 58.817909, 54.270222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.767319, 58.474056, 54.408882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463041, 0.497877, 0.733288,
		-0.802947, -0.114705, 0.584909,
		0.375325, -0.859628, 0.346656,
		68.879913, 58.216167, 54.512878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.984146, 58.354881, 54.206516>,  <68.617188, 58.817909, 54.270222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.984146, 58.354881, 54.206516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.046043, 58.446129, 54.591019>,  <68.083183, 58.500877, 54.821720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.046043, 58.446129, 54.591019>,  <67.984146, 58.354881, 54.206516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.046043, 58.446129, 54.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773472, 0.633306, -0.025774,
		-0.614649, -0.739515, 0.274451,
		0.154751, 0.228122, 0.961255,
		68.092468, 58.514565, 54.879395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.654999, 59.033787, 54.031006>,  <67.984146, 58.354881, 54.206516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.654999, 59.033787, 54.031006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.584839, 58.763359, 53.744743>,  <67.542747, 58.601101, 53.572987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.584839, 58.763359, 53.744743>,  <67.654999, 59.033787, 54.031006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.584839, 58.763359, 53.744743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630903, 0.480860, -0.608880,
		0.755777, -0.558305, 0.342194,
		-0.175393, -0.676069, -0.715660,
		67.532219, 58.560539, 53.530045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.448174, 59.712158, 54.340771>,  <67.654999, 59.033787, 54.031006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.448174, 59.712158, 54.340771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.519196, 60.071774, 54.500877>,  <67.561806, 60.287540, 54.596939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.519196, 60.071774, 54.500877>,  <67.448174, 59.712158, 54.340771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.519196, 60.071774, 54.500877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829673, -0.355491, 0.430429,
		0.529260, 0.255664, -0.809024,
		0.177556, 0.899034, 0.400264,
		67.572464, 60.341484, 54.620956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.134193, 59.994209, 54.096069>,  <67.448174, 59.712158, 54.340771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.134193, 59.994209, 54.096069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.019066, 60.019608, 54.478302>,  <67.949989, 60.034847, 54.707642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.019066, 60.019608, 54.478302>,  <68.134193, 59.994209, 54.096069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.019066, 60.019608, 54.478302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865810, -0.409203, 0.287967,
		0.409309, 0.910232, 0.062804,
		-0.287816, 0.063491, 0.955579,
		67.932724, 60.038654, 54.764977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.713554, 60.321590, 54.397224>,  <68.134193, 59.994209, 54.096069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.713554, 60.321590, 54.397224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.527977, 60.058533, 54.634628>,  <68.416634, 59.900700, 54.777073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.527977, 60.058533, 54.634628>,  <68.713554, 60.321590, 54.397224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.527977, 60.058533, 54.634628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867288, -0.473683, 0.153089,
		0.180459, 0.585773, 0.790130,
		-0.463946, -0.657643, 0.593514,
		68.388794, 59.861240, 54.812683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.081367, 60.199615, 55.102264>,  <68.713554, 60.321590, 54.397224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.081367, 60.199615, 55.102264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.894440, 59.873329, 54.965897>,  <68.782288, 59.677559, 54.884075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.894440, 59.873329, 54.965897>,  <69.081367, 60.199615, 55.102264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.894440, 59.873329, 54.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848866, -0.521757, 0.084833,
		-0.247077, -0.249752, 0.936257,
		-0.467311, -0.815717, -0.340921,
		68.754250, 59.628613, 54.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.062477, 59.711857, 55.594807>,  <69.081367, 60.199615, 55.102264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.062477, 59.711857, 55.594807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.055603, 59.519440, 55.244194>,  <69.051476, 59.403988, 55.033829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.055603, 59.519440, 55.244194>,  <69.062477, 59.711857, 55.594807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.055603, 59.519440, 55.244194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732596, -0.602666, 0.316382,
		-0.680447, -0.636704, 0.362767,
		-0.017186, -0.481043, -0.876529,
		69.050446, 59.375126, 54.981236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.950134, 58.915699, 55.639122>,  <69.062477, 59.711857, 55.594807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.950134, 58.915699, 55.639122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.183235, 59.007874, 55.327400>,  <69.323097, 59.063179, 55.140369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.183235, 59.007874, 55.327400>,  <68.950134, 58.915699, 55.639122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.183235, 59.007874, 55.327400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684147, -0.656646, 0.317425,
		-0.438579, -0.718134, -0.540308,
		0.582745, 0.230435, -0.779300,
		69.358055, 59.077003, 55.093609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.211952, 58.185154, 55.316177>,  <68.950134, 58.915699, 55.639122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.211952, 58.185154, 55.316177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.447403, 58.504978, 55.268478>,  <69.588676, 58.696873, 55.239861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.447403, 58.504978, 55.268478>,  <69.211952, 58.185154, 55.316177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.447403, 58.504978, 55.268478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806298, -0.591312, 0.015331,
		-0.058253, -0.105170, -0.992747,
		0.588635, 0.799556, -0.119244,
		69.623993, 58.744846, 55.232704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.763275, 57.923424, 54.902092>,  <69.211952, 58.185154, 55.316177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.763275, 57.923424, 54.902092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.892776, 58.207100, 55.152611>,  <69.970474, 58.377304, 55.302921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.892776, 58.207100, 55.152611>,  <69.763275, 57.923424, 54.902092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.892776, 58.207100, 55.152611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880721, -0.467755, 0.074400,
		0.345716, 0.527504, -0.776028,
		0.323745, 0.709186, 0.626295,
		69.989899, 58.419857, 55.340500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.488380, 58.138721, 54.689098>,  <69.763275, 57.923424, 54.902092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.488380, 58.138721, 54.689098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.386787, 58.117973, 55.075424>,  <70.325829, 58.105526, 55.307220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.386787, 58.117973, 55.075424>,  <70.488380, 58.138721, 54.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.386787, 58.117973, 55.075424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922917, -0.311711, 0.225965,
		0.289334, 0.948760, 0.127043,
		-0.253987, -0.051870, 0.965816,
		70.310593, 58.102413, 55.365170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.092728, 58.451382, 55.104378>,  <70.488380, 58.138721, 54.689098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.092728, 58.451382, 55.104378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.890129, 58.155689, 55.281914>,  <70.768570, 57.978271, 55.388435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.890129, 58.155689, 55.281914>,  <71.092728, 58.451382, 55.104378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.890129, 58.155689, 55.281914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835410, -0.548141, 0.040397,
		0.213423, 0.391248, 0.895196,
		-0.506499, -0.739234, 0.443838,
		70.738182, 57.933918, 55.415066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.336243, 58.221054, 55.798607>,  <71.092728, 58.451382, 55.104378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.336243, 58.221054, 55.798607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167862, 57.900864, 55.627937>,  <71.066833, 57.708752, 55.525536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167862, 57.900864, 55.627937>,  <71.336243, 58.221054, 55.798607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.167862, 57.900864, 55.627937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889542, -0.456350, -0.021448,
		-0.177544, -0.388573, 0.904151,
		-0.420943, -0.800472, -0.426674,
		71.041580, 57.660721, 55.499935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.447411, 57.625938, 56.220203>,  <71.336243, 58.221054, 55.798607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.447411, 57.625938, 56.220203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.385872, 57.504147, 55.844200>,  <71.348946, 57.431072, 55.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.385872, 57.504147, 55.844200>,  <71.447411, 57.625938, 56.220203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.385872, 57.504147, 55.844200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810824, -0.582605, 0.056006,
		-0.564708, -0.753567, 0.336514,
		-0.153850, -0.304481, -0.940011,
		71.339714, 57.412804, 55.562195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.915215, 57.136131, 56.791080>,  <71.447411, 57.625938, 56.220203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.915215, 57.136131, 56.791080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.201141, 57.402672, 56.875946>,  <72.372696, 57.562595, 56.926865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.201141, 57.402672, 56.875946>,  <71.915215, 57.136131, 56.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.201141, 57.402672, 56.875946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315981, -0.037116, -0.948039,
		-0.623849, 0.744717, -0.237084,
		0.714821, 0.666347, 0.212162,
		72.415588, 57.602577, 56.939594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.052284, 56.775124, 57.502159>,  <71.915215, 57.136131, 56.791080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.052284, 56.775124, 57.502159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.898758, 57.032566, 57.767021>,  <71.806641, 57.187031, 57.925938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.898758, 57.032566, 57.767021>,  <72.052284, 56.775124, 57.502159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.898758, 57.032566, 57.767021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788723, -0.144415, 0.597545,
		0.480211, 0.751606, -0.452201,
		-0.383814, 0.643609, 0.662159,
		71.783615, 57.225647, 57.965668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.550278, 57.282253, 57.625587>,  <72.052284, 56.775124, 57.502159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.550278, 57.282253, 57.625587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.301201, 57.229313, 57.934067>,  <72.151756, 57.197548, 58.119156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.301201, 57.229313, 57.934067>,  <72.550278, 57.282253, 57.625587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.301201, 57.229313, 57.934067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772721, -0.259120, 0.579448,
		0.123145, 0.956735, 0.263617,
		-0.622686, -0.132346, 0.771198,
		72.114395, 57.189610, 58.165424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.798096, 57.667015, 58.246693>,  <72.550278, 57.282253, 57.625587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.798096, 57.667015, 58.246693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.574104, 57.374107, 58.401718>,  <72.439713, 57.198364, 58.494732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.574104, 57.374107, 58.401718>,  <72.798096, 57.667015, 58.246693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.574104, 57.374107, 58.401718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751942, -0.252791, 0.608835,
		-0.347856, 0.632362, 0.692180,
		-0.559982, -0.732266, 0.387565,
		72.406113, 57.154427, 58.517986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.764008, 57.796684, 59.050903>,  <72.798096, 57.667015, 58.246693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.764008, 57.796684, 59.050903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.724777, 57.428101, 58.900551>,  <72.701241, 57.206951, 58.810341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.724777, 57.428101, 58.900551>,  <72.764008, 57.796684, 59.050903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.724777, 57.428101, 58.900551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757340, -0.314144, 0.572494,
		-0.645613, -0.228520, 0.728672,
		-0.098082, -0.921462, -0.375883,
		72.695351, 57.151661, 58.787785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.411026, 57.793114, 59.643356>,  <72.764008, 57.796684, 59.050903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.411026, 57.793114, 59.643356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192001, 57.777714, 59.977707>,  <72.060585, 57.768475, 60.178318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192001, 57.777714, 59.977707>,  <72.411026, 57.793114, 59.643356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.192001, 57.777714, 59.977707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709709, -0.507805, -0.488311,
		0.443261, -0.860612, 0.250734,
		-0.547570, -0.038500, 0.835874,
		72.027733, 57.766163, 60.228470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.765038, 57.224976, 59.492374>,  <72.411026, 57.793114, 59.643356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.765038, 57.224976, 59.492374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.908287, 57.595810, 59.536674>,  <72.994232, 57.818310, 59.563255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.908287, 57.595810, 59.536674>,  <72.765038, 57.224976, 59.492374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.908287, 57.595810, 59.536674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313756, 0.007771, 0.949472,
		0.879379, -0.374773, 0.293661,
		0.358118, 0.927084, 0.110754,
		73.015724, 57.873936, 59.569901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.173874, 57.226414, 60.118637>,  <72.765038, 57.224976, 59.492374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.173874, 57.226414, 60.118637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.037262, 57.592960, 60.035080>,  <72.955299, 57.812889, 59.984943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.037262, 57.592960, 60.035080>,  <73.173874, 57.226414, 60.118637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.037262, 57.592960, 60.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314108, 0.098198, 0.944296,
		0.885833, 0.388114, 0.254301,
		-0.341522, 0.916365, -0.208896,
		72.934807, 57.867870, 59.972412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.531349, 57.810532, 60.495636>,  <73.173874, 57.226414, 60.118637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.531349, 57.810532, 60.495636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.156342, 57.909637, 60.397926>,  <72.931335, 57.969101, 60.339298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.156342, 57.909637, 60.397926>,  <73.531349, 57.810532, 60.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.156342, 57.909637, 60.397926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215892, 0.136335, 0.966852,
		0.272855, 0.959180, -0.074326,
		-0.937518, 0.247765, -0.244279,
		72.875084, 57.983967, 60.324642>
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
