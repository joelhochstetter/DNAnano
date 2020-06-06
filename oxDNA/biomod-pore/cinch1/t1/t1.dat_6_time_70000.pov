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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.562389, 32.806049, 23.822647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489407, 32.530167, 23.542358>,  <42.445618, 32.364635, 23.374186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489407, 32.530167, 23.542358>,  <42.562389, 32.806049, 23.822647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489407, 32.530167, 23.542358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605679, 0.640248, -0.472478,
		0.774509, 0.338207, -0.534558,
		-0.182454, -0.689709, -0.700722,
		42.434669, 32.323254, 23.332142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630592, 33.122398, 23.181534>,  <42.562389, 32.806049, 23.822647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630592, 33.122398, 23.181534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400299, 32.797222, 23.146526>,  <42.262123, 32.602116, 23.125523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400299, 32.797222, 23.146526>,  <42.630592, 33.122398, 23.181534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400299, 32.797222, 23.146526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721296, 0.555389, -0.413854,
		0.385042, -0.175147, -0.906127,
		-0.575738, -0.812937, -0.087515,
		42.227577, 32.553341, 23.120272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583775, 32.986084, 22.459185>,  <42.630592, 33.122398, 23.181534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583775, 32.986084, 22.459185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300514, 32.874317, 22.718552>,  <42.130558, 32.807255, 22.874172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300514, 32.874317, 22.718552>,  <42.583775, 32.986084, 22.459185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300514, 32.874317, 22.718552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676151, 0.532835, -0.508829,
		-0.203322, -0.798756, -0.566259,
		-0.708152, -0.279420, 0.648417,
		42.088070, 32.790489, 22.913076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027573, 32.811127, 22.092869>,  <42.583775, 32.986084, 22.459185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027573, 32.811127, 22.092869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950157, 32.975220, 22.449352>,  <41.903709, 33.073677, 22.663242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950157, 32.975220, 22.449352>,  <42.027573, 32.811127, 22.092869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950157, 32.975220, 22.449352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628266, 0.645874, -0.433739,
		-0.753543, -0.643859, 0.132738,
		-0.193535, 0.410235, 0.891208,
		41.892097, 33.098289, 22.716715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296097, 32.933434, 22.102232>,  <42.027573, 32.811127, 22.092869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296097, 32.933434, 22.102232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503712, 33.177994, 22.341160>,  <41.628281, 33.324730, 22.484516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503712, 33.177994, 22.341160>,  <41.296097, 32.933434, 22.102232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503712, 33.177994, 22.341160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526229, 0.779256, -0.340356,
		-0.673559, -0.137670, 0.726199,
		0.519038, 0.611397, 0.597322,
		41.659424, 33.361412, 22.520357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726841, 33.253223, 22.472643>,  <41.296097, 32.933434, 22.102232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726841, 33.253223, 22.472643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067329, 33.446472, 22.390652>,  <41.271622, 33.562420, 22.341457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067329, 33.446472, 22.390652>,  <40.726841, 33.253223, 22.472643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067329, 33.446472, 22.390652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519081, 0.717539, -0.464426,
		-0.077292, 0.501731, 0.861563,
		0.851223, 0.483118, -0.204979,
		41.322697, 33.591408, 22.329159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045021, 33.497715, 22.712460>,  <40.726841, 33.253223, 22.472643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045021, 33.497715, 22.712460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829414, 33.737530, 22.475811>,  <39.700050, 33.881420, 22.333822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829414, 33.737530, 22.475811>,  <40.045021, 33.497715, 22.712460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829414, 33.737530, 22.475811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064023, -0.671197, -0.738509,
		-0.839856, -0.435949, 0.323405,
		-0.539021, 0.599535, -0.591619,
		39.667709, 33.917389, 22.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625565, 32.998554, 22.262508>,  <40.045021, 33.497715, 22.712460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625565, 32.998554, 22.262508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560654, 33.345924, 22.075104>,  <39.521709, 33.554348, 21.962660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560654, 33.345924, 22.075104>,  <39.625565, 32.998554, 22.262508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560654, 33.345924, 22.075104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088435, -0.460096, -0.883454,
		-0.982775, -0.184794, -0.002138,
		-0.162273, 0.868426, -0.468513,
		39.511971, 33.606453, 21.934549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109535, 32.824177, 21.705042>,  <39.625565, 32.998554, 22.262508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109535, 32.824177, 21.705042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338608, 33.131893, 21.591740>,  <39.476051, 33.316521, 21.523758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338608, 33.131893, 21.591740>,  <39.109535, 32.824177, 21.705042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338608, 33.131893, 21.591740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189083, -0.460162, -0.867467,
		-0.797675, 0.443223, -0.408985,
		0.572680, 0.769288, -0.283253,
		39.510410, 33.362679, 21.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905170, 32.927048, 20.975321>,  <39.109535, 32.824177, 21.705042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905170, 32.927048, 20.975321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260807, 33.089378, 21.060001>,  <39.474190, 33.186775, 21.110809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260807, 33.089378, 21.060001>,  <38.905170, 32.927048, 20.975321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260807, 33.089378, 21.060001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362009, -0.340407, -0.867798,
		-0.280106, 0.848193, -0.449565,
		0.889095, 0.405822, 0.211703,
		39.527534, 33.211124, 21.123512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219551, 33.100681, 20.210901>,  <38.905170, 32.927048, 20.975321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219551, 33.100681, 20.210901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527950, 33.158821, 20.458912>,  <39.712990, 33.193707, 20.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527950, 33.158821, 20.458912>,  <39.219551, 33.100681, 20.210901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527950, 33.158821, 20.458912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599151, -0.495512, -0.628877,
		0.215822, 0.856353, -0.469127,
		0.770998, 0.145352, 0.620027,
		39.759251, 33.202427, 20.644920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682243, 33.523533, 19.846455>,  <39.219551, 33.100681, 20.210901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682243, 33.523533, 19.846455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895824, 33.314705, 20.112488>,  <40.023972, 33.189407, 20.272108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895824, 33.314705, 20.112488>,  <39.682243, 33.523533, 19.846455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895824, 33.314705, 20.112488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486225, -0.453928, -0.746682,
		0.691721, 0.722074, 0.011468,
		0.533954, -0.522072, 0.665082,
		40.056011, 33.158085, 20.312012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328949, 33.557446, 19.603149>,  <39.682243, 33.523533, 19.846455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328949, 33.557446, 19.603149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350159, 33.249554, 19.857613>,  <40.362885, 33.064819, 20.010290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350159, 33.249554, 19.857613>,  <40.328949, 33.557446, 19.603149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350159, 33.249554, 19.857613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531278, -0.517667, -0.670644,
		0.845536, 0.373536, 0.381495,
		0.053022, -0.769734, 0.636159,
		40.366066, 33.018635, 20.048460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080498, 33.364803, 19.665462>,  <40.328949, 33.557446, 19.603149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080498, 33.364803, 19.665462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845219, 33.056931, 19.764744>,  <40.704052, 32.872208, 19.824312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845219, 33.056931, 19.764744>,  <41.080498, 33.364803, 19.665462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845219, 33.056931, 19.764744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526718, -0.597497, -0.604620,
		0.613669, -0.224903, 0.756855,
		-0.588199, -0.769686, 0.248204,
		40.668758, 32.826023, 19.839205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585545, 32.767506, 19.667431>,  <41.080498, 33.364803, 19.665462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585545, 32.767506, 19.667431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220657, 32.605232, 19.644535>,  <41.001724, 32.507870, 19.630798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220657, 32.605232, 19.644535>,  <41.585545, 32.767506, 19.667431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220657, 32.605232, 19.644535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307818, -0.586452, -0.749215,
		0.270378, -0.701067, 0.659849,
		-0.912219, -0.405685, -0.057237,
		40.946991, 32.483528, 19.627363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638947, 31.976343, 19.629667>,  <41.585545, 32.767506, 19.667431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638947, 31.976343, 19.629667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258518, 32.051697, 19.531704>,  <41.030262, 32.096909, 19.472925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258518, 32.051697, 19.531704>,  <41.638947, 31.976343, 19.629667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258518, 32.051697, 19.531704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000368, -0.793324, -0.608800,
		-0.308980, -0.578921, 0.754575,
		-0.951069, 0.188384, -0.244908,
		40.973198, 32.108212, 19.458231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309456, 31.368418, 19.817043>,  <41.638947, 31.976343, 19.629667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309456, 31.368418, 19.817043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101074, 31.575523, 19.545593>,  <40.976048, 31.699787, 19.382723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101074, 31.575523, 19.545593>,  <41.309456, 31.368418, 19.817043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101074, 31.575523, 19.545593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053945, -0.773467, -0.631537,
		-0.851881, -0.365608, 0.375006,
		-0.520949, 0.517765, -0.678624,
		40.944790, 31.730852, 19.342007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894173, 30.870964, 19.446045>,  <41.309456, 31.368418, 19.817043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894173, 30.870964, 19.446045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902092, 31.199799, 19.218437>,  <40.906841, 31.397099, 19.081871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902092, 31.199799, 19.218437>,  <40.894173, 30.870964, 19.446045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902092, 31.199799, 19.218437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116176, -0.567169, -0.815366,
		-0.993031, -0.049966, -0.106734,
		0.019795, 0.822084, -0.569022,
		40.908031, 31.446424, 19.047731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472443, 30.807337, 18.964333>,  <40.894173, 30.870964, 19.446045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472443, 30.807337, 18.964333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718674, 31.082985, 18.811401>,  <40.866413, 31.248373, 18.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718674, 31.082985, 18.811401>,  <40.472443, 30.807337, 18.964333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718674, 31.082985, 18.811401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028706, -0.504426, -0.862978,
		-0.787551, 0.520258, -0.330297,
		0.615581, 0.689120, -0.382326,
		40.903347, 31.289721, 18.696703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103748, 31.140228, 18.308462>,  <40.472443, 30.807337, 18.964333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103748, 31.140228, 18.308462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499161, 31.199718, 18.298031>,  <40.736408, 31.235413, 18.291773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499161, 31.199718, 18.298031>,  <40.103748, 31.140228, 18.308462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499161, 31.199718, 18.298031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027821, -0.349148, -0.936654,
		-0.148410, 0.925190, -0.349283,
		0.988534, 0.148727, -0.026078,
		40.795723, 31.244337, 18.290207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235260, 31.583385, 17.740116>,  <40.103748, 31.140228, 18.308462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235260, 31.583385, 17.740116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582153, 31.396515, 17.809006>,  <40.790287, 31.284393, 17.850340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582153, 31.396515, 17.809006>,  <40.235260, 31.583385, 17.740116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582153, 31.396515, 17.809006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053184, -0.257005, -0.964945,
		0.495062, 0.845988, -0.198036,
		0.867228, -0.467175, 0.172226,
		40.842323, 31.256363, 17.860674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453800, 31.620081, 17.205339>,  <40.235260, 31.583385, 17.740116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453800, 31.620081, 17.205339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704597, 31.342587, 17.347107>,  <40.855076, 31.176090, 17.432167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704597, 31.342587, 17.347107>,  <40.453800, 31.620081, 17.205339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704597, 31.342587, 17.347107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073803, -0.400008, -0.913535,
		0.775522, 0.598936, -0.199602,
		0.626992, -0.693736, 0.354418,
		40.892696, 31.134466, 17.453432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992596, 31.560411, 16.760351>,  <40.453800, 31.620081, 17.205339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992596, 31.560411, 16.760351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000912, 31.209724, 16.952572>,  <41.005901, 30.999311, 17.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000912, 31.209724, 16.952572>,  <40.992596, 31.560411, 16.760351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000912, 31.209724, 16.952572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186958, -0.468769, -0.863309,
		0.982148, 0.107789, 0.154166,
		0.020787, -0.876719, 0.480553,
		41.007149, 30.946709, 17.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471497, 31.173956, 16.396639>,  <40.992596, 31.560411, 16.760351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471497, 31.173956, 16.396639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290195, 30.883221, 16.603043>,  <41.181416, 30.708778, 16.726885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290195, 30.883221, 16.603043>,  <41.471497, 31.173956, 16.396639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290195, 30.883221, 16.603043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236268, -0.656143, -0.716697,
		0.859499, -0.202930, 0.469128,
		-0.453254, -0.726840, 0.516008,
		41.154221, 30.665169, 16.757845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990917, 30.658411, 16.542295>,  <41.471497, 31.173956, 16.396639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990917, 30.658411, 16.542295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636372, 30.473927, 16.558552>,  <41.423645, 30.363235, 16.568306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636372, 30.473927, 16.558552>,  <41.990917, 30.658411, 16.542295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636372, 30.473927, 16.558552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243312, -0.538676, -0.806615,
		0.393910, -0.705063, 0.589679,
		-0.886360, -0.461210, 0.040640,
		41.370464, 30.335564, 16.570744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165104, 29.938360, 16.377018>,  <41.990917, 30.658411, 16.542295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165104, 29.938360, 16.377018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773247, 29.998081, 16.323334>,  <41.538132, 30.033915, 16.291124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773247, 29.998081, 16.323334>,  <42.165104, 29.938360, 16.377018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773247, 29.998081, 16.323334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070575, -0.369724, -0.926457,
		-0.187941, -0.917068, 0.351660,
		-0.979642, 0.149301, -0.134208,
		41.479355, 30.042871, 16.283072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839848, 29.296501, 16.044226>,  <42.165104, 29.938360, 16.377018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839848, 29.296501, 16.044226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619556, 29.616409, 15.948670>,  <41.487381, 29.808353, 15.891337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619556, 29.616409, 15.948670>,  <41.839848, 29.296501, 16.044226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619556, 29.616409, 15.948670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000932, -0.286790, -0.957993,
		-0.834684, -0.527371, 0.158689,
		-0.550728, 0.799769, -0.238887,
		41.454338, 29.856340, 15.877005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065601, 29.124460, 15.829168>,  <41.839848, 29.296501, 16.044226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065601, 29.124460, 15.829168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221123, 29.454906, 15.666018>,  <41.314438, 29.653173, 15.568129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221123, 29.454906, 15.666018>,  <41.065601, 29.124460, 15.829168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221123, 29.454906, 15.666018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380241, -0.259361, -0.887778,
		-0.839194, 0.500264, 0.213282,
		0.388806, 0.826116, -0.407874,
		41.337765, 29.702742, 15.543656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545570, 29.392033, 15.445514>,  <41.065601, 29.124460, 15.829168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545570, 29.392033, 15.445514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860664, 29.562294, 15.267390>,  <41.049721, 29.664450, 15.160516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860664, 29.562294, 15.267390>,  <40.545570, 29.392033, 15.445514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860664, 29.562294, 15.267390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232920, -0.463416, -0.854982,
		-0.570288, 0.777217, -0.265904,
		0.787731, 0.425652, -0.445310,
		41.096985, 29.689989, 15.133798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152473, 29.574411, 14.796198>,  <40.545570, 29.392033, 15.445514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152473, 29.574411, 14.796198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420818, 29.678619, 14.518470>,  <40.581825, 29.741144, 14.351833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420818, 29.678619, 14.518470>,  <40.152473, 29.574411, 14.796198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420818, 29.678619, 14.518470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500770, -0.531418, -0.683245,
		-0.546973, 0.806055, -0.226045,
		0.670858, 0.260520, -0.694319,
		40.622074, 29.756775, 14.310174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869160, 29.925266, 14.172009>,  <40.152473, 29.574411, 14.796198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869160, 29.925266, 14.172009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196163, 29.712719, 14.083175>,  <40.392365, 29.585192, 14.029874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196163, 29.712719, 14.083175>,  <39.869160, 29.925266, 14.172009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196163, 29.712719, 14.083175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525581, -0.530708, -0.664916,
		0.235450, 0.660302, -0.713138,
		0.817513, -0.531366, -0.222087,
		40.441418, 29.553308, 14.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156143, 30.084530, 14.371691>,  <39.869160, 29.925266, 14.172009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156143, 30.084530, 14.371691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260719, 30.375805, 14.118268>,  <39.323467, 30.550570, 13.966214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260719, 30.375805, 14.118268>,  <39.156143, 30.084530, 14.371691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260719, 30.375805, 14.118268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370135, 0.681842, 0.630945,
		0.891431, 0.069545, 0.447789,
		0.261442, 0.728186, -0.633556,
		39.339153, 30.594261, 13.928202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658886, 30.496729, 14.633512>,  <39.156143, 30.084530, 14.371691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658886, 30.496729, 14.633512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437939, 30.709019, 14.376382>,  <39.305370, 30.836393, 14.222104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437939, 30.709019, 14.376382>,  <39.658886, 30.496729, 14.633512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437939, 30.709019, 14.376382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303575, 0.590120, 0.748065,
		0.776361, 0.608350, -0.164847,
		-0.552364, 0.530725, -0.642826,
		39.272228, 30.868237, 14.183535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695316, 31.167080, 14.855415>,  <39.658886, 30.496729, 14.633512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695316, 31.167080, 14.855415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368843, 31.147301, 14.625144>,  <39.172958, 31.135433, 14.486981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368843, 31.147301, 14.625144>,  <39.695316, 31.167080, 14.855415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368843, 31.147301, 14.625144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454297, 0.670551, 0.586495,
		0.357020, 0.740214, -0.569754,
		-0.816181, -0.049447, -0.575677,
		39.123989, 31.132467, 14.452441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460098, 31.845213, 14.831018>,  <39.695316, 31.167080, 14.855415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460098, 31.845213, 14.831018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155659, 31.594246, 14.765197>,  <38.972996, 31.443666, 14.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155659, 31.594246, 14.765197>,  <39.460098, 31.845213, 14.831018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155659, 31.594246, 14.765197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564566, 0.515873, 0.644314,
		-0.319364, 0.583289, -0.746848,
		-0.761099, -0.627415, -0.164554,
		38.927330, 31.406021, 14.715831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846451, 32.187309, 14.535182>,  <39.460098, 31.845213, 14.831018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846451, 32.187309, 14.535182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748039, 31.866375, 14.752704>,  <38.688992, 31.673813, 14.883217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748039, 31.866375, 14.752704>,  <38.846451, 32.187309, 14.535182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748039, 31.866375, 14.752704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504207, 0.585104, 0.635160,
		-0.827796, -0.117923, -0.548496,
		-0.246027, -0.802338, 0.543805,
		38.674232, 31.625673, 14.915845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188610, 32.137772, 14.818369>,  <38.846451, 32.187309, 14.535182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188610, 32.137772, 14.818369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457207, 31.960949, 15.056254>,  <38.618366, 31.854856, 15.198986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457207, 31.960949, 15.056254>,  <38.188610, 32.137772, 14.818369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457207, 31.960949, 15.056254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305841, 0.565690, 0.765805,
		-0.674950, -0.696121, 0.244660,
		0.671494, -0.442053, 0.594714,
		38.658653, 31.828333, 15.234669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852684, 31.959793, 15.398053>,  <38.188610, 32.137772, 14.818369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852684, 31.959793, 15.398053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234238, 31.972553, 15.517447>,  <38.463169, 31.980209, 15.589085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234238, 31.972553, 15.517447>,  <37.852684, 31.959793, 15.398053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234238, 31.972553, 15.517447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271011, 0.519121, 0.810597,
		-0.129094, -0.854105, 0.503824,
		0.953881, 0.031899, 0.298487,
		38.520401, 31.982122, 15.606994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853134, 31.761459, 16.088463>,  <37.852684, 31.959793, 15.398053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853134, 31.761459, 16.088463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196823, 31.955849, 16.024513>,  <38.403038, 32.072483, 15.986144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196823, 31.955849, 16.024513>,  <37.853134, 31.761459, 16.088463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196823, 31.955849, 16.024513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140397, 0.524490, 0.839761,
		0.491953, -0.699100, 0.518885,
		0.859228, 0.485973, -0.159873,
		38.454590, 32.101643, 15.976551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133129, 31.875202, 16.703714>,  <37.853134, 31.761459, 16.088463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133129, 31.875202, 16.703714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359577, 32.137619, 16.504066>,  <38.495445, 32.295071, 16.384277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359577, 32.137619, 16.504066>,  <38.133129, 31.875202, 16.703714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359577, 32.137619, 16.504066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054133, 0.633770, 0.771625,
		0.822546, -0.409810, 0.394301,
		0.566116, 0.656042, -0.499121,
		38.529411, 32.334431, 16.354330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783398, 31.953766, 17.098642>,  <38.133129, 31.875202, 16.703714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783398, 31.953766, 17.098642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700386, 32.276024, 16.876701>,  <38.650578, 32.469379, 16.743536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700386, 32.276024, 16.876701>,  <38.783398, 31.953766, 17.098642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700386, 32.276024, 16.876701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004521, 0.567987, 0.823025,
		0.978218, 0.168295, -0.121518,
		-0.207532, 0.805647, -0.554855,
		38.638126, 32.517719, 16.710245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091370, 32.460739, 17.473696>,  <38.783398, 31.953766, 17.098642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091370, 32.460739, 17.473696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876675, 32.688251, 17.224407>,  <38.747860, 32.824760, 17.074835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876675, 32.688251, 17.224407>,  <39.091370, 32.460739, 17.473696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876675, 32.688251, 17.224407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172583, 0.649007, 0.740949,
		0.825913, 0.505249, -0.250182,
		-0.536734, 0.568782, -0.623221,
		38.715656, 32.858887, 17.037441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353546, 33.148975, 17.377499>,  <39.091370, 32.460739, 17.473696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353546, 33.148975, 17.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963829, 33.179718, 17.292793>,  <38.730000, 33.198162, 17.241970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963829, 33.179718, 17.292793>,  <39.353546, 33.148975, 17.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963829, 33.179718, 17.292793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105658, 0.674310, 0.730850,
		0.198964, 0.734438, -0.648856,
		-0.974294, 0.076856, -0.211762,
		38.671539, 33.202774, 17.229265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246449, 33.850956, 17.470478>,  <39.353546, 33.148975, 17.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246449, 33.850956, 17.470478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862167, 33.742783, 17.445427>,  <38.631599, 33.677879, 17.430397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862167, 33.742783, 17.445427>,  <39.246449, 33.850956, 17.470478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862167, 33.742783, 17.445427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242629, 0.708459, 0.662734,
		-0.134854, 0.651884, -0.746231,
		-0.960700, -0.270430, -0.062627,
		38.573956, 33.661655, 17.426640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928009, 34.518852, 17.360376>,  <39.246449, 33.850956, 17.470478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928009, 34.518852, 17.360376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673031, 34.241226, 17.494205>,  <38.520042, 34.074650, 17.574503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673031, 34.241226, 17.494205>,  <38.928009, 34.518852, 17.360376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673031, 34.241226, 17.494205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232708, 0.587381, 0.775133,
		-0.734513, 0.416247, -0.535937,
		-0.637446, -0.694062, 0.334575,
		38.481796, 34.033009, 17.594578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294415, 34.794384, 17.526197>,  <38.928009, 34.518852, 17.360376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294415, 34.794384, 17.526197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301044, 34.459236, 17.744446>,  <38.305023, 34.258148, 17.875395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301044, 34.459236, 17.744446>,  <38.294415, 34.794384, 17.526197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301044, 34.459236, 17.744446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377725, 0.500013, 0.779301,
		-0.925770, -0.219008, -0.308198,
		0.016570, -0.837868, 0.545622,
		38.306015, 34.207874, 17.908133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714733, 34.798286, 18.042498>,  <38.294415, 34.794384, 17.526197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714733, 34.798286, 18.042498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913849, 34.504074, 18.226318>,  <38.033318, 34.327545, 18.336611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913849, 34.504074, 18.226318>,  <37.714733, 34.798286, 18.042498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913849, 34.504074, 18.226318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133171, 0.458763, 0.878523,
		-0.857010, -0.498522, 0.130418,
		0.497794, -0.735535, 0.459553,
		38.063187, 34.283413, 18.364183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340885, 34.745083, 18.541821>,  <37.714733, 34.798286, 18.042498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340885, 34.745083, 18.541821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685902, 34.581646, 18.661209>,  <37.892910, 34.483585, 18.732841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685902, 34.581646, 18.661209>,  <37.340885, 34.745083, 18.541821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685902, 34.581646, 18.661209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012120, 0.573016, 0.819455,
		-0.505850, -0.710427, 0.489295,
		0.862537, -0.408591, 0.298470,
		37.944664, 34.459068, 18.750750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212318, 34.585300, 19.172810>,  <37.340885, 34.745083, 18.541821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212318, 34.585300, 19.172810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610767, 34.595428, 19.139126>,  <37.849838, 34.601505, 19.118916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610767, 34.595428, 19.139126>,  <37.212318, 34.585300, 19.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610767, 34.595428, 19.139126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057350, 0.538833, 0.840458,
		0.066658, -0.842032, 0.535293,
		0.996126, 0.025324, -0.084208,
		37.909607, 34.603027, 19.113863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457188, 34.304527, 19.815155>,  <37.212318, 34.585300, 19.172810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457188, 34.304527, 19.815155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751099, 34.523792, 19.655342>,  <37.927444, 34.655350, 19.559454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751099, 34.523792, 19.655342>,  <37.457188, 34.304527, 19.815155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751099, 34.523792, 19.655342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197599, 0.390487, 0.899152,
		0.648891, -0.739622, 0.178605,
		0.734776, 0.548159, -0.399532,
		37.971531, 34.688240, 19.535482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091740, 34.268387, 20.342138>,  <37.457188, 34.304527, 19.815155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091740, 34.268387, 20.342138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130741, 34.599869, 20.121689>,  <38.154140, 34.798759, 19.989420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130741, 34.599869, 20.121689>,  <38.091740, 34.268387, 20.342138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130741, 34.599869, 20.121689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304901, 0.502261, 0.809178,
		0.947380, -0.246935, -0.203703,
		0.097502, 0.828708, -0.551123,
		38.159992, 34.848480, 19.956352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830952, 34.509411, 20.550943>,  <38.091740, 34.268387, 20.342138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830952, 34.509411, 20.550943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615154, 34.808693, 20.396473>,  <38.485676, 34.988262, 20.303791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615154, 34.808693, 20.396473>,  <38.830952, 34.509411, 20.550943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615154, 34.808693, 20.396473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243991, 0.577890, 0.778789,
		0.805864, 0.325927, -0.494323,
		-0.539492, 0.748208, -0.386178,
		38.453308, 35.033154, 20.280619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105400, 35.115925, 20.721693>,  <38.830952, 34.509411, 20.550943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105400, 35.115925, 20.721693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745007, 35.267075, 20.636425>,  <38.528770, 35.357765, 20.585264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745007, 35.267075, 20.636425>,  <39.105400, 35.115925, 20.721693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745007, 35.267075, 20.636425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112116, 0.677432, 0.726991,
		0.419121, 0.631106, -0.652720,
		-0.900982, 0.377877, -0.213169,
		38.474712, 35.380436, 20.572474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141624, 35.768650, 20.882334>,  <39.105400, 35.115925, 20.721693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141624, 35.768650, 20.882334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748596, 35.695034, 20.892845>,  <38.512779, 35.650864, 20.899153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748596, 35.695034, 20.892845>,  <39.141624, 35.768650, 20.882334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748596, 35.695034, 20.892845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063819, 0.466685, 0.882118,
		-0.174609, 0.865063, -0.470295,
		-0.982567, -0.184040, 0.026280,
		38.453827, 35.639824, 20.900728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828659, 36.401169, 21.012566>,  <39.141624, 35.768650, 20.882334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828659, 36.401169, 21.012566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560436, 36.126347, 21.124493>,  <38.399502, 35.961452, 21.191648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560436, 36.126347, 21.124493>,  <38.828659, 36.401169, 21.012566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560436, 36.126347, 21.124493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063548, 0.428998, 0.901067,
		-0.739128, 0.586438, -0.331330,
		-0.670560, -0.687060, 0.279817,
		38.359268, 35.920227, 21.208437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241493, 36.787056, 21.247400>,  <38.828659, 36.401169, 21.012566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241493, 36.787056, 21.247400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233521, 36.419300, 21.404541>,  <38.228737, 36.198647, 21.498825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233521, 36.419300, 21.404541>,  <38.241493, 36.787056, 21.247400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233521, 36.419300, 21.404541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123331, 0.392188, 0.911580,
		-0.992165, -0.030278, -0.121207,
		-0.019936, -0.919387, 0.392850,
		38.227539, 36.143486, 21.522396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733845, 36.822800, 21.768435>,  <38.241493, 36.787056, 21.247400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733845, 36.822800, 21.768435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930668, 36.496815, 21.890888>,  <38.048763, 36.301224, 21.964361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930668, 36.496815, 21.890888>,  <37.733845, 36.822800, 21.768435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930668, 36.496815, 21.890888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090644, 0.301779, 0.949059,
		-0.865831, -0.494740, 0.074621,
		0.492056, -0.814961, 0.306135,
		38.078285, 36.252327, 21.982729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415695, 36.602650, 22.309031>,  <37.733845, 36.822800, 21.768435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415695, 36.602650, 22.309031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783543, 36.451359, 22.351448>,  <38.004253, 36.360584, 22.376900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783543, 36.451359, 22.351448>,  <37.415695, 36.602650, 22.309031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783543, 36.451359, 22.351448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048360, 0.376927, 0.924980,
		-0.389820, -0.845502, 0.364921,
		0.919621, -0.378223, 0.106045,
		38.059429, 36.337891, 22.383261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500008, 36.095364, 23.008188>,  <37.415695, 36.602650, 22.309031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500008, 36.095364, 23.008188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797890, 36.345028, 22.913670>,  <37.976620, 36.494827, 22.856958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797890, 36.345028, 22.913670>,  <37.500008, 36.095364, 23.008188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797890, 36.345028, 22.913670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073589, 0.428692, 0.900449,
		0.663324, -0.653180, 0.365180,
		0.744705, 0.624162, -0.236295,
		38.021301, 36.532276, 22.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449970, 35.385567, 23.135433>,  <37.500008, 36.095364, 23.008188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449970, 35.385567, 23.135433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154404, 35.283310, 22.886066>,  <36.977062, 35.221954, 22.736446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154404, 35.283310, 22.886066>,  <37.449970, 35.385567, 23.135433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154404, 35.283310, 22.886066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475116, -0.458377, 0.751103,
		-0.477773, 0.851198, 0.217242,
		-0.738916, -0.255642, -0.623418,
		36.932728, 35.206619, 22.699041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879032, 35.604294, 23.536119>,  <37.449970, 35.385567, 23.135433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879032, 35.604294, 23.536119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807274, 35.337460, 23.246895>,  <36.764217, 35.177361, 23.073360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807274, 35.337460, 23.246895>,  <36.879032, 35.604294, 23.536119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807274, 35.337460, 23.246895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397597, -0.623119, 0.673528,
		-0.899852, 0.408317, -0.153444,
		-0.179399, -0.667084, -0.723060,
		36.753452, 35.137333, 23.029978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080692, 35.510250, 23.446707>,  <36.879032, 35.604294, 23.536119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080692, 35.510250, 23.446707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344128, 35.226692, 23.345730>,  <36.502190, 35.056557, 23.285143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344128, 35.226692, 23.345730>,  <36.080692, 35.510250, 23.446707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344128, 35.226692, 23.345730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513779, -0.668710, 0.537456,
		-0.549811, -0.224263, -0.804621,
		0.658589, -0.708896, -0.252442,
		36.541702, 35.014023, 23.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837536, 34.916473, 22.991297>,  <36.080692, 35.510250, 23.446707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837536, 34.916473, 22.991297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132050, 34.770390, 23.219162>,  <36.308758, 34.682739, 23.355881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132050, 34.770390, 23.219162>,  <35.837536, 34.916473, 22.991297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132050, 34.770390, 23.219162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669543, -0.515091, 0.535157,
		0.097985, -0.775440, -0.623772,
		0.736281, -0.365205, 0.569662,
		36.352936, 34.660828, 23.390060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872593, 34.208759, 22.935509>,  <35.837536, 34.916473, 22.991297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872593, 34.208759, 22.935509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033657, 34.278244, 23.294994>,  <36.130295, 34.319935, 23.510685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033657, 34.278244, 23.294994>,  <35.872593, 34.208759, 22.935509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033657, 34.278244, 23.294994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730907, -0.530036, 0.429927,
		0.551034, -0.829992, -0.086459,
		0.402663, 0.173711, 0.898714,
		36.154457, 34.330357, 23.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040592, 33.564877, 23.372307>,  <35.872593, 34.208759, 22.935509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040592, 33.564877, 23.372307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993168, 33.871475, 23.624790>,  <35.964714, 34.055435, 23.776279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993168, 33.871475, 23.624790>,  <36.040592, 33.564877, 23.372307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993168, 33.871475, 23.624790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679013, -0.526411, 0.511696,
		0.724489, -0.367928, 0.582877,
		-0.118565, 0.766499, 0.631207,
		35.957600, 34.101425, 23.814152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224777, 33.274101, 24.076435>,  <36.040592, 33.564877, 23.372307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224777, 33.274101, 24.076435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989693, 33.594009, 24.125366>,  <35.848640, 33.785954, 24.154724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989693, 33.594009, 24.125366>,  <36.224777, 33.274101, 24.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989693, 33.594009, 24.125366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615020, -0.539856, 0.574722,
		0.525684, 0.262537, 0.809154,
		-0.587713, 0.799768, 0.122328,
		35.813377, 33.833939, 24.162066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118595, 33.491592, 24.806854>,  <36.224777, 33.274101, 24.076435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118595, 33.491592, 24.806854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798183, 33.662308, 24.638947>,  <35.605938, 33.764736, 24.538202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798183, 33.662308, 24.638947>,  <36.118595, 33.491592, 24.806854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798183, 33.662308, 24.638947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574563, -0.351306, 0.739231,
		0.168028, 0.833328, 0.526622,
		-0.801027, 0.426789, -0.419770,
		35.557877, 33.790344, 24.513016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740688, 33.735359, 25.467705>,  <36.118595, 33.491592, 24.806854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740688, 33.735359, 25.467705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498257, 33.714745, 25.150211>,  <35.352798, 33.702377, 24.959715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498257, 33.714745, 25.150211>,  <35.740688, 33.735359, 25.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498257, 33.714745, 25.150211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743740, -0.317055, 0.588495,
		-0.281986, 0.947006, 0.153831,
		-0.606081, -0.051537, -0.793731,
		35.316433, 33.699284, 24.912092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127258, 33.921402, 25.693407>,  <35.740688, 33.735359, 25.467705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127258, 33.921402, 25.693407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036221, 33.715626, 25.362698>,  <34.981598, 33.592159, 25.164272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036221, 33.715626, 25.362698>,  <35.127258, 33.921402, 25.693407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036221, 33.715626, 25.362698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789551, -0.399440, 0.465893,
		-0.569919, 0.758816, -0.315263,
		-0.227599, -0.514438, -0.826772,
		34.967941, 33.561295, 25.114666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322956, 33.855240, 25.732141>,  <35.127258, 33.921402, 25.693407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322956, 33.855240, 25.732141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439888, 33.566277, 25.481487>,  <34.510048, 33.392899, 25.331095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439888, 33.566277, 25.481487>,  <34.322956, 33.855240, 25.732141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439888, 33.566277, 25.481487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616582, -0.643253, 0.453931,
		-0.731008, 0.253677, -0.633462,
		0.292325, -0.722408, -0.626635,
		34.527584, 33.349552, 25.293497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754646, 33.481831, 25.613972>,  <34.322956, 33.855240, 25.732141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754646, 33.481831, 25.613972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045872, 33.231033, 25.503113>,  <34.220608, 33.080555, 25.436598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045872, 33.231033, 25.503113>,  <33.754646, 33.481831, 25.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045872, 33.231033, 25.503113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594958, -0.778767, 0.198863,
		-0.340519, 0.020108, -0.940023,
		0.728060, -0.626991, -0.277148,
		34.264290, 33.042934, 25.419968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423824, 33.162498, 25.083153>,  <33.754646, 33.481831, 25.613972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423824, 33.162498, 25.083153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736156, 32.977764, 25.251442>,  <33.923557, 32.866924, 25.352415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736156, 32.977764, 25.251442>,  <33.423824, 33.162498, 25.083153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736156, 32.977764, 25.251442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623052, -0.526166, 0.578754,
		-0.045920, -0.714042, -0.698595,
		0.780832, -0.461837, 0.420724,
		33.970406, 32.839214, 25.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149643, 32.498253, 25.381561>,  <33.423824, 33.162498, 25.083153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149643, 32.498253, 25.381561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513691, 32.535622, 25.543034>,  <33.732121, 32.558044, 25.639917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513691, 32.535622, 25.543034>,  <33.149643, 32.498253, 25.381561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513691, 32.535622, 25.543034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312436, -0.485181, 0.816691,
		0.272157, -0.869409, -0.412382,
		0.910117, 0.093426, 0.403680,
		33.786728, 32.563648, 25.664137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359562, 31.800276, 25.682552>,  <33.149643, 32.498253, 25.381561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359562, 31.800276, 25.682552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580830, 32.080833, 25.862350>,  <33.713593, 32.249168, 25.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580830, 32.080833, 25.862350>,  <33.359562, 31.800276, 25.682552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580830, 32.080833, 25.862350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158965, -0.440782, 0.883426,
		0.817760, -0.560141, -0.132331,
		0.553172, 0.701394, 0.449496,
		33.746780, 32.291252, 25.997200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737576, 31.379560, 26.097704>,  <33.359562, 31.800276, 25.682552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737576, 31.379560, 26.097704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768936, 31.740974, 26.266216>,  <33.787750, 31.957823, 26.367323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768936, 31.740974, 26.266216>,  <33.737576, 31.379560, 26.097704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768936, 31.740974, 26.266216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159986, -0.405701, 0.899895,
		0.984001, -0.137950, 0.112746,
		0.078399, 0.903535, 0.421280,
		33.792458, 32.012035, 26.392601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029167, 31.163675, 26.708031>,  <33.737576, 31.379560, 26.097704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029167, 31.163675, 26.708031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892124, 31.530605, 26.789154>,  <33.809898, 31.750763, 26.837828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892124, 31.530605, 26.789154>,  <34.029167, 31.163675, 26.708031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892124, 31.530605, 26.789154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074116, -0.188808, 0.979213,
		0.936550, 0.350520, -0.003301,
		-0.342611, 0.917326, 0.202807,
		33.789341, 31.805803, 26.849997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452602, 31.483736, 27.237843>,  <34.029167, 31.163675, 26.708031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452602, 31.483736, 27.237843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099174, 31.661816, 27.295944>,  <33.887119, 31.768663, 27.330805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099174, 31.661816, 27.295944>,  <34.452602, 31.483736, 27.237843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099174, 31.661816, 27.295944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107484, -0.109102, 0.988203,
		0.455795, 0.888760, 0.048547,
		-0.883571, 0.445200, 0.145255,
		33.834103, 31.795376, 27.339521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499763, 31.794266, 27.967768>,  <34.452602, 31.483736, 27.237843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499763, 31.794266, 27.967768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114895, 31.841949, 27.869770>,  <33.883976, 31.870560, 27.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114895, 31.841949, 27.869770>,  <34.499763, 31.794266, 27.967768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114895, 31.841949, 27.869770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251789, -0.045495, 0.966712,
		0.104093, 0.991826, 0.073789,
		-0.962168, 0.119208, -0.244995,
		33.826244, 31.877712, 27.796272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206486, 32.482067, 28.163425>,  <34.499763, 31.794266, 27.967768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206486, 32.482067, 28.163425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915276, 32.207851, 28.161800>,  <33.740547, 32.043324, 28.160826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915276, 32.207851, 28.161800>,  <34.206486, 32.482067, 28.163425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915276, 32.207851, 28.161800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082302, 0.081517, 0.993268,
		-0.680590, 0.723461, -0.115768,
		-0.728028, -0.685536, -0.004063,
		33.696869, 32.002190, 28.160582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943668, 32.592796, 28.803419>,  <34.206486, 32.482067, 28.163425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943668, 32.592796, 28.803419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756527, 32.252029, 28.709309>,  <33.644241, 32.047569, 28.652843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756527, 32.252029, 28.709309>,  <33.943668, 32.592796, 28.803419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756527, 32.252029, 28.709309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196703, -0.159160, 0.967459,
		-0.861638, 0.498909, -0.093110,
		-0.467855, -0.851914, -0.235275,
		33.616169, 31.996454, 28.638725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245197, 32.553574, 29.242235>,  <33.943668, 32.592796, 28.803419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245197, 32.553574, 29.242235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327797, 32.183105, 29.116020>,  <33.377357, 31.960825, 29.040291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327797, 32.183105, 29.116020>,  <33.245197, 32.553574, 29.242235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327797, 32.183105, 29.116020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235519, -0.360058, 0.902712,
		-0.949678, -0.112094, -0.292483,
		0.206500, -0.926171, -0.315539,
		33.389748, 31.905254, 29.021358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674202, 32.092297, 29.523972>,  <33.245197, 32.553574, 29.242235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674202, 32.092297, 29.523972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984241, 31.851578, 29.446976>,  <33.170265, 31.707146, 29.400778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984241, 31.851578, 29.446976>,  <32.674202, 32.092297, 29.523972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984241, 31.851578, 29.446976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097520, -0.414945, 0.904605,
		-0.624265, -0.682390, -0.380312,
		0.775102, -0.601802, -0.192489,
		33.216774, 31.671038, 29.389229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523544, 31.459064, 29.854193>,  <32.674202, 32.092297, 29.523972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523544, 31.459064, 29.854193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921906, 31.438461, 29.824467>,  <33.160923, 31.426100, 29.806631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921906, 31.438461, 29.824467>,  <32.523544, 31.459064, 29.854193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921906, 31.438461, 29.824467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051210, -0.356082, 0.933050,
		-0.074524, -0.933034, -0.351986,
		0.995904, -0.051510, -0.074317,
		33.220676, 31.423008, 29.802172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751892, 30.782843, 30.007898>,  <32.523544, 31.459064, 29.854193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751892, 30.782843, 30.007898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094383, 30.985477, 30.048393>,  <33.299877, 31.107059, 30.072691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094383, 30.985477, 30.048393>,  <32.751892, 30.782843, 30.007898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094383, 30.985477, 30.048393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157450, -0.442541, 0.882818,
		0.492028, -0.739949, -0.458676,
		0.856223, 0.506590, 0.101238,
		33.351250, 31.137455, 30.078764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161533, 30.316339, 30.240664>,  <32.751892, 30.782843, 30.007898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161533, 30.316339, 30.240664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350887, 30.653458, 30.343117>,  <33.464500, 30.855728, 30.404589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350887, 30.653458, 30.343117>,  <33.161533, 30.316339, 30.240664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350887, 30.653458, 30.343117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112934, -0.346448, 0.931246,
		0.873587, -0.411910, -0.259183,
		0.473384, 0.842795, 0.256134,
		33.492901, 30.906296, 30.419956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827606, 30.142878, 30.530693>,  <33.161533, 30.316339, 30.240664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827606, 30.142878, 30.530693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747513, 30.510750, 30.665802>,  <33.699455, 30.731474, 30.746868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747513, 30.510750, 30.665802>,  <33.827606, 30.142878, 30.530693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747513, 30.510750, 30.665802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220386, -0.293640, 0.930164,
		0.954639, 0.260694, -0.143888,
		-0.200237, 0.919682, 0.337774,
		33.687443, 30.786654, 30.767134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459225, 30.291498, 30.919117>,  <33.827606, 30.142878, 30.530693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459225, 30.291498, 30.919117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.568684, 31.044678>,  <34.043831, 30.734995, 31.120014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.568684, 31.044678>,  <34.459225, 30.291498, 30.919117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199604, 30.568684, 31.044678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303001, -0.143005, 0.942200,
		0.697801, 0.706646, -0.117152,
		-0.649049, 0.692965, 0.313903,
		34.004890, 30.776573, 31.138849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860126, 30.834297, 31.200653>,  <34.459225, 30.291498, 30.919117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860126, 30.834297, 31.200653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492504, 30.841606, 31.358139>,  <34.271931, 30.845991, 31.452631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492504, 30.841606, 31.358139>,  <34.860126, 30.834297, 31.200653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492504, 30.841606, 31.358139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384981, -0.172451, 0.906670,
		0.084462, 0.984849, 0.151457,
		-0.919051, 0.018271, 0.393714,
		34.216789, 30.847088, 31.476254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002365, 31.038364, 31.908167>,  <34.860126, 30.834297, 31.200653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002365, 31.038364, 31.908167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616505, 30.935844, 31.932701>,  <34.384991, 30.874332, 31.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616505, 30.935844, 31.932701>,  <35.002365, 31.038364, 31.908167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616505, 30.935844, 31.932701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116641, -0.206528, 0.971463,
		-0.236320, 0.944275, 0.229122,
		-0.964649, -0.256301, 0.061335,
		34.327110, 30.858953, 31.951101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715717, 31.359947, 32.584618>,  <35.002365, 31.038364, 31.908167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715717, 31.359947, 32.584618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473732, 31.051167, 32.506535>,  <34.328541, 30.865898, 32.459686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473732, 31.051167, 32.506535>,  <34.715717, 31.359947, 32.584618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473732, 31.051167, 32.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040314, -0.215151, 0.975749,
		-0.795231, 0.598164, 0.099038,
		-0.604965, -0.771952, -0.195209,
		34.292244, 30.819580, 32.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095966, 31.431900, 32.988052>,  <34.715717, 31.359947, 32.584618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095966, 31.431900, 32.988052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093563, 31.040855, 32.903923>,  <34.092121, 30.806229, 32.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093563, 31.040855, 32.903923>,  <34.095966, 31.431900, 32.988052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093563, 31.040855, 32.903923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148077, -0.207139, 0.967040,
		-0.988958, 0.036950, -0.143519,
		-0.006004, -0.977614, -0.210323,
		34.091763, 30.747572, 32.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512035, 31.136566, 33.212234>,  <34.095966, 31.431900, 32.988052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512035, 31.136566, 33.212234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753319, 30.817928, 33.196358>,  <33.898090, 30.626745, 33.186832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753319, 30.817928, 33.196358>,  <33.512035, 31.136566, 33.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753319, 30.817928, 33.196358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357008, -0.314171, 0.879683,
		-0.713221, -0.516463, -0.473901,
		0.603209, -0.796595, -0.039692,
		33.934280, 30.578949, 33.184452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100613, 30.636232, 33.575573>,  <33.512035, 31.136566, 33.212234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100613, 30.636232, 33.575573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467625, 30.477165, 33.576656>,  <33.687832, 30.381725, 33.577309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467625, 30.477165, 33.576656>,  <33.100613, 30.636232, 33.575573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467625, 30.477165, 33.576656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110568, -0.248548, 0.962288,
		-0.381995, -0.883225, -0.272018,
		0.917526, -0.397666, 0.002712,
		33.742882, 30.357864, 33.577469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954990, 30.079218, 33.964882>,  <33.100613, 30.636232, 33.575573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954990, 30.079218, 33.964882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348019, 30.145718, 33.998161>,  <33.583836, 30.185617, 34.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348019, 30.145718, 33.998161>,  <32.954990, 30.079218, 33.964882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348019, 30.145718, 33.998161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039449, -0.250869, 0.967217,
		0.181670, -0.953638, -0.239937,
		0.982568, 0.166249, 0.083195,
		33.642788, 30.195593, 34.023121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142841, 29.536776, 34.297100>,  <32.954990, 30.079218, 33.964882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142841, 29.536776, 34.297100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421112, 29.816547, 34.362621>,  <33.588074, 29.984409, 34.401932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421112, 29.816547, 34.362621>,  <33.142841, 29.536776, 34.297100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421112, 29.816547, 34.362621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025899, -0.203452, 0.978742,
		0.717885, -0.685133, -0.123423,
		0.695679, 0.699428, 0.163799,
		33.629814, 30.026377, 34.411762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540569, 29.178308, 34.731602>,  <33.142841, 29.536776, 34.297100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540569, 29.178308, 34.731602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641735, 29.562862, 34.775009>,  <33.702435, 29.793594, 34.801056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641735, 29.562862, 34.775009>,  <33.540569, 29.178308, 34.731602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641735, 29.562862, 34.775009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058092, -0.096876, 0.993600,
		0.965742, -0.257602, 0.031347,
		0.252917, 0.961382, 0.108521,
		33.717609, 29.851276, 34.807564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037258, 29.181244, 35.248306>,  <33.540569, 29.178308, 34.731602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037258, 29.181244, 35.248306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915604, 29.562229, 35.241245>,  <33.842609, 29.790821, 35.237007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915604, 29.562229, 35.241245>,  <34.037258, 29.181244, 35.248306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915604, 29.562229, 35.241245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085263, 0.045673, 0.995311,
		0.948804, 0.301210, -0.095101,
		-0.304141, 0.952464, -0.017653,
		33.824360, 29.847969, 35.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537735, 29.541281, 35.644234>,  <34.037258, 29.181244, 35.248306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537735, 29.541281, 35.644234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191883, 29.741779, 35.657917>,  <33.984371, 29.862078, 35.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191883, 29.741779, 35.657917>,  <34.537735, 29.541281, 35.644234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191883, 29.741779, 35.657917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088800, 0.085453, 0.992377,
		0.494503, 0.861075, -0.118395,
		-0.864628, 0.501247, 0.034207,
		33.932495, 29.892153, 35.668179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607887, 30.240892, 35.969017>,  <34.537735, 29.541281, 35.644234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607887, 30.240892, 35.969017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216026, 30.168812, 36.004383>,  <33.980911, 30.125563, 36.025604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216026, 30.168812, 36.004383>,  <34.607887, 30.240892, 35.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216026, 30.168812, 36.004383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025866, 0.323496, 0.945876,
		-0.199051, 0.928912, -0.312251,
		-0.979648, -0.180201, 0.088419,
		33.922131, 30.114752, 36.030910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348240, 30.726774, 36.471409>,  <34.607887, 30.240892, 35.969017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348240, 30.726774, 36.471409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043709, 30.467915, 36.487305>,  <33.860989, 30.312599, 36.496841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043709, 30.467915, 36.487305>,  <34.348240, 30.726774, 36.471409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043709, 30.467915, 36.487305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095912, 0.173034, 0.980235,
		-0.641233, 0.742469, -0.193805,
		-0.761329, -0.647147, 0.039744,
		33.815311, 30.273771, 36.499229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875301, 31.094990, 36.745613>,  <34.348240, 30.726774, 36.471409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875301, 31.094990, 36.745613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742367, 30.721485, 36.798744>,  <33.662605, 30.497383, 36.830624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742367, 30.721485, 36.798744>,  <33.875301, 31.094990, 36.745613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742367, 30.721485, 36.798744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159109, 0.194318, 0.967949,
		-0.929643, 0.300553, -0.213149,
		-0.332339, -0.933760, 0.132825,
		33.642666, 30.441357, 36.838593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401604, 31.099417, 37.197250>,  <33.875301, 31.094990, 36.745613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401604, 31.099417, 37.197250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521965, 30.718456, 37.216785>,  <33.594181, 30.489880, 37.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521965, 30.718456, 37.216785>,  <33.401604, 31.099417, 37.197250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521965, 30.718456, 37.216785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127609, 0.010534, 0.991768,
		-0.945078, -0.304659, -0.118366,
		0.300905, -0.952403, 0.048833,
		33.612236, 30.432735, 37.231434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932716, 30.853304, 37.599144>,  <33.401604, 31.099417, 37.197250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932716, 30.853304, 37.599144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249424, 30.609211, 37.609879>,  <33.439449, 30.462755, 37.616322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249424, 30.609211, 37.609879>,  <32.932716, 30.853304, 37.599144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249424, 30.609211, 37.609879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050929, 0.109740, 0.992655,
		-0.608696, -0.784585, 0.117967,
		0.791767, -0.610232, 0.026840,
		33.486954, 30.426142, 37.617931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673378, 30.382633, 37.996925>,  <32.932716, 30.853304, 37.599144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673378, 30.382633, 37.996925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073193, 30.371208, 38.001305>,  <33.313080, 30.364353, 38.003933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073193, 30.371208, 38.001305>,  <32.673378, 30.382633, 37.996925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073193, 30.371208, 38.001305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010246, 0.024666, 0.999643,
		-0.028827, -0.999288, 0.024361,
		0.999532, -0.028567, 0.010950,
		33.373051, 30.362638, 38.004589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834465, 29.838348, 38.441269>,  <32.673378, 30.382633, 37.996925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834465, 29.838348, 38.441269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154652, 30.077045, 38.463722>,  <33.346764, 30.220263, 38.477192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154652, 30.077045, 38.463722>,  <32.834465, 29.838348, 38.441269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154652, 30.077045, 38.463722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051160, -0.161332, 0.985573,
		0.597188, -0.786048, -0.159671,
		0.800468, 0.596741, 0.056131,
		33.394791, 30.256067, 38.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344765, 29.394634, 38.721230>,  <32.834465, 29.838348, 38.441269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344765, 29.394634, 38.721230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426113, 29.779354, 38.794529>,  <33.474922, 30.010185, 38.838509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426113, 29.779354, 38.794529>,  <33.344765, 29.394634, 38.721230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426113, 29.779354, 38.794529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287797, -0.237618, 0.927745,
		0.935848, -0.135939, -0.325129,
		0.203373, 0.961800, 0.183252,
		33.487125, 30.067894, 38.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999771, 29.360577, 39.094799>,  <33.344765, 29.394634, 38.721230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999771, 29.360577, 39.094799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801231, 29.697220, 39.179966>,  <33.682106, 29.899206, 39.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801231, 29.697220, 39.179966>,  <33.999771, 29.360577, 39.094799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801231, 29.697220, 39.179966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099462, -0.188515, 0.977021,
		0.862406, 0.506121, 0.009862,
		-0.496350, 0.841608, 0.212916,
		33.652325, 29.949701, 39.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376129, 29.630751, 39.557968>,  <33.999771, 29.360577, 39.094799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376129, 29.630751, 39.557968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054127, 29.866386, 39.586094>,  <33.860928, 30.007769, 39.602970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054127, 29.866386, 39.586094>,  <34.376129, 29.630751, 39.557968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054127, 29.866386, 39.586094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136291, 0.068280, 0.988313,
		0.577405, 0.805177, -0.135253,
		-0.805002, 0.589091, 0.070313,
		33.812626, 30.043114, 39.607189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342525, 30.368948, 39.909790>,  <34.376129, 29.630751, 39.557968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342525, 30.368948, 39.909790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998856, 30.180103, 39.988716>,  <33.792656, 30.066795, 40.036072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998856, 30.180103, 39.988716>,  <34.342525, 30.368948, 39.909790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998856, 30.180103, 39.988716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187213, 0.068851, 0.979903,
		-0.476212, 0.878845, 0.029231,
		-0.859170, -0.472114, 0.197318,
		33.741104, 30.038469, 40.047913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145611, 30.691372, 40.505585>,  <34.342525, 30.368948, 39.909790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145611, 30.691372, 40.505585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916454, 30.364758, 40.477097>,  <33.778961, 30.168789, 40.460003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916454, 30.364758, 40.477097>,  <34.145611, 30.691372, 40.505585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916454, 30.364758, 40.477097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152803, 0.021027, 0.988033,
		-0.805265, 0.576915, -0.136815,
		-0.572887, -0.816534, -0.071222,
		33.744587, 30.119797, 40.455730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803165, 30.953386, 39.763912>,  <34.145611, 30.691372, 40.505585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803165, 30.953386, 39.763912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648003, 31.156055, 39.455933>,  <33.554905, 31.277657, 39.271145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648003, 31.156055, 39.455933>,  <33.803165, 30.953386, 39.763912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648003, 31.156055, 39.455933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870259, -0.476504, 0.124876,
		-0.303610, 0.718491, 0.625773,
		-0.387905, 0.506671, -0.769944,
		33.531631, 31.308056, 39.224949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127857, 31.370720, 39.934433>,  <33.803165, 30.953386, 39.763912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127857, 31.370720, 39.934433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155098, 31.235584, 39.558937>,  <33.171444, 31.154503, 39.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155098, 31.235584, 39.558937>,  <33.127857, 31.370720, 39.934433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155098, 31.235584, 39.558937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851884, -0.509434, 0.121534,
		-0.519284, 0.791418, -0.322493,
		0.068105, -0.337837, -0.938737,
		33.175529, 31.134233, 39.277317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478462, 31.531866, 39.534702>,  <33.127857, 31.370720, 39.934433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478462, 31.531866, 39.534702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667484, 31.195015, 39.430771>,  <32.780899, 30.992905, 39.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667484, 31.195015, 39.430771>,  <32.478462, 31.531866, 39.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667484, 31.195015, 39.430771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813681, -0.530160, 0.238442,
		-0.338548, 0.098738, -0.935754,
		0.472556, -0.842129, -0.259825,
		32.809250, 30.942377, 39.352821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906042, 31.255348, 39.313751>,  <32.478462, 31.531866, 39.534702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906042, 31.255348, 39.313751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148842, 30.937901, 39.330334>,  <32.294521, 30.747433, 39.340282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148842, 30.937901, 39.330334>,  <31.906042, 31.255348, 39.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148842, 30.937901, 39.330334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729385, -0.577064, -0.367416,
		0.315511, 0.192784, -0.929133,
		0.607001, -0.793619, 0.041456,
		32.330944, 30.699816, 39.342770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050819, 31.981308, 39.074795>,  <31.906042, 31.255348, 39.313751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050819, 31.981308, 39.074795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303669, 32.150185, 39.334694>,  <32.455379, 32.251511, 39.490631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303669, 32.150185, 39.334694>,  <32.050819, 31.981308, 39.074795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303669, 32.150185, 39.334694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170797, 0.741987, -0.648293,
		-0.755806, 0.520778, 0.396921,
		0.632128, 0.422191, 0.649746,
		32.493309, 32.276840, 39.529617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073082, 32.714054, 39.052643>,  <32.050819, 31.981308, 39.074795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073082, 32.714054, 39.052643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435684, 32.621002, 39.193573>,  <32.653244, 32.565170, 39.278130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435684, 32.621002, 39.193573>,  <32.073082, 32.714054, 39.052643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435684, 32.621002, 39.193573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419823, 0.584994, -0.693924,
		-0.044679, 0.776959, 0.627964,
		0.906506, -0.232630, 0.352322,
		32.707638, 32.551212, 39.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597149, 33.273827, 39.185921>,  <32.073082, 32.714054, 39.052643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597149, 33.273827, 39.185921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791378, 32.945438, 39.065769>,  <32.907917, 32.748405, 38.993679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791378, 32.945438, 39.065769>,  <32.597149, 33.273827, 39.185921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791378, 32.945438, 39.065769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278906, 0.471134, -0.836806,
		0.828508, 0.322557, 0.457745,
		0.485577, -0.820969, -0.300375,
		32.937050, 32.699146, 38.975658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269707, 33.437092, 38.836758>,  <32.597149, 33.273827, 39.185921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269707, 33.437092, 38.836758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159237, 33.080280, 38.693645>,  <33.092957, 32.866192, 38.607780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159237, 33.080280, 38.693645>,  <33.269707, 33.437092, 38.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159237, 33.080280, 38.693645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391627, 0.235503, -0.889475,
		0.877699, -0.385766, 0.284304,
		-0.276175, -0.892033, -0.357777,
		33.076385, 32.812672, 38.586311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822292, 33.247402, 38.453125>,  <33.269707, 33.437092, 38.836758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822292, 33.247402, 38.453125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508831, 33.028782, 38.335022>,  <33.320755, 32.897610, 38.264160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508831, 33.028782, 38.335022>,  <33.822292, 33.247402, 38.453125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508831, 33.028782, 38.335022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311506, 0.065486, -0.947985,
		0.537456, -0.834863, 0.118935,
		-0.783649, -0.546549, -0.295260,
		33.273735, 32.864819, 38.246445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117542, 32.761028, 38.051914>,  <33.822292, 33.247402, 38.453125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117542, 32.761028, 38.051914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740238, 32.771183, 37.919487>,  <33.513855, 32.777275, 37.840031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740238, 32.771183, 37.919487>,  <34.117542, 32.761028, 38.051914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740238, 32.771183, 37.919487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331768, 0.112669, -0.936609,
		0.013525, -0.993308, -0.114699,
		-0.943264, 0.025386, -0.331071,
		33.457260, 32.778797, 37.820164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148109, 32.434269, 37.366047>,  <34.117542, 32.761028, 38.051914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148109, 32.434269, 37.366047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820763, 32.663101, 37.344173>,  <33.624352, 32.800400, 37.331051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820763, 32.663101, 37.344173>,  <34.148109, 32.434269, 37.366047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820763, 32.663101, 37.344173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109850, 0.062320, -0.991993,
		-0.564093, -0.817825, -0.113844,
		-0.818372, 0.572082, -0.054684,
		33.575253, 32.834724, 37.327766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849934, 32.255226, 36.721653>,  <34.148109, 32.434269, 37.366047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849934, 32.255226, 36.721653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671497, 32.598297, 36.823940>,  <33.564438, 32.804138, 36.885311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671497, 32.598297, 36.823940>,  <33.849934, 32.255226, 36.721653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671497, 32.598297, 36.823940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146105, 0.212102, -0.966264,
		-0.882982, -0.468401, 0.030695,
		-0.446089, 0.857679, 0.255718,
		33.537670, 32.855602, 36.900658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355824, 32.425255, 36.130474>,  <33.849934, 32.255226, 36.721653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355824, 32.425255, 36.130474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383934, 32.762226, 36.344154>,  <33.400803, 32.964409, 36.472363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383934, 32.762226, 36.344154>,  <33.355824, 32.425255, 36.130474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383934, 32.762226, 36.344154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111835, 0.538804, -0.834975,
		-0.991239, -0.001061, 0.132080,
		0.070280, 0.842431, 0.534202,
		33.405018, 33.014954, 36.504414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756817, 32.958805, 35.892498>,  <33.355824, 32.425255, 36.130474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756817, 32.958805, 35.892498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036457, 33.184868, 36.067703>,  <33.204239, 33.320507, 36.172829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036457, 33.184868, 36.067703>,  <32.756817, 32.958805, 35.892498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036457, 33.184868, 36.067703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093237, 0.679409, -0.727812,
		-0.708921, 0.467972, 0.527667,
		0.699098, 0.565159, 0.438016,
		33.246185, 33.354416, 36.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451199, 33.640213, 36.052265>,  <32.756817, 32.958805, 35.892498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451199, 33.640213, 36.052265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848225, 33.686241, 36.036427>,  <33.086441, 33.713860, 36.026924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848225, 33.686241, 36.036427>,  <32.451199, 33.640213, 36.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848225, 33.686241, 36.036427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111921, 0.735399, -0.668328,
		-0.047787, 0.667792, 0.742812,
		0.992567, 0.115074, -0.039597,
		33.145996, 33.720764, 36.024548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534573, 34.243301, 35.809757>,  <32.451199, 33.640213, 36.052265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534573, 34.243301, 35.809757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916157, 34.142548, 35.744625>,  <33.145107, 34.082096, 35.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916157, 34.142548, 35.744625>,  <32.534573, 34.243301, 35.809757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916157, 34.142548, 35.744625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011184, 0.572384, -0.819909,
		0.299723, 0.780340, 0.548849,
		0.953961, -0.251884, -0.162829,
		33.202347, 34.066982, 35.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910526, 34.858158, 35.664616>,  <32.534573, 34.243301, 35.809757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910526, 34.858158, 35.664616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170734, 34.593616, 35.515247>,  <33.326859, 34.434891, 35.425629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170734, 34.593616, 35.515247>,  <32.910526, 34.858158, 35.664616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170734, 34.593616, 35.515247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022364, 0.508136, -0.860986,
		0.759163, 0.551735, 0.345341,
		0.650517, -0.661352, -0.373419,
		33.365891, 34.395210, 35.403221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650673, 35.265949, 35.521721>,  <32.910526, 34.858158, 35.664616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650673, 35.265949, 35.521721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577457, 34.942577, 35.297958>,  <33.533527, 34.748554, 35.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577457, 34.942577, 35.297958>,  <33.650673, 35.265949, 35.521721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577457, 34.942577, 35.297958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106717, 0.549316, -0.828772,
		0.977296, -0.211398, -0.014275,
		-0.183042, -0.808432, -0.559404,
		33.522545, 34.700047, 35.130138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202469, 35.294289, 34.975964>,  <33.650673, 35.265949, 35.521721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202469, 35.294289, 34.975964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922054, 35.033852, 34.859596>,  <33.753807, 34.877590, 34.789776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922054, 35.033852, 34.859596>,  <34.202469, 35.294289, 34.975964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922054, 35.033852, 34.859596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153857, 0.260245, -0.953205,
		0.696332, -0.712990, -0.082266,
		-0.701035, -0.651090, -0.290915,
		33.711742, 34.838524, 34.772324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405182, 35.266949, 34.324860>,  <34.202469, 35.294289, 34.975964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405182, 35.266949, 34.324860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081932, 35.032070, 34.306385>,  <33.887981, 34.891144, 34.295300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081932, 35.032070, 34.306385>,  <34.405182, 35.266949, 34.324860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081932, 35.032070, 34.306385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133048, -0.105595, -0.985469,
		0.573790, -0.802525, 0.163459,
		-0.808123, -0.587200, -0.046185,
		33.839497, 34.855911, 34.292530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555252, 34.798653, 33.851425>,  <34.405182, 35.266949, 34.324860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555252, 34.798653, 33.851425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156483, 34.768715, 33.860699>,  <33.917221, 34.750751, 33.866264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156483, 34.768715, 33.860699>,  <34.555252, 34.798653, 33.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156483, 34.768715, 33.860699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019986, -0.043213, -0.998866,
		0.075765, -0.996258, 0.041584,
		-0.996925, -0.074848, 0.023185,
		33.857407, 34.746262, 33.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396767, 34.198250, 33.407585>,  <34.555252, 34.798653, 33.851425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396767, 34.198250, 33.407585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074734, 34.435402, 33.400242>,  <33.881516, 34.577694, 33.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074734, 34.435402, 33.400242>,  <34.396767, 34.198250, 33.407585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074734, 34.435402, 33.400242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025869, -0.066023, -0.997483,
		-0.592597, -0.802582, 0.068491,
		-0.805084, 0.592877, -0.018363,
		33.833210, 34.613266, 33.394733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851967, 33.850773, 33.017288>,  <34.396767, 34.198250, 33.407585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851967, 33.850773, 33.017288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787392, 34.245464, 33.010365>,  <33.748646, 34.482281, 33.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787392, 34.245464, 33.010365>,  <33.851967, 33.850773, 33.017288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787392, 34.245464, 33.010365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025861, -0.013307, -0.999577,
		-0.986545, -0.161815, -0.023370,
		-0.161435, 0.986732, -0.017312,
		33.738960, 34.541485, 33.005169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239956, 34.021255, 32.592606>,  <33.851967, 33.850773, 33.017288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239956, 34.021255, 32.592606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451237, 34.360062, 32.616482>,  <33.578007, 34.563347, 32.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451237, 34.360062, 32.616482>,  <33.239956, 34.021255, 32.592606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451237, 34.360062, 32.616482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020522, 0.083011, -0.996337,
		-0.848869, 0.525045, 0.061229,
		0.528205, 0.847016, 0.059690,
		33.609699, 34.614166, 32.634388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036987, 34.332943, 32.043709>,  <33.239956, 34.021255, 32.592606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036987, 34.332943, 32.043709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 34.568569, 32.161900>,  <33.518349, 34.709946, 32.232815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 34.568569, 32.161900>,  <33.036987, 34.332943, 32.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337837, 34.568569, 32.161900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073250, 0.370849, -0.925800,
		-0.654937, 0.717961, 0.235776,
		0.752125, 0.589070, 0.295473,
		33.563477, 34.745289, 32.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849854, 35.045670, 31.888700>,  <33.036987, 34.332943, 32.043709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849854, 35.045670, 31.888700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245922, 34.993824, 31.909752>,  <33.483562, 34.962715, 31.922382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245922, 34.993824, 31.909752>,  <32.849854, 35.045670, 31.888700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245922, 34.993824, 31.909752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107962, 0.468789, -0.876688,
		0.088960, 0.873749, 0.478173,
		0.990167, -0.129615, 0.052629,
		33.542973, 34.954941, 31.925541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153244, 35.703609, 31.673603>,  <32.849854, 35.045670, 31.888700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153244, 35.703609, 31.673603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413700, 35.404636, 31.620903>,  <33.569973, 35.225254, 31.589283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413700, 35.404636, 31.620903>,  <33.153244, 35.703609, 31.673603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413700, 35.404636, 31.620903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089578, 0.248069, -0.964592,
		0.753653, 0.616283, 0.228481,
		0.651140, -0.747434, -0.131752,
		33.609043, 35.180405, 31.581377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523376, 35.934216, 31.075804>,  <33.153244, 35.703609, 31.673603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523376, 35.934216, 31.075804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646973, 35.555202, 31.108555>,  <33.721130, 35.327793, 31.128206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646973, 35.555202, 31.108555>,  <33.523376, 35.934216, 31.075804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646973, 35.555202, 31.108555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277623, 0.007521, -0.960661,
		0.909642, 0.319569, 0.265381,
		0.308993, -0.947533, 0.081878,
		33.739670, 35.270943, 31.133118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195980, 35.956024, 30.801943>,  <33.523376, 35.934216, 31.075804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195980, 35.956024, 30.801943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117001, 35.564034, 30.791660>,  <34.069611, 35.328838, 30.785490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117001, 35.564034, 30.791660>,  <34.195980, 35.956024, 30.801943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117001, 35.564034, 30.791660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026996, 0.020777, -0.999420,
		0.979941, -0.198032, 0.022353,
		-0.197453, -0.979975, -0.025707,
		34.057766, 35.270042, 30.783949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772751, 35.519794, 30.361380>,  <34.195980, 35.956024, 30.801943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772751, 35.519794, 30.361380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429760, 35.314011, 30.364567>,  <34.223965, 35.190540, 30.366480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429760, 35.314011, 30.364567>,  <34.772751, 35.519794, 30.361380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429760, 35.314011, 30.364567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042920, 0.056084, -0.997503,
		0.512725, -0.855681, -0.070171,
		-0.857480, -0.514457, 0.007970,
		34.172516, 35.159676, 30.366959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920231, 34.831882, 29.999199>,  <34.772751, 35.519794, 30.361380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920231, 34.831882, 29.999199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525681, 34.896599, 29.987270>,  <34.288952, 34.935429, 29.980114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525681, 34.896599, 29.987270>,  <34.920231, 34.831882, 29.999199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525681, 34.896599, 29.987270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018477, -0.071164, -0.997293,
		-0.163478, -0.984255, 0.067205,
		-0.986374, 0.161794, -0.029820,
		34.229767, 34.945137, 29.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728600, 34.442345, 29.500942>,  <34.920231, 34.831882, 29.999199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728600, 34.442345, 29.500942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418827, 34.689869, 29.553604>,  <34.232964, 34.838383, 29.585201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418827, 34.689869, 29.553604>,  <34.728600, 34.442345, 29.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418827, 34.689869, 29.553604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211450, -0.057037, -0.975723,
		-0.596282, -0.783464, 0.175019,
		-0.774427, 0.618814, 0.131653,
		34.186501, 34.875511, 29.593100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159447, 34.088917, 29.098471>,  <34.728600, 34.442345, 29.500942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159447, 34.088917, 29.098471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043163, 34.470955, 29.121376>,  <33.973392, 34.700180, 29.135120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043163, 34.470955, 29.121376>,  <34.159447, 34.088917, 29.098471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043163, 34.470955, 29.121376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169936, 0.007360, -0.985428,
		-0.941601, -0.296202, 0.160166,
		-0.290707, 0.955097, 0.057265,
		33.955952, 34.757484, 29.138556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556217, 34.235512, 28.570944>,  <34.159447, 34.088917, 29.098471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556217, 34.235512, 28.570944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722832, 34.589397, 28.654636>,  <33.822800, 34.801727, 28.704851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722832, 34.589397, 28.654636>,  <33.556217, 34.235512, 28.570944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722832, 34.589397, 28.654636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145470, 0.292044, -0.945277,
		-0.897404, 0.363309, 0.250347,
		0.416540, 0.884713, 0.209231,
		33.847794, 34.854813, 28.717405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087269, 34.654816, 28.258482>,  <33.556217, 34.235512, 28.570944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087269, 34.654816, 28.258482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400784, 34.894756, 28.322803>,  <33.588894, 35.038719, 28.361397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400784, 34.894756, 28.322803>,  <33.087269, 34.654816, 28.258482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400784, 34.894756, 28.322803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081513, 0.356056, -0.930903,
		-0.615658, 0.716521, 0.327967,
		0.783786, 0.599851, 0.160803,
		33.635918, 35.074711, 28.371044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876461, 35.313457, 27.995558>,  <33.087269, 34.654816, 28.258482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876461, 35.313457, 27.995558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275959, 35.293499, 27.993534>,  <33.515656, 35.281525, 27.992321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275959, 35.293499, 27.993534>,  <32.876461, 35.313457, 27.995558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275959, 35.293499, 27.993534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010152, 0.299863, -0.953928,
		0.049118, 0.952676, 0.299992,
		0.998741, -0.049901, -0.005057,
		33.575581, 35.278530, 27.992018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960991, 35.982773, 27.986832>,  <32.876461, 35.313457, 27.995558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960991, 35.982773, 27.986832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277653, 35.767311, 27.871502>,  <33.467651, 35.638035, 27.802303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277653, 35.767311, 27.871502>,  <32.960991, 35.982773, 27.986832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277653, 35.767311, 27.871502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089695, 0.364335, -0.926938,
		0.604345, 0.759679, 0.240114,
		0.791658, -0.538653, -0.288324,
		33.515152, 35.605717, 27.785006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371368, 36.456333, 27.625479>,  <32.960991, 35.982773, 27.986832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371368, 36.456333, 27.625479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496796, 36.098354, 27.498516>,  <33.572052, 35.883568, 27.422338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496796, 36.098354, 27.498516>,  <33.371368, 36.456333, 27.625479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496796, 36.098354, 27.498516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023895, 0.341597, -0.939543,
		0.949265, 0.287028, 0.128499,
		0.313570, -0.894945, -0.317407,
		33.590866, 35.829872, 27.403294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913258, 36.646072, 27.199951>,  <33.371368, 36.456333, 27.625479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913258, 36.646072, 27.199951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811165, 36.275654, 27.088749>,  <33.749908, 36.053402, 27.022028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811165, 36.275654, 27.088749>,  <33.913258, 36.646072, 27.199951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811165, 36.275654, 27.088749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106102, 0.258969, -0.960040,
		0.961040, -0.274534, 0.032157,
		-0.255236, -0.926049, -0.278008,
		33.734592, 35.997841, 27.005346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441483, 36.437447, 26.737474>,  <33.913258, 36.646072, 27.199951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441483, 36.437447, 26.737474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132343, 36.192844, 26.669624>,  <33.946861, 36.046085, 26.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132343, 36.192844, 26.669624>,  <34.441483, 36.437447, 26.737474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132343, 36.192844, 26.669624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069772, 0.183798, -0.980485,
		0.630745, -0.769600, -0.099382,
		-0.772847, -0.611502, -0.169626,
		33.900490, 36.009396, 26.618736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702946, 35.963238, 26.209860>,  <34.441483, 36.437447, 26.737474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702946, 35.963238, 26.209860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303043, 35.954544, 26.208733>,  <34.063103, 35.949326, 26.208055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303043, 35.954544, 26.208733>,  <34.702946, 35.963238, 26.209860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303043, 35.954544, 26.208733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000250, 0.139982, -0.990154,
		0.021915, -0.989916, -0.139953,
		-0.999760, -0.021734, -0.002820,
		34.003117, 35.948025, 26.207886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494381, 35.568394, 25.635321>,  <34.702946, 35.963238, 26.209860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494381, 35.568394, 25.635321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164978, 35.780842, 25.715057>,  <33.967335, 35.908310, 25.762899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164978, 35.780842, 25.715057>,  <34.494381, 35.568394, 25.635321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164978, 35.780842, 25.715057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148248, 0.137701, -0.979317,
		-0.547588, -0.836030, -0.034660,
		-0.823511, 0.531124, 0.199343,
		33.917923, 35.940178, 25.774860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994381, 35.342678, 25.136517>,  <34.494381, 35.568394, 25.635321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994381, 35.342678, 25.136517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874187, 35.701069, 25.267323>,  <33.802071, 35.916103, 25.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874187, 35.701069, 25.267323>,  <33.994381, 35.342678, 25.136517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874187, 35.701069, 25.267323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193379, 0.278509, -0.940764,
		-0.933977, -0.345924, 0.089574,
		-0.300486, 0.895974, 0.327015,
		33.784042, 35.969860, 25.365427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321907, 35.538464, 24.785837>,  <33.994381, 35.342678, 25.136517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321907, 35.538464, 24.785837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463261, 35.882492, 24.933025>,  <33.548073, 36.088909, 25.021338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463261, 35.882492, 24.933025>,  <33.321907, 35.538464, 24.785837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463261, 35.882492, 24.933025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014735, 0.398418, -0.917086,
		-0.935363, 0.318659, 0.153466,
		0.353381, 0.860070, 0.367970,
		33.569275, 36.140514, 25.043417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956688, 36.022839, 24.472631>,  <33.321907, 35.538464, 24.785837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956688, 36.022839, 24.472631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280018, 36.207180, 24.619175>,  <33.474018, 36.317787, 24.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280018, 36.207180, 24.619175>,  <32.956688, 36.022839, 24.472631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280018, 36.207180, 24.619175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179568, 0.399634, -0.898915,
		-0.560680, 0.792404, 0.240280,
		0.808327, 0.460857, 0.366358,
		33.522514, 36.345436, 24.729082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857086, 36.783283, 24.446646>,  <32.956688, 36.022839, 24.472631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857086, 36.783283, 24.446646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238205, 36.662838, 24.431076>,  <33.466877, 36.590569, 24.421734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238205, 36.662838, 24.431076>,  <32.857086, 36.783283, 24.446646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238205, 36.662838, 24.431076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069784, 0.341954, -0.937122,
		0.295495, 0.890166, 0.346824,
		0.952792, -0.301118, -0.038927,
		33.524044, 36.572502, 24.419397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555908, 37.415424, 24.648502>,  <32.857086, 36.783283, 24.446646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555908, 37.415424, 24.648502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172668, 37.417332, 24.533947>,  <31.942724, 37.418476, 24.465214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172668, 37.417332, 24.533947>,  <32.555908, 37.415424, 24.648502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172668, 37.417332, 24.533947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283495, -0.158576, 0.945772,
		-0.040901, 0.987335, 0.153285,
		-0.958101, 0.004773, -0.286390,
		31.885239, 37.418762, 24.448030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203529, 37.865719, 25.092148>,  <32.555908, 37.415424, 24.648502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203529, 37.865719, 25.092148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921061, 37.618008, 24.954849>,  <31.751579, 37.469379, 24.872471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921061, 37.618008, 24.954849>,  <32.203529, 37.865719, 25.092148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921061, 37.618008, 24.954849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459960, 0.032674, 0.887338,
		-0.538296, 0.784490, -0.307917,
		-0.706169, -0.619280, -0.343246,
		31.709209, 37.432224, 24.851875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606461, 38.077847, 25.498951>,  <32.203529, 37.865719, 25.092148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606461, 38.077847, 25.498951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509895, 37.719620, 25.349453>,  <31.451956, 37.504684, 25.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509895, 37.719620, 25.349453>,  <31.606461, 38.077847, 25.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509895, 37.719620, 25.349453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466399, -0.230662, 0.853971,
		-0.850995, 0.380473, -0.362006,
		-0.241412, -0.895564, -0.373744,
		31.437471, 37.450951, 25.237329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911383, 37.996948, 25.812681>,  <31.606461, 38.077847, 25.498951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911383, 37.996948, 25.812681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059980, 37.643398, 25.699017>,  <31.149139, 37.431267, 25.630817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059980, 37.643398, 25.699017>,  <30.911383, 37.996948, 25.812681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059980, 37.643398, 25.699017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429772, -0.435013, 0.791240,
		-0.822975, -0.171816, -0.541472,
		0.371495, -0.883880, -0.284163,
		31.171429, 37.378235, 25.613768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251928, 37.630547, 25.746109>,  <30.911383, 37.996948, 25.812681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251928, 37.630547, 25.746109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558893, 37.381027, 25.805378>,  <30.743073, 37.231316, 25.840939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558893, 37.381027, 25.805378>,  <30.251928, 37.630547, 25.746109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558893, 37.381027, 25.805378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502809, -0.442140, 0.742762,
		-0.397815, -0.644511, -0.652954,
		0.767415, -0.623793, 0.148176,
		30.789118, 37.193890, 25.849829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011303, 36.972965, 25.944529>,  <30.251928, 37.630547, 25.746109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011303, 36.972965, 25.944529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388348, 36.945778, 26.075287>,  <30.614574, 36.929466, 26.153742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388348, 36.945778, 26.075287>,  <30.011303, 36.972965, 25.944529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388348, 36.945778, 26.075287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323732, -0.425696, 0.844974,
		0.081725, -0.902310, -0.423270,
		0.942612, -0.067971, 0.326896,
		30.671131, 36.925388, 26.173355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113880, 36.329647, 26.172941>,  <30.011303, 36.972965, 25.944529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113880, 36.329647, 26.172941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409994, 36.527245, 26.355347>,  <30.587662, 36.645802, 26.464790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409994, 36.527245, 26.355347>,  <30.113880, 36.329647, 26.172941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409994, 36.527245, 26.355347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235196, -0.445137, 0.864023,
		0.629812, -0.746875, -0.213342,
		0.740284, 0.493994, 0.456015,
		30.632080, 36.675442, 26.492151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491716, 35.888756, 26.551699>,  <30.113880, 36.329647, 26.172941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491716, 35.888756, 26.551699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560873, 36.236130, 26.737572>,  <30.602367, 36.444553, 26.849096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560873, 36.236130, 26.737572>,  <30.491716, 35.888756, 26.551699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560873, 36.236130, 26.737572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126999, -0.448193, 0.884869,
		0.976718, -0.212003, 0.032801,
		0.172893, 0.868434, 0.464683,
		30.612741, 36.496658, 26.876976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899931, 35.697979, 27.140064>,  <30.491716, 35.888756, 26.551699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899931, 35.697979, 27.140064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765577, 36.066433, 27.218754>,  <30.684965, 36.287506, 27.265968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765577, 36.066433, 27.218754>,  <30.899931, 35.697979, 27.140064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765577, 36.066433, 27.218754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073456, -0.233840, 0.969496,
		0.939035, 0.311186, 0.146206,
		-0.335883, 0.921131, 0.196726,
		30.664812, 36.342773, 27.277771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215996, 35.811657, 27.772472>,  <30.899931, 35.697979, 27.140064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215996, 35.811657, 27.772472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922791, 36.083546, 27.762138>,  <30.746866, 36.246677, 27.755938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922791, 36.083546, 27.762138>,  <31.215996, 35.811657, 27.772472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922791, 36.083546, 27.762138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096424, -0.066238, 0.993134,
		0.673344, 0.730473, 0.114095,
		-0.733015, 0.679722, -0.025834,
		30.702887, 36.287464, 27.754389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385603, 36.193676, 28.330975>,  <31.215996, 35.811657, 27.772472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385603, 36.193676, 28.330975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004093, 36.278175, 28.245472>,  <30.775188, 36.328876, 28.194170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004093, 36.278175, 28.245472>,  <31.385603, 36.193676, 28.330975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004093, 36.278175, 28.245472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210582, 0.037685, 0.976850,
		0.214415, 0.976705, 0.008542,
		-0.953772, 0.211250, -0.213757,
		30.717962, 36.341549, 28.181345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201817, 36.798656, 28.732000>,  <31.385603, 36.193676, 28.330975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201817, 36.798656, 28.732000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865915, 36.608513, 28.627048>,  <30.664373, 36.494427, 28.564077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865915, 36.608513, 28.627048>,  <31.201817, 36.798656, 28.732000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865915, 36.608513, 28.627048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314019, 0.030976, 0.948911,
		-0.442949, 0.879245, -0.175284,
		-0.839755, -0.475362, -0.262379,
		30.613989, 36.465904, 28.548334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517515, 37.179516, 28.984741>,  <31.201817, 36.798656, 28.732000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517515, 37.179516, 28.984741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472116, 36.785225, 28.935009>,  <30.444878, 36.548649, 28.905170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472116, 36.785225, 28.935009>,  <30.517515, 37.179516, 28.984741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472116, 36.785225, 28.935009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274768, -0.089115, 0.957372,
		-0.954788, 0.142821, -0.260732,
		-0.113498, -0.985729, -0.124329,
		30.438066, 36.489506, 28.897711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925705, 37.038261, 29.422972>,  <30.517515, 37.179516, 28.984741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925705, 37.038261, 29.422972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115871, 36.693882, 29.350590>,  <30.229971, 36.487255, 29.307159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115871, 36.693882, 29.350590>,  <29.925705, 37.038261, 29.422972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115871, 36.693882, 29.350590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258317, -0.333230, 0.906769,
		-0.840983, -0.384348, -0.380820,
		0.475416, -0.860950, -0.180957,
		30.258495, 36.435596, 29.296303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505430, 36.545376, 29.781813>,  <29.925705, 37.038261, 29.422972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505430, 36.545376, 29.781813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874506, 36.397659, 29.737507>,  <30.095951, 36.309029, 29.710922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874506, 36.397659, 29.737507>,  <29.505430, 36.545376, 29.781813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874506, 36.397659, 29.737507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002699, -0.281101, 0.959675,
		-0.385541, -0.885778, -0.258371,
		0.922687, -0.369297, -0.110767,
		30.151312, 36.286869, 29.704277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474981, 36.070213, 30.226120>,  <29.505430, 36.545376, 29.781813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474981, 36.070213, 30.226120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865961, 36.105015, 30.149151>,  <30.100548, 36.125896, 30.102968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865961, 36.105015, 30.149151>,  <29.474981, 36.070213, 30.226120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865961, 36.105015, 30.149151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206122, -0.194843, 0.958932,
		0.045939, -0.976968, -0.208382,
		0.977448, 0.087005, -0.192424,
		30.159195, 36.131115, 30.091423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714457, 35.551464, 30.658819>,  <29.474981, 36.070213, 30.226120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714457, 35.551464, 30.658819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036083, 35.773960, 30.574848>,  <30.229059, 35.907459, 30.524466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036083, 35.773960, 30.574848>,  <29.714457, 35.551464, 30.658819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036083, 35.773960, 30.574848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305704, -0.083965, 0.948417,
		0.509925, -0.826766, -0.237560,
		0.804066, 0.556245, -0.209930,
		30.277304, 35.940834, 30.511869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277668, 35.165264, 30.769384>,  <29.714457, 35.551464, 30.658819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277668, 35.165264, 30.769384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427357, 35.533894, 30.810665>,  <30.517170, 35.755074, 30.835434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427357, 35.533894, 30.810665>,  <30.277668, 35.165264, 30.769384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427357, 35.533894, 30.810665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253425, -0.208684, 0.944578,
		0.892038, -0.327330, -0.311646,
		0.374224, 0.921578, 0.103201,
		30.539623, 35.810368, 30.841625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921040, 34.982471, 31.116009>,  <30.277668, 35.165264, 30.769384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921040, 34.982471, 31.116009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834488, 35.370255, 31.162186>,  <30.782557, 35.602924, 31.189892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834488, 35.370255, 31.162186>,  <30.921040, 34.982471, 31.116009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834488, 35.370255, 31.162186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172739, -0.078364, 0.981845,
		0.960907, 0.232391, -0.150507,
		-0.216378, 0.969460, 0.115443,
		30.769575, 35.661091, 31.196819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482470, 35.338760, 31.260756>,  <30.921040, 34.982471, 31.116009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482470, 35.338760, 31.260756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185959, 35.555851, 31.418720>,  <31.008053, 35.686104, 31.513498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185959, 35.555851, 31.418720>,  <31.482470, 35.338760, 31.260756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185959, 35.555851, 31.418720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462976, -0.012545, 0.886282,
		0.485963, 0.839815, -0.241970,
		-0.741278, 0.542727, 0.394911,
		30.963575, 35.718670, 31.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810678, 35.826599, 31.689896>,  <31.482470, 35.338760, 31.260756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810678, 35.826599, 31.689896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428057, 35.811432, 31.805527>,  <31.198484, 35.802330, 31.874905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428057, 35.811432, 31.805527>,  <31.810678, 35.826599, 31.689896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428057, 35.811432, 31.805527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291403, -0.156113, 0.943776,
		0.009341, 0.987011, 0.160380,
		-0.956555, -0.037920, 0.289077,
		31.141090, 35.800056, 31.892250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794115, 36.164600, 32.315861>,  <31.810678, 35.826599, 31.689896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794115, 36.164600, 32.315861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458721, 35.946781, 32.307755>,  <31.257484, 35.816090, 32.302891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458721, 35.946781, 32.307755>,  <31.794115, 36.164600, 32.315861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458721, 35.946781, 32.307755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110246, -0.205941, 0.972334,
		-0.533659, 0.813052, 0.232712,
		-0.838483, -0.544551, -0.020266,
		31.207176, 35.783417, 32.301674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510073, 36.251545, 32.928360>,  <31.794115, 36.164600, 32.315861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510073, 36.251545, 32.928360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295279, 35.938923, 32.801353>,  <31.166403, 35.751350, 32.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295279, 35.938923, 32.801353>,  <31.510073, 36.251545, 32.928360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295279, 35.938923, 32.801353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044666, -0.349515, 0.935865,
		-0.842409, 0.516727, 0.152775,
		-0.536984, -0.781558, -0.317515,
		31.134184, 35.704456, 32.706100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939405, 36.163166, 33.374687>,  <31.510073, 36.251545, 32.928360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939405, 36.163166, 33.374687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961411, 35.812656, 33.183224>,  <30.974613, 35.602348, 33.068348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961411, 35.812656, 33.183224>,  <30.939405, 36.163166, 33.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961411, 35.812656, 33.183224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116026, -0.481745, 0.868596,
		-0.991722, 0.007753, -0.128173,
		0.055012, -0.876277, -0.478657,
		30.977915, 35.549774, 33.039627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400858, 35.727566, 33.572704>,  <30.939405, 36.163166, 33.374687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400858, 35.727566, 33.572704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692789, 35.480152, 33.456249>,  <30.867949, 35.331703, 33.386375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692789, 35.480152, 33.456249>,  <30.400858, 35.727566, 33.572704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692789, 35.480152, 33.456249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102287, -0.519881, 0.848093,
		-0.675936, -0.589182, -0.442692,
		0.729827, -0.618538, -0.291140,
		30.911737, 35.294590, 33.368908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088587, 35.034725, 33.660877>,  <30.400858, 35.727566, 33.572704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088587, 35.034725, 33.660877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483967, 34.979057, 33.636883>,  <30.721195, 34.945656, 33.622486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483967, 34.979057, 33.636883>,  <30.088587, 35.034725, 33.660877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483967, 34.979057, 33.636883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015223, -0.484980, 0.874393,
		-0.150781, -0.863381, -0.481497,
		0.988450, -0.139171, -0.059982,
		30.780502, 34.937305, 33.618889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273149, 34.326740, 33.697216>,  <30.088587, 35.034725, 33.660877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273149, 34.326740, 33.697216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603189, 34.519463, 33.815250>,  <30.801214, 34.635098, 33.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603189, 34.519463, 33.815250>,  <30.273149, 34.326740, 33.697216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603189, 34.519463, 33.815250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012773, -0.506240, 0.862298,
		0.564843, -0.715251, -0.411545,
		0.825099, 0.481806, 0.295082,
		30.850719, 34.664005, 33.903774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669426, 33.783344, 34.147358>,  <30.273149, 34.326740, 33.697216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669426, 33.783344, 34.147358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897125, 34.097023, 34.246143>,  <31.033745, 34.285229, 34.305416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897125, 34.097023, 34.246143>,  <30.669426, 33.783344, 34.147358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897125, 34.097023, 34.246143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003198, -0.302491, 0.953147,
		0.822161, -0.541786, -0.174700,
		0.569247, 0.784198, 0.246964,
		31.067900, 34.332283, 34.320232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294918, 33.472977, 34.508251>,  <30.669426, 33.783344, 34.147358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294918, 33.472977, 34.508251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269215, 33.861103, 34.601509>,  <31.253794, 34.093979, 34.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269215, 33.861103, 34.601509>,  <31.294918, 33.472977, 34.508251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269215, 33.861103, 34.601509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094819, -0.226632, 0.969354,
		0.993419, 0.084394, -0.077441,
		-0.064257, 0.970317, 0.233143,
		31.249937, 34.152199, 34.671452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795177, 33.597870, 34.925396>,  <31.294918, 33.472977, 34.508251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795177, 33.597870, 34.925396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512022, 33.868732, 35.005749>,  <31.342129, 34.031250, 35.053963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512022, 33.868732, 35.005749>,  <31.795177, 33.597870, 34.925396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512022, 33.868732, 35.005749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076365, -0.209368, 0.974850,
		0.702185, 0.705425, 0.096498,
		-0.707887, 0.677156, 0.200885,
		31.299656, 34.071880, 35.066013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848421, 33.816479, 35.675922>,  <31.795177, 33.597870, 34.925396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848421, 33.816479, 35.675922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491873, 33.987427, 35.615505>,  <31.277945, 34.089996, 35.579254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491873, 33.987427, 35.615505>,  <31.848421, 33.816479, 35.675922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491873, 33.987427, 35.615505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271646, -0.236898, 0.932785,
		0.362862, 0.872487, 0.327257,
		-0.891370, 0.427370, -0.151046,
		31.224463, 34.115639, 35.570190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712427, 34.243793, 36.277958>,  <31.848421, 33.816479, 35.675922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712427, 34.243793, 36.277958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357323, 34.165035, 36.111534>,  <31.144260, 34.117779, 36.011681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357323, 34.165035, 36.111534>,  <31.712427, 34.243793, 36.277958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357323, 34.165035, 36.111534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423571, -0.004363, 0.905852,
		-0.180177, 0.980414, -0.079527,
		-0.887764, -0.196899, -0.416061,
		31.090994, 34.105965, 35.986717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200922, 34.753796, 36.651360>,  <31.712427, 34.243793, 36.277958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200922, 34.753796, 36.651360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014822, 34.436672, 36.493881>,  <30.903162, 34.246399, 36.399395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014822, 34.436672, 36.493881>,  <31.200922, 34.753796, 36.651360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014822, 34.436672, 36.493881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501143, -0.130706, 0.855437,
		-0.729657, 0.595289, -0.336500,
		-0.465249, -0.792809, -0.393696,
		30.875248, 34.198830, 36.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566666, 34.923977, 36.755970>,  <31.200922, 34.753796, 36.651360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566666, 34.923977, 36.755970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560102, 34.528976, 36.693272>,  <30.556166, 34.291977, 36.655651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560102, 34.528976, 36.693272>,  <30.566666, 34.923977, 36.755970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560102, 34.528976, 36.693272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543030, -0.122835, 0.830680,
		-0.839553, 0.098749, -0.534228,
		-0.016406, -0.987502, -0.156750,
		30.555182, 34.232727, 36.646248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798689, 34.804863, 36.899906>,  <30.566666, 34.923977, 36.755970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798689, 34.804863, 36.899906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025475, 34.475407, 36.905167>,  <30.161547, 34.277733, 36.908325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025475, 34.475407, 36.905167>,  <29.798689, 34.804863, 36.899906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025475, 34.475407, 36.905167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430747, -0.282823, 0.857011,
		-0.702147, -0.491560, -0.515130,
		0.566963, -0.823638, 0.013155,
		30.195564, 34.228313, 36.909115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335176, 34.236778, 37.247959>,  <29.798689, 34.804863, 36.899906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335176, 34.236778, 37.247959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715811, 34.116146, 37.271736>,  <29.944191, 34.043766, 37.286003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715811, 34.116146, 37.271736>,  <29.335176, 34.236778, 37.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715811, 34.116146, 37.271736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164917, -0.337709, 0.926690,
		-0.259391, -0.891631, -0.371095,
		0.951588, -0.301575, 0.059446,
		30.001287, 34.025673, 37.289570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298403, 33.556011, 37.595387>,  <29.335176, 34.236778, 37.247959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298403, 33.556011, 37.595387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654587, 33.731823, 37.642540>,  <29.868298, 33.837311, 37.670830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654587, 33.731823, 37.642540>,  <29.298403, 33.556011, 37.595387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654587, 33.731823, 37.642540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117626, -0.027930, 0.992665,
		0.439598, -0.897794, 0.026830,
		0.890459, 0.439530, 0.117882,
		29.921724, 33.863682, 37.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582384, 33.147285, 37.974762>,  <29.298403, 33.556011, 37.595387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582384, 33.147285, 37.974762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825510, 33.461853, 38.018776>,  <29.971386, 33.650593, 38.045185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825510, 33.461853, 38.018776>,  <29.582384, 33.147285, 37.974762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825510, 33.461853, 38.018776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004456, -0.135191, 0.990810,
		0.794067, -0.602718, -0.078666,
		0.607814, 0.786418, 0.110036,
		30.007854, 33.697777, 38.051788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629549, 32.509853, 37.642719>,  <29.582384, 33.147285, 37.974762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629549, 32.509853, 37.642719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402735, 32.181759, 37.612556>,  <29.266645, 31.984903, 37.594460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402735, 32.181759, 37.612556>,  <29.629549, 32.509853, 37.642719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402735, 32.181759, 37.612556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044828, 0.122137, -0.991500,
		0.822472, -0.558836, -0.106026,
		-0.567036, -0.820235, -0.075403,
		29.232624, 31.935688, 37.589935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956896, 32.047878, 37.101765>,  <29.629549, 32.509853, 37.642719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956896, 32.047878, 37.101765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570280, 31.971859, 37.170685>,  <29.338310, 31.926249, 37.212036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570280, 31.971859, 37.170685>,  <29.956896, 32.047878, 37.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570280, 31.971859, 37.170685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193193, 0.097379, -0.976316,
		0.168772, -0.976933, -0.130837,
		-0.966536, -0.190052, 0.172302,
		29.280319, 31.914845, 37.222374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816761, 31.898417, 36.426529>,  <29.956896, 32.047878, 37.101765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816761, 31.898417, 36.426529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463932, 31.956341, 36.605854>,  <29.252235, 31.991095, 36.713448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463932, 31.956341, 36.605854>,  <29.816761, 31.898417, 36.426529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463932, 31.956341, 36.605854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453285, -0.001522, -0.891364,
		-0.128397, -0.989458, 0.066983,
		-0.882070, 0.144811, 0.448311,
		29.199310, 31.999783, 36.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346445, 31.438169, 36.189884>,  <29.816761, 31.898417, 36.426529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346445, 31.438169, 36.189884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097216, 31.725269, 36.314217>,  <28.947678, 31.897530, 36.388817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097216, 31.725269, 36.314217>,  <29.346445, 31.438169, 36.189884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097216, 31.725269, 36.314217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327330, 0.121645, -0.937047,
		-0.710374, -0.685595, 0.159147,
		-0.623075, 0.717748, 0.310829,
		28.910294, 31.940594, 36.407467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821465, 31.280050, 35.833408>,  <29.346445, 31.438169, 36.189884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821465, 31.280050, 35.833408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793938, 31.664555, 35.940170>,  <28.777422, 31.895258, 36.004227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793938, 31.664555, 35.940170>,  <28.821465, 31.280050, 35.833408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793938, 31.664555, 35.940170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413414, 0.216009, -0.884550,
		-0.907939, -0.171216, 0.382534,
		-0.068818, 0.961262, 0.266907,
		28.773293, 31.952932, 36.020241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165829, 31.451853, 35.788780>,  <28.821465, 31.280050, 35.833408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165829, 31.451853, 35.788780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381001, 31.788605, 35.771481>,  <28.510103, 31.990656, 35.761101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381001, 31.788605, 35.771481>,  <28.165829, 31.451853, 35.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381001, 31.788605, 35.771481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401780, 0.210948, -0.891108,
		-0.741082, 0.496730, 0.451726,
		0.537931, 0.841879, -0.043247,
		28.542379, 32.041168, 35.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709803, 31.976988, 35.761379>,  <28.165829, 31.451853, 35.788780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709803, 31.976988, 35.761379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038698, 32.149067, 35.612328>,  <28.236036, 32.252316, 35.522896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038698, 32.149067, 35.612328>,  <27.709803, 31.976988, 35.761379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038698, 32.149067, 35.612328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504164, 0.246761, -0.827604,
		-0.264085, 0.868353, 0.419788,
		0.822240, 0.430199, -0.372627,
		28.285370, 32.278126, 35.500538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463646, 32.452583, 35.411419>,  <27.709803, 31.976988, 35.761379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463646, 32.452583, 35.411419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835762, 32.453171, 35.264690>,  <28.059031, 32.453526, 35.176651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835762, 32.453171, 35.264690>,  <27.463646, 32.452583, 35.411419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835762, 32.453171, 35.264690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345611, 0.338683, -0.875127,
		0.122949, 0.940899, 0.315582,
		0.930288, 0.001473, -0.366826,
		28.114849, 32.453613, 35.154644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546295, 33.141834, 35.176476>,  <27.463646, 32.452583, 35.411419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546295, 33.141834, 35.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803610, 32.891346, 35.000282>,  <27.957998, 32.741051, 34.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803610, 32.891346, 35.000282>,  <27.546295, 33.141834, 35.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803610, 32.891346, 35.000282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135897, 0.472802, -0.870626,
		0.753469, 0.619922, 0.219045,
		0.643286, -0.626223, -0.440487,
		27.996595, 32.703480, 34.868137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854670, 33.573769, 34.866081>,  <27.546295, 33.141834, 35.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854670, 33.573769, 34.866081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930910, 33.231598, 34.673450>,  <27.976654, 33.026295, 34.557873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930910, 33.231598, 34.673450>,  <27.854670, 33.573769, 34.866081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930910, 33.231598, 34.673450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185291, 0.450407, -0.873385,
		0.964022, 0.255701, -0.072654,
		0.190601, -0.855424, -0.481581,
		27.988091, 32.974972, 34.528976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347589, 33.677273, 34.321598>,  <27.854670, 33.573769, 34.866081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347589, 33.677273, 34.321598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193663, 33.332790, 34.188793>,  <28.101307, 33.126099, 34.109112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193663, 33.332790, 34.188793>,  <28.347589, 33.677273, 34.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193663, 33.332790, 34.188793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109573, 0.314542, -0.942898,
		0.916465, -0.399224, -0.026676,
		-0.384818, -0.861210, -0.332011,
		28.078217, 33.074429, 34.089191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860067, 33.576099, 33.905045>,  <28.347589, 33.677273, 34.321598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860067, 33.576099, 33.905045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543442, 33.351551, 33.808468>,  <28.353466, 33.216824, 33.750523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543442, 33.351551, 33.808468>,  <28.860067, 33.576099, 33.905045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543442, 33.351551, 33.808468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045462, 0.339908, -0.939359,
		0.609396, -0.754537, -0.243537,
		-0.791561, -0.561370, -0.241442,
		28.305973, 33.183140, 33.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006670, 33.116531, 33.379559>,  <28.860067, 33.576099, 33.905045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006670, 33.116531, 33.379559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611279, 33.160847, 33.338306>,  <28.374044, 33.187435, 33.313557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611279, 33.160847, 33.338306>,  <29.006670, 33.116531, 33.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611279, 33.160847, 33.338306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124822, 0.211324, -0.969413,
		-0.085606, -0.971117, -0.222718,
		-0.988479, 0.110788, -0.103126,
		28.314735, 33.194084, 33.307369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773796, 32.486633, 32.994720>,  <29.006670, 33.116531, 33.379559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773796, 32.486633, 32.994720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471062, 32.745296, 32.956711>,  <28.289421, 32.900494, 32.933907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471062, 32.745296, 32.956711>,  <28.773796, 32.486633, 32.994720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471062, 32.745296, 32.956711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279950, 0.189352, -0.941155,
		-0.590616, -0.738901, -0.324342,
		-0.756836, 0.646661, -0.095021,
		28.244011, 32.939293, 32.928204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344128, 32.253353, 32.426037>,  <28.773796, 32.486633, 32.994720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344128, 32.253353, 32.426037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283653, 32.645218, 32.478809>,  <28.247368, 32.880337, 32.510471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283653, 32.645218, 32.478809>,  <28.344128, 32.253353, 32.426037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283653, 32.645218, 32.478809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057825, 0.141999, -0.988177,
		-0.986813, -0.141770, -0.078117,
		-0.151186, 0.979662, 0.131929,
		28.238297, 32.939117, 32.518387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918716, 32.479660, 31.868017>,  <28.344128, 32.253353, 32.426037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918716, 32.479660, 31.868017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066622, 32.832947, 31.983402>,  <28.155365, 33.044918, 32.052631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066622, 32.832947, 31.983402>,  <27.918716, 32.479660, 31.868017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066622, 32.832947, 31.983402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152687, 0.248482, -0.956527,
		-0.916495, 0.397731, -0.042976,
		0.369761, 0.883214, 0.288461,
		28.177549, 33.097912, 32.069942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668291, 32.919621, 31.374920>,  <27.918716, 32.479660, 31.868017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668291, 32.919621, 31.374920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969625, 33.117401, 31.548359>,  <28.150425, 33.236069, 31.652422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969625, 33.117401, 31.548359>,  <27.668291, 32.919621, 31.374920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969625, 33.117401, 31.548359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224070, 0.426888, -0.876105,
		-0.618287, 0.757156, 0.210798,
		0.753335, 0.494451, 0.433595,
		28.195625, 33.265736, 31.678438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537247, 33.544514, 31.139275>,  <27.668291, 32.919621, 31.374920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537247, 33.544514, 31.139275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917189, 33.546219, 31.264339>,  <28.145153, 33.547241, 31.339378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917189, 33.546219, 31.264339>,  <27.537247, 33.544514, 31.139275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917189, 33.546219, 31.264339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281451, 0.423993, -0.860822,
		-0.136238, 0.905655, 0.401532,
		0.949855, 0.004265, 0.312662,
		28.202145, 33.547497, 31.358137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830963, 34.266632, 31.045647>,  <27.537247, 33.544514, 31.139275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830963, 34.266632, 31.045647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134304, 34.005970, 31.051929>,  <28.316309, 33.849571, 31.055698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134304, 34.005970, 31.051929>,  <27.830963, 34.266632, 31.045647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134304, 34.005970, 31.051929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366180, 0.405954, -0.837325,
		0.539270, 0.640740, 0.546479,
		0.758354, -0.651654, 0.015707,
		28.361811, 33.810474, 31.056643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473366, 34.682529, 31.005554>,  <27.830963, 34.266632, 31.045647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473366, 34.682529, 31.005554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553101, 34.311634, 30.878757>,  <28.600943, 34.089096, 30.802679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553101, 34.311634, 30.878757>,  <28.473366, 34.682529, 31.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553101, 34.311634, 30.878757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342066, 0.368980, -0.864202,
		0.918289, 0.063836, 0.390730,
		0.199338, -0.927243, -0.316994,
		28.612902, 34.033463, 30.783659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017084, 34.756001, 30.447132>,  <28.473366, 34.682529, 31.005554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017084, 34.756001, 30.447132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909342, 34.372997, 30.405899>,  <28.844696, 34.143196, 30.381159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909342, 34.372997, 30.405899>,  <29.017084, 34.756001, 30.447132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909342, 34.372997, 30.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204756, 0.047650, -0.977652,
		0.941022, -0.284444, 0.183221,
		-0.269357, -0.957508, -0.103081,
		28.828535, 34.085747, 30.374975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493114, 34.454971, 30.060352>,  <29.017084, 34.756001, 30.447132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493114, 34.454971, 30.060352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190649, 34.197369, 30.013939>,  <29.009169, 34.042805, 29.986092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190649, 34.197369, 30.013939>,  <29.493114, 34.454971, 30.060352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190649, 34.197369, 30.013939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115402, 0.043300, -0.992375,
		0.644125, -0.763790, 0.041579,
		-0.756165, -0.644012, -0.116033,
		28.963800, 34.004166, 29.979130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756283, 33.873093, 29.639122>,  <29.493114, 34.454971, 30.060352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756283, 33.873093, 29.639122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362665, 33.925232, 29.590675>,  <29.126495, 33.956516, 29.561607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362665, 33.925232, 29.590675>,  <29.756283, 33.873093, 29.639122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362665, 33.925232, 29.590675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132776, 0.084793, -0.987512,
		-0.118456, -0.987835, -0.100748,
		-0.984042, 0.130354, -0.121116,
		29.067453, 33.964336, 29.554340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413761, 33.415615, 29.047188>,  <29.756283, 33.873093, 29.639122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413761, 33.415615, 29.047188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175905, 33.726883, 29.128033>,  <29.033192, 33.913643, 29.176538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175905, 33.726883, 29.128033>,  <29.413761, 33.415615, 29.047188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175905, 33.726883, 29.128033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087448, 0.187291, -0.978404,
		-0.799221, -0.599474, -0.043321,
		-0.594641, 0.778173, 0.202110,
		28.997513, 33.960335, 29.188665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905457, 33.330112, 28.569393>,  <29.413761, 33.415615, 29.047188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905457, 33.330112, 28.569393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860411, 33.712608, 28.677406>,  <28.833384, 33.942108, 28.742214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860411, 33.712608, 28.677406>,  <28.905457, 33.330112, 28.569393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860411, 33.712608, 28.677406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098106, 0.259731, -0.960685,
		-0.988784, -0.134679, 0.064564,
		-0.112615, 0.956244, 0.270031,
		28.826626, 33.999481, 28.758415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263315, 33.537075, 28.350977>,  <28.905457, 33.330112, 28.569393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263315, 33.537075, 28.350977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453796, 33.887188, 28.384727>,  <28.568085, 34.097256, 28.404978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453796, 33.887188, 28.384727>,  <28.263315, 33.537075, 28.350977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453796, 33.887188, 28.384727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309866, 0.256831, -0.915434,
		-0.822930, 0.409787, 0.393523,
		0.476202, 0.875278, 0.084375,
		28.596657, 34.149773, 28.410040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762665, 34.032444, 28.127113>,  <28.263315, 33.537075, 28.350977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762665, 34.032444, 28.127113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115860, 34.219944, 28.117245>,  <28.327776, 34.332443, 28.111324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115860, 34.219944, 28.117245>,  <27.762665, 34.032444, 28.127113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115860, 34.219944, 28.117245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203724, 0.335348, -0.919804,
		-0.422884, 0.817200, 0.391603,
		0.882987, 0.468749, -0.024670,
		28.380756, 34.360569, 28.109844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633274, 34.785461, 27.855413>,  <27.762665, 34.032444, 28.127113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633274, 34.785461, 27.855413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018774, 34.702057, 27.788830>,  <28.250074, 34.652016, 27.748880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018774, 34.702057, 27.788830>,  <27.633274, 34.785461, 27.855413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018774, 34.702057, 27.788830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069586, 0.405867, -0.911279,
		0.257567, 0.889829, 0.376646,
		0.963751, -0.208507, -0.166458,
		28.307899, 34.639503, 27.738892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937553, 35.435925, 27.340815>,  <27.633274, 34.785461, 27.855413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937553, 35.435925, 27.340815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194586, 35.129650, 27.329338>,  <28.348804, 34.945885, 27.322453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194586, 35.129650, 27.329338>,  <27.937553, 35.435925, 27.340815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194586, 35.129650, 27.329338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307265, 0.291805, -0.905780,
		0.701912, 0.573220, 0.422775,
		0.642579, -0.765682, -0.028691,
		28.387360, 34.899944, 27.320730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431623, 35.654583, 26.934319>,  <27.937553, 35.435925, 27.340815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431623, 35.654583, 26.934319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474163, 35.256878, 26.929852>,  <28.499687, 35.018253, 26.927172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474163, 35.256878, 26.929852>,  <28.431623, 35.654583, 26.934319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474163, 35.256878, 26.929852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182889, 0.030599, -0.982657,
		0.977365, 0.102461, 0.185094,
		0.106348, -0.994266, -0.011167,
		28.506067, 34.958599, 26.926502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161592, 35.571114, 26.662985>,  <28.431623, 35.654583, 26.934319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161592, 35.571114, 26.662985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926031, 35.252144, 26.610367>,  <28.784695, 35.060760, 26.578796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926031, 35.252144, 26.610367>,  <29.161592, 35.571114, 26.662985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926031, 35.252144, 26.610367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167562, 0.038761, -0.985099,
		0.790643, -0.602171, 0.110792,
		-0.588903, -0.797426, -0.131547,
		28.749359, 35.012917, 26.570902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472935, 35.013500, 26.220842>,  <29.161592, 35.571114, 26.662985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472935, 35.013500, 26.220842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076141, 34.964027, 26.210461>,  <28.838066, 34.934345, 26.204231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076141, 34.964027, 26.210461>,  <29.472935, 35.013500, 26.220842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076141, 34.964027, 26.210461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010251, 0.125957, -0.991983,
		0.125957, -0.984296, -0.123679,
		0.991983, 0.123679, 0.025955,
		28.778547, 34.926922, 26.202675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391230, 34.484566, 25.660200>,  <29.472935, 35.013500, 26.220842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391230, 34.484566, 25.660200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028908, 34.645603, 25.713017>,  <28.811514, 34.742226, 25.744707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028908, 34.645603, 25.713017>,  <29.391230, 34.484566, 25.660200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028908, 34.645603, 25.713017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148106, -0.008882, -0.988932,
		-0.396968, -0.915334, 0.067672,
		-0.905804, 0.402597, 0.132040,
		28.757166, 34.766380, 25.752628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906141, 34.016655, 25.311789>,  <29.391230, 34.484566, 25.660200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906141, 34.016655, 25.311789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709080, 34.362389, 25.352211>,  <28.590843, 34.569828, 25.376465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709080, 34.362389, 25.352211>,  <28.906141, 34.016655, 25.311789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709080, 34.362389, 25.352211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420011, -0.134464, -0.897502,
		-0.762157, -0.484602, 0.429275,
		-0.492654, 0.864338, 0.101056,
		28.561283, 34.621689, 25.382528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263853, 33.908867, 24.950781>,  <28.906141, 34.016655, 25.311789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263853, 33.908867, 24.950781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273964, 34.307209, 24.985748>,  <28.280031, 34.546215, 25.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273964, 34.307209, 24.985748>,  <28.263853, 33.908867, 24.950781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273964, 34.307209, 24.985748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508417, 0.088098, -0.856593,
		-0.860740, -0.022791, 0.508534,
		0.025278, 0.995851, 0.087417,
		28.281548, 34.605965, 25.011974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622898, 34.025131, 24.752014>,  <28.263853, 33.908867, 24.950781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622898, 34.025131, 24.752014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825001, 34.365826, 24.696491>,  <27.946262, 34.570240, 24.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825001, 34.365826, 24.696491>,  <27.622898, 34.025131, 24.752014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825001, 34.365826, 24.696491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372090, 0.069891, -0.925562,
		-0.778630, 0.519295, 0.352234,
		0.505257, 0.851732, -0.138806,
		27.976578, 34.621346, 24.654850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180946, 34.498703, 24.541956>,  <27.622898, 34.025131, 24.752014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180946, 34.498703, 24.541956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531475, 34.645935, 24.417648>,  <27.741793, 34.734272, 24.343063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531475, 34.645935, 24.417648>,  <27.180946, 34.498703, 24.541956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531475, 34.645935, 24.417648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364097, 0.083675, -0.927595,
		-0.315424, 0.926022, 0.207342,
		0.876323, 0.368078, -0.310769,
		27.794373, 34.756359, 24.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950350, 35.031063, 24.147188>,  <27.180946, 34.498703, 24.541956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950350, 35.031063, 24.147188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329950, 34.957375, 24.044853>,  <27.557711, 34.913162, 23.983452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329950, 34.957375, 24.044853>,  <26.950350, 35.031063, 24.147188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329950, 34.957375, 24.044853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247040, 0.069622, -0.966501,
		0.195866, 0.980415, 0.020561,
		0.949003, -0.184226, -0.255839,
		27.614651, 34.902107, 23.968102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311371, 35.592144, 23.953922>,  <26.950350, 35.031063, 24.147188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311371, 35.592144, 23.953922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478413, 35.285877, 23.758221>,  <27.578638, 35.102119, 23.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478413, 35.285877, 23.758221>,  <27.311371, 35.592144, 23.953922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478413, 35.285877, 23.758221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261029, 0.414663, -0.871733,
		0.870328, 0.491748, -0.026695,
		0.417603, -0.765663, -0.489253,
		27.603693, 35.056179, 23.611444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456297, 35.937050, 23.327934>,  <27.311371, 35.592144, 23.953922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456297, 35.937050, 23.327934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555639, 35.563011, 23.226810>,  <27.615246, 35.338589, 23.166136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555639, 35.563011, 23.226810>,  <27.456297, 35.937050, 23.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555639, 35.563011, 23.226810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100980, 0.284560, -0.953325,
		0.963391, 0.211236, 0.165098,
		0.248357, -0.935096, -0.252812,
		27.630146, 35.282482, 23.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099691, 36.065754, 23.043453>,  <27.456297, 35.937050, 23.327934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099691, 36.065754, 23.043453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870968, 35.771179, 22.898846>,  <27.733734, 35.594433, 22.812082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870968, 35.771179, 22.898846>,  <28.099691, 36.065754, 23.043453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870968, 35.771179, 22.898846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075034, 0.391874, -0.916954,
		0.816947, -0.551450, -0.168820,
		-0.571810, -0.736436, -0.361518,
		27.699425, 35.550247, 22.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059963, 36.819511, 23.052258>,  <28.099691, 36.065754, 23.043453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059963, 36.819511, 23.052258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873613, 37.049919, 22.783585>,  <27.761803, 37.188164, 22.622381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873613, 37.049919, 22.783585>,  <28.059963, 36.819511, 23.052258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873613, 37.049919, 22.783585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880084, -0.380330, 0.284255,
		-0.091724, 0.723565, 0.684135,
		-0.465874, 0.576024, -0.671683,
		27.733850, 37.222725, 22.582079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546177, 37.297501, 23.471333>,  <28.059963, 36.819511, 23.052258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546177, 37.297501, 23.471333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489107, 37.157326, 23.101070>,  <27.454865, 37.073219, 22.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489107, 37.157326, 23.101070>,  <27.546177, 37.297501, 23.471333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489107, 37.157326, 23.101070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739203, -0.584194, 0.335105,
		-0.658197, 0.732057, -0.175698,
		-0.142674, -0.350442, -0.925654,
		27.446304, 37.052193, 22.823374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819021, 37.267044, 23.171492>,  <27.546177, 37.297501, 23.471333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819021, 37.267044, 23.171492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979834, 36.966255, 22.962532>,  <27.076321, 36.785782, 22.837156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979834, 36.966255, 22.962532>,  <26.819021, 37.267044, 23.171492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979834, 36.966255, 22.962532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793216, -0.571024, 0.211519,
		-0.457360, 0.329339, -0.826050,
		0.402033, -0.751975, -0.522400,
		27.100443, 36.740662, 22.805811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295963, 36.828308, 23.514572>,  <26.819021, 37.267044, 23.171492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295963, 36.828308, 23.514572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109158, 36.615002, 23.232430>,  <25.997074, 36.487019, 23.063145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109158, 36.615002, 23.232430>,  <26.295963, 36.828308, 23.514572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109158, 36.615002, 23.232430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343969, -0.625303, 0.700487,
		-0.814605, 0.569758, 0.108601,
		-0.467016, -0.533265, -0.705354,
		25.969053, 36.455021, 23.020823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617682, 36.706203, 23.722151>,  <26.295963, 36.828308, 23.514572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617682, 36.706203, 23.722151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665678, 36.427460, 23.439312>,  <25.694475, 36.260212, 23.269609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665678, 36.427460, 23.439312>,  <25.617682, 36.706203, 23.722151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665678, 36.427460, 23.439312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506919, -0.655402, 0.559894,
		-0.853602, 0.291259, -0.431894,
		0.119990, -0.696862, -0.707097,
		25.701675, 36.218403, 23.227182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035009, 36.381615, 23.424068>,  <25.617682, 36.706203, 23.722151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035009, 36.381615, 23.424068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323605, 36.105217, 23.441853>,  <25.496761, 35.939377, 23.452524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323605, 36.105217, 23.441853>,  <25.035009, 36.381615, 23.424068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323605, 36.105217, 23.441853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598525, -0.590071, 0.541833,
		-0.348169, -0.417539, -0.839309,
		0.721489, -0.690997, 0.044463,
		25.540051, 35.897919, 23.455191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499054, 36.804218, 23.134722>,  <25.035009, 36.381615, 23.424068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499054, 36.804218, 23.134722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106760, 36.758228, 23.071552>,  <23.871384, 36.730637, 23.033651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106760, 36.758228, 23.071552>,  <24.499054, 36.804218, 23.134722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106760, 36.758228, 23.071552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018151, 0.751312, -0.659697,
		0.194496, -0.649855, -0.734752,
		-0.980735, -0.114972, -0.157923,
		23.812540, 36.723736, 23.024176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520599, 37.012634, 22.415653>,  <24.499054, 36.804218, 23.134722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520599, 37.012634, 22.415653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155071, 37.030472, 22.577118>,  <23.935755, 37.041172, 22.673996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155071, 37.030472, 22.577118>,  <24.520599, 37.012634, 22.415653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.155071, 37.030472, 22.577118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249830, 0.721906, -0.645319,
		-0.320182, -0.690553, -0.648553,
		-0.913821, 0.044591, 0.403662,
		23.880924, 37.043850, 22.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141138, 36.997269, 21.865950>,  <24.520599, 37.012634, 22.415653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141138, 36.997269, 21.865950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.920591, 37.147278, 22.164036>,  <23.788263, 37.237286, 22.342888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.920591, 37.147278, 22.164036>,  <24.141138, 36.997269, 21.865950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.920591, 37.147278, 22.164036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357599, 0.700801, -0.617253,
		-0.753735, -0.606823, -0.252290,
		-0.551368, 0.375026, 0.745217,
		23.755180, 37.259785, 22.387602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633528, 37.117008, 21.600517>,  <24.141138, 36.997269, 21.865950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633528, 37.117008, 21.600517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.589857, 37.349243, 21.923256>,  <23.563654, 37.488583, 22.116899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.589857, 37.349243, 21.923256>,  <23.633528, 37.117008, 21.600517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.589857, 37.349243, 21.923256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477568, 0.681243, -0.554830,
		-0.871785, -0.445899, 0.202893,
		-0.109178, 0.580587, 0.806845,
		23.557104, 37.523418, 22.165310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940245, 37.432079, 21.562965>,  <23.633528, 37.117008, 21.600517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940245, 37.432079, 21.562965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123423, 37.678326, 21.819496>,  <23.233330, 37.826073, 21.973413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123423, 37.678326, 21.819496>,  <22.940245, 37.432079, 21.562965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123423, 37.678326, 21.819496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365417, 0.788008, -0.495493,
		-0.810405, -0.007443, 0.585822,
		0.457945, 0.615620, 0.641326,
		23.260805, 37.863010, 22.011894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417557, 38.085857, 21.776106>,  <22.940245, 37.432079, 21.562965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417557, 38.085857, 21.776106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803343, 38.179798, 21.824516>,  <23.034815, 38.236164, 21.853563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803343, 38.179798, 21.824516>,  <22.417557, 38.085857, 21.776106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.803343, 38.179798, 21.824516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135281, 0.832448, -0.537335,
		-0.226944, 0.501869, 0.834640,
		0.964466, 0.234856, 0.121026,
		23.092682, 38.250256, 21.860825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384579, 38.804688, 21.910339>,  <22.417557, 38.085857, 21.776106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384579, 38.804688, 21.910339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.776609, 38.784981, 21.833378>,  <23.011827, 38.773159, 21.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.776609, 38.784981, 21.833378>,  <22.384579, 38.804688, 21.910339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.776609, 38.784981, 21.833378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053255, 0.868088, -0.493546,
		0.191336, 0.493960, 0.848171,
		0.980079, -0.049264, -0.192402,
		23.070633, 38.770203, 21.775658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.627806, 39.464577, 21.982346>,  <22.384579, 38.804688, 21.910339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.627806, 39.464577, 21.982346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890995, 39.276390, 21.747150>,  <23.048908, 39.163479, 21.606033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890995, 39.276390, 21.747150>,  <22.627806, 39.464577, 21.982346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.890995, 39.276390, 21.747150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097229, 0.721206, -0.685864,
		0.746737, 0.508450, 0.428792,
		0.657975, -0.470468, -0.587987,
		23.088387, 39.135250, 21.570755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.896587, 39.985310, 21.649521>,  <22.627806, 39.464577, 21.982346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.896587, 39.985310, 21.649521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.034649, 39.688938, 21.419079>,  <23.117487, 39.511116, 21.280813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.034649, 39.688938, 21.419079>,  <22.896587, 39.985310, 21.649521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034649, 39.688938, 21.419079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047466, 0.626825, -0.777713,
		0.937344, 0.241087, 0.251521,
		0.345156, -0.740924, -0.576107,
		23.138195, 39.466660, 21.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.470217, 40.296364, 21.265068>,  <22.896587, 39.985310, 21.649521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.470217, 40.296364, 21.265068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.394875, 39.962982, 21.057270>,  <23.349669, 39.762955, 20.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.394875, 39.962982, 21.057270>,  <23.470217, 40.296364, 21.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.394875, 39.962982, 21.057270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176562, 0.491607, -0.852730,
		0.966099, -0.252340, 0.054560,
		-0.188355, -0.833455, -0.519495,
		23.338367, 39.712944, 20.901423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166197, 40.031124, 20.792486>,  <23.470217, 40.296364, 21.265068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166197, 40.031124, 20.792486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.817421, 39.897881, 20.648956>,  <23.608154, 39.817932, 20.562838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.817421, 39.897881, 20.648956>,  <24.166197, 40.031124, 20.792486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.817421, 39.897881, 20.648956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179491, 0.464380, -0.867257,
		0.455517, -0.820605, -0.345124,
		-0.871944, -0.333104, -0.358824,
		23.555840, 39.797947, 20.541307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329737, 39.881546, 20.226379>,  <24.166197, 40.031124, 20.792486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329737, 39.881546, 20.226379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932095, 39.892418, 20.184395>,  <23.693510, 39.898941, 20.159204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932095, 39.892418, 20.184395>,  <24.329737, 39.881546, 20.226379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.932095, 39.892418, 20.184395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105566, 0.463488, -0.879792,
		0.024734, -0.885686, -0.463625,
		-0.994105, 0.027182, -0.104962,
		23.633863, 39.900574, 20.152906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227728, 39.774158, 19.484653>,  <24.329737, 39.881546, 20.226379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227728, 39.774158, 19.484653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879068, 39.929924, 19.603706>,  <23.669872, 40.023384, 19.675138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879068, 39.929924, 19.603706>,  <24.227728, 39.774158, 19.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879068, 39.929924, 19.603706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037906, 0.551877, -0.833063,
		-0.488662, -0.737421, -0.466283,
		-0.871649, 0.389412, 0.297634,
		23.617573, 40.046749, 19.692997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895014, 39.652630, 18.959877>,  <24.227728, 39.774158, 19.484653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895014, 39.652630, 18.959877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668110, 39.924911, 19.145287>,  <23.531967, 40.088280, 19.256533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668110, 39.924911, 19.145287>,  <23.895014, 39.652630, 18.959877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668110, 39.924911, 19.145287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130204, 0.481633, -0.866647,
		-0.813181, -0.551966, -0.184580,
		-0.567259, 0.680708, 0.463523,
		23.497932, 40.129124, 19.284344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.318193, 39.688416, 18.620375>,  <23.895014, 39.652630, 18.959877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.318193, 39.688416, 18.620375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345896, 40.053478, 18.781502>,  <23.362518, 40.272514, 18.878178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345896, 40.053478, 18.781502>,  <23.318193, 39.688416, 18.620375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.345896, 40.053478, 18.781502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028656, 0.401802, -0.915278,
		-0.997187, 0.074934, 0.001675,
		0.069258, 0.912656, 0.402819,
		23.366673, 40.327274, 18.902348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.794693, 40.054539, 18.243540>,  <23.318193, 39.688416, 18.620375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.794693, 40.054539, 18.243540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049477, 40.324444, 18.392658>,  <23.202347, 40.486385, 18.482130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049477, 40.324444, 18.392658>,  <22.794693, 40.054539, 18.243540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049477, 40.324444, 18.392658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053078, 0.520828, -0.852010,
		-0.769067, 0.522909, 0.367561,
		0.636960, 0.674762, 0.372797,
		23.240564, 40.526871, 18.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.519421, 40.681198, 17.997053>,  <22.794693, 40.054539, 18.243540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.519421, 40.681198, 17.997053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896652, 40.763741, 18.101372>,  <23.122992, 40.813267, 18.163963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896652, 40.763741, 18.101372>,  <22.519421, 40.681198, 17.997053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.896652, 40.763741, 18.101372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087709, 0.602097, -0.793590,
		-0.320790, 0.771294, 0.549727,
		0.943080, 0.206360, 0.260796,
		23.179577, 40.825649, 18.179611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640110, 41.415066, 18.008963>,  <22.519421, 40.681198, 17.997053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640110, 41.415066, 18.008963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008184, 41.264214, 17.966961>,  <23.229029, 41.173702, 17.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008184, 41.264214, 17.966961>,  <22.640110, 41.415066, 18.008963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.008184, 41.264214, 17.966961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152988, 0.593321, -0.790294,
		0.360347, 0.711155, 0.603663,
		0.920187, -0.377133, -0.105004,
		23.284241, 41.151073, 17.935459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.061224, 42.007473, 17.859753>,  <22.640110, 41.415066, 18.008963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.061224, 42.007473, 17.859753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293758, 41.704235, 17.741539>,  <23.433279, 41.522293, 17.670610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293758, 41.704235, 17.741539>,  <23.061224, 42.007473, 17.859753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293758, 41.704235, 17.741539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300116, 0.537384, -0.788130,
		0.756294, 0.369472, 0.539917,
		0.581335, -0.758095, -0.295536,
		23.468159, 41.476807, 17.652878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.726873, 42.236931, 17.756420>,  <23.061224, 42.007473, 17.859753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.726873, 42.236931, 17.756420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694242, 41.925652, 17.507339>,  <23.674664, 41.738884, 17.357891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694242, 41.925652, 17.507339>,  <23.726873, 42.236931, 17.756420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694242, 41.925652, 17.507339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169044, 0.604928, -0.778130,
		0.982227, -0.168742, 0.082200,
		-0.081577, -0.778196, -0.622701,
		23.669769, 41.692192, 17.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171576, 42.375820, 17.151854>,  <23.726873, 42.236931, 17.756420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171576, 42.375820, 17.151854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996767, 42.048580, 17.002338>,  <23.891882, 41.852234, 16.912630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996767, 42.048580, 17.002338>,  <24.171576, 42.375820, 17.151854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996767, 42.048580, 17.002338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102609, 0.367513, -0.924340,
		0.893578, -0.442312, -0.076667,
		-0.437023, -0.818104, -0.373787,
		23.865660, 41.803150, 16.890202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529783, 41.974785, 16.613972>,  <24.171576, 42.375820, 17.151854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529783, 41.974785, 16.613972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140785, 41.923733, 16.536037>,  <23.907387, 41.893101, 16.489277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140785, 41.923733, 16.536037>,  <24.529783, 41.974785, 16.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140785, 41.923733, 16.536037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170731, 0.178383, -0.969036,
		0.158423, -0.975650, -0.151689,
		-0.972498, -0.127619, -0.194833,
		23.849035, 41.885445, 16.477587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488928, 41.395496, 16.124008>,  <24.529783, 41.974785, 16.613972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488928, 41.395496, 16.124008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179684, 41.647011, 16.090710>,  <23.994137, 41.797920, 16.070730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179684, 41.647011, 16.090710>,  <24.488928, 41.395496, 16.124008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.179684, 41.647011, 16.090710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201673, 0.119259, -0.972165,
		-0.601354, -0.768380, -0.219009,
		-0.773111, 0.628784, -0.083245,
		23.947750, 41.835648, 16.065737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128983, 41.090809, 15.526740>,  <24.488928, 41.395496, 16.124008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128983, 41.090809, 15.526740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059711, 41.480076, 15.587337>,  <24.018148, 41.713638, 15.623694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059711, 41.480076, 15.587337>,  <24.128983, 41.090809, 15.526740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.059711, 41.480076, 15.587337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160197, 0.179598, -0.970609,
		-0.971775, -0.143817, -0.187002,
		-0.173176, 0.973171, 0.151490,
		24.007759, 41.772026, 15.632784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386751, 41.637913, 15.064935>,  <24.128983, 41.090809, 15.526740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386751, 41.637913, 15.064935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733778, 41.682076, 15.258899>,  <24.941994, 41.708572, 15.375278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733778, 41.682076, 15.258899>,  <24.386751, 41.637913, 15.064935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733778, 41.682076, 15.258899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496772, 0.238171, 0.834561,
		-0.023350, -0.964927, 0.261476,
		0.867567, 0.110407, 0.484910,
		24.994049, 41.715199, 15.404372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542025, 42.142467, 14.506092>,  <24.386751, 41.637913, 15.064935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542025, 42.142467, 14.506092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843681, 42.099316, 14.765208>,  <25.024675, 42.073425, 14.920678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843681, 42.099316, 14.765208>,  <24.542025, 42.142467, 14.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843681, 42.099316, 14.765208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290524, -0.829836, -0.476412,
		0.588953, 0.547481, -0.594473,
		0.754142, -0.107875, 0.647791,
		25.069923, 42.066952, 14.959545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256340, 42.094063, 14.182624>,  <24.542025, 42.142467, 14.506092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256340, 42.094063, 14.182624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198412, 41.872532, 14.510600>,  <25.163654, 41.739613, 14.707386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198412, 41.872532, 14.510600>,  <25.256340, 42.094063, 14.182624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198412, 41.872532, 14.510600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154498, -0.805856, -0.571600,
		0.977321, -0.209460, 0.031141,
		-0.144822, -0.553826, 0.819941,
		25.154964, 41.706383, 14.756582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400616, 41.286781, 14.017962>,  <25.256340, 42.094063, 14.182624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400616, 41.286781, 14.017962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207411, 41.281513, 14.368167>,  <25.091488, 41.278351, 14.578290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207411, 41.281513, 14.368167>,  <25.400616, 41.286781, 14.017962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207411, 41.281513, 14.368167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414545, -0.877290, -0.241899,
		0.771266, -0.479780, 0.418281,
		-0.483012, -0.013172, 0.875514,
		25.062508, 41.277561, 14.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530682, 40.797722, 14.469418>,  <25.400616, 41.286781, 14.017962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530682, 40.797722, 14.469418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153557, 40.904816, 14.548844>,  <24.927282, 40.969070, 14.596500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153557, 40.904816, 14.548844>,  <25.530682, 40.797722, 14.469418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153557, 40.904816, 14.548844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329727, -0.836414, -0.437826,
		0.048864, -0.478260, 0.876858,
		-0.942811, 0.267730, 0.198566,
		24.870714, 40.985134, 14.608414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099438, 40.129177, 14.634389>,  <25.530682, 40.797722, 14.469418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099438, 40.129177, 14.634389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883732, 40.410587, 14.449243>,  <24.754309, 40.579433, 14.338155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883732, 40.410587, 14.449243>,  <25.099438, 40.129177, 14.634389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883732, 40.410587, 14.449243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315600, -0.678408, -0.663445,
		-0.780762, -0.211693, 0.587874,
		-0.539265, 0.703526, -0.462866,
		24.721952, 40.621647, 14.310383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043972, 39.414890, 15.012855>,  <25.099438, 40.129177, 14.634389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043972, 39.414890, 15.012855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288439, 39.099041, 15.034652>,  <25.435120, 38.909531, 15.047730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288439, 39.099041, 15.034652>,  <25.043972, 39.414890, 15.012855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288439, 39.099041, 15.034652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559750, -0.382517, 0.735093,
		-0.559602, -0.479767, -0.675773,
		0.611168, -0.789624, 0.054492,
		25.471788, 38.862156, 15.051000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595644, 38.784817, 14.959096>,  <25.043972, 39.414890, 15.012855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595644, 38.784817, 14.959096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941328, 38.718582, 15.149138>,  <25.148739, 38.678841, 15.263165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941328, 38.718582, 15.149138>,  <24.595644, 38.784817, 14.959096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941328, 38.718582, 15.149138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502807, -0.318282, 0.803667,
		0.018143, -0.933423, -0.358319,
		0.864208, -0.165585, 0.475106,
		25.200590, 38.668907, 15.291671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637804, 37.985245, 15.042142>,  <24.595644, 38.784817, 14.959096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637804, 37.985245, 15.042142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842026, 38.180462, 15.325311>,  <24.964558, 38.297592, 15.495212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842026, 38.180462, 15.325311>,  <24.637804, 37.985245, 15.042142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842026, 38.180462, 15.325311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532815, -0.466622, 0.705954,
		0.674866, -0.737618, 0.021799,
		0.510553, 0.488040, 0.707922,
		24.995192, 38.326874, 15.537687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798040, 37.467499, 15.543969>,  <24.637804, 37.985245, 15.042142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798040, 37.467499, 15.543969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859379, 37.801907, 15.754706>,  <24.896181, 38.002552, 15.881148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859379, 37.801907, 15.754706>,  <24.798040, 37.467499, 15.543969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859379, 37.801907, 15.754706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366639, -0.446958, 0.815968,
		0.917639, -0.318285, 0.237978,
		0.153344, 0.836016, 0.526842,
		24.905382, 38.052711, 15.912759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088268, 37.249565, 16.223162>,  <24.798040, 37.467499, 15.543969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088268, 37.249565, 16.223162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964573, 37.616379, 16.323895>,  <24.890356, 37.836468, 16.384335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964573, 37.616379, 16.323895>,  <25.088268, 37.249565, 16.223162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964573, 37.616379, 16.323895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505554, -0.382819, 0.773217,
		0.805473, 0.111794, 0.581993,
		-0.309239, 0.917034, 0.251832,
		24.871801, 37.891491, 16.399445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129133, 37.273521, 16.892090>,  <25.088268, 37.249565, 16.223162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129133, 37.273521, 16.892090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870386, 37.569138, 16.816841>,  <24.715137, 37.746506, 16.771692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870386, 37.569138, 16.816841>,  <25.129133, 37.273521, 16.892090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870386, 37.569138, 16.816841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587676, -0.325870, 0.740571,
		0.486006, 0.589605, 0.645108,
		-0.646866, 0.739037, -0.188122,
		24.676327, 37.790848, 16.760405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930302, 37.663544, 17.579042>,  <25.129133, 37.273521, 16.892090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930302, 37.663544, 17.579042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630575, 37.731178, 17.322937>,  <24.450739, 37.771759, 17.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630575, 37.731178, 17.322937>,  <24.930302, 37.663544, 17.579042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.630575, 37.731178, 17.322937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661808, -0.157435, 0.732956,
		0.023132, 0.972946, 0.229871,
		-0.749317, 0.169085, -0.640262,
		24.405781, 37.781902, 17.130859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475346, 38.099678, 17.993935>,  <24.930302, 37.663544, 17.579042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475346, 38.099678, 17.993935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261036, 37.940899, 17.695839>,  <24.132450, 37.845631, 17.516981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261036, 37.940899, 17.695839>,  <24.475346, 38.099678, 17.993935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261036, 37.940899, 17.695839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774048, -0.121716, 0.621317,
		-0.337337, 0.909736, -0.242044,
		-0.535774, -0.396947, -0.745238,
		24.100304, 37.821815, 17.472267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.774044, 38.255814, 17.951384>,  <24.475346, 38.099678, 17.993935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.774044, 38.255814, 17.951384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.673721, 37.933098, 17.737396>,  <23.613527, 37.739468, 17.609005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.673721, 37.933098, 17.737396>,  <23.774044, 38.255814, 17.951384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.673721, 37.933098, 17.737396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772678, -0.166062, 0.612692,
		-0.583151, 0.567025, -0.581738,
		-0.250807, -0.806788, -0.534967,
		23.598478, 37.691063, 17.576906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.050835, 38.261890, 17.821535>,  <23.774044, 38.255814, 17.951384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.050835, 38.261890, 17.821535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177214, 37.883457, 17.792976>,  <23.253040, 37.656395, 17.775841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177214, 37.883457, 17.792976>,  <23.050835, 38.261890, 17.821535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177214, 37.883457, 17.792976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791613, -0.304346, 0.529833,
		-0.522998, -0.110879, -0.845091,
		0.315947, -0.946087, -0.071399,
		23.271997, 37.599632, 17.771557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.443371, 37.814686, 17.539780>,  <23.050835, 38.261890, 17.821535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.443371, 37.814686, 17.539780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.702885, 37.561462, 17.708691>,  <22.858593, 37.409531, 17.810038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.702885, 37.561462, 17.708691>,  <22.443371, 37.814686, 17.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.702885, 37.561462, 17.708691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647153, -0.167065, 0.743829,
		-0.400337, -0.755864, -0.518073,
		0.648786, -0.633055, 0.422278,
		22.897520, 37.371548, 17.835375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019125, 37.256981, 17.868181>,  <22.443371, 37.814686, 17.539780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019125, 37.256981, 17.868181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375753, 37.173763, 18.029087>,  <22.589731, 37.123833, 18.125631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375753, 37.173763, 18.029087>,  <22.019125, 37.256981, 17.868181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375753, 37.173763, 18.029087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450590, -0.318269, 0.834070,
		-0.045496, -0.924890, -0.377503,
		0.891571, -0.208046, 0.402266,
		22.643225, 37.111351, 18.149767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003628, 36.483326, 17.968023>,  <22.019125, 37.256981, 17.868181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003628, 36.483326, 17.968023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.289495, 36.627518, 18.207790>,  <22.461016, 36.714031, 18.351650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.289495, 36.627518, 18.207790>,  <22.003628, 36.483326, 17.968023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.289495, 36.627518, 18.207790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430874, -0.448180, 0.783251,
		0.550992, -0.818040, -0.164981,
		0.714671, 0.360479, 0.599416,
		22.503897, 36.735661, 18.387615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.266546, 35.849617, 18.456266>,  <22.003628, 36.483326, 17.968023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.266546, 35.849617, 18.456266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354750, 36.209286, 18.607456>,  <22.407673, 36.425087, 18.698170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.354750, 36.209286, 18.607456>,  <22.266546, 35.849617, 18.456266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354750, 36.209286, 18.607456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109340, -0.362284, 0.925632,
		0.969237, -0.245438, 0.018428,
		0.220510, 0.899172, 0.377975,
		22.420902, 36.479038, 18.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630728, 35.674297, 18.958801>,  <22.266546, 35.849617, 18.456266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630728, 35.674297, 18.958801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507938, 36.045372, 19.043812>,  <22.434265, 36.268017, 19.094818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507938, 36.045372, 19.043812>,  <22.630728, 35.674297, 18.958801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507938, 36.045372, 19.043812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238448, -0.291156, 0.926483,
		0.921363, 0.233728, 0.310581,
		-0.306973, 0.927685, 0.212528,
		22.415846, 36.323677, 19.107571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.001925, 35.908539, 19.621330>,  <22.630728, 35.674297, 18.958801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.001925, 35.908539, 19.621330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689339, 36.156075, 19.589447>,  <22.501787, 36.304596, 19.570316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689339, 36.156075, 19.589447>,  <23.001925, 35.908539, 19.621330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689339, 36.156075, 19.589447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162230, -0.078162, 0.983652,
		0.602489, 0.781622, 0.161475,
		-0.781465, 0.618836, -0.079710,
		22.454899, 36.341724, 19.565535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068867, 36.298416, 20.179159>,  <23.001925, 35.908539, 19.621330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068867, 36.298416, 20.179159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690128, 36.368122, 20.070999>,  <22.462885, 36.409946, 20.006104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690128, 36.368122, 20.070999>,  <23.068867, 36.298416, 20.179159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690128, 36.368122, 20.070999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252204, 0.119660, 0.960247,
		0.199691, 0.977402, -0.069350,
		-0.946846, 0.174262, -0.270399,
		22.406075, 36.420403, 19.989880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855915, 36.959988, 20.510916>,  <23.068867, 36.298416, 20.179159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855915, 36.959988, 20.510916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.560144, 36.706772, 20.419258>,  <22.382683, 36.554840, 20.364264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.560144, 36.706772, 20.419258>,  <22.855915, 36.959988, 20.510916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.560144, 36.706772, 20.419258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279497, -0.020999, 0.959917,
		-0.612479, 0.773833, -0.161406,
		-0.739426, -0.633041, -0.229146,
		22.338316, 36.516861, 20.350515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293667, 37.163738, 20.864334>,  <22.855915, 36.959988, 20.510916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293667, 37.163738, 20.864334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203117, 36.781860, 20.787064>,  <22.148788, 36.552734, 20.740702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203117, 36.781860, 20.787064>,  <22.293667, 37.163738, 20.864334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.203117, 36.781860, 20.787064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290668, -0.123076, 0.948876,
		-0.929660, 0.270949, -0.249637,
		-0.226372, -0.954693, -0.193175,
		22.135206, 36.495453, 20.729111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557938, 37.026958, 21.065449>,  <22.293667, 37.163738, 20.864334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557938, 37.026958, 21.065449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726961, 36.664547, 21.074795>,  <21.828375, 36.447098, 21.080402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726961, 36.664547, 21.074795>,  <21.557938, 37.026958, 21.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726961, 36.664547, 21.074795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289248, -0.110379, 0.950869,
		-0.858940, -0.408558, -0.308710,
		0.422560, -0.906033, 0.023366,
		21.853729, 36.392738, 21.081804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.971655, 36.589779, 21.419605>,  <21.557938, 37.026958, 21.065449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.971655, 36.589779, 21.419605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311552, 36.382256, 21.457062>,  <21.515491, 36.257740, 21.479536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311552, 36.382256, 21.457062>,  <20.971655, 36.589779, 21.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311552, 36.382256, 21.457062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308792, -0.345835, 0.886028,
		-0.427301, -0.781811, -0.454076,
		0.849743, -0.518815, 0.093641,
		21.566475, 36.226612, 21.485155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832262, 35.813942, 21.631769>,  <20.971655, 36.589779, 21.419605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832262, 35.813942, 21.631769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188976, 35.933060, 21.768024>,  <21.403006, 36.004532, 21.849777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188976, 35.933060, 21.768024>,  <20.832262, 35.813942, 21.631769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188976, 35.933060, 21.768024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201671, -0.412324, 0.888435,
		0.405029, -0.860990, -0.307647,
		0.891785, 0.297798, 0.340640,
		21.456512, 36.022400, 21.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094511, 35.769936, 21.364002>,  <20.832262, 35.813942, 21.631769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094511, 35.769936, 21.364002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189169, 36.096020, 21.575447>,  <20.245964, 36.291672, 21.702314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189169, 36.096020, 21.575447>,  <20.094511, 35.769936, 21.364002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189169, 36.096020, 21.575447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967352, 0.146888, 0.206530,
		0.090719, -0.560228, 0.823356,
		0.236645, 0.815211, 0.528611,
		20.260162, 36.340584, 21.734030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924961, 35.808578, 22.063986>,  <20.094511, 35.769936, 21.364002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924961, 35.808578, 22.063986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.928322, 36.188885, 21.940071>,  <19.930338, 36.417068, 21.865723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.928322, 36.188885, 21.940071>,  <19.924961, 35.808578, 22.063986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928322, 36.188885, 21.940071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881024, 0.153577, 0.447449,
		0.472997, 0.269173, 0.838940,
		0.008400, 0.950768, -0.309789,
		19.930841, 36.474113, 21.847134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793608, 36.263420, 22.664797>,  <19.924961, 35.808578, 22.063986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793608, 36.263420, 22.664797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672487, 36.407566, 22.311878>,  <19.599815, 36.494053, 22.100126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672487, 36.407566, 22.311878>,  <19.793608, 36.263420, 22.664797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672487, 36.407566, 22.311878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882837, 0.242697, 0.402116,
		0.359040, 0.900686, 0.244654,
		-0.302803, 0.360365, -0.882296,
		19.581646, 36.515675, 22.047190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451973, 36.890984, 22.590582>,  <19.793608, 36.263420, 22.664797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451973, 36.890984, 22.590582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.286823, 36.607025, 22.362343>,  <19.187733, 36.436649, 22.225399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.286823, 36.607025, 22.362343>,  <19.451973, 36.890984, 22.590582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286823, 36.607025, 22.362343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784035, -0.041793, 0.619308,
		-0.463492, 0.703065, -0.539329,
		-0.412874, -0.709897, -0.570598,
		19.162962, 36.394054, 22.191164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739058, 37.097683, 22.794167>,  <19.451973, 36.890984, 22.590582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739058, 37.097683, 22.794167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475050, 37.323540, 22.992378>,  <18.316645, 37.459053, 23.111305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475050, 37.323540, 22.992378>,  <18.739058, 37.097683, 22.794167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475050, 37.323540, 22.992378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049617, -0.625402, 0.778723,
		0.749608, 0.538559, 0.384762,
		-0.660020, 0.564647, 0.495528,
		18.277044, 37.492935, 23.141037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.360022, 29.071396, 31.011326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.729298, 29.215366, 31.065247>,  <30.950863, 29.301748, 31.097599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.729298, 29.215366, 31.065247>,  <30.360022, 29.071396, 31.011326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729298, 29.215366, 31.065247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129390, 0.039209, -0.990818,
		-0.361907, 0.932156, -0.010373,
		0.923191, 0.359927, 0.134801,
		31.006254, 29.323345, 31.105686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356085, 29.570547, 30.476395>,  <30.360022, 29.071396, 31.011326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356085, 29.570547, 30.476395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.736061, 29.502186, 30.581009>,  <30.964046, 29.461168, 30.643778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.736061, 29.502186, 30.581009>,  <30.356085, 29.570547, 30.476395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736061, 29.502186, 30.581009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297325, 0.237423, -0.924785,
		0.095953, 0.956254, 0.276352,
		0.949943, -0.170902, 0.261537,
		31.021044, 29.450914, 30.659470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680820, 30.127766, 30.402939>,  <30.356085, 29.570547, 30.476395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680820, 30.127766, 30.402939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.955139, 29.838326, 30.371727>,  <31.119730, 29.664661, 30.353001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.955139, 29.838326, 30.371727>,  <30.680820, 30.127766, 30.402939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955139, 29.838326, 30.371727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162491, 0.256736, -0.952724,
		0.709424, 0.640695, 0.293647,
		0.685795, -0.723600, -0.078027,
		31.160877, 29.621246, 30.348318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185040, 30.431194, 30.009865>,  <30.680820, 30.127766, 30.402939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185040, 30.431194, 30.009865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.380566, 30.082535, 29.995525>,  <31.497881, 29.873339, 29.986921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.380566, 30.082535, 29.995525>,  <31.185040, 30.431194, 30.009865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380566, 30.082535, 29.995525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495069, 0.310997, -0.811287,
		0.718306, 0.378825, 0.583548,
		0.488818, -0.871649, -0.035846,
		31.527210, 29.821039, 29.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949814, 30.557329, 29.912746>,  <31.185040, 30.431194, 30.009865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949814, 30.557329, 29.912746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876513, 30.196957, 29.755398>,  <31.832531, 29.980734, 29.660988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876513, 30.196957, 29.755398>,  <31.949814, 30.557329, 29.912746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876513, 30.196957, 29.755398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361750, 0.310271, -0.879130,
		0.914087, -0.303406, 0.269054,
		-0.183254, -0.900931, -0.393372,
		31.821537, 29.926678, 29.637386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401138, 30.535189, 29.309000>,  <31.949814, 30.557329, 29.912746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401138, 30.535189, 29.309000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145184, 30.238258, 29.229496>,  <31.991611, 30.060101, 29.181793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145184, 30.238258, 29.229496>,  <32.401138, 30.535189, 29.309000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145184, 30.238258, 29.229496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205232, 0.084172, -0.975087,
		0.740561, -0.664732, 0.098488,
		-0.639882, -0.742325, -0.198759,
		31.953218, 30.015560, 29.169868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800030, 29.983576, 28.925886>,  <32.401138, 30.535189, 29.309000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800030, 29.983576, 28.925886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405750, 29.989296, 28.858711>,  <32.169182, 29.992727, 28.818407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405750, 29.989296, 28.858711>,  <32.800030, 29.983576, 28.925886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405750, 29.989296, 28.858711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166643, -0.066558, -0.983768,
		-0.025242, -0.997680, 0.063223,
		-0.985694, 0.014297, -0.167937,
		32.110043, 29.993586, 28.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740501, 29.768438, 28.241413>,  <32.800030, 29.983576, 28.925886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740501, 29.768438, 28.241413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.372696, 29.911976, 28.305565>,  <32.152012, 29.998098, 28.344055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.372696, 29.911976, 28.305565>,  <32.740501, 29.768438, 28.241413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372696, 29.911976, 28.305565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037052, 0.327079, -0.944270,
		-0.391301, -0.874214, -0.287459,
		-0.919516, 0.358843, 0.160378,
		32.096840, 30.019629, 28.353678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407207, 29.328079, 27.733040>,  <32.740501, 29.768438, 28.241413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407207, 29.328079, 27.733040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160320, 29.629116, 27.824818>,  <32.012188, 29.809738, 27.879885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160320, 29.629116, 27.824818>,  <32.407207, 29.328079, 27.733040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160320, 29.629116, 27.824818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121217, 0.197180, -0.972845,
		-0.777396, -0.628273, -0.030477,
		-0.617222, 0.752591, 0.229444,
		31.975153, 29.854893, 27.893650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919994, 29.311008, 27.231298>,  <32.407207, 29.328079, 27.733040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919994, 29.311008, 27.231298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.868040, 29.684216, 27.365528>,  <31.836868, 29.908140, 27.446066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.868040, 29.684216, 27.365528>,  <31.919994, 29.311008, 27.231298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868040, 29.684216, 27.365528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166460, 0.313117, -0.935013,
		-0.977457, -0.177302, 0.114641,
		-0.129883, 0.933018, 0.335572,
		31.829075, 29.964121, 27.466200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218922, 29.601665, 26.882605>,  <31.919994, 29.311008, 27.231298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218922, 29.601665, 26.882605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466148, 29.897541, 26.989075>,  <31.614485, 30.075068, 27.052958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466148, 29.897541, 26.989075>,  <31.218922, 29.601665, 26.882605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466148, 29.897541, 26.989075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271496, 0.518608, -0.810762,
		-0.737754, 0.428840, 0.521358,
		0.618068, 0.739690, 0.266177,
		31.651569, 30.119448, 27.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797909, 30.201447, 26.819572>,  <31.218922, 29.601665, 26.882605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797909, 30.201447, 26.819572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.180401, 30.314903, 26.790821>,  <31.409897, 30.382978, 26.773571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.180401, 30.314903, 26.790821>,  <30.797909, 30.201447, 26.819572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180401, 30.314903, 26.790821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243339, 0.634435, -0.733675,
		-0.162501, 0.719054, 0.675689,
		0.956232, 0.283644, -0.071878,
		31.467270, 30.399996, 26.769258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716145, 30.964109, 26.739014>,  <30.797909, 30.201447, 26.819572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716145, 30.964109, 26.739014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097843, 30.888882, 26.646023>,  <31.326862, 30.843744, 26.590227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097843, 30.888882, 26.646023>,  <30.716145, 30.964109, 26.739014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097843, 30.888882, 26.646023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083314, 0.579450, -0.810738,
		0.287186, 0.793011, 0.537268,
		0.954245, -0.188071, -0.232478,
		31.384117, 30.832460, 26.576279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884005, 31.558643, 26.532579>,  <30.716145, 30.964109, 26.739014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884005, 31.558643, 26.532579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.142118, 31.299534, 26.370594>,  <31.296988, 31.144068, 26.273403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.142118, 31.299534, 26.370594>,  <30.884005, 31.558643, 26.532579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142118, 31.299534, 26.370594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077186, 0.472104, -0.878157,
		0.760033, 0.597919, 0.254642,
		0.645285, -0.647773, -0.404965,
		31.335705, 31.105202, 26.249104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346256, 31.969431, 26.088440>,  <30.884005, 31.558643, 26.532579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346256, 31.969431, 26.088440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369087, 31.600727, 25.935024>,  <31.382786, 31.379505, 25.842974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369087, 31.600727, 25.935024>,  <31.346256, 31.969431, 26.088440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369087, 31.600727, 25.935024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212706, 0.364120, -0.906737,
		0.975448, 0.133334, -0.175281,
		0.057076, -0.921759, -0.383541,
		31.386209, 31.324200, 25.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714952, 32.089729, 25.399611>,  <31.346256, 31.969431, 26.088440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714952, 32.089729, 25.399611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553314, 31.730602, 25.329613>,  <31.456331, 31.515125, 25.287615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553314, 31.730602, 25.329613>,  <31.714952, 32.089729, 25.399611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553314, 31.730602, 25.329613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398973, 0.345151, -0.849524,
		0.823121, -0.273470, -0.497680,
		-0.404094, -0.897823, -0.174994,
		31.432085, 31.461256, 25.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947605, 31.804367, 24.774170>,  <31.714952, 32.089729, 25.399611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947605, 31.804367, 24.774170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.609219, 31.603661, 24.846363>,  <31.406187, 31.483236, 24.889679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.609219, 31.603661, 24.846363>,  <31.947605, 31.804367, 24.774170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609219, 31.603661, 24.846363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317532, 0.202113, -0.926458,
		0.428388, -0.841059, -0.330307,
		-0.845965, -0.501766, 0.180481,
		31.355429, 31.453131, 24.900507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804686, 31.349230, 24.269909>,  <31.947605, 31.804367, 24.774170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804686, 31.349230, 24.269909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437916, 31.394703, 24.422920>,  <31.217854, 31.421988, 24.514727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437916, 31.394703, 24.422920>,  <31.804686, 31.349230, 24.269909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437916, 31.394703, 24.422920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362904, 0.161172, -0.917782,
		-0.165991, -0.980357, -0.106526,
		-0.916923, 0.113684, 0.382529,
		31.162838, 31.428808, 24.537680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350298, 30.836222, 23.947737>,  <31.804686, 31.349230, 24.269909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350298, 30.836222, 23.947737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.081100, 31.094486, 24.092072>,  <30.919582, 31.249445, 24.178673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.081100, 31.094486, 24.092072>,  <31.350298, 30.836222, 23.947737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081100, 31.094486, 24.092072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424436, 0.062425, -0.903304,
		-0.605752, -0.761070, 0.232030,
		-0.672993, 0.645660, 0.360840,
		30.879202, 31.288183, 24.200323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644236, 30.625450, 23.651348>,  <31.350298, 30.836222, 23.947737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644236, 30.625450, 23.651348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.629097, 31.005585, 23.774914>,  <30.620014, 31.233665, 23.849052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.629097, 31.005585, 23.774914>,  <30.644236, 30.625450, 23.651348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629097, 31.005585, 23.774914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388608, 0.270804, -0.880710,
		-0.920626, -0.153379, 0.359059,
		-0.037847, 0.950337, 0.308913,
		30.617743, 31.290686, 23.867588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903412, 30.943913, 23.476500>,  <30.644236, 30.625450, 23.651348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903412, 30.943913, 23.476500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.157089, 31.250416, 23.517776>,  <30.309296, 31.434317, 23.542543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.157089, 31.250416, 23.517776>,  <29.903412, 30.943913, 23.476500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157089, 31.250416, 23.517776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261268, 0.338004, -0.904153,
		-0.727693, 0.546446, 0.414558,
		0.634193, 0.766257, 0.103195,
		30.347347, 31.480293, 23.548735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476620, 31.607033, 23.392593>,  <29.903412, 30.943913, 23.476500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476620, 31.607033, 23.392593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.860167, 31.663044, 23.293827>,  <30.090294, 31.696651, 23.234568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.860167, 31.663044, 23.293827>,  <29.476620, 31.607033, 23.392593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860167, 31.663044, 23.293827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283664, 0.440734, -0.851638,
		-0.010429, 0.886648, 0.462326,
		0.958867, 0.140027, -0.246914,
		30.147827, 31.705051, 23.219753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843523, 31.981510, 23.433008>,  <29.476620, 31.607033, 23.392593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843523, 31.981510, 23.433008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.499023, 32.184746, 23.436943>,  <28.292324, 32.306686, 23.439304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.499023, 32.184746, 23.436943>,  <28.843523, 31.981510, 23.433008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499023, 32.184746, 23.436943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080982, -0.156328, 0.984380,
		0.501692, 0.846998, 0.175783,
		-0.861247, 0.508091, 0.009837,
		28.240650, 32.337173, 23.439894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978340, 32.366272, 23.964804>,  <28.843523, 31.981510, 23.433008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978340, 32.366272, 23.964804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582472, 32.354362, 23.908718>,  <28.344950, 32.347218, 23.875067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582472, 32.354362, 23.908718>,  <28.978340, 32.366272, 23.964804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582472, 32.354362, 23.908718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142632, 0.107223, 0.983951,
		-0.014265, 0.993789, -0.110363,
		-0.989673, -0.029777, -0.140216,
		28.285570, 32.345428, 23.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781244, 32.906860, 24.359291>,  <28.978340, 32.366272, 23.964804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781244, 32.906860, 24.359291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475225, 32.652554, 24.318310>,  <28.291615, 32.499969, 24.293720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475225, 32.652554, 24.318310>,  <28.781244, 32.906860, 24.359291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475225, 32.652554, 24.318310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180640, 0.059160, 0.981768,
		-0.618117, 0.769609, -0.160106,
		-0.765049, -0.635769, -0.102454,
		28.245710, 32.461823, 24.287573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184446, 33.252762, 24.689760>,  <28.781244, 32.906860, 24.359291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184446, 33.252762, 24.689760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.115065, 32.859024, 24.677231>,  <28.073435, 32.622780, 24.669714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.115065, 32.859024, 24.677231>,  <28.184446, 33.252762, 24.689760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115065, 32.859024, 24.677231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401136, 0.041568, 0.915075,
		-0.899446, 0.171290, -0.402065,
		-0.173456, -0.984343, -0.031322,
		28.063028, 32.563721, 24.667833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546259, 33.159672, 25.055031>,  <28.184446, 33.252762, 24.689760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546259, 33.159672, 25.055031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701843, 32.791626, 25.036724>,  <27.795195, 32.570797, 25.025740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701843, 32.791626, 25.036724>,  <27.546259, 33.159672, 25.055031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701843, 32.791626, 25.036724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307257, -0.176401, 0.935134,
		-0.868505, -0.349670, -0.351325,
		0.388962, -0.920116, -0.045767,
		27.818531, 32.515591, 25.022993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122608, 32.777351, 25.464184>,  <27.546259, 33.159672, 25.055031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122608, 32.777351, 25.464184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.414965, 32.505516, 25.439011>,  <27.590378, 32.342415, 25.423906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.414965, 32.505516, 25.439011>,  <27.122608, 32.777351, 25.464184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414965, 32.505516, 25.439011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130221, -0.229377, 0.964587,
		-0.669958, -0.696811, -0.256146,
		0.730889, -0.679588, -0.062933,
		27.634232, 32.301640, 25.420130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853142, 32.203766, 25.839037>,  <27.122608, 32.777351, 25.464184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853142, 32.203766, 25.839037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.251122, 32.167870, 25.821053>,  <27.489910, 32.146332, 25.810263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.251122, 32.167870, 25.821053>,  <26.853142, 32.203766, 25.839037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251122, 32.167870, 25.821053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007913, -0.376400, 0.926423,
		-0.100058, -0.922101, -0.373789,
		0.994950, -0.089738, -0.044959,
		27.549606, 32.140949, 25.807566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091629, 31.465340, 25.976027>,  <26.853142, 32.203766, 25.839037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091629, 31.465340, 25.976027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.401711, 31.696323, 26.078476>,  <27.587759, 31.834913, 26.139946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.401711, 31.696323, 26.078476>,  <27.091629, 31.465340, 25.976027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401711, 31.696323, 26.078476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089938, -0.502203, 0.860060,
		0.625277, -0.643685, -0.441245,
		0.775203, 0.577461, 0.256124,
		27.634272, 31.869562, 26.155313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392347, 31.050035, 26.420584>,  <27.091629, 31.465340, 25.976027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392347, 31.050035, 26.420584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545263, 31.411469, 26.497929>,  <27.637012, 31.628328, 26.544334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545263, 31.411469, 26.497929>,  <27.392347, 31.050035, 26.420584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545263, 31.411469, 26.497929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236458, -0.297949, 0.924832,
		0.893276, -0.307833, -0.327563,
		0.382291, 0.903585, 0.193361,
		27.659950, 31.682545, 26.555937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049618, 30.979252, 26.714502>,  <27.392347, 31.050035, 26.420584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049618, 30.979252, 26.714502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.987001, 31.360134, 26.819424>,  <27.949432, 31.588663, 26.882378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.987001, 31.360134, 26.819424>,  <28.049618, 30.979252, 26.714502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987001, 31.360134, 26.819424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298303, -0.207595, 0.931622,
		0.941547, 0.224082, -0.251548,
		-0.156540, 0.952204, 0.262304,
		27.940039, 31.645796, 26.898115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638153, 31.188347, 27.098503>,  <28.049618, 30.979252, 26.714502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638153, 31.188347, 27.098503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.348743, 31.430286, 27.231571>,  <28.175098, 31.575451, 27.311413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.348743, 31.430286, 27.231571>,  <28.638153, 31.188347, 27.098503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348743, 31.430286, 27.231571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230209, -0.242914, 0.942336,
		0.650781, 0.758387, 0.036513,
		-0.723525, 0.604849, 0.332671,
		28.131685, 31.611740, 27.331373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962627, 31.444876, 27.767229>,  <28.638153, 31.188347, 27.098503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962627, 31.444876, 27.767229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.571470, 31.528427, 27.771214>,  <28.336777, 31.578558, 27.773603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.571470, 31.528427, 27.771214>,  <28.962627, 31.444876, 27.767229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571470, 31.528427, 27.771214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000133, -0.048247, 0.998835,
		0.209116, 0.976751, 0.047208,
		-0.977891, 0.208879, 0.009959,
		28.278103, 31.591091, 27.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863140, 32.162144, 28.133432>,  <28.962627, 31.444876, 27.767229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863140, 32.162144, 28.133432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.558609, 31.905235, 28.168907>,  <28.375891, 31.751089, 28.190193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.558609, 31.905235, 28.168907>,  <28.863140, 32.162144, 28.133432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558609, 31.905235, 28.168907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246585, -0.160315, 0.955769,
		-0.599648, 0.749522, 0.280428,
		-0.761326, -0.642274, 0.088688,
		28.330212, 31.712553, 28.195513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463680, 32.362537, 28.766937>,  <28.863140, 32.162144, 28.133432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463680, 32.362537, 28.766937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386763, 31.976135, 28.697815>,  <28.340612, 31.744295, 28.656342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386763, 31.976135, 28.697815>,  <28.463680, 32.362537, 28.766937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386763, 31.976135, 28.697815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205296, -0.211793, 0.955509,
		-0.959623, 0.148261, 0.239043,
		-0.192293, -0.966003, -0.172804,
		28.329075, 31.686335, 28.645973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892088, 32.186993, 29.207418>,  <28.463680, 32.362537, 28.766937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892088, 32.186993, 29.207418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.069338, 31.843864, 29.103271>,  <28.175688, 31.637989, 29.040783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.069338, 31.843864, 29.103271>,  <27.892088, 32.186993, 29.207418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069338, 31.843864, 29.103271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028059, -0.277023, 0.960453,
		-0.896020, -0.432908, -0.098687,
		0.443127, -0.857816, -0.260365,
		28.202276, 31.586519, 29.025162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646338, 31.665400, 29.663652>,  <27.892088, 32.186993, 29.207418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646338, 31.665400, 29.663652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.977100, 31.480808, 29.535114>,  <28.175558, 31.370054, 29.457991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.977100, 31.480808, 29.535114>,  <27.646338, 31.665400, 29.663652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977100, 31.480808, 29.535114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167245, -0.343768, 0.924042,
		-0.536893, -0.817840, -0.207084,
		0.826907, -0.461477, -0.321346,
		28.225172, 31.342365, 29.438711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741106, 31.043339, 30.145031>,  <27.646338, 31.665400, 29.663652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741106, 31.043339, 30.145031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.087982, 31.106136, 29.955997>,  <28.296108, 31.143814, 29.842577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.087982, 31.106136, 29.955997>,  <27.741106, 31.043339, 30.145031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087982, 31.106136, 29.955997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487986, -0.457081, 0.743604,
		-0.099270, -0.875460, -0.472985,
		0.867188, 0.156993, -0.472586,
		28.348139, 31.153234, 29.814222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094376, 30.371716, 30.118773>,  <27.741106, 31.043339, 30.145031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094376, 30.371716, 30.118773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.374224, 30.652210, 30.063934>,  <28.542133, 30.820507, 30.031033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.374224, 30.652210, 30.063934>,  <28.094376, 30.371716, 30.118773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374224, 30.652210, 30.063934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563173, -0.423106, 0.709801,
		0.439735, -0.573799, -0.690933,
		0.699621, 0.701239, -0.137094,
		28.584110, 30.862581, 30.022806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.780502, 29.968557, 30.219887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872362, 30.356678, 30.250298>,  <28.927479, 30.589550, 30.268543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872362, 30.356678, 30.250298>,  <28.780502, 29.968557, 30.219887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872362, 30.356678, 30.250298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496586, -0.183995, 0.848262,
		0.837057, -0.157048, -0.524092,
		0.229649, 0.970300, 0.076026,
		28.941257, 30.647768, 30.273106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485947, 30.085901, 30.391953>,  <28.780502, 29.968557, 30.219887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485947, 30.085901, 30.391953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351269, 30.447384, 30.497742>,  <29.270462, 30.664274, 30.561214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351269, 30.447384, 30.497742>,  <29.485947, 30.085901, 30.391953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351269, 30.447384, 30.497742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276959, -0.173401, 0.945106,
		0.899961, 0.391463, -0.191907,
		-0.336697, 0.903709, 0.264473,
		29.250259, 30.718496, 30.577084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036589, 30.332859, 30.718529>,  <29.485947, 30.085901, 30.391953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036589, 30.332859, 30.718529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715998, 30.538849, 30.840141>,  <29.523643, 30.662443, 30.913109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715998, 30.538849, 30.840141>,  <30.036589, 30.332859, 30.718529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715998, 30.538849, 30.840141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136236, -0.337794, 0.931308,
		0.582300, 0.787843, 0.200576,
		-0.801478, 0.514975, 0.304030,
		29.475554, 30.693342, 30.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190203, 30.750589, 31.345287>,  <30.036589, 30.332859, 30.718529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190203, 30.750589, 31.345287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793116, 30.712097, 31.374287>,  <29.554863, 30.689003, 31.391685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793116, 30.712097, 31.374287>,  <30.190203, 30.750589, 31.345287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793116, 30.712097, 31.374287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074707, -0.019568, 0.997014,
		-0.094523, 0.995167, 0.026614,
		-0.992716, -0.096229, 0.072497,
		29.495300, 30.683228, 31.396036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062780, 31.131336, 31.926140>,  <30.190203, 30.750589, 31.345287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062780, 31.131336, 31.926140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724224, 30.920345, 31.896782>,  <29.521090, 30.793751, 31.879168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724224, 30.920345, 31.896782>,  <30.062780, 31.131336, 31.926140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724224, 30.920345, 31.896782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034203, -0.083691, 0.995905,
		-0.531460, 0.845437, 0.052794,
		-0.846392, -0.527478, -0.073395,
		29.470306, 30.762102, 31.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470779, 31.454393, 32.349899>,  <30.062780, 31.131336, 31.926140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470779, 31.454393, 32.349899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391453, 31.063889, 32.315060>,  <29.343857, 30.829586, 32.294155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391453, 31.063889, 32.315060>,  <29.470779, 31.454393, 32.349899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391453, 31.063889, 32.315060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268733, -0.031298, 0.962706,
		-0.942578, 0.214327, -0.256147,
		-0.198317, -0.976261, -0.087097,
		29.331957, 30.771011, 32.288929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064157, 31.323496, 32.929901>,  <29.470779, 31.454393, 32.349899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064157, 31.323496, 32.929901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097334, 30.938675, 32.825924>,  <29.117239, 30.707783, 32.763538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097334, 30.938675, 32.825924>,  <29.064157, 31.323496, 32.929901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097334, 30.938675, 32.825924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098435, -0.267479, 0.958523,
		-0.991681, -0.053914, -0.116885,
		0.082942, -0.962054, -0.259947,
		29.122217, 30.650059, 32.747940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720364, 30.974442, 33.448963>,  <29.064157, 31.323496, 32.929901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720364, 30.974442, 33.448963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.921200, 30.672745, 33.279716>,  <29.041702, 30.491728, 33.178169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.921200, 30.672745, 33.279716>,  <28.720364, 30.974442, 33.448963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921200, 30.672745, 33.279716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272439, -0.602291, 0.750348,
		-0.820782, -0.261469, -0.507889,
		0.502089, -0.754241, -0.423115,
		29.071827, 30.446472, 33.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211082, 30.421865, 33.444729>,  <28.720364, 30.974442, 33.448963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211082, 30.421865, 33.444729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587658, 30.288235, 33.462997>,  <28.813602, 30.208055, 33.473957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587658, 30.288235, 33.462997>,  <28.211082, 30.421865, 33.444729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587658, 30.288235, 33.462997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209296, -0.472784, 0.855962,
		-0.264364, -0.815394, -0.515018,
		0.941438, -0.334077, 0.045671,
		28.870090, 30.188011, 33.476700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168055, 29.673204, 33.742958>,  <28.211082, 30.421865, 33.444729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168055, 29.673204, 33.742958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529427, 29.824856, 33.823036>,  <28.746250, 29.915846, 33.871082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529427, 29.824856, 33.823036>,  <28.168055, 29.673204, 33.742958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529427, 29.824856, 33.823036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102429, -0.262566, 0.959462,
		0.416324, -0.887311, -0.198376,
		0.903428, 0.379128, 0.200199,
		28.800455, 29.938595, 33.883095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312868, 29.189821, 34.212173>,  <28.168055, 29.673204, 33.742958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312868, 29.189821, 34.212173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580257, 29.481510, 34.270660>,  <28.740692, 29.656523, 34.305752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580257, 29.481510, 34.270660>,  <28.312868, 29.189821, 34.212173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580257, 29.481510, 34.270660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001808, -0.198187, 0.980162,
		0.743733, -0.654949, -0.133801,
		0.668474, 0.729221, 0.146214,
		28.780800, 29.700277, 34.314526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914400, 28.878683, 34.535961>,  <28.312868, 29.189821, 34.212173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914400, 28.878683, 34.535961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.959200, 29.255836, 34.661457>,  <28.986080, 29.482128, 34.736755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.959200, 29.255836, 34.661457>,  <28.914400, 28.878683, 34.535961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959200, 29.255836, 34.661457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020111, -0.313506, 0.949373,
		0.993505, -0.112641, -0.016151,
		0.112001, 0.942882, 0.313735,
		28.992800, 29.538700, 34.755577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442066, 28.918961, 34.997162>,  <28.914400, 28.878683, 34.535961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442066, 28.918961, 34.997162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199730, 29.230164, 35.063686>,  <29.054329, 29.416885, 35.103600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199730, 29.230164, 35.063686>,  <29.442066, 28.918961, 34.997162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199730, 29.230164, 35.063686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259452, -0.004405, 0.965746,
		0.752091, 0.628238, -0.199187,
		-0.605841, 0.778008, 0.166311,
		29.017977, 29.463566, 35.113579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876871, 29.487747, 35.324734>,  <29.442066, 28.918961, 34.997162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876871, 29.487747, 35.324734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488678, 29.509716, 35.418671>,  <29.255762, 29.522898, 35.475033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488678, 29.509716, 35.418671>,  <29.876871, 29.487747, 35.324734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488678, 29.509716, 35.418671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238378, 0.070562, 0.968606,
		0.036625, 0.995994, -0.081571,
		-0.970482, 0.054920, 0.234838,
		29.197533, 29.526192, 35.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895922, 29.952749, 35.965649>,  <29.876871, 29.487747, 35.324734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895922, 29.952749, 35.965649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524868, 29.805347, 35.941322>,  <29.302235, 29.716908, 35.926727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524868, 29.805347, 35.941322>,  <29.895922, 29.952749, 35.965649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524868, 29.805347, 35.941322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007432, -0.144585, 0.989465,
		-0.373413, 0.918314, 0.131383,
		-0.927635, -0.368502, -0.060814,
		29.246578, 29.694798, 35.923077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378302, 30.402243, 36.359501>,  <29.895922, 29.952749, 35.965649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378302, 30.402243, 36.359501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223957, 30.034363, 36.330479>,  <29.131350, 29.813635, 36.313065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223957, 30.034363, 36.330479>,  <29.378302, 30.402243, 36.359501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223957, 30.034363, 36.330479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181339, -0.001499, 0.983419,
		-0.904558, 0.392622, -0.166198,
		-0.385863, -0.919699, -0.072554,
		29.108198, 29.758453, 36.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825024, 30.443834, 36.814690>,  <29.378302, 30.402243, 36.359501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825024, 30.443834, 36.814690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.898045, 30.055630, 36.751720>,  <28.941856, 29.822706, 36.713940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.898045, 30.055630, 36.751720>,  <28.825024, 30.443834, 36.814690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898045, 30.055630, 36.751720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181059, -0.190559, 0.964834,
		-0.966381, -0.147629, -0.210507,
		0.182552, -0.970511, -0.157423,
		28.952810, 29.764477, 36.704494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386450, 30.189041, 37.179539>,  <28.825024, 30.443834, 36.814690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386450, 30.189041, 37.179539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630278, 29.874104, 37.142632>,  <28.776575, 29.685141, 37.120487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630278, 29.874104, 37.142632>,  <28.386450, 30.189041, 37.179539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630278, 29.874104, 37.142632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197674, -0.263686, 0.944137,
		-0.767691, -0.557278, -0.316372,
		0.609570, -0.787344, -0.092270,
		28.813148, 29.637899, 37.114952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041435, 29.623291, 37.591602>,  <28.386450, 30.189041, 37.179539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041435, 29.623291, 37.591602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430397, 29.545940, 37.539387>,  <28.663774, 29.499531, 37.508057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430397, 29.545940, 37.539387>,  <28.041435, 29.623291, 37.591602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430397, 29.545940, 37.539387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039731, -0.414081, 0.909373,
		-0.229901, -0.889463, -0.394971,
		0.972403, -0.193373, -0.130537,
		28.722118, 29.487928, 37.500225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273399, 28.903370, 37.784069>,  <28.041435, 29.623291, 37.591602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273399, 28.903370, 37.784069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.636618, 29.067516, 37.817654>,  <28.854549, 29.166004, 37.837803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.636618, 29.067516, 37.817654>,  <28.273399, 28.903370, 37.784069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636618, 29.067516, 37.817654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132808, -0.472164, 0.871449,
		0.397256, -0.780166, -0.483248,
		0.908047, 0.410367, 0.083958,
		28.909033, 29.190626, 37.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746958, 28.383163, 37.999371>,  <28.273399, 28.903370, 37.784069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746958, 28.383163, 37.999371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.932518, 28.726208, 38.088184>,  <29.043854, 28.932034, 38.141472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.932518, 28.726208, 38.088184>,  <28.746958, 28.383163, 37.999371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932518, 28.726208, 38.088184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280455, -0.379915, 0.881482,
		0.840321, -0.346652, -0.416764,
		0.463903, 0.857611, 0.222030,
		29.071690, 28.983492, 38.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437609, 28.173269, 38.142796>,  <28.746958, 28.383163, 37.999371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437609, 28.173269, 38.142796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426939, 28.536613, 38.309731>,  <29.420538, 28.754620, 38.409893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426939, 28.536613, 38.309731>,  <29.437609, 28.173269, 38.142796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426939, 28.536613, 38.309731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401923, -0.372510, 0.836477,
		0.915285, 0.190049, -0.355155,
		-0.026673, 0.908360, 0.417338,
		29.418938, 28.809122, 38.434933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150938, 28.331865, 38.536301>,  <29.437609, 28.173269, 38.142796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150938, 28.331865, 38.536301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.817957, 28.507843, 38.671043>,  <29.618168, 28.613430, 38.751888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.817957, 28.507843, 38.671043>,  <30.150938, 28.331865, 38.536301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817957, 28.507843, 38.671043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291967, -0.168425, 0.941482,
		0.470937, 0.882089, 0.011756,
		-0.832451, 0.439946, 0.336858,
		29.568222, 28.639828, 38.772102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363810, 27.731833, 38.998432>,  <30.150938, 28.331865, 38.536301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363810, 27.731833, 38.998432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547245, 28.086990, 38.983807>,  <30.657307, 28.300085, 38.975029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547245, 28.086990, 38.983807>,  <30.363810, 27.731833, 38.998432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547245, 28.086990, 38.983807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414987, -0.177587, 0.892328,
		0.785800, -0.424386, -0.449905,
		0.458589, 0.887896, -0.036567,
		30.684822, 28.353359, 38.972836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970112, 27.936123, 39.087929>,  <30.363810, 27.731833, 38.998432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970112, 27.936123, 39.087929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358225, 27.897167, 38.999325>,  <31.591093, 27.873795, 38.946163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358225, 27.897167, 38.999325>,  <30.970112, 27.936123, 39.087929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358225, 27.897167, 38.999325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153309, 0.460829, -0.874147,
		0.187209, 0.882129, 0.432204,
		0.970283, -0.097388, -0.221510,
		31.649309, 27.867950, 38.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225563, 28.667088, 38.895664>,  <30.970112, 27.936123, 39.087929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225563, 28.667088, 38.895664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456110, 28.402454, 38.703785>,  <31.594439, 28.243675, 38.588657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456110, 28.402454, 38.703785>,  <31.225563, 28.667088, 38.895664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456110, 28.402454, 38.703785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250829, 0.415445, -0.874352,
		0.777743, 0.624270, 0.073504,
		0.576368, -0.661584, -0.479694,
		31.629021, 28.203979, 38.559875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656343, 29.014158, 38.284725>,  <31.225563, 28.667088, 38.895664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656343, 29.014158, 38.284725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681814, 28.627949, 38.183765>,  <31.697096, 28.396223, 38.123188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681814, 28.627949, 38.183765>,  <31.656343, 29.014158, 38.284725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681814, 28.627949, 38.183765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141382, 0.241638, -0.960011,
		0.987905, 0.096815, -0.121121,
		0.063676, -0.965525, -0.252404,
		31.700916, 28.338291, 38.108044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124954, 29.046486, 37.919235>,  <31.656343, 29.014158, 38.284725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124954, 29.046486, 37.919235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.970694, 28.689690, 37.824890>,  <31.878138, 28.475613, 37.768284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.970694, 28.689690, 37.824890>,  <32.124954, 29.046486, 37.919235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970694, 28.689690, 37.824890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109874, 0.209417, -0.971634,
		0.916080, -0.400625, 0.017245,
		-0.385650, -0.891989, -0.235860,
		31.854998, 28.422092, 37.754131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569317, 28.714239, 37.415730>,  <32.124954, 29.046486, 37.919235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569317, 28.714239, 37.415730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213646, 28.533947, 37.384235>,  <32.000244, 28.425772, 37.365337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213646, 28.533947, 37.384235>,  <32.569317, 28.714239, 37.415730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213646, 28.533947, 37.384235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050515, 0.074320, -0.995954,
		0.454760, -0.889560, -0.043315,
		-0.889180, -0.450731, -0.078734,
		31.946892, 28.398727, 37.360615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788589, 28.151651, 36.951363>,  <32.569317, 28.714239, 37.415730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788589, 28.151651, 36.951363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394051, 28.214367, 36.931232>,  <32.157326, 28.251997, 36.919155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394051, 28.214367, 36.931232>,  <32.788589, 28.151651, 36.951363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394051, 28.214367, 36.931232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060870, 0.063165, -0.996145,
		-0.153005, -0.985610, -0.071847,
		-0.986349, 0.156789, -0.050330,
		32.098145, 28.261404, 36.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687840, 28.019367, 36.309937>,  <32.788589, 28.151651, 36.951363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687840, 28.019367, 36.309937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335972, 28.177807, 36.415230>,  <32.124851, 28.272871, 36.478405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335972, 28.177807, 36.415230>,  <32.687840, 28.019367, 36.309937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335972, 28.177807, 36.415230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189716, 0.215279, -0.957947,
		-0.436112, -0.892614, -0.114227,
		-0.879667, 0.396101, 0.263229,
		32.072071, 28.296637, 36.494198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266056, 27.783413, 35.827324>,  <32.687840, 28.019367, 36.309937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266056, 27.783413, 35.827324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080868, 28.116447, 35.948952>,  <31.969755, 28.316267, 36.021931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080868, 28.116447, 35.948952>,  <32.266056, 27.783413, 35.827324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080868, 28.116447, 35.948952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081833, 0.301437, -0.949968,
		-0.882587, -0.464692, -0.071425,
		-0.462973, 0.832584, 0.304071,
		31.941977, 28.366222, 36.040173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509882, 27.783421, 35.537548>,  <32.266056, 27.783413, 35.827324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509882, 27.783421, 35.537548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649250, 28.147091, 35.628765>,  <31.732872, 28.365294, 35.683495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649250, 28.147091, 35.628765>,  <31.509882, 27.783421, 35.537548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649250, 28.147091, 35.628765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337108, 0.348556, -0.874567,
		-0.874620, 0.227842, 0.427935,
		0.348422, 0.909174, 0.228046,
		31.753777, 28.419844, 35.697178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981117, 28.150368, 35.276424>,  <31.509882, 27.783421, 35.537548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981117, 28.150368, 35.276424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280771, 28.405445, 35.348141>,  <31.460564, 28.558491, 35.391171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280771, 28.405445, 35.348141>,  <30.981117, 28.150368, 35.276424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280771, 28.405445, 35.348141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220349, 0.495143, -0.840404,
		-0.624695, 0.590069, 0.511444,
		0.749134, 0.637693, 0.179293,
		31.505512, 28.596752, 35.401928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715933, 28.825497, 35.193279>,  <30.981117, 28.150368, 35.276424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715933, 28.825497, 35.193279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.106548, 28.869564, 35.119267>,  <31.340918, 28.896004, 35.074860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.106548, 28.869564, 35.119267>,  <30.715933, 28.825497, 35.193279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106548, 28.869564, 35.119267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215322, 0.511204, -0.832050,
		0.002923, 0.852370, 0.522932,
		0.976539, 0.110167, -0.185028,
		31.399509, 28.902615, 35.063759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718140, 29.429705, 34.824707>,  <30.715933, 28.825497, 35.193279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718140, 29.429705, 34.824707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081205, 29.276691, 34.755642>,  <31.299046, 29.184883, 34.714203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081205, 29.276691, 34.755642>,  <30.718140, 29.429705, 34.824707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081205, 29.276691, 34.755642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019354, 0.449107, -0.893268,
		0.419245, 0.807448, 0.415043,
		0.907667, -0.382531, -0.172659,
		31.353506, 29.161932, 34.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160412, 30.081049, 34.571320>,  <30.718140, 29.429705, 34.824707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160412, 30.081049, 34.571320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340321, 29.748016, 34.442001>,  <31.448265, 29.548197, 34.364410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340321, 29.748016, 34.442001>,  <31.160412, 30.081049, 34.571320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340321, 29.748016, 34.442001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044728, 0.382513, -0.922867,
		0.892023, 0.400619, 0.209283,
		0.449771, -0.832579, -0.323292,
		31.475252, 29.498243, 34.345013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698673, 30.222214, 34.190845>,  <31.160412, 30.081049, 34.571320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698673, 30.222214, 34.190845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615213, 29.850101, 34.070152>,  <31.565138, 29.626835, 33.997734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615213, 29.850101, 34.070152>,  <31.698673, 30.222214, 34.190845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615213, 29.850101, 34.070152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108058, 0.284709, -0.952504,
		0.972002, -0.231346, 0.041120,
		-0.208651, -0.930280, -0.301737,
		31.552618, 29.571018, 33.979630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076576, 30.090899, 33.619797>,  <31.698673, 30.222214, 34.190845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076576, 30.090899, 33.619797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837004, 29.776375, 33.559139>,  <31.693260, 29.587662, 33.522743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837004, 29.776375, 33.559139>,  <32.076576, 30.090899, 33.619797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837004, 29.776375, 33.559139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053733, 0.149482, -0.987303,
		0.798993, -0.599479, -0.047279,
		-0.598935, -0.786308, -0.151647,
		31.657324, 29.540482, 33.513645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308067, 29.637255, 33.077915>,  <32.076576, 30.090899, 33.619797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308067, 29.637255, 33.077915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927340, 29.514671, 33.073635>,  <31.698902, 29.441122, 33.071068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927340, 29.514671, 33.073635>,  <32.308067, 29.637255, 33.077915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927340, 29.514671, 33.073635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016503, -0.016337, -0.999730,
		0.306201, -0.951744, 0.020608,
		-0.951824, -0.306458, -0.010704,
		31.641792, 29.422733, 33.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204529, 28.913300, 32.680790>,  <32.308067, 29.637255, 33.077915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204529, 28.913300, 32.680790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861532, 29.118561, 32.695675>,  <31.655735, 29.241718, 32.704605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861532, 29.118561, 32.695675>,  <32.204529, 28.913300, 32.680790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861532, 29.118561, 32.695675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029046, 0.023928, -0.999292,
		-0.513680, -0.857964, -0.005613,
		-0.857490, 0.513153, 0.037212,
		31.604284, 29.272507, 32.706837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722361, 28.587162, 32.187069>,  <32.204529, 28.913300, 32.680790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722361, 28.587162, 32.187069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568085, 28.949467, 32.257313>,  <31.475519, 29.166849, 32.299458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568085, 28.949467, 32.257313>,  <31.722361, 28.587162, 32.187069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568085, 28.949467, 32.257313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145641, 0.128176, -0.980999,
		-0.911061, -0.403937, 0.082480,
		-0.385690, 0.905762, 0.175606,
		31.452377, 29.221195, 32.309994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995829, 28.491915, 31.938082>,  <31.722361, 28.587162, 32.187069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995829, 28.491915, 31.938082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105392, 28.876610, 31.940544>,  <31.171131, 29.107426, 31.942020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105392, 28.876610, 31.940544>,  <30.995829, 28.491915, 31.938082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105392, 28.876610, 31.940544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246367, 0.076349, -0.966165,
		-0.929665, 0.263126, 0.257853,
		0.273909, 0.961736, 0.006154,
		31.187565, 29.165131, 31.942390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434191, 28.886353, 31.749870>,  <30.995829, 28.491915, 31.938082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434191, 28.886353, 31.749870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766764, 29.094852, 31.672909>,  <30.966309, 29.219952, 31.626732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766764, 29.094852, 31.672909>,  <30.434191, 28.886353, 31.749870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766764, 29.094852, 31.672909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363869, 0.249107, -0.897521,
		-0.419902, 0.816239, 0.396781,
		0.831433, 0.521248, -0.192404,
		31.016193, 29.251226, 31.615187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.133699, 40.824780, 16.498116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.383614, 41.115631, 16.611904>,  <23.533562, 41.290142, 16.680178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.383614, 41.115631, 16.611904>,  <23.133699, 40.824780, 16.498116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.383614, 41.115631, 16.611904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163713, -0.478237, 0.862837,
		0.763439, -0.492517, -0.417836,
		0.624786, 0.727129, 0.284473,
		23.571049, 41.333771, 16.697247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.693884, 40.513901, 16.755621>,  <23.133699, 40.824780, 16.498116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.693884, 40.513901, 16.755621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.690279, 40.880653, 16.915245>,  <23.688116, 41.100704, 17.011019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.690279, 40.880653, 16.915245>,  <23.693884, 40.513901, 16.755621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690279, 40.880653, 16.915245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207489, -0.388676, 0.897708,
		0.978196, 0.090889, -0.186741,
		-0.009010, 0.916881, 0.399060,
		23.687576, 41.155716, 17.034964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178129, 40.479313, 17.270414>,  <23.693884, 40.513901, 16.755621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178129, 40.479313, 17.270414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961788, 40.801895, 17.366005>,  <23.831984, 40.995445, 17.423359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961788, 40.801895, 17.366005>,  <24.178129, 40.479313, 17.270414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961788, 40.801895, 17.366005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, -0.290535, 0.956807,
		0.841054, 0.514993, 0.165562,
		-0.540851, 0.806456, 0.238975,
		23.799534, 41.043831, 17.437696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504366, 40.772522, 17.793594>,  <24.178129, 40.479313, 17.270414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504366, 40.772522, 17.793594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130024, 40.900814, 17.851978>,  <23.905418, 40.977791, 17.887009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130024, 40.900814, 17.851978>,  <24.504366, 40.772522, 17.793594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130024, 40.900814, 17.851978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033286, -0.331894, 0.942729,
		0.350808, 0.887117, 0.299929,
		-0.935856, 0.320733, 0.145960,
		23.849268, 40.997032, 17.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.454054, 40.966621, 18.512323>,  <24.504366, 40.772522, 17.793594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.454054, 40.966621, 18.512323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.064035, 40.961884, 18.423645>,  <23.830025, 40.959042, 18.370438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.064035, 40.961884, 18.423645>,  <24.454054, 40.966621, 18.512323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.064035, 40.961884, 18.423645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206270, -0.320972, 0.924354,
		-0.082107, 0.947015, 0.310518,
		-0.975044, -0.011846, -0.221695,
		23.771523, 40.958328, 18.357136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110121, 41.389442, 18.959581>,  <24.454054, 40.966621, 18.512323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110121, 41.389442, 18.959581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.835560, 41.132771, 18.822701>,  <23.670822, 40.978767, 18.740572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.835560, 41.132771, 18.822701>,  <24.110121, 41.389442, 18.959581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.835560, 41.132771, 18.822701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109675, -0.373838, 0.920987,
		-0.718903, 0.669699, 0.186228,
		-0.686403, -0.641676, -0.342203,
		23.629639, 40.940269, 18.720039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.524719, 41.484180, 19.393806>,  <24.110121, 41.389442, 18.959581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.524719, 41.484180, 19.393806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.485363, 41.116703, 19.240795>,  <23.461750, 40.896217, 19.148989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.485363, 41.116703, 19.240795>,  <23.524719, 41.484180, 19.393806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.485363, 41.116703, 19.240795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138783, -0.367971, 0.919422,
		-0.985423, 0.143551, -0.091294,
		-0.098390, -0.918689, -0.382530,
		23.455847, 40.841095, 19.126036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889578, 41.193718, 19.702738>,  <23.524719, 41.484180, 19.393806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889578, 41.193718, 19.702738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.113045, 40.877796, 19.601471>,  <23.247126, 40.688244, 19.540710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.113045, 40.877796, 19.601471>,  <22.889578, 41.193718, 19.702738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113045, 40.877796, 19.601471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307157, -0.480562, 0.821410,
		-0.770419, -0.381134, -0.511069,
		0.558668, -0.789808, -0.253166,
		23.280645, 40.640854, 19.525520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.550068, 40.656590, 20.018209>,  <22.889578, 41.193718, 19.702738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.550068, 40.656590, 20.018209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884401, 40.460785, 19.918804>,  <23.085001, 40.343300, 19.859161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884401, 40.460785, 19.918804>,  <22.550068, 40.656590, 20.018209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884401, 40.460785, 19.918804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166735, -0.657652, 0.734638,
		-0.523048, -0.572601, -0.631307,
		0.835835, -0.489513, -0.248511,
		23.135151, 40.313931, 19.844250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.360691, 39.933105, 19.995356>,  <22.550068, 40.656590, 20.018209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.360691, 39.933105, 19.995356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.756025, 39.921196, 20.055092>,  <22.993227, 39.914051, 20.090935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.756025, 39.921196, 20.055092>,  <22.360691, 39.933105, 19.995356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.756025, 39.921196, 20.055092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123120, -0.733357, 0.668603,
		0.089616, -0.679192, -0.728469,
		0.988337, -0.029771, 0.149342,
		23.052526, 39.912266, 20.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.566692, 39.138062, 20.093294>,  <22.360691, 39.933105, 19.995356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.566692, 39.138062, 20.093294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.867893, 39.366970, 20.223209>,  <23.048615, 39.504314, 20.301159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.867893, 39.366970, 20.223209>,  <22.566692, 39.138062, 20.093294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.867893, 39.366970, 20.223209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246777, -0.703164, 0.666830,
		0.609988, -0.421975, -0.670709,
		0.753004, 0.572274, 0.324788,
		23.093794, 39.538651, 20.320646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.995693, 38.632256, 20.262344>,  <22.566692, 39.138062, 20.093294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.995693, 38.632256, 20.262344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099150, 38.967915, 20.453732>,  <23.161222, 39.169312, 20.568563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099150, 38.967915, 20.453732>,  <22.995693, 38.632256, 20.262344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099150, 38.967915, 20.453732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246526, -0.536263, 0.807247,
		0.933986, -0.090831, -0.345571,
		0.258640, 0.839150, 0.478470,
		23.176743, 39.219658, 20.597273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.436031, 38.427849, 20.572964>,  <22.995693, 38.632256, 20.262344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.436031, 38.427849, 20.572964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.371637, 38.766529, 20.775818>,  <23.333000, 38.969738, 20.897532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.371637, 38.766529, 20.775818>,  <23.436031, 38.427849, 20.572964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.371637, 38.766529, 20.775818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357546, -0.428903, 0.829580,
		0.919916, 0.314875, -0.233686,
		-0.160985, 0.846697, 0.507137,
		23.323341, 39.020538, 20.927959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024263, 38.684208, 20.910080>,  <23.436031, 38.427849, 20.572964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024263, 38.684208, 20.910080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.751299, 38.863960, 21.140686>,  <23.587521, 38.971813, 21.279049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.751299, 38.863960, 21.140686>,  <24.024263, 38.684208, 20.910080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.751299, 38.863960, 21.140686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300923, -0.546054, 0.781838,
		0.666152, 0.707022, 0.237405,
		-0.682413, 0.449382, 0.576514,
		23.546576, 38.998775, 21.313641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306229, 38.522503, 21.441170>,  <24.024263, 38.684208, 20.910080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306229, 38.522503, 21.441170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.933386, 38.617935, 21.550167>,  <23.709681, 38.675194, 21.615564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.933386, 38.617935, 21.550167>,  <24.306229, 38.522503, 21.441170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.933386, 38.617935, 21.550167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112453, -0.524539, 0.843927,
		0.344278, 0.817275, 0.462099,
		-0.932109, 0.238581, 0.272492,
		23.653753, 38.689510, 21.631914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274967, 38.600529, 22.160252>,  <24.306229, 38.522503, 21.441170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274967, 38.600529, 22.160252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.900305, 38.506924, 22.056007>,  <23.675508, 38.450760, 21.993462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.900305, 38.506924, 22.056007>,  <24.274967, 38.600529, 22.160252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.900305, 38.506924, 22.056007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025262, -0.696984, 0.716641,
		-0.349343, 0.677829, 0.646922,
		-0.936654, -0.234011, -0.260610,
		23.619308, 38.436722, 21.977825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872814, 38.675179, 22.771547>,  <24.274967, 38.600529, 22.160252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872814, 38.675179, 22.771547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.684881, 38.419731, 22.527767>,  <23.572121, 38.266464, 22.381498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.684881, 38.419731, 22.527767>,  <23.872814, 38.675179, 22.771547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.684881, 38.419731, 22.527767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053531, -0.709735, 0.702431,
		-0.881131, 0.297400, 0.367643,
		-0.469832, -0.638614, -0.609450,
		23.543932, 38.228146, 22.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482521, 38.266052, 23.249401>,  <23.872814, 38.675179, 22.771547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482521, 38.266052, 23.249401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514145, 38.036949, 22.923038>,  <23.533119, 37.899487, 22.727221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514145, 38.036949, 22.923038>,  <23.482521, 38.266052, 23.249401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.514145, 38.036949, 22.923038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020422, -0.817366, 0.575757,
		-0.996661, -0.062181, -0.052924,
		0.079059, -0.572753, -0.815906,
		23.537863, 37.865124, 22.678267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932154, 37.687138, 23.317162>,  <23.482521, 38.266052, 23.249401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932154, 37.687138, 23.317162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.174540, 37.567078, 23.022484>,  <23.319971, 37.495041, 22.845676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.174540, 37.567078, 23.022484>,  <22.932154, 37.687138, 23.317162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.174540, 37.567078, 23.022484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006012, -0.927788, 0.373060,
		-0.795470, -0.221631, -0.564010,
		0.605963, -0.300148, -0.736695,
		23.356329, 37.477032, 22.801476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.607248, 37.070316, 23.092583>,  <22.932154, 37.687138, 23.317162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.607248, 37.070316, 23.092583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985289, 37.067013, 22.961910>,  <23.212112, 37.065029, 22.883507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985289, 37.067013, 22.961910>,  <22.607248, 37.070316, 23.092583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985289, 37.067013, 22.961910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086107, -0.958056, 0.273338,
		-0.315237, -0.286461, -0.904746,
		0.945099, -0.008261, -0.326681,
		23.268818, 37.064533, 22.863907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.606236, 36.395321, 22.817953>,  <22.607248, 37.070316, 23.092583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.606236, 36.395321, 22.817953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989702, 36.500427, 22.861607>,  <23.219782, 36.563492, 22.887798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989702, 36.500427, 22.861607>,  <22.606236, 36.395321, 22.817953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989702, 36.500427, 22.861607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191873, -0.880259, 0.433968,
		0.210101, -0.395091, -0.894293,
		0.958667, 0.262768, 0.109136,
		23.277302, 36.579258, 22.894348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.719807, 36.027336, 22.170973>,  <22.606236, 36.395321, 22.817953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.719807, 36.027336, 22.170973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.329636, 36.019020, 22.083237>,  <22.095533, 36.014030, 22.030594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.329636, 36.019020, 22.083237>,  <22.719807, 36.027336, 22.170973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329636, 36.019020, 22.083237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211155, 0.196001, -0.957600,
		0.062900, -0.980384, -0.186794,
		-0.975427, -0.020791, -0.219341,
		22.037008, 36.012783, 22.017435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670942, 35.585648, 21.549374>,  <22.719807, 36.027336, 22.170973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670942, 35.585648, 21.549374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315847, 35.768333, 21.526276>,  <22.102791, 35.877945, 21.512417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315847, 35.768333, 21.526276>,  <22.670942, 35.585648, 21.549374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.315847, 35.768333, 21.526276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085120, 0.039574, -0.995585,
		-0.452409, -0.888735, -0.074006,
		-0.887739, 0.456711, -0.057745,
		22.049526, 35.905346, 21.508951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.237131, 35.168465, 21.089165>,  <22.670942, 35.585648, 21.549374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.237131, 35.168465, 21.089165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122997, 35.551815, 21.085091>,  <22.054518, 35.781826, 21.082647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122997, 35.551815, 21.085091>,  <22.237131, 35.168465, 21.089165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122997, 35.551815, 21.085091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115845, 0.023939, -0.992979,
		-0.951402, -0.284509, -0.117854,
		-0.285333, 0.958374, -0.010184,
		22.037397, 35.839329, 21.082035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745384, 35.300961, 20.417482>,  <22.237131, 35.168465, 21.089165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745384, 35.300961, 20.417482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865942, 35.669697, 20.514946>,  <21.938276, 35.890938, 20.573423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865942, 35.669697, 20.514946>,  <21.745384, 35.300961, 20.417482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865942, 35.669697, 20.514946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104343, 0.222121, -0.969420,
		-0.947773, 0.317603, -0.029241,
		0.301396, 0.921841, 0.243659,
		21.956360, 35.946251, 20.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378273, 35.725609, 19.963249>,  <21.745384, 35.300961, 20.417482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378273, 35.725609, 19.963249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.670179, 35.966793, 20.092171>,  <21.845324, 36.111504, 20.169523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.670179, 35.966793, 20.092171>,  <21.378273, 35.725609, 19.963249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.670179, 35.966793, 20.092171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206462, 0.255053, -0.944628,
		-0.651777, 0.755902, 0.061641,
		0.729767, 0.602960, 0.322302,
		21.889109, 36.147682, 20.188862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161392, 36.539074, 19.807083>,  <21.378273, 35.725609, 19.963249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161392, 36.539074, 19.807083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553156, 36.480019, 19.862156>,  <21.788214, 36.444584, 19.895199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553156, 36.480019, 19.862156>,  <21.161392, 36.539074, 19.807083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553156, 36.480019, 19.862156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179947, 0.329360, -0.926899,
		0.091501, 0.932590, 0.349146,
		0.979411, -0.147640, 0.137681,
		21.846979, 36.435726, 19.903460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412432, 37.175472, 19.463682>,  <21.161392, 36.539074, 19.807083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412432, 37.175472, 19.463682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714920, 36.915512, 19.494049>,  <21.896412, 36.759537, 19.512268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714920, 36.915512, 19.494049>,  <21.412432, 37.175472, 19.463682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714920, 36.915512, 19.494049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379665, 0.341335, -0.859851,
		0.532905, 0.679058, 0.504869,
		0.756219, -0.649900, 0.075916,
		21.941786, 36.720543, 19.516825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011093, 37.535744, 19.348974>,  <21.412432, 37.175472, 19.463682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011093, 37.535744, 19.348974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130497, 37.160275, 19.279945>,  <22.202139, 36.934994, 19.238527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130497, 37.160275, 19.279945>,  <22.011093, 37.535744, 19.348974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130497, 37.160275, 19.279945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531460, 0.313673, -0.786867,
		0.792744, 0.143170, 0.592502,
		0.298508, -0.938675, -0.172573,
		22.220049, 36.878674, 19.228174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647297, 37.633896, 19.280380>,  <22.011093, 37.535744, 19.348974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647297, 37.633896, 19.280380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.556547, 37.277962, 19.122028>,  <22.502098, 37.064400, 19.027018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.556547, 37.277962, 19.122028>,  <22.647297, 37.633896, 19.280380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.556547, 37.277962, 19.122028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359531, 0.301247, -0.883169,
		0.905133, -0.342699, 0.251578,
		-0.226874, -0.889836, -0.395880,
		22.488485, 37.011009, 19.003263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340834, 37.386364, 19.140417>,  <22.647297, 37.633896, 19.280380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340834, 37.386364, 19.140417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104481, 37.157864, 18.912548>,  <22.962669, 37.020763, 18.775826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104481, 37.157864, 18.912548>,  <23.340834, 37.386364, 19.140417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104481, 37.157864, 18.912548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488270, 0.308894, -0.816197,
		0.642222, -0.760432, 0.096404,
		-0.590884, -0.571251, -0.569674,
		22.927216, 36.986488, 18.741646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824228, 37.009796, 18.649786>,  <23.340834, 37.386364, 19.140417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824228, 37.009796, 18.649786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.462400, 37.017864, 18.479446>,  <23.245304, 37.022705, 18.377243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.462400, 37.017864, 18.479446>,  <23.824228, 37.009796, 18.649786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.462400, 37.017864, 18.479446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418228, 0.235772, -0.877210,
		0.082708, -0.971599, -0.221708,
		-0.904569, 0.020173, -0.425850,
		23.191031, 37.023918, 18.351692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.700817, 36.426350, 18.139906>,  <23.824228, 37.009796, 18.649786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.700817, 36.426350, 18.139906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.471657, 36.744831, 18.062092>,  <23.334160, 36.935921, 18.015404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.471657, 36.744831, 18.062092>,  <23.700817, 36.426350, 18.139906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471657, 36.744831, 18.062092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519699, 0.169343, -0.837398,
		-0.633796, -0.580847, -0.510803,
		-0.572901, 0.796204, -0.194536,
		23.299786, 36.983692, 18.003731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628258, 36.343498, 17.440722>,  <23.700817, 36.426350, 18.139906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628258, 36.343498, 17.440722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.537647, 36.712166, 17.566715>,  <23.483282, 36.933365, 17.642311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.537647, 36.712166, 17.566715>,  <23.628258, 36.343498, 17.440722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.537647, 36.712166, 17.566715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317606, 0.375612, -0.870656,
		-0.920768, -0.097184, -0.377812,
		-0.226525, 0.921668, 0.314985,
		23.469690, 36.988667, 17.661211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663689, 36.681839, 16.821449>,  <23.628258, 36.343498, 17.440722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663689, 36.681839, 16.821449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.633520, 37.001331, 17.060226>,  <23.615419, 37.193027, 17.203493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.633520, 37.001331, 17.060226>,  <23.663689, 36.681839, 16.821449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.633520, 37.001331, 17.060226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254162, 0.594273, -0.763047,
		-0.964216, 0.094171, -0.247828,
		-0.075421, 0.798731, 0.596943,
		23.610893, 37.240952, 17.239309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277548, 37.316494, 16.532618>,  <23.663689, 36.681839, 16.821449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277548, 37.316494, 16.532618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.520227, 37.476112, 16.807625>,  <23.665834, 37.571884, 16.972630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.520227, 37.476112, 16.807625>,  <23.277548, 37.316494, 16.532618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.520227, 37.476112, 16.807625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341943, 0.649765, -0.678882,
		-0.717630, 0.646968, 0.257760,
		0.606698, 0.399047, 0.687517,
		23.702236, 37.595825, 17.013880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377514, 38.095127, 16.415195>,  <23.277548, 37.316494, 16.532618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377514, 38.095127, 16.415195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688784, 37.960762, 16.627460>,  <23.875546, 37.880142, 16.754820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688784, 37.960762, 16.627460>,  <23.377514, 38.095127, 16.415195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688784, 37.960762, 16.627460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626504, 0.474346, -0.618456,
		-0.043970, 0.813731, 0.579576,
		0.778177, -0.335914, 0.530663,
		23.922237, 37.859989, 16.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.777643, 38.686729, 16.409435>,  <23.377514, 38.095127, 16.415195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.777643, 38.686729, 16.409435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.034525, 38.398247, 16.513306>,  <24.188654, 38.225159, 16.575628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.034525, 38.398247, 16.513306>,  <23.777643, 38.686729, 16.409435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.034525, 38.398247, 16.513306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721578, 0.454488, -0.522271,
		0.258645, 0.522783, 0.812281,
		0.642206, -0.721207, 0.259677,
		24.227186, 38.181885, 16.591209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303940, 39.066761, 16.518993>,  <23.777643, 38.686729, 16.409435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303940, 39.066761, 16.518993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456129, 38.701439, 16.460884>,  <24.547443, 38.482246, 16.426020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456129, 38.701439, 16.460884>,  <24.303940, 39.066761, 16.518993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456129, 38.701439, 16.460884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788642, 0.402474, -0.464821,
		0.482994, 0.062285, 0.873406,
		0.380475, -0.913310, -0.145272,
		24.570271, 38.427444, 16.417303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027374, 39.210373, 16.481180>,  <24.303940, 39.066761, 16.518993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027374, 39.210373, 16.481180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.997101, 38.853352, 16.303364>,  <24.978937, 38.639137, 16.196674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.997101, 38.853352, 16.303364>,  <25.027374, 39.210373, 16.481180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997101, 38.853352, 16.303364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753019, 0.241080, -0.612244,
		0.653632, -0.381086, 0.653865,
		-0.075684, -0.892555, -0.444542,
		24.974396, 38.585587, 16.170002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702122, 38.958622, 16.404936>,  <25.027374, 39.210373, 16.481180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702122, 38.958622, 16.404936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.491465, 38.756756, 16.131306>,  <25.365070, 38.635635, 15.967128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.491465, 38.756756, 16.131306>,  <25.702122, 38.958622, 16.404936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491465, 38.756756, 16.131306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726902, 0.149880, -0.670186,
		0.440751, -0.850203, 0.287911,
		-0.526643, -0.504668, -0.684074,
		25.333471, 38.605354, 15.926084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197458, 38.517864, 16.072067>,  <25.702122, 38.958622, 16.404936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197458, 38.517864, 16.072067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.885462, 38.561626, 15.825604>,  <25.698265, 38.587883, 15.677727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.885462, 38.561626, 15.825604>,  <26.197458, 38.517864, 16.072067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885462, 38.561626, 15.825604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621981, 0.027033, -0.782565,
		-0.068959, -0.993630, -0.089132,
		-0.779990, 0.109404, -0.616155,
		25.651464, 38.594448, 15.640758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.975214, 31.867847, 27.904572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369087, 31.804771, 27.874821>,  <27.605412, 31.766926, 27.856970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369087, 31.804771, 27.874821>,  <26.975214, 31.867847, 27.904572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369087, 31.804771, 27.874821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001219, 0.432802, -0.901488,
		0.174346, 0.887590, 0.426365,
		0.984684, -0.157691, -0.074375,
		27.664492, 31.757463, 27.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314203, 32.537361, 27.662382>,  <26.975214, 31.867847, 27.904572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314203, 32.537361, 27.662382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566887, 32.242920, 27.565140>,  <27.718496, 32.066254, 27.506794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566887, 32.242920, 27.565140>,  <27.314203, 32.537361, 27.662382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566887, 32.242920, 27.565140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144087, 0.419627, -0.896188,
		0.761699, 0.531100, 0.371144,
		0.631707, -0.736102, -0.243105,
		27.756399, 32.022091, 27.492208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734892, 32.865654, 27.349148>,  <27.314203, 32.537361, 27.662382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734892, 32.865654, 27.349148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794134, 32.499573, 27.199234>,  <27.829679, 32.279922, 27.109285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794134, 32.499573, 27.199234>,  <27.734892, 32.865654, 27.349148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794134, 32.499573, 27.199234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105564, 0.391430, -0.914133,
		0.983322, 0.095824, 0.154585,
		0.148105, -0.915205, -0.374786,
		27.838566, 32.225010, 27.086798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256712, 32.835449, 26.843779>,  <27.734892, 32.865654, 27.349148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256712, 32.835449, 26.843779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081539, 32.493443, 26.732670>,  <27.976435, 32.288239, 26.666004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081539, 32.493443, 26.732670>,  <28.256712, 32.835449, 26.843779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081539, 32.493443, 26.732670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195693, 0.210905, -0.957718,
		0.877450, -0.473775, 0.074959,
		-0.437934, -0.855018, -0.277773,
		27.950159, 32.236938, 26.649338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767284, 32.448799, 26.375156>,  <28.256712, 32.835449, 26.843779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767284, 32.448799, 26.375156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396997, 32.306889, 26.322727>,  <28.174826, 32.221745, 26.291269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396997, 32.306889, 26.322727>,  <28.767284, 32.448799, 26.375156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396997, 32.306889, 26.322727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078539, 0.158690, -0.984200,
		0.369967, -0.921387, -0.119039,
		-0.925719, -0.354772, -0.131074,
		28.119282, 32.200459, 26.283405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846598, 31.958490, 25.896875>,  <28.767284, 32.448799, 26.375156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846598, 31.958490, 25.896875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451336, 31.998905, 25.850666>,  <28.214180, 32.023155, 25.822941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451336, 31.998905, 25.850666>,  <28.846598, 31.958490, 25.896875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451336, 31.998905, 25.850666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112042, -0.039488, -0.992919,
		-0.104884, -0.994099, 0.027700,
		-0.988153, 0.101038, -0.115523,
		28.154890, 32.029217, 25.816010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666182, 31.544256, 25.345345>,  <28.846598, 31.958490, 25.896875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666182, 31.544256, 25.345345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331572, 31.759701, 25.385597>,  <28.130806, 31.888968, 25.409748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331572, 31.759701, 25.385597>,  <28.666182, 31.544256, 25.345345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331572, 31.759701, 25.385597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067534, 0.080907, -0.994431,
		-0.543754, -0.838661, -0.031306,
		-0.836523, 0.538611, 0.100632,
		28.080614, 31.921284, 25.415787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141340, 31.278311, 25.017214>,  <28.666182, 31.544256, 25.345345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141340, 31.278311, 25.017214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066048, 31.671093, 25.009953>,  <28.020872, 31.906763, 25.005596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066048, 31.671093, 25.009953>,  <28.141340, 31.278311, 25.017214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066048, 31.671093, 25.009953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109255, -0.039303, -0.993237,
		-0.976029, -0.184977, 0.114681,
		-0.188233, 0.981957, -0.018151,
		28.009579, 31.965679, 25.004507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587008, 31.331703, 24.512192>,  <28.141340, 31.278311, 25.017214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587008, 31.331703, 24.512192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748518, 31.694977, 24.556309>,  <27.845425, 31.912941, 24.582779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748518, 31.694977, 24.556309>,  <27.587008, 31.331703, 24.512192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748518, 31.694977, 24.556309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057458, 0.145495, -0.987689,
		-0.913051, 0.392470, 0.110930,
		0.403778, 0.908184, 0.110294,
		27.869652, 31.967432, 24.589397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160587, 31.769249, 24.063076>,  <27.587008, 31.331703, 24.512192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160587, 31.769249, 24.063076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496292, 31.972355, 24.140865>,  <27.697714, 32.094219, 24.187538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496292, 31.972355, 24.140865>,  <27.160587, 31.769249, 24.063076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496292, 31.972355, 24.140865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044654, 0.420822, -0.906044,
		-0.541894, 0.751722, 0.375852,
		0.839260, 0.507763, 0.194473,
		27.748070, 32.124683, 24.199207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002178, 32.438110, 23.840267>,  <27.160587, 31.769249, 24.063076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002178, 32.438110, 23.840267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398684, 32.385540, 23.835793>,  <27.636587, 32.353996, 23.833107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398684, 32.385540, 23.835793>,  <27.002178, 32.438110, 23.840267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398684, 32.385540, 23.835793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029218, 0.301495, -0.953020,
		0.128628, 0.944366, 0.302701,
		0.991262, -0.131429, -0.011188,
		27.696062, 32.346111, 23.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095024, 32.931812, 23.501417>,  <27.002178, 32.438110, 23.840267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095024, 32.931812, 23.501417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459558, 32.767860, 23.486107>,  <27.678280, 32.669491, 23.476921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459558, 32.767860, 23.486107>,  <27.095024, 32.931812, 23.501417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459558, 32.767860, 23.486107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081695, 0.271199, -0.959050,
		0.403476, 0.870890, 0.280638,
		0.911336, -0.409881, -0.038275,
		27.732960, 32.644897, 23.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471479, 33.388401, 23.045380>,  <27.095024, 32.931812, 23.501417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471479, 33.388401, 23.045380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625578, 33.019901, 23.066856>,  <27.718037, 32.798801, 23.079742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625578, 33.019901, 23.066856>,  <27.471479, 33.388401, 23.045380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625578, 33.019901, 23.066856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338161, 0.086797, -0.937077,
		0.858623, 0.379160, 0.344969,
		0.385245, -0.921251, 0.053691,
		27.741152, 32.743526, 23.082964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227491, 33.373989, 23.104427>,  <27.471479, 33.388401, 23.045380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227491, 33.373989, 23.104427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082403, 33.055222, 22.911201>,  <27.995350, 32.863960, 22.795267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082403, 33.055222, 22.911201>,  <28.227491, 33.373989, 23.104427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082403, 33.055222, 22.911201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547169, 0.237475, -0.802628,
		0.754346, -0.555448, 0.349912,
		-0.362723, -0.796921, -0.483063,
		27.973587, 32.816147, 22.766283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921146, 34.031219, 23.074070>,  <28.227491, 33.373989, 23.104427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921146, 34.031219, 23.074070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835966, 34.422043, 23.074364>,  <27.784859, 34.656536, 23.074539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835966, 34.422043, 23.074364>,  <27.921146, 34.031219, 23.074070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835966, 34.422043, 23.074364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408519, 0.088353, 0.908464,
		0.887561, 0.193757, -0.417963,
		-0.212949, 0.977063, 0.000735,
		27.772081, 34.715160, 23.074585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528419, 34.161453, 23.340677>,  <27.921146, 34.031219, 23.074070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528419, 34.161453, 23.340677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248526, 34.443409, 23.387154>,  <28.080589, 34.612583, 23.415039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248526, 34.443409, 23.387154>,  <28.528419, 34.161453, 23.340677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248526, 34.443409, 23.387154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292791, 0.134607, 0.946654,
		0.651649, 0.696425, -0.300575,
		-0.699733, 0.704892, 0.116191,
		28.038605, 34.654877, 23.422010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895573, 34.698700, 23.637033>,  <28.528419, 34.161453, 23.340677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895573, 34.698700, 23.637033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507347, 34.731964, 23.727448>,  <28.274412, 34.751923, 23.781696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507347, 34.731964, 23.727448>,  <28.895573, 34.698700, 23.637033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507347, 34.731964, 23.727448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240837, 0.325898, 0.914214,
		0.002362, 0.941740, -0.336333,
		-0.970563, 0.083161, 0.226036,
		28.216179, 34.756912, 23.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848326, 35.411591, 23.882809>,  <28.895573, 34.698700, 23.637033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848326, 35.411591, 23.882809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539980, 35.193764, 24.014999>,  <28.354973, 35.063068, 24.094315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539980, 35.193764, 24.014999>,  <28.848326, 35.411591, 23.882809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539980, 35.193764, 24.014999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258249, 0.207083, 0.943623,
		-0.582301, 0.812751, -0.018999,
		-0.770865, -0.544566, 0.330477,
		28.308720, 35.030396, 24.114143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779495, 35.726509, 24.530207>,  <28.848326, 35.411591, 23.882809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779495, 35.726509, 24.530207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535072, 35.411518, 24.562428>,  <28.388418, 35.222523, 24.581760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535072, 35.411518, 24.562428>,  <28.779495, 35.726509, 24.530207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535072, 35.411518, 24.562428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029297, 0.124190, 0.991826,
		-0.791044, 0.603703, -0.098958,
		-0.611058, -0.787477, 0.080553,
		28.351755, 35.175274, 24.586594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281925, 35.879028, 25.082573>,  <28.779495, 35.726509, 24.530207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281925, 35.879028, 25.082573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256340, 35.480583, 25.058323>,  <28.240990, 35.241516, 25.043774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256340, 35.480583, 25.058323>,  <28.281925, 35.879028, 25.082573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256340, 35.480583, 25.058323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062444, -0.064626, 0.995954,
		-0.995997, 0.059918, 0.066335,
		-0.063962, -0.996109, -0.060626,
		28.237152, 35.181751, 25.040134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860443, 35.700787, 25.627632>,  <28.281925, 35.879028, 25.082573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860443, 35.700787, 25.627632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082651, 35.384033, 25.526192>,  <28.215977, 35.193981, 25.465328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082651, 35.384033, 25.526192>,  <27.860443, 35.700787, 25.627632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082651, 35.384033, 25.526192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162828, -0.195484, 0.967095,
		-0.815403, -0.578536, 0.020346,
		0.555522, -0.791885, -0.253600,
		28.249308, 35.146469, 25.450111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578320, 35.222546, 25.978333>,  <27.860443, 35.700787, 25.627632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578320, 35.222546, 25.978333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939451, 35.077179, 25.886398>,  <28.156130, 34.989960, 25.831238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939451, 35.077179, 25.886398>,  <27.578320, 35.222546, 25.978333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939451, 35.077179, 25.886398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092235, -0.358387, 0.929006,
		-0.419991, -0.859932, -0.290042,
		0.902829, -0.363422, -0.229835,
		28.210300, 34.968155, 25.817448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580320, 34.537861, 26.180212>,  <27.578320, 35.222546, 25.978333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580320, 34.537861, 26.180212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968113, 34.635780, 26.174862>,  <28.200788, 34.694534, 26.171652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968113, 34.635780, 26.174862>,  <27.580320, 34.537861, 26.180212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968113, 34.635780, 26.174862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092366, -0.314174, 0.944862,
		0.227102, -0.917261, -0.327198,
		0.969481, 0.244802, -0.013374,
		28.258957, 34.709221, 26.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951239, 33.961926, 26.552761>,  <27.580320, 34.537861, 26.180212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951239, 33.961926, 26.552761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189863, 34.282906, 26.547253>,  <28.333038, 34.475494, 26.543947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189863, 34.282906, 26.547253>,  <27.951239, 33.961926, 26.552761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189863, 34.282906, 26.547253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219366, -0.146531, 0.964576,
		0.772006, -0.578450, -0.263445,
		0.596562, 0.802449, -0.013769,
		28.368832, 34.523640, 26.543121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571039, 33.695854, 26.867149>,  <27.951239, 33.961926, 26.552761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571039, 33.695854, 26.867149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555668, 34.095509, 26.873524>,  <28.546446, 34.335300, 26.877348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555668, 34.095509, 26.873524>,  <28.571039, 33.695854, 26.867149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555668, 34.095509, 26.873524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074354, -0.013044, 0.997147,
		0.996491, 0.039503, -0.073789,
		-0.038428, 0.999134, 0.015935,
		28.544140, 34.395248, 26.878304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117781, 33.849239, 27.295652>,  <28.571039, 33.695854, 26.867149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117781, 33.849239, 27.295652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889790, 34.177792, 27.304180>,  <28.752995, 34.374924, 27.309298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889790, 34.177792, 27.304180>,  <29.117781, 33.849239, 27.295652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889790, 34.177792, 27.304180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171312, 0.093421, 0.980778,
		0.803604, 0.562672, -0.193961,
		-0.569976, 0.821384, 0.021320,
		28.718796, 34.424206, 27.310575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527597, 34.405624, 27.562101>,  <29.117781, 33.849239, 27.295652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527597, 34.405624, 27.562101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135454, 34.475552, 27.598633>,  <28.900169, 34.517506, 27.620552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135454, 34.475552, 27.598633>,  <29.527597, 34.405624, 27.562101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135454, 34.475552, 27.598633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119330, 0.157039, 0.980357,
		0.157039, 0.971997, -0.174815,
		-0.980357, 0.174815, 0.091327,
		28.841347, 34.527996, 27.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499727, 35.076237, 27.993372>,  <29.527597, 34.405624, 27.562101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499727, 35.076237, 27.993372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163685, 34.861298, 28.022976>,  <28.962059, 34.732334, 28.040737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163685, 34.861298, 28.022976>,  <29.499727, 35.076237, 27.993372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163685, 34.861298, 28.022976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005184, 0.128481, 0.991698,
		-0.542395, 0.833517, -0.105153,
		-0.840108, -0.537347, 0.074009,
		28.911652, 34.700092, 28.045179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483232, 35.849529, 28.197863>,  <29.499727, 35.076237, 27.993372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483232, 35.849529, 28.197863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819094, 36.035583, 28.310032>,  <30.020611, 36.147217, 28.377333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819094, 36.035583, 28.310032>,  <29.483232, 35.849529, 28.197863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819094, 36.035583, 28.310032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031701, 0.473460, -0.880245,
		-0.542198, 0.747989, 0.382796,
		0.839652, 0.465132, 0.280422,
		30.070990, 36.175121, 28.394159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432543, 36.557137, 27.887945>,  <29.483232, 35.849529, 28.197863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432543, 36.557137, 27.887945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815514, 36.496220, 27.986038>,  <30.045296, 36.459671, 28.044895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815514, 36.496220, 27.986038>,  <29.432543, 36.557137, 27.887945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815514, 36.496220, 27.986038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282044, 0.312488, -0.907085,
		0.061506, 0.937635, 0.342137,
		0.957428, -0.152289, 0.245235,
		30.102741, 36.450531, 28.059608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787846, 37.226799, 27.699581>,  <29.432543, 36.557137, 27.887945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787846, 37.226799, 27.699581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055958, 36.930691, 27.720448>,  <30.216825, 36.753025, 27.732967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055958, 36.930691, 27.720448>,  <29.787846, 37.226799, 27.699581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055958, 36.930691, 27.720448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442848, 0.342590, -0.828564,
		0.595489, 0.578473, 0.557459,
		0.670282, -0.740270, 0.052167,
		30.257042, 36.708611, 27.736097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422493, 37.547470, 27.612394>,  <29.787846, 37.226799, 27.699581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422493, 37.547470, 27.612394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474331, 37.164749, 27.508289>,  <30.505434, 36.935116, 27.445827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474331, 37.164749, 27.508289>,  <30.422493, 37.547470, 27.612394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474331, 37.164749, 27.508289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310576, 0.288435, -0.905730,
		0.941673, 0.036545, 0.334539,
		0.129593, -0.956802, -0.260261,
		30.513208, 36.877708, 27.430210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126905, 37.583626, 27.277355>,  <30.422493, 37.547470, 27.612394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126905, 37.583626, 27.277355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968336, 37.234261, 27.164223>,  <30.873196, 37.024639, 27.096344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968336, 37.234261, 27.164223>,  <31.126905, 37.583626, 27.277355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968336, 37.234261, 27.164223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482186, 0.064078, -0.873722,
		0.781247, -0.482739, 0.395748,
		-0.396421, -0.873417, -0.282831,
		30.849409, 36.972237, 27.079374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647856, 37.228558, 27.067421>,  <31.126905, 37.583626, 27.277355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647856, 37.228558, 27.067421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325672, 37.092129, 26.873554>,  <31.132362, 37.010269, 26.757235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325672, 37.092129, 26.873554>,  <31.647856, 37.228558, 27.067421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325672, 37.092129, 26.873554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475771, 0.115494, -0.871954,
		0.353377, -0.932914, 0.069248,
		-0.805461, -0.341074, -0.484666,
		31.084034, 36.989807, 26.728155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913908, 36.831890, 26.508953>,  <31.647856, 37.228558, 27.067421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913908, 36.831890, 26.508953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522844, 36.857578, 26.428898>,  <31.288206, 36.872993, 26.380865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522844, 36.857578, 26.428898>,  <31.913908, 36.831890, 26.508953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522844, 36.857578, 26.428898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204300, 0.066554, -0.976643,
		-0.049404, -0.995714, -0.078188,
		-0.977661, 0.064224, -0.200136,
		31.229546, 36.876846, 26.368856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903931, 36.493214, 25.898567>,  <31.913908, 36.831890, 26.508953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903931, 36.493214, 25.898567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551208, 36.681847, 25.900887>,  <31.339575, 36.795025, 25.902279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551208, 36.681847, 25.900887>,  <31.903931, 36.493214, 25.898567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551208, 36.681847, 25.900887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015118, 0.040552, -0.999063,
		-0.471375, -0.880889, -0.042889,
		-0.881803, 0.471582, 0.005798,
		31.286667, 36.823322, 25.902626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619642, 36.149624, 25.328014>,  <31.903931, 36.493214, 25.898567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619642, 36.149624, 25.328014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449137, 36.505169, 25.395210>,  <31.346834, 36.718494, 25.435528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449137, 36.505169, 25.395210>,  <31.619642, 36.149624, 25.328014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449137, 36.505169, 25.395210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095278, 0.228790, -0.968802,
		-0.899568, -0.396959, -0.182214,
		-0.426263, 0.888864, 0.167991,
		31.321259, 36.771828, 25.445608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117319, 36.261086, 24.818720>,  <31.619642, 36.149624, 25.328014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117319, 36.261086, 24.818720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212572, 36.633446, 24.929512>,  <31.269724, 36.856861, 24.995987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212572, 36.633446, 24.929512>,  <31.117319, 36.261086, 24.818720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212572, 36.633446, 24.929512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142355, 0.248649, -0.958075,
		-0.960744, 0.267577, -0.073308,
		0.238131, 0.930901, 0.276979,
		31.284012, 36.912716, 25.012606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725895, 36.687504, 24.409458>,  <31.117319, 36.261086, 24.818720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725895, 36.687504, 24.409458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033255, 36.900394, 24.551609>,  <31.217670, 37.028130, 24.636900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033255, 36.900394, 24.551609>,  <30.725895, 36.687504, 24.409458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033255, 36.900394, 24.551609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009889, 0.545364, -0.838141,
		-0.639894, 0.647542, 0.413794,
		0.768399, 0.532230, 0.355379,
		31.263775, 37.060062, 24.658222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587858, 37.311562, 24.089260>,  <30.725895, 36.687504, 24.409458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587858, 37.311562, 24.089260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977608, 37.316853, 24.179081>,  <31.211456, 37.320026, 24.232973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977608, 37.316853, 24.179081>,  <30.587858, 37.311562, 24.089260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977608, 37.316853, 24.179081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205284, 0.355808, -0.911734,
		-0.091961, 0.934465, 0.343973,
		0.974372, 0.013232, 0.224552,
		31.269920, 37.320824, 24.246447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.833199, 35.860634, 32.157333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.227276, 35.837093, 32.092922>,  <30.463722, 35.822968, 32.054276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.227276, 35.837093, 32.092922>,  <29.833199, 35.860634, 32.157333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227276, 35.837093, 32.092922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116752, 0.457481, -0.881521,
		0.125544, 0.887270, 0.443837,
		0.985194, -0.058851, -0.161024,
		30.522835, 35.819439, 32.044617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175629, 36.588783, 32.006870>,  <29.833199, 35.860634, 32.157333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175629, 36.588783, 32.006870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385155, 36.289295, 31.844376>,  <30.510870, 36.109600, 31.746880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385155, 36.289295, 31.844376>,  <30.175629, 36.588783, 32.006870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385155, 36.289295, 31.844376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108866, 0.414145, -0.903677,
		0.844846, 0.517586, 0.135425,
		0.523816, -0.748724, -0.406236,
		30.542299, 36.064678, 31.722506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513802, 36.933197, 31.446363>,  <30.175629, 36.588783, 32.006870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513802, 36.933197, 31.446363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.576147, 36.544704, 31.374355>,  <30.613554, 36.311607, 31.331150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.576147, 36.544704, 31.374355>,  <30.513802, 36.933197, 31.446363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576147, 36.544704, 31.374355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086934, 0.168053, -0.981937,
		0.983945, 0.168700, -0.058239,
		0.155865, -0.971235, -0.180021,
		30.622908, 36.253334, 31.320349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845636, 37.061565, 30.883064>,  <30.513802, 36.933197, 31.446363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845636, 37.061565, 30.883064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732347, 36.677990, 30.877014>,  <30.664373, 36.447845, 30.873384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732347, 36.677990, 30.877014>,  <30.845636, 37.061565, 30.883064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732347, 36.677990, 30.877014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098792, 0.044861, -0.994096,
		0.953952, -0.280057, -0.107441,
		-0.283224, -0.958935, -0.015128,
		30.647381, 36.390308, 30.872477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202480, 36.797291, 30.298824>,  <30.845636, 37.061565, 30.883064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202480, 36.797291, 30.298824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923771, 36.518757, 30.367668>,  <30.756544, 36.351635, 30.408974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923771, 36.518757, 30.367668>,  <31.202480, 36.797291, 30.298824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923771, 36.518757, 30.367668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181975, -0.060487, -0.981441,
		0.693823, -0.715163, -0.084570,
		-0.696775, -0.696335, 0.172109,
		30.714739, 36.309856, 30.419300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396605, 36.241798, 29.787060>,  <31.202480, 36.797291, 30.298824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396605, 36.241798, 29.787060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.016930, 36.188599, 29.901150>,  <30.789124, 36.156681, 29.969604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.016930, 36.188599, 29.901150>,  <31.396605, 36.241798, 29.787060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016930, 36.188599, 29.901150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270674, -0.117374, -0.955489,
		0.160554, -0.984142, 0.075411,
		-0.949188, -0.132996, 0.285226,
		30.732174, 36.148701, 29.986717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184696, 35.605042, 29.600958>,  <31.396605, 36.241798, 29.787060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184696, 35.605042, 29.600958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866478, 35.847012, 29.614662>,  <30.675547, 35.992191, 29.622885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866478, 35.847012, 29.614662>,  <31.184696, 35.605042, 29.600958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866478, 35.847012, 29.614662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225401, -0.242992, -0.943477,
		-0.562405, -0.758304, 0.329662,
		-0.795547, 0.604922, 0.034262,
		30.627813, 36.028488, 29.624941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711943, 35.220009, 29.193867>,  <31.184696, 35.605042, 29.600958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711943, 35.220009, 29.193867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567751, 35.592934, 29.205505>,  <30.481236, 35.816689, 29.212488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567751, 35.592934, 29.205505>,  <30.711943, 35.220009, 29.193867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567751, 35.592934, 29.205505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086054, -0.002180, -0.996288,
		-0.928790, -0.361644, 0.081015,
		-0.360478, 0.932314, 0.029096,
		30.459608, 35.872627, 29.214233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154644, 35.235744, 28.691238>,  <30.711943, 35.220009, 29.193867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154644, 35.235744, 28.691238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237730, 35.620274, 28.763577>,  <30.287580, 35.850990, 28.806980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237730, 35.620274, 28.763577>,  <30.154644, 35.235744, 28.691238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237730, 35.620274, 28.763577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201553, 0.222972, -0.953761,
		-0.957200, 0.161659, 0.240073,
		0.207714, 0.961327, 0.180846,
		30.300045, 35.908672, 28.817831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303108, 35.237720, 28.653011>,  <30.154644, 35.235744, 28.691238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303108, 35.237720, 28.653011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.066874, 34.921585, 28.587799>,  <28.925133, 34.731903, 28.548672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.066874, 34.921585, 28.587799>,  <29.303108, 35.237720, 28.653011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066874, 34.921585, 28.587799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046442, -0.168403, 0.984624,
		-0.805638, 0.589076, 0.062751,
		-0.590585, -0.790336, -0.163030,
		28.889698, 34.684483, 28.538891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754230, 35.217373, 29.144915>,  <29.303108, 35.237720, 28.653011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754230, 35.217373, 29.144915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.760954, 34.837280, 29.020473>,  <28.764988, 34.609226, 28.945808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.760954, 34.837280, 29.020473>,  <28.754230, 35.217373, 29.144915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760954, 34.837280, 29.020473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244237, -0.305623, 0.920295,
		-0.969570, 0.060516, -0.237217,
		0.016806, -0.950228, -0.311103,
		28.765995, 34.552212, 28.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091461, 34.805153, 29.431828>,  <28.754230, 35.217373, 29.144915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091461, 34.805153, 29.431828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.367088, 34.528732, 29.344532>,  <28.532465, 34.362881, 29.292154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.367088, 34.528732, 29.344532>,  <28.091461, 34.805153, 29.431828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367088, 34.528732, 29.344532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028810, -0.327027, 0.944576,
		-0.724125, -0.644589, -0.245252,
		0.689067, -0.691056, -0.218238,
		28.573809, 34.321415, 29.279060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786219, 34.120766, 29.408319>,  <28.091461, 34.805153, 29.431828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786219, 34.120766, 29.408319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.179560, 34.063343, 29.452873>,  <28.415565, 34.028889, 29.479607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.179560, 34.063343, 29.452873>,  <27.786219, 34.120766, 29.408319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179560, 34.063343, 29.452873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173170, -0.554817, 0.813751,
		-0.055021, -0.819494, -0.570441,
		0.983354, -0.143557, 0.111385,
		28.474566, 34.020275, 29.486288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836027, 33.449631, 29.739084>,  <27.786219, 34.120766, 29.408319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836027, 33.449631, 29.739084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.181061, 33.631836, 29.827133>,  <28.388081, 33.741161, 29.879963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.181061, 33.631836, 29.827133>,  <27.836027, 33.449631, 29.739084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181061, 33.631836, 29.827133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036314, -0.489724, 0.871121,
		0.504609, -0.743422, -0.438970,
		0.862584, 0.455516, 0.220122,
		28.439837, 33.768490, 29.893169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268742, 32.968182, 30.121338>,  <27.836027, 33.449631, 29.739084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268742, 32.968182, 30.121338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.447205, 33.316441, 30.204205>,  <28.554281, 33.525394, 30.253925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.447205, 33.316441, 30.204205>,  <28.268742, 32.968182, 30.121338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447205, 33.316441, 30.204205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248253, -0.342797, 0.906014,
		0.859835, -0.352793, -0.369081,
		0.446155, 0.870648, 0.207167,
		28.581051, 33.577637, 30.266356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943388, 32.809597, 30.501085>,  <28.268742, 32.968182, 30.121338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943388, 32.809597, 30.501085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.849455, 33.190819, 30.577545>,  <28.793095, 33.419552, 30.623421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.849455, 33.190819, 30.577545>,  <28.943388, 32.809597, 30.501085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849455, 33.190819, 30.577545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017089, -0.192572, 0.981134,
		0.971885, 0.233671, 0.028936,
		-0.234835, 0.953055, 0.191151,
		28.779005, 33.476734, 30.634892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438740, 33.125751, 31.034595>,  <28.943388, 32.809597, 30.501085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438740, 33.125751, 31.034595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092148, 33.325340, 31.040768>,  <28.884193, 33.445095, 31.044470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092148, 33.325340, 31.040768>,  <29.438740, 33.125751, 31.034595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092148, 33.325340, 31.040768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038562, -0.097715, 0.994467,
		0.497723, 0.861090, 0.103910,
		-0.866479, 0.498976, 0.015429,
		28.832205, 33.475033, 31.045397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485420, 33.428326, 31.616718>,  <29.438740, 33.125751, 31.034595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485420, 33.428326, 31.616718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096029, 33.473740, 31.537266>,  <28.862394, 33.500988, 31.489594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096029, 33.473740, 31.537266>,  <29.485420, 33.428326, 31.616718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096029, 33.473740, 31.537266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207673, -0.074197, 0.975380,
		0.095998, 0.990760, 0.095806,
		-0.973476, 0.113531, -0.198632,
		28.803986, 33.507797, 31.477676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229780, 33.780895, 32.200459>,  <29.485420, 33.428326, 31.616718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229780, 33.780895, 32.200459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.890257, 33.656200, 32.029652>,  <28.686543, 33.581383, 31.927168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.890257, 33.656200, 32.029652>,  <29.229780, 33.780895, 32.200459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890257, 33.656200, 32.029652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427161, -0.071566, 0.901339,
		-0.311543, 0.947469, -0.072418,
		-0.848807, -0.311740, -0.427018,
		28.635614, 33.562679, 31.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660702, 34.116554, 32.614460>,  <29.229780, 33.780895, 32.200459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660702, 34.116554, 32.614460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.540749, 33.781029, 32.432709>,  <28.468777, 33.579712, 32.323658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.540749, 33.781029, 32.432709>,  <28.660702, 34.116554, 32.614460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540749, 33.781029, 32.432709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650364, -0.168692, 0.740655,
		-0.697923, 0.517621, -0.494947,
		-0.299885, -0.838816, -0.454375,
		28.450783, 33.529385, 32.296394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948685, 34.201054, 32.715240>,  <28.660702, 34.116554, 32.614460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948685, 34.201054, 32.715240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.058514, 33.822571, 32.646774>,  <28.124411, 33.595482, 32.605694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.058514, 33.822571, 32.646774>,  <27.948685, 34.201054, 32.715240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058514, 33.822571, 32.646774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431327, -0.280290, 0.857551,
		-0.859399, -0.161631, -0.485085,
		0.274572, -0.946209, -0.171165,
		28.140884, 33.538708, 32.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337389, 33.816586, 32.808857>,  <27.948685, 34.201054, 32.715240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337389, 33.816586, 32.808857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.623533, 33.541424, 32.857918>,  <27.795219, 33.376328, 32.887356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.623533, 33.541424, 32.857918>,  <27.337389, 33.816586, 32.808857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623533, 33.541424, 32.857918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492995, -0.372477, 0.786268,
		-0.495194, -0.622931, -0.605590,
		0.715359, -0.687908, 0.122654,
		27.838140, 33.335052, 32.894714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047400, 33.130596, 33.082676>,  <27.337389, 33.816586, 32.808857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047400, 33.130596, 33.082676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.436119, 33.143665, 33.176086>,  <27.669352, 33.151508, 33.232132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.436119, 33.143665, 33.176086>,  <27.047400, 33.130596, 33.082676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436119, 33.143665, 33.176086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179190, -0.541431, 0.821428,
		0.153281, -0.840110, -0.520307,
		0.971800, 0.032676, 0.233530,
		27.727659, 33.153469, 33.246147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.649693, 29.492846, 33.089249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417786, 29.817848, 33.113564>,  <34.278641, 30.012850, 33.128155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417786, 29.817848, 33.113564>,  <34.649693, 29.492846, 33.089249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417786, 29.817848, 33.113564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179182, -0.054363, -0.982313,
		-0.794833, -0.580408, 0.177106,
		-0.579771, 0.812509, 0.060789,
		34.243855, 30.061602, 33.131802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052135, 29.507698, 32.529396>,  <34.649693, 29.492846, 33.089249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052135, 29.507698, 32.529396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096863, 29.894222, 32.622124>,  <34.123699, 30.126137, 32.677761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096863, 29.894222, 32.622124>,  <34.052135, 29.507698, 32.529396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096863, 29.894222, 32.622124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189498, 0.249741, -0.949589,
		-0.975493, 0.062254, 0.211040,
		0.111822, 0.966309, 0.231824,
		34.130409, 30.184114, 32.691669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531120, 29.804731, 32.104397>,  <34.052135, 29.507698, 32.529396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531120, 29.804731, 32.104397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773136, 30.104820, 32.211048>,  <33.918346, 30.284874, 32.275040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773136, 30.104820, 32.211048>,  <33.531120, 29.804731, 32.104397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773136, 30.104820, 32.211048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170926, 0.449462, -0.876794,
		-0.777628, 0.484926, 0.400176,
		0.605044, 0.750221, 0.266628,
		33.954651, 30.329887, 32.291035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111786, 30.474035, 31.982639>,  <33.531120, 29.804731, 32.104397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111786, 30.474035, 31.982639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484928, 30.616493, 31.960938>,  <33.708813, 30.701967, 31.947916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484928, 30.616493, 31.960938>,  <33.111786, 30.474035, 31.982639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484928, 30.616493, 31.960938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261014, 0.564372, -0.783171,
		-0.248304, 0.744745, 0.619435,
		0.932854, 0.356146, -0.054253,
		33.764786, 30.723337, 31.944662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036503, 31.097897, 32.006012>,  <33.111786, 30.474035, 31.982639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036503, 31.097897, 32.006012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402328, 31.054626, 31.850124>,  <33.621822, 31.028664, 31.756592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402328, 31.054626, 31.850124>,  <33.036503, 31.097897, 32.006012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402328, 31.054626, 31.850124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321535, 0.390051, -0.862830,
		0.245347, 0.914417, 0.321942,
		0.914560, -0.108177, -0.389715,
		33.676697, 31.022173, 31.733210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116848, 31.651716, 31.597589>,  <33.036503, 31.097897, 32.006012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116848, 31.651716, 31.597589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361732, 31.370106, 31.453621>,  <33.508663, 31.201139, 31.367241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361732, 31.370106, 31.453621>,  <33.116848, 31.651716, 31.597589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361732, 31.370106, 31.453621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151257, 0.342511, -0.927258,
		0.776090, 0.622120, 0.103201,
		0.612214, -0.704026, -0.359920,
		33.545395, 31.158897, 31.345646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492138, 32.042580, 31.071157>,  <33.116848, 31.651716, 31.597589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492138, 32.042580, 31.071157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596153, 31.663639, 30.996433>,  <33.658562, 31.436274, 30.951599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596153, 31.663639, 30.996433>,  <33.492138, 32.042580, 31.071157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596153, 31.663639, 30.996433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000061, 0.193449, -0.981110,
		0.965599, 0.255136, 0.050246,
		0.260036, -0.947356, -0.186809,
		33.674164, 31.379433, 30.940390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066700, 32.050220, 30.603241>,  <33.492138, 32.042580, 31.071157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066700, 32.050220, 30.603241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927711, 31.677006, 30.565933>,  <33.844318, 31.453075, 30.543549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927711, 31.677006, 30.565933>,  <34.066700, 32.050220, 30.603241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927711, 31.677006, 30.565933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201913, 0.022684, -0.979141,
		0.915694, -0.359054, 0.180511,
		-0.347470, -0.933041, -0.093269,
		33.823471, 31.397093, 30.537952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481262, 31.689268, 30.084581>,  <34.066700, 32.050220, 30.603241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481262, 31.689268, 30.084581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113510, 31.531948, 30.087582>,  <33.892860, 31.437555, 30.089382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113510, 31.531948, 30.087582>,  <34.481262, 31.689268, 30.084581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113510, 31.531948, 30.087582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027539, 0.045331, -0.998592,
		0.392408, -0.918291, -0.052508,
		-0.919379, -0.393302, 0.007500,
		33.837696, 31.413958, 30.089832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504734, 31.321495, 29.579769>,  <34.481262, 31.689268, 30.084581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504734, 31.321495, 29.579769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110313, 31.324291, 29.646290>,  <33.873661, 31.325970, 29.686203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110313, 31.324291, 29.646290>,  <34.504734, 31.321495, 29.579769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110313, 31.324291, 29.646290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164442, 0.113853, -0.979794,
		-0.025787, -0.993473, -0.111114,
		-0.986050, 0.006994, 0.166304,
		33.814499, 31.326389, 29.696180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145809, 30.884569, 29.106646>,  <34.504734, 31.321495, 29.579769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145809, 30.884569, 29.106646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862415, 31.142052, 29.222366>,  <33.692379, 31.296541, 29.291800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862415, 31.142052, 29.222366>,  <34.145809, 30.884569, 29.106646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862415, 31.142052, 29.222366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086356, 0.327779, -0.940799,
		-0.700425, -0.691523, -0.176638,
		-0.708483, 0.643705, 0.289302,
		33.649872, 31.335163, 29.309156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594009, 30.672308, 28.703459>,  <34.145809, 30.884569, 29.106646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594009, 30.672308, 28.703459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534485, 31.057327, 28.794106>,  <33.498772, 31.288340, 28.848494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534485, 31.057327, 28.794106>,  <33.594009, 30.672308, 28.703459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534485, 31.057327, 28.794106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024545, 0.232695, -0.972240,
		-0.988562, -0.139114, -0.058252,
		-0.148807, 0.962549, 0.226619,
		33.489841, 31.346092, 28.862091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999783, 30.858547, 28.365929>,  <33.594009, 30.672308, 28.703459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999783, 30.858547, 28.365929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178429, 31.209064, 28.438194>,  <33.285618, 31.419374, 28.481554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178429, 31.209064, 28.438194>,  <32.999783, 30.858547, 28.365929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178429, 31.209064, 28.438194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093585, 0.246567, -0.964597,
		-0.889817, 0.413898, 0.192129,
		0.446618, 0.876295, 0.180665,
		33.312412, 31.471952, 28.492393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620018, 31.357496, 27.999557>,  <32.999783, 30.858547, 28.365929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620018, 31.357496, 27.999557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972576, 31.537422, 28.057266>,  <33.184109, 31.645378, 28.091890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972576, 31.537422, 28.057266>,  <32.620018, 31.357496, 27.999557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972576, 31.537422, 28.057266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017398, 0.336113, -0.941661,
		-0.472066, 0.827462, 0.304073,
		0.881391, 0.449817, 0.144271,
		33.236992, 31.672367, 28.100548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910345, 31.198223, 27.785753>,  <32.620018, 31.357496, 27.999557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910345, 31.198223, 27.785753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859346, 30.810627, 27.701088>,  <31.828747, 30.578070, 27.650290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859346, 30.810627, 27.701088>,  <31.910345, 31.198223, 27.785753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859346, 30.810627, 27.701088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032309, -0.209234, 0.977332,
		-0.991313, 0.131446, -0.004630,
		-0.127498, -0.968991, -0.211663,
		31.821096, 30.519930, 27.637589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260313, 30.923035, 28.091700>,  <31.910345, 31.198223, 27.785753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260313, 30.923035, 28.091700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484819, 30.598026, 28.028717>,  <31.619522, 30.403021, 27.990929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484819, 30.598026, 28.028717>,  <31.260313, 30.923035, 28.091700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484819, 30.598026, 28.028717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023074, -0.205535, 0.978378,
		-0.827315, -0.545496, -0.134107,
		0.561264, -0.812521, -0.157456,
		31.653198, 30.354271, 27.981480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877165, 30.532009, 28.440063>,  <31.260313, 30.923035, 28.091700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877165, 30.532009, 28.440063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237066, 30.360256, 28.408882>,  <31.453007, 30.257204, 28.390173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237066, 30.360256, 28.408882>,  <30.877165, 30.532009, 28.440063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237066, 30.360256, 28.408882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072610, -0.323437, 0.943460,
		-0.430321, -0.843218, -0.322191,
		0.899751, -0.429384, -0.077956,
		31.506992, 30.231441, 28.385496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801109, 29.952703, 28.749161>,  <30.877165, 30.532009, 28.440063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801109, 29.952703, 28.749161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200977, 29.961658, 28.754139>,  <31.440899, 29.967031, 28.757126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200977, 29.961658, 28.754139>,  <30.801109, 29.952703, 28.749161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200977, 29.961658, 28.754139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004387, -0.329127, 0.944276,
		0.025235, -0.944020, -0.328920,
		0.999672, 0.022386, 0.012447,
		31.500879, 29.968374, 28.757874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932785, 29.278992, 28.889957>,  <30.801109, 29.952703, 28.749161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932785, 29.278992, 28.889957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253153, 29.498962, 28.984703>,  <31.445374, 29.630945, 29.041552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253153, 29.498962, 28.984703>,  <30.932785, 29.278992, 28.889957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253153, 29.498962, 28.984703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113342, -0.249194, 0.961798,
		0.587946, -0.797170, -0.137255,
		0.800920, 0.549929, 0.236866,
		31.493429, 29.663940, 29.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480015, 28.758287, 29.139524>,  <30.932785, 29.278992, 28.889957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480015, 28.758287, 29.139524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.568344, 29.126343, 29.268879>,  <31.621342, 29.347176, 29.346491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.568344, 29.126343, 29.268879>,  <31.480015, 28.758287, 29.139524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568344, 29.126343, 29.268879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371278, -0.227299, 0.900271,
		0.901881, -0.318868, 0.291434,
		0.220825, 0.920140, 0.323385,
		31.634592, 29.402386, 29.365894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815657, 28.623480, 29.768410>,  <31.480015, 28.758287, 29.139524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815657, 28.623480, 29.768410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740324, 29.011665, 29.828716>,  <31.695126, 29.244577, 29.864901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740324, 29.011665, 29.828716>,  <31.815657, 28.623480, 29.768410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740324, 29.011665, 29.828716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176383, -0.184439, 0.966887,
		0.966137, 0.155502, 0.205908,
		-0.188330, 0.970465, 0.150766,
		31.683825, 29.302805, 29.873945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141258, 28.785690, 30.383358>,  <31.815657, 28.623480, 29.768410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141258, 28.785690, 30.383358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856829, 29.065941, 30.359722>,  <31.686171, 29.234091, 30.345541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856829, 29.065941, 30.359722>,  <32.141258, 28.785690, 30.383358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856829, 29.065941, 30.359722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157029, -0.076328, 0.984640,
		0.685356, 0.709432, 0.164294,
		-0.711076, 0.700628, -0.059090,
		31.643505, 29.276129, 30.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287357, 29.188856, 30.936979>,  <32.141258, 28.785690, 30.383358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287357, 29.188856, 30.936979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899431, 29.247780, 30.859253>,  <31.666676, 29.283134, 30.812616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899431, 29.247780, 30.859253>,  <32.287357, 29.188856, 30.936979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899431, 29.247780, 30.859253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161431, 0.209378, 0.964418,
		0.182755, 0.966675, -0.179277,
		-0.969815, 0.147311, -0.194316,
		31.608486, 29.291973, 30.800959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153080, 29.858625, 31.192877>,  <32.287357, 29.188856, 30.936979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153080, 29.858625, 31.192877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793871, 29.682987, 31.181900>,  <31.578346, 29.577604, 31.175314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793871, 29.682987, 31.181900>,  <32.153080, 29.858625, 31.192877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793871, 29.682987, 31.181900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191723, 0.334440, 0.922709,
		-0.395981, 0.833873, -0.384519,
		-0.898021, -0.439096, -0.027441,
		31.524466, 29.551258, 31.173668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466381, 30.357323, 31.415836>,  <32.153080, 29.858625, 31.192877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466381, 30.357323, 31.415836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425619, 29.966560, 31.490959>,  <31.401161, 29.732103, 31.536034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425619, 29.966560, 31.490959>,  <31.466381, 30.357323, 31.415836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425619, 29.966560, 31.490959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195813, 0.204796, 0.959018,
		-0.975332, 0.060955, -0.212161,
		-0.101906, -0.976905, 0.187808,
		31.395048, 29.673489, 31.547302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409676, 30.524780, 32.023140>,  <31.466381, 30.357323, 31.415836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409676, 30.524780, 32.023140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328777, 30.134624, 31.988014>,  <31.280237, 29.900532, 31.966940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328777, 30.134624, 31.988014>,  <31.409676, 30.524780, 32.023140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328777, 30.134624, 31.988014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152097, -0.057292, 0.986704,
		-0.967452, 0.212914, -0.136766,
		-0.202248, -0.975390, -0.087811,
		31.268103, 29.842007, 31.961670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808626, 30.341887, 32.426163>,  <31.409676, 30.524780, 32.023140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808626, 30.341887, 32.426163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.012047, 29.999382, 32.389957>,  <31.134100, 29.793880, 32.368233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.012047, 29.999382, 32.389957>,  <30.808626, 30.341887, 32.426163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012047, 29.999382, 32.389957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105444, -0.166264, 0.980427,
		-0.854550, -0.489055, -0.174842,
		0.508553, -0.856260, -0.090513,
		31.164612, 29.742504, 32.362804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430016, 29.829266, 32.733543>,  <30.808626, 30.341887, 32.426163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430016, 29.829266, 32.733543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788477, 29.651890, 32.726936>,  <31.003553, 29.545464, 32.722973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788477, 29.651890, 32.726936>,  <30.430016, 29.829266, 32.733543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788477, 29.651890, 32.726936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103963, -0.245992, 0.963680,
		-0.431398, -0.861886, -0.266548,
		0.896152, -0.443441, -0.016516,
		31.057322, 29.518858, 32.721981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725098, 29.409096, 32.827286>,  <30.430016, 29.829266, 32.733543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725098, 29.409096, 32.827286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521994, 29.739395, 32.925526>,  <29.400131, 29.937574, 32.984470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521994, 29.739395, 32.925526>,  <29.725098, 29.409096, 32.827286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521994, 29.739395, 32.925526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073194, 0.242699, -0.967337,
		-0.858384, -0.509150, -0.062792,
		-0.507759, 0.825750, 0.245596,
		29.369665, 29.987120, 32.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270563, 29.418892, 32.336994>,  <29.725098, 29.409096, 32.827286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270563, 29.418892, 32.336994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.236824, 29.799728, 32.454575>,  <29.216579, 30.028231, 32.525124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.236824, 29.799728, 32.454575>,  <29.270563, 29.418892, 32.336994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236824, 29.799728, 32.454575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221324, 0.269732, -0.937155,
		-0.971546, -0.144107, 0.187969,
		-0.084349, 0.952091, 0.293951,
		29.211519, 30.085356, 32.542759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635519, 29.654078, 32.100628>,  <29.270563, 29.418892, 32.336994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635519, 29.654078, 32.100628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843922, 29.993538, 32.137169>,  <28.968964, 30.197214, 32.159092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843922, 29.993538, 32.137169>,  <28.635519, 29.654078, 32.100628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843922, 29.993538, 32.137169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302320, 0.283560, -0.910053,
		-0.798219, 0.446528, 0.404301,
		0.521007, 0.848650, 0.091349,
		29.000223, 30.248133, 32.164574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327040, 30.091473, 31.789650>,  <28.635519, 29.654078, 32.100628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327040, 30.091473, 31.789650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672009, 30.293007, 31.809135>,  <28.878990, 30.413927, 31.820827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672009, 30.293007, 31.809135>,  <28.327040, 30.091473, 31.789650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672009, 30.293007, 31.809135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080170, 0.230981, -0.969650,
		-0.499798, 0.832343, 0.239596,
		0.862424, 0.503838, 0.048715,
		28.930737, 30.444159, 31.823750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241514, 30.638155, 31.446781>,  <28.327040, 30.091473, 31.789650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241514, 30.638155, 31.446781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.638748, 30.678925, 31.470089>,  <28.877089, 30.703386, 31.484074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.638748, 30.678925, 31.470089>,  <28.241514, 30.638155, 31.446781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638748, 30.678925, 31.470089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005624, 0.454450, -0.890754,
		-0.117271, 0.884922, 0.450734,
		0.993084, 0.101924, 0.058271,
		28.936674, 30.709501, 31.487570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426189, 31.361198, 31.394728>,  <28.241514, 30.638155, 31.446781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426189, 31.361198, 31.394728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.743839, 31.169159, 31.245667>,  <28.934429, 31.053936, 31.156231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.743839, 31.169159, 31.245667>,  <28.426189, 31.361198, 31.394728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743839, 31.169159, 31.245667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062488, 0.545412, -0.835835,
		0.604532, 0.687045, 0.403126,
		0.794126, -0.480099, -0.372651,
		28.982077, 31.025129, 31.133871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676838, 31.793917, 30.990950>,  <28.426189, 31.361198, 31.394728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676838, 31.793917, 30.990950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858585, 31.463787, 30.856850>,  <28.967634, 31.265709, 30.776390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858585, 31.463787, 30.856850>,  <28.676838, 31.793917, 30.990950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858585, 31.463787, 30.856850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081814, 0.336089, -0.938270,
		0.887049, 0.453748, 0.085185,
		0.454368, -0.825322, -0.335251,
		28.994896, 31.216190, 30.756275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149775, 31.959345, 30.456053>,  <28.676838, 31.793917, 30.990950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149775, 31.959345, 30.456053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076206, 31.570232, 30.399666>,  <29.032066, 31.336765, 30.365833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076206, 31.570232, 30.399666>,  <29.149775, 31.959345, 30.456053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076206, 31.570232, 30.399666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064874, 0.155116, -0.985764,
		0.980798, -0.172155, -0.091637,
		-0.183918, -0.972780, -0.140970,
		29.021030, 31.278399, 30.357374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498468, 31.746225, 29.829527>,  <29.149775, 31.959345, 30.456053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498468, 31.746225, 29.829527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222815, 31.463703, 29.894299>,  <29.057423, 31.294189, 29.933161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222815, 31.463703, 29.894299>,  <29.498468, 31.746225, 29.829527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222815, 31.463703, 29.894299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389573, 0.172699, -0.904659,
		0.611003, -0.686516, -0.394171,
		-0.689136, -0.706308, 0.161929,
		29.016073, 31.251810, 29.942877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488380, 31.490955, 29.256203>,  <29.498468, 31.746225, 29.829527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488380, 31.490955, 29.256203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.153427, 31.368614, 29.437416>,  <28.952456, 31.295210, 29.546144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.153427, 31.368614, 29.437416>,  <29.488380, 31.490955, 29.256203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153427, 31.368614, 29.437416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509546, 0.136775, -0.849503,
		0.197864, -0.942202, -0.270381,
		-0.837385, -0.305857, 0.453032,
		28.902212, 31.276857, 29.573326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267963, 30.922388, 28.846888>,  <29.488380, 31.490955, 29.256203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267963, 30.922388, 28.846888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.928179, 31.003178, 29.041874>,  <28.724308, 31.051651, 29.158865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.928179, 31.003178, 29.041874>,  <29.267963, 30.922388, 28.846888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928179, 31.003178, 29.041874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429609, 0.271636, -0.861191,
		-0.306352, -0.940968, -0.143974,
		-0.849462, 0.201975, 0.487464,
		28.673340, 31.063770, 29.188112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737673, 30.480495, 28.609190>,  <29.267963, 30.922388, 28.846888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737673, 30.480495, 28.609190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575186, 30.817741, 28.750126>,  <28.477694, 31.020090, 28.834688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575186, 30.817741, 28.750126>,  <28.737673, 30.480495, 28.609190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575186, 30.817741, 28.750126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461393, 0.143573, -0.875502,
		-0.788736, -0.518210, 0.330686,
		-0.406216, 0.843116, 0.352340,
		28.453321, 31.070677, 28.855827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059046, 30.410128, 28.444725>,  <28.737673, 30.480495, 28.609190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059046, 30.410128, 28.444725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.118248, 30.799171, 28.516422>,  <28.153769, 31.032597, 28.559441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.118248, 30.799171, 28.516422>,  <28.059046, 30.410128, 28.444725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118248, 30.799171, 28.516422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616238, 0.232450, -0.752474,
		-0.773528, 0.000912, 0.633762,
		0.148004, 0.972608, 0.179245,
		28.162649, 31.090954, 28.570196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487217, 30.787001, 28.349567>,  <28.059046, 30.410128, 28.444725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487217, 30.787001, 28.349567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.759876, 31.067780, 28.266983>,  <27.923471, 31.236246, 28.217432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.759876, 31.067780, 28.266983>,  <27.487217, 30.787001, 28.349567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759876, 31.067780, 28.266983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547564, 0.302232, -0.780275,
		-0.485312, 0.644924, 0.590377,
		0.681649, 0.701946, -0.206461,
		27.964371, 31.278364, 28.205046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.190823, 30.033920, 16.120693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587692, 30.036804, 16.170547>,  <40.825813, 30.038534, 16.200460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587692, 30.036804, 16.170547>,  <40.190823, 30.033920, 16.120693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587692, 30.036804, 16.170547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120421, 0.318648, 0.940193,
		-0.032939, -0.947846, 0.317023,
		0.992176, 0.007207, 0.124636,
		40.885345, 30.038967, 16.207939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180397, 29.754873, 16.784451>,  <40.190823, 30.033920, 16.120693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180397, 29.754873, 16.784451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.539120, 29.920021, 16.720852>,  <40.754353, 30.019110, 16.682692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.539120, 29.920021, 16.720852>,  <40.180397, 29.754873, 16.784451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539120, 29.920021, 16.720852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080261, 0.505234, 0.859242,
		0.435085, -0.757811, 0.486234,
		0.896805, 0.412869, -0.158997,
		40.808163, 30.043882, 16.673153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510929, 29.806683, 17.471590>,  <40.180397, 29.754873, 16.784451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510929, 29.806683, 17.471590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724472, 30.055496, 17.242481>,  <40.852596, 30.204784, 17.105015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724472, 30.055496, 17.242481>,  <40.510929, 29.806683, 17.471590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724472, 30.055496, 17.242481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163684, 0.588543, 0.791723,
		0.829580, -0.516421, 0.212381,
		0.533858, 0.622034, -0.572773,
		40.884628, 30.242105, 17.070650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158390, 29.898020, 17.844763>,  <40.510929, 29.806683, 17.471590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158390, 29.898020, 17.844763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.088940, 30.206535, 17.599823>,  <41.047268, 30.391644, 17.452860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.088940, 30.206535, 17.599823>,  <41.158390, 29.898020, 17.844763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088940, 30.206535, 17.599823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130780, 0.634343, 0.761910,
		0.976089, 0.052207, -0.211009,
		-0.173629, 0.771287, -0.612347,
		41.036850, 30.437922, 17.416119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779564, 30.239393, 17.874636>,  <41.158390, 29.898020, 17.844763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779564, 30.239393, 17.874636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483868, 30.486492, 17.767372>,  <41.306450, 30.634752, 17.703014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483868, 30.486492, 17.767372>,  <41.779564, 30.239393, 17.874636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483868, 30.486492, 17.767372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134285, 0.525410, 0.840186,
		0.659917, 0.585090, -0.471359,
		-0.739241, 0.617749, -0.268159,
		41.262096, 30.671818, 17.686924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037903, 30.785158, 18.237862>,  <41.779564, 30.239393, 17.874636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037903, 30.785158, 18.237862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676456, 30.900227, 18.110916>,  <41.459587, 30.969267, 18.034748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676456, 30.900227, 18.110916>,  <42.037903, 30.785158, 18.237862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676456, 30.900227, 18.110916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172494, 0.433796, 0.884345,
		0.392070, 0.853854, -0.342365,
		-0.903619, 0.287669, -0.317363,
		41.405373, 30.986528, 18.015707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049778, 31.507597, 18.096546>,  <42.037903, 30.785158, 18.237862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049778, 31.507597, 18.096546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676098, 31.382839, 18.165817>,  <41.451889, 31.307985, 18.207380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676098, 31.382839, 18.165817>,  <42.049778, 31.507597, 18.096546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676098, 31.382839, 18.165817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067976, 0.632166, 0.771846,
		-0.350209, 0.709288, -0.611771,
		-0.934202, -0.311893, 0.173176,
		41.395836, 31.289270, 18.217770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719242, 32.221149, 18.259798>,  <42.049778, 31.507597, 18.096546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719242, 32.221149, 18.259798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.480755, 31.928108, 18.391144>,  <41.337662, 31.752285, 18.469952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.480755, 31.928108, 18.391144>,  <41.719242, 32.221149, 18.259798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480755, 31.928108, 18.391144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261591, 0.563968, 0.783269,
		-0.759009, 0.381101, -0.527889,
		-0.596218, -0.732599, 0.328364,
		41.301891, 31.708328, 18.489653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131088, 32.557674, 18.335249>,  <41.719242, 32.221149, 18.259798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131088, 32.557674, 18.335249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.054897, 32.221272, 18.537804>,  <41.009182, 32.019432, 18.659336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.054897, 32.221272, 18.537804>,  <41.131088, 32.557674, 18.335249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054897, 32.221272, 18.537804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307450, 0.540987, 0.782821,
		-0.932306, -0.006581, -0.361612,
		-0.190475, -0.841006, 0.506388,
		40.997753, 31.968969, 18.689720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424423, 32.456028, 18.425743>,  <41.131088, 32.557674, 18.335249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424423, 32.456028, 18.425743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583290, 32.238613, 18.721535>,  <40.678608, 32.108166, 18.899010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583290, 32.238613, 18.721535>,  <40.424423, 32.456028, 18.425743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583290, 32.238613, 18.721535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533482, 0.518905, 0.667934,
		-0.746764, -0.659779, -0.083875,
		0.397165, -0.543535, 0.739479,
		40.702438, 32.075554, 18.943378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858158, 32.290726, 18.850433>,  <40.424423, 32.456028, 18.425743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858158, 32.290726, 18.850433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189007, 32.223541, 19.064968>,  <40.387516, 32.183231, 19.193689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189007, 32.223541, 19.064968>,  <39.858158, 32.290726, 18.850433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189007, 32.223541, 19.064968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420590, 0.447998, 0.788925,
		-0.372789, -0.878115, 0.299904,
		0.827123, -0.167966, 0.536335,
		40.437145, 32.173153, 19.225868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698048, 32.075249, 19.560707>,  <39.858158, 32.290726, 18.850433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698048, 32.075249, 19.560707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080219, 32.190132, 19.588017>,  <40.309521, 32.259064, 19.604403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080219, 32.190132, 19.588017>,  <39.698048, 32.075249, 19.560707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080219, 32.190132, 19.588017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222217, 0.547424, 0.806812,
		0.194351, -0.786025, 0.586849,
		0.955431, 0.287213, 0.068276,
		40.366848, 32.276295, 19.608500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891579, 31.832897, 20.268826>,  <39.698048, 32.075249, 19.560707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891579, 31.832897, 20.268826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154373, 32.108170, 20.145683>,  <40.312050, 32.273331, 20.071798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154373, 32.108170, 20.145683>,  <39.891579, 31.832897, 20.268826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154373, 32.108170, 20.145683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076938, 0.467423, 0.880680,
		0.749965, -0.554910, 0.360038,
		0.656987, 0.688179, -0.307858,
		40.351471, 32.314625, 20.053326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369610, 31.909222, 20.826742>,  <39.891579, 31.832897, 20.268826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369610, 31.909222, 20.826742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378704, 32.234535, 20.594173>,  <40.384163, 32.429722, 20.454632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378704, 32.234535, 20.594173>,  <40.369610, 31.909222, 20.826742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378704, 32.234535, 20.594173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089142, 0.580905, 0.809076,
		0.995759, 0.033431, 0.085708,
		0.022739, 0.813285, -0.581421,
		40.385525, 32.478519, 20.419746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569515, 32.415409, 21.255543>,  <40.369610, 31.909222, 20.826742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569515, 32.415409, 21.255543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425720, 32.643181, 20.959835>,  <40.339443, 32.779842, 20.782410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425720, 32.643181, 20.959835>,  <40.569515, 32.415409, 21.255543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425720, 32.643181, 20.959835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371226, 0.639575, 0.673153,
		0.856130, 0.516427, -0.018535,
		-0.359489, 0.569426, -0.739271,
		40.317875, 32.814007, 20.738054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698517, 33.007332, 21.473200>,  <40.569515, 32.415409, 21.255543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698517, 33.007332, 21.473200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402882, 33.080727, 21.213943>,  <40.225502, 33.124763, 21.058390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402882, 33.080727, 21.213943>,  <40.698517, 33.007332, 21.473200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402882, 33.080727, 21.213943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396436, 0.659429, 0.638742,
		0.544601, 0.729031, -0.414636,
		-0.739086, 0.183483, -0.648140,
		40.181156, 33.135773, 21.019501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658627, 33.811214, 21.290548>,  <40.698517, 33.007332, 21.473200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658627, 33.811214, 21.290548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311234, 33.616798, 21.251579>,  <40.102798, 33.500149, 21.228197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311234, 33.616798, 21.251579>,  <40.658627, 33.811214, 21.290548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311234, 33.616798, 21.251579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444055, 0.675455, 0.588707,
		-0.220332, 0.554546, -0.802454,
		-0.868487, -0.486045, -0.097424,
		40.050686, 33.470985, 21.222351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236542, 34.366829, 21.182720>,  <40.658627, 33.811214, 21.290548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236542, 34.366829, 21.182720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022736, 34.048962, 21.297817>,  <39.894451, 33.858242, 21.366877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022736, 34.048962, 21.297817>,  <40.236542, 34.366829, 21.182720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022736, 34.048962, 21.297817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359975, 0.522102, 0.773193,
		-0.764662, 0.309705, -0.565133,
		-0.534519, -0.794665, 0.287745,
		39.862381, 33.810562, 21.384140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610523, 34.717239, 21.291368>,  <40.236542, 34.366829, 21.182720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610523, 34.717239, 21.291368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557514, 34.380089, 21.499985>,  <39.525711, 34.177799, 21.625154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557514, 34.380089, 21.499985>,  <39.610523, 34.717239, 21.291368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557514, 34.380089, 21.499985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238297, 0.537839, 0.808668,
		-0.962109, -0.017118, -0.272127,
		-0.132518, -0.842874, 0.521539,
		39.517757, 34.127228, 21.656446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919083, 34.738251, 21.652916>,  <39.610523, 34.717239, 21.291368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919083, 34.738251, 21.652916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163734, 34.481453, 21.837849>,  <39.310528, 34.327374, 21.948809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163734, 34.481453, 21.837849>,  <38.919083, 34.738251, 21.652916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163734, 34.481453, 21.837849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133238, 0.492454, 0.860079,
		-0.779841, -0.587654, 0.215664,
		0.611634, -0.641991, 0.462334,
		39.347225, 34.288857, 21.976549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523392, 34.522919, 22.225286>,  <38.919083, 34.738251, 21.652916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523392, 34.522919, 22.225286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917908, 34.497597, 22.286255>,  <39.154617, 34.482403, 22.322836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917908, 34.497597, 22.286255>,  <38.523392, 34.522919, 22.225286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917908, 34.497597, 22.286255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083568, 0.604843, 0.791948,
		-0.142325, -0.793825, 0.591258,
		0.986286, -0.063304, 0.152423,
		39.213795, 34.478607, 22.331982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605602, 35.162617, 22.411119>,  <38.523392, 34.522919, 22.225286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605602, 35.162617, 22.411119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.407055, 35.478523, 22.266960>,  <38.287926, 35.668068, 22.180464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.407055, 35.478523, 22.266960>,  <38.605602, 35.162617, 22.411119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407055, 35.478523, 22.266960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205864, -0.510398, -0.834933,
		-0.843347, -0.340245, 0.415932,
		-0.496373, 0.789764, -0.360399,
		38.258144, 35.715454, 22.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949669, 35.001648, 22.113087>,  <38.605602, 35.162617, 22.411119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949669, 35.001648, 22.113087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027767, 35.347103, 21.927181>,  <38.074627, 35.554379, 21.815638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027767, 35.347103, 21.927181>,  <37.949669, 35.001648, 22.113087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027767, 35.347103, 21.927181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216823, -0.424146, -0.879254,
		-0.956486, 0.272444, 0.104444,
		0.195249, 0.863640, -0.464762,
		38.086342, 35.606194, 21.787752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433189, 35.077629, 21.556021>,  <37.949669, 35.001648, 22.113087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433189, 35.077629, 21.556021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.702320, 35.348919, 21.437820>,  <37.863796, 35.511692, 21.366901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.702320, 35.348919, 21.437820>,  <37.433189, 35.077629, 21.556021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702320, 35.348919, 21.437820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061064, -0.347153, -0.935818,
		-0.737280, 0.647684, -0.192157,
		0.672823, 0.678226, -0.295499,
		37.904167, 35.552387, 21.349171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193668, 35.306011, 20.885050>,  <37.433189, 35.077629, 21.556021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193668, 35.306011, 20.885050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575619, 35.424709, 20.890121>,  <37.804787, 35.495926, 20.893166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575619, 35.424709, 20.890121>,  <37.193668, 35.306011, 20.885050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575619, 35.424709, 20.890121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099633, -0.279803, -0.954874,
		-0.279803, 0.913047, -0.296741,
		0.954874, 0.296741, 0.012680,
		37.862080, 35.513733, 20.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319725, 35.795475, 20.261835>,  <37.193668, 35.306011, 20.885050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319725, 35.795475, 20.261835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685596, 35.666546, 20.359379>,  <37.905121, 35.589188, 20.417906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685596, 35.666546, 20.359379>,  <37.319725, 35.795475, 20.261835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685596, 35.666546, 20.359379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169172, -0.242646, -0.955251,
		0.367072, 0.915003, -0.167415,
		0.914680, -0.322324, 0.243861,
		37.959999, 35.569847, 20.432537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796944, 35.979763, 19.691738>,  <37.319725, 35.795475, 20.261835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796944, 35.979763, 19.691738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003021, 35.691593, 19.877453>,  <38.126667, 35.518692, 19.988882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003021, 35.691593, 19.877453>,  <37.796944, 35.979763, 19.691738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003021, 35.691593, 19.877453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111919, -0.480528, -0.869809,
		0.849733, 0.500086, -0.166938,
		0.515198, -0.720422, 0.464289,
		38.157581, 35.475468, 20.016739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344898, 35.960308, 19.280220>,  <37.796944, 35.979763, 19.691738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344898, 35.960308, 19.280220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285255, 35.607811, 19.459633>,  <38.249470, 35.396313, 19.567280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285255, 35.607811, 19.459633>,  <38.344898, 35.960308, 19.280220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285255, 35.607811, 19.459633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224580, -0.471928, -0.852553,
		0.962981, -0.026387, 0.268275,
		-0.149103, -0.881242, 0.448532,
		38.240524, 35.343437, 19.594193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888939, 35.453327, 19.054871>,  <38.344898, 35.960308, 19.280220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888939, 35.453327, 19.054871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635777, 35.187084, 19.213055>,  <38.483879, 35.027336, 19.307966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635777, 35.187084, 19.213055>,  <38.888939, 35.453327, 19.054871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635777, 35.187084, 19.213055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254198, -0.661113, -0.705913,
		0.731309, -0.346251, 0.587620,
		-0.632906, -0.665612, 0.395462,
		38.445904, 34.987400, 19.331694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205879, 34.831383, 19.053284>,  <38.888939, 35.453327, 19.054871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205879, 34.831383, 19.053284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811794, 34.763874, 19.065132>,  <38.575344, 34.723370, 19.072241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811794, 34.763874, 19.065132>,  <39.205879, 34.831383, 19.053284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811794, 34.763874, 19.065132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091758, -0.665637, -0.740614,
		0.144711, -0.726942, 0.671278,
		-0.985210, -0.168770, 0.029622,
		38.516232, 34.713242, 19.074018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179661, 34.092575, 18.938604>,  <39.205879, 34.831383, 19.053284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179661, 34.092575, 18.938604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794140, 34.194565, 18.907425>,  <38.562828, 34.255760, 18.888718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794140, 34.194565, 18.907425>,  <39.179661, 34.092575, 18.938604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794140, 34.194565, 18.907425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153659, -0.770098, -0.619143,
		-0.217893, -0.584753, 0.781400,
		-0.963801, 0.254976, -0.077947,
		38.505001, 34.271057, 18.884041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784313, 33.429199, 18.982759>,  <39.179661, 34.092575, 18.938604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784313, 33.429199, 18.982759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576244, 33.706703, 18.783516>,  <38.451405, 33.873207, 18.663969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576244, 33.706703, 18.783516>,  <38.784313, 33.429199, 18.982759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576244, 33.706703, 18.783516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021846, -0.593842, -0.804285,
		-0.853783, -0.407483, 0.324054,
		-0.520170, 0.693765, -0.498111,
		38.420193, 33.914833, 18.634083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334332, 33.033489, 18.678310>,  <38.784313, 33.429199, 18.982759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334332, 33.033489, 18.678310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302250, 33.378735, 18.478870>,  <38.283001, 33.585880, 18.359207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302250, 33.378735, 18.478870>,  <38.334332, 33.033489, 18.678310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302250, 33.378735, 18.478870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156665, -0.504908, -0.848837,
		-0.984390, 0.010034, 0.175715,
		-0.080202, 0.863115, -0.498599,
		38.278191, 33.637669, 18.329290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778282, 33.031826, 18.213446>,  <38.334332, 33.033489, 18.678310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778282, 33.031826, 18.213446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.990246, 33.320663, 18.035557>,  <38.117424, 33.493965, 17.928823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.990246, 33.320663, 18.035557>,  <37.778282, 33.031826, 18.213446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990246, 33.320663, 18.035557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079635, -0.479715, -0.873803,
		-0.844306, 0.498454, -0.196703,
		0.529912, 0.722092, -0.444721,
		38.149220, 33.537292, 17.902140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468140, 33.131512, 17.600843>,  <37.778282, 33.031826, 18.213446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468140, 33.131512, 17.600843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810322, 33.323345, 17.522659>,  <38.015629, 33.438446, 17.475750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810322, 33.323345, 17.522659>,  <37.468140, 33.131512, 17.600843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810322, 33.323345, 17.522659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026120, -0.416895, -0.908579,
		-0.517222, 0.772141, -0.369160,
		0.855453, 0.479580, -0.195459,
		38.066959, 33.467220, 17.464022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421978, 33.292702, 16.909714>,  <37.468140, 33.131512, 17.600843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421978, 33.292702, 16.909714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809326, 33.291981, 17.009525>,  <38.041733, 33.291550, 17.069412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809326, 33.291981, 17.009525>,  <37.421978, 33.292702, 16.909714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809326, 33.291981, 17.009525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201319, -0.585208, -0.785495,
		0.147438, 0.810881, -0.566334,
		0.968366, -0.001798, 0.249528,
		38.099834, 33.291443, 17.084383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859989, 33.573608, 16.418587>,  <37.421978, 33.292702, 16.909714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859989, 33.573608, 16.418587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147701, 33.360199, 16.596573>,  <38.320328, 33.232155, 16.703365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147701, 33.360199, 16.596573>,  <37.859989, 33.573608, 16.418587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147701, 33.360199, 16.596573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252099, -0.396391, -0.882791,
		0.647370, 0.747146, -0.150613,
		0.719276, -0.533523, 0.444967,
		38.363483, 33.200142, 16.730062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487274, 33.598984, 16.010838>,  <37.859989, 33.573608, 16.418587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487274, 33.598984, 16.010838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517288, 33.269489, 16.235634>,  <38.535297, 33.071793, 16.370512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517288, 33.269489, 16.235634>,  <38.487274, 33.598984, 16.010838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517288, 33.269489, 16.235634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412493, -0.487463, -0.769564,
		0.907865, 0.289562, 0.303207,
		0.075034, -0.823732, 0.561993,
		38.539799, 33.022369, 16.404232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058758, 33.318729, 15.716478>,  <38.487274, 33.598984, 16.010838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058758, 33.318729, 15.716478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895451, 33.006145, 15.905217>,  <38.797466, 32.818596, 16.018461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895451, 33.006145, 15.905217>,  <39.058758, 33.318729, 15.716478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895451, 33.006145, 15.905217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381813, -0.615688, -0.689309,
		0.829176, -0.101269, 0.549738,
		-0.408273, -0.781456, 0.471848,
		38.772968, 32.771709, 16.046772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583889, 32.727173, 15.706010>,  <39.058758, 33.318729, 15.716478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583889, 32.727173, 15.706010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244400, 32.536781, 15.798198>,  <39.040707, 32.422546, 15.853510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244400, 32.536781, 15.798198>,  <39.583889, 32.727173, 15.706010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244400, 32.536781, 15.798198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284750, -0.778545, -0.559271,
		0.445630, -0.409040, 0.796304,
		-0.848723, -0.475976, 0.230469,
		38.989784, 32.393990, 15.867338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738609, 32.027275, 16.040712>,  <39.583889, 32.727173, 15.706010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738609, 32.027275, 16.040712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365337, 32.009541, 15.898042>,  <39.141376, 31.998899, 15.812440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365337, 32.009541, 15.898042>,  <39.738609, 32.027275, 16.040712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365337, 32.009541, 15.898042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252240, -0.787728, -0.562015,
		-0.256044, -0.614426, 0.746272,
		-0.933176, -0.044339, -0.356675,
		39.085384, 31.996239, 15.791039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388569, 31.306316, 16.173670>,  <39.738609, 32.027275, 16.040712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388569, 31.306316, 16.173670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.254021, 31.507130, 15.854966>,  <39.173294, 31.627617, 15.663745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.254021, 31.507130, 15.854966>,  <39.388569, 31.306316, 16.173670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254021, 31.507130, 15.854966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103463, -0.821234, -0.561133,
		-0.936030, -0.271182, 0.224294,
		-0.336367, 0.502031, -0.796757,
		39.153111, 31.657740, 15.615939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.208809, 32.469219, 33.450390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.545862, 32.673283, 33.519329>,  <27.748095, 32.795719, 33.560692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.545862, 32.673283, 33.519329>,  <27.208809, 32.469219, 33.450390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545862, 32.673283, 33.519329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149700, -0.529378, 0.835074,
		0.517260, -0.677861, -0.522443,
		0.842634, 0.510160, 0.172350,
		27.798653, 32.826332, 33.571033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572859, 31.963047, 33.718811>,  <27.208809, 32.469219, 33.450390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572859, 31.963047, 33.718811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.769655, 32.296772, 33.818302>,  <27.887733, 32.497005, 33.877998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.769655, 32.296772, 33.818302>,  <27.572859, 31.963047, 33.718811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769655, 32.296772, 33.818302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298405, -0.430000, 0.852088,
		0.817862, -0.344998, -0.460519,
		0.491992, 0.834312, 0.248732,
		27.917253, 32.547066, 33.892921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294003, 31.830351, 33.947517>,  <27.572859, 31.963047, 33.718811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294003, 31.830351, 33.947517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.215746, 32.187851, 34.108978>,  <28.168791, 32.402351, 34.205856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.215746, 32.187851, 34.108978>,  <28.294003, 31.830351, 33.947517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215746, 32.187851, 34.108978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453036, -0.282689, 0.845485,
		0.869760, 0.348284, -0.349593,
		-0.195643, 0.893748, 0.403657,
		28.157053, 32.455975, 34.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885263, 31.976660, 34.133526>,  <28.294003, 31.830351, 33.947517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885263, 31.976660, 34.133526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637329, 32.196388, 34.357689>,  <28.488569, 32.328224, 34.492188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637329, 32.196388, 34.357689>,  <28.885263, 31.976660, 34.133526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637329, 32.196388, 34.357689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608747, -0.114071, 0.785121,
		0.495209, 0.827789, -0.263693,
		-0.619834, 0.549321, 0.560403,
		28.451378, 32.361183, 34.525810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285563, 32.406403, 34.637821>,  <28.885263, 31.976660, 34.133526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285563, 32.406403, 34.637821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.923838, 32.414913, 34.808357>,  <28.706802, 32.420017, 34.910679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.923838, 32.414913, 34.808357>,  <29.285563, 32.406403, 34.637821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923838, 32.414913, 34.808357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426758, 0.021691, 0.904106,
		0.009985, 0.999538, -0.028694,
		-0.904311, 0.021273, 0.426344,
		28.652544, 32.421295, 34.936260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316223, 32.918530, 35.159618>,  <29.285563, 32.406403, 34.637821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316223, 32.918530, 35.159618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.993298, 32.703442, 35.256863>,  <28.799543, 32.574387, 35.315208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.993298, 32.703442, 35.256863>,  <29.316223, 32.918530, 35.159618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993298, 32.703442, 35.256863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265641, 0.036731, 0.963372,
		-0.526956, 0.842322, 0.113188,
		-0.807312, -0.537722, 0.243111,
		28.751104, 32.542126, 35.329796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009258, 33.287582, 35.742847>,  <29.316223, 32.918530, 35.159618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009258, 33.287582, 35.742847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886948, 32.907032, 35.727997>,  <28.813562, 32.678699, 35.719086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886948, 32.907032, 35.727997>,  <29.009258, 33.287582, 35.742847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886948, 32.907032, 35.727997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167335, -0.092087, 0.981590,
		-0.937283, 0.293933, 0.187357,
		-0.305775, -0.951380, -0.037126,
		28.795216, 32.621616, 35.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785791, 33.273293, 36.406822>,  <29.009258, 33.287582, 35.742847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785791, 33.273293, 36.406822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762177, 32.892601, 36.286331>,  <28.748009, 32.664188, 36.214039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762177, 32.892601, 36.286331>,  <28.785791, 33.273293, 36.406822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762177, 32.892601, 36.286331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109194, -0.306095, 0.945718,
		-0.992266, 0.022939, 0.121993,
		-0.059035, -0.951725, -0.301223,
		28.744467, 32.607082, 36.195965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339922, 32.972752, 36.923367>,  <28.785791, 33.273293, 36.406822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339922, 32.972752, 36.923367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.523342, 32.659695, 36.754986>,  <28.633394, 32.471863, 36.653957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.523342, 32.659695, 36.754986>,  <28.339922, 32.972752, 36.923367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523342, 32.659695, 36.754986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206264, -0.367023, 0.907055,
		-0.864399, -0.502760, -0.006869,
		0.458552, -0.782641, -0.420955,
		28.660908, 32.424904, 36.628700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003122, 32.302177, 37.204617>,  <28.339922, 32.972752, 36.923367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003122, 32.302177, 37.204617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354738, 32.181709, 37.056786>,  <28.565708, 32.109428, 36.968086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354738, 32.181709, 37.056786>,  <28.003122, 32.302177, 37.204617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354738, 32.181709, 37.056786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188831, -0.491853, 0.849955,
		-0.437753, -0.816933, -0.375490,
		0.879042, -0.301166, -0.369572,
		28.618450, 32.091358, 36.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072803, 31.577408, 37.458157>,  <28.003122, 32.302177, 37.204617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072803, 31.577408, 37.458157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441889, 31.717747, 37.394272>,  <28.663340, 31.801950, 37.355942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441889, 31.717747, 37.394272>,  <28.072803, 31.577408, 37.458157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441889, 31.717747, 37.394272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306577, -0.416719, 0.855778,
		0.233694, -0.838600, -0.492074,
		0.922712, 0.350849, -0.159710,
		28.718702, 31.823002, 37.346359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470388, 30.897017, 37.603806>,  <28.072803, 31.577408, 37.458157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470388, 30.897017, 37.603806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.687370, 31.232983, 37.610554>,  <28.817560, 31.434563, 37.614605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.687370, 31.232983, 37.610554>,  <28.470388, 30.897017, 37.603806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687370, 31.232983, 37.610554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230101, -0.167868, 0.958579,
		0.807958, -0.516103, -0.284326,
		0.542455, 0.839916, 0.016874,
		28.850107, 31.484957, 37.615616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187155, 30.760332, 37.691406>,  <28.470388, 30.897017, 37.603806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187155, 30.760332, 37.691406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076805, 31.117638, 37.833378>,  <29.010595, 31.332020, 37.918560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076805, 31.117638, 37.833378>,  <29.187155, 30.760332, 37.691406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076805, 31.117638, 37.833378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388434, -0.234156, 0.891229,
		0.879211, 0.383735, -0.282375,
		-0.275876, 0.893263, 0.354929,
		28.994041, 31.385616, 37.939857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978430, 30.344505, 38.219509>,  <29.187155, 30.760332, 37.691406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978430, 30.344505, 38.219509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966436, 30.618519, 38.510666>,  <28.959240, 30.782927, 38.685360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966436, 30.618519, 38.510666>,  <28.978430, 30.344505, 38.219509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966436, 30.618519, 38.510666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010820, -0.728401, 0.685066,
		0.999492, 0.012666, 0.029253,
		-0.029985, 0.685034, 0.727893,
		28.957441, 30.824030, 38.729034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156342, 30.009296, 38.895439>,  <28.978430, 30.344505, 38.219509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156342, 30.009296, 38.895439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.279236, 29.651421, 38.765739>,  <29.352972, 29.436695, 38.687920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.279236, 29.651421, 38.765739>,  <29.156342, 30.009296, 38.895439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279236, 29.651421, 38.765739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104552, 0.370402, -0.922969,
		0.945873, 0.249666, 0.207342,
		0.307234, -0.894690, -0.324250,
		29.371407, 29.383013, 38.668465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699064, 30.107279, 38.370388>,  <29.156342, 30.009296, 38.895439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699064, 30.107279, 38.370388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513363, 29.757816, 38.312153>,  <29.401941, 29.548140, 38.277210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513363, 29.757816, 38.312153>,  <29.699064, 30.107279, 38.370388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513363, 29.757816, 38.312153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007039, 0.160730, -0.986973,
		0.885675, -0.459230, -0.068470,
		-0.464252, -0.873655, -0.145587,
		29.374086, 29.495720, 38.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997221, 29.756466, 37.739811>,  <29.699064, 30.107279, 38.370388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997221, 29.756466, 37.739811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630211, 29.614422, 37.811417>,  <29.410006, 29.529196, 37.854378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630211, 29.614422, 37.811417>,  <29.997221, 29.756466, 37.739811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630211, 29.614422, 37.811417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194958, 0.009326, -0.980767,
		0.346611, -0.934778, -0.077789,
		-0.917525, -0.355111, 0.179010,
		29.354954, 29.507889, 37.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994591, 29.146957, 37.345196>,  <29.997221, 29.756466, 37.739811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994591, 29.146957, 37.345196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.611063, 29.248920, 37.395294>,  <29.380947, 29.310099, 37.425354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.611063, 29.248920, 37.395294>,  <29.994591, 29.146957, 37.345196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611063, 29.248920, 37.395294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099787, 0.110516, -0.988852,
		-0.265908, -0.960629, -0.080528,
		-0.958820, 0.254908, 0.125246,
		29.323418, 29.325394, 37.432869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676006, 28.722544, 37.013660>,  <29.994591, 29.146957, 37.345196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676006, 28.722544, 37.013660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402109, 29.012287, 37.045750>,  <29.237772, 29.186132, 37.065002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402109, 29.012287, 37.045750>,  <29.676006, 28.722544, 37.013660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402109, 29.012287, 37.045750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081387, 0.033381, -0.996123,
		-0.724228, -0.688615, 0.036096,
		-0.684741, 0.724358, 0.080219,
		29.196688, 29.229595, 37.069817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148769, 28.462639, 36.578434>,  <29.676006, 28.722544, 37.013660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148769, 28.462639, 36.578434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.081455, 28.855400, 36.613171>,  <29.041067, 29.091057, 36.634014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.081455, 28.855400, 36.613171>,  <29.148769, 28.462639, 36.578434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081455, 28.855400, 36.613171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131743, 0.064904, -0.989157,
		-0.976895, -0.177902, 0.118437,
		-0.168286, 0.981905, 0.086842,
		29.030970, 29.149971, 36.639225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463097, 28.610981, 36.222744>,  <29.148769, 28.462639, 36.578434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463097, 28.610981, 36.222744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.685669, 28.943230, 36.231270>,  <28.819212, 29.142578, 36.236385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.685669, 28.943230, 36.231270>,  <28.463097, 28.610981, 36.222744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685669, 28.943230, 36.231270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306895, 0.229293, -0.923710,
		-0.772141, 0.507438, 0.382499,
		0.556430, 0.830621, 0.021317,
		28.852598, 29.192415, 36.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020792, 29.127005, 35.914360>,  <28.463097, 28.610981, 36.222744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020792, 29.127005, 35.914360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.392178, 29.275131, 35.902924>,  <28.615009, 29.364006, 35.896061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.392178, 29.275131, 35.902924>,  <28.020792, 29.127005, 35.914360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392178, 29.275131, 35.902924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178922, 0.378486, -0.908150,
		-0.325481, 0.848301, 0.417668,
		0.928466, 0.370316, -0.028590,
		28.670717, 29.386227, 35.894348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978605, 29.857395, 35.659477>,  <28.020792, 29.127005, 35.914360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978605, 29.857395, 35.659477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364328, 29.759514, 35.619026>,  <28.595762, 29.700785, 35.594757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364328, 29.759514, 35.619026>,  <27.978605, 29.857395, 35.659477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364328, 29.759514, 35.619026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019557, 0.446708, -0.894466,
		0.264053, 0.860565, 0.435551,
		0.964310, -0.244705, -0.101124,
		28.653622, 29.686102, 35.588688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225309, 30.429424, 35.273266>,  <27.978605, 29.857395, 35.659477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225309, 30.429424, 35.273266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503040, 30.142197, 35.254139>,  <28.669678, 29.969860, 35.242664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503040, 30.142197, 35.254139>,  <28.225309, 30.429424, 35.273266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503040, 30.142197, 35.254139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230349, 0.284694, -0.930531,
		0.681799, 0.635078, 0.363077,
		0.694326, -0.718070, -0.047815,
		28.711338, 29.926775, 35.239796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820921, 30.831476, 34.908520>,  <28.225309, 30.429424, 35.273266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820921, 30.831476, 34.908520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.857674, 30.433998, 34.882820>,  <28.879726, 30.195511, 34.867401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.857674, 30.433998, 34.882820>,  <28.820921, 30.831476, 34.908520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857674, 30.433998, 34.882820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361705, 0.093423, -0.927600,
		0.927754, 0.061991, 0.368009,
		0.091884, -0.993695, -0.064251,
		28.885239, 30.135889, 34.863544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523491, 30.698193, 34.590515>,  <28.820921, 30.831476, 34.908520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523491, 30.698193, 34.590515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.299572, 30.374653, 34.518528>,  <29.165220, 30.180529, 34.475338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.299572, 30.374653, 34.518528>,  <29.523491, 30.698193, 34.590515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299572, 30.374653, 34.518528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234055, 0.053993, -0.970723,
		0.794888, -0.585529, 0.159091,
		-0.559796, -0.808852, -0.179965,
		29.131634, 30.131998, 34.464539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966835, 30.299006, 34.171570>,  <29.523491, 30.698193, 34.590515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966835, 30.299006, 34.171570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583584, 30.224907, 34.084236>,  <29.353632, 30.180447, 34.031837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583584, 30.224907, 34.084236>,  <29.966835, 30.299006, 34.171570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583584, 30.224907, 34.084236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199022, 0.117345, -0.972944,
		0.205859, -0.975660, -0.075563,
		-0.958130, -0.185251, -0.218334,
		29.296144, 30.169333, 34.018738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085411, 29.799355, 33.556503>,  <29.966835, 30.299006, 34.171570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085411, 29.799355, 33.556503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706627, 29.926285, 33.536240>,  <29.479357, 30.002443, 33.524082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706627, 29.926285, 33.536240>,  <30.085411, 29.799355, 33.556503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706627, 29.926285, 33.536240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108400, 0.167030, -0.979975,
		-0.302511, -0.933490, -0.192569,
		-0.946962, 0.317328, -0.050662,
		29.422539, 30.021482, 33.521042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419077, 29.181208, 33.221687>,  <30.085411, 29.799355, 33.556503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419077, 29.181208, 33.221687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803410, 29.279907, 33.171227>,  <31.034010, 29.339127, 33.140949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803410, 29.279907, 33.171227>,  <30.419077, 29.181208, 33.221687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803410, 29.279907, 33.171227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225256, -0.430199, 0.874179,
		0.161432, -0.868357, -0.468931,
		0.960833, 0.246750, -0.126155,
		31.091660, 29.353931, 33.133381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762278, 28.556789, 33.425056>,  <30.419077, 29.181208, 33.221687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762278, 28.556789, 33.425056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026863, 28.853603, 33.468594>,  <31.185614, 29.031693, 33.494717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026863, 28.853603, 33.468594>,  <30.762278, 28.556789, 33.425056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026863, 28.853603, 33.468594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339048, -0.425317, 0.839137,
		0.668963, -0.518157, -0.532919,
		0.661464, 0.742037, 0.108841,
		31.225302, 29.076214, 33.501247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323486, 28.269043, 33.780735>,  <30.762278, 28.556789, 33.425056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323486, 28.269043, 33.780735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409548, 28.656517, 33.830303>,  <31.461184, 28.889002, 33.860046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409548, 28.656517, 33.830303>,  <31.323486, 28.269043, 33.780735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409548, 28.656517, 33.830303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402566, -0.203587, 0.892464,
		0.889747, -0.142128, -0.433763,
		0.215153, 0.968686, 0.123925,
		31.474094, 28.947123, 33.867481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006832, 28.332529, 34.003254>,  <31.323486, 28.269043, 33.780735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006832, 28.332529, 34.003254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831575, 28.673065, 34.118668>,  <31.726421, 28.877386, 34.187916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831575, 28.673065, 34.118668>,  <32.006832, 28.332529, 34.003254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831575, 28.673065, 34.118668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236312, -0.200605, 0.950744,
		0.867288, 0.484745, -0.113288,
		-0.438142, 0.851340, 0.288533,
		31.700132, 28.928467, 34.205227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442455, 28.630396, 34.360031>,  <32.006832, 28.332529, 34.003254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442455, 28.630396, 34.360031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116650, 28.822613, 34.490040>,  <31.921165, 28.937943, 34.568047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116650, 28.822613, 34.490040>,  <32.442455, 28.630396, 34.360031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116650, 28.822613, 34.490040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226116, -0.252979, 0.940677,
		0.534260, 0.839691, 0.097397,
		-0.814517, 0.480543, 0.325024,
		31.872295, 28.966776, 34.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619221, 29.097101, 34.872097>,  <32.442455, 28.630396, 34.360031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619221, 29.097101, 34.872097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230804, 29.027992, 34.938107>,  <31.997755, 28.986526, 34.977711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230804, 29.027992, 34.938107>,  <32.619221, 29.097101, 34.872097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230804, 29.027992, 34.938107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178533, -0.065710, 0.981737,
		-0.158771, 0.982768, 0.094652,
		-0.971040, -0.172770, 0.165023,
		31.939493, 28.976162, 34.987614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426991, 29.491377, 35.476063>,  <32.619221, 29.097101, 34.872097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426991, 29.491377, 35.476063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142952, 29.210060, 35.462563>,  <31.972528, 29.041271, 35.454460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142952, 29.210060, 35.462563>,  <32.426991, 29.491377, 35.476063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142952, 29.210060, 35.462563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087679, -0.135892, 0.986836,
		-0.698620, 0.697794, 0.158161,
		-0.710101, -0.703290, -0.033755,
		31.929922, 28.999073, 35.452435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624050, 30.001429, 35.999596>,  <32.426991, 29.491377, 35.476063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624050, 30.001429, 35.999596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023022, 30.000603, 36.028229>,  <33.262405, 30.000107, 36.045406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023022, 30.000603, 36.028229>,  <32.624050, 30.001429, 35.999596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023022, 30.000603, 36.028229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071520, -0.021636, -0.997205,
		0.003608, 0.999764, -0.021433,
		0.997433, -0.002065, 0.071581,
		33.322250, 29.999983, 36.049702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804932, 30.598825, 35.569859>,  <32.624050, 30.001429, 35.999596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804932, 30.598825, 35.569859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136364, 30.377335, 35.602959>,  <33.335224, 30.244440, 35.622818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136364, 30.377335, 35.602959>,  <32.804932, 30.598825, 35.569859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136364, 30.377335, 35.602959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187561, 0.135266, -0.972895,
		0.527523, 0.821639, 0.215935,
		0.828577, -0.553725, 0.082751,
		33.384937, 30.211216, 35.627785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318363, 31.031000, 35.153057>,  <32.804932, 30.598825, 35.569859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318363, 31.031000, 35.153057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480267, 30.667664, 35.195175>,  <33.577408, 30.449661, 35.220444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480267, 30.667664, 35.195175>,  <33.318363, 31.031000, 35.153057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480267, 30.667664, 35.195175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361837, 0.053351, -0.930714,
		0.839789, 0.414811, 0.350266,
		0.404757, -0.908342, 0.105291,
		33.601692, 30.395161, 35.226761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114258, 31.108576, 35.006500>,  <33.318363, 31.031000, 35.153057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114258, 31.108576, 35.006500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984444, 30.736095, 34.940113>,  <33.906555, 30.512608, 34.900280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984444, 30.736095, 34.940113>,  <34.114258, 31.108576, 35.006500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984444, 30.736095, 34.940113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321237, 0.056528, -0.945310,
		0.889654, -0.360101, 0.280790,
		-0.324534, -0.931199, -0.165968,
		33.887085, 30.456736, 34.890324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586491, 30.891483, 34.654236>,  <34.114258, 31.108576, 35.006500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586491, 30.891483, 34.654236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315250, 30.607555, 34.577984>,  <34.152508, 30.437199, 34.532234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315250, 30.607555, 34.577984>,  <34.586491, 30.891483, 34.654236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315250, 30.607555, 34.577984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192520, 0.078768, -0.978127,
		0.709308, -0.699967, 0.083241,
		-0.678099, -0.709819, -0.190628,
		34.111820, 30.394609, 34.520794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917858, 30.496227, 34.134972>,  <34.586491, 30.891483, 34.654236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917858, 30.496227, 34.134972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535999, 30.386147, 34.089512>,  <34.306885, 30.320099, 34.062237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535999, 30.386147, 34.089512>,  <34.917858, 30.496227, 34.134972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535999, 30.386147, 34.089512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142687, -0.087856, -0.985861,
		0.261326, -0.957364, 0.123139,
		-0.954646, -0.275202, -0.113645,
		34.249607, 30.303587, 34.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866631, 29.809164, 33.771473>,  <34.917858, 30.496227, 34.134972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866631, 29.809164, 33.771473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548904, 30.029312, 33.668591>,  <34.358269, 30.161402, 33.606861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548904, 30.029312, 33.668591>,  <34.866631, 29.809164, 33.771473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548904, 30.029312, 33.668591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161073, -0.217431, -0.962694,
		-0.585764, -0.806111, 0.084058,
		-0.794315, 0.550372, -0.257206,
		34.310612, 30.194424, 33.591427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.682430, 34.866734, 38.171146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504194, 34.509922, 38.140854>,  <30.397253, 34.295834, 38.122677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504194, 34.509922, 38.140854>,  <30.682430, 34.866734, 38.171146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504194, 34.509922, 38.140854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125930, 0.021301, -0.991811,
		0.886337, -0.451476, 0.102842,
		-0.445588, -0.892029, -0.075734,
		30.370518, 34.242313, 38.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131393, 34.414204, 37.861263>,  <30.682430, 34.866734, 38.171146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131393, 34.414204, 37.861263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.772226, 34.249493, 37.799053>,  <30.556726, 34.150665, 37.761726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.772226, 34.249493, 37.799053>,  <31.131393, 34.414204, 37.861263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772226, 34.249493, 37.799053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239191, -0.159865, -0.957722,
		0.369502, -0.897155, 0.242038,
		-0.897918, -0.411773, -0.155521,
		30.502851, 34.125961, 37.752396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159176, 33.662201, 37.552074>,  <31.131393, 34.414204, 37.861263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159176, 33.662201, 37.552074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790928, 33.787735, 37.459156>,  <30.569979, 33.863056, 37.403404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790928, 33.787735, 37.459156>,  <31.159176, 33.662201, 37.552074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790928, 33.787735, 37.459156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168798, -0.216573, -0.961563,
		-0.352086, -0.924446, 0.146406,
		-0.920621, 0.313839, -0.232297,
		30.514742, 33.881886, 37.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908218, 33.151150, 37.109745>,  <31.159176, 33.662201, 37.552074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908218, 33.151150, 37.109745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678246, 33.471943, 37.044895>,  <30.540262, 33.664417, 37.005985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678246, 33.471943, 37.044895>,  <30.908218, 33.151150, 37.109745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678246, 33.471943, 37.044895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102774, -0.125793, -0.986719,
		-0.811721, -0.583958, -0.010100,
		-0.574932, 0.801978, -0.162124,
		30.505766, 33.712536, 36.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377501, 32.927486, 36.571091>,  <30.908218, 33.151150, 37.109745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377501, 32.927486, 36.571091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417397, 33.325493, 36.570538>,  <30.441334, 33.564297, 36.570206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417397, 33.325493, 36.570538>,  <30.377501, 32.927486, 36.571091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417397, 33.325493, 36.570538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273898, -0.028791, -0.961328,
		-0.956573, 0.095503, -0.275404,
		0.099739, 0.995013, -0.001383,
		30.447319, 33.623997, 36.570122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233496, 33.130352, 35.889374>,  <30.377501, 32.927486, 36.571091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233496, 33.130352, 35.889374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407022, 33.463665, 36.026455>,  <30.511139, 33.663654, 36.108704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407022, 33.463665, 36.026455>,  <30.233496, 33.130352, 35.889374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407022, 33.463665, 36.026455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220989, 0.270332, -0.937062,
		-0.873480, 0.482245, -0.066872,
		0.433816, 0.833283, 0.342701,
		30.537167, 33.713650, 36.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895687, 33.776947, 35.647873>,  <30.233496, 33.130352, 35.889374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895687, 33.776947, 35.647873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.260509, 33.903687, 35.751999>,  <30.479403, 33.979729, 35.814472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.260509, 33.903687, 35.751999>,  <29.895687, 33.776947, 35.647873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260509, 33.903687, 35.751999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183477, 0.252401, -0.950068,
		-0.366732, 0.914276, 0.172069,
		0.912055, 0.316850, 0.260312,
		30.534126, 33.998741, 35.830093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042095, 34.495777, 35.282742>,  <29.895687, 33.776947, 35.647873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042095, 34.495777, 35.282742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.416080, 34.380634, 35.365665>,  <30.640472, 34.311550, 35.415421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.416080, 34.380634, 35.365665>,  <30.042095, 34.495777, 35.282742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416080, 34.380634, 35.365665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300940, 0.334214, -0.893161,
		0.187815, 0.897463, 0.399106,
		0.934966, -0.287856, 0.207312,
		30.696569, 34.294277, 35.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373943, 35.074471, 35.208912>,  <30.042095, 34.495777, 35.282742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373943, 35.074471, 35.208912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.664429, 34.801216, 35.178074>,  <30.838720, 34.637264, 35.159569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.664429, 34.801216, 35.178074>,  <30.373943, 35.074471, 35.208912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664429, 34.801216, 35.178074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180356, 0.297539, -0.937519,
		0.663391, 0.666932, 0.339283,
		0.726212, -0.683134, -0.077100,
		30.882292, 34.596275, 35.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980419, 35.448181, 35.002720>,  <30.373943, 35.074471, 35.208912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980419, 35.448181, 35.002720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059868, 35.067242, 34.910122>,  <31.107536, 34.838680, 34.854565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059868, 35.067242, 34.910122>,  <30.980419, 35.448181, 35.002720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059868, 35.067242, 34.910122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226253, 0.274374, -0.934627,
		0.953603, 0.133261, 0.269968,
		0.198621, -0.952345, -0.231493,
		31.119453, 34.781540, 34.840675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584719, 35.378628, 34.720768>,  <30.980419, 35.448181, 35.002720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584719, 35.378628, 34.720768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404312, 35.046864, 34.588913>,  <31.296068, 34.847805, 34.509800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404312, 35.046864, 34.588913>,  <31.584719, 35.378628, 34.720768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404312, 35.046864, 34.588913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064396, 0.338129, -0.938894,
		0.890189, -0.444685, -0.099091,
		-0.451018, -0.829412, -0.329635,
		31.269007, 34.798038, 34.490021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056129, 34.990040, 34.262955>,  <31.584719, 35.378628, 34.720768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056129, 34.990040, 34.262955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675982, 34.915379, 34.163391>,  <31.447893, 34.870583, 34.103653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675982, 34.915379, 34.163391>,  <32.056129, 34.990040, 34.262955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675982, 34.915379, 34.163391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161629, 0.387409, -0.907629,
		0.265839, -0.902815, -0.338014,
		-0.950371, -0.186651, -0.248910,
		31.390871, 34.859383, 34.088718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619190, 34.412735, 34.164978>,  <32.056129, 34.990040, 34.262955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619190, 34.412735, 34.164978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995567, 34.539516, 34.212570>,  <33.221394, 34.615585, 34.241127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995567, 34.539516, 34.212570>,  <32.619190, 34.412735, 34.164978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995567, 34.539516, 34.212570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003834, -0.361395, 0.932405,
		0.338532, -0.876887, -0.341269,
		0.940947, 0.316958, 0.118982,
		33.277851, 34.634605, 34.248264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888367, 33.870029, 34.343449>,  <32.619190, 34.412735, 34.164978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888367, 33.870029, 34.343449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144279, 34.151527, 34.467010>,  <33.297825, 34.320427, 34.541149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144279, 34.151527, 34.467010>,  <32.888367, 33.870029, 34.343449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144279, 34.151527, 34.467010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023575, -0.419712, 0.907351,
		0.768197, -0.573222, -0.285114,
		0.639780, 0.703745, 0.308908,
		33.336212, 34.362652, 34.559681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491348, 33.485802, 34.503853>,  <32.888367, 33.870029, 34.343449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491348, 33.485802, 34.503853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524570, 33.844086, 34.678577>,  <33.544502, 34.059055, 34.783413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524570, 33.844086, 34.678577>,  <33.491348, 33.485802, 34.503853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524570, 33.844086, 34.678577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136802, -0.444420, 0.885311,
		0.987111, -0.013772, -0.159446,
		0.083054, 0.895713, 0.436808,
		33.549488, 34.112801, 34.809620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161240, 33.451694, 34.850002>,  <33.491348, 33.485802, 34.503853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161240, 33.451694, 34.850002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.939102, 33.742218, 35.012020>,  <33.805820, 33.916534, 35.109230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.939102, 33.742218, 35.012020>,  <34.161240, 33.451694, 34.850002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939102, 33.742218, 35.012020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063047, -0.448884, 0.891364,
		0.829226, 0.520552, 0.203494,
		-0.555346, 0.726312, 0.405045,
		33.772499, 33.960114, 35.133533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428444, 33.705647, 35.432461>,  <34.161240, 33.451694, 34.850002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428444, 33.705647, 35.432461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050060, 33.811394, 35.507591>,  <33.823032, 33.874840, 35.552670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050060, 33.811394, 35.507591>,  <34.428444, 33.705647, 35.432461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050060, 33.811394, 35.507591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085694, -0.354829, 0.930996,
		0.312771, 0.896776, 0.312998,
		-0.945955, 0.264366, 0.187829,
		33.766273, 33.890705, 35.563938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448353, 33.803722, 36.134052>,  <34.428444, 33.705647, 35.432461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448353, 33.803722, 36.134052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051922, 33.786861, 36.083485>,  <33.814064, 33.776745, 36.053146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051922, 33.786861, 36.083485>,  <34.448353, 33.803722, 36.134052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051922, 33.786861, 36.083485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101203, -0.379050, 0.919826,
		-0.086694, 0.924415, 0.371403,
		-0.991081, -0.042156, -0.126415,
		33.754597, 33.774216, 36.045559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077354, 34.148285, 36.735989>,  <34.448353, 33.803722, 36.134052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077354, 34.148285, 36.735989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843136, 33.882759, 36.549877>,  <33.702606, 33.723442, 36.438210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843136, 33.882759, 36.549877>,  <34.077354, 34.148285, 36.735989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843136, 33.882759, 36.549877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195312, -0.441527, 0.875733,
		-0.786759, 0.603656, 0.128883,
		-0.585546, -0.663818, -0.465276,
		33.667473, 33.683613, 36.410294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519806, 34.186058, 37.101162>,  <34.077354, 34.148285, 36.735989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519806, 34.186058, 37.101162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482513, 33.831837, 36.919132>,  <33.460136, 33.619305, 36.809914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482513, 33.831837, 36.919132>,  <33.519806, 34.186058, 37.101162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482513, 33.831837, 36.919132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228345, -0.425866, 0.875498,
		-0.969106, 0.185541, -0.162507,
		-0.093235, -0.885558, -0.455076,
		33.454544, 33.566170, 36.782608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948078, 33.936596, 37.357563>,  <33.519806, 34.186058, 37.101162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948078, 33.936596, 37.357563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.128780, 33.616158, 37.200508>,  <33.237202, 33.423893, 37.106277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.128780, 33.616158, 37.200508>,  <32.948078, 33.936596, 37.357563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128780, 33.616158, 37.200508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284056, -0.546359, 0.787912,
		-0.845712, -0.244413, -0.474377,
		0.451756, -0.801096, -0.392635,
		33.264309, 33.375828, 37.082718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436100, 33.500977, 37.361279>,  <32.948078, 33.936596, 37.357563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436100, 33.500977, 37.361279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.771496, 33.283066, 37.356239>,  <32.972733, 33.152321, 37.353218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.771496, 33.283066, 37.356239>,  <32.436100, 33.500977, 37.361279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771496, 33.283066, 37.356239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315654, -0.504420, 0.803693,
		-0.444184, -0.669912, -0.594911,
		0.838489, -0.544773, -0.012595,
		33.023041, 33.119633, 37.352463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217716, 32.877766, 37.460377>,  <32.436100, 33.500977, 37.361279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217716, 32.877766, 37.460377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.603870, 32.862377, 37.563564>,  <32.835564, 32.853146, 37.625477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.603870, 32.862377, 37.563564>,  <32.217716, 32.877766, 37.460377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603870, 32.862377, 37.563564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259220, -0.250928, 0.932652,
		0.028856, -0.967241, -0.252214,
		0.965387, -0.038466, 0.257969,
		32.893486, 32.850838, 37.640957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304863, 32.148983, 37.762592>,  <32.217716, 32.877766, 37.460377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304863, 32.148983, 37.762592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598259, 32.380268, 37.905510>,  <32.774296, 32.519039, 37.991261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598259, 32.380268, 37.905510>,  <32.304863, 32.148983, 37.762592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598259, 32.380268, 37.905510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114393, -0.413154, 0.903448,
		0.670003, -0.703544, -0.236901,
		0.733492, 0.578213, 0.357294,
		32.818306, 32.553730, 38.012699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714474, 31.655954, 38.156029>,  <32.304863, 32.148983, 37.762592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714474, 31.655954, 38.156029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842926, 32.003124, 38.307598>,  <32.919998, 32.211426, 38.398540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842926, 32.003124, 38.307598>,  <32.714474, 31.655954, 38.156029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842926, 32.003124, 38.307598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099409, -0.367010, 0.924890,
		0.941802, -0.334680, -0.031579,
		0.321132, 0.867925, 0.378921,
		32.939266, 32.263500, 38.421276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226612, 31.462849, 38.670506>,  <32.714474, 31.655954, 38.156029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226612, 31.462849, 38.670506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144718, 31.845631, 38.752792>,  <33.095581, 32.075298, 38.802162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144718, 31.845631, 38.752792>,  <33.226612, 31.462849, 38.670506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144718, 31.845631, 38.752792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119365, -0.233006, 0.965122,
		0.971512, 0.173042, 0.161932,
		-0.204738, 0.956956, 0.205713,
		33.083298, 32.132717, 38.814507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931049, 31.176613, 38.840137>,  <33.226612, 31.462849, 38.670506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931049, 31.176613, 38.840137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884647, 30.779667, 38.856911>,  <33.856808, 30.541500, 38.866974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884647, 30.779667, 38.856911>,  <33.931049, 31.176613, 38.840137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884647, 30.779667, 38.856911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073865, -0.050724, -0.995977,
		0.990498, -0.112441, 0.079185,
		-0.116005, -0.992363, 0.041937,
		33.849846, 30.481958, 38.869492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521362, 30.803841, 38.527588>,  <33.931049, 31.176613, 38.840137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521362, 30.803841, 38.527588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180012, 30.596134, 38.509232>,  <33.975201, 30.471510, 38.498219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180012, 30.596134, 38.509232>,  <34.521362, 30.803841, 38.527588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180012, 30.596134, 38.509232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073462, -0.032645, -0.996764,
		0.516087, -0.853989, 0.066005,
		-0.853380, -0.519266, -0.045888,
		33.923996, 30.440355, 38.495464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658588, 30.248272, 37.974346>,  <34.521362, 30.803841, 38.527588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658588, 30.248272, 37.974346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260208, 30.278538, 37.993778>,  <34.021179, 30.296698, 38.005440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260208, 30.278538, 37.993778>,  <34.658588, 30.248272, 37.974346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260208, 30.278538, 37.993778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066376, -0.254165, -0.964880,
		-0.060659, -0.964197, 0.258158,
		-0.995949, 0.075664, 0.048582,
		33.961422, 30.301237, 38.008354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355156, 29.538078, 37.792542>,  <34.658588, 30.248272, 37.974346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355156, 29.538078, 37.792542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101757, 29.840210, 37.725414>,  <33.949718, 30.021488, 37.685139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101757, 29.840210, 37.725414>,  <34.355156, 29.538078, 37.792542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101757, 29.840210, 37.725414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098479, -0.293837, -0.950769,
		-0.767453, -0.585782, 0.260528,
		-0.633496, 0.755328, -0.167819,
		33.911709, 30.066809, 37.675068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875599, 29.204597, 37.332569>,  <34.355156, 29.538078, 37.792542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875599, 29.204597, 37.332569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821075, 29.598408, 37.288513>,  <33.788361, 29.834694, 37.262077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821075, 29.598408, 37.288513>,  <33.875599, 29.204597, 37.332569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821075, 29.598408, 37.288513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285910, -0.145546, -0.947139,
		-0.948512, -0.097611, 0.301324,
		-0.136307, 0.984525, -0.110144,
		33.780182, 29.893764, 37.255470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334229, 29.201855, 36.962727>,  <33.875599, 29.204597, 37.332569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334229, 29.201855, 36.962727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445621, 29.584427, 36.927662>,  <33.512459, 29.813971, 36.906624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445621, 29.584427, 36.927662>,  <33.334229, 29.201855, 36.962727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445621, 29.584427, 36.927662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307349, 0.002274, -0.951594,
		-0.909935, 0.291949, 0.294592,
		0.278486, 0.956431, -0.087661,
		33.529167, 29.871357, 36.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765762, 29.543789, 36.560154>,  <33.334229, 29.201855, 36.962727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765762, 29.543789, 36.560154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089455, 29.777771, 36.538322>,  <33.283669, 29.918159, 36.525223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089455, 29.777771, 36.538322>,  <32.765762, 29.543789, 36.560154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089455, 29.777771, 36.538322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058360, -0.012407, -0.998219,
		-0.584588, 0.810972, 0.024098,
		0.809229, 0.584953, -0.054582,
		33.332222, 29.953257, 36.521950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027012, 29.608967, 36.072773>,  <32.765762, 29.543789, 36.560154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027012, 29.608967, 36.072773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.927759, 29.239693, 35.955364>,  <31.868206, 29.018127, 35.884918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.927759, 29.239693, 35.955364>,  <32.027012, 29.608967, 36.072773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927759, 29.239693, 35.955364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078957, -0.282718, 0.955948,
		-0.965503, 0.260380, -0.002740,
		-0.248135, -0.923186, -0.293523,
		31.853319, 28.962736, 35.867306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356537, 29.465862, 36.337372>,  <32.027012, 29.608967, 36.072773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356537, 29.465862, 36.337372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542097, 29.117561, 36.272152>,  <31.653433, 28.908581, 36.233021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542097, 29.117561, 36.272152>,  <31.356537, 29.465862, 36.337372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542097, 29.117561, 36.272152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204615, -0.284398, 0.936616,
		-0.861933, -0.401134, -0.310102,
		0.463901, -0.870752, -0.163053,
		31.681267, 28.856337, 36.223236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941593, 28.925673, 36.582512>,  <31.356537, 29.465862, 36.337372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941593, 28.925673, 36.582512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293692, 28.735909, 36.586590>,  <31.504950, 28.622049, 36.589035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293692, 28.735909, 36.586590>,  <30.941593, 28.925673, 36.582512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293692, 28.735909, 36.586590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232989, -0.413384, 0.880244,
		-0.413384, -0.777205, -0.474411,
		-0.880244, 0.474411, -0.010194,
		31.557764, 28.593586, 36.589649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811010, 28.275276, 36.752750>,  <30.941593, 28.925673, 36.582512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811010, 28.275276, 36.752750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.205044, 28.291218, 36.819710>,  <31.441463, 28.300783, 36.859886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.205044, 28.291218, 36.819710>,  <30.811010, 28.275276, 36.752750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205044, 28.291218, 36.819710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132784, -0.442729, 0.886769,
		0.109456, -0.895769, -0.430833,
		0.985083, 0.039854, 0.167403,
		31.500568, 28.303173, 36.869930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859770, 27.760571, 37.149990>,  <30.811010, 28.275276, 36.752750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859770, 27.760571, 37.149990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.202541, 27.954681, 37.219475>,  <31.408205, 28.071148, 37.261166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.202541, 27.954681, 37.219475>,  <30.859770, 27.760571, 37.149990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202541, 27.954681, 37.219475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007376, -0.348532, 0.937268,
		0.515381, -0.801891, -0.302247,
		0.856930, 0.485280, 0.173712,
		31.459620, 28.100266, 37.271587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211967, 27.261524, 37.510044>,  <30.859770, 27.760571, 37.149990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211967, 27.261524, 37.510044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.410000, 27.602997, 37.574696>,  <31.528820, 27.807880, 37.613487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.410000, 27.602997, 37.574696>,  <31.211967, 27.261524, 37.510044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410000, 27.602997, 37.574696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242352, -0.314331, 0.917857,
		0.834361, -0.415244, -0.362510,
		0.495083, 0.853679, 0.161631,
		31.558525, 27.859100, 37.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811502, 27.114971, 37.774693>,  <31.211967, 27.261524, 37.510044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811502, 27.114971, 37.774693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802504, 27.501934, 37.875580>,  <31.797104, 27.734112, 37.936111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802504, 27.501934, 37.875580>,  <31.811502, 27.114971, 37.774693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802504, 27.501934, 37.875580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371864, -0.226082, 0.900335,
		0.928015, 0.114043, -0.354659,
		-0.022495, 0.967409, 0.252216,
		31.795755, 27.792156, 37.951244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461353, 27.305620, 38.075848>,  <31.811502, 27.114971, 37.774693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461353, 27.305620, 38.075848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198616, 27.563309, 38.232582>,  <32.040974, 27.717922, 38.326622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198616, 27.563309, 38.232582>,  <32.461353, 27.305620, 38.075848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198616, 27.563309, 38.232582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373569, -0.173374, 0.911256,
		0.654987, 0.744929, -0.126783,
		-0.656840, 0.644223, 0.391840,
		32.001564, 27.756575, 38.350136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847717, 27.861042, 38.438541>,  <32.461353, 27.305620, 38.075848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847717, 27.861042, 38.438541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482437, 27.823532, 38.597172>,  <32.263268, 27.801025, 38.692348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482437, 27.823532, 38.597172>,  <32.847717, 27.861042, 38.438541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482437, 27.823532, 38.597172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402488, -0.055278, 0.913755,
		-0.063767, 0.994058, 0.088223,
		-0.913202, -0.093777, 0.396571,
		32.208477, 27.795399, 38.716145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.363245, 32.128983, 23.271576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969831, 32.057709, 23.259499>,  <30.733784, 32.014946, 23.252253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969831, 32.057709, 23.259499>,  <31.363245, 32.128983, 23.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969831, 32.057709, 23.259499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004232, -0.189749, 0.981824,
		-0.180671, 0.965530, 0.187378,
		-0.983535, -0.178180, -0.030195,
		30.674770, 32.004253, 23.250441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090427, 32.541649, 23.765570>,  <31.363245, 32.128983, 23.271576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090427, 32.541649, 23.765570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848923, 32.227940, 23.708458>,  <30.704020, 32.039715, 23.674191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848923, 32.227940, 23.708458>,  <31.090427, 32.541649, 23.765570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848923, 32.227940, 23.708458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049218, -0.142095, 0.988629,
		-0.795643, 0.603925, 0.047192,
		-0.603763, -0.784273, -0.142781,
		30.667793, 31.992659, 23.665625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537733, 32.622383, 24.268641>,  <31.090427, 32.541649, 23.765570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537733, 32.622383, 24.268641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581802, 32.240566, 24.157860>,  <30.608244, 32.011475, 24.091391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581802, 32.240566, 24.157860>,  <30.537733, 32.622383, 24.268641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581802, 32.240566, 24.157860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021414, -0.276305, 0.960832,
		-0.993681, -0.111790, -0.010002,
		0.110175, -0.954546, -0.276953,
		30.614855, 31.954203, 24.074774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149286, 32.251740, 24.657333>,  <30.537733, 32.622383, 24.268641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149286, 32.251740, 24.657333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369646, 31.950352, 24.513783>,  <30.501862, 31.769518, 24.427652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369646, 31.950352, 24.513783>,  <30.149286, 32.251740, 24.657333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369646, 31.950352, 24.513783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256571, -0.256285, 0.931928,
		-0.794155, -0.605475, 0.052132,
		0.550898, -0.753471, -0.358877,
		30.534916, 31.724310, 24.406118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062645, 31.631327, 25.077940>,  <30.149286, 32.251740, 24.657333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062645, 31.631327, 25.077940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391951, 31.521381, 24.879269>,  <30.589533, 31.455414, 24.760065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391951, 31.521381, 24.879269>,  <30.062645, 31.631327, 25.077940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391951, 31.521381, 24.879269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364552, -0.414687, 0.833749,
		-0.435127, -0.867461, -0.241198,
		0.823266, -0.274857, -0.496676,
		30.638929, 31.438923, 24.730265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226408, 30.865383, 25.132561>,  <30.062645, 31.631327, 25.077940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226408, 30.865383, 25.132561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566324, 31.065079, 25.064892>,  <30.770273, 31.184896, 25.024290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566324, 31.065079, 25.064892>,  <30.226408, 30.865383, 25.132561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566324, 31.065079, 25.064892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427250, -0.464375, 0.775766,
		0.308734, -0.731516, -0.607921,
		0.849788, 0.499240, -0.169172,
		30.821260, 31.214851, 25.014141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772703, 30.364607, 25.109562>,  <30.226408, 30.865383, 25.132561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772703, 30.364607, 25.109562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955109, 30.707932, 25.203671>,  <31.064552, 30.913927, 25.260136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955109, 30.707932, 25.203671>,  <30.772703, 30.364607, 25.109562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955109, 30.707932, 25.203671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568992, -0.484448, 0.664499,
		0.684324, -0.169154, -0.709287,
		0.456015, 0.858311, 0.235271,
		31.091913, 30.965425, 25.274252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521189, 30.183094, 25.281704>,  <30.772703, 30.364607, 25.109562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521189, 30.183094, 25.281704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468006, 30.540890, 25.452450>,  <31.436096, 30.755568, 25.554897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468006, 30.540890, 25.452450>,  <31.521189, 30.183094, 25.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468006, 30.540890, 25.452450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501188, -0.310888, 0.807564,
		0.855064, 0.321310, -0.406972,
		-0.132956, 0.894488, 0.426866,
		31.428120, 30.809237, 25.580509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142239, 30.289186, 25.645943>,  <31.521189, 30.183094, 25.281704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142239, 30.289186, 25.645943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900549, 30.533966, 25.850071>,  <31.755535, 30.680834, 25.972548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900549, 30.533966, 25.850071>,  <32.142239, 30.289186, 25.645943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900549, 30.533966, 25.850071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313505, -0.406222, 0.858311,
		0.732545, 0.678604, 0.053602,
		-0.604228, 0.611947, 0.510322,
		31.719280, 30.717550, 26.003168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540894, 30.438175, 26.080429>,  <32.142239, 30.289186, 25.645943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540894, 30.438175, 26.080429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194393, 30.559326, 26.239365>,  <31.986494, 30.632017, 26.334726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194393, 30.559326, 26.239365>,  <32.540894, 30.438175, 26.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194393, 30.559326, 26.239365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301319, -0.317659, 0.899055,
		0.398520, 0.898532, 0.183910,
		-0.866250, 0.302876, 0.397338,
		31.934519, 30.650188, 26.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722347, 30.836884, 26.636440>,  <32.540894, 30.438175, 26.080429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722347, 30.836884, 26.636440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342892, 30.724262, 26.694134>,  <32.115219, 30.656689, 26.728750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342892, 30.724262, 26.694134>,  <32.722347, 30.836884, 26.636440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342892, 30.724262, 26.694134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169585, -0.067713, 0.983187,
		-0.267054, 0.957153, 0.111982,
		-0.948643, -0.281554, 0.144236,
		32.058300, 30.639795, 26.737404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401649, 31.215895, 27.234507>,  <32.722347, 30.836884, 26.636440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401649, 31.215895, 27.234507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190422, 30.879036, 27.190811>,  <32.063686, 30.676920, 27.164595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190422, 30.879036, 27.190811>,  <32.401649, 31.215895, 27.234507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190422, 30.879036, 27.190811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202259, -0.249661, 0.946974,
		-0.824765, 0.477970, 0.302170,
		-0.528066, -0.842148, -0.109238,
		32.032001, 30.626392, 27.158039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573402, 31.852039, 27.495457>,  <32.401649, 31.215895, 27.234507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573402, 31.852039, 27.495457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961124, 31.847748, 27.593712>,  <33.193756, 31.845173, 27.652664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961124, 31.847748, 27.593712>,  <32.573402, 31.852039, 27.495457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961124, 31.847748, 27.593712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225348, 0.438341, -0.870101,
		-0.098338, 0.898745, 0.427302,
		0.969303, -0.010727, 0.245636,
		33.251915, 31.844530, 27.667402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750721, 32.504230, 27.357281>,  <32.573402, 31.852039, 27.495457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750721, 32.504230, 27.357281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083641, 32.283039, 27.341888>,  <33.283394, 32.150322, 27.332653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083641, 32.283039, 27.341888>,  <32.750721, 32.504230, 27.357281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083641, 32.283039, 27.341888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277228, 0.475368, -0.834967,
		0.480016, 0.684278, 0.548952,
		0.832304, -0.552982, -0.038483,
		33.333332, 32.117146, 27.330343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240124, 32.939392, 27.005325>,  <32.750721, 32.504230, 27.357281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240124, 32.939392, 27.005325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419323, 32.585423, 26.954407>,  <33.526844, 32.373039, 26.923855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419323, 32.585423, 26.954407>,  <33.240124, 32.939392, 27.005325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419323, 32.585423, 26.954407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410251, 0.329993, -0.850176,
		0.794348, 0.328656, 0.510878,
		0.448001, -0.884924, -0.127298,
		33.553722, 32.319946, 26.916218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820538, 33.193356, 26.894484>,  <33.240124, 32.939392, 27.005325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820538, 33.193356, 26.894484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844177, 32.825649, 26.738815>,  <33.858360, 32.605026, 26.645414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844177, 32.825649, 26.738815>,  <33.820538, 33.193356, 26.894484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844177, 32.825649, 26.738815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443040, 0.373507, -0.814990,
		0.894552, -0.124249, 0.429348,
		0.059102, -0.919269, -0.389168,
		33.861908, 32.549870, 26.622065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544785, 33.078026, 26.570869>,  <33.820538, 33.193356, 26.894484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544785, 33.078026, 26.570869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281769, 32.831097, 26.398106>,  <34.123959, 32.682938, 26.294447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281769, 32.831097, 26.398106>,  <34.544785, 33.078026, 26.570869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281769, 32.831097, 26.398106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369353, 0.235528, -0.898947,
		0.656671, -0.750622, 0.073142,
		-0.657542, -0.617328, -0.431909,
		34.084507, 32.645897, 26.268534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927311, 32.512794, 26.251211>,  <34.544785, 33.078026, 26.570869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927311, 32.512794, 26.251211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572788, 32.549091, 26.069565>,  <34.360073, 32.570869, 25.960577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572788, 32.549091, 26.069565>,  <34.927311, 32.512794, 26.251211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572788, 32.549091, 26.069565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462532, 0.125206, -0.877717,
		-0.022792, -0.987972, -0.152944,
		-0.886310, 0.090747, -0.454115,
		34.306896, 32.576317, 25.933331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969097, 32.102169, 25.730751>,  <34.927311, 32.512794, 26.251211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969097, 32.102169, 25.730751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675415, 32.363033, 25.655247>,  <34.499207, 32.519554, 25.609945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675415, 32.363033, 25.655247>,  <34.969097, 32.102169, 25.730751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675415, 32.363033, 25.655247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383662, 0.169160, -0.907848,
		-0.560135, -0.738964, -0.374408,
		-0.734202, 0.652164, -0.188760,
		34.455154, 32.558681, 25.598619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752785, 32.020710, 24.926228>,  <34.969097, 32.102169, 25.730751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752785, 32.020710, 24.926228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656242, 32.379715, 25.073864>,  <34.598316, 32.595116, 25.162445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656242, 32.379715, 25.073864>,  <34.752785, 32.020710, 24.926228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656242, 32.379715, 25.073864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509830, 0.440887, -0.738710,
		-0.825725, 0.009885, -0.563985,
		-0.241351, 0.897508, 0.369091,
		34.583836, 32.648968, 25.184591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920174, 32.483932, 24.438526>,  <34.752785, 32.020710, 24.926228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920174, 32.483932, 24.438526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786049, 32.760445, 24.694557>,  <34.705574, 32.926353, 24.848175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786049, 32.760445, 24.694557>,  <34.920174, 32.483932, 24.438526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786049, 32.760445, 24.694557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379722, 0.720946, -0.579696,
		-0.862194, 0.048673, -0.504235,
		-0.335310, 0.691280, 0.640078,
		34.685455, 32.967827, 24.886581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638607, 33.013470, 24.012503>,  <34.920174, 32.483932, 24.438526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638607, 33.013470, 24.012503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746983, 33.160557, 24.368340>,  <34.812008, 33.248810, 24.581842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746983, 33.160557, 24.368340>,  <34.638607, 33.013470, 24.012503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746983, 33.160557, 24.368340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380342, 0.808063, -0.449859,
		-0.884270, 0.460233, 0.079073,
		0.270936, 0.367722, 0.889592,
		34.828262, 33.270874, 24.635218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415260, 33.741241, 23.933802>,  <34.638607, 33.013470, 24.012503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415260, 33.741241, 23.933802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707840, 33.714169, 24.205212>,  <34.883389, 33.697926, 24.368057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707840, 33.714169, 24.205212>,  <34.415260, 33.741241, 23.933802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707840, 33.714169, 24.205212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455104, 0.789467, -0.411853,
		-0.507799, 0.610050, 0.608259,
		0.731451, -0.067683, 0.678527,
		34.927277, 33.693863, 24.408770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639622, 34.363483, 23.855196>,  <34.415260, 33.741241, 23.933802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639622, 34.363483, 23.855196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919884, 34.182522, 24.075890>,  <35.088043, 34.073944, 24.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919884, 34.182522, 24.075890>,  <34.639622, 34.363483, 23.855196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919884, 34.182522, 24.075890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690014, 0.626397, -0.362641,
		-0.181545, 0.634791, 0.751054,
		0.700659, -0.452402, 0.551734,
		35.130081, 34.046803, 24.241409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031136, 34.896893, 24.218700>,  <34.639622, 34.363483, 23.855196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031136, 34.896893, 24.218700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268436, 34.575859, 24.193699>,  <35.410816, 34.383240, 24.178698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268436, 34.575859, 24.193699>,  <35.031136, 34.896893, 24.218700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268436, 34.575859, 24.193699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802246, 0.595863, -0.036726,
		0.066721, -0.028357, 0.997369,
		0.593253, -0.802586, -0.062506,
		35.446411, 34.335083, 24.174948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727367, 35.063217, 24.607037>,  <35.031136, 34.896893, 24.218700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727367, 35.063217, 24.607037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796875, 34.769146, 24.344948>,  <35.838577, 34.592701, 24.187695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796875, 34.769146, 24.344948>,  <35.727367, 35.063217, 24.607037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796875, 34.769146, 24.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864461, 0.432572, -0.256104,
		0.471712, -0.521910, 0.710702,
		0.173766, -0.735181, -0.655221,
		35.849007, 34.548592, 24.148382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974865, 35.685696, 24.706570>,  <35.727367, 35.063217, 24.607037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974865, 35.685696, 24.706570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069710, 36.034657, 24.877537>,  <36.126617, 36.244034, 24.980118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069710, 36.034657, 24.877537>,  <35.974865, 35.685696, 24.706570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069710, 36.034657, 24.877537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089039, 0.457628, -0.884675,
		-0.967394, 0.171707, 0.186186,
		0.237108, 0.872407, 0.427418,
		36.140842, 36.296379, 25.005762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496593, 36.214680, 24.582417>,  <35.974865, 35.685696, 24.706570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496593, 36.214680, 24.582417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835354, 36.420135, 24.637455>,  <36.038609, 36.543407, 24.670477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835354, 36.420135, 24.637455>,  <35.496593, 36.214680, 24.582417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835354, 36.420135, 24.637455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229924, 0.587039, -0.776221,
		-0.479473, 0.625746, 0.615263,
		0.846900, 0.513641, 0.137595,
		36.089424, 36.574226, 24.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793415, 36.558044, 24.555490>,  <35.496593, 36.214680, 24.582417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793415, 36.558044, 24.555490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398281, 36.602654, 24.512131>,  <34.161201, 36.629417, 24.486115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398281, 36.602654, 24.512131>,  <34.793415, 36.558044, 24.555490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398281, 36.602654, 24.512131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129788, -0.207118, 0.969669,
		0.085684, 0.971939, 0.219071,
		-0.987833, 0.111518, -0.108399,
		34.101933, 36.636108, 24.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561031, 37.059620, 25.029644>,  <34.793415, 36.558044, 24.555490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561031, 37.059620, 25.029644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237595, 36.842953, 24.937748>,  <34.043533, 36.712952, 24.882610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237595, 36.842953, 24.937748>,  <34.561031, 37.059620, 25.029644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237595, 36.842953, 24.937748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189253, -0.130274, 0.973248,
		-0.557107, 0.830436, 0.002826,
		-0.808589, -0.541668, -0.229740,
		33.995018, 36.680450, 24.868826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078674, 37.231537, 25.515976>,  <34.561031, 37.059620, 25.029644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078674, 37.231537, 25.515976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942791, 36.884655, 25.370346>,  <33.861259, 36.676525, 25.282969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942791, 36.884655, 25.370346>,  <34.078674, 37.231537, 25.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942791, 36.884655, 25.370346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205749, -0.309200, 0.928474,
		-0.917749, 0.390322, -0.073387,
		-0.339713, -0.867205, -0.364076,
		33.840878, 36.624493, 25.261124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385132, 37.118347, 25.734707>,  <34.078674, 37.231537, 25.515976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385132, 37.118347, 25.734707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510166, 36.758507, 25.612717>,  <33.585186, 36.542603, 25.539522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510166, 36.758507, 25.612717>,  <33.385132, 37.118347, 25.734707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510166, 36.758507, 25.612717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146623, -0.362911, 0.920216,
		-0.938506, -0.242927, -0.245341,
		0.312583, -0.899601, -0.304975,
		33.603943, 36.488625, 25.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878330, 36.659458, 26.092295>,  <33.385132, 37.118347, 25.734707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878330, 36.659458, 26.092295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208336, 36.460041, 25.985859>,  <33.406342, 36.340389, 25.921997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208336, 36.460041, 25.985859>,  <32.878330, 36.659458, 26.092295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208336, 36.460041, 25.985859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006384, -0.462609, 0.886539,
		-0.565072, -0.733108, -0.378478,
		0.825016, -0.498543, -0.266088,
		33.455841, 36.310478, 25.906033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689465, 35.962746, 26.291548>,  <32.878330, 36.659458, 26.092295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689465, 35.962746, 26.291548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087612, 35.961117, 26.253136>,  <33.326500, 35.960140, 26.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087612, 35.961117, 26.253136>,  <32.689465, 35.962746, 26.291548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087612, 35.961117, 26.253136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079767, -0.522421, 0.848948,
		-0.053626, -0.852678, -0.519678,
		0.995370, -0.004072, -0.096031,
		33.386223, 35.959896, 26.224327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929165, 35.252186, 26.334431>,  <32.689465, 35.962746, 26.291548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929165, 35.252186, 26.334431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226650, 35.497433, 26.441002>,  <33.405140, 35.644581, 26.504944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226650, 35.497433, 26.441002>,  <32.929165, 35.252186, 26.334431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226650, 35.497433, 26.441002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047837, -0.446331, 0.893588,
		0.666789, -0.651825, -0.361270,
		0.743710, 0.613117, 0.266427,
		33.449764, 35.681366, 26.520929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396938, 34.836246, 26.664267>,  <32.929165, 35.252186, 26.334431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396938, 34.836246, 26.664267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508583, 35.202404, 26.780300>,  <33.575569, 35.422100, 26.849920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508583, 35.202404, 26.780300>,  <33.396938, 34.836246, 26.664267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508583, 35.202404, 26.780300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168827, -0.344162, 0.923607,
		0.945301, -0.208816, -0.250603,
		0.279111, 0.915395, 0.290083,
		33.592316, 35.477024, 26.867325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955303, 34.653767, 26.996439>,  <33.396938, 34.836246, 26.664267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955303, 34.653767, 26.996439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867062, 35.023834, 27.119984>,  <33.814117, 35.245876, 27.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867062, 35.023834, 27.119984>,  <33.955303, 34.653767, 26.996439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867062, 35.023834, 27.119984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396087, -0.204400, 0.895173,
		0.891317, 0.319818, -0.321355,
		-0.220608, 0.925169, 0.308861,
		33.800880, 35.301384, 27.212643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496731, 34.829704, 27.391756>,  <33.955303, 34.653767, 26.996439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496731, 34.829704, 27.391756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203041, 35.075134, 27.507984>,  <34.026825, 35.222393, 27.577721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203041, 35.075134, 27.507984>,  <34.496731, 34.829704, 27.391756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203041, 35.075134, 27.507984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235602, -0.171113, 0.956667,
		0.636711, 0.770870, -0.018924,
		-0.734228, 0.613579, 0.290568,
		33.982773, 35.259209, 27.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873398, 35.278519, 27.912451>,  <34.496731, 34.829704, 27.391756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873398, 35.278519, 27.912451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474754, 35.293301, 27.941849>,  <34.235569, 35.302170, 27.959488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474754, 35.293301, 27.941849>,  <34.873398, 35.278519, 27.912451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474754, 35.293301, 27.941849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069611, -0.097179, 0.992830,
		0.043829, 0.994581, 0.094277,
		-0.996611, 0.036952, 0.073493,
		34.175770, 35.304386, 27.963896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721592, 35.818359, 28.394539>,  <34.873398, 35.278519, 27.912451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721592, 35.818359, 28.394539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399296, 35.581654, 28.404308>,  <34.205917, 35.439632, 28.410170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399296, 35.581654, 28.404308>,  <34.721592, 35.818359, 28.394539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399296, 35.581654, 28.404308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027381, 0.003974, 0.999617,
		-0.591632, 0.806103, 0.013001,
		-0.805743, -0.591762, 0.024423,
		34.157574, 35.404125, 28.411634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304329, 36.052544, 28.857342>,  <34.721592, 35.818359, 28.394539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304329, 36.052544, 28.857342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155308, 35.682732, 28.825211>,  <34.065895, 35.460846, 28.805931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155308, 35.682732, 28.825211>,  <34.304329, 36.052544, 28.857342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155308, 35.682732, 28.825211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043549, -0.069048, 0.996662,
		-0.926987, 0.374812, -0.014538,
		-0.372557, -0.924526, -0.080330,
		34.043541, 35.405373, 28.801111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541412, 35.943867, 29.193863>,  <34.304329, 36.052544, 28.857342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541412, 35.943867, 29.193863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699459, 35.576542, 29.203594>,  <33.794289, 35.356148, 29.209433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699459, 35.576542, 29.203594>,  <33.541412, 35.943867, 29.193863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699459, 35.576542, 29.203594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262181, -0.087346, 0.961058,
		-0.880421, -0.386111, -0.275275,
		0.395120, -0.918308, 0.024329,
		33.817993, 35.301048, 29.210894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142437, 35.649601, 29.703463>,  <33.541412, 35.943867, 29.193863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142437, 35.649601, 29.703463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462296, 35.411850, 29.669357>,  <33.654213, 35.269199, 29.648893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462296, 35.411850, 29.669357>,  <33.142437, 35.649601, 29.703463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462296, 35.411850, 29.669357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084530, -0.252012, 0.964025,
		-0.594487, -0.763676, -0.251764,
		0.799650, -0.594382, -0.085264,
		33.702190, 35.233536, 29.643778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984241, 35.095539, 30.197441>,  <33.142437, 35.649601, 29.703463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984241, 35.095539, 30.197441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371746, 35.044563, 30.112347>,  <33.604248, 35.013977, 30.061291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371746, 35.044563, 30.112347>,  <32.984241, 35.095539, 30.197441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371746, 35.044563, 30.112347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168761, -0.289763, 0.942103,
		-0.181703, -0.948576, -0.259205,
		0.968764, -0.127439, -0.212734,
		33.662376, 35.006332, 30.048527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158207, 34.405167, 30.404411>,  <32.984241, 35.095539, 30.197441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158207, 34.405167, 30.404411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478874, 34.644157, 30.396973>,  <33.671276, 34.787552, 30.392509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478874, 34.644157, 30.396973>,  <33.158207, 34.405167, 30.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478874, 34.644157, 30.396973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105742, -0.111123, 0.988165,
		0.588342, -0.794147, -0.152262,
		0.801669, 0.597480, -0.018596,
		33.719376, 34.823402, 30.391394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721764, 34.020863, 30.768427>,  <33.158207, 34.405167, 30.404411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721764, 34.020863, 30.768427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812462, 34.410435, 30.771099>,  <33.866879, 34.644180, 30.772701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812462, 34.410435, 30.771099>,  <33.721764, 34.020863, 30.768427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812462, 34.410435, 30.771099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264285, -0.068125, 0.962035,
		0.937412, -0.216368, -0.272842,
		0.226741, 0.973932, 0.006679,
		33.880486, 34.702614, 30.773102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246536, 34.071156, 31.238346>,  <33.721764, 34.020863, 30.768427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246536, 34.071156, 31.238346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122993, 34.450581, 31.210510>,  <34.048866, 34.678234, 31.193808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122993, 34.450581, 31.210510>,  <34.246536, 34.071156, 31.238346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122993, 34.450581, 31.210510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208731, 0.138984, 0.968047,
		0.927922, 0.284462, -0.240920,
		-0.308857, 0.948559, -0.069591,
		34.030338, 34.735149, 31.189632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735069, 34.418674, 31.494987>,  <34.246536, 34.071156, 31.238346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735069, 34.418674, 31.494987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400288, 34.634571, 31.531185>,  <34.199417, 34.764107, 31.552904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400288, 34.634571, 31.531185>,  <34.735069, 34.418674, 31.494987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400288, 34.634571, 31.531185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147498, 0.063229, 0.987039,
		0.527020, 0.839455, -0.132530,
		-0.836955, 0.539738, 0.090496,
		34.149200, 34.796494, 31.558334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816036, 34.764896, 32.075123>,  <34.735069, 34.418674, 31.494987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816036, 34.764896, 32.075123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427814, 34.840221, 32.015041>,  <34.194881, 34.885418, 31.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427814, 34.840221, 32.015041>,  <34.816036, 34.764896, 32.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427814, 34.840221, 32.015041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174793, -0.121521, 0.977077,
		0.165747, 0.974561, 0.150860,
		-0.970554, 0.188317, -0.150205,
		34.136650, 34.896717, 31.969980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638161, 35.401062, 32.526405>,  <34.816036, 34.764896, 32.075123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638161, 35.401062, 32.526405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311260, 35.189373, 32.435165>,  <34.115120, 35.062359, 32.380421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311260, 35.189373, 32.435165>,  <34.638161, 35.401062, 32.526405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311260, 35.189373, 32.435165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229443, -0.064274, 0.971198,
		-0.528640, 0.846045, -0.068899,
		-0.817249, -0.529222, -0.228096,
		34.066086, 35.030605, 32.366737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176983, 35.820286, 32.798046>,  <34.638161, 35.401062, 32.526405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176983, 35.820286, 32.798046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035748, 35.448414, 32.756050>,  <33.951004, 35.225292, 32.730854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035748, 35.448414, 32.756050>,  <34.176983, 35.820286, 32.798046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035748, 35.448414, 32.756050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337146, 0.021757, 0.941201,
		-0.872731, 0.367727, -0.321120,
		-0.353092, -0.929679, -0.104990,
		33.929821, 35.169510, 32.724552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479797, 35.799168, 32.990528>,  <34.176983, 35.820286, 32.798046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479797, 35.799168, 32.990528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574116, 35.410500, 32.984180>,  <33.630707, 35.177299, 32.980373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574116, 35.410500, 32.984180>,  <33.479797, 35.799168, 32.990528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574116, 35.410500, 32.984180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285354, -0.084837, 0.954660,
		-0.928963, -0.220581, -0.297275,
		0.235799, -0.971672, -0.015867,
		33.644855, 35.118999, 32.979420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818756, 35.479416, 33.400196>,  <33.479797, 35.799168, 32.990528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818756, 35.479416, 33.400196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127163, 35.225025, 33.413319>,  <33.312206, 35.072392, 33.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127163, 35.225025, 33.413319>,  <32.818756, 35.479416, 33.400196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127163, 35.225025, 33.413319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259817, -0.267117, 0.927978,
		-0.581406, -0.724007, -0.371188,
		0.771013, -0.635973, 0.032806,
		33.358467, 35.034233, 33.423161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603199, 35.040073, 33.799458>,  <32.818756, 35.479416, 33.400196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603199, 35.040073, 33.799458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985374, 34.923500, 33.818268>,  <33.214680, 34.853558, 33.829556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985374, 34.923500, 33.818268>,  <32.603199, 35.040073, 33.799458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985374, 34.923500, 33.818268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180227, -0.449684, 0.874816,
		-0.233801, -0.844306, -0.482167,
		0.955435, -0.291432, 0.047030,
		33.272003, 34.836071, 33.832378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057632, 34.834560, 33.552628>,  <32.603199, 35.040073, 33.799458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057632, 34.834560, 33.552628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661509, 34.885300, 33.575241>,  <31.423834, 34.915745, 33.588810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661509, 34.885300, 33.575241>,  <32.057632, 34.834560, 33.552628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661509, 34.885300, 33.575241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022400, 0.255875, -0.966450,
		-0.137061, -0.958351, -0.250554,
		-0.990310, 0.126850, 0.056537,
		31.364416, 34.923355, 33.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787106, 34.445297, 32.957336>,  <32.057632, 34.834560, 33.552628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787106, 34.445297, 32.957336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502249, 34.696732, 33.082390>,  <31.331335, 34.847591, 33.157421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502249, 34.696732, 33.082390>,  <31.787106, 34.445297, 32.957336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502249, 34.696732, 33.082390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121065, 0.328689, -0.936646,
		-0.691518, -0.704874, -0.157974,
		-0.712142, 0.628583, 0.312630,
		31.288607, 34.885307, 33.176178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216112, 34.340012, 32.471985>,  <31.787106, 34.445297, 32.957336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216112, 34.340012, 32.471985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144945, 34.693718, 32.644688>,  <31.102245, 34.905941, 32.748310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144945, 34.693718, 32.644688>,  <31.216112, 34.340012, 32.471985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144945, 34.693718, 32.644688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316727, 0.363949, -0.875914,
		-0.931681, -0.292587, 0.215320,
		-0.177916, 0.884270, 0.431755,
		31.091570, 34.959000, 32.774216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607899, 34.594673, 32.205719>,  <31.216112, 34.340012, 32.471985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607899, 34.594673, 32.205719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750608, 34.925549, 32.379375>,  <30.836233, 35.124073, 32.483570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750608, 34.925549, 32.379375>,  <30.607899, 34.594673, 32.205719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750608, 34.925549, 32.379375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472917, 0.560698, -0.679682,
		-0.805644, 0.037180, 0.591232,
		0.356773, 0.827185, 0.434140,
		30.857641, 35.173702, 32.509617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120548, 35.143864, 32.111870>,  <30.607899, 34.594673, 32.205719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120548, 35.143864, 32.111870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458862, 35.346767, 32.178005>,  <30.661852, 35.468510, 32.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458862, 35.346767, 32.178005>,  <30.120548, 35.143864, 32.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458862, 35.346767, 32.178005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205421, 0.595622, -0.776554,
		-0.492388, 0.622837, 0.607971,
		0.845787, 0.507256, 0.165334,
		30.712599, 35.498943, 32.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
