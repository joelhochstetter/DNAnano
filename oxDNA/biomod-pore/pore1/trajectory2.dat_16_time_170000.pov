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
	<50.182545, 41.386513, 46.507828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.050644, 41.721397, 46.682339>,  <49.971504, 41.922329, 46.787045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.050644, 41.721397, 46.682339>,  <50.182545, 41.386513, 46.507828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.050644, 41.721397, 46.682339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282582, -0.528466, 0.800544,
		0.900784, 0.140696, 0.410844,
		-0.329751, 0.837215, 0.436276,
		49.951717, 41.972561, 46.813221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.399517, 41.326035, 47.219086>,  <50.182545, 41.386513, 46.507828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.399517, 41.326035, 47.219086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.118637, 41.610512, 47.205688>,  <49.950111, 41.781197, 47.197651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.118637, 41.610512, 47.205688>,  <50.399517, 41.326035, 47.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.118637, 41.610512, 47.205688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442030, -0.398600, 0.803572,
		0.558147, 0.579070, 0.594265,
		-0.702198, 0.711194, -0.033489,
		49.907978, 41.823872, 47.195641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.290630, 41.397369, 47.878929>,  <50.399517, 41.326035, 47.219086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.290630, 41.397369, 47.878929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.966080, 41.578712, 47.731346>,  <49.771347, 41.687519, 47.642796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.966080, 41.578712, 47.731346>,  <50.290630, 41.397369, 47.878929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.966080, 41.578712, 47.731346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534356, -0.319465, 0.782564,
		0.236914, 0.832110, 0.501463,
		-0.811379, 0.453360, -0.368957,
		49.722668, 41.714722, 47.620659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.010025, 41.831211, 48.451694>,  <50.290630, 41.397369, 47.878929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.010025, 41.831211, 48.451694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.741196, 41.740051, 48.169876>,  <49.579899, 41.685356, 48.000786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.741196, 41.740051, 48.169876>,  <50.010025, 41.831211, 48.451694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.741196, 41.740051, 48.169876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665684, -0.230781, 0.709651,
		-0.324325, 0.945940, 0.003391,
		-0.672070, -0.227900, -0.704545,
		49.539574, 41.671680, 47.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.424461, 42.043541, 48.639915>,  <50.010025, 41.831211, 48.451694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.424461, 42.043541, 48.639915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.316833, 41.761963, 48.376987>,  <49.252258, 41.593018, 48.219231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.316833, 41.761963, 48.376987>,  <49.424461, 42.043541, 48.639915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.316833, 41.761963, 48.376987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727845, -0.298339, 0.617442,
		-0.630747, 0.644561, -0.432087,
		-0.269071, -0.703943, -0.657317,
		49.236111, 41.550781, 48.179790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.779133, 42.198421, 48.525230>,  <49.424461, 42.043541, 48.639915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.779133, 42.198421, 48.525230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.852013, 41.821930, 48.411461>,  <48.895741, 41.596035, 48.343201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.852013, 41.821930, 48.411461>,  <48.779133, 42.198421, 48.525230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.852013, 41.821930, 48.411461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651692, -0.332202, 0.681864,
		-0.736274, 0.061117, -0.673918,
		0.182204, -0.941226, -0.284421,
		48.906673, 41.539562, 48.326134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157070, 41.882755, 48.271927>,  <48.779133, 42.198421, 48.525230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157070, 41.882755, 48.271927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388062, 41.573059, 48.375519>,  <48.526657, 41.387241, 48.437675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388062, 41.573059, 48.375519>,  <48.157070, 41.882755, 48.271927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.388062, 41.573059, 48.375519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668672, -0.266550, 0.694139,
		-0.468403, -0.574018, -0.671641,
		0.577474, -0.774245, 0.258977,
		48.561302, 41.340786, 48.453213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702156, 41.435631, 48.519405>,  <48.157070, 41.882755, 48.271927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702156, 41.435631, 48.519405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.040848, 41.268463, 48.651100>,  <48.244061, 41.168163, 48.730118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.040848, 41.268463, 48.651100>,  <47.702156, 41.435631, 48.519405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.040848, 41.268463, 48.651100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513866, -0.482101, 0.709592,
		-0.137824, -0.770015, -0.622961,
		0.846727, -0.417917, 0.329239,
		48.294865, 41.143089, 48.749870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554909, 40.711525, 48.551964>,  <47.702156, 41.435631, 48.519405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554909, 40.711525, 48.551964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.871162, 40.779045, 48.787392>,  <48.060913, 40.819557, 48.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.871162, 40.779045, 48.787392>,  <47.554909, 40.711525, 48.551964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.871162, 40.779045, 48.787392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476480, -0.434076, 0.764556,
		0.384538, -0.884921, -0.262765,
		0.790631, 0.168799, 0.588565,
		48.108353, 40.829685, 48.963963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.663902, 40.109486, 48.914429>,  <47.554909, 40.711525, 48.551964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.663902, 40.109486, 48.914429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850685, 40.372887, 49.150505>,  <47.962753, 40.530926, 49.292152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850685, 40.372887, 49.150505>,  <47.663902, 40.109486, 48.914429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850685, 40.372887, 49.150505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394292, -0.442356, 0.805515,
		0.791509, -0.608848, 0.053081,
		0.466955, 0.658502, 0.590192,
		47.990772, 40.570438, 49.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.890480, 39.668972, 49.433231>,  <47.663902, 40.109486, 48.914429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.890480, 39.668972, 49.433231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865814, 40.033615, 49.595798>,  <47.851013, 40.252399, 49.693336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865814, 40.033615, 49.595798>,  <47.890480, 39.668972, 49.433231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865814, 40.033615, 49.595798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527486, -0.375443, 0.762103,
		0.847323, -0.167385, 0.504010,
		-0.061663, 0.911606, 0.406415,
		47.847317, 40.307098, 49.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.085983, 39.496666, 50.028252>,  <47.890480, 39.668972, 49.433231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.085983, 39.496666, 50.028252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865250, 39.828011, 50.066807>,  <47.732807, 40.026817, 50.089939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865250, 39.828011, 50.066807>,  <48.085983, 39.496666, 50.028252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865250, 39.828011, 50.066807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425980, -0.379349, 0.821362,
		0.716950, 0.412200, 0.562205,
		-0.551837, 0.828363, 0.096386,
		47.699699, 40.076519, 50.095722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.015732, 39.535671, 50.710716>,  <48.085983, 39.496666, 50.028252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.015732, 39.535671, 50.710716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738274, 39.783936, 50.564491>,  <47.571800, 39.932896, 50.476757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738274, 39.783936, 50.564491>,  <48.015732, 39.535671, 50.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738274, 39.783936, 50.564491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563087, -0.150721, 0.812537,
		0.449215, 0.769453, 0.454035,
		-0.693642, 0.620665, -0.365562,
		47.530182, 39.970135, 50.454823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.832298, 39.989819, 51.215740>,  <48.015732, 39.535671, 50.710716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.832298, 39.989819, 51.215740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504929, 40.027611, 50.989021>,  <47.308506, 40.050285, 50.852989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504929, 40.027611, 50.989021>,  <47.832298, 39.989819, 51.215740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504929, 40.027611, 50.989021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569646, -0.003928, 0.821881,
		0.075426, 0.995519, 0.057036,
		-0.818422, 0.094481, -0.566797,
		47.259403, 40.055954, 50.818981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576611, 40.685299, 51.318890>,  <47.832298, 39.989819, 51.215740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576611, 40.685299, 51.318890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265953, 40.458076, 51.209976>,  <47.079559, 40.321743, 51.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265953, 40.458076, 51.209976>,  <47.576611, 40.685299, 51.318890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265953, 40.458076, 51.209976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455400, 0.207660, 0.865730,
		-0.435243, 0.796359, -0.419971,
		-0.776643, -0.568057, -0.272280,
		47.032959, 40.287659, 51.128292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002090, 40.948719, 51.727894>,  <47.576611, 40.685299, 51.318890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002090, 40.948719, 51.727894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868011, 40.595833, 51.595627>,  <46.787563, 40.384102, 51.516266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868011, 40.595833, 51.595627>,  <47.002090, 40.948719, 51.727894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868011, 40.595833, 51.595627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540677, -0.107299, 0.834359,
		-0.771566, 0.458454, -0.441029,
		-0.335193, -0.882217, -0.330663,
		46.767452, 40.331169, 51.496429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329464, 40.883167, 52.074371>,  <47.002090, 40.948719, 51.727894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329464, 40.883167, 52.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379166, 40.511688, 51.934616>,  <46.408989, 40.288799, 51.850761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379166, 40.511688, 51.934616>,  <46.329464, 40.883167, 52.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379166, 40.511688, 51.934616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276788, -0.370586, 0.886597,
		-0.952863, -0.013459, -0.303102,
		0.124258, -0.928701, -0.349392,
		46.416443, 40.233078, 51.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679039, 40.567703, 52.059666>,  <46.329464, 40.883167, 52.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679039, 40.567703, 52.059666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969223, 40.294952, 52.097084>,  <46.143333, 40.131302, 52.119537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969223, 40.294952, 52.097084>,  <45.679039, 40.567703, 52.059666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969223, 40.294952, 52.097084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390575, -0.295948, 0.871703,
		-0.566707, -0.668926, -0.481022,
		0.725462, -0.681875, 0.093550,
		46.186863, 40.090389, 52.125149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323387, 39.885334, 52.176498>,  <45.679039, 40.567703, 52.059666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323387, 39.885334, 52.176498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696243, 39.845001, 52.315605>,  <45.919956, 39.820801, 52.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696243, 39.845001, 52.315605>,  <45.323387, 39.885334, 52.176498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696243, 39.845001, 52.315605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359223, -0.378154, 0.853205,
		0.045483, -0.920236, -0.388713,
		0.932143, -0.100828, 0.347769,
		45.975887, 39.814754, 52.419937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280025, 39.172096, 52.318043>,  <45.323387, 39.885334, 52.176498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280025, 39.172096, 52.318043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609749, 39.282455, 52.515785>,  <45.807583, 39.348671, 52.634430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609749, 39.282455, 52.515785>,  <45.280025, 39.172096, 52.318043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609749, 39.282455, 52.515785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339194, -0.458444, 0.821448,
		0.453274, -0.844812, -0.284316,
		0.824312, 0.275903, 0.494355,
		45.857044, 39.365227, 52.664093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466690, 38.564404, 52.659584>,  <45.280025, 39.172096, 52.318043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466690, 38.564404, 52.659584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630920, 38.880173, 52.842117>,  <45.729458, 39.069633, 52.951637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630920, 38.880173, 52.842117>,  <45.466690, 38.564404, 52.659584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630920, 38.880173, 52.842117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482207, -0.236773, 0.843454,
		0.773890, -0.566347, 0.283453,
		0.410574, 0.789424, 0.456332,
		45.754093, 39.117001, 52.979015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576187, 38.320107, 53.315907>,  <45.466690, 38.564404, 52.659584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576187, 38.320107, 53.315907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578590, 38.719879, 53.329159>,  <45.580032, 38.959743, 53.337112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578590, 38.719879, 53.329159>,  <45.576187, 38.320107, 53.315907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578590, 38.719879, 53.329159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607483, -0.022672, 0.794010,
		0.794311, -0.024896, 0.607002,
		0.006006, 0.999433, 0.033133,
		45.580391, 39.019711, 53.339100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674229, 38.499092, 53.927849>,  <45.576187, 38.320107, 53.315907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674229, 38.499092, 53.927849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483650, 38.814354, 53.771992>,  <45.369305, 39.003510, 53.678478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483650, 38.814354, 53.771992>,  <45.674229, 38.499092, 53.927849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483650, 38.814354, 53.771992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501308, 0.120547, 0.856831,
		0.722282, 0.603561, 0.337672,
		-0.476444, 0.788151, -0.389639,
		45.340717, 39.050800, 53.655102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627121, 38.995163, 54.506134>,  <45.674229, 38.499092, 53.927849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627121, 38.995163, 54.506134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358772, 39.093002, 54.226105>,  <45.197762, 39.151707, 54.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358772, 39.093002, 54.226105>,  <45.627121, 38.995163, 54.506134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358772, 39.093002, 54.226105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723982, -0.011629, 0.689720,
		0.160566, 0.969554, 0.184890,
		-0.670871, 0.244603, -0.700073,
		45.157513, 39.166382, 54.016083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217182, 39.408638, 54.783798>,  <45.627121, 38.995163, 54.506134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217182, 39.408638, 54.783798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973476, 39.359230, 54.470482>,  <44.827255, 39.329586, 54.282494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973476, 39.359230, 54.470482>,  <45.217182, 39.408638, 54.783798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973476, 39.359230, 54.470482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792622, 0.124131, 0.596943,
		0.023497, 0.984548, -0.173533,
		-0.609260, -0.123520, -0.783291,
		44.790699, 39.322174, 54.235493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701519, 39.969330, 54.751205>,  <45.217182, 39.408638, 54.783798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701519, 39.969330, 54.751205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531326, 39.673470, 54.542637>,  <44.429211, 39.495953, 54.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531326, 39.673470, 54.542637>,  <44.701519, 39.969330, 54.751205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531326, 39.673470, 54.542637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849997, 0.128890, 0.510777,
		-0.310592, 0.660531, -0.683543,
		-0.425486, -0.739652, -0.521417,
		44.403679, 39.451572, 54.386211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025112, 40.187775, 54.621532>,  <44.701519, 39.969330, 54.751205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025112, 40.187775, 54.621532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020710, 39.790733, 54.573177>,  <44.018070, 39.552509, 54.544163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020710, 39.790733, 54.573177>,  <44.025112, 40.187775, 54.621532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020710, 39.790733, 54.573177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819915, -0.060250, 0.569306,
		-0.572380, 0.105384, -0.813189,
		-0.011001, -0.992605, -0.120892,
		44.017410, 39.492950, 54.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328419, 40.031849, 54.347191>,  <44.025112, 40.187775, 54.621532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328419, 40.031849, 54.347191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512783, 39.724113, 54.524132>,  <43.623402, 39.539471, 54.630295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512783, 39.724113, 54.524132>,  <43.328419, 40.031849, 54.347191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512783, 39.724113, 54.524132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837283, -0.211778, 0.504091,
		-0.294141, -0.602709, -0.741770,
		0.460911, -0.769345, 0.442345,
		43.651058, 39.493309, 54.656837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778320, 39.653973, 54.566978>,  <43.328419, 40.031849, 54.347191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778320, 39.653973, 54.566978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064468, 39.450287, 54.758373>,  <43.236156, 39.328075, 54.873211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064468, 39.450287, 54.758373>,  <42.778320, 39.653973, 54.566978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064468, 39.450287, 54.758373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643633, -0.213640, 0.734911,
		-0.272000, -0.833704, -0.480576,
		0.715369, -0.509210, 0.478490,
		43.279079, 39.297523, 54.901920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494633, 39.199039, 54.894577>,  <42.778320, 39.653973, 54.566978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494633, 39.199039, 54.894577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836815, 39.199486, 55.101730>,  <43.042122, 39.199753, 55.226021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836815, 39.199486, 55.101730>,  <42.494633, 39.199039, 54.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836815, 39.199486, 55.101730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511633, -0.153052, 0.845462,
		0.080204, -0.988218, -0.130359,
		0.855452, 0.001114, 0.517880,
		43.093452, 39.199818, 55.257095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345585, 38.719826, 55.396915>,  <42.494633, 39.199039, 54.894577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345585, 38.719826, 55.396915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648941, 38.944336, 55.529469>,  <42.830956, 39.079044, 55.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648941, 38.944336, 55.529469>,  <42.345585, 38.719826, 55.396915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648941, 38.944336, 55.529469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388100, -0.019611, 0.921409,
		0.523666, -0.827394, 0.202959,
		0.758388, 0.561279, 0.331381,
		42.876457, 39.112720, 55.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673943, 38.323570, 55.915524>,  <42.345585, 38.719826, 55.396915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673943, 38.323570, 55.915524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730774, 38.716019, 55.968006>,  <42.764874, 38.951488, 55.999496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730774, 38.716019, 55.968006>,  <42.673943, 38.323570, 55.915524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730774, 38.716019, 55.968006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443934, -0.055318, 0.894351,
		0.884723, -0.185321, 0.427692,
		0.142083, 0.981120, 0.131211,
		42.773399, 39.010353, 56.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819000, 38.430206, 56.717010>,  <42.673943, 38.323570, 55.915524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819000, 38.430206, 56.717010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722198, 38.788841, 56.568649>,  <42.664116, 39.004021, 56.479633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722198, 38.788841, 56.568649>,  <42.819000, 38.430206, 56.717010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722198, 38.788841, 56.568649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449749, 0.235061, 0.861668,
		0.859743, 0.375343, 0.346352,
		-0.242007, 0.896585, -0.370902,
		42.649597, 39.057816, 56.457378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997608, 38.845360, 57.225124>,  <42.819000, 38.430206, 56.717010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997608, 38.845360, 57.225124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731163, 39.059967, 57.017879>,  <42.571297, 39.188732, 56.893532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731163, 39.059967, 57.017879>,  <42.997608, 38.845360, 57.225124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731163, 39.059967, 57.017879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513377, 0.174112, 0.840315,
		0.541052, 0.825734, 0.159456,
		-0.666113, 0.536515, -0.518117,
		42.531330, 39.220921, 56.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986389, 39.516846, 57.514381>,  <42.997608, 38.845360, 57.225124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986389, 39.516846, 57.514381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641693, 39.471031, 57.316681>,  <42.434875, 39.443542, 57.198059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641693, 39.471031, 57.316681>,  <42.986389, 39.516846, 57.514381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641693, 39.471031, 57.316681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499419, 0.363040, 0.786627,
		0.089338, 0.924708, -0.370046,
		-0.861742, -0.114532, -0.494250,
		42.383171, 39.436672, 57.168407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635826, 40.086788, 57.529373>,  <42.986389, 39.516846, 57.514381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635826, 40.086788, 57.529373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342369, 39.817513, 57.492329>,  <42.166294, 39.655945, 57.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342369, 39.817513, 57.492329>,  <42.635826, 40.086788, 57.529373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342369, 39.817513, 57.492329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379882, 0.293305, 0.877304,
		-0.563430, 0.678811, -0.470916,
		-0.733646, -0.673192, -0.092611,
		42.122276, 39.615555, 57.464546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058430, 40.497768, 57.657196>,  <42.635826, 40.086788, 57.529373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058430, 40.497768, 57.657196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950806, 40.116035, 57.709122>,  <41.886230, 39.886997, 57.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950806, 40.116035, 57.709122>,  <42.058430, 40.497768, 57.657196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950806, 40.116035, 57.709122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474271, 0.248599, 0.844550,
		-0.838255, 0.165668, -0.519502,
		-0.269063, -0.954334, 0.129818,
		41.870087, 39.829735, 57.748066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283127, 40.412796, 57.692486>,  <42.058430, 40.497768, 57.657196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283127, 40.412796, 57.692486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446388, 40.094757, 57.871925>,  <41.544346, 39.903934, 57.979588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446388, 40.094757, 57.871925>,  <41.283127, 40.412796, 57.692486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446388, 40.094757, 57.871925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626409, 0.113545, 0.771180,
		-0.664096, -0.595764, -0.451710,
		0.408151, -0.795093, 0.448597,
		41.568832, 39.856228, 58.006504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746735, 40.082668, 58.000214>,  <41.283127, 40.412796, 57.692486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746735, 40.082668, 58.000214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044758, 39.915039, 58.207779>,  <41.223572, 39.814461, 58.332317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044758, 39.915039, 58.207779>,  <40.746735, 40.082668, 58.000214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044758, 39.915039, 58.207779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562818, 0.022503, 0.826274,
		-0.357945, -0.907674, -0.219095,
		0.745058, -0.419072, 0.518911,
		41.268276, 39.789318, 58.363453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429264, 39.579906, 58.329147>,  <40.746735, 40.082668, 58.000214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429264, 39.579906, 58.329147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758255, 39.612320, 58.554348>,  <40.955650, 39.631767, 58.689468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758255, 39.612320, 58.554348>,  <40.429264, 39.579906, 58.329147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758255, 39.612320, 58.554348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557262, -0.083553, 0.826122,
		0.113988, -0.993203, -0.023561,
		0.822475, 0.081039, 0.562998,
		41.004997, 39.636631, 58.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333328, 39.115910, 58.800453>,  <40.429264, 39.579906, 58.329147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333328, 39.115910, 58.800453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571999, 39.399124, 58.951538>,  <40.715199, 39.569054, 59.042187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571999, 39.399124, 58.951538>,  <40.333328, 39.115910, 58.800453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571999, 39.399124, 58.951538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576464, 0.050733, 0.815546,
		0.558275, -0.704349, 0.438430,
		0.596672, 0.708038, 0.377709,
		40.750999, 39.611534, 59.064850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446033, 39.030891, 59.561359>,  <40.333328, 39.115910, 58.800453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446033, 39.030891, 59.561359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531406, 39.420303, 59.528637>,  <40.582630, 39.653950, 59.509003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531406, 39.420303, 59.528637>,  <40.446033, 39.030891, 59.561359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531406, 39.420303, 59.528637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565450, 0.191381, 0.802272,
		0.796690, -0.124973, 0.591327,
		0.213431, 0.973527, -0.081806,
		40.595436, 39.712360, 59.504097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768318, 39.293541, 60.218067>,  <40.446033, 39.030891, 59.561359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768318, 39.293541, 60.218067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603481, 39.609947, 60.037193>,  <40.504578, 39.799789, 59.928669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603481, 39.609947, 60.037193>,  <40.768318, 39.293541, 60.218067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603481, 39.609947, 60.037193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401757, 0.287685, 0.869384,
		0.817785, 0.539935, 0.199244,
		-0.412092, 0.791017, -0.452187,
		40.479855, 39.847252, 59.901539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857338, 39.983212, 60.583771>,  <40.768318, 39.293541, 60.218067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857338, 39.983212, 60.583771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521011, 39.991905, 60.367416>,  <40.319214, 39.997124, 60.237602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521011, 39.991905, 60.367416>,  <40.857338, 39.983212, 60.583771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521011, 39.991905, 60.367416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484852, 0.414095, 0.770353,
		0.240723, 0.909974, -0.337639,
		-0.840816, 0.021737, -0.540884,
		40.268768, 39.998425, 60.205151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583359, 40.636150, 60.462582>,  <40.857338, 39.983212, 60.583771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583359, 40.636150, 60.462582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303314, 40.352142, 60.492802>,  <40.135288, 40.181736, 60.510933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303314, 40.352142, 60.492802>,  <40.583359, 40.636150, 60.462582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303314, 40.352142, 60.492802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276455, 0.367105, 0.888148,
		-0.658339, 0.600920, -0.453305,
		-0.700116, -0.710021, 0.075553,
		40.093281, 40.139137, 60.515469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054661, 40.986122, 60.766212>,  <40.583359, 40.636150, 60.462582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054661, 40.986122, 60.766212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019745, 40.594658, 60.840614>,  <39.998795, 40.359779, 60.885254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019745, 40.594658, 60.840614>,  <40.054661, 40.986122, 60.766212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019745, 40.594658, 60.840614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195221, 0.199902, 0.960171,
		-0.976867, 0.047504, -0.208505,
		-0.087292, -0.978664, 0.186004,
		39.993557, 40.301060, 60.896416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388580, 40.783329, 60.845295>,  <40.054661, 40.986122, 60.766212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388580, 40.783329, 60.845295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645039, 40.558594, 61.054398>,  <39.798912, 40.423752, 61.179859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645039, 40.558594, 61.054398>,  <39.388580, 40.783329, 60.845295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645039, 40.558594, 61.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380552, 0.358771, 0.852328,
		-0.666419, -0.745401, 0.016215,
		0.641144, -0.561837, 0.522756,
		39.837383, 40.390041, 61.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674187, 41.548233, 61.013302>,  <39.388580, 40.783329, 60.845295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674187, 41.548233, 61.013302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535732, 41.912384, 61.103996>,  <39.452660, 42.130875, 61.158413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535732, 41.912384, 61.103996>,  <39.674187, 41.548233, 61.013302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535732, 41.912384, 61.103996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655663, 0.407589, -0.635592,
		-0.671041, -0.071338, -0.737980,
		-0.346134, 0.910375, 0.226736,
		39.431892, 42.185497, 61.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452591, 42.020000, 60.427933>,  <39.674187, 41.548233, 61.013302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452591, 42.020000, 60.427933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595325, 42.246010, 60.725498>,  <39.680965, 42.381615, 60.904037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595325, 42.246010, 60.725498>,  <39.452591, 42.020000, 60.427933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595325, 42.246010, 60.725498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654012, 0.417521, -0.630828,
		-0.667036, 0.711632, -0.220549,
		0.356834, 0.565027, 0.743918,
		39.702377, 42.415520, 60.948673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484505, 42.720367, 60.150040>,  <39.452591, 42.020000, 60.427933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484505, 42.720367, 60.150040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735859, 42.701530, 60.460629>,  <39.886673, 42.690228, 60.646984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735859, 42.701530, 60.460629>,  <39.484505, 42.720367, 60.150040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735859, 42.701530, 60.460629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732598, 0.371491, -0.570346,
		-0.261594, 0.927241, 0.267940,
		0.628386, -0.047093, 0.776475,
		39.924374, 42.687401, 60.693569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806885, 43.344902, 60.127335>,  <39.484505, 42.720367, 60.150040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806885, 43.344902, 60.127335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022858, 43.023903, 60.228897>,  <40.152443, 42.831303, 60.289837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022858, 43.023903, 60.228897>,  <39.806885, 43.344902, 60.127335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022858, 43.023903, 60.228897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735948, 0.303709, -0.605095,
		0.408472, 0.513577, 0.754579,
		0.539936, -0.802496, 0.253910,
		40.184837, 42.783154, 60.305069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567116, 43.121082, 60.214268>,  <39.806885, 43.344902, 60.127335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567116, 43.121082, 60.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850113, 42.839363, 60.237694>,  <41.019909, 42.670334, 60.251751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850113, 42.839363, 60.237694>,  <40.567116, 43.121082, 60.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850113, 42.839363, 60.237694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398840, 0.329486, -0.855783,
		0.583426, 0.628816, 0.514008,
		0.707489, -0.704294, 0.058566,
		41.062359, 42.628075, 60.255264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164738, 43.440861, 59.941227>,  <40.567116, 43.121082, 60.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164738, 43.440861, 59.941227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227795, 43.046837, 59.913486>,  <41.265629, 42.810421, 59.896843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227795, 43.046837, 59.913486>,  <41.164738, 43.440861, 59.941227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227795, 43.046837, 59.913486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458854, 0.135252, -0.878157,
		0.874416, 0.106611, 0.473319,
		0.157639, -0.985059, -0.069348,
		41.275085, 42.751320, 59.892681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861477, 43.312519, 59.794189>,  <41.164738, 43.440861, 59.941227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861477, 43.312519, 59.794189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669456, 42.981873, 59.676712>,  <41.554245, 42.783485, 59.606228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669456, 42.981873, 59.676712>,  <41.861477, 43.312519, 59.794189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669456, 42.981873, 59.676712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420344, 0.077103, -0.904083,
		0.769977, -0.557455, 0.310451,
		-0.480048, -0.826619, -0.293691,
		41.525440, 42.733887, 59.588604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294319, 42.972752, 59.518002>,  <41.861477, 43.312519, 59.794189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294319, 42.972752, 59.518002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956718, 42.834023, 59.354355>,  <41.754158, 42.750786, 59.256165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956718, 42.834023, 59.354355>,  <42.294319, 42.972752, 59.518002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956718, 42.834023, 59.354355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453778, -0.055108, -0.889409,
		0.285925, -0.936309, 0.203893,
		-0.843998, -0.346827, -0.409120,
		41.703518, 42.729973, 59.231617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385212, 42.394913, 59.166359>,  <42.294319, 42.972752, 59.518002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385212, 42.394913, 59.166359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060287, 42.531075, 58.976929>,  <41.865334, 42.612770, 58.863270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060287, 42.531075, 58.976929>,  <42.385212, 42.394913, 59.166359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060287, 42.531075, 58.976929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441737, -0.171088, -0.880680,
		-0.380809, -0.924584, -0.011392,
		-0.812313, 0.340403, -0.473575,
		41.816593, 42.633194, 58.834858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261574, 41.821125, 58.584270>,  <42.385212, 42.394913, 59.166359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261574, 41.821125, 58.584270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014950, 42.121956, 58.491119>,  <41.866974, 42.302456, 58.435230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014950, 42.121956, 58.491119>,  <42.261574, 41.821125, 58.584270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014950, 42.121956, 58.491119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348053, -0.004939, -0.937462,
		-0.706194, -0.659057, -0.258717,
		-0.616563, 0.752077, -0.232875,
		41.829983, 42.347580, 58.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921604, 41.549053, 58.017342>,  <42.261574, 41.821125, 58.584270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921604, 41.549053, 58.017342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904976, 41.947639, 57.988152>,  <41.895000, 42.186790, 57.970638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904976, 41.947639, 57.988152>,  <41.921604, 41.549053, 58.017342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904976, 41.947639, 57.988152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247022, -0.060516, -0.967119,
		-0.968118, -0.058231, -0.243633,
		-0.041572, 0.996467, -0.072971,
		41.892506, 42.246578, 57.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652878, 41.780506, 57.298771>,  <41.921604, 41.549053, 58.017342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652878, 41.780506, 57.298771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803543, 42.130661, 57.419983>,  <41.893944, 42.340752, 57.492710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803543, 42.130661, 57.419983>,  <41.652878, 41.780506, 57.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803543, 42.130661, 57.419983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314799, 0.186694, -0.930616,
		-0.871220, 0.445925, -0.205249,
		0.376666, 0.875384, 0.303028,
		41.916542, 42.393276, 57.510891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439793, 42.187893, 56.822643>,  <41.652878, 41.780506, 57.298771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439793, 42.187893, 56.822643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741375, 42.384964, 56.996460>,  <41.922325, 42.503204, 57.100750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741375, 42.384964, 56.996460>,  <41.439793, 42.187893, 56.822643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741375, 42.384964, 56.996460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433720, 0.123499, -0.892544,
		-0.493400, 0.861405, -0.120571,
		0.753952, 0.492675, 0.434543,
		41.967560, 42.532768, 57.126823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626686, 42.753479, 56.491379>,  <41.439793, 42.187893, 56.822643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626686, 42.753479, 56.491379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972797, 42.679497, 56.677750>,  <42.180466, 42.635109, 56.789570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972797, 42.679497, 56.677750>,  <41.626686, 42.753479, 56.491379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972797, 42.679497, 56.677750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499608, 0.242086, -0.831737,
		0.041042, 0.952463, 0.301877,
		0.865279, -0.184956, 0.465923,
		42.232380, 42.624008, 56.817528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046719, 43.393810, 56.325531>,  <41.626686, 42.753479, 56.491379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046719, 43.393810, 56.325531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304901, 43.109840, 56.438232>,  <42.459812, 42.939457, 56.505852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304901, 43.109840, 56.438232>,  <42.046719, 43.393810, 56.325531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304901, 43.109840, 56.438232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626550, 0.281163, -0.726899,
		0.436828, 0.645715, 0.626285,
		0.645459, -0.709929, 0.281753,
		42.498539, 42.896862, 56.522758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757351, 43.718948, 56.328739>,  <42.046719, 43.393810, 56.325531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757351, 43.718948, 56.328739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788494, 43.322060, 56.289871>,  <42.807182, 43.083927, 56.266552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788494, 43.322060, 56.289871>,  <42.757351, 43.718948, 56.328739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788494, 43.322060, 56.289871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802739, 0.120193, -0.584092,
		0.591225, -0.032522, 0.805850,
		0.077862, -0.992218, -0.097168,
		42.811852, 43.024395, 56.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481365, 43.560234, 56.385952>,  <42.757351, 43.718948, 56.328739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481365, 43.560234, 56.385952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313782, 43.233658, 56.227009>,  <43.213230, 43.037712, 56.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313782, 43.233658, 56.227009>,  <43.481365, 43.560234, 56.385952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313782, 43.233658, 56.227009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743384, -0.057124, -0.666421,
		0.521396, -0.574594, 0.630863,
		-0.418959, -0.816442, -0.397360,
		43.188095, 42.988724, 56.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997063, 43.027523, 56.371315>,  <43.481365, 43.560234, 56.385952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997063, 43.027523, 56.371315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737206, 42.940681, 56.079880>,  <43.581291, 42.888577, 55.905018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737206, 42.940681, 56.079880>,  <43.997063, 43.027523, 56.371315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737206, 42.940681, 56.079880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750541, -0.030524, -0.660119,
		0.121074, -0.975672, 0.182774,
		-0.649638, -0.217102, -0.728586,
		43.542313, 42.875549, 55.861305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221214, 42.506458, 56.034184>,  <43.997063, 43.027523, 56.371315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221214, 42.506458, 56.034184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950020, 42.625771, 55.765450>,  <43.787304, 42.697357, 55.604210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950020, 42.625771, 55.765450>,  <44.221214, 42.506458, 56.034184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950020, 42.625771, 55.765450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663818, -0.144123, -0.733876,
		-0.315726, -0.943535, -0.100289,
		-0.677984, 0.298278, -0.671839,
		43.746624, 42.715256, 55.563896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374161, 42.144344, 55.406208>,  <44.221214, 42.506458, 56.034184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374161, 42.144344, 55.406208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127621, 42.425209, 55.263615>,  <43.979694, 42.593727, 55.178059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127621, 42.425209, 55.263615>,  <44.374161, 42.144344, 55.406208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127621, 42.425209, 55.263615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445841, -0.061999, -0.892963,
		-0.649104, -0.709316, -0.274838,
		-0.616353, 0.702159, -0.356486,
		43.942715, 42.635857, 55.156670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155666, 41.958778, 54.831627>,  <44.374161, 42.144344, 55.406208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155666, 41.958778, 54.831627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069748, 42.348396, 54.803066>,  <44.018196, 42.582169, 54.785931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069748, 42.348396, 54.803066>,  <44.155666, 41.958778, 54.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069748, 42.348396, 54.803066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154342, -0.038331, -0.987274,
		-0.964386, -0.223083, -0.142103,
		-0.214797, 0.974046, -0.071397,
		44.005310, 42.640610, 54.781647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829464, 42.027439, 54.261299>,  <44.155666, 41.958778, 54.831627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829464, 42.027439, 54.261299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948719, 42.403679, 54.326279>,  <44.020271, 42.629421, 54.365265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948719, 42.403679, 54.326279>,  <43.829464, 42.027439, 54.261299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948719, 42.403679, 54.326279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160868, 0.118240, -0.979868,
		-0.940870, 0.318267, -0.116061,
		0.298136, 0.940598, 0.162448,
		44.038158, 42.685860, 54.375011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560883, 42.359550, 53.712318>,  <43.829464, 42.027439, 54.261299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560883, 42.359550, 53.712318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856026, 42.583786, 53.862679>,  <44.033112, 42.718327, 53.952896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856026, 42.583786, 53.862679>,  <43.560883, 42.359550, 53.712318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856026, 42.583786, 53.862679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386180, 0.106125, -0.916298,
		-0.553563, 0.821263, -0.138184,
		0.737857, 0.560592, 0.375902,
		44.077381, 42.751965, 53.975449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537716, 43.008148, 53.286156>,  <43.560883, 42.359550, 53.712318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537716, 43.008148, 53.286156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896515, 42.937866, 53.448402>,  <44.111794, 42.895699, 53.545750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896515, 42.937866, 53.448402>,  <43.537716, 43.008148, 53.286156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896515, 42.937866, 53.448402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441730, 0.321944, -0.837393,
		0.016543, 0.930312, 0.366395,
		0.896996, -0.175700, 0.405621,
		44.165615, 42.885155, 53.570087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988232, 43.640141, 53.049931>,  <43.537716, 43.008148, 53.286156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988232, 43.640141, 53.049931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218803, 43.328751, 53.149296>,  <44.357147, 43.141918, 53.208916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218803, 43.328751, 53.149296>,  <43.988232, 43.640141, 53.049931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218803, 43.328751, 53.149296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605288, 0.202542, -0.769808,
		0.548962, 0.594099, 0.587952,
		0.576427, -0.778475, 0.248413,
		44.391731, 43.095207, 53.223820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638950, 43.886929, 52.878231>,  <43.988232, 43.640141, 53.049931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638950, 43.886929, 52.878231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666695, 43.488922, 52.906902>,  <44.683342, 43.250118, 52.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666695, 43.488922, 52.906902>,  <44.638950, 43.886929, 52.878231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666695, 43.488922, 52.906902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668543, -0.006969, -0.743641,
		0.740432, 0.099498, 0.664725,
		0.069359, -0.995013, 0.071679,
		44.687504, 43.190418, 52.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374245, 43.780670, 52.839142>,  <44.638950, 43.886929, 52.878231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374245, 43.780670, 52.839142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230961, 43.419868, 52.742744>,  <45.144989, 43.203388, 52.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230961, 43.419868, 52.742744>,  <45.374245, 43.780670, 52.839142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230961, 43.419868, 52.742744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726805, -0.107383, -0.678398,
		0.586038, -0.418162, 0.694046,
		-0.358208, -0.902003, -0.240992,
		45.123497, 43.149269, 52.670448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945923, 43.330292, 52.887993>,  <45.374245, 43.780670, 52.839142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945923, 43.330292, 52.887993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669777, 43.178040, 52.641899>,  <45.504089, 43.086689, 52.494244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669777, 43.178040, 52.641899>,  <45.945923, 43.330292, 52.887993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669777, 43.178040, 52.641899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693097, -0.104193, -0.713274,
		0.207392, -0.918838, 0.335746,
		-0.690366, -0.380632, -0.615235,
		45.462666, 43.063850, 52.457329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330727, 42.760132, 52.576324>,  <45.945923, 43.330292, 52.887993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330727, 42.760132, 52.576324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024750, 42.797089, 52.321346>,  <45.841164, 42.819263, 52.168362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024750, 42.797089, 52.321346>,  <46.330727, 42.760132, 52.576324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024750, 42.797089, 52.321346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610207, -0.212865, -0.763109,
		-0.206182, -0.972705, 0.106460,
		-0.764942, 0.092377, -0.637441,
		45.795269, 42.824806, 52.130112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434662, 42.268906, 52.062969>,  <46.330727, 42.760132, 52.576324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434662, 42.268906, 52.062969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160851, 42.517578, 51.910690>,  <45.996563, 42.666782, 51.819321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160851, 42.517578, 51.910690>,  <46.434662, 42.268906, 52.062969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160851, 42.517578, 51.910690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320711, -0.212158, -0.923111,
		-0.654654, -0.753986, -0.054155,
		-0.684524, 0.621686, -0.380702,
		45.955494, 42.704082, 51.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107449, 41.890194, 51.481712>,  <46.434662, 42.268906, 52.062969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107449, 41.890194, 51.481712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057388, 42.285248, 51.443947>,  <46.027351, 42.522282, 51.421288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057388, 42.285248, 51.443947>,  <46.107449, 41.890194, 51.481712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057388, 42.285248, 51.443947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432123, -0.031397, -0.901268,
		-0.893088, -0.153593, -0.422851,
		-0.125152, 0.987635, -0.094411,
		46.019844, 42.581539, 51.415623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728737, 41.977036, 50.824661>,  <46.107449, 41.890194, 51.481712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728737, 41.977036, 50.824661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913933, 42.311218, 50.943081>,  <46.025051, 42.511730, 51.014133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913933, 42.311218, 50.943081>,  <45.728737, 41.977036, 50.824661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913933, 42.311218, 50.943081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355183, 0.131139, -0.925553,
		-0.812087, 0.533673, -0.236025,
		0.462990, 0.835461, 0.296048,
		46.052830, 42.561855, 51.031895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637825, 42.395138, 50.371937>,  <45.728737, 41.977036, 50.824661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637825, 42.395138, 50.371937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947014, 42.579529, 50.546295>,  <46.132530, 42.690163, 50.650909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947014, 42.579529, 50.546295>,  <45.637825, 42.395138, 50.371937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947014, 42.579529, 50.546295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304498, 0.333202, -0.892332,
		-0.556586, 0.822483, 0.117191,
		0.772977, 0.460975, 0.435900,
		46.178905, 42.717823, 50.677067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738831, 43.127327, 50.174065>,  <45.637825, 42.395138, 50.371937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738831, 43.127327, 50.174065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110970, 43.044838, 50.295345>,  <46.334251, 42.995342, 50.368114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110970, 43.044838, 50.295345>,  <45.738831, 43.127327, 50.174065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110970, 43.044838, 50.295345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362095, 0.386242, -0.848354,
		0.057844, 0.899048, 0.434012,
		0.930345, -0.206226, 0.303199,
		46.390072, 42.982971, 50.386307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093800, 43.640823, 49.915394>,  <45.738831, 43.127327, 50.174065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093800, 43.640823, 49.915394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384285, 43.389824, 50.027718>,  <46.558575, 43.239223, 50.095112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384285, 43.389824, 50.027718>,  <46.093800, 43.640823, 49.915394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384285, 43.389824, 50.027718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547730, 0.281276, -0.787957,
		0.415456, 0.726036, 0.547967,
		0.726214, -0.627500, 0.280814,
		46.602150, 43.201572, 50.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723816, 44.011532, 50.244129>,  <46.093800, 43.640823, 49.915394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723816, 44.011532, 50.244129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870422, 43.667107, 50.103142>,  <46.958385, 43.460453, 50.018547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870422, 43.667107, 50.103142>,  <46.723816, 44.011532, 50.244129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870422, 43.667107, 50.103142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671562, 0.507024, -0.540307,
		0.643951, -0.038678, 0.764088,
		0.366513, -0.861064, -0.352473,
		46.980377, 43.408787, 49.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475735, 44.124592, 50.210144>,  <46.723816, 44.011532, 50.244129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475735, 44.124592, 50.210144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409714, 43.807739, 49.975098>,  <47.370102, 43.617630, 49.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409714, 43.807739, 49.975098>,  <47.475735, 44.124592, 50.210144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.409714, 43.807739, 49.975098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739959, 0.294457, -0.604777,
		0.652089, -0.534629, 0.537543,
		-0.165048, -0.792128, -0.587616,
		47.360199, 43.570103, 49.798813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.115181, 43.689804, 50.141369>,  <47.475735, 44.124592, 50.210144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.115181, 43.689804, 50.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879906, 43.631195, 49.823235>,  <47.738739, 43.596031, 49.632355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879906, 43.631195, 49.823235>,  <48.115181, 43.689804, 50.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879906, 43.631195, 49.823235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769331, 0.201814, -0.606136,
		0.249321, -0.968402, -0.005984,
		-0.588192, -0.146519, -0.795338,
		47.703449, 43.587238, 49.584633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.611839, 43.558838, 49.703114>,  <48.115181, 43.689804, 50.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.611839, 43.558838, 49.703114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.316376, 43.583633, 49.434624>,  <48.139095, 43.598511, 49.273529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.316376, 43.583633, 49.434624>,  <48.611839, 43.558838, 49.703114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.316376, 43.583633, 49.434624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668922, 0.190322, -0.718555,
		0.083207, -0.979763, -0.182048,
		-0.738661, 0.061987, -0.671221,
		48.094776, 43.602230, 49.233257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.860870, 43.284145, 49.032906>,  <48.611839, 43.558838, 49.703114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.860870, 43.284145, 49.032906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.540016, 43.496040, 48.922665>,  <48.347504, 43.623177, 48.856522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.540016, 43.496040, 48.922665>,  <48.860870, 43.284145, 49.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.540016, 43.496040, 48.922665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541644, 0.451155, -0.709282,
		-0.251393, -0.718219, -0.648816,
		-0.802137, 0.529736, -0.275602,
		48.299374, 43.654961, 48.839985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.758549, 43.194920, 48.334778>,  <48.860870, 43.284145, 49.032906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.758549, 43.194920, 48.334778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.588127, 43.546944, 48.418655>,  <48.485874, 43.758160, 48.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.588127, 43.546944, 48.418655>,  <48.758549, 43.194920, 48.334778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.588127, 43.546944, 48.418655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542872, 0.434111, -0.718914,
		-0.723718, -0.192460, -0.662715,
		-0.426054, 0.880061, 0.209693,
		48.460312, 43.810963, 48.481564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.569069, 43.506477, 47.678085>,  <48.758549, 43.194920, 48.334778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.569069, 43.506477, 47.678085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.608643, 43.794441, 47.952877>,  <48.632389, 43.967220, 48.117752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.608643, 43.794441, 47.952877>,  <48.569069, 43.506477, 47.678085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.608643, 43.794441, 47.952877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579740, 0.519402, -0.627793,
		-0.808773, 0.460381, -0.365973,
		0.098937, 0.719911, 0.686979,
		48.638325, 44.010414, 48.158970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.510601, 44.101696, 47.339901>,  <48.569069, 43.506477, 47.678085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.510601, 44.101696, 47.339901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.706345, 44.222641, 47.667095>,  <48.823792, 44.295208, 47.863411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.706345, 44.222641, 47.667095>,  <48.510601, 44.101696, 47.339901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.706345, 44.222641, 47.667095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700149, 0.422984, -0.575218,
		-0.519921, 0.854201, -0.004711,
		0.489360, 0.302366, 0.817986,
		48.853153, 44.313351, 47.912491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.841084, 44.592205, 47.075359>,  <48.510601, 44.101696, 47.339901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.841084, 44.592205, 47.075359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.011177, 44.573524, 47.436913>,  <49.113232, 44.562317, 47.653843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.011177, 44.573524, 47.436913>,  <48.841084, 44.592205, 47.075359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.011177, 44.573524, 47.436913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799505, 0.487474, -0.350941,
		-0.424229, 0.871888, 0.244626,
		0.425230, -0.046700, 0.903880,
		49.138744, 44.559513, 47.708076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.984314, 45.356079, 47.355362>,  <48.841084, 44.592205, 47.075359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.984314, 45.356079, 47.355362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.231796, 45.072395, 47.490555>,  <49.380283, 44.902187, 47.571671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.231796, 45.072395, 47.490555>,  <48.984314, 45.356079, 47.355362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.231796, 45.072395, 47.490555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784835, 0.538671, -0.306379,
		0.035223, 0.454820, 0.889886,
		0.618703, -0.709206, 0.337985,
		49.417408, 44.859634, 47.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.396538, 45.623413, 46.892620>,  <48.984314, 45.356079, 47.355362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.396538, 45.623413, 46.892620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.274910, 45.887238, 46.617657>,  <48.201935, 46.045532, 46.452679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.274910, 45.887238, 46.617657>,  <48.396538, 45.623413, 46.892620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.274910, 45.887238, 46.617657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814163, 0.194750, 0.547002,
		0.494652, 0.725985, 0.477770,
		-0.304069, 0.659559, -0.687404,
		48.183689, 46.085106, 46.411434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.277325, 46.289829, 47.271042>,  <48.396538, 45.623413, 46.892620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.277325, 46.289829, 47.271042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.064049, 46.289467, 46.932644>,  <47.936085, 46.289249, 46.729607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.064049, 46.289467, 46.932644>,  <48.277325, 46.289829, 47.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.064049, 46.289467, 46.932644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844200, 0.065696, 0.531986,
		0.055099, 0.997839, -0.035790,
		-0.533188, -0.000902, -0.845996,
		47.904091, 46.289196, 46.678844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799274, 46.737560, 47.416317>,  <48.277325, 46.289829, 47.271042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799274, 46.737560, 47.416317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652283, 46.554794, 47.092293>,  <47.564087, 46.445137, 46.897881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652283, 46.554794, 47.092293>,  <47.799274, 46.737560, 47.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652283, 46.554794, 47.092293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912950, 0.011044, 0.407922,
		-0.177438, 0.889444, -0.421196,
		-0.367475, -0.456911, -0.810058,
		47.542042, 46.417721, 46.849274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210022, 47.109123, 47.355671>,  <47.799274, 46.737560, 47.416317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210022, 47.109123, 47.355671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139801, 46.767677, 47.159500>,  <47.097668, 46.562809, 47.041798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139801, 46.767677, 47.159500>,  <47.210022, 47.109123, 47.355671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139801, 46.767677, 47.159500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910954, -0.048043, 0.409701,
		-0.373290, 0.518677, -0.769174,
		-0.175549, -0.853619, -0.490425,
		47.087135, 46.511593, 47.012371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549091, 47.078922, 47.273560>,  <47.210022, 47.109123, 47.355671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549091, 47.078922, 47.273560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634041, 46.694305, 47.203892>,  <46.685013, 46.463535, 47.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634041, 46.694305, 47.203892>,  <46.549091, 47.078922, 47.273560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634041, 46.694305, 47.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869184, -0.267326, 0.415999,
		-0.446559, 0.063034, -0.892531,
		0.212375, -0.961542, -0.174165,
		46.697754, 46.405842, 47.151642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868408, 46.770542, 47.132908>,  <46.549091, 47.078922, 47.273560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868408, 46.770542, 47.132908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117294, 46.470688, 47.223152>,  <46.266624, 46.290775, 47.277298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117294, 46.470688, 47.223152>,  <45.868408, 46.770542, 47.132908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117294, 46.470688, 47.223152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737565, -0.464757, 0.489897,
		-0.262389, -0.471223, -0.842081,
		0.622214, -0.749633, 0.225610,
		46.303959, 46.245796, 47.290836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549889, 46.149490, 46.864239>,  <45.868408, 46.770542, 47.132908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549889, 46.149490, 46.864239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781342, 46.072487, 47.181259>,  <45.920212, 46.026287, 47.371471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781342, 46.072487, 47.181259>,  <45.549889, 46.149490, 46.864239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781342, 46.072487, 47.181259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788887, -0.378729, 0.483965,
		0.206994, -0.905266, -0.371009,
		0.578628, -0.192506, 0.792547,
		45.954929, 46.014736, 47.419022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255924, 45.611275, 47.077686>,  <45.549889, 46.149490, 46.864239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255924, 45.611275, 47.077686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483994, 45.721169, 47.387375>,  <45.620834, 45.787106, 47.573189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483994, 45.721169, 47.387375>,  <45.255924, 45.611275, 47.077686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483994, 45.721169, 47.387375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730750, -0.260998, 0.630781,
		0.375370, -0.925418, 0.051951,
		0.570177, 0.274739, 0.774220,
		45.655048, 45.803589, 47.619640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216206, 45.018394, 47.522430>,  <45.255924, 45.611275, 47.077686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216206, 45.018394, 47.522430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320580, 45.332344, 47.747250>,  <45.383205, 45.520714, 47.882141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320580, 45.332344, 47.747250>,  <45.216206, 45.018394, 47.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320580, 45.332344, 47.747250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587569, -0.332823, 0.737558,
		0.765948, -0.522693, 0.374321,
		0.260934, 0.784870, 0.562043,
		45.398861, 45.567806, 47.915863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265194, 44.743401, 48.233845>,  <45.216206, 45.018394, 47.522430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265194, 44.743401, 48.233845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272213, 45.138573, 48.295403>,  <45.276424, 45.375675, 48.332336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272213, 45.138573, 48.295403>,  <45.265194, 44.743401, 48.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272213, 45.138573, 48.295403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510203, -0.123523, 0.851137,
		0.859875, -0.093449, 0.501879,
		0.017544, 0.987932, 0.153892,
		45.277477, 45.434952, 48.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490364, 44.890663, 48.925640>,  <45.265194, 44.743401, 48.233845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490364, 44.890663, 48.925640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307915, 45.239670, 48.855598>,  <45.198444, 45.449074, 48.813576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307915, 45.239670, 48.855598>,  <45.490364, 44.890663, 48.925640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307915, 45.239670, 48.855598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486264, -0.079571, 0.870182,
		0.745317, 0.482057, 0.460569,
		-0.456125, 0.872519, -0.175102,
		45.171078, 45.501427, 48.803066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628246, 45.151901, 49.499657>,  <45.490364, 44.890663, 48.925640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628246, 45.151901, 49.499657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324646, 45.347427, 49.327618>,  <45.142487, 45.464741, 49.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324646, 45.347427, 49.327618>,  <45.628246, 45.151901, 49.499657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324646, 45.347427, 49.327618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487733, 0.010742, 0.872927,
		0.431316, 0.872324, 0.230255,
		-0.759001, 0.488811, -0.430094,
		45.096947, 45.494072, 49.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646221, 45.850204, 49.848824>,  <45.628246, 45.151901, 49.499657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646221, 45.850204, 49.848824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288666, 45.796745, 49.677662>,  <45.074131, 45.764668, 49.574963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288666, 45.796745, 49.677662>,  <45.646221, 45.850204, 49.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288666, 45.796745, 49.677662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447877, 0.225178, 0.865275,
		-0.019289, 0.965108, -0.261142,
		-0.893887, -0.133650, -0.427906,
		45.020500, 45.756649, 49.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259510, 46.499596, 50.068825>,  <45.646221, 45.850204, 49.848824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259510, 46.499596, 50.068825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036064, 46.175919, 49.995987>,  <44.901997, 45.981712, 49.952286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036064, 46.175919, 49.995987>,  <45.259510, 46.499596, 50.068825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036064, 46.175919, 49.995987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428841, 0.093854, 0.898492,
		-0.709963, 0.579999, -0.399443,
		-0.558613, -0.809193, -0.182094,
		44.868481, 45.933159, 49.941360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588943, 46.668213, 50.238659>,  <45.259510, 46.499596, 50.068825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588943, 46.668213, 50.238659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568039, 46.268990, 50.225071>,  <44.555496, 46.029457, 50.216919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568039, 46.268990, 50.225071>,  <44.588943, 46.668213, 50.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568039, 46.268990, 50.225071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598497, 0.004074, 0.801115,
		-0.799419, 0.062194, -0.597546,
		-0.052259, -0.998056, -0.033966,
		44.552361, 45.969574, 50.214882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896862, 46.545708, 50.477764>,  <44.588943, 46.668213, 50.238659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896862, 46.545708, 50.477764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069801, 46.188065, 50.524483>,  <44.173565, 45.973476, 50.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069801, 46.188065, 50.524483>,  <43.896862, 46.545708, 50.477764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069801, 46.188065, 50.524483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480649, -0.118930, 0.868811,
		-0.762924, -0.431763, -0.481173,
		0.432346, -0.894112, 0.116793,
		44.199505, 45.919830, 50.559521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337784, 46.046974, 50.618866>,  <43.896862, 46.545708, 50.477764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337784, 46.046974, 50.618866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670441, 45.869858, 50.752914>,  <43.870033, 45.763588, 50.833344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670441, 45.869858, 50.752914>,  <43.337784, 46.046974, 50.618866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670441, 45.869858, 50.752914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433227, -0.139811, 0.890375,
		-0.347399, -0.885656, -0.308103,
		0.831642, -0.442794, 0.335120,
		43.919933, 45.737019, 50.853451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024185, 45.517841, 50.945614>,  <43.337784, 46.046974, 50.618866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024185, 45.517841, 50.945614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393116, 45.514381, 51.100140>,  <43.614475, 45.512306, 51.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393116, 45.514381, 51.100140>,  <43.024185, 45.517841, 50.945614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393116, 45.514381, 51.100140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368156, -0.323293, 0.871747,
		0.117352, -0.946259, -0.301366,
		0.922328, -0.008649, 0.386310,
		43.669815, 45.511787, 51.216034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015457, 44.912544, 51.246346>,  <43.024185, 45.517841, 50.945614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015457, 44.912544, 51.246346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302177, 45.136101, 51.413120>,  <43.474209, 45.270233, 51.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302177, 45.136101, 51.413120>,  <43.015457, 44.912544, 51.246346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302177, 45.136101, 51.413120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181549, -0.427733, 0.885485,
		0.673226, -0.710413, -0.205134,
		0.716803, 0.558890, 0.416936,
		43.517220, 45.303768, 51.538200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421989, 44.448380, 51.694290>,  <43.015457, 44.912544, 51.246346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421989, 44.448380, 51.694290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466820, 44.828522, 51.810398>,  <43.493717, 45.056606, 51.880062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466820, 44.828522, 51.810398>,  <43.421989, 44.448380, 51.694290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466820, 44.828522, 51.810398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298845, -0.246348, 0.921957,
		0.947697, -0.190077, 0.256399,
		0.112079, 0.950360, 0.290267,
		43.500443, 45.113628, 51.897480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762184, 44.328480, 52.181328>,  <43.421989, 44.448380, 51.694290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762184, 44.328480, 52.181328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601456, 44.690117, 52.239513>,  <43.505020, 44.907101, 52.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601456, 44.690117, 52.239513>,  <43.762184, 44.328480, 52.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601456, 44.690117, 52.239513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205491, -0.243827, 0.947798,
		0.892366, 0.350950, 0.283756,
		-0.401817, 0.904092, 0.145466,
		43.480911, 44.961346, 52.283154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003941, 44.496464, 52.844772>,  <43.762184, 44.328480, 52.181328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003941, 44.496464, 52.844772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681976, 44.728531, 52.794937>,  <43.488796, 44.867771, 52.765034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681976, 44.728531, 52.794937>,  <44.003941, 44.496464, 52.844772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681976, 44.728531, 52.794937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239948, -0.126191, 0.962549,
		0.542717, 0.804663, 0.240783,
		-0.804912, 0.580167, -0.124591,
		43.440502, 44.902580, 52.757561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954571, 44.944824, 53.446857>,  <44.003941, 44.496464, 52.844772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954571, 44.944824, 53.446857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586239, 44.943268, 53.290878>,  <43.365238, 44.942333, 53.197292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586239, 44.943268, 53.290878>,  <43.954571, 44.944824, 53.446857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586239, 44.943268, 53.290878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384835, -0.152638, 0.910277,
		-0.063061, 0.988274, 0.139057,
		-0.920829, -0.003889, -0.389948,
		43.309990, 44.942101, 53.173893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427544, 45.434013, 53.874325>,  <43.954571, 44.944824, 53.446857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427544, 45.434013, 53.874325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200867, 45.156822, 53.696045>,  <43.064861, 44.990509, 53.589077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200867, 45.156822, 53.696045>,  <43.427544, 45.434013, 53.874325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200867, 45.156822, 53.696045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551099, -0.083329, 0.830269,
		-0.612495, 0.716130, -0.334675,
		-0.566692, -0.692975, -0.445698,
		43.030861, 44.948929, 53.562336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753780, 45.570072, 54.155754>,  <43.427544, 45.434013, 53.874325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753780, 45.570072, 54.155754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695244, 45.221352, 53.968761>,  <42.660122, 45.012119, 53.856564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695244, 45.221352, 53.968761>,  <42.753780, 45.570072, 54.155754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695244, 45.221352, 53.968761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678426, -0.255484, 0.688816,
		-0.719947, 0.417954, -0.554067,
		-0.146338, -0.871804, -0.467486,
		42.651344, 44.959812, 53.828514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040024, 45.519642, 54.122326>,  <42.753780, 45.570072, 54.155754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040024, 45.519642, 54.122326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180393, 45.146706, 54.087482>,  <42.264614, 44.922943, 54.066578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180393, 45.146706, 54.087482>,  <42.040024, 45.519642, 54.122326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180393, 45.146706, 54.087482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660665, -0.312442, 0.682570,
		-0.663605, -0.181983, -0.725610,
		0.350927, -0.932342, -0.087108,
		42.285671, 44.867004, 54.061352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479340, 45.178543, 53.825493>,  <42.040024, 45.519642, 54.122326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479340, 45.178543, 53.825493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691353, 44.909904, 54.032574>,  <41.818562, 44.748722, 54.156822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691353, 44.909904, 54.032574>,  <41.479340, 45.178543, 53.825493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691353, 44.909904, 54.032574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839681, -0.330500, 0.430935,
		-0.118314, -0.663117, -0.739105,
		0.530035, -0.671599, 0.517704,
		41.850365, 44.708424, 54.187885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097939, 44.474754, 53.728550>,  <41.479340, 45.178543, 53.825493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097939, 44.474754, 53.728550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337547, 44.422485, 54.044548>,  <41.481312, 44.391125, 54.234146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337547, 44.422485, 54.044548>,  <41.097939, 44.474754, 53.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337547, 44.422485, 54.044548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748598, -0.441569, 0.494589,
		0.284208, -0.887660, -0.362333,
		0.599022, -0.130676, 0.789997,
		41.517254, 44.383282, 54.281548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858822, 43.843285, 53.949448>,  <41.097939, 44.474754, 53.728550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858822, 43.843285, 53.949448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074821, 43.966492, 54.262760>,  <41.204422, 44.040417, 54.450748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074821, 43.966492, 54.262760>,  <40.858822, 43.843285, 53.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074821, 43.966492, 54.262760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675740, -0.396159, 0.621638,
		0.501779, -0.864977, -0.005785,
		0.539995, 0.308016, 0.783283,
		41.236820, 44.058895, 54.497746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007465, 43.214951, 54.434223>,  <40.858822, 43.843285, 53.949448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007465, 43.214951, 54.434223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043320, 43.559967, 54.633415>,  <41.064835, 43.766979, 54.752930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043320, 43.559967, 54.633415>,  <41.007465, 43.214951, 54.434223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043320, 43.559967, 54.633415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499064, -0.393795, 0.771921,
		0.861917, -0.317717, 0.395165,
		0.089638, 0.862544, 0.497979,
		41.070210, 43.818729, 54.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051826, 43.065136, 55.095402>,  <41.007465, 43.214951, 54.434223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051826, 43.065136, 55.095402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951164, 43.451851, 55.113232>,  <40.890766, 43.683880, 55.123928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951164, 43.451851, 55.113232>,  <41.051826, 43.065136, 55.095402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951164, 43.451851, 55.113232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660315, -0.205188, 0.722414,
		0.707569, 0.152365, 0.690022,
		-0.251654, 0.966790, 0.044576,
		40.875668, 43.741886, 55.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062031, 43.185200, 55.923576>,  <41.051826, 43.065136, 55.095402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062031, 43.185200, 55.923576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855034, 43.416733, 55.671497>,  <40.730835, 43.555653, 55.520248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855034, 43.416733, 55.671497>,  <41.062031, 43.185200, 55.923576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855034, 43.416733, 55.671497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831107, -0.164742, 0.531151,
		0.203628, 0.798630, 0.566327,
		-0.517490, 0.578836, -0.630201,
		40.699787, 43.590382, 55.482437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835922, 43.749817, 56.406437>,  <41.062031, 43.185200, 55.923576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835922, 43.749817, 56.406437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595695, 43.739349, 56.086777>,  <40.451561, 43.733067, 55.894981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595695, 43.739349, 56.086777>,  <40.835922, 43.749817, 56.406437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595695, 43.739349, 56.086777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792840, -0.109957, 0.599429,
		-0.103560, 0.993592, 0.045287,
		-0.600567, -0.026172, -0.799146,
		40.415524, 43.731499, 55.847034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181583, 44.210846, 56.610744>,  <40.835922, 43.749817, 56.406437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181583, 44.210846, 56.610744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088524, 43.998886, 56.284534>,  <40.032688, 43.871712, 56.088806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088524, 43.998886, 56.284534>,  <40.181583, 44.210846, 56.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088524, 43.998886, 56.284534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929607, -0.125295, 0.346600,
		-0.285843, 0.838756, -0.463446,
		-0.232645, -0.529896, -0.815528,
		40.018730, 43.839916, 56.039875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505554, 44.185612, 56.552525>,  <40.181583, 44.210846, 56.610744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505554, 44.185612, 56.552525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584373, 43.862419, 56.330414>,  <39.631664, 43.668503, 56.197147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584373, 43.862419, 56.330414>,  <39.505554, 44.185612, 56.552525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584373, 43.862419, 56.330414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910048, -0.361420, 0.202952,
		-0.364671, 0.465343, -0.806518,
		0.197050, -0.807980, -0.555284,
		39.643490, 43.620026, 56.163830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895340, 44.230740, 55.965714>,  <39.505554, 44.185612, 56.552525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895340, 44.230740, 55.965714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078445, 43.887688, 56.059452>,  <39.188309, 43.681854, 56.115696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078445, 43.887688, 56.059452>,  <38.895340, 44.230740, 55.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078445, 43.887688, 56.059452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875967, -0.389981, 0.283896,
		-0.152089, -0.335235, -0.929778,
		0.457768, -0.857631, 0.234343,
		39.215775, 43.630398, 56.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292015, 43.720879, 55.962925>,  <38.895340, 44.230740, 55.965714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292015, 43.720879, 55.962925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587585, 43.543221, 56.165596>,  <38.764927, 43.436626, 56.287197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587585, 43.543221, 56.165596>,  <38.292015, 43.720879, 55.962925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587585, 43.543221, 56.165596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673295, -0.515363, 0.530165,
		0.025655, -0.732898, -0.679855,
		0.738929, -0.444141, 0.506678,
		38.809265, 43.409977, 56.317600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032867, 43.003822, 56.048134>,  <38.292015, 43.720879, 55.962925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032867, 43.003822, 56.048134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324356, 43.037292, 56.320007>,  <38.499249, 43.057373, 56.483131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324356, 43.037292, 56.320007>,  <38.032867, 43.003822, 56.048134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324356, 43.037292, 56.320007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599979, -0.400479, 0.692562,
		0.330147, -0.912478, -0.241635,
		0.728717, 0.083671, 0.679685,
		38.542973, 43.062393, 56.523914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932224, 42.231651, 56.359722>,  <38.032867, 43.003822, 56.048134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932224, 42.231651, 56.359722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602753, 42.129265, 56.157318>,  <37.405071, 42.067833, 56.035877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602753, 42.129265, 56.157318>,  <37.932224, 42.231651, 56.359722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602753, 42.129265, 56.157318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438873, 0.277326, -0.854681,
		0.359096, -0.926052, -0.116091,
		-0.823675, -0.255963, -0.506006,
		37.355652, 42.052475, 56.005516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184517, 41.913876, 55.813347>,  <37.932224, 42.231651, 56.359722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184517, 41.913876, 55.813347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819984, 42.018570, 55.686249>,  <37.601265, 42.081387, 55.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819984, 42.018570, 55.686249>,  <38.184517, 41.913876, 55.813347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819984, 42.018570, 55.686249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389239, 0.296544, -0.872098,
		-0.134037, -0.918452, -0.372130,
		-0.911333, 0.261741, -0.317749,
		37.546585, 42.097092, 55.590923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144638, 41.657547, 55.211285>,  <38.184517, 41.913876, 55.813347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144638, 41.657547, 55.211285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863991, 41.941872, 55.191387>,  <37.695602, 42.112469, 55.179447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863991, 41.941872, 55.191387>,  <38.144638, 41.657547, 55.211285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863991, 41.941872, 55.191387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356182, 0.289398, -0.888472,
		-0.617143, -0.641086, -0.456227,
		-0.701618, 0.710814, -0.049743,
		37.653503, 42.155117, 55.176464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842285, 41.642399, 54.528625>,  <38.144638, 41.657547, 55.211285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842285, 41.642399, 54.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731224, 42.005363, 54.654804>,  <37.664589, 42.223145, 54.730511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731224, 42.005363, 54.654804>,  <37.842285, 41.642399, 54.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731224, 42.005363, 54.654804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248550, 0.385028, -0.888806,
		-0.927971, -0.168376, -0.332443,
		-0.277654, 0.907415, 0.315445,
		37.647926, 42.277588, 54.749439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531376, 41.905907, 54.001350>,  <37.842285, 41.642399, 54.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531376, 41.905907, 54.001350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605934, 42.225807, 54.229614>,  <37.650669, 42.417747, 54.366573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605934, 42.225807, 54.229614>,  <37.531376, 41.905907, 54.001350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605934, 42.225807, 54.229614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393404, 0.471485, -0.789262,
		-0.900271, 0.371618, -0.226741,
		0.186399, 0.799751, 0.570661,
		37.661854, 42.465733, 54.400814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205853, 42.453400, 53.649967>,  <37.531376, 41.905907, 54.001350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205853, 42.453400, 53.649967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479717, 42.606171, 53.898281>,  <37.644035, 42.697834, 54.047268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479717, 42.606171, 53.898281>,  <37.205853, 42.453400, 53.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479717, 42.606171, 53.898281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428022, 0.478699, -0.766579,
		-0.589944, 0.790557, 0.164275,
		0.684662, 0.381926, 0.620782,
		37.685116, 42.720749, 54.084515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349541, 43.096096, 53.321205>,  <37.205853, 42.453400, 53.649967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349541, 43.096096, 53.321205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649796, 43.061691, 53.583241>,  <37.829948, 43.041050, 53.740463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649796, 43.061691, 53.583241>,  <37.349541, 43.096096, 53.321205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649796, 43.061691, 53.583241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571386, 0.582338, -0.578274,
		-0.331746, 0.808384, 0.486271,
		0.750642, -0.086008, 0.655087,
		37.874989, 43.035889, 53.779766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685364, 43.794174, 53.289223>,  <37.349541, 43.096096, 53.321205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685364, 43.794174, 53.289223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937202, 43.528992, 53.451256>,  <38.088306, 43.369881, 53.548477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937202, 43.528992, 53.451256>,  <37.685364, 43.794174, 53.289223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937202, 43.528992, 53.451256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763618, 0.431966, -0.479889,
		0.143166, 0.611465, 0.778212,
		0.629597, -0.662960, 0.405083,
		38.126080, 43.330105, 53.572781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191921, 44.245789, 53.482906>,  <37.685364, 43.794174, 53.289223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191921, 44.245789, 53.482906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326469, 43.873741, 53.423943>,  <38.407200, 43.650513, 53.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326469, 43.873741, 53.423943>,  <38.191921, 44.245789, 53.482906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326469, 43.873741, 53.423943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784543, 0.363357, -0.502458,
		0.520910, 0.053361, 0.851942,
		0.336371, -0.930120, -0.147412,
		38.427380, 43.594704, 53.379719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893105, 44.272980, 53.607864>,  <38.191921, 44.245789, 53.482906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893105, 44.272980, 53.607864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845413, 43.929878, 53.407852>,  <38.816799, 43.724018, 53.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845413, 43.929878, 53.407852>,  <38.893105, 44.272980, 53.607864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845413, 43.929878, 53.407852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678332, 0.297387, -0.671883,
		0.725017, -0.419300, 0.546387,
		-0.119232, -0.857758, -0.500035,
		38.809643, 43.672550, 53.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545834, 43.968884, 53.551880>,  <38.893105, 44.272980, 53.607864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545834, 43.968884, 53.551880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329178, 43.791428, 53.266273>,  <39.199184, 43.684956, 53.094910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329178, 43.791428, 53.266273>,  <39.545834, 43.968884, 53.551880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329178, 43.791428, 53.266273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727803, 0.177533, -0.662409,
		0.420628, -0.878448, 0.226720,
		-0.541641, -0.443635, -0.714012,
		39.166687, 43.658337, 53.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097317, 43.680710, 53.235672>,  <39.545834, 43.968884, 53.551880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097317, 43.680710, 53.235672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785061, 43.671951, 52.985832>,  <39.597710, 43.666695, 52.835930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785061, 43.671951, 52.985832>,  <40.097317, 43.680710, 53.235672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785061, 43.671951, 52.985832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617536, 0.126811, -0.776253,
		0.096199, -0.991685, -0.085475,
		-0.780638, -0.021891, -0.624600,
		39.550869, 43.665382, 52.798450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418793, 43.230904, 52.759171>,  <40.097317, 43.680710, 53.235672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418793, 43.230904, 52.759171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109505, 43.406166, 52.575802>,  <39.923931, 43.511322, 52.465782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109505, 43.406166, 52.575802>,  <40.418793, 43.230904, 52.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109505, 43.406166, 52.575802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567560, 0.155712, -0.808473,
		-0.282855, -0.885310, -0.369079,
		-0.773219, 0.438156, -0.458423,
		39.877541, 43.537613, 52.438274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341846, 42.923901, 52.066048>,  <40.418793, 43.230904, 52.759171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341846, 42.923901, 52.066048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154518, 43.276772, 52.046322>,  <40.042122, 43.488495, 52.034485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154518, 43.276772, 52.046322>,  <40.341846, 42.923901, 52.066048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154518, 43.276772, 52.046322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479403, 0.206819, -0.852877,
		-0.742193, -0.423061, -0.519778,
		-0.468319, 0.882182, -0.049317,
		40.014023, 43.541428, 52.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000137, 42.991734, 51.344509>,  <40.341846, 42.923901, 52.066048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000137, 42.991734, 51.344509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056328, 43.349754, 51.513809>,  <40.090042, 43.564568, 51.615391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056328, 43.349754, 51.513809>,  <40.000137, 42.991734, 51.344509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056328, 43.349754, 51.513809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489346, 0.308863, -0.815564,
		-0.860702, 0.321686, -0.394603,
		0.140477, 0.895054, 0.423255,
		40.098473, 43.618271, 51.640785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836552, 43.477383, 50.797474>,  <40.000137, 42.991734, 51.344509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836552, 43.477383, 50.797474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065937, 43.683243, 51.052429>,  <40.203568, 43.806759, 51.205402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065937, 43.683243, 51.052429>,  <39.836552, 43.477383, 50.797474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065937, 43.683243, 51.052429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490075, 0.407958, -0.770323,
		-0.656480, 0.754122, -0.018270,
		0.573464, 0.514655, 0.637393,
		40.237976, 43.837639, 51.243649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848091, 44.223660, 50.633331>,  <39.836552, 43.477383, 50.797474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848091, 44.223660, 50.633331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184189, 44.166840, 50.842640>,  <40.385849, 44.132748, 50.968224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184189, 44.166840, 50.842640>,  <39.848091, 44.223660, 50.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184189, 44.166840, 50.842640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534278, 0.381339, -0.754406,
		-0.092382, 0.913457, 0.396310,
		0.840246, -0.142046, 0.523269,
		40.436264, 44.124226, 50.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263718, 44.496510, 50.173138>,  <39.848091, 44.223660, 50.633331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263718, 44.496510, 50.173138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522362, 44.367203, 50.449512>,  <40.677547, 44.289619, 50.615337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522362, 44.367203, 50.449512>,  <40.263718, 44.496510, 50.173138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522362, 44.367203, 50.449512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752813, 0.416669, -0.509568,
		-0.123166, 0.849639, 0.512781,
		0.646608, -0.323267, 0.690939,
		40.716343, 44.270222, 50.656796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678997, 45.014244, 50.354267>,  <40.263718, 44.496510, 50.173138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678997, 45.014244, 50.354267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895218, 44.691048, 50.448029>,  <41.024952, 44.497128, 50.504288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895218, 44.691048, 50.448029>,  <40.678997, 45.014244, 50.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895218, 44.691048, 50.448029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800683, 0.408538, -0.438182,
		0.258284, 0.424546, 0.867784,
		0.540552, -0.807996, 0.234408,
		41.057384, 44.448650, 50.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301933, 45.294720, 50.563034>,  <40.678997, 45.014244, 50.354267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301933, 45.294720, 50.563034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391869, 44.915421, 50.473351>,  <41.445831, 44.687840, 50.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391869, 44.915421, 50.473351>,  <41.301933, 45.294720, 50.563034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391869, 44.915421, 50.473351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733160, 0.316202, -0.602074,
		0.641812, -0.029013, 0.766313,
		0.224842, -0.948248, -0.224213,
		41.459320, 44.630947, 50.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021999, 45.172031, 50.656425>,  <41.301933, 45.294720, 50.563034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021999, 45.172031, 50.656425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902187, 44.889473, 50.399899>,  <41.830299, 44.719936, 50.245983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902187, 44.889473, 50.399899>,  <42.021999, 45.172031, 50.656425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902187, 44.889473, 50.399899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729435, 0.263720, -0.631171,
		0.614984, -0.656854, 0.436276,
		-0.299533, -0.706395, -0.641316,
		41.812328, 44.677555, 50.207504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592827, 44.935020, 50.349258>,  <42.021999, 45.172031, 50.656425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592827, 44.935020, 50.349258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311584, 44.798721, 50.099609>,  <42.142838, 44.716942, 49.949818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311584, 44.798721, 50.099609>,  <42.592827, 44.935020, 50.349258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311584, 44.798721, 50.099609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645325, 0.062873, -0.761317,
		0.298656, -0.938051, 0.175685,
		-0.703108, -0.340745, -0.624125,
		42.100651, 44.696499, 49.912373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888611, 44.416462, 49.965706>,  <42.592827, 44.935020, 50.349258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888611, 44.416462, 49.965706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586433, 44.570732, 49.753838>,  <42.405125, 44.663292, 49.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586433, 44.570732, 49.753838>,  <42.888611, 44.416462, 49.965706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586433, 44.570732, 49.753838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592956, 0.058499, -0.803107,
		-0.278752, -0.920779, -0.272880,
		-0.755447, 0.385673, -0.529675,
		42.359798, 44.686436, 49.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091576, 44.316223, 49.241104>,  <42.888611, 44.416462, 49.965706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091576, 44.316223, 49.241104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772522, 44.554314, 49.202156>,  <42.581089, 44.697166, 49.178787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772522, 44.554314, 49.202156>,  <43.091576, 44.316223, 49.241104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772522, 44.554314, 49.202156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253822, 0.184820, -0.949429,
		-0.547128, -0.782016, -0.298500,
		-0.797638, 0.595225, -0.097373,
		42.533230, 44.732880, 49.172943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716637, 43.986229, 48.602455>,  <43.091576, 44.316223, 49.241104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716637, 43.986229, 48.602455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651337, 44.376122, 48.663452>,  <42.612156, 44.610058, 48.700050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651337, 44.376122, 48.663452>,  <42.716637, 43.986229, 48.602455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651337, 44.376122, 48.663452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215366, 0.186047, -0.958647,
		-0.962790, -0.123661, -0.240296,
		-0.163254, 0.974728, 0.152492,
		42.602360, 44.668541, 48.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190517, 44.245476, 48.069599>,  <42.716637, 43.986229, 48.602455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190517, 44.245476, 48.069599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401024, 44.553017, 48.214874>,  <42.527328, 44.737541, 48.302040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401024, 44.553017, 48.214874>,  <42.190517, 44.245476, 48.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401024, 44.553017, 48.214874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173199, 0.321246, -0.931022,
		-0.832492, 0.552873, 0.035898,
		0.526269, 0.768851, 0.363192,
		42.558907, 44.783672, 48.323833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957436, 44.854992, 47.620728>,  <42.190517, 44.245476, 48.069599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957436, 44.854992, 47.620728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296890, 44.943237, 47.813042>,  <42.500561, 44.996185, 47.928429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296890, 44.943237, 47.813042>,  <41.957436, 44.854992, 47.620728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296890, 44.943237, 47.813042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391202, 0.350050, -0.851133,
		-0.356069, 0.910382, 0.210759,
		0.848632, 0.220613, 0.480785,
		42.551479, 45.009422, 47.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136658, 45.646000, 47.564693>,  <41.957436, 44.854992, 47.620728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136658, 45.646000, 47.564693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463264, 45.430222, 47.646957>,  <42.659229, 45.300755, 47.696316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463264, 45.430222, 47.646957>,  <42.136658, 45.646000, 47.564693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463264, 45.430222, 47.646957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447021, 0.365335, -0.816519,
		0.365335, 0.758636, 0.539446,
		0.816519, -0.539446, 0.205657,
		42.708221, 45.268387, 47.708656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599842, 46.154869, 47.511055>,  <42.136658, 45.646000, 47.564693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599842, 46.154869, 47.511055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782799, 45.799385, 47.498459>,  <42.892574, 45.586094, 47.490902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782799, 45.799385, 47.498459>,  <42.599842, 46.154869, 47.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782799, 45.799385, 47.498459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559656, 0.315196, -0.766445,
		0.691071, 0.332941, 0.641538,
		0.457391, -0.888708, -0.031490,
		42.920017, 45.532772, 47.489014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393307, 46.229961, 47.507080>,  <42.599842, 46.154869, 47.511055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393307, 46.229961, 47.507080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316326, 45.875839, 47.337749>,  <43.270138, 45.663368, 47.236153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316326, 45.875839, 47.337749>,  <43.393307, 46.229961, 47.507080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316326, 45.875839, 47.337749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524668, 0.271720, -0.806779,
		0.829268, -0.377373, 0.412195,
		-0.192456, -0.885301, -0.423324,
		43.258591, 45.610249, 47.210751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022327, 45.886791, 47.264832>,  <43.393307, 46.229961, 47.507080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022327, 45.886791, 47.264832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723816, 45.729752, 47.049824>,  <43.544708, 45.635529, 46.920818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723816, 45.729752, 47.049824>,  <44.022327, 45.886791, 47.264832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723816, 45.729752, 47.049824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483393, 0.235497, -0.843132,
		0.457602, -0.889047, 0.014036,
		-0.746279, -0.392604, -0.537523,
		43.499931, 45.611969, 46.888565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299389, 45.883041, 46.669304>,  <44.022327, 45.886791, 47.264832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299389, 45.883041, 46.669304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924057, 45.781853, 46.575035>,  <43.698856, 45.721138, 46.518475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924057, 45.781853, 46.575035>,  <44.299389, 45.883041, 46.669304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924057, 45.781853, 46.575035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230265, 0.051211, -0.971780,
		0.257906, -0.966116, 0.010199,
		-0.938330, -0.252976, -0.235670,
		43.642559, 45.705959, 46.504333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332653, 45.219536, 46.200047>,  <44.299389, 45.883041, 46.669304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332653, 45.219536, 46.200047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016964, 45.458237, 46.142063>,  <43.827553, 45.601460, 46.107273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016964, 45.458237, 46.142063>,  <44.332653, 45.219536, 46.200047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016964, 45.458237, 46.142063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105795, -0.100403, -0.989306,
		-0.604928, -0.796117, 0.016107,
		-0.789220, 0.596756, -0.144962,
		43.780197, 45.637264, 46.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928535, 44.928982, 45.718979>,  <44.332653, 45.219536, 46.200047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928535, 44.928982, 45.718979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746384, 45.284660, 45.701302>,  <43.637093, 45.498070, 45.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746384, 45.284660, 45.701302>,  <43.928535, 44.928982, 45.718979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746384, 45.284660, 45.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128628, -0.114828, -0.985023,
		-0.880957, -0.442873, 0.166666,
		-0.455378, 0.889201, -0.044192,
		43.609772, 45.551422, 45.688046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411266, 44.780964, 45.208729>,  <43.928535, 44.928982, 45.718979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411266, 44.780964, 45.208729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453735, 45.177330, 45.241730>,  <43.479218, 45.415150, 45.261528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453735, 45.177330, 45.241730>,  <43.411266, 44.780964, 45.208729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453735, 45.177330, 45.241730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009212, 0.083946, -0.996428,
		-0.994305, 0.105032, 0.018041,
		0.106171, 0.990919, 0.082500,
		43.485588, 45.474606, 45.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912048, 45.033176, 44.766403>,  <43.411266, 44.780964, 45.208729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912048, 45.033176, 44.766403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162640, 45.337852, 44.832550>,  <43.312996, 45.520660, 44.872238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162640, 45.337852, 44.832550>,  <42.912048, 45.033176, 44.766403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162640, 45.337852, 44.832550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039002, 0.242527, -0.969360,
		-0.778461, 0.600836, 0.181646,
		0.626481, 0.761693, 0.165364,
		43.350582, 45.566360, 44.882160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571232, 45.634106, 44.294655>,  <42.912048, 45.033176, 44.766403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571232, 45.634106, 44.294655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957180, 45.701904, 44.374943>,  <43.188751, 45.742584, 44.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957180, 45.701904, 44.374943>,  <42.571232, 45.634106, 44.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957180, 45.701904, 44.374943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186315, 0.097159, -0.977674,
		-0.185216, 0.980730, 0.062166,
		0.964874, 0.169498, 0.200720,
		43.246643, 45.752754, 44.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771866, 46.058086, 43.749985>,  <42.571232, 45.634106, 44.294655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771866, 46.058086, 43.749985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123901, 45.942192, 43.900444>,  <43.335125, 45.872654, 43.990719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123901, 45.942192, 43.900444>,  <42.771866, 46.058086, 43.749985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123901, 45.942192, 43.900444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418551, 0.099401, -0.902737,
		0.224170, 0.951930, 0.208753,
		0.880093, -0.289740, 0.376148,
		43.387928, 45.855270, 44.013287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246109, 46.572460, 43.563969>,  <42.771866, 46.058086, 43.749985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246109, 46.572460, 43.563969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469982, 46.251823, 43.648071>,  <43.604305, 46.059441, 43.698532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469982, 46.251823, 43.648071>,  <43.246109, 46.572460, 43.563969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469982, 46.251823, 43.648071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550739, 0.170202, -0.817141,
		0.619225, 0.573138, 0.536725,
		0.559686, -0.801589, 0.210256,
		43.637886, 46.011345, 43.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975113, 46.783886, 43.569786>,  <43.246109, 46.572460, 43.563969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975113, 46.783886, 43.569786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974411, 46.390015, 43.500031>,  <43.973991, 46.153694, 43.458179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974411, 46.390015, 43.500031>,  <43.975113, 46.783886, 43.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974411, 46.390015, 43.500031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469459, 0.153165, -0.869568,
		0.882952, -0.083391, 0.461997,
		-0.001752, -0.984676, -0.174386,
		43.973885, 46.094612, 43.447716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.890930, 38.621586, 51.972473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.167572, 38.506508, 52.237473>,  <42.333557, 38.437462, 52.396473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.167572, 38.506508, 52.237473>,  <41.890930, 38.621586, 51.972473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167572, 38.506508, 52.237473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702097, 0.052511, -0.710142,
		0.169518, 0.956281, 0.238309,
		0.691609, -0.287698, 0.662500,
		42.375053, 38.420200, 52.436222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344368, 39.142193, 52.030262>,  <41.890930, 38.621586, 51.972473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344368, 39.142193, 52.030262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.532768, 38.815903, 52.164574>,  <42.645809, 38.620129, 52.245159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.532768, 38.815903, 52.164574>,  <42.344368, 39.142193, 52.030262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532768, 38.815903, 52.164574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751128, 0.171261, -0.637555,
		0.462567, 0.552498, 0.693381,
		0.470997, -0.815730, 0.335777,
		42.674068, 38.571182, 52.265308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966099, 39.299747, 52.157852>,  <42.344368, 39.142193, 52.030262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966099, 39.299747, 52.157852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.039967, 38.907677, 52.129158>,  <43.084286, 38.672432, 52.111942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.039967, 38.907677, 52.129158>,  <42.966099, 39.299747, 52.157852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039967, 38.907677, 52.129158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772696, 0.189902, -0.605704,
		0.607321, 0.056426, 0.792450,
		0.184665, -0.980180, -0.071731,
		43.095367, 38.613621, 52.107639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604855, 39.203987, 52.265018>,  <42.966099, 39.299747, 52.157852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604855, 39.203987, 52.265018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.532383, 38.877701, 52.045280>,  <43.488899, 38.681927, 51.913437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.532383, 38.877701, 52.045280>,  <43.604855, 39.203987, 52.265018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532383, 38.877701, 52.045280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717888, 0.272087, -0.640785,
		0.672170, -0.510462, 0.536299,
		-0.181176, -0.815719, -0.549343,
		43.478031, 38.632984, 51.880478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286888, 39.004642, 51.959461>,  <43.604855, 39.203987, 52.265018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286888, 39.004642, 51.959461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.027035, 38.796570, 51.737694>,  <43.871120, 38.671726, 51.604633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.027035, 38.796570, 51.737694>,  <44.286888, 39.004642, 51.959461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027035, 38.796570, 51.737694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574721, 0.141354, -0.806049,
		0.497662, -0.842276, 0.207131,
		-0.649637, -0.520183, -0.554420,
		43.832142, 38.640514, 51.571369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704895, 38.729614, 51.549767>,  <44.286888, 39.004642, 51.959461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704895, 38.729614, 51.549767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.364830, 38.696945, 51.341709>,  <44.160789, 38.677345, 51.216873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.364830, 38.696945, 51.341709>,  <44.704895, 38.729614, 51.549767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364830, 38.696945, 51.341709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480748, 0.282465, -0.830118,
		0.214717, -0.955795, -0.200880,
		-0.850164, -0.081668, -0.520146,
		44.109779, 38.672443, 51.185665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849884, 38.251038, 50.976048>,  <44.704895, 38.729614, 51.549767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849884, 38.251038, 50.976048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.530403, 38.475113, 50.888168>,  <44.338715, 38.609558, 50.835442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.530403, 38.475113, 50.888168>,  <44.849884, 38.251038, 50.976048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530403, 38.475113, 50.888168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423959, 0.264800, -0.866106,
		-0.427005, -0.784903, -0.448992,
		-0.798702, 0.560186, -0.219695,
		44.290791, 38.643169, 50.822258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748722, 38.098770, 50.263203>,  <44.849884, 38.251038, 50.976048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748722, 38.098770, 50.263203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.573483, 38.453438, 50.322376>,  <44.468338, 38.666237, 50.357880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.573483, 38.453438, 50.322376>,  <44.748722, 38.098770, 50.263203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573483, 38.453438, 50.322376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476457, 0.368591, -0.798204,
		-0.762271, -0.279209, -0.583940,
		-0.438101, 0.886670, 0.147935,
		44.442051, 38.719440, 50.366756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478294, 38.312794, 49.627445>,  <44.748722, 38.098770, 50.263203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478294, 38.312794, 49.627445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.464916, 38.659615, 49.826286>,  <44.456890, 38.867706, 49.945591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.464916, 38.659615, 49.826286>,  <44.478294, 38.312794, 49.627445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464916, 38.659615, 49.826286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402031, 0.467035, -0.787559,
		-0.915015, 0.173507, -0.364202,
		-0.033448, 0.867049, 0.497099,
		44.454884, 38.919727, 49.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144989, 38.734798, 49.154774>,  <44.478294, 38.312794, 49.627445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144989, 38.734798, 49.154774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.359863, 38.949738, 49.414829>,  <44.488789, 39.078701, 49.570862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.359863, 38.949738, 49.414829>,  <44.144989, 38.734798, 49.154774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359863, 38.949738, 49.414829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405257, 0.511571, -0.757669,
		-0.739729, 0.670483, 0.057042,
		0.537185, 0.537353, 0.650142,
		44.521019, 39.110943, 49.609871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901134, 39.407616, 49.092617>,  <44.144989, 38.734798, 49.154774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901134, 39.407616, 49.092617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.264732, 39.442474, 49.255657>,  <44.482891, 39.463390, 49.353481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.264732, 39.442474, 49.255657>,  <43.901134, 39.407616, 49.092617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264732, 39.442474, 49.255657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211233, 0.746711, -0.630717,
		-0.359323, 0.659416, 0.660347,
		0.908993, 0.087144, 0.407600,
		44.537430, 39.468616, 49.377937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969761, 40.031643, 49.199520>,  <43.901134, 39.407616, 49.092617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969761, 40.031643, 49.199520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340076, 39.883728, 49.168072>,  <44.562263, 39.794979, 49.149204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340076, 39.883728, 49.168072>,  <43.969761, 40.031643, 49.199520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340076, 39.883728, 49.168072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192794, 0.640693, -0.743198,
		0.325195, 0.672884, 0.664436,
		0.925786, -0.369783, -0.078622,
		44.617813, 39.772793, 49.144485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442146, 40.618122, 49.002743>,  <43.969761, 40.031643, 49.199520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442146, 40.618122, 49.002743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.679993, 40.303055, 48.938236>,  <44.822701, 40.114014, 48.899532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.679993, 40.303055, 48.938236>,  <44.442146, 40.618122, 49.002743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679993, 40.303055, 48.938236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274502, 0.387410, -0.880092,
		0.755701, 0.479046, 0.446577,
		0.594613, -0.787673, -0.161268,
		44.858376, 40.066753, 48.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048321, 40.835770, 48.774185>,  <44.442146, 40.618122, 49.002743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048321, 40.835770, 48.774185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.110016, 40.451012, 48.683884>,  <45.147034, 40.220158, 48.629704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.110016, 40.451012, 48.683884>,  <45.048321, 40.835770, 48.774185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110016, 40.451012, 48.683884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586268, 0.273011, -0.762728,
		0.795300, -0.014711, 0.606038,
		0.154234, -0.961898, -0.225750,
		45.156284, 40.162441, 48.616158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777912, 40.757759, 48.746807>,  <45.048321, 40.835770, 48.774185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777912, 40.757759, 48.746807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.599060, 40.480576, 48.520573>,  <45.491749, 40.314266, 48.384830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.599060, 40.480576, 48.520573>,  <45.777912, 40.757759, 48.746807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599060, 40.480576, 48.520573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468370, 0.357317, -0.808056,
		0.762041, -0.626208, 0.164794,
		-0.447127, -0.692957, -0.565588,
		45.464924, 40.272690, 48.350895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295654, 40.616096, 48.338272>,  <45.777912, 40.757759, 48.746807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295654, 40.616096, 48.338272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.986954, 40.470161, 48.129929>,  <45.801735, 40.382599, 48.004925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.986954, 40.470161, 48.129929>,  <46.295654, 40.616096, 48.338272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986954, 40.470161, 48.129929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461527, 0.242124, -0.853445,
		0.437485, -0.899036, -0.018475,
		-0.771751, -0.364843, -0.520855,
		45.755428, 40.360710, 47.973671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629478, 40.241089, 47.793110>,  <46.295654, 40.616096, 48.338272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629478, 40.241089, 47.793110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.264938, 40.361252, 47.680546>,  <46.046215, 40.433350, 47.613007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.264938, 40.361252, 47.680546>,  <46.629478, 40.241089, 47.793110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264938, 40.361252, 47.680546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366891, 0.282866, -0.886216,
		-0.186621, -0.910903, -0.368006,
		-0.911352, 0.300404, -0.281413,
		45.991531, 40.451374, 47.596123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612175, 40.017426, 47.085896>,  <46.629478, 40.241089, 47.793110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612175, 40.017426, 47.085896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.300049, 40.265358, 47.119175>,  <46.112774, 40.414116, 47.139141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.300049, 40.265358, 47.119175>,  <46.612175, 40.017426, 47.085896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300049, 40.265358, 47.119175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103264, 0.258903, -0.960368,
		-0.616803, -0.740798, -0.266031,
		-0.780314, 0.619829, 0.083195,
		46.065956, 40.451305, 47.144135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239040, 39.998882, 46.477436>,  <46.612175, 40.017426, 47.085896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239040, 39.998882, 46.477436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.101082, 40.337608, 46.639400>,  <46.018307, 40.540844, 46.736580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.101082, 40.337608, 46.639400>,  <46.239040, 39.998882, 46.477436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101082, 40.337608, 46.639400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068214, 0.407624, -0.910599,
		-0.936159, -0.341683, -0.082824,
		-0.344897, 0.846815, 0.404908,
		45.997612, 40.591652, 46.760872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566471, 40.290745, 46.086231>,  <46.239040, 39.998882, 46.477436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566471, 40.290745, 46.086231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.769012, 40.592094, 46.254055>,  <45.890537, 40.772903, 46.354748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.769012, 40.592094, 46.254055>,  <45.566471, 40.290745, 46.086231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769012, 40.592094, 46.254055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071876, 0.447979, -0.891150,
		-0.859325, 0.481394, 0.172686,
		0.506354, 0.753375, 0.419560,
		45.920918, 40.818108, 46.379925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299088, 40.946663, 45.745304>,  <45.566471, 40.290745, 46.086231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299088, 40.946663, 45.745304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.655426, 41.035423, 45.903873>,  <45.869228, 41.088680, 45.999016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.655426, 41.035423, 45.903873>,  <45.299088, 40.946663, 45.745304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655426, 41.035423, 45.903873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314455, 0.328594, -0.890586,
		-0.327881, 0.918034, 0.222950,
		0.890849, 0.221899, 0.396420,
		45.922680, 41.101994, 46.022800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451794, 41.588699, 45.492680>,  <45.299088, 40.946663, 45.745304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451794, 41.588699, 45.492680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.807533, 41.454269, 45.616684>,  <46.020977, 41.373611, 45.691086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.807533, 41.454269, 45.616684>,  <45.451794, 41.588699, 45.492680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807533, 41.454269, 45.616684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433106, 0.401923, -0.806770,
		0.146538, 0.851768, 0.503009,
		0.889351, -0.336078, 0.310009,
		46.074337, 41.353447, 45.709686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535919, 42.117081, 45.014938>,  <45.451794, 41.588699, 45.492680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535919, 42.117081, 45.014938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321632, 42.442429, 44.924221>,  <45.193062, 42.637638, 44.869789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321632, 42.442429, 44.924221>,  <45.535919, 42.117081, 45.014938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321632, 42.442429, 44.924221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531280, -0.115917, 0.839229,
		0.656314, 0.570081, 0.494226,
		-0.535717, 0.813370, -0.226795,
		45.160915, 42.686440, 44.856182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629223, 42.598545, 45.555943>,  <45.535919, 42.117081, 45.014938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629223, 42.598545, 45.555943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.278282, 42.642036, 45.368996>,  <45.067719, 42.668133, 45.256828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.278282, 42.642036, 45.368996>,  <45.629223, 42.598545, 45.555943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278282, 42.642036, 45.368996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478576, -0.127272, 0.868773,
		0.034979, 0.985890, 0.163698,
		-0.877349, 0.108730, -0.467372,
		45.015076, 42.674656, 45.228783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216854, 43.219475, 45.799370>,  <45.629223, 42.598545, 45.555943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216854, 43.219475, 45.799370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.951378, 42.970650, 45.633209>,  <44.792091, 42.821354, 45.533512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.951378, 42.970650, 45.633209>,  <45.216854, 43.219475, 45.799370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951378, 42.970650, 45.633209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414271, -0.156709, 0.896562,
		-0.622817, 0.767122, -0.153698,
		-0.663686, -0.622066, -0.415397,
		44.752274, 42.784031, 45.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605804, 43.369343, 46.085670>,  <45.216854, 43.219475, 45.799370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605804, 43.369343, 46.085670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.496284, 43.017990, 45.928970>,  <44.430573, 42.807178, 45.834949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.496284, 43.017990, 45.928970>,  <44.605804, 43.369343, 46.085670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496284, 43.017990, 45.928970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490182, -0.223004, 0.842610,
		-0.827499, 0.422739, -0.369509,
		-0.273802, -0.878385, -0.391754,
		44.414143, 42.754475, 45.811443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938351, 43.363010, 46.154232>,  <44.605804, 43.369343, 46.085670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938351, 43.363010, 46.154232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.036903, 42.977234, 46.115978>,  <44.096035, 42.745770, 46.093025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.036903, 42.977234, 46.115978>,  <43.938351, 43.363010, 46.154232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036903, 42.977234, 46.115978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617755, -0.232311, 0.751272,
		-0.746775, -0.126026, -0.653027,
		0.246385, -0.964442, -0.095630,
		44.110821, 42.687901, 46.087288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325058, 42.940163, 46.319336>,  <43.938351, 43.363010, 46.154232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325058, 42.940163, 46.319336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615639, 42.667702, 46.355759>,  <43.789989, 42.504227, 46.377613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615639, 42.667702, 46.355759>,  <43.325058, 42.940163, 46.319336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615639, 42.667702, 46.355759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523806, -0.463064, 0.714982,
		-0.444833, -0.567112, -0.693186,
		0.726465, -0.681143, 0.091070,
		43.833576, 42.463356, 46.383076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029667, 42.336025, 46.368580>,  <43.325058, 42.940163, 46.319336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029667, 42.336025, 46.368580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386559, 42.292923, 46.543999>,  <43.600693, 42.267059, 46.649250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386559, 42.292923, 46.543999>,  <43.029667, 42.336025, 46.368580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386559, 42.292923, 46.543999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401290, -0.634592, 0.660499,
		0.207123, -0.765298, -0.609442,
		0.892226, -0.107758, 0.438545,
		43.654224, 42.260597, 46.675564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008965, 41.616463, 46.562607>,  <43.029667, 42.336025, 46.368580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008965, 41.616463, 46.562607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.300476, 41.776344, 46.785000>,  <43.475384, 41.872272, 46.918438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.300476, 41.776344, 46.785000>,  <43.008965, 41.616463, 46.562607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300476, 41.776344, 46.785000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359868, -0.467211, 0.807594,
		0.582560, -0.788639, -0.196653,
		0.728779, 0.399703, 0.555985,
		43.519112, 41.896255, 46.951794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036732, 41.104820, 47.129559>,  <43.008965, 41.616463, 46.562607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036732, 41.104820, 47.129559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.259163, 41.421211, 47.231647>,  <43.392620, 41.611046, 47.292900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.259163, 41.421211, 47.231647>,  <43.036732, 41.104820, 47.129559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259163, 41.421211, 47.231647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132119, -0.219049, 0.966727,
		0.820564, -0.571293, -0.017304,
		0.556075, 0.790975, 0.255222,
		43.425987, 41.658504, 47.308216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553143, 40.824986, 47.596184>,  <43.036732, 41.104820, 47.129559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553143, 40.824986, 47.596184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.488594, 41.213974, 47.663422>,  <43.449863, 41.447369, 47.703766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.488594, 41.213974, 47.663422>,  <43.553143, 40.824986, 47.596184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488594, 41.213974, 47.663422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150624, -0.192603, 0.969648,
		0.975332, 0.131152, 0.177558,
		-0.161370, 0.972473, 0.168098,
		43.440182, 41.505714, 47.713852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918411, 40.938549, 48.207020>,  <43.553143, 40.824986, 47.596184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918411, 40.938549, 48.207020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.635780, 41.219025, 48.168896>,  <43.466202, 41.387310, 48.146023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.635780, 41.219025, 48.168896>,  <43.918411, 40.938549, 48.207020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635780, 41.219025, 48.168896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248598, -0.119858, 0.961162,
		0.662534, 0.702828, 0.259003,
		-0.706575, 0.701190, -0.095311,
		43.423809, 41.429382, 48.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811874, 41.134144, 48.866474>,  <43.918411, 40.938549, 48.207020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811874, 41.134144, 48.866474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496895, 41.293510, 48.678352>,  <43.307907, 41.389130, 48.565479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496895, 41.293510, 48.678352>,  <43.811874, 41.134144, 48.866474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496895, 41.293510, 48.678352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554593, -0.125017, 0.822677,
		0.268971, 0.908645, 0.319403,
		-0.787452, 0.398415, -0.470302,
		43.260658, 41.413036, 48.537262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718090, 41.721081, 49.246227>,  <43.811874, 41.134144, 48.866474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718090, 41.721081, 49.246227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.377777, 41.661537, 49.044632>,  <43.173588, 41.625813, 48.923676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.377777, 41.661537, 49.044632>,  <43.718090, 41.721081, 49.246227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377777, 41.661537, 49.044632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508964, -0.005379, 0.860771,
		-0.130845, 0.988844, -0.071187,
		-0.850785, -0.148859, -0.503989,
		43.122543, 41.616879, 48.893436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217133, 42.151497, 49.459812>,  <43.718090, 41.721081, 49.246227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217133, 42.151497, 49.459812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.998077, 41.855331, 49.303925>,  <42.866646, 41.677631, 49.210392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.998077, 41.855331, 49.303925>,  <43.217133, 42.151497, 49.459812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998077, 41.855331, 49.303925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502159, -0.081726, 0.860904,
		-0.669279, 0.667161, -0.327051,
		-0.547633, -0.740417, -0.389719,
		42.833786, 41.633205, 49.187008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455605, 42.315598, 49.495705>,  <43.217133, 42.151497, 49.459812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455605, 42.315598, 49.495705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487877, 41.917976, 49.466423>,  <42.507240, 41.679405, 49.448856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487877, 41.917976, 49.466423>,  <42.455605, 42.315598, 49.495705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487877, 41.917976, 49.466423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722724, -0.108918, 0.682500,
		-0.686411, -0.002160, -0.727210,
		0.080681, -0.994048, -0.073201,
		42.512081, 41.619762, 49.444462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755817, 42.105270, 49.624969>,  <42.455605, 42.315598, 49.495705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755817, 42.105270, 49.624969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.956963, 41.760361, 49.649025>,  <42.077652, 41.553417, 49.663460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.956963, 41.760361, 49.649025>,  <41.755817, 42.105270, 49.624969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956963, 41.760361, 49.649025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619451, -0.310984, 0.720812,
		-0.602833, -0.399724, -0.690517,
		0.502865, -0.862270, 0.060138,
		42.107822, 41.501678, 49.667065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301151, 41.529099, 49.418930>,  <41.755817, 42.105270, 49.624969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301151, 41.529099, 49.418930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.592270, 41.386322, 49.653160>,  <41.766941, 41.300655, 49.793697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.592270, 41.386322, 49.653160>,  <41.301151, 41.529099, 49.418930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592270, 41.386322, 49.653160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684254, -0.435089, 0.585230,
		0.045882, -0.826612, -0.560899,
		0.727799, -0.356945, 0.585575,
		41.810608, 41.279240, 49.828831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033089, 40.886299, 49.611973>,  <41.301151, 41.529099, 49.418930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033089, 40.886299, 49.611973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.344200, 40.934265, 49.858768>,  <41.530869, 40.963043, 50.006847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.344200, 40.934265, 49.858768>,  <41.033089, 40.886299, 49.611973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344200, 40.934265, 49.858768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472025, -0.536740, 0.699359,
		0.415026, -0.835183, -0.360865,
		0.777783, 0.119915, 0.616988,
		41.577534, 40.970238, 50.043865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.198063, 40.160233, 49.876129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348309, 40.419678, 50.140919>,  <41.438457, 40.575344, 50.299793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348309, 40.419678, 50.140919>,  <41.198063, 40.160233, 49.876129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348309, 40.419678, 50.140919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458344, -0.490801, 0.740969,
		0.805501, -0.581733, 0.112936,
		0.375617, 0.648615, 0.661974,
		41.460995, 40.614262, 50.339512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514862, 39.774406, 50.417931>,  <41.198063, 40.160233, 49.876129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514862, 39.774406, 50.417931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421867, 40.120857, 50.594917>,  <41.366070, 40.328728, 50.701111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421867, 40.120857, 50.594917>,  <41.514862, 39.774406, 50.417931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421867, 40.120857, 50.594917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412637, -0.499801, 0.761531,
		0.880727, -0.005532, 0.473592,
		-0.232489, 0.866122, 0.442471,
		41.352119, 40.380695, 50.727657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733398, 39.785423, 51.153294>,  <41.514862, 39.774406, 50.417931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733398, 39.785423, 51.153294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.465462, 40.081421, 51.128899>,  <41.304699, 40.259018, 51.114262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.465462, 40.081421, 51.128899>,  <41.733398, 39.785423, 51.153294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465462, 40.081421, 51.128899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370287, -0.261728, 0.891283,
		0.643580, 0.619605, 0.449327,
		-0.669845, 0.739992, -0.060989,
		41.264507, 40.303417, 51.110603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822395, 40.155178, 51.846615>,  <41.733398, 39.785423, 51.153294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822395, 40.155178, 51.846615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464340, 40.259621, 51.702087>,  <41.249508, 40.322289, 51.615372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464340, 40.259621, 51.702087>,  <41.822395, 40.155178, 51.846615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464340, 40.259621, 51.702087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419961, -0.222044, 0.879960,
		0.149538, 0.939424, 0.308416,
		-0.895137, 0.261110, -0.361318,
		41.195801, 40.337955, 51.593693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451359, 40.640503, 52.329197>,  <41.822395, 40.155178, 51.846615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451359, 40.640503, 52.329197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179497, 40.444092, 52.111221>,  <41.016380, 40.326244, 51.980434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179497, 40.444092, 52.111221>,  <41.451359, 40.640503, 52.329197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179497, 40.444092, 52.111221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535525, -0.175529, 0.826077,
		-0.501279, 0.853277, -0.143658,
		-0.679656, -0.491027, -0.544940,
		40.975601, 40.296783, 51.947739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944859, 40.870560, 52.670166>,  <41.451359, 40.640503, 52.329197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944859, 40.870560, 52.670166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774094, 40.594284, 52.436691>,  <40.671635, 40.428520, 52.296604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774094, 40.594284, 52.436691>,  <40.944859, 40.870560, 52.670166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774094, 40.594284, 52.436691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666401, -0.196019, 0.719365,
		-0.611271, 0.696080, -0.376592,
		-0.426916, -0.690688, -0.583689,
		40.646019, 40.387077, 52.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285038, 40.976368, 52.836330>,  <40.944859, 40.870560, 52.670166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285038, 40.976368, 52.836330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299122, 40.609764, 52.676949>,  <40.307571, 40.389801, 52.581322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299122, 40.609764, 52.676949>,  <40.285038, 40.976368, 52.836330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299122, 40.609764, 52.676949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629276, -0.330065, 0.703612,
		-0.776384, 0.225964, -0.588360,
		0.035206, -0.916514, -0.398451,
		40.309685, 40.334808, 52.557415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557915, 40.745007, 52.687370>,  <40.285038, 40.976368, 52.836330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557915, 40.745007, 52.687370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789497, 40.422035, 52.732758>,  <39.928448, 40.228252, 52.759991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789497, 40.422035, 52.732758>,  <39.557915, 40.745007, 52.687370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789497, 40.422035, 52.732758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668108, -0.390009, 0.633659,
		-0.467377, -0.442672, -0.765245,
		0.578956, -0.807424, 0.113472,
		39.963184, 40.179810, 52.766800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106720, 40.252228, 52.590305>,  <39.557915, 40.745007, 52.687370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106720, 40.252228, 52.590305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409466, 40.100716, 52.803352>,  <39.591114, 40.009808, 52.931179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409466, 40.100716, 52.803352>,  <39.106720, 40.252228, 52.590305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409466, 40.100716, 52.803352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645979, -0.309705, 0.697706,
		-0.099323, -0.872128, -0.479090,
		0.756866, -0.378781, 0.532616,
		39.636524, 39.987080, 52.963139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804192, 39.677673, 52.802414>,  <39.106720, 40.252228, 52.590305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804192, 39.677673, 52.802414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098064, 39.782166, 53.052856>,  <39.274387, 39.844860, 53.203121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098064, 39.782166, 53.052856>,  <38.804192, 39.677673, 52.802414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098064, 39.782166, 53.052856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619538, -0.117714, 0.776090,
		0.276440, -0.958072, 0.075360,
		0.734679, 0.261230, 0.626103,
		39.318470, 39.860535, 53.240688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913906, 39.063286, 53.269855>,  <38.804192, 39.677673, 52.802414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913906, 39.063286, 53.269855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059509, 39.390823, 53.447388>,  <39.146870, 39.587345, 53.553905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059509, 39.390823, 53.447388>,  <38.913906, 39.063286, 53.269855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059509, 39.390823, 53.447388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634615, -0.130742, 0.761689,
		0.681735, -0.558923, 0.472062,
		0.364007, 0.818848, 0.443832,
		39.168713, 39.636478, 53.580536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032978, 38.793922, 54.062401>,  <38.913906, 39.063286, 53.269855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032978, 38.793922, 54.062401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009346, 39.192673, 54.041458>,  <38.995167, 39.431923, 54.028893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009346, 39.192673, 54.041458>,  <39.032978, 38.793922, 54.062401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009346, 39.192673, 54.041458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471058, 0.018406, 0.881910,
		0.880122, 0.076767, 0.468500,
		-0.059079, 0.996879, -0.052361,
		38.991623, 39.491737, 54.025749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271278, 39.064114, 54.625870>,  <39.032978, 38.793922, 54.062401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271278, 39.064114, 54.625870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048653, 39.371407, 54.499340>,  <38.915077, 39.555782, 54.423420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048653, 39.371407, 54.499340>,  <39.271278, 39.064114, 54.625870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048653, 39.371407, 54.499340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437439, 0.052726, 0.897701,
		0.706318, 0.638002, 0.306707,
		-0.556563, 0.768228, -0.316328,
		38.881683, 39.601875, 54.404442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202106, 39.542828, 55.204418>,  <39.271278, 39.064114, 54.625870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202106, 39.542828, 55.204418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897949, 39.618912, 54.956028>,  <38.715454, 39.664562, 54.806992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897949, 39.618912, 54.956028>,  <39.202106, 39.542828, 55.204418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897949, 39.618912, 54.956028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626456, 0.037396, 0.778559,
		0.171315, 0.981030, 0.090725,
		-0.760397, 0.190214, -0.620979,
		38.669830, 39.675976, 54.769733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936382, 40.134674, 55.523945>,  <39.202106, 39.542828, 55.204418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936382, 40.134674, 55.523945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655106, 40.009041, 55.268799>,  <38.486340, 39.933659, 55.115711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655106, 40.009041, 55.268799>,  <38.936382, 40.134674, 55.523945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655106, 40.009041, 55.268799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669137, -0.010950, 0.743058,
		-0.240369, 0.949331, -0.202466,
		-0.703192, -0.314086, -0.637865,
		38.444149, 39.914814, 55.077438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274944, 40.560650, 55.451965>,  <38.936382, 40.134674, 55.523945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274944, 40.560650, 55.451965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146263, 40.203766, 55.325180>,  <38.069054, 39.989635, 55.249107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146263, 40.203766, 55.325180>,  <38.274944, 40.560650, 55.451965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146263, 40.203766, 55.325180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821516, 0.096579, 0.561946,
		-0.470763, 0.441170, -0.764036,
		-0.321703, -0.892212, -0.316962,
		38.049751, 39.936104, 55.230091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429848, 40.641899, 55.350857>,  <38.274944, 40.560650, 55.451965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429848, 40.641899, 55.350857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539093, 40.257362, 55.364841>,  <37.604641, 40.026638, 55.373230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539093, 40.257362, 55.364841>,  <37.429848, 40.641899, 55.350857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539093, 40.257362, 55.364841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782075, -0.200732, 0.589971,
		-0.560149, -0.188470, -0.806667,
		0.273115, -0.961346, 0.034958,
		37.621029, 39.968960, 55.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761589, 40.235077, 55.210026>,  <37.429848, 40.641899, 55.350857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761589, 40.235077, 55.210026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017685, 39.991158, 55.396893>,  <37.171341, 39.844807, 55.509014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017685, 39.991158, 55.396893>,  <36.761589, 40.235077, 55.210026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017685, 39.991158, 55.396893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658189, -0.121891, 0.742920,
		-0.396089, -0.783126, -0.479402,
		0.640235, -0.609800, 0.467165,
		37.209755, 39.808216, 55.537041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353626, 39.662697, 55.374138>,  <36.761589, 40.235077, 55.210026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353626, 39.662697, 55.374138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664703, 39.632782, 55.623810>,  <36.851349, 39.614834, 55.773613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664703, 39.632782, 55.623810>,  <36.353626, 39.662697, 55.374138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664703, 39.632782, 55.623810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625376, -0.193197, 0.756029,
		0.064052, -0.978306, -0.197016,
		0.777691, -0.074784, 0.624183,
		36.898010, 39.610348, 55.811066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259495, 39.019764, 55.759163>,  <36.353626, 39.662697, 55.374138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259495, 39.019764, 55.759163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503773, 39.242775, 55.984097>,  <36.650337, 39.376583, 56.119057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503773, 39.242775, 55.984097>,  <36.259495, 39.019764, 55.759163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503773, 39.242775, 55.984097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599968, -0.137696, 0.788085,
		0.516811, -0.818658, 0.250410,
		0.610692, 0.557529, 0.562331,
		36.686981, 39.410034, 56.152798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124176, 38.771469, 56.465378>,  <36.259495, 39.019764, 55.759163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124176, 38.771469, 56.465378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318275, 39.113182, 56.539936>,  <36.434734, 39.318211, 56.584671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318275, 39.113182, 56.539936>,  <36.124176, 38.771469, 56.465378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318275, 39.113182, 56.539936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407550, 0.032379, 0.912608,
		0.773587, -0.518806, 0.363874,
		0.485249, 0.854279, 0.186391,
		36.463852, 39.369465, 56.595852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268867, 38.683002, 57.093109>,  <36.124176, 38.771469, 56.465378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268867, 38.683002, 57.093109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311043, 39.075729, 57.029968>,  <36.336349, 39.311367, 56.992085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311043, 39.075729, 57.029968>,  <36.268867, 38.683002, 57.093109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311043, 39.075729, 57.029968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540853, 0.189825, 0.819417,
		0.834482, -0.001025, 0.551034,
		0.105440, 0.981817, -0.157851,
		36.342674, 39.370274, 56.982613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816948, 39.029411, 57.612015>,  <36.268867, 38.683002, 57.093109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816948, 39.029411, 57.612015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511086, 39.241570, 57.465595>,  <36.327568, 39.368866, 57.377743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511086, 39.241570, 57.465595>,  <36.816948, 39.029411, 57.612015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511086, 39.241570, 57.465595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389961, 0.071396, 0.918059,
		0.513068, 0.844739, 0.152240,
		-0.764652, 0.530394, -0.366047,
		36.281689, 39.400688, 57.355782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625309, 39.735184, 57.931805>,  <36.816948, 39.029411, 57.612015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625309, 39.735184, 57.931805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300415, 39.544136, 57.797848>,  <36.105476, 39.429508, 57.717472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300415, 39.544136, 57.797848>,  <36.625309, 39.735184, 57.931805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300415, 39.544136, 57.797848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436226, 0.116187, 0.892304,
		-0.387270, 0.870852, -0.302720,
		-0.812237, -0.477617, -0.334893,
		36.056744, 39.400852, 57.697380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339413, 39.515873, 57.893105>,  <36.625309, 39.735184, 57.931805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339413, 39.515873, 57.893105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501320, 39.374039, 58.230251>,  <37.598465, 39.288937, 58.432541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501320, 39.374039, 58.230251>,  <37.339413, 39.515873, 57.893105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501320, 39.374039, 58.230251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852948, -0.185842, -0.487793,
		0.329606, 0.916368, 0.227222,
		0.404771, -0.354588, 0.842869,
		37.622749, 39.267662, 58.483112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033672, 39.772720, 57.965057>,  <37.339413, 39.515873, 57.893105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033672, 39.772720, 57.965057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990414, 39.437874, 58.179550>,  <37.964458, 39.236965, 58.308247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990414, 39.437874, 58.179550>,  <38.033672, 39.772720, 57.965057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990414, 39.437874, 58.179550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710934, -0.442156, -0.546874,
		0.694893, 0.322078, 0.642954,
		-0.108150, -0.837116, 0.536227,
		37.957970, 39.186737, 58.340420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729343, 39.636345, 58.166180>,  <38.033672, 39.772720, 57.965057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729343, 39.636345, 58.166180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549034, 39.283340, 58.219818>,  <38.440849, 39.071537, 58.252003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549034, 39.283340, 58.219818>,  <38.729343, 39.636345, 58.166180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549034, 39.283340, 58.219818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803508, -0.466598, -0.369678,
		0.388814, -0.058891, 0.919432,
		-0.450776, -0.882507, 0.134100,
		38.413803, 39.018589, 58.260048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280590, 39.289185, 58.350437>,  <38.729343, 39.636345, 58.166180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280590, 39.289185, 58.350437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998131, 39.032127, 58.231529>,  <38.828655, 38.877895, 58.160187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998131, 39.032127, 58.231529>,  <39.280590, 39.289185, 58.350437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998131, 39.032127, 58.231529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678683, -0.494625, -0.542896,
		0.201852, -0.585115, 0.785428,
		-0.706148, -0.642641, -0.297266,
		38.786285, 38.839336, 58.142349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685970, 38.711418, 58.396370>,  <39.280590, 39.289185, 58.350437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685970, 38.711418, 58.396370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.375164, 38.644424, 58.153656>,  <39.188679, 38.604229, 58.008026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.375164, 38.644424, 58.153656>,  <39.685970, 38.711418, 58.396370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375164, 38.644424, 58.153656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620485, -0.366147, -0.693494,
		-0.106022, -0.915360, 0.388427,
		-0.777018, -0.167487, -0.606787,
		39.142059, 38.594177, 57.971619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806561, 38.082497, 58.037933>,  <39.685970, 38.711418, 58.396370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806561, 38.082497, 58.037933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513390, 38.225655, 57.806511>,  <39.337486, 38.311550, 57.667656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513390, 38.225655, 57.806511>,  <39.806561, 38.082497, 58.037933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513390, 38.225655, 57.806511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404659, -0.454286, -0.793647,
		-0.546874, -0.815804, 0.188132,
		-0.732925, 0.357896, -0.578560,
		39.293510, 38.333023, 57.632942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621441, 37.544361, 57.408741>,  <39.806561, 38.082497, 58.037933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621441, 37.544361, 57.408741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508476, 37.917381, 57.318771>,  <39.440697, 38.141193, 57.264790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508476, 37.917381, 57.318771>,  <39.621441, 37.544361, 57.408741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508476, 37.917381, 57.318771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334180, -0.124140, -0.934298,
		-0.899203, -0.339025, -0.276581,
		-0.282415, 0.932551, -0.224923,
		39.423752, 38.197147, 57.251293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421402, 37.407883, 56.827129>,  <39.621441, 37.544361, 57.408741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421402, 37.407883, 56.827129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493816, 37.800972, 56.842533>,  <39.537266, 38.036827, 56.851776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493816, 37.800972, 56.842533>,  <39.421402, 37.407883, 56.827129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493816, 37.800972, 56.842533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351926, -0.028167, -0.935604,
		-0.918354, 0.182934, -0.350944,
		0.181039, 0.982722, 0.038512,
		39.548126, 38.095787, 56.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316685, 37.723076, 56.147392>,  <39.421402, 37.407883, 56.827129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316685, 37.723076, 56.147392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544907, 37.987350, 56.342514>,  <39.681839, 38.145916, 56.459587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544907, 37.987350, 56.342514>,  <39.316685, 37.723076, 56.147392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544907, 37.987350, 56.342514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516613, 0.172994, -0.838561,
		-0.638416, 0.730452, -0.242619,
		0.570557, 0.660691, 0.487803,
		39.716072, 38.185558, 56.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195400, 38.307686, 55.716717>,  <39.316685, 37.723076, 56.147392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195400, 38.307686, 55.716717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545528, 38.350883, 55.905247>,  <39.755608, 38.376804, 56.018364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545528, 38.350883, 55.905247>,  <39.195400, 38.307686, 55.716717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545528, 38.350883, 55.905247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422967, 0.301352, -0.854567,
		-0.234324, 0.947377, 0.218102,
		0.875323, 0.107996, 0.471324,
		39.808125, 38.383282, 56.046642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528713, 38.845493, 55.258675>,  <39.195400, 38.307686, 55.716717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528713, 38.845493, 55.258675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832199, 38.690918, 55.468441>,  <40.014290, 38.598171, 55.594299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832199, 38.690918, 55.468441>,  <39.528713, 38.845493, 55.258675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832199, 38.690918, 55.468441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620359, 0.183012, -0.762667,
		0.198749, 0.903976, 0.378585,
		0.758718, -0.386438, 0.524416,
		40.059814, 38.574986, 55.625767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017059, 39.362209, 55.170753>,  <39.528713, 38.845493, 55.258675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017059, 39.362209, 55.170753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185776, 39.026749, 55.308598>,  <40.287006, 38.825474, 55.391304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185776, 39.026749, 55.308598>,  <40.017059, 39.362209, 55.170753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185776, 39.026749, 55.308598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783550, 0.145905, -0.603954,
		0.456224, 0.524765, 0.718666,
		0.421791, -0.838650, 0.344614,
		40.312313, 38.775154, 55.411983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816216, 39.494217, 55.195919>,  <40.017059, 39.362209, 55.170753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816216, 39.494217, 55.195919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701401, 39.112686, 55.160526>,  <40.632511, 38.883770, 55.139290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701401, 39.112686, 55.160526>,  <40.816216, 39.494217, 55.195919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701401, 39.112686, 55.160526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529825, -0.081128, -0.844218,
		0.798056, -0.289204, 0.528646,
		-0.287039, -0.953824, -0.088483,
		40.615288, 38.826538, 55.133980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411217, 39.171474, 55.122723>,  <40.816216, 39.494217, 55.195919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411217, 39.171474, 55.122723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.152580, 38.893166, 54.997620>,  <40.997398, 38.726181, 54.922558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.152580, 38.893166, 54.997620>,  <41.411217, 39.171474, 55.122723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152580, 38.893166, 54.997620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622927, -0.244933, -0.742947,
		0.440314, -0.675214, 0.591785,
		-0.646596, -0.695769, -0.312761,
		40.958603, 38.684437, 54.903790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812561, 38.457775, 54.849258>,  <41.411217, 39.171474, 55.122723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812561, 38.457775, 54.849258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456741, 38.409882, 54.672913>,  <41.243248, 38.381145, 54.567104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456741, 38.409882, 54.672913>,  <41.812561, 38.457775, 54.849258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456741, 38.409882, 54.672913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456831, -0.229509, -0.859437,
		0.001726, -0.965913, 0.258860,
		-0.889552, -0.119739, -0.440863,
		41.189877, 38.373959, 54.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915066, 37.962059, 54.440208>,  <41.812561, 38.457775, 54.849258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915066, 37.962059, 54.440208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581375, 38.119469, 54.285698>,  <41.381161, 38.213913, 54.192989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581375, 38.119469, 54.285698>,  <41.915066, 37.962059, 54.440208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581375, 38.119469, 54.285698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305322, -0.253689, -0.917835,
		-0.459182, -0.883619, 0.091483,
		-0.834224, 0.393522, -0.386278,
		41.331108, 38.237526, 54.169815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660568, 37.492008, 53.954418>,  <41.915066, 37.962059, 54.440208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660568, 37.492008, 53.954418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566914, 37.871277, 53.868492>,  <41.510719, 38.098839, 53.816936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566914, 37.871277, 53.868492>,  <41.660568, 37.492008, 53.954418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566914, 37.871277, 53.868492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503840, -0.070623, -0.860905,
		-0.831459, -0.309801, -0.461192,
		-0.234139, 0.948175, -0.214811,
		41.496674, 38.155731, 53.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294178, 37.510563, 53.308727>,  <41.660568, 37.492008, 53.954418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294178, 37.510563, 53.308727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.449604, 37.873680, 53.371895>,  <41.542858, 38.091549, 53.409798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.449604, 37.873680, 53.371895>,  <41.294178, 37.510563, 53.308727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449604, 37.873680, 53.371895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583595, -0.109827, -0.804584,
		-0.713048, 0.404793, -0.572456,
		0.388561, 0.907789, 0.157923,
		41.566174, 38.146015, 53.419273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609390, 37.503716, 52.753563>,  <41.294178, 37.510563, 53.308727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609390, 37.503716, 52.753563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.728859, 37.847481, 52.919556>,  <41.800541, 38.053738, 53.019150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.728859, 37.847481, 52.919556>,  <41.609390, 37.503716, 52.753563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728859, 37.847481, 52.919556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745182, 0.061648, -0.664006,
		-0.596236, 0.507556, -0.622005,
		0.298675, 0.859411, 0.414978,
		41.818462, 38.105305, 53.044048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552776, 38.008251, 52.247581>,  <41.609390, 37.503716, 52.753563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552776, 38.008251, 52.247581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823071, 38.121429, 52.519852>,  <41.985249, 38.189339, 52.683212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823071, 38.121429, 52.519852>,  <41.552776, 38.008251, 52.247581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823071, 38.121429, 52.519852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679984, 0.117243, -0.723792,
		-0.284600, 0.951942, -0.113175,
		0.675739, 0.282949, 0.680673,
		42.025791, 38.206314, 52.724052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.178551, 41.932903, 48.036465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515747, 41.779396, 48.187244>,  <42.718063, 41.687294, 48.277710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515747, 41.779396, 48.187244>,  <42.178551, 41.932903, 48.036465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515747, 41.779396, 48.187244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507410, 0.334622, -0.794081,
		0.178606, 0.860670, 0.476809,
		0.842992, -0.383765, 0.376947,
		42.768646, 41.664265, 48.300327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608974, 42.465511, 48.123154>,  <42.178551, 41.932903, 48.036465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608974, 42.465511, 48.123154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847389, 42.144386, 48.117020>,  <42.990440, 41.951714, 48.113338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847389, 42.144386, 48.117020>,  <42.608974, 42.465511, 48.123154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847389, 42.144386, 48.117020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510672, 0.393747, -0.764315,
		0.619638, 0.447730, 0.644660,
		0.596040, -0.802809, -0.015338,
		43.026199, 41.903545, 48.112419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224304, 42.744755, 48.062737>,  <42.608974, 42.465511, 48.123154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224304, 42.744755, 48.062737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287910, 42.362152, 47.964912>,  <43.326077, 42.132591, 47.906219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287910, 42.362152, 47.964912>,  <43.224304, 42.744755, 48.062737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287910, 42.362152, 47.964912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507434, 0.291673, -0.810825,
		0.846890, 0.004840, 0.531746,
		0.159020, -0.956506, -0.244559,
		43.335617, 42.075199, 47.891544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989998, 42.670792, 47.893372>,  <43.224304, 42.744755, 48.062737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989998, 42.670792, 47.893372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823975, 42.357170, 47.708771>,  <43.724361, 42.168995, 47.598011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823975, 42.357170, 47.708771>,  <43.989998, 42.670792, 47.893372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823975, 42.357170, 47.708771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469623, 0.249818, -0.846785,
		0.779220, -0.568193, 0.264524,
		-0.415055, -0.784059, -0.461500,
		43.699459, 42.121952, 47.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547703, 42.425301, 47.569042>,  <43.989998, 42.670792, 47.893372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547703, 42.425301, 47.569042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249477, 42.242081, 47.375416>,  <44.070541, 42.132149, 47.259239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249477, 42.242081, 47.375416>,  <44.547703, 42.425301, 47.569042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249477, 42.242081, 47.375416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448853, 0.191765, -0.872787,
		0.492604, -0.867998, 0.062623,
		-0.745568, -0.458047, -0.484067,
		44.025806, 42.104668, 47.230194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926449, 42.201229, 47.086472>,  <44.547703, 42.425301, 47.569042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926449, 42.201229, 47.086472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541260, 42.175972, 46.981628>,  <44.310146, 42.160816, 46.918724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541260, 42.175972, 46.981628>,  <44.926449, 42.201229, 47.086472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541260, 42.175972, 46.981628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249207, 0.162467, -0.954726,
		0.102866, -0.984692, -0.140716,
		-0.962972, -0.063141, -0.262104,
		44.252369, 42.157028, 46.902996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827976, 41.631020, 46.586742>,  <44.926449, 42.201229, 47.086472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827976, 41.631020, 46.586742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531494, 41.892982, 46.527798>,  <44.353607, 42.050159, 46.492432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531494, 41.892982, 46.527798>,  <44.827976, 41.631020, 46.586742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531494, 41.892982, 46.527798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359483, 0.201847, -0.911059,
		-0.566913, -0.728255, -0.385038,
		-0.741202, 0.654906, -0.147365,
		44.309132, 42.089455, 46.483589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508400, 41.497444, 45.910370>,  <44.827976, 41.631020, 46.586742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508400, 41.497444, 45.910370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368084, 41.864326, 45.985931>,  <44.283894, 42.084454, 46.031269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368084, 41.864326, 45.985931>,  <44.508400, 41.497444, 45.910370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368084, 41.864326, 45.985931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231918, 0.280532, -0.931405,
		-0.907281, -0.282918, -0.311124,
		-0.350792, 0.917202, 0.188908,
		44.262848, 42.139488, 46.042603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060894, 41.624981, 45.365734>,  <44.508400, 41.497444, 45.910370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060894, 41.624981, 45.365734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201710, 41.965698, 45.520916>,  <44.286201, 42.170128, 45.614025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201710, 41.965698, 45.520916>,  <44.060894, 41.624981, 45.365734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201710, 41.965698, 45.520916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203969, 0.334710, -0.919981,
		-0.913489, 0.403004, -0.055908,
		0.352043, 0.851797, 0.387954,
		44.307323, 42.221237, 45.637302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849365, 42.070061, 44.884335>,  <44.060894, 41.624981, 45.365734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849365, 42.070061, 44.884335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128311, 42.275620, 45.084175>,  <44.295677, 42.398952, 45.204079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128311, 42.275620, 45.084175>,  <43.849365, 42.070061, 44.884335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128311, 42.275620, 45.084175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251456, 0.477328, -0.841978,
		-0.671160, 0.712791, 0.203650,
		0.697363, 0.513893, 0.499599,
		44.337521, 42.429787, 45.234055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910843, 42.597778, 44.515957>,  <43.849365, 42.070061, 44.884335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910843, 42.597778, 44.515957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231552, 42.637741, 44.751644>,  <44.423977, 42.661720, 44.893059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231552, 42.637741, 44.751644>,  <43.910843, 42.597778, 44.515957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231552, 42.637741, 44.751644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450408, 0.547006, -0.705633,
		-0.392806, 0.831145, 0.393574,
		0.801771, 0.099908, 0.589221,
		44.472084, 42.667713, 44.928410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145145, 43.387600, 44.434933>,  <43.910843, 42.597778, 44.515957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145145, 43.387600, 44.434933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470112, 43.201782, 44.575893>,  <44.665092, 43.090290, 44.660469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470112, 43.201782, 44.575893>,  <44.145145, 43.387600, 44.434933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470112, 43.201782, 44.575893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567887, 0.493308, -0.658902,
		0.132248, 0.735423, 0.664578,
		0.812413, -0.464543, 0.352398,
		44.713837, 43.062420, 44.681614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630112, 43.603729, 43.835537>,  <44.145145, 43.387600, 44.434933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630112, 43.603729, 43.835537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835670, 43.720680, 43.512943>,  <44.959007, 43.790852, 43.319386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835670, 43.720680, 43.512943>,  <44.630112, 43.603729, 43.835537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835670, 43.720680, 43.512943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809026, -0.147463, -0.568974,
		-0.285285, 0.944864, 0.160764,
		0.513896, 0.292382, -0.806489,
		44.989838, 43.808395, 43.270996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366562, 44.171501, 43.287609>,  <44.630112, 43.603729, 43.835537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366562, 44.171501, 43.287609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598431, 43.893982, 43.116669>,  <44.737553, 43.727470, 43.014103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598431, 43.893982, 43.116669>,  <44.366562, 44.171501, 43.287609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598431, 43.893982, 43.116669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749403, -0.247973, -0.613926,
		0.319969, 0.676132, -0.663676,
		0.579668, -0.693798, -0.427351,
		44.772331, 43.685844, 42.988464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885372, 44.774281, 43.174892>,  <44.366562, 44.171501, 43.287609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885372, 44.774281, 43.174892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953896, 45.159538, 43.257847>,  <43.995010, 45.390694, 43.307621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953896, 45.159538, 43.257847>,  <43.885372, 44.774281, 43.174892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953896, 45.159538, 43.257847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225329, -0.166618, 0.959930,
		0.959104, -0.211174, 0.188481,
		0.171308, 0.963143, 0.207388,
		44.005287, 45.448483, 43.320065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223278, 44.887867, 43.828495>,  <43.885372, 44.774281, 43.174892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223278, 44.887867, 43.828495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079697, 45.260857, 43.812302>,  <43.993546, 45.484650, 43.802586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079697, 45.260857, 43.812302>,  <44.223278, 44.887867, 43.828495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079697, 45.260857, 43.812302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291733, -0.070886, 0.953870,
		0.886590, 0.354209, 0.297479,
		-0.358956, 0.932476, -0.040488,
		43.972012, 45.540600, 43.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479389, 45.303303, 44.426102>,  <44.223278, 44.887867, 43.828495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479389, 45.303303, 44.426102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147392, 45.491997, 44.307056>,  <43.948193, 45.605213, 44.235630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147392, 45.491997, 44.307056>,  <44.479389, 45.303303, 44.426102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147392, 45.491997, 44.307056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301363, 0.069713, 0.950958,
		0.469351, 0.878978, 0.084303,
		-0.829994, 0.471739, -0.297612,
		43.898396, 45.633518, 44.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514355, 45.967167, 44.725040>,  <44.479389, 45.303303, 44.426102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514355, 45.967167, 44.725040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126801, 45.923225, 44.636322>,  <43.894268, 45.896858, 44.583092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126801, 45.923225, 44.636322>,  <44.514355, 45.967167, 44.725040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126801, 45.923225, 44.636322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242994, 0.251686, 0.936807,
		-0.047092, 0.961553, -0.270550,
		-0.968884, -0.109858, -0.221799,
		43.836136, 45.890266, 44.569782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242607, 46.459164, 45.163944>,  <44.514355, 45.967167, 44.725040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242607, 46.459164, 45.163944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970028, 46.190491, 45.047684>,  <43.806480, 46.029289, 44.977928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970028, 46.190491, 45.047684>,  <44.242607, 46.459164, 45.163944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970028, 46.190491, 45.047684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341894, -0.058975, 0.937886,
		-0.647100, 0.738490, -0.189455,
		-0.681447, -0.671680, -0.290648,
		43.765594, 45.988987, 44.960487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660271, 46.739216, 45.384850>,  <44.242607, 46.459164, 45.163944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660271, 46.739216, 45.384850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616096, 46.343582, 45.345833>,  <43.589592, 46.106201, 45.322422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616096, 46.343582, 45.345833>,  <43.660271, 46.739216, 45.384850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616096, 46.343582, 45.345833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410777, -0.043948, 0.910676,
		-0.905023, 0.140641, -0.401440,
		-0.110436, -0.989085, -0.097546,
		43.582966, 46.046856, 45.316570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040764, 46.663910, 45.545605>,  <43.660271, 46.739216, 45.384850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040764, 46.663910, 45.545605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237457, 46.318581, 45.590981>,  <43.355473, 46.111382, 45.618206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237457, 46.318581, 45.590981>,  <43.040764, 46.663910, 45.545605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237457, 46.318581, 45.590981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467073, -0.151570, 0.871131,
		-0.734877, -0.481345, -0.477769,
		0.491730, -0.863327, 0.113438,
		43.384975, 46.059582, 45.625011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544918, 46.137299, 45.926224>,  <43.040764, 46.663910, 45.545605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544918, 46.137299, 45.926224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907906, 45.974716, 45.968746>,  <43.125698, 45.877167, 45.994259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907906, 45.974716, 45.968746>,  <42.544918, 46.137299, 45.926224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907906, 45.974716, 45.968746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307701, -0.470731, 0.826881,
		-0.286045, -0.783078, -0.552239,
		0.907468, -0.406450, 0.106303,
		43.180145, 45.852779, 46.000637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406879, 45.463581, 46.140057>,  <42.544918, 46.137299, 45.926224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406879, 45.463581, 46.140057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793907, 45.524445, 46.220711>,  <43.026123, 45.560963, 46.269104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793907, 45.524445, 46.220711>,  <42.406879, 45.463581, 46.140057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793907, 45.524445, 46.220711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110069, -0.464510, 0.878701,
		0.227365, -0.872398, -0.432698,
		0.967569, 0.152159, 0.201638,
		43.084179, 45.570091, 46.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647694, 44.801083, 46.350655>,  <42.406879, 45.463581, 46.140057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647694, 44.801083, 46.350655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913025, 45.062431, 46.496582>,  <43.072224, 45.219242, 46.584141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913025, 45.062431, 46.496582>,  <42.647694, 44.801083, 46.350655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913025, 45.062431, 46.496582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073229, -0.541854, 0.837276,
		0.744733, -0.528677, -0.407275,
		0.663333, 0.653371, 0.364823,
		43.112026, 45.258442, 46.606030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096397, 44.379124, 46.842609>,  <42.647694, 44.801083, 46.350655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096397, 44.379124, 46.842609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168480, 44.757362, 46.950962>,  <43.211731, 44.984306, 47.015972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168480, 44.757362, 46.950962>,  <43.096397, 44.379124, 46.842609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168480, 44.757362, 46.950962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094631, -0.257443, 0.961649,
		0.979066, -0.198930, 0.043089,
		0.180208, 0.945595, 0.270879,
		43.222542, 45.041042, 47.032227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504478, 44.385494, 47.492714>,  <43.096397, 44.379124, 46.842609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504478, 44.385494, 47.492714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340675, 44.750214, 47.480541>,  <43.242393, 44.969044, 47.473236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340675, 44.750214, 47.480541>,  <43.504478, 44.385494, 47.492714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340675, 44.750214, 47.480541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253121, -0.081507, 0.963995,
		0.876487, 0.402472, 0.264173,
		-0.409512, 0.911797, -0.030434,
		43.217823, 45.023754, 47.471413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835365, 44.711250, 48.079891>,  <43.504478, 44.385494, 47.492714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835365, 44.711250, 48.079891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491364, 44.882629, 47.969028>,  <43.284962, 44.985458, 47.902512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491364, 44.882629, 47.969028>,  <43.835365, 44.711250, 48.079891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491364, 44.882629, 47.969028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317145, -0.023280, 0.948092,
		0.399758, 0.903265, 0.155902,
		-0.860007, 0.428451, -0.277159,
		43.233360, 45.011166, 47.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652130, 45.299408, 48.566658>,  <43.835365, 44.711250, 48.079891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652130, 45.299408, 48.566658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301086, 45.212570, 48.395699>,  <43.090458, 45.160469, 48.293121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301086, 45.212570, 48.395699>,  <43.652130, 45.299408, 48.566658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301086, 45.212570, 48.395699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427912, -0.047100, 0.902592,
		-0.216077, 0.975014, -0.051561,
		-0.877612, -0.217093, -0.427398,
		43.037804, 45.147442, 48.267479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976265, 45.949863, 48.513435>,  <43.652130, 45.299408, 48.566658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976265, 45.949863, 48.513435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313721, 45.868935, 48.712368>,  <44.516193, 45.820377, 48.831726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313721, 45.868935, 48.712368>,  <43.976265, 45.949863, 48.513435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313721, 45.868935, 48.712368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529085, 0.155734, -0.834156,
		0.091315, 0.966858, 0.238428,
		0.843641, -0.202320, 0.497329,
		44.566814, 45.808239, 48.861568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423637, 46.476772, 48.330322>,  <43.976265, 45.949863, 48.513435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423637, 46.476772, 48.330322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650101, 46.184731, 48.483376>,  <44.785976, 46.009506, 48.575207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650101, 46.184731, 48.483376>,  <44.423637, 46.476772, 48.330322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650101, 46.184731, 48.483376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664687, 0.129832, -0.735755,
		0.487503, 0.670884, 0.558799,
		0.566156, -0.730109, 0.382634,
		44.819946, 45.965698, 48.598167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109188, 46.739674, 48.442886>,  <44.423637, 46.476772, 48.330322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109188, 46.739674, 48.442886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150131, 46.344185, 48.399151>,  <45.174698, 46.106892, 48.372910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150131, 46.344185, 48.399151>,  <45.109188, 46.739674, 48.442886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150131, 46.344185, 48.399151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793794, 0.147427, -0.590048,
		0.599513, -0.026399, 0.799930,
		0.102355, -0.988721, -0.109339,
		45.180836, 46.047569, 48.366348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692631, 46.556458, 48.706871>,  <45.109188, 46.739674, 48.442886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692631, 46.556458, 48.706871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612373, 46.252098, 48.460045>,  <45.564220, 46.069481, 48.311951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612373, 46.252098, 48.460045>,  <45.692631, 46.556458, 48.706871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612373, 46.252098, 48.460045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812690, 0.222458, -0.538561,
		0.547063, -0.609540, 0.573745,
		-0.200640, -0.760904, -0.617065,
		45.552181, 46.023827, 48.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327774, 46.184868, 48.712738>,  <45.692631, 46.556458, 48.706871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327774, 46.184868, 48.712738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.132217, 46.085083, 48.378372>,  <46.014885, 46.025211, 48.177753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.132217, 46.085083, 48.378372>,  <46.327774, 46.184868, 48.712738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132217, 46.085083, 48.378372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856506, 0.044515, -0.514214,
		0.165486, -0.967362, 0.191900,
		-0.488889, -0.249459, -0.835918,
		45.985550, 46.010246, 48.127598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807388, 45.687851, 48.335903>,  <46.327774, 46.184868, 48.712738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807388, 45.687851, 48.335903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548203, 45.807472, 48.055698>,  <46.392693, 45.879246, 47.887577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548203, 45.807472, 48.055698>,  <46.807388, 45.687851, 48.335903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548203, 45.807472, 48.055698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726836, -0.032189, -0.686056,
		-0.227716, -0.953694, -0.196505,
		-0.647962, 0.299053, -0.700509,
		46.353813, 45.897186, 47.845547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186520, 45.450253, 47.773655>,  <46.807388, 45.687851, 48.335903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186520, 45.450253, 47.773655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.896843, 45.677826, 47.617779>,  <46.723038, 45.814369, 47.524254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.896843, 45.677826, 47.617779>,  <47.186520, 45.450253, 47.773655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896843, 45.677826, 47.617779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629084, 0.313552, -0.711294,
		-0.282490, -0.760263, -0.584979,
		-0.724191, 0.568934, -0.389694,
		46.679585, 45.848507, 47.500870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958557, 45.168530, 47.069405>,  <47.186520, 45.450253, 47.773655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958557, 45.168530, 47.069405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877266, 45.559982, 47.081940>,  <46.828491, 45.794853, 47.089462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877266, 45.559982, 47.081940>,  <46.958557, 45.168530, 47.069405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877266, 45.559982, 47.081940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686636, 0.165261, -0.707969,
		-0.698019, -0.122359, -0.705548,
		-0.203226, 0.978630, 0.031339,
		46.816299, 45.853573, 47.091343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057915, 45.366955, 46.371601>,  <46.958557, 45.168530, 47.069405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057915, 45.366955, 46.371601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044342, 45.713867, 46.570267>,  <47.036198, 45.922016, 46.689465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044342, 45.713867, 46.570267>,  <47.057915, 45.366955, 46.371601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044342, 45.713867, 46.570267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714323, 0.368607, -0.594871,
		-0.698993, 0.334594, -0.632025,
		-0.033929, 0.867281, 0.496662,
		47.034164, 45.974052, 46.719265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.913841, 45.889088, 45.885345>,  <47.057915, 45.366955, 46.371601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.913841, 45.889088, 45.885345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.133530, 46.037720, 46.184753>,  <47.265343, 46.126900, 46.364399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.133530, 46.037720, 46.184753>,  <46.913841, 45.889088, 45.885345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133530, 46.037720, 46.184753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664432, 0.349079, -0.660814,
		-0.506839, 0.860274, -0.055169,
		0.549222, 0.371582, 0.748520,
		47.298298, 46.149193, 46.409309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203632, 46.483898, 45.654297>,  <46.913841, 45.889088, 45.885345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203632, 46.483898, 45.654297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.423271, 46.414040, 45.981220>,  <47.555054, 46.372124, 46.177376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.423271, 46.414040, 45.981220>,  <47.203632, 46.483898, 45.654297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423271, 46.414040, 45.981220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835622, 0.132514, -0.533081,
		-0.015204, 0.975674, 0.218700,
		0.549094, -0.174646, 0.817309,
		47.588001, 46.361645, 46.226414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669140, 47.038177, 45.725391>,  <47.203632, 46.483898, 45.654297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669140, 47.038177, 45.725391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.842682, 46.741638, 45.930202>,  <47.946808, 46.563713, 46.053089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.842682, 46.741638, 45.930202>,  <47.669140, 47.038177, 45.725391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842682, 46.741638, 45.930202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824684, 0.097879, -0.557060,
		0.362858, 0.663945, 0.653843,
		0.433855, -0.741348, 0.512028,
		47.972839, 46.519234, 46.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.924435, 46.096718, 52.547997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112782, 45.753105, 52.467651>,  <43.225792, 45.546936, 52.419445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112782, 45.753105, 52.467651>,  <42.924435, 46.096718, 52.547997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112782, 45.753105, 52.467651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507276, 0.449924, -0.735010,
		0.721771, 0.244199, 0.647622,
		0.470869, -0.859032, -0.200865,
		43.254044, 45.495396, 52.407391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576176, 46.300728, 52.435024>,  <42.924435, 46.096718, 52.547997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576176, 46.300728, 52.435024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541176, 45.943138, 52.259224>,  <43.520176, 45.728584, 52.153744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541176, 45.943138, 52.259224>,  <43.576176, 46.300728, 52.435024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541176, 45.943138, 52.259224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488264, 0.346071, -0.801144,
		0.868298, -0.284690, 0.406214,
		-0.087499, -0.893972, -0.439497,
		43.514927, 45.674946, 52.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266487, 46.215137, 52.054081>,  <43.576176, 46.300728, 52.435024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266487, 46.215137, 52.054081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040047, 45.926743, 51.894222>,  <43.904182, 45.753708, 51.798306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040047, 45.926743, 51.894222>,  <44.266487, 46.215137, 52.054081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040047, 45.926743, 51.894222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511848, 0.072601, -0.856003,
		0.646178, -0.689139, 0.327934,
		-0.566097, -0.720983, -0.399648,
		43.870216, 45.710449, 51.774326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750946, 45.677391, 51.805683>,  <44.266487, 46.215137, 52.054081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750946, 45.677391, 51.805683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411774, 45.591843, 51.611660>,  <44.208271, 45.540516, 51.495247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411774, 45.591843, 51.611660>,  <44.750946, 45.677391, 51.805683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411774, 45.591843, 51.611660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506798, -0.058670, -0.860066,
		0.155484, -0.975099, 0.158136,
		-0.847927, -0.213869, -0.485056,
		44.157394, 45.527683, 51.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967140, 45.161541, 51.306973>,  <44.750946, 45.677391, 51.805683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967140, 45.161541, 51.306973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630863, 45.325142, 51.165016>,  <44.429096, 45.423302, 51.079842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630863, 45.325142, 51.165016>,  <44.967140, 45.161541, 51.306973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630863, 45.325142, 51.165016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370845, -0.042708, -0.927712,
		-0.394595, -0.911533, -0.115773,
		-0.840696, 0.409004, -0.354890,
		44.378654, 45.447842, 51.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716988, 44.747543, 50.721901>,  <44.967140, 45.161541, 51.306973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716988, 44.747543, 50.721901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567165, 45.113319, 50.660568>,  <44.477272, 45.332783, 50.623768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567165, 45.113319, 50.660568>,  <44.716988, 44.747543, 50.721901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567165, 45.113319, 50.660568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303475, -0.035356, -0.952183,
		-0.876133, -0.403181, -0.264266,
		-0.374559, 0.914437, -0.153332,
		44.454796, 45.387650, 50.614567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547916, 44.699665, 50.044292>,  <44.716988, 44.747543, 50.721901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547916, 44.699665, 50.044292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497871, 45.091110, 50.109615>,  <44.467842, 45.325977, 50.148808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497871, 45.091110, 50.109615>,  <44.547916, 44.699665, 50.044292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497871, 45.091110, 50.109615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061836, 0.171972, -0.983159,
		-0.990213, -0.112910, -0.082029,
		-0.125116, 0.978610, 0.163307,
		44.460335, 45.384693, 50.158607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079029, 45.003689, 49.578613>,  <44.547916, 44.699665, 50.044292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079029, 45.003689, 49.578613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313877, 45.307426, 49.690819>,  <44.454788, 45.489670, 49.758141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313877, 45.307426, 49.690819>,  <44.079029, 45.003689, 49.578613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313877, 45.307426, 49.690819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149385, 0.238943, -0.959474,
		-0.795594, 0.605234, 0.026855,
		0.587123, 0.759340, 0.280515,
		44.490013, 45.535229, 49.774975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789021, 45.524334, 49.232719>,  <44.079029, 45.003689, 49.578613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789021, 45.524334, 49.232719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173458, 45.597794, 49.315250>,  <44.404121, 45.641869, 49.364769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173458, 45.597794, 49.315250>,  <43.789021, 45.524334, 49.232719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173458, 45.597794, 49.315250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161415, 0.232757, -0.959046,
		-0.224151, 0.955038, 0.194058,
		0.961094, 0.183648, 0.206330,
		44.461784, 45.652889, 49.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133080, 45.803280, 48.926380>,  <43.789021, 45.524334, 49.232719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133080, 45.803280, 48.926380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942856, 45.509026, 48.733429>,  <42.828724, 45.332474, 48.617657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942856, 45.509026, 48.733429>,  <43.133080, 45.803280, 48.926380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942856, 45.509026, 48.733429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682017, -0.038016, 0.730348,
		-0.555607, 0.676311, -0.483637,
		-0.475556, -0.735635, -0.482377,
		42.800190, 45.288334, 48.588715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330429, 45.984219, 48.906368>,  <43.133080, 45.803280, 48.926380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330429, 45.984219, 48.906368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406952, 45.596207, 48.846451>,  <42.452866, 45.363400, 48.810501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406952, 45.596207, 48.846451>,  <42.330429, 45.984219, 48.906368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406952, 45.596207, 48.846451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596804, -0.236113, 0.766861,
		-0.779248, -0.057308, -0.624089,
		0.191303, -0.970034, -0.149789,
		42.464344, 45.305195, 48.801514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671932, 45.706409, 48.936844>,  <42.330429, 45.984219, 48.906368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671932, 45.706409, 48.936844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922398, 45.403610, 49.011551>,  <42.072678, 45.221931, 49.056374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922398, 45.403610, 49.011551>,  <41.671932, 45.706409, 48.936844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922398, 45.403610, 49.011551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656554, -0.382721, 0.649970,
		-0.420548, -0.529604, -0.736654,
		0.626160, -0.756997, 0.186761,
		42.110245, 45.176510, 49.067581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211021, 45.086411, 49.038570>,  <41.671932, 45.706409, 48.936844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211021, 45.086411, 49.038570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569191, 44.951469, 49.154785>,  <41.784092, 44.870506, 49.224514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569191, 44.951469, 49.154785>,  <41.211021, 45.086411, 49.038570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569191, 44.951469, 49.154785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445134, -0.691046, 0.569484,
		0.008656, -0.639256, -0.768945,
		0.895422, -0.337354, 0.290536,
		41.837818, 44.850262, 49.241947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204369, 44.279018, 49.041134>,  <41.211021, 45.086411, 49.038570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204369, 44.279018, 49.041134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460983, 44.435966, 49.304794>,  <41.614952, 44.530136, 49.462990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460983, 44.435966, 49.304794>,  <41.204369, 44.279018, 49.041134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460983, 44.435966, 49.304794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464349, -0.485330, 0.740834,
		0.610587, -0.781346, -0.129159,
		0.641532, 0.392369, 0.659153,
		41.653442, 44.553677, 49.502541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391747, 43.706306, 49.385841>,  <41.204369, 44.279018, 49.041134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391747, 43.706306, 49.385841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493996, 44.019005, 49.613361>,  <41.555344, 44.206623, 49.749874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493996, 44.019005, 49.613361>,  <41.391747, 43.706306, 49.385841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493996, 44.019005, 49.613361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356579, -0.470633, 0.807066,
		0.898615, -0.409127, 0.158449,
		0.255621, 0.781742, 0.568804,
		41.570683, 44.253529, 49.784004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450562, 43.405621, 50.064068>,  <41.391747, 43.706306, 49.385841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450562, 43.405621, 50.064068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475101, 43.790047, 50.171841>,  <41.489826, 44.020702, 50.236504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475101, 43.790047, 50.171841>,  <41.450562, 43.405621, 50.064068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475101, 43.790047, 50.171841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598507, -0.180605, 0.780494,
		0.798765, -0.209144, 0.564122,
		0.061352, 0.961062, 0.269435,
		41.493507, 44.078365, 50.252670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753777, 43.381920, 50.782310>,  <41.450562, 43.405621, 50.064068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753777, 43.381920, 50.782310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536774, 43.708672, 50.703926>,  <41.406574, 43.904720, 50.656895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536774, 43.708672, 50.703926>,  <41.753777, 43.381920, 50.782310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536774, 43.708672, 50.703926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601061, -0.214492, 0.769883,
		0.586868, 0.535448, 0.607356,
		-0.542505, 0.816877, -0.195958,
		41.374023, 43.953735, 50.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477135, 43.441315, 51.357765>,  <41.753777, 43.381920, 50.782310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477135, 43.441315, 51.357765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271713, 43.722054, 51.160313>,  <41.148460, 43.890499, 51.041843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271713, 43.722054, 51.160313>,  <41.477135, 43.441315, 51.357765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271713, 43.722054, 51.160313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636271, 0.074485, 0.767861,
		0.575691, 0.708420, 0.408315,
		-0.513555, 0.701850, -0.493628,
		41.117645, 43.932610, 51.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447426, 44.028728, 51.804729>,  <41.477135, 43.441315, 51.357765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447426, 44.028728, 51.804729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136063, 44.040802, 51.553917>,  <40.949245, 44.048046, 51.403431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136063, 44.040802, 51.553917>,  <41.447426, 44.028728, 51.804729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136063, 44.040802, 51.553917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627754, -0.036755, 0.777543,
		0.000425, 0.998868, 0.047560,
		-0.778412, 0.030186, -0.627028,
		40.902538, 44.049858, 51.365810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923553, 44.483555, 52.201237>,  <41.447426, 44.028728, 51.804729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923553, 44.483555, 52.201237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740341, 44.274353, 51.913719>,  <40.630413, 44.148830, 51.741207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740341, 44.274353, 51.913719>,  <40.923553, 44.483555, 52.201237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740341, 44.274353, 51.913719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779414, -0.152542, 0.607654,
		-0.427455, 0.838566, -0.337771,
		-0.458034, -0.523008, -0.718795,
		40.602932, 44.117451, 51.698082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316822, 44.819187, 52.220139>,  <40.923553, 44.483555, 52.201237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316822, 44.819187, 52.220139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276291, 44.453819, 52.062458>,  <40.251972, 44.234596, 51.967850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276291, 44.453819, 52.062458>,  <40.316822, 44.819187, 52.220139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276291, 44.453819, 52.062458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680170, -0.225558, 0.697490,
		-0.726018, 0.338795, -0.598428,
		-0.101326, -0.913423, -0.394197,
		40.245892, 44.179790, 51.944199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617081, 44.785854, 52.197208>,  <40.316822, 44.819187, 52.220139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617081, 44.785854, 52.197208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732788, 44.408524, 52.132149>,  <39.802212, 44.182125, 52.093113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732788, 44.408524, 52.132149>,  <39.617081, 44.785854, 52.197208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732788, 44.408524, 52.132149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891490, -0.327370, 0.313169,
		-0.348670, 0.054417, -0.935664,
		0.289266, -0.943328, -0.162657,
		39.819569, 44.125526, 52.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090424, 44.362362, 51.822048>,  <39.617081, 44.785854, 52.197208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090424, 44.362362, 51.822048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315506, 44.109734, 52.035397>,  <39.450554, 43.958157, 52.163406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315506, 44.109734, 52.035397>,  <39.090424, 44.362362, 51.822048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315506, 44.109734, 52.035397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825731, -0.398863, 0.398845,
		-0.039157, -0.664852, -0.745948,
		0.562704, -0.631569, 0.533370,
		39.484318, 43.920261, 52.195408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.144844, 38.402004, 55.069710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.967804, 38.732986, 54.931480>,  <43.861580, 38.931576, 54.848541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.967804, 38.732986, 54.931480>,  <44.144844, 38.402004, 55.069710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967804, 38.732986, 54.931480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529148, -0.070123, -0.845627,
		-0.723950, -0.557138, -0.406810,
		-0.442604, 0.827454, -0.345574,
		43.835022, 38.981224, 54.827808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992496, 38.220840, 54.426991>,  <44.144844, 38.402004, 55.069710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992496, 38.220840, 54.426991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000195, 38.620453, 54.442863>,  <44.004814, 38.860218, 54.452389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000195, 38.620453, 54.442863>,  <43.992496, 38.220840, 54.426991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000195, 38.620453, 54.442863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591144, 0.020638, -0.806302,
		-0.806336, 0.038979, -0.590172,
		0.019249, 0.999027, 0.039683,
		44.005970, 38.920162, 54.454769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073978, 38.361881, 53.834396>,  <43.992496, 38.220840, 54.426991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073978, 38.361881, 53.834396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.152199, 38.723351, 53.986778>,  <44.199131, 38.940231, 54.078209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.152199, 38.723351, 53.986778>,  <44.073978, 38.361881, 53.834396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152199, 38.723351, 53.986778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773952, 0.096369, -0.625868,
		-0.602295, 0.417231, -0.680558,
		0.195547, 0.903677, 0.380959,
		44.210861, 38.994453, 54.101067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147137, 38.737366, 53.249512>,  <44.073978, 38.361881, 53.834396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147137, 38.737366, 53.249512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.314484, 38.948280, 53.545334>,  <44.414894, 39.074829, 53.722828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.314484, 38.948280, 53.545334>,  <44.147137, 38.737366, 53.249512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314484, 38.948280, 53.545334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791663, 0.187448, -0.581493,
		-0.445239, 0.828756, -0.339007,
		0.418370, 0.527282, 0.739554,
		44.439995, 39.106464, 53.767200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277870, 39.448029, 53.061825>,  <44.147137, 38.737366, 53.249512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277870, 39.448029, 53.061825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.543037, 39.383026, 53.354164>,  <44.702137, 39.344025, 53.529568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.543037, 39.383026, 53.354164>,  <44.277870, 39.448029, 53.061825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543037, 39.383026, 53.354164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735683, 0.322563, -0.595586,
		-0.138959, 0.932495, 0.333383,
		0.662918, -0.162502, 0.730844,
		44.741913, 39.334274, 53.573418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806660, 39.974087, 52.994610>,  <44.277870, 39.448029, 53.061825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806660, 39.974087, 52.994610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.969948, 39.700203, 53.236115>,  <45.067921, 39.535873, 53.381016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.969948, 39.700203, 53.236115>,  <44.806660, 39.974087, 52.994610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969948, 39.700203, 53.236115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893127, 0.162703, -0.419347,
		0.188897, 0.710422, 0.677952,
		0.408218, -0.684711, 0.603763,
		45.092415, 39.494789, 53.417244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550354, 40.320461, 53.071255>,  <44.806660, 39.974087, 52.994610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550354, 40.320461, 53.071255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.535805, 39.935249, 53.178032>,  <45.527073, 39.704124, 53.242100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.535805, 39.935249, 53.178032>,  <45.550354, 40.320461, 53.071255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535805, 39.935249, 53.178032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944390, -0.120481, -0.305960,
		0.326809, 0.240969, 0.913854,
		-0.036375, -0.963025, 0.266943,
		45.524891, 39.646343, 53.258114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141506, 40.238060, 53.445881>,  <45.550354, 40.320461, 53.071255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141506, 40.238060, 53.445881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.034714, 39.883591, 53.294403>,  <45.970638, 39.670910, 53.203518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.034714, 39.883591, 53.294403>,  <46.141506, 40.238060, 53.445881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034714, 39.883591, 53.294403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801424, 0.014065, -0.597931,
		0.535199, -0.463133, 0.706448,
		-0.266986, -0.886177, -0.378694,
		45.954617, 39.617737, 53.180794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770531, 39.895317, 53.379097>,  <46.141506, 40.238060, 53.445881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770531, 39.895317, 53.379097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.489761, 39.723602, 53.151756>,  <46.321301, 39.620571, 53.015354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.489761, 39.723602, 53.151756>,  <46.770531, 39.895317, 53.379097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489761, 39.723602, 53.151756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630210, -0.002514, -0.776421,
		0.331882, -0.903162, 0.272309,
		-0.701919, -0.429292, -0.568347,
		46.279186, 39.594814, 52.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029274, 39.423370, 52.984596>,  <46.770531, 39.895317, 53.379097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029274, 39.423370, 52.984596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.710197, 39.540787, 52.773872>,  <46.518753, 39.611237, 52.647438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.710197, 39.540787, 52.773872>,  <47.029274, 39.423370, 52.984596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710197, 39.540787, 52.773872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556203, 0.020470, -0.830794,
		-0.233086, -0.955728, -0.179596,
		-0.797690, 0.293538, -0.526808,
		46.470890, 39.628849, 52.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023190, 39.108776, 52.257568>,  <47.029274, 39.423370, 52.984596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023190, 39.108776, 52.257568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.757339, 39.403511, 52.208027>,  <46.597828, 39.580353, 52.178303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.757339, 39.403511, 52.208027>,  <47.023190, 39.108776, 52.257568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757339, 39.403511, 52.208027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381119, 0.191748, -0.904423,
		-0.642668, -0.648304, -0.408265,
		-0.664625, 0.736841, -0.123851,
		46.557953, 39.624565, 52.170872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811008, 39.003990, 51.545773>,  <47.023190, 39.108776, 52.257568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811008, 39.003990, 51.545773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.679787, 39.371025, 51.635590>,  <46.601055, 39.591244, 51.689480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.679787, 39.371025, 51.635590>,  <46.811008, 39.003990, 51.545773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679787, 39.371025, 51.635590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395956, 0.349372, -0.849210,
		-0.857671, -0.189678, -0.477936,
		-0.328054, 0.917585, 0.224542,
		46.581371, 39.646301, 51.702953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325710, 39.168854, 51.016270>,  <46.811008, 39.003990, 51.545773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325710, 39.168854, 51.016270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.465179, 39.510887, 51.169769>,  <46.548862, 39.716106, 51.261868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.465179, 39.510887, 51.169769>,  <46.325710, 39.168854, 51.016270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465179, 39.510887, 51.169769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214994, 0.325555, -0.920756,
		-0.912252, 0.403547, -0.070325,
		0.348674, 0.855081, 0.383748,
		46.569782, 39.767410, 51.284893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971237, 39.732685, 50.647224>,  <46.325710, 39.168854, 51.016270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971237, 39.732685, 50.647224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.314430, 39.889694, 50.779762>,  <46.520348, 39.983898, 50.859283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.314430, 39.889694, 50.779762>,  <45.971237, 39.732685, 50.647224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314430, 39.889694, 50.779762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235672, 0.272350, -0.932890,
		-0.456419, 0.878495, 0.141167,
		0.857986, 0.392519, 0.331343,
		46.571827, 40.007450, 50.879166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179749, 39.839981, 50.498814>,  <45.971237, 39.732685, 50.647224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179749, 39.839981, 50.498814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.982861, 39.628227, 50.222416>,  <44.864727, 39.501175, 50.056580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.982861, 39.628227, 50.222416>,  <45.179749, 39.839981, 50.498814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982861, 39.628227, 50.222416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692347, -0.243056, 0.679396,
		-0.527612, 0.812819, -0.246881,
		-0.492220, -0.529385, -0.690992,
		44.835194, 39.469410, 50.015118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495426, 40.057915, 50.560047>,  <45.179749, 39.839981, 50.498814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495426, 40.057915, 50.560047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.492596, 39.699928, 50.381615>,  <44.490898, 39.485138, 50.274555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.492596, 39.699928, 50.381615>,  <44.495426, 40.057915, 50.560047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492596, 39.699928, 50.381615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792736, -0.266893, 0.548031,
		-0.609525, 0.357506, -0.707580,
		-0.007076, -0.894963, -0.446085,
		44.490475, 39.431438, 50.247787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778404, 39.844173, 50.392601>,  <44.495426, 40.057915, 50.560047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778404, 39.844173, 50.392601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.985001, 39.503159, 50.424625>,  <44.108959, 39.298550, 50.443840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.985001, 39.503159, 50.424625>,  <43.778404, 39.844173, 50.392601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985001, 39.503159, 50.424625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730730, -0.390085, 0.560239,
		-0.446396, -0.347862, -0.824453,
		0.516492, -0.852541, 0.080061,
		44.139950, 39.247395, 50.448643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285179, 39.369335, 50.463287>,  <43.778404, 39.844173, 50.392601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285179, 39.369335, 50.463287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596626, 39.143074, 50.571953>,  <43.783493, 39.007317, 50.637150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.596626, 39.143074, 50.571953>,  <43.285179, 39.369335, 50.463287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596626, 39.143074, 50.571953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560312, -0.431810, 0.706817,
		-0.282507, -0.702552, -0.653154,
		0.778614, -0.565651, 0.271659,
		43.830212, 38.973377, 50.653450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004356, 38.784531, 50.567654>,  <43.285179, 39.369335, 50.463287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004356, 38.784531, 50.567654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.350899, 38.734688, 50.761105>,  <43.558826, 38.704784, 50.877174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.350899, 38.734688, 50.761105>,  <43.004356, 38.784531, 50.567654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350899, 38.734688, 50.761105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479980, -0.475314, 0.737358,
		0.138000, -0.870949, -0.471598,
		0.866357, -0.124602, 0.483631,
		43.610806, 38.697308, 50.906193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005173, 38.110741, 50.750473>,  <43.004356, 38.784531, 50.567654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005173, 38.110741, 50.750473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.258526, 38.273140, 51.013985>,  <43.410538, 38.370579, 51.172092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.258526, 38.273140, 51.013985>,  <43.005173, 38.110741, 50.750473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258526, 38.273140, 51.013985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485692, -0.454186, 0.746872,
		0.602440, -0.793019, -0.090481,
		0.633379, 0.406000, 0.658783,
		43.448540, 38.394939, 51.211620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995758, 37.627766, 51.231709>,  <43.005173, 38.110741, 50.750473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995758, 37.627766, 51.231709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.169487, 37.930359, 51.427299>,  <43.273724, 38.111916, 51.544655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.169487, 37.930359, 51.427299>,  <42.995758, 37.627766, 51.231709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169487, 37.930359, 51.427299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336847, -0.367058, 0.867066,
		0.835401, -0.541300, 0.095396,
		0.434327, 0.756481, 0.488976,
		43.299786, 38.157303, 51.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179726, 37.401737, 51.911819>,  <42.995758, 37.627766, 51.231709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179726, 37.401737, 51.911819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.146011, 37.797234, 51.961288>,  <43.125782, 38.034531, 51.990971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.146011, 37.797234, 51.961288>,  <43.179726, 37.401737, 51.911819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146011, 37.797234, 51.961288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371289, -0.146341, 0.916912,
		0.924684, 0.031363, 0.379442,
		-0.084285, 0.988737, 0.123674,
		43.120728, 38.093853, 51.998390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304707, 37.474575, 52.655128>,  <43.179726, 37.401737, 51.911819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304707, 37.474575, 52.655128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.119675, 37.805412, 52.527412>,  <43.008656, 38.003914, 52.450783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.119675, 37.805412, 52.527412>,  <43.304707, 37.474575, 52.655128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119675, 37.805412, 52.527412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586813, -0.015670, 0.809571,
		0.664585, 0.561850, 0.492596,
		-0.462576, 0.827091, -0.319287,
		42.980904, 38.053539, 52.431625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297771, 37.921936, 53.229359>,  <43.304707, 37.474575, 52.655128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297771, 37.921936, 53.229359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.007896, 38.073341, 52.999035>,  <42.833969, 38.164185, 52.860840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.007896, 38.073341, 52.999035>,  <43.297771, 37.921936, 53.229359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007896, 38.073341, 52.999035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572782, 0.133654, 0.808739,
		0.383074, 0.915897, 0.119946,
		-0.724690, 0.378509, -0.575808,
		42.790489, 38.186893, 52.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981812, 38.525509, 53.489994>,  <43.297771, 37.921936, 53.229359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981812, 38.525509, 53.489994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675697, 38.434647, 53.249084>,  <42.492027, 38.380131, 53.104538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675697, 38.434647, 53.249084>,  <42.981812, 38.525509, 53.489994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675697, 38.434647, 53.249084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643401, 0.297845, 0.705212,
		0.019191, 0.927194, -0.374090,
		-0.765289, -0.227156, -0.602273,
		42.446110, 38.366501, 53.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546848, 39.059464, 53.654762>,  <42.981812, 38.525509, 53.489994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546848, 39.059464, 53.654762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.313187, 38.801636, 53.457462>,  <42.172989, 38.646938, 53.339085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.313187, 38.801636, 53.457462>,  <42.546848, 39.059464, 53.654762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313187, 38.801636, 53.457462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804308, 0.378205, 0.458312,
		-0.108866, 0.664447, -0.739363,
		-0.584155, -0.644570, -0.493247,
		42.137939, 38.608265, 53.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970982, 39.371796, 53.414024>,  <42.546848, 39.059464, 53.654762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970982, 39.371796, 53.414024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855000, 38.989799, 53.439095>,  <41.785412, 38.760601, 53.454136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855000, 38.989799, 53.439095>,  <41.970982, 39.371796, 53.414024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855000, 38.989799, 53.439095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800019, 0.277805, 0.531784,
		-0.525259, 0.104048, -0.844557,
		-0.289953, -0.954986, 0.062680,
		41.768013, 38.703304, 53.457897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177746, 39.445950, 53.400997>,  <41.970982, 39.371796, 53.414024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177746, 39.445950, 53.400997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263809, 39.076958, 53.529205>,  <41.315449, 38.855560, 53.606129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263809, 39.076958, 53.529205>,  <41.177746, 39.445950, 53.400997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263809, 39.076958, 53.529205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664904, 0.102009, 0.739930,
		-0.715269, -0.372315, -0.591415,
		0.215158, -0.922484, 0.320518,
		41.328358, 38.800213, 53.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670193, 39.118835, 53.000526>,  <41.177746, 39.445950, 53.400997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670193, 39.118835, 53.000526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467796, 39.455124, 52.923424>,  <40.346359, 39.656898, 52.877163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467796, 39.455124, 52.923424>,  <40.670193, 39.118835, 53.000526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467796, 39.455124, 52.923424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511907, 0.112841, -0.851597,
		-0.694205, -0.529580, -0.487468,
		-0.505995, 0.840721, -0.192761,
		40.315998, 39.707340, 52.865597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578190, 39.114204, 52.204086>,  <40.670193, 39.118835, 53.000526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578190, 39.114204, 52.204086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497902, 39.486969, 52.324921>,  <40.449730, 39.710629, 52.397423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497902, 39.486969, 52.324921>,  <40.578190, 39.114204, 52.204086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497902, 39.486969, 52.324921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445247, 0.361454, -0.819211,
		-0.872621, -0.029927, -0.487481,
		-0.200718, 0.931910, 0.302087,
		40.437687, 39.766541, 52.415546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336464, 39.330303, 51.602707>,  <40.578190, 39.114204, 52.204086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336464, 39.330303, 51.602707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423790, 39.649780, 51.827003>,  <40.476185, 39.841465, 51.961582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423790, 39.649780, 51.827003>,  <40.336464, 39.330303, 51.602707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423790, 39.649780, 51.827003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438782, 0.432905, -0.787441,
		-0.871670, 0.417953, -0.255942,
		0.218315, 0.798692, 0.560741,
		40.489285, 39.889389, 51.995224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057281, 39.887993, 51.166634>,  <40.336464, 39.330303, 51.602707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057281, 39.887993, 51.166634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336174, 40.022758, 51.419731>,  <40.503510, 40.103619, 51.571590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336174, 40.022758, 51.419731>,  <40.057281, 39.887993, 51.166634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336174, 40.022758, 51.419731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350792, 0.609407, -0.711033,
		-0.625156, 0.717712, 0.306707,
		0.697227, 0.336917, 0.632742,
		40.545341, 40.123833, 51.609554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025875, 40.627674, 51.043144>,  <40.057281, 39.887993, 51.166634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025875, 40.627674, 51.043144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.374191, 40.507034, 51.198456>,  <40.583179, 40.434650, 51.291641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.374191, 40.507034, 51.198456>,  <40.025875, 40.627674, 51.043144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374191, 40.507034, 51.198456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490975, 0.492002, -0.718942,
		0.025799, 0.816683, 0.576509,
		0.870792, -0.301600, 0.388278,
		40.635429, 40.416553, 51.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375988, 41.264492, 51.162277>,  <40.025875, 40.627674, 51.043144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375988, 41.264492, 51.162277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642895, 40.967209, 51.142704>,  <40.803040, 40.788837, 51.130959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642895, 40.967209, 51.142704>,  <40.375988, 41.264492, 51.162277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642895, 40.967209, 51.142704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567282, 0.549691, -0.613214,
		0.482643, 0.381420, 0.788400,
		0.667268, -0.743209, -0.048932,
		40.843075, 40.744247, 51.128025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141724, 41.571255, 51.117020>,  <40.375988, 41.264492, 51.162277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141724, 41.571255, 51.117020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167953, 41.191208, 50.995049>,  <41.183693, 40.963181, 50.921867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167953, 41.191208, 50.995049>,  <41.141724, 41.571255, 51.117020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167953, 41.191208, 50.995049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702245, 0.261039, -0.662353,
		0.708909, -0.170700, 0.684331,
		0.065574, -0.950116, -0.304926,
		41.187626, 40.906174, 50.903572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915310, 41.523380, 51.090553>,  <41.141724, 41.571255, 51.117020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915310, 41.523380, 51.090553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768059, 41.228699, 50.863663>,  <41.679710, 41.051888, 50.727528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768059, 41.228699, 50.863663>,  <41.915310, 41.523380, 51.090553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768059, 41.228699, 50.863663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619430, 0.260644, -0.740521,
		0.693391, -0.623962, 0.360389,
		-0.368124, -0.736706, -0.567229,
		41.657623, 41.007687, 50.693493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494213, 41.160213, 50.898819>,  <41.915310, 41.523380, 51.090553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494213, 41.160213, 50.898819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.211792, 41.071396, 50.629841>,  <42.042339, 41.018105, 50.468452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.211792, 41.071396, 50.629841>,  <42.494213, 41.160213, 50.898819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211792, 41.071396, 50.629841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656049, 0.152432, -0.739165,
		0.266633, -0.963047, 0.038049,
		-0.706050, -0.222048, -0.672449,
		41.999977, 41.004780, 50.428104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762299, 40.570770, 50.433907>,  <42.494213, 41.160213, 50.898819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762299, 40.570770, 50.433907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.479439, 40.780792, 50.244484>,  <42.309723, 40.906807, 50.130833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.479439, 40.780792, 50.244484>,  <42.762299, 40.570770, 50.433907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479439, 40.780792, 50.244484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640028, 0.190695, -0.744311,
		-0.300500, -0.829429, -0.470901,
		-0.707151, 0.525056, -0.473554,
		42.267292, 40.938309, 50.102417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802238, 40.375416, 49.771328>,  <42.762299, 40.570770, 50.433907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802238, 40.375416, 49.771328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607330, 40.724007, 49.749069>,  <42.490387, 40.933163, 49.735714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607330, 40.724007, 49.749069>,  <42.802238, 40.375416, 49.771328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607330, 40.724007, 49.749069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536261, 0.248327, -0.806696,
		-0.689199, -0.422917, -0.588342,
		-0.487266, 0.871479, -0.055647,
		42.461151, 40.985451, 49.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498390, 40.329731, 49.180710>,  <42.802238, 40.375416, 49.771328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498390, 40.329731, 49.180710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.510502, 40.722336, 49.256306>,  <42.517769, 40.957897, 49.301662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.510502, 40.722336, 49.256306>,  <42.498390, 40.329731, 49.180710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510502, 40.722336, 49.256306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239860, 0.176417, -0.954644,
		-0.970335, 0.074233, -0.230085,
		0.030276, 0.981512, 0.188989,
		42.519585, 41.016788, 49.313004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221779, 40.625885, 48.594517>,  <42.498390, 40.329731, 49.180710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221779, 40.625885, 48.594517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.372864, 40.949982, 48.773781>,  <42.463516, 41.144440, 48.881340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.372864, 40.949982, 48.773781>,  <42.221779, 40.625885, 48.594517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372864, 40.949982, 48.773781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337698, 0.330129, -0.881462,
		-0.862144, 0.484283, -0.148921,
		0.377714, 0.810237, 0.448160,
		42.486179, 41.193054, 48.908230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024334, 41.249088, 48.269951>,  <42.221779, 40.625885, 48.594517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024334, 41.249088, 48.269951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370163, 41.355492, 48.440483>,  <42.577660, 41.419334, 48.542801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370163, 41.355492, 48.440483>,  <42.024334, 41.249088, 48.269951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370163, 41.355492, 48.440483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348481, 0.293866, -0.890058,
		-0.362050, 0.918085, 0.161368,
		0.864570, 0.266012, 0.426329,
		42.629536, 41.435295, 48.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.641796, 43.717625, 51.903107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923691, 43.693237, 52.185844>,  <39.092827, 43.678604, 52.355488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923691, 43.693237, 52.185844>,  <38.641796, 43.717625, 51.903107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923691, 43.693237, 52.185844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657698, -0.429737, 0.618676,
		0.266038, -0.900894, -0.342949,
		0.704739, -0.060965, 0.706842,
		39.135113, 43.674946, 52.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556099, 43.075230, 52.085808>,  <38.641796, 43.717625, 51.903107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556099, 43.075230, 52.085808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.751804, 43.241470, 52.392506>,  <38.869228, 43.341213, 52.576523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.751804, 43.241470, 52.392506>,  <38.556099, 43.075230, 52.085808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751804, 43.241470, 52.392506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583999, -0.496828, 0.641956,
		0.647737, -0.761864, -0.000370,
		0.489267, 0.415602, 0.766741,
		38.898586, 43.366150, 52.622528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654408, 42.521698, 52.647720>,  <38.556099, 43.075230, 52.085808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654408, 42.521698, 52.647720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713821, 42.870758, 52.833805>,  <38.749470, 43.080193, 52.945454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713821, 42.870758, 52.833805>,  <38.654408, 42.521698, 52.647720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713821, 42.870758, 52.833805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406003, -0.375140, 0.833326,
		0.901720, -0.312652, 0.298578,
		0.148532, 0.872650, 0.465209,
		38.758381, 43.132553, 52.973370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062420, 42.459972, 53.307945>,  <38.654408, 42.521698, 52.647720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062420, 42.459972, 53.307945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.855850, 42.800499, 53.344978>,  <38.731907, 43.004814, 53.367199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.855850, 42.800499, 53.344978>,  <39.062420, 42.459972, 53.307945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855850, 42.800499, 53.344978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416935, -0.344398, 0.841163,
		0.747979, 0.395795, 0.532798,
		-0.516423, 0.851314, 0.092582,
		38.700924, 43.055893, 53.372753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135578, 42.615185, 53.939911>,  <39.062420, 42.459972, 53.307945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135578, 42.615185, 53.939911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806019, 42.816093, 53.834900>,  <38.608284, 42.936638, 53.771893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806019, 42.816093, 53.834900>,  <39.135578, 42.615185, 53.939911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806019, 42.816093, 53.834900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453955, -0.307540, 0.836268,
		0.339297, 0.808172, 0.481390,
		-0.823895, 0.502273, -0.262526,
		38.558849, 42.966774, 53.756142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887695, 42.839695, 54.599125>,  <39.135578, 42.615185, 53.939911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887695, 42.839695, 54.599125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.579853, 42.885345, 54.347832>,  <38.395149, 42.912735, 54.197056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.579853, 42.885345, 54.347832>,  <38.887695, 42.839695, 54.599125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579853, 42.885345, 54.347832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636483, -0.215637, 0.740534,
		-0.050953, 0.969781, 0.238598,
		-0.769606, 0.114131, -0.628236,
		38.348972, 42.919586, 54.159363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484013, 43.218311, 54.965111>,  <38.887695, 42.839695, 54.599125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484013, 43.218311, 54.965111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242371, 43.069275, 54.683338>,  <38.097385, 42.979855, 54.514275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242371, 43.069275, 54.683338>,  <38.484013, 43.218311, 54.965111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242371, 43.069275, 54.683338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737726, -0.072798, 0.671164,
		-0.301352, 0.925136, -0.230892,
		-0.604109, -0.372591, -0.704435,
		38.061138, 42.957497, 54.472008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899220, 43.542618, 55.107510>,  <38.484013, 43.218311, 54.965111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899220, 43.542618, 55.107510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807320, 43.224289, 54.883411>,  <37.752182, 43.033291, 54.748951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807320, 43.224289, 54.883411>,  <37.899220, 43.542618, 55.107510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807320, 43.224289, 54.883411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728378, -0.241200, 0.641318,
		-0.645509, 0.555413, -0.524247,
		-0.229748, -0.795826, -0.560247,
		37.738396, 42.985542, 54.715336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247356, 43.432178, 55.171810>,  <37.899220, 43.542618, 55.107510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247356, 43.432178, 55.171810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371441, 43.069977, 55.055996>,  <37.445892, 42.852657, 54.986507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371441, 43.069977, 55.055996>,  <37.247356, 43.432178, 55.171810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371441, 43.069977, 55.055996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607010, -0.423058, 0.672726,
		-0.731648, -0.032931, -0.680886,
		0.310208, -0.905504, -0.289540,
		37.464504, 42.798325, 54.969135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697781, 43.049923, 55.141510>,  <37.247356, 43.432178, 55.171810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697781, 43.049923, 55.141510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987274, 42.774246, 55.155487>,  <37.160969, 42.608841, 55.163872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987274, 42.774246, 55.155487>,  <36.697781, 43.049923, 55.141510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987274, 42.774246, 55.155487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551967, -0.547755, 0.628726,
		-0.414173, -0.474319, -0.776841,
		0.723736, -0.689192, 0.034943,
		37.204395, 42.567490, 55.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370991, 42.438210, 55.220795>,  <36.697781, 43.049923, 55.141510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370991, 42.438210, 55.220795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735992, 42.319313, 55.333206>,  <36.954994, 42.247974, 55.400654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735992, 42.319313, 55.333206>,  <36.370991, 42.438210, 55.220795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735992, 42.319313, 55.333206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408484, -0.625555, 0.664697,
		-0.021775, -0.721337, -0.692242,
		0.912506, -0.297244, 0.281033,
		37.009743, 42.230141, 55.417515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371754, 41.693134, 55.195663>,  <36.370991, 42.438210, 55.220795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371754, 41.693134, 55.195663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647793, 41.817719, 55.456966>,  <36.813416, 41.892467, 55.613750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647793, 41.817719, 55.456966>,  <36.371754, 41.693134, 55.195663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647793, 41.817719, 55.456966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492755, -0.458889, 0.739333,
		0.530048, -0.832113, -0.163206,
		0.690102, 0.311462, 0.653262,
		36.854824, 41.911156, 55.652946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529964, 41.076115, 55.548130>,  <36.371754, 41.693134, 55.195663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529964, 41.076115, 55.548130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630993, 41.393707, 55.769329>,  <36.691608, 41.584263, 55.902050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630993, 41.393707, 55.769329>,  <36.529964, 41.076115, 55.548130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630993, 41.393707, 55.769329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576748, -0.335358, 0.744914,
		0.776898, -0.507083, 0.373224,
		0.252569, 0.793979, 0.552998,
		36.706764, 41.631901, 55.935230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887436, 40.945377, 56.256275>,  <36.529964, 41.076115, 55.548130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887436, 40.945377, 56.256275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648556, 41.265930, 56.242767>,  <36.505226, 41.458260, 56.234661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648556, 41.265930, 56.242767>,  <36.887436, 40.945377, 56.256275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648556, 41.265930, 56.242767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524671, -0.358457, 0.772159,
		0.606686, 0.478856, 0.634531,
		-0.597205, 0.801378, -0.033771,
		36.469395, 41.506344, 56.232635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395554, 40.712593, 56.775631>,  <36.887436, 40.945377, 56.256275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395554, 40.712593, 56.775631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385399, 40.317986, 56.840302>,  <36.379307, 40.081223, 56.879105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385399, 40.317986, 56.840302>,  <36.395554, 40.712593, 56.775631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385399, 40.317986, 56.840302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771856, -0.122118, -0.623960,
		0.635291, 0.108948, 0.764549,
		-0.025386, -0.986518, 0.161673,
		36.377785, 40.022030, 56.888802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049229, 40.457802, 56.918350>,  <36.395554, 40.712593, 56.775631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049229, 40.457802, 56.918350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885147, 40.110474, 56.806816>,  <36.786697, 39.902077, 56.739895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885147, 40.110474, 56.806816>,  <37.049229, 40.457802, 56.918350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885147, 40.110474, 56.806816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844079, -0.245701, -0.476615,
		0.345346, -0.430868, 0.833720,
		-0.410204, -0.868323, -0.278834,
		36.762085, 39.849976, 56.723167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599701, 39.983749, 56.939140>,  <37.049229, 40.457802, 56.918350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599701, 39.983749, 56.939140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327457, 39.830589, 56.689293>,  <37.164112, 39.738693, 56.539383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327457, 39.830589, 56.689293>,  <37.599701, 39.983749, 56.939140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327457, 39.830589, 56.689293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726830, -0.245691, -0.641369,
		0.092117, -0.890518, 0.445525,
		-0.680611, -0.382903, -0.624623,
		37.123276, 39.715717, 56.501907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880249, 39.416241, 56.606220>,  <37.599701, 39.983749, 56.939140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880249, 39.416241, 56.606220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573433, 39.471092, 56.355511>,  <37.389343, 39.504002, 56.205086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573433, 39.471092, 56.355511>,  <37.880249, 39.416241, 56.606220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573433, 39.471092, 56.355511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621277, -0.085162, -0.778949,
		-0.160198, -0.986885, -0.019875,
		-0.767041, 0.137134, -0.626772,
		37.343319, 39.512230, 56.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945724, 38.900597, 56.071560>,  <37.880249, 39.416241, 56.606220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945724, 38.900597, 56.071560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721287, 39.189590, 55.909969>,  <37.586624, 39.362988, 55.813015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721287, 39.189590, 55.909969>,  <37.945724, 38.900597, 56.071560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721287, 39.189590, 55.909969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560364, -0.027667, -0.827784,
		-0.609235, -0.690837, -0.389329,
		-0.561092, 0.722481, -0.403975,
		37.552959, 39.406334, 55.788776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795998, 38.641418, 55.339275>,  <37.945724, 38.900597, 56.071560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795998, 38.641418, 55.339275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742867, 39.037582, 55.354473>,  <37.710987, 39.275280, 55.363590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742867, 39.037582, 55.354473>,  <37.795998, 38.641418, 55.339275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742867, 39.037582, 55.354473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476084, 0.097374, -0.873992,
		-0.869310, -0.098004, -0.484453,
		-0.132828, 0.990411, 0.037991,
		37.703018, 39.334705, 55.365871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517902, 38.898823, 54.708736>,  <37.795998, 38.641418, 55.339275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517902, 38.898823, 54.708736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670990, 39.231941, 54.868729>,  <37.762844, 39.431812, 54.964725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670990, 39.231941, 54.868729>,  <37.517902, 38.898823, 54.708736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670990, 39.231941, 54.868729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547049, 0.144604, -0.824516,
		-0.744489, 0.534366, -0.400236,
		0.382718, 0.832792, 0.399980,
		37.785805, 39.481777, 54.988724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584740, 39.399197, 54.196262>,  <37.517902, 38.898823, 54.708736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584740, 39.399197, 54.196262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824818, 39.558640, 54.473648>,  <37.968864, 39.654305, 54.640079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824818, 39.558640, 54.473648>,  <37.584740, 39.399197, 54.196262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824818, 39.558640, 54.473648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610483, 0.331884, -0.719141,
		-0.516800, 0.854967, -0.044147,
		0.600190, 0.398603, 0.693460,
		38.004875, 39.678219, 54.681686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670925, 40.093979, 54.073025>,  <37.584740, 39.399197, 54.196262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670925, 40.093979, 54.073025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985146, 39.941628, 54.268105>,  <38.173676, 39.850216, 54.385151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985146, 39.941628, 54.268105>,  <37.670925, 40.093979, 54.073025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985146, 39.941628, 54.268105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601139, 0.282744, -0.747455,
		0.146792, 0.880336, 0.451067,
		0.785547, -0.380874, 0.487699,
		38.220810, 39.827366, 54.414413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177086, 40.622028, 54.051823>,  <37.670925, 40.093979, 54.073025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177086, 40.622028, 54.051823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374107, 40.285004, 54.138985>,  <38.492321, 40.082790, 54.191280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374107, 40.285004, 54.138985>,  <38.177086, 40.622028, 54.051823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374107, 40.285004, 54.138985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585292, 0.135406, -0.799437,
		0.644068, 0.521304, 0.559838,
		0.492555, -0.842560, 0.217905,
		38.521873, 40.032234, 54.204357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956833, 40.791660, 54.077316>,  <38.177086, 40.622028, 54.051823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956833, 40.791660, 54.077316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.973942, 40.393433, 54.043831>,  <38.984207, 40.154495, 54.023739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.973942, 40.393433, 54.043831>,  <38.956833, 40.791660, 54.077316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973942, 40.393433, 54.043831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716339, 0.088962, -0.692057,
		0.696440, -0.030366, 0.716972,
		0.042768, -0.995572, -0.083709,
		38.986771, 40.094761, 54.018719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652256, 40.632347, 54.208996>,  <38.956833, 40.791660, 54.077316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652256, 40.632347, 54.208996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486603, 40.338982, 53.993370>,  <39.387211, 40.162960, 53.863995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486603, 40.338982, 53.993370>,  <39.652256, 40.632347, 54.208996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486603, 40.338982, 53.993370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788236, 0.007183, -0.615331,
		0.455167, -0.679740, 0.575131,
		-0.414134, -0.733418, -0.539065,
		39.362362, 40.118958, 53.831650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275410, 40.223034, 54.058922>,  <39.652256, 40.632347, 54.208996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275410, 40.223034, 54.058922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985703, 40.102020, 53.811081>,  <39.811878, 40.029411, 53.662376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985703, 40.102020, 53.811081>,  <40.275410, 40.223034, 54.058922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985703, 40.102020, 53.811081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667091, -0.080118, -0.740656,
		0.174429, -0.949766, 0.259843,
		-0.724268, -0.302531, -0.619605,
		39.768421, 40.011261, 53.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507843, 39.525162, 53.772369>,  <40.275410, 40.223034, 54.058922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507843, 39.525162, 53.772369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259483, 39.680244, 53.499851>,  <40.110466, 39.773293, 53.336338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259483, 39.680244, 53.499851>,  <40.507843, 39.525162, 53.772369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259483, 39.680244, 53.499851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718415, -0.066282, -0.692449,
		-0.313623, -0.919398, -0.237377,
		-0.620903, 0.387704, -0.681297,
		40.073212, 39.796555, 53.295464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345585, 38.824165, 53.573181>,  <40.507843, 39.525162, 53.772369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345585, 38.824165, 53.573181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.618805, 38.610825, 53.772774>,  <40.782738, 38.482822, 53.892529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.618805, 38.610825, 53.772774>,  <40.345585, 38.824165, 53.573181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618805, 38.610825, 53.772774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405338, 0.291503, 0.866445,
		-0.607571, -0.794082, -0.017075,
		0.683051, -0.533349, 0.498980,
		40.823719, 38.450821, 53.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996830, 38.335026, 54.046188>,  <40.345585, 38.824165, 53.573181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996830, 38.335026, 54.046188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367157, 38.365501, 54.194275>,  <40.589352, 38.383789, 54.283127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367157, 38.365501, 54.194275>,  <39.996830, 38.335026, 54.046188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367157, 38.365501, 54.194275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377795, 0.156597, 0.912550,
		0.011558, -0.984719, 0.173766,
		0.925817, 0.076195, 0.370213,
		40.644901, 38.388359, 54.305340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025902, 37.774151, 54.601036>,  <39.996830, 38.335026, 54.046188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025902, 37.774151, 54.601036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315033, 38.039276, 54.679218>,  <40.488510, 38.198349, 54.726128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315033, 38.039276, 54.679218>,  <40.025902, 37.774151, 54.601036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315033, 38.039276, 54.679218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424473, 0.202680, 0.882464,
		0.545292, -0.720834, 0.427848,
		0.722827, 0.662811, 0.195455,
		40.531879, 38.238121, 54.737854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448097, 37.469933, 55.154057>,  <40.025902, 37.774151, 54.601036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448097, 37.469933, 55.154057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491135, 37.867386, 55.140732>,  <40.516956, 38.105858, 55.132736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491135, 37.867386, 55.140732>,  <40.448097, 37.469933, 55.154057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491135, 37.867386, 55.140732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285695, 0.062997, 0.956248,
		0.952262, -0.093364, 0.290655,
		0.107590, 0.993637, -0.033316,
		40.523411, 38.165478, 55.130737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837410, 37.652706, 55.746368>,  <40.448097, 37.469933, 55.154057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837410, 37.652706, 55.746368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.691700, 38.012238, 55.648869>,  <40.604275, 38.227955, 55.590366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.691700, 38.012238, 55.648869>,  <40.837410, 37.652706, 55.746368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691700, 38.012238, 55.648869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253329, 0.156231, 0.954681,
		0.896176, 0.409512, 0.170789,
		-0.364271, 0.898828, -0.243751,
		40.582420, 38.281887, 55.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944675, 37.969940, 56.327435>,  <40.837410, 37.652706, 55.746368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944675, 37.969940, 56.327435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678635, 38.186249, 56.121445>,  <40.519009, 38.316036, 55.997849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678635, 38.186249, 56.121445>,  <40.944675, 37.969940, 56.327435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678635, 38.186249, 56.121445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456528, 0.251286, 0.853485,
		0.590951, 0.802756, 0.079748,
		-0.665101, 0.540775, -0.514979,
		40.479103, 38.348480, 55.966949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928444, 38.598789, 56.627953>,  <40.944675, 37.969940, 56.327435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928444, 38.598789, 56.627953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.574593, 38.543251, 56.449890>,  <40.362282, 38.509930, 56.343052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.574593, 38.543251, 56.449890>,  <40.928444, 38.598789, 56.627953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574593, 38.543251, 56.449890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463746, 0.162110, 0.871011,
		-0.048773, 0.976955, -0.207796,
		-0.884625, -0.138846, -0.445152,
		40.309204, 38.501598, 56.316345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262653, 39.221169, 56.555473>,  <40.928444, 38.598789, 56.627953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262653, 39.221169, 56.555473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603226, 39.271095, 56.759232>,  <41.807568, 39.301052, 56.881489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603226, 39.271095, 56.759232>,  <41.262653, 39.221169, 56.555473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603226, 39.271095, 56.759232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515794, -0.023378, -0.856394,
		-0.094986, 0.991904, -0.084285,
		0.851431, 0.124819, 0.509397,
		41.858654, 39.308540, 56.912052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586750, 39.738579, 56.161789>,  <41.262653, 39.221169, 56.555473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586750, 39.738579, 56.161789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.879524, 39.581802, 56.384735>,  <42.055187, 39.487736, 56.518501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.879524, 39.581802, 56.384735>,  <41.586750, 39.738579, 56.161789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879524, 39.581802, 56.384735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596299, -0.027352, -0.802296,
		0.329701, 0.919582, 0.213697,
		0.731932, -0.391945, 0.557364,
		42.099102, 39.464218, 56.551945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182220, 40.162106, 56.046581>,  <41.586750, 39.738579, 56.161789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182220, 40.162106, 56.046581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316597, 39.808220, 56.175842>,  <42.397221, 39.595890, 56.253399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316597, 39.808220, 56.175842>,  <42.182220, 40.162106, 56.046581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316597, 39.808220, 56.175842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598201, -0.064602, -0.798738,
		0.727530, 0.461637, 0.507534,
		0.335939, -0.884713, 0.323152,
		42.417377, 39.542805, 56.272789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880688, 40.320972, 56.105934>,  <42.182220, 40.162106, 56.046581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880688, 40.320972, 56.105934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.847710, 39.923805, 56.071735>,  <42.827923, 39.685505, 56.051216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.847710, 39.923805, 56.071735>,  <42.880688, 40.320972, 56.105934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847710, 39.923805, 56.071735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707847, 0.002050, -0.706363,
		0.701539, -0.118751, 0.702667,
		-0.082441, -0.992922, -0.085496,
		42.822979, 39.625927, 56.046085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626751, 40.035641, 56.078789>,  <42.880688, 40.320972, 56.105934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626751, 40.035641, 56.078789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387016, 39.762512, 55.911674>,  <43.243176, 39.598633, 55.811405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387016, 39.762512, 55.911674>,  <43.626751, 40.035641, 56.078789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387016, 39.762512, 55.911674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692212, -0.179955, -0.698898,
		0.402041, -0.708074, 0.580513,
		-0.599337, -0.682823, -0.417788,
		43.207214, 39.557667, 55.786339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113689, 39.505783, 55.900635>,  <43.626751, 40.035641, 56.078789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113689, 39.505783, 55.900635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786774, 39.412567, 55.689835>,  <43.590626, 39.356636, 55.563354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786774, 39.412567, 55.689835>,  <44.113689, 39.505783, 55.900635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786774, 39.412567, 55.689835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575051, -0.388259, -0.720118,
		-0.036794, -0.891597, 0.451332,
		-0.817290, -0.233043, -0.527000,
		43.541588, 39.342655, 55.531734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292816, 38.845989, 55.621143>,  <44.113689, 39.505783, 55.900635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292816, 38.845989, 55.621143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.993149, 38.974419, 55.389400>,  <43.813347, 39.051476, 55.250355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.993149, 38.974419, 55.389400>,  <44.292816, 38.845989, 55.621143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993149, 38.974419, 55.389400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564251, -0.148772, -0.812088,
		-0.346932, -0.935296, -0.069711,
		-0.749172, 0.321074, -0.579356,
		43.768398, 39.070740, 55.215595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.559177, 43.173149, 57.341541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243568, 43.122368, 57.101097>,  <39.054203, 43.091900, 56.956829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243568, 43.122368, 57.101097>,  <39.559177, 43.173149, 57.341541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243568, 43.122368, 57.101097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614151, -0.189080, -0.766203,
		-0.016381, -0.973720, 0.227160,
		-0.789018, -0.126959, -0.601109,
		39.006863, 43.084282, 56.920765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801319, 42.714252, 56.843109>,  <39.559177, 43.173149, 57.341541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801319, 42.714252, 56.843109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505310, 42.928627, 56.680557>,  <39.327705, 43.057251, 56.583027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505310, 42.928627, 56.680557>,  <39.801319, 42.714252, 56.843109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505310, 42.928627, 56.680557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553576, 0.142169, -0.820574,
		-0.382002, -0.832201, -0.401890,
		-0.740019, 0.535938, -0.406378,
		39.283306, 43.089409, 56.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561016, 42.393646, 56.184830>,  <39.801319, 42.714252, 56.843109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561016, 42.393646, 56.184830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.492157, 42.787445, 56.171333>,  <39.450844, 43.023724, 56.163235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.492157, 42.787445, 56.171333>,  <39.561016, 42.393646, 56.184830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492157, 42.787445, 56.171333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642282, 0.086203, -0.761605,
		-0.746887, -0.152780, -0.647162,
		-0.172145, 0.984493, -0.033744,
		39.440514, 43.082794, 56.161209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812191, 42.558529, 55.523380>,  <39.561016, 42.393646, 56.184830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812191, 42.558529, 55.523380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747589, 42.916023, 55.690788>,  <39.708828, 43.130520, 55.791233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747589, 42.916023, 55.690788>,  <39.812191, 42.558529, 55.523380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747589, 42.916023, 55.690788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573006, 0.430202, -0.697560,
		-0.803481, 0.127160, -0.581591,
		-0.161501, 0.893732, 0.418522,
		39.699139, 43.184143, 55.816345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544960, 43.118885, 55.059437>,  <39.812191, 42.558529, 55.523380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544960, 43.118885, 55.059437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712135, 43.336693, 55.350319>,  <39.812439, 43.467377, 55.524849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712135, 43.336693, 55.350319>,  <39.544960, 43.118885, 55.059437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712135, 43.336693, 55.350319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625728, 0.407786, -0.664962,
		-0.658628, 0.732946, -0.170291,
		0.417939, 0.544519, 0.727204,
		39.837517, 43.500050, 55.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659035, 43.829273, 54.757244>,  <39.544960, 43.118885, 55.059437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659035, 43.829273, 54.757244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887306, 43.811836, 55.085251>,  <40.024269, 43.801373, 55.282055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887306, 43.811836, 55.085251>,  <39.659035, 43.829273, 54.757244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887306, 43.811836, 55.085251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798566, 0.262177, -0.541807,
		-0.191369, 0.964034, 0.184433,
		0.570675, -0.043596, 0.820018,
		40.058510, 43.798756, 55.331257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034054, 44.409805, 54.778358>,  <39.659035, 43.829273, 54.757244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034054, 44.409805, 54.778358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239796, 44.143661, 54.994781>,  <40.363239, 43.983974, 55.124634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239796, 44.143661, 54.994781>,  <40.034054, 44.409805, 54.778358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239796, 44.143661, 54.994781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854299, 0.342407, -0.391063,
		0.074936, 0.663366, 0.744534,
		0.514351, -0.665359, 0.541054,
		40.394100, 43.944054, 55.157097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485023, 44.892639, 54.976612>,  <40.034054, 44.409805, 54.778358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485023, 44.892639, 54.976612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.634964, 44.532883, 55.066566>,  <40.724930, 44.317028, 55.120541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.634964, 44.532883, 55.066566>,  <40.485023, 44.892639, 54.976612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634964, 44.532883, 55.066566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888442, 0.279194, -0.364310,
		0.264871, 0.336363, 0.903716,
		0.374853, -0.899395, 0.224889,
		40.747421, 44.263065, 55.134033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175255, 44.953617, 55.421726>,  <40.485023, 44.892639, 54.976612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175255, 44.953617, 55.421726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136139, 44.606674, 55.226532>,  <41.112667, 44.398510, 55.109417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136139, 44.606674, 55.226532>,  <41.175255, 44.953617, 55.421726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136139, 44.606674, 55.226532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853712, 0.178890, -0.489054,
		0.511480, -0.464423, 0.722980,
		-0.097794, -0.867358, -0.487982,
		41.106800, 44.346466, 55.080139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815647, 44.639194, 55.497269>,  <41.175255, 44.953617, 55.421726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815647, 44.639194, 55.497269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.639065, 44.449127, 55.192814>,  <41.533115, 44.335087, 55.010139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.639065, 44.449127, 55.192814>,  <41.815647, 44.639194, 55.497269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639065, 44.449127, 55.192814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834707, 0.093756, -0.542655,
		0.329216, -0.874884, 0.355240,
		-0.441454, -0.475172, -0.761137,
		41.506630, 44.306576, 54.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164352, 43.988335, 55.290146>,  <41.815647, 44.639194, 55.497269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164352, 43.988335, 55.290146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971115, 44.149857, 54.979389>,  <41.855175, 44.246769, 54.792934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971115, 44.149857, 54.979389>,  <42.164352, 43.988335, 55.290146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971115, 44.149857, 54.979389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867259, 0.098715, -0.487973,
		-0.120353, -0.909505, -0.397889,
		-0.483091, 0.403802, -0.776896,
		41.826187, 44.270996, 54.746319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488159, 43.738785, 54.788586>,  <42.164352, 43.988335, 55.290146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488159, 43.738785, 54.788586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.295212, 44.036522, 54.603859>,  <42.179443, 44.215164, 54.493023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.295212, 44.036522, 54.603859>,  <42.488159, 43.738785, 54.788586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295212, 44.036522, 54.603859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770331, 0.109459, -0.628179,
		-0.417031, -0.658764, -0.626191,
		-0.482365, 0.744344, -0.461819,
		42.150501, 44.259827, 54.465313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739532, 42.971710, 54.799034>,  <42.488159, 43.738785, 54.788586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739532, 42.971710, 54.799034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.062290, 42.881203, 55.017292>,  <43.255943, 42.826900, 55.148247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.062290, 42.881203, 55.017292>,  <42.739532, 42.971710, 54.799034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062290, 42.881203, 55.017292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588002, -0.395758, 0.705428,
		0.056328, -0.890044, -0.452380,
		0.806896, -0.226265, 0.545641,
		43.304359, 42.813324, 55.180984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617702, 42.360672, 55.048546>,  <42.739532, 42.971710, 54.799034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617702, 42.360672, 55.048546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885818, 42.544731, 55.281433>,  <43.046688, 42.655167, 55.421165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885818, 42.544731, 55.281433>,  <42.617702, 42.360672, 55.048546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885818, 42.544731, 55.281433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544958, -0.227326, 0.807059,
		0.503721, -0.858245, 0.098388,
		0.670288, 0.460150, 0.582216,
		43.086906, 42.682777, 55.456097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693424, 41.881134, 55.487965>,  <42.617702, 42.360672, 55.048546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693424, 41.881134, 55.487965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835045, 42.213295, 55.660049>,  <42.920017, 42.412590, 55.763298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835045, 42.213295, 55.660049>,  <42.693424, 41.881134, 55.487965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835045, 42.213295, 55.660049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405911, -0.277976, 0.870612,
		0.842546, -0.482869, 0.238651,
		0.354053, 0.830401, 0.430210,
		42.941261, 42.462414, 55.789112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049969, 41.686359, 56.137493>,  <42.693424, 41.881134, 55.487965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049969, 41.686359, 56.137493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984470, 42.079025, 56.176521>,  <42.945171, 42.314625, 56.199940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984470, 42.079025, 56.176521>,  <43.049969, 41.686359, 56.137493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984470, 42.079025, 56.176521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330559, -0.147787, 0.932142,
		0.929471, 0.120384, 0.348698,
		-0.163749, 0.981665, 0.097570,
		42.935345, 42.373524, 56.205791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225510, 41.878773, 56.888199>,  <43.049969, 41.686359, 56.137493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225510, 41.878773, 56.888199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.012218, 42.198013, 56.775986>,  <42.884243, 42.389557, 56.708656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.012218, 42.198013, 56.775986>,  <43.225510, 41.878773, 56.888199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012218, 42.198013, 56.775986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351405, 0.092685, 0.931624,
		0.769535, 0.595348, 0.231036,
		-0.533227, 0.798104, -0.280533,
		42.852249, 42.437443, 56.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356354, 42.442249, 57.408966>,  <43.225510, 41.878773, 56.888199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356354, 42.442249, 57.408966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.002953, 42.488174, 57.227310>,  <42.790913, 42.515732, 57.118317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.002953, 42.488174, 57.227310>,  <43.356354, 42.442249, 57.408966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002953, 42.488174, 57.227310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463988, -0.081293, 0.882104,
		0.064361, 0.990055, 0.125095,
		-0.883500, 0.114816, -0.454141,
		42.737904, 42.522617, 57.091068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015488, 43.012241, 57.773945>,  <43.356354, 42.442249, 57.408966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015488, 43.012241, 57.773945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706261, 42.837456, 57.590019>,  <42.520725, 42.732586, 57.479664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706261, 42.837456, 57.590019>,  <43.015488, 43.012241, 57.773945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706261, 42.837456, 57.590019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455139, -0.122798, 0.881912,
		-0.441827, 0.891058, -0.103948,
		-0.773070, -0.436964, -0.459810,
		42.474339, 42.706367, 57.452076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464649, 43.490490, 57.969101>,  <43.015488, 43.012241, 57.773945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464649, 43.490490, 57.969101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.328049, 43.139595, 57.834145>,  <42.246090, 42.929058, 57.753170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.328049, 43.139595, 57.834145>,  <42.464649, 43.490490, 57.969101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328049, 43.139595, 57.834145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512518, -0.127093, 0.849219,
		-0.787847, 0.462927, -0.406198,
		-0.341502, -0.877238, -0.337388,
		42.225597, 42.876423, 57.732929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772667, 43.560215, 58.018089>,  <42.464649, 43.490490, 57.969101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772667, 43.560215, 58.018089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.797043, 43.161873, 57.991062>,  <41.811668, 42.922867, 57.974846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.797043, 43.161873, 57.991062>,  <41.772667, 43.560215, 58.018089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797043, 43.161873, 57.991062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576359, -0.090379, 0.812184,
		-0.814921, -0.010553, -0.579476,
		0.060944, -0.995852, -0.067569,
		41.815327, 42.863117, 57.970791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106201, 43.373909, 58.103058>,  <41.772667, 43.560215, 58.018089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106201, 43.373909, 58.103058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.313404, 43.040154, 58.178387>,  <41.437725, 42.839901, 58.223583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.313404, 43.040154, 58.178387>,  <41.106201, 43.373909, 58.103058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313404, 43.040154, 58.178387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582605, -0.182966, 0.791894,
		-0.626291, -0.519922, -0.580896,
		0.518007, -0.834389, 0.188319,
		41.468807, 42.789837, 58.234882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619614, 42.889050, 58.430744>,  <41.106201, 43.373909, 58.103058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619614, 42.889050, 58.430744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992546, 42.776688, 58.521816>,  <41.216309, 42.709270, 58.576462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992546, 42.776688, 58.521816>,  <40.619614, 42.889050, 58.430744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992546, 42.776688, 58.521816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316420, -0.329054, 0.889720,
		-0.175009, -0.901562, -0.395674,
		0.932335, -0.280908, 0.227685,
		41.272247, 42.692413, 58.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683495, 42.155720, 58.670830>,  <40.619614, 42.889050, 58.430744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683495, 42.155720, 58.670830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.997398, 42.324036, 58.852859>,  <41.185741, 42.425026, 58.962078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.997398, 42.324036, 58.852859>,  <40.683495, 42.155720, 58.670830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997398, 42.324036, 58.852859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299464, -0.385415, 0.872798,
		0.542652, -0.821215, -0.176448,
		0.784761, 0.420786, 0.455071,
		41.232826, 42.450272, 58.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933548, 41.668591, 59.128059>,  <40.683495, 42.155720, 58.670830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933548, 41.668591, 59.128059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122185, 41.987564, 59.278633>,  <41.235367, 42.178947, 59.368977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122185, 41.987564, 59.278633>,  <40.933548, 41.668591, 59.128059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122185, 41.987564, 59.278633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174991, -0.333763, 0.926272,
		0.864280, -0.502694, -0.017856,
		0.471591, 0.797434, 0.376432,
		41.263660, 42.226795, 59.391563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448875, 41.453651, 59.588959>,  <40.933548, 41.668591, 59.128059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448875, 41.453651, 59.588959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344460, 41.827690, 59.684834>,  <41.281811, 42.052113, 59.742359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344460, 41.827690, 59.684834>,  <41.448875, 41.453651, 59.588959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344460, 41.827690, 59.684834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080194, -0.226427, 0.970721,
		0.961991, 0.272618, -0.015883,
		-0.261040, 0.935099, 0.239683,
		41.266148, 42.108219, 59.756737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170914, 40.848755, 59.388027>,  <41.448875, 41.453651, 59.588959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170914, 40.848755, 59.388027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984749, 40.497948, 59.435753>,  <40.873051, 40.287464, 59.464390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984749, 40.497948, 59.435753>,  <41.170914, 40.848755, 59.388027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984749, 40.497948, 59.435753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719516, -0.453395, -0.526051,
		0.515453, -0.158977, 0.842042,
		-0.465407, -0.877017, 0.119318,
		40.845127, 40.234844, 59.471550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642353, 40.408844, 59.496784>,  <41.170914, 40.848755, 59.388027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642353, 40.408844, 59.496784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.364246, 40.152283, 59.367043>,  <41.197384, 39.998344, 59.289200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.364246, 40.152283, 59.367043>,  <41.642353, 40.408844, 59.496784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364246, 40.152283, 59.367043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642983, -0.353363, -0.679491,
		0.321216, -0.680979, 0.658094,
		-0.695265, -0.641407, -0.324352,
		41.155666, 39.959862, 59.269737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012775, 39.735569, 59.521351>,  <41.642353, 40.408844, 59.496784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012775, 39.735569, 59.521351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708443, 39.718719, 59.262321>,  <41.525841, 39.708611, 59.106903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708443, 39.718719, 59.262321>,  <42.012775, 39.735569, 59.521351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708443, 39.718719, 59.262321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630004, -0.287284, -0.721501,
		-0.155645, -0.956918, 0.245115,
		-0.760835, -0.042126, -0.647576,
		41.480190, 39.706081, 59.068047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302509, 39.251350, 59.013927>,  <42.012775, 39.735569, 59.521351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302509, 39.251350, 59.013927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.984287, 39.405968, 58.827301>,  <41.793354, 39.498737, 58.715324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.984287, 39.405968, 58.827301>,  <42.302509, 39.251350, 59.013927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984287, 39.405968, 58.827301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434589, -0.172510, -0.883953,
		-0.422174, -0.905993, -0.030748,
		-0.795551, 0.386544, -0.466564,
		41.745621, 39.521931, 58.687332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064610, 38.740322, 58.514896>,  <42.302509, 39.251350, 59.013927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064610, 38.740322, 58.514896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.885563, 39.063332, 58.361252>,  <41.778133, 39.257137, 58.269066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.885563, 39.063332, 58.361252>,  <42.064610, 38.740322, 58.514896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885563, 39.063332, 58.361252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309279, -0.263236, -0.913812,
		-0.839037, -0.527838, -0.131921,
		-0.447619, 0.807523, -0.384114,
		41.751278, 39.305588, 58.246017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589931, 38.509834, 57.865955>,  <42.064610, 38.740322, 58.514896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589931, 38.509834, 57.865955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656784, 38.903717, 57.846249>,  <41.696896, 39.140045, 57.834423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656784, 38.903717, 57.846249>,  <41.589931, 38.509834, 57.865955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656784, 38.903717, 57.846249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131257, -0.071751, -0.988748,
		-0.977159, 0.158781, -0.141241,
		0.167129, 0.984703, -0.049271,
		41.706924, 39.199127, 57.831467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210072, 38.780930, 57.286415>,  <41.589931, 38.509834, 57.865955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210072, 38.780930, 57.286415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514137, 39.034927, 57.341457>,  <41.696575, 39.187328, 57.374485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514137, 39.034927, 57.341457>,  <41.210072, 38.780930, 57.286415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514137, 39.034927, 57.341457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262316, -0.106173, -0.959123,
		-0.594430, 0.765184, -0.247279,
		0.760160, 0.634997, 0.137608,
		41.742184, 39.225426, 57.382740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501446, 39.012886, 57.023563>,  <41.210072, 38.780930, 57.286415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501446, 39.012886, 57.023563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240356, 38.765305, 56.848816>,  <40.083702, 38.616756, 56.743969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240356, 38.765305, 56.848816>,  <40.501446, 39.012886, 57.023563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240356, 38.765305, 56.848816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643467, 0.148562, 0.750919,
		-0.399881, 0.771250, -0.495245,
		-0.652721, -0.618952, -0.436867,
		40.044540, 38.579620, 56.717754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877193, 39.362595, 56.882904>,  <40.501446, 39.012886, 57.023563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877193, 39.362595, 56.882904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.765388, 38.979149, 56.904572>,  <39.698303, 38.749081, 56.917572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.765388, 38.979149, 56.904572>,  <39.877193, 39.362595, 56.882904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765388, 38.979149, 56.904572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718980, 0.246369, 0.649900,
		-0.636349, 0.142707, -0.758086,
		-0.279514, -0.958612, 0.054173,
		39.681534, 38.691566, 56.920822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115692, 39.461250, 57.017956>,  <39.877193, 39.362595, 56.882904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115692, 39.461250, 57.017956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186157, 39.071663, 57.075027>,  <39.228436, 38.837910, 57.109268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186157, 39.071663, 57.075027>,  <39.115692, 39.461250, 57.017956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186157, 39.071663, 57.075027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708288, -0.024764, 0.705489,
		-0.683589, -0.225340, -0.694211,
		0.176166, -0.973966, 0.142677,
		39.239006, 38.779472, 57.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485420, 39.029331, 56.934258>,  <39.115692, 39.461250, 57.017956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485420, 39.029331, 56.934258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731773, 38.792358, 57.141991>,  <38.879585, 38.650173, 57.266628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731773, 38.792358, 57.141991>,  <38.485420, 39.029331, 56.934258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731773, 38.792358, 57.141991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620561, 0.041315, 0.783069,
		-0.485372, -0.804559, -0.342196,
		0.615888, -0.592434, 0.519331,
		38.916538, 38.614628, 57.297791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088356, 38.520290, 57.194962>,  <38.485420, 39.029331, 56.934258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088356, 38.520290, 57.194962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411880, 38.534607, 57.429756>,  <38.605995, 38.543198, 57.570633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411880, 38.534607, 57.429756>,  <38.088356, 38.520290, 57.194962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411880, 38.534607, 57.429756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584780, -0.056543, 0.809219,
		0.062155, -0.997758, -0.024800,
		0.808807, 0.035795, 0.586984,
		38.654522, 38.545345, 57.605850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043362, 37.905128, 57.650894>,  <38.088356, 38.520290, 57.194962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043362, 37.905128, 57.650894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283165, 38.173676, 57.825188>,  <38.427048, 38.334805, 57.929764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283165, 38.173676, 57.825188>,  <38.043362, 37.905128, 57.650894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283165, 38.173676, 57.825188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649615, 0.090131, 0.754902,
		0.467542, -0.735625, 0.490163,
		0.599504, 0.671365, 0.435733,
		38.463017, 38.375084, 57.955906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894932, 37.840828, 58.387070>,  <38.043362, 37.905128, 57.650894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894932, 37.840828, 58.387070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055855, 38.205482, 58.353416>,  <38.152409, 38.424274, 58.333225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055855, 38.205482, 58.353416>,  <37.894932, 37.840828, 58.387070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055855, 38.205482, 58.353416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583671, 0.326196, 0.743589,
		0.705323, -0.250043, 0.663324,
		0.402303, 0.911633, -0.084131,
		38.176544, 38.478973, 58.328178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045528, 38.096500, 59.047867>,  <37.894932, 37.840828, 58.387070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045528, 38.096500, 59.047867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985985, 38.423698, 58.825615>,  <37.950260, 38.620018, 58.692265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985985, 38.423698, 58.825615>,  <38.045528, 38.096500, 59.047867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985985, 38.423698, 58.825615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429658, 0.452580, 0.781387,
		0.890638, 0.355046, 0.284088,
		-0.148856, 0.817993, -0.555634,
		37.941326, 38.669098, 58.658924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210735, 38.703686, 59.506134>,  <38.045528, 38.096500, 59.047867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210735, 38.703686, 59.506134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998825, 38.862137, 59.206154>,  <37.871681, 38.957207, 59.026165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998825, 38.862137, 59.206154>,  <38.210735, 38.703686, 59.506134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998825, 38.862137, 59.206154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528712, 0.537152, 0.657215,
		0.663179, 0.744681, -0.075130,
		-0.529771, 0.396129, -0.749950,
		37.839893, 38.980976, 58.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<47.105915, 40.946243, 46.276131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.795258, 41.146141, 46.122730>,  <46.608864, 41.266079, 46.030689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.795258, 41.146141, 46.122730>,  <47.105915, 40.946243, 46.276131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795258, 41.146141, 46.122730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489288, -0.095118, 0.866919,
		0.396760, 0.860934, 0.318393,
		-0.776645, 0.499745, -0.383506,
		46.562263, 41.296066, 46.007679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003834, 41.557087, 46.655327>,  <47.105915, 40.946243, 46.276131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003834, 41.557087, 46.655327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.680328, 41.414421, 46.468269>,  <46.486225, 41.328823, 46.356033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.680328, 41.414421, 46.468269>,  <47.003834, 41.557087, 46.655327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.680328, 41.414421, 46.468269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454175, -0.126425, 0.881897,
		-0.373661, 0.925640, -0.059739,
		-0.808766, -0.356663, -0.467642,
		46.437698, 41.307423, 46.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432140, 41.860344, 46.956326>,  <47.003834, 41.557087, 46.655327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432140, 41.860344, 46.956326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.284744, 41.539146, 46.768955>,  <46.196308, 41.346428, 46.656532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.284744, 41.539146, 46.768955>,  <46.432140, 41.860344, 46.956326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284744, 41.539146, 46.768955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505250, -0.249980, 0.825974,
		-0.780346, 0.541033, -0.313596,
		-0.368487, -0.802990, -0.468428,
		46.174198, 41.298248, 46.628426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803097, 41.696484, 47.364933>,  <46.432140, 41.860344, 46.956326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803097, 41.696484, 47.364933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.861946, 41.373772, 47.136032>,  <45.897255, 41.180145, 46.998692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.861946, 41.373772, 47.136032>,  <45.803097, 41.696484, 47.364933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861946, 41.373772, 47.136032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502500, -0.559286, 0.659312,
		-0.851967, 0.190556, -0.487688,
		0.147122, -0.806776, -0.572248,
		45.906082, 41.131741, 46.964359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231590, 41.384800, 47.319679>,  <45.803097, 41.696484, 47.364933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231590, 41.384800, 47.319679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.498001, 41.093979, 47.252987>,  <45.657848, 40.919487, 47.212971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.498001, 41.093979, 47.252987>,  <45.231590, 41.384800, 47.319679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498001, 41.093979, 47.252987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522990, -0.614537, 0.590614,
		-0.531870, -0.306168, -0.789541,
		0.666030, -0.727052, -0.166731,
		45.697811, 40.875862, 47.202969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791710, 40.759861, 47.125088>,  <45.231590, 41.384800, 47.319679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791710, 40.759861, 47.125088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.149513, 40.654579, 47.269630>,  <45.364197, 40.591408, 47.356354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.149513, 40.654579, 47.269630>,  <44.791710, 40.759861, 47.125088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149513, 40.654579, 47.269630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446924, -0.507131, 0.736938,
		-0.010713, -0.820695, -0.571266,
		0.894508, -0.263207, 0.361355,
		45.417866, 40.575615, 47.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689644, 40.034561, 47.309746>,  <44.791710, 40.759861, 47.125088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689644, 40.034561, 47.309746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.013454, 40.150551, 47.513931>,  <45.207741, 40.220146, 47.636444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.013454, 40.150551, 47.513931>,  <44.689644, 40.034561, 47.309746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013454, 40.150551, 47.513931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345520, -0.467632, 0.813595,
		0.474634, -0.835005, -0.278369,
		0.809530, 0.289978, 0.510465,
		45.256313, 40.237545, 47.667072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710037, 39.458046, 47.642506>,  <44.689644, 40.034561, 47.309746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710037, 39.458046, 47.642506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.938576, 39.710945, 47.851818>,  <45.075699, 39.862686, 47.977406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.938576, 39.710945, 47.851818>,  <44.710037, 39.458046, 47.642506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938576, 39.710945, 47.851818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158582, -0.540534, 0.826242,
		0.805241, -0.555055, -0.208570,
		0.571349, 0.632248, 0.523281,
		45.109982, 39.900620, 48.008804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197723, 39.056541, 47.959869>,  <44.710037, 39.458046, 47.642506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197723, 39.056541, 47.959869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.178520, 39.393364, 48.174767>,  <45.167000, 39.595459, 48.303707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.178520, 39.393364, 48.174767>,  <45.197723, 39.056541, 47.959869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178520, 39.393364, 48.174767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085677, -0.539355, 0.837708,
		0.995166, -0.005811, 0.098039,
		-0.048010, 0.842058, 0.537246,
		45.164116, 39.645981, 48.335941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502853, 38.933239, 48.627693>,  <45.197723, 39.056541, 47.959869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502853, 38.933239, 48.627693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.344872, 39.292267, 48.706055>,  <45.250080, 39.507683, 48.753071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.344872, 39.292267, 48.706055>,  <45.502853, 38.933239, 48.627693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344872, 39.292267, 48.706055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277210, -0.319733, 0.906050,
		0.875879, 0.303545, 0.375096,
		-0.394957, 0.897570, 0.195901,
		45.226383, 39.561539, 48.764824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859577, 39.378956, 49.164696>,  <45.502853, 38.933239, 48.627693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859577, 39.378956, 49.164696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.471375, 39.474655, 49.152847>,  <45.238453, 39.532074, 49.145737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.471375, 39.474655, 49.152847>,  <45.859577, 39.378956, 49.164696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471375, 39.474655, 49.152847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100192, -0.288531, 0.952214,
		0.219270, 0.927097, 0.303992,
		-0.970506, 0.239249, -0.029622,
		45.180222, 39.546429, 49.143959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802654, 39.581974, 49.769520>,  <45.859577, 39.378956, 49.164696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802654, 39.581974, 49.769520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.423576, 39.534515, 49.651001>,  <45.196129, 39.506039, 49.579891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.423576, 39.534515, 49.651001>,  <45.802654, 39.581974, 49.769520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423576, 39.534515, 49.651001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246253, -0.318776, 0.915282,
		-0.203050, 0.940375, 0.272885,
		-0.947697, -0.118649, -0.296298,
		45.139267, 39.498920, 49.562111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357922, 40.097931, 49.930023>,  <45.802654, 39.581974, 49.769520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357922, 40.097931, 49.930023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623474, 40.135979, 50.226730>,  <46.782806, 40.158810, 50.404755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623474, 40.135979, 50.226730>,  <46.357922, 40.097931, 49.930023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623474, 40.135979, 50.226730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669803, 0.365512, -0.646347,
		-0.332607, 0.925933, 0.178942,
		0.663880, 0.095124, 0.741765,
		46.822639, 40.164516, 50.449261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604500, 40.804588, 49.957355>,  <46.357922, 40.097931, 49.930023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604500, 40.804588, 49.957355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892082, 40.580818, 50.122345>,  <47.064632, 40.446556, 50.221340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892082, 40.580818, 50.122345>,  <46.604500, 40.804588, 49.957355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892082, 40.580818, 50.122345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668104, 0.392587, -0.632070,
		0.191666, 0.730009, 0.656011,
		0.718958, -0.559430, 0.412477,
		47.107769, 40.412991, 50.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084362, 41.201923, 50.128998>,  <46.604500, 40.804588, 49.957355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084362, 41.201923, 50.128998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.289948, 40.859062, 50.115540>,  <47.413300, 40.653347, 50.107464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.289948, 40.859062, 50.115540>,  <47.084362, 41.201923, 50.128998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289948, 40.859062, 50.115540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647907, 0.413606, -0.639646,
		0.562188, 0.306958, 0.767933,
		0.513967, -0.857150, -0.033644,
		47.444138, 40.601917, 50.105446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765774, 41.496738, 50.164238>,  <47.084362, 41.201923, 50.128998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765774, 41.496738, 50.164238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.800423, 41.119118, 50.036945>,  <47.821213, 40.892548, 49.960571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.800423, 41.119118, 50.036945>,  <47.765774, 41.496738, 50.164238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800423, 41.119118, 50.036945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744350, 0.273639, -0.609151,
		0.662148, -0.184111, 0.726405,
		0.086621, -0.944047, -0.318232,
		47.826408, 40.835903, 49.941475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.470596, 41.373623, 50.153389>,  <47.765774, 41.496738, 50.164238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.470596, 41.373623, 50.153389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.331184, 41.106750, 49.890057>,  <48.247536, 40.946629, 49.732059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.331184, 41.106750, 49.890057>,  <48.470596, 41.373623, 50.153389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.331184, 41.106750, 49.890057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665583, 0.318362, -0.675015,
		0.659943, -0.673437, 0.333104,
		-0.348532, -0.667179, -0.658329,
		48.226624, 40.906597, 49.692558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.073494, 41.093197, 49.804710>,  <48.470596, 41.373623, 50.153389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.073494, 41.093197, 49.804710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.782616, 41.004875, 49.544731>,  <48.608089, 40.951881, 49.388744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.782616, 41.004875, 49.544731>,  <49.073494, 41.093197, 49.804710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.782616, 41.004875, 49.544731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613378, 0.216027, -0.759671,
		0.308145, -0.951093, -0.021658,
		-0.727196, -0.220804, -0.649947,
		48.564457, 40.938633, 49.349747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.406498, 40.638336, 49.236252>,  <49.073494, 41.093197, 49.804710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.406498, 40.638336, 49.236252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.064026, 40.791908, 49.097946>,  <48.858543, 40.884052, 49.014961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.064026, 40.791908, 49.097946>,  <49.406498, 40.638336, 49.236252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.064026, 40.791908, 49.097946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449046, 0.221918, -0.865511,
		-0.255561, -0.896299, -0.362403,
		-0.856181, 0.383927, -0.345766,
		48.807171, 40.907085, 48.994217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.305622, 40.278610, 48.579994>,  <49.406498, 40.638336, 49.236252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.305622, 40.278610, 48.579994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.097687, 40.620140, 48.569023>,  <48.972923, 40.825058, 48.562443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.097687, 40.620140, 48.569023>,  <49.305622, 40.278610, 48.579994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.097687, 40.620140, 48.569023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459495, 0.252407, -0.851560,
		-0.720160, -0.455276, -0.523539,
		-0.519840, 0.853823, -0.027424,
		48.941734, 40.876286, 48.560795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.027611, 40.318516, 47.945049>,  <49.305622, 40.278610, 48.579994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.027611, 40.318516, 47.945049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.012405, 40.694550, 48.080574>,  <49.003281, 40.920170, 48.161888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.012405, 40.694550, 48.080574>,  <49.027611, 40.318516, 47.945049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.012405, 40.694550, 48.080574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404315, 0.324531, -0.855107,
		-0.913829, 0.104478, -0.392429,
		-0.038016, 0.940087, 0.338808,
		49.000999, 40.976574, 48.182217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.737362, 40.746990, 47.343918>,  <49.027611, 40.318516, 47.945049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.737362, 40.746990, 47.343918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.917107, 41.000359, 47.595901>,  <49.024952, 41.152382, 47.747093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.917107, 41.000359, 47.595901>,  <48.737362, 40.746990, 47.343918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.917107, 41.000359, 47.595901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422634, 0.470526, -0.774587,
		-0.787055, 0.614311, -0.056271,
		0.449360, 0.633425, 0.629959,
		49.051914, 41.190388, 47.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.661430, 41.452103, 46.973740>,  <48.737362, 40.746990, 47.343918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.661430, 41.452103, 46.973740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.920792, 41.526932, 47.268925>,  <49.076408, 41.571831, 47.446033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.920792, 41.526932, 47.268925>,  <48.661430, 41.452103, 46.973740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.920792, 41.526932, 47.268925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430228, 0.709671, -0.557917,
		-0.628078, 0.679243, 0.379666,
		0.648399, 0.187072, 0.737958,
		49.115311, 41.583054, 47.490311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.597000, 42.235897, 47.189308>,  <48.661430, 41.452103, 46.973740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.597000, 42.235897, 47.189308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.942703, 42.085854, 47.323387>,  <49.150124, 41.995827, 47.403835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.942703, 42.085854, 47.323387>,  <48.597000, 42.235897, 47.189308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.942703, 42.085854, 47.323387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501386, 0.588104, -0.634623,
		0.040922, 0.716539, 0.696346,
		0.864255, -0.375108, 0.335196,
		49.201981, 41.973320, 47.423946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.077137, 42.764404, 47.383762>,  <48.597000, 42.235897, 47.189308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.077137, 42.764404, 47.383762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.330872, 42.463890, 47.310879>,  <49.483112, 42.283581, 47.267147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.330872, 42.463890, 47.310879>,  <49.077137, 42.764404, 47.383762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.330872, 42.463890, 47.310879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533857, 0.596184, -0.599635,
		0.559124, 0.283094, 0.779255,
		0.634332, -0.751281, -0.182208,
		49.521172, 42.238506, 47.256218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.603931, 43.069454, 47.435734>,  <49.077137, 42.764404, 47.383762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.603931, 43.069454, 47.435734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.713753, 42.735901, 47.244209>,  <49.779644, 42.535767, 47.129295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.713753, 42.735901, 47.244209>,  <49.603931, 43.069454, 47.435734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.713753, 42.735901, 47.244209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509956, 0.548419, -0.662708,
		0.815210, -0.062223, 0.575814,
		0.274551, -0.833886, -0.478807,
		49.796120, 42.485737, 47.100567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.280781, 43.204544, 47.399281>,  <49.603931, 43.069454, 47.435734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.280781, 43.204544, 47.399281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.156502, 42.950203, 47.116676>,  <50.081936, 42.797600, 46.947113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.156502, 42.950203, 47.116676>,  <50.280781, 43.204544, 47.399281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.156502, 42.950203, 47.116676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600862, 0.444555, -0.664331,
		0.736501, -0.630920, 0.243940,
		-0.310695, -0.635854, -0.706511,
		50.063293, 42.759445, 46.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.265511, 44.040363, 47.463589>,  <50.280781, 43.204544, 47.399281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.265511, 44.040363, 47.463589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.155029, 44.395996, 47.609604>,  <50.088741, 44.609375, 47.697212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.155029, 44.395996, 47.609604>,  <50.265511, 44.040363, 47.463589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.155029, 44.395996, 47.609604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731089, -0.440905, 0.520684,
		0.623875, -0.123057, 0.771775,
		-0.276206, 0.889078, 0.365035,
		50.072166, 44.662720, 47.719116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.196404, 44.060520, 48.204517>,  <50.265511, 44.040363, 47.463589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.196404, 44.060520, 48.204517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.945511, 44.314590, 48.024239>,  <49.794975, 44.467033, 47.916073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.945511, 44.314590, 48.024239>,  <50.196404, 44.060520, 48.204517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.945511, 44.314590, 48.024239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772932, -0.436582, 0.460404,
		0.095675, 0.637136, 0.764790,
		-0.627234, 0.635180, -0.450692,
		49.757339, 44.505146, 47.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.891521, 44.356255, 48.730206>,  <50.196404, 44.060520, 48.204517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.891521, 44.356255, 48.730206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.654869, 44.409248, 48.412106>,  <49.512878, 44.441044, 48.221245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.654869, 44.409248, 48.412106>,  <49.891521, 44.356255, 48.730206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.654869, 44.409248, 48.412106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798735, -0.230350, 0.555844,
		-0.109548, 0.964048, 0.242098,
		-0.591627, 0.132480, -0.795253,
		49.477383, 44.448994, 48.173531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.361465, 44.866508, 48.962666>,  <49.891521, 44.356255, 48.730206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.361465, 44.866508, 48.962666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.235558, 44.648788, 48.651627>,  <49.160015, 44.518154, 48.465004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.235558, 44.648788, 48.651627>,  <49.361465, 44.866508, 48.962666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.235558, 44.648788, 48.651627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811303, -0.270933, 0.518057,
		-0.492657, 0.793933, -0.356315,
		-0.314765, -0.544304, -0.777597,
		49.141129, 44.485497, 48.418346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.638134, 45.013573, 49.050991>,  <49.361465, 44.866508, 48.962666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.638134, 45.013573, 49.050991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.633461, 44.744286, 48.755249>,  <48.630657, 44.582714, 48.577805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.633461, 44.744286, 48.755249>,  <48.638134, 45.013573, 49.050991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.633461, 44.744286, 48.755249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829173, -0.406735, 0.383458,
		-0.558871, 0.617530, -0.553462,
		-0.011684, -0.673219, -0.739351,
		48.629955, 44.542320, 48.533443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980721, 45.015369, 48.636299>,  <48.638134, 45.013573, 49.050991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980721, 45.015369, 48.636299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.141617, 44.651176, 48.597893>,  <48.238155, 44.432659, 48.574848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.141617, 44.651176, 48.597893>,  <47.980721, 45.015369, 48.636299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.141617, 44.651176, 48.597893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887784, -0.413523, 0.202084,
		-0.223699, 0.003955, -0.974650,
		0.402242, -0.910485, -0.096016,
		48.262291, 44.378033, 48.569088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.494453, 44.454605, 48.322853>,  <47.980721, 45.015369, 48.636299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.494453, 44.454605, 48.322853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.744698, 44.222801, 48.531765>,  <47.894844, 44.083717, 48.657112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.744698, 44.222801, 48.531765>,  <47.494453, 44.454605, 48.322853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744698, 44.222801, 48.531765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777708, -0.516030, 0.359003,
		0.061463, -0.630775, -0.773528,
		0.625614, -0.579514, 0.522275,
		47.932381, 44.048946, 48.688446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189152, 43.779472, 48.265919>,  <47.494453, 44.454605, 48.322853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189152, 43.779472, 48.265919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.435265, 43.744965, 48.579346>,  <47.582932, 43.724262, 48.767403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.435265, 43.744965, 48.579346>,  <47.189152, 43.779472, 48.265919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.435265, 43.744965, 48.579346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707251, -0.499420, 0.500375,
		0.348165, -0.862054, -0.368298,
		0.615286, -0.086267, 0.783570,
		47.619850, 43.719086, 48.814415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851940, 43.246681, 48.680511>,  <47.189152, 43.779472, 48.265919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851940, 43.246681, 48.680511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.138382, 43.323601, 48.948906>,  <47.310246, 43.369751, 49.109943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.138382, 43.323601, 48.948906>,  <46.851940, 43.246681, 48.680511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.138382, 43.323601, 48.948906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534048, -0.468025, 0.704091,
		0.449432, -0.862539, -0.232458,
		0.716103, 0.192298, 0.670983,
		47.353214, 43.381290, 49.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090683, 42.563278, 49.033482>,  <46.851940, 43.246681, 48.680511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090683, 42.563278, 49.033482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.185524, 42.863426, 49.280296>,  <47.242428, 43.043514, 49.428387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.185524, 42.863426, 49.280296>,  <47.090683, 42.563278, 49.033482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185524, 42.863426, 49.280296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292606, -0.550493, 0.781882,
		0.926371, -0.365937, 0.089036,
		0.237106, 0.750365, 0.617035,
		47.256657, 43.088535, 49.465408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285908, 42.220425, 49.605511>,  <47.090683, 42.563278, 49.033482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285908, 42.220425, 49.605511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.216377, 42.592789, 49.734001>,  <47.174660, 42.816208, 49.811096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.216377, 42.592789, 49.734001>,  <47.285908, 42.220425, 49.605511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216377, 42.592789, 49.734001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289171, -0.360060, 0.886982,
		0.941363, 0.061291, 0.331780,
		-0.173825, 0.930914, 0.321223,
		47.164230, 42.872063, 49.830368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480251, 42.301918, 50.316536>,  <47.285908, 42.220425, 49.605511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480251, 42.301918, 50.316536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.219437, 42.601555, 50.269699>,  <47.062950, 42.781338, 50.241596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.219437, 42.601555, 50.269699>,  <47.480251, 42.301918, 50.316536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219437, 42.601555, 50.269699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300362, -0.113414, 0.947058,
		0.696156, 0.652684, 0.298949,
		-0.652035, 0.749094, -0.117088,
		47.023827, 42.826283, 50.234573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505829, 42.743038, 50.903439>,  <47.480251, 42.301918, 50.316536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505829, 42.743038, 50.903439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149773, 42.819847, 50.738136>,  <46.936138, 42.865932, 50.638954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149773, 42.819847, 50.738136>,  <47.505829, 42.743038, 50.903439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149773, 42.819847, 50.738136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395915, 0.123113, 0.909997,
		0.225619, 0.973637, -0.033562,
		-0.890139, 0.192025, -0.413254,
		46.882732, 42.877453, 50.614159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161484, 43.202412, 51.390625>,  <47.505829, 42.743038, 50.903439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161484, 43.202412, 51.390625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.864494, 43.080170, 51.152180>,  <46.686302, 43.006824, 51.009113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.864494, 43.080170, 51.152180>,  <47.161484, 43.202412, 51.390625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864494, 43.080170, 51.152180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651992, 0.125407, 0.747783,
		-0.153767, 0.943865, -0.292361,
		-0.742470, -0.305601, -0.596109,
		46.641754, 42.988491, 50.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665787, 43.683769, 51.440159>,  <47.161484, 43.202412, 51.390625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665787, 43.683769, 51.440159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.486641, 43.349037, 51.314217>,  <46.379154, 43.148197, 51.238651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.486641, 43.349037, 51.314217>,  <46.665787, 43.683769, 51.440159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486641, 43.349037, 51.314217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695631, 0.104898, 0.710699,
		-0.561709, 0.537315, -0.629107,
		-0.447862, -0.836832, -0.314851,
		46.352283, 43.097988, 51.219761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906372, 43.863220, 51.378674>,  <46.665787, 43.683769, 51.440159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906372, 43.863220, 51.378674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.933289, 43.464355, 51.392151>,  <45.949440, 43.225037, 51.400238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.933289, 43.464355, 51.392151>,  <45.906372, 43.863220, 51.378674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933289, 43.464355, 51.392151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812446, -0.035164, 0.581975,
		-0.579140, -0.066532, -0.812508,
		0.067291, -0.997164, 0.033689,
		45.953476, 43.165207, 51.402256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220055, 43.671200, 51.421249>,  <45.906372, 43.863220, 51.378674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220055, 43.671200, 51.421249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.447250, 43.357948, 51.522526>,  <45.583569, 43.169998, 51.583290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.447250, 43.357948, 51.522526>,  <45.220055, 43.671200, 51.421249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447250, 43.357948, 51.522526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695752, -0.292527, 0.656016,
		-0.439678, -0.548766, -0.711013,
		0.567990, -0.783124, 0.253187,
		45.617649, 43.123013, 51.598480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831356, 43.064060, 51.339794>,  <45.220055, 43.671200, 51.421249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831356, 43.064060, 51.339794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.125195, 42.966957, 51.593231>,  <45.301498, 42.908695, 51.745293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.125195, 42.966957, 51.593231>,  <44.831356, 43.064060, 51.339794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125195, 42.966957, 51.593231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674891, -0.357645, 0.645455,
		0.069912, -0.901754, -0.426558,
		0.734598, -0.242755, 0.633589,
		45.345573, 42.894131, 51.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520718, 42.530792, 51.739761>,  <44.831356, 43.064060, 51.339794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520718, 42.530792, 51.739761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.831993, 42.657211, 51.956848>,  <45.018757, 42.733063, 52.087101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.831993, 42.657211, 51.956848>,  <44.520718, 42.530792, 51.739761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831993, 42.657211, 51.956848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510279, -0.185579, 0.839747,
		0.366114, -0.930417, 0.016856,
		0.778188, 0.316045, 0.542716,
		45.065449, 42.752026, 52.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571655, 42.061653, 52.392284>,  <44.520718, 42.530792, 51.739761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571655, 42.061653, 52.392284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.765995, 42.400986, 52.476452>,  <44.882599, 42.604588, 52.526951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.765995, 42.400986, 52.476452>,  <44.571655, 42.061653, 52.392284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765995, 42.400986, 52.476452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407193, 0.006672, 0.913318,
		0.773396, -0.529416, 0.348678,
		0.485852, 0.848336, 0.210414,
		44.911751, 42.655487, 52.539577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838566, 41.916862, 53.043926>,  <44.571655, 42.061653, 52.392284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838566, 41.916862, 53.043926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.807854, 42.314835, 53.017971>,  <44.789425, 42.553619, 53.002399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.807854, 42.314835, 53.017971>,  <44.838566, 41.916862, 53.043926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807854, 42.314835, 53.017971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403928, 0.028459, 0.914348,
		0.911563, 0.096413, 0.399697,
		-0.076780, 0.994935, -0.064886,
		44.784821, 42.613316, 52.998505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296146, 42.241020, 53.542679>,  <44.838566, 41.916862, 53.043926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296146, 42.241020, 53.542679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.012993, 42.508392, 53.451370>,  <44.843102, 42.668816, 53.396587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.012993, 42.508392, 53.451370>,  <45.296146, 42.241020, 53.542679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012993, 42.508392, 53.451370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259394, 0.054579, 0.964228,
		0.656977, 0.741770, 0.134751,
		-0.707881, 0.668429, -0.228268,
		44.800629, 42.708920, 53.382889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300236, 42.778160, 54.140625>,  <45.296146, 42.241020, 53.542679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300236, 42.778160, 54.140625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.945618, 42.806862, 53.957809>,  <44.732845, 42.824081, 53.848118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.945618, 42.806862, 53.957809>,  <45.300236, 42.778160, 54.140625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945618, 42.806862, 53.957809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455789, 0.033945, 0.889440,
		0.079336, 0.996845, 0.002612,
		-0.886545, 0.071755, -0.457043,
		44.679653, 42.828388, 53.820698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067146, 43.452278, 54.369171>,  <45.300236, 42.778160, 54.140625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067146, 43.452278, 54.369171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.781677, 43.195892, 54.256149>,  <44.610397, 43.042061, 54.188335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.781677, 43.195892, 54.256149>,  <45.067146, 43.452278, 54.369171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781677, 43.195892, 54.256149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506631, 0.193753, 0.840110,
		-0.483739, 0.742710, -0.463010,
		-0.713668, -0.640969, -0.282554,
		44.567577, 43.003601, 54.171383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532040, 43.870815, 54.802765>,  <45.067146, 43.452278, 54.369171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532040, 43.870815, 54.802765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.377419, 43.527084, 54.668819>,  <44.284645, 43.320847, 54.588451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.377419, 43.527084, 54.668819>,  <44.532040, 43.870815, 54.802765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377419, 43.527084, 54.668819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571449, -0.061818, 0.818306,
		-0.723892, 0.507679, -0.467165,
		-0.386558, -0.859326, -0.334862,
		44.261452, 43.269287, 54.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773247, 43.890297, 54.867615>,  <44.532040, 43.870815, 54.802765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773247, 43.890297, 54.867615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.845840, 43.499184, 54.825649>,  <43.889397, 43.264515, 54.800468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.845840, 43.499184, 54.825649>,  <43.773247, 43.890297, 54.867615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845840, 43.499184, 54.825649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715552, -0.204483, 0.667961,
		-0.674573, -0.046154, -0.736764,
		0.181485, -0.977781, -0.104913,
		43.900288, 43.205849, 54.794174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155582, 43.499836, 54.579578>,  <43.773247, 43.890297, 54.867615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155582, 43.499836, 54.579578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.393303, 43.269760, 54.804420>,  <43.535934, 43.131714, 54.939323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.393303, 43.269760, 54.804420>,  <43.155582, 43.499836, 54.579578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393303, 43.269760, 54.804420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773895, -0.218832, 0.594306,
		-0.218832, -0.788207, -0.575189,
		-0.594306, 0.575189, -0.562102,
		43.571594, 43.097202, 54.973049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647156, 43.638340, 53.999485>,  <43.155582, 43.499836, 54.579578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647156, 43.638340, 53.999485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527374, 44.019829, 53.988628>,  <42.455505, 44.248722, 53.982113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527374, 44.019829, 53.988628>,  <42.647156, 43.638340, 53.999485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527374, 44.019829, 53.988628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649815, 0.183034, -0.737726,
		-0.698620, -0.238551, -0.674554,
		-0.299451, 0.953726, -0.027143,
		42.437538, 44.305946, 53.980484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647427, 43.768734, 53.359024>,  <42.647156, 43.638340, 53.999485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647427, 43.768734, 53.359024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.637215, 44.142326, 53.501583>,  <42.631088, 44.366482, 53.587120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.637215, 44.142326, 53.501583>,  <42.647427, 43.768734, 53.359024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637215, 44.142326, 53.501583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442121, 0.330304, -0.833924,
		-0.896592, 0.136285, -0.421365,
		-0.025527, 0.933984, 0.356402,
		42.629555, 44.422520, 53.608505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281929, 44.223774, 52.844055>,  <42.647427, 43.768734, 53.359024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281929, 44.223774, 52.844055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.511559, 44.453506, 53.077492>,  <42.649334, 44.591347, 53.217556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.511559, 44.453506, 53.077492>,  <42.281929, 44.223774, 52.844055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511559, 44.453506, 53.077492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360757, 0.462420, -0.809952,
		-0.735050, 0.675505, 0.058265,
		0.574070, 0.574335, 0.583595,
		42.683781, 44.625809, 53.252571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162937, 44.879860, 52.606548>,  <42.281929, 44.223774, 52.844055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162937, 44.879860, 52.606548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.512905, 44.897171, 52.799480>,  <42.722885, 44.907558, 52.915237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.512905, 44.897171, 52.799480>,  <42.162937, 44.879860, 52.606548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512905, 44.897171, 52.799480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409435, 0.465764, -0.784491,
		-0.258601, 0.883850, 0.389787,
		0.874922, 0.043278, 0.482327,
		42.775383, 44.910156, 52.944180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372627, 45.587898, 52.514549>,  <42.162937, 44.879860, 52.606548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372627, 45.587898, 52.514549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.705231, 45.379906, 52.592743>,  <42.904793, 45.255108, 52.639660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.705231, 45.379906, 52.592743>,  <42.372627, 45.587898, 52.514549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705231, 45.379906, 52.592743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473070, 0.478347, -0.739857,
		0.291207, 0.707672, 0.643738,
		0.831507, -0.519985, 0.195480,
		42.954681, 45.223911, 52.651386>
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
