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
	<-0.051335, 3.590224, 4.389544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.099384, 3.975044, 4.291542>,  <-0.128214, 4.205937, 4.232741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.099384, 3.975044, 4.291542>,  <-0.051335, 3.590224, 4.389544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.099384, 3.975044, 4.291542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992758, 0.116687, -0.028548,
		0.001124, -0.246658, -0.969102,
		-0.120123, 0.962052, -0.245003,
		-0.135421, 4.263660, 4.218041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.256292, 3.770041, 3.766547>,  <-0.051335, 3.590224, 4.389544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.256292, 3.770041, 3.766547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275543, 4.103455, 3.986694>,  <0.287094, 4.303503, 4.118783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275543, 4.103455, 3.986694>,  <0.256292, 3.770041, 3.766547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.275543, 4.103455, 3.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951964, 0.128542, -0.277923,
		-0.302404, 0.537306, -0.787308,
		0.048127, 0.833534, 0.550368,
		0.289981, 4.353515, 4.151804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.322757, 4.455870, 3.372554>,  <0.256292, 3.770041, 3.766547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.322757, 4.455870, 3.372554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505184, 4.473793, 3.728081>,  <0.614641, 4.484547, 3.941397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505184, 4.473793, 3.728081>,  <0.322757, 4.455870, 3.372554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.505184, 4.473793, 3.728081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868540, 0.195314, -0.455511,
		-0.194008, 0.979717, 0.050159,
		0.456068, 0.044808, 0.888816,
		0.642005, 4.487235, 3.994726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801368, 5.133605, 3.514604>,  <0.322757, 4.455870, 3.372554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801368, 5.133605, 3.514604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945551, 4.812912, 3.705307>,  <1.032061, 4.620496, 3.819729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945551, 4.812912, 3.705307>,  <0.801368, 5.133605, 3.514604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.945551, 4.812912, 3.705307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798545, 0.001078, -0.601934,
		0.482076, 0.597684, 0.640607,
		0.360457, -0.801731, 0.476757,
		1.053688, 4.572392, 3.848334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.532334, 5.236264, 3.676851>,  <0.801368, 5.133605, 3.514604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.532334, 5.236264, 3.676851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.498198, 4.837730, 3.674538>,  <1.477716, 4.598610, 3.673149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.498198, 4.837730, 3.674538>,  <1.532334, 5.236264, 3.676851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.498198, 4.837730, 3.674538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860976, -0.070823, -0.503691,
		0.501435, -0.047965, 0.863865,
		-0.085341, -0.996335, -0.005784,
		1.472595, 4.538830, 3.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.154287, 5.011940, 4.049049>,  <1.532334, 5.236264, 3.676851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.154287, 5.011940, 4.049049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011652, 4.718010, 3.818268>,  <1.926071, 4.541652, 3.679799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011652, 4.718010, 3.818268>,  <2.154287, 5.011940, 4.049049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.011652, 4.718010, 3.818268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912467, -0.141313, -0.383973,
		0.200623, -0.663370, 0.720896,
		-0.356588, -0.734827, -0.576952,
		1.904675, 4.497562, 3.645182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.636804, 4.552583, 4.131553>,  <2.154287, 5.011940, 4.049049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.636804, 4.552583, 4.131553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449745, 4.478928, 3.785744>,  <2.337510, 4.434734, 3.578258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449745, 4.478928, 3.785744>,  <2.636804, 4.552583, 4.131553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.449745, 4.478928, 3.785744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878602, -0.203914, -0.431830,
		-0.096772, -0.961516, 0.257144,
		-0.467646, -0.184138, -0.864523,
		2.309451, 4.423686, 3.526387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989510, 3.930754, 3.856607>,  <2.636804, 4.552583, 4.131553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989510, 3.930754, 3.856607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.816132, 4.133957, 3.558868>,  <2.712105, 4.255878, 3.380225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.816132, 4.133957, 3.558868>,  <2.989510, 3.930754, 3.856607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.816132, 4.133957, 3.558868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755822, -0.244885, -0.607259,
		-0.490772, -0.825809, -0.277818,
		-0.433446, 0.508007, -0.744348,
		2.686098, 4.286359, 3.335564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.802894, 4.749926, 3.115662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.667107, 4.638939, 2.756157>,  <3.585635, 4.572347, 2.540454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.667107, 4.638939, 2.756157>,  <3.802894, 4.749926, 3.115662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.667107, 4.638939, 2.756157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928971, -0.051000, 0.366622,
		-0.147563, 0.959381, -0.240445,
		-0.339467, -0.277467, -0.898763,
		3.565267, 4.555699, 2.486528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.188970, 5.169809, 2.783518>,  <3.802894, 4.749926, 3.115662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.188970, 5.169809, 2.783518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.133960, 4.805367, 2.628098>,  <3.100954, 4.586701, 2.534846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.133960, 4.805367, 2.628098>,  <3.188970, 5.169809, 2.783518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133960, 4.805367, 2.628098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943421, 0.000990, 0.331596,
		-0.301734, 0.412169, -0.859694,
		-0.137524, -0.911107, -0.388550,
		3.092703, 4.532034, 2.511533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.565191, 5.154284, 2.420321>,  <3.188970, 5.169809, 2.783518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.565191, 5.154284, 2.420321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.637085, 4.789963, 2.568985>,  <2.680223, 4.571370, 2.658183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.637085, 4.789963, 2.568985>,  <2.565191, 5.154284, 2.420321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.637085, 4.789963, 2.568985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911787, -0.012435, 0.410475,
		-0.369241, -0.412652, -0.832694,
		0.179737, -0.910804, 0.371659,
		2.691007, 4.516722, 2.680483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.126428, 4.611235, 2.253279>,  <2.565191, 5.154284, 2.420321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.126428, 4.611235, 2.253279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261734, 4.467087, 2.601006>,  <2.342919, 4.380598, 2.809641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261734, 4.467087, 2.601006>,  <2.126428, 4.611235, 2.253279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.261734, 4.467087, 2.601006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939326, -0.073413, 0.335077,
		-0.056932, -0.929917, -0.363337,
		0.338267, -0.360369, 0.869316,
		2.363214, 4.358976, 2.861800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.648781, 4.029447, 2.447492>,  <2.126428, 4.611235, 2.253279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.648781, 4.029447, 2.447492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833887, 4.168503, 2.773682>,  <1.944950, 4.251936, 2.969395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833887, 4.168503, 2.773682>,  <1.648781, 4.029447, 2.447492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.833887, 4.168503, 2.773682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808722, -0.211198, 0.548967,
		0.363069, -0.913533, 0.183408,
		0.462764, 0.347639, 0.815473,
		1.972716, 4.272795, 3.018324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.477228, 3.465220, 2.964157>,  <1.648781, 4.029447, 2.447492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.477228, 3.465220, 2.964157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.605556, 3.788719, 3.161339>,  <1.682552, 3.982818, 3.279648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.605556, 3.788719, 3.161339>,  <1.477228, 3.465220, 2.964157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.605556, 3.788719, 3.161339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624838, -0.210419, 0.751865,
		0.711795, -0.549229, 0.437829,
		0.320819, 0.808747, 0.492954,
		1.701801, 4.031343, 3.309225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.266440, 3.294183, 3.658564>,  <1.477228, 3.465220, 2.964157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.266440, 3.294183, 3.658564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342987, 3.686264, 3.678879>,  <1.388915, 3.921513, 3.691068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342987, 3.686264, 3.678879>,  <1.266440, 3.294183, 3.658564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.342987, 3.686264, 3.678879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731726, 0.107986, 0.672990,
		0.654183, -0.165950, 0.737905,
		0.191367, 0.980204, 0.050788,
		1.400397, 3.980325, 3.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.508775, 3.500920, 4.412394>,  <1.266440, 3.294183, 3.658564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.508775, 3.500920, 4.412394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325802, 3.792908, 4.209259>,  <1.216018, 3.968101, 4.087378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325802, 3.792908, 4.209259>,  <1.508775, 3.500920, 4.412394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.325802, 3.792908, 4.209259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667926, 0.094970, 0.738143,
		0.587052, 0.676848, 0.444124,
		-0.457433, 0.729971, -0.507837,
		1.188572, 4.011899, 4.056908>
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
