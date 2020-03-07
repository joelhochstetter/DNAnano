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
	<4.265427, 3.367030, 4.729454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.942085, 3.305054, 4.502277>,  <3.748080, 3.267868, 4.365972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.942085, 3.305054, 4.502277>,  <4.265427, 3.367030, 4.729454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.942085, 3.305054, 4.502277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464365, -0.760797, -0.453379,
		-0.361841, -0.630223, 0.686943,
		-0.808354, -0.154941, -0.567942,
		3.699579, 3.258571, 4.331895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.866527, 2.655608, 4.930902>,  <4.265427, 3.367030, 4.729454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.866527, 2.655608, 4.930902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889355, 2.819778, 4.566860>,  <3.903051, 2.918281, 4.348435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889355, 2.819778, 4.566860>,  <3.866527, 2.655608, 4.930902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.889355, 2.819778, 4.566860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486776, -0.807334, -0.333557,
		-0.871660, -0.423982, -0.245860,
		0.057070, 0.410427, -0.910106,
		3.906476, 2.942907, 4.293828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.290278, 2.179966, 4.528697>,  <3.866527, 2.655608, 4.930902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.290278, 2.179966, 4.528697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.254944, 2.466248, 4.251579>,  <4.233743, 2.638016, 4.085309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.254944, 2.466248, 4.251579>,  <4.290278, 2.179966, 4.528697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254944, 2.466248, 4.251579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510150, -0.564867, -0.648593,
		-0.855537, -0.410723, -0.315218,
		-0.088336, 0.715704, -0.692795,
		4.228443, 2.680959, 4.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.000670, 1.956010, 3.864270>,  <4.290278, 2.179966, 4.528697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.000670, 1.956010, 3.864270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.216438, 2.281082, 3.776108>,  <4.345899, 2.476125, 3.723211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.216438, 2.281082, 3.776108>,  <4.000670, 1.956010, 3.864270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.216438, 2.281082, 3.776108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443513, -0.496715, -0.746037,
		-0.715767, 0.304675, -0.628371,
		0.539420, 0.812679, -0.220405,
		4.378264, 2.524886, 3.709986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896924, 2.120019, 3.180188>,  <4.000670, 1.956010, 3.864270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896924, 2.120019, 3.180188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257454, 2.255661, 3.287983>,  <4.473772, 2.337046, 3.352660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257454, 2.255661, 3.287983>,  <3.896924, 2.120019, 3.180188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257454, 2.255661, 3.287983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419608, -0.529251, -0.737443,
		-0.107445, 0.777754, -0.619318,
		0.901324, 0.339105, 0.269486,
		4.527851, 2.357393, 3.368829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.192927, 2.271720, 2.543798>,  <3.896924, 2.120019, 3.180188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.192927, 2.271720, 2.543798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.510803, 2.255035, 2.786030>,  <4.701529, 2.245024, 2.931369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.510803, 2.255035, 2.786030>,  <4.192927, 2.271720, 2.543798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.510803, 2.255035, 2.786030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595707, -0.138081, -0.791244,
		0.116624, 0.989542, -0.084883,
		0.794690, -0.041712, 0.605580,
		4.749210, 2.242522, 2.967704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.676620, 2.620350, 2.247043>,  <4.192927, 2.271720, 2.543798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.676620, 2.620350, 2.247043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.894577, 2.391922, 2.492634>,  <5.025352, 2.254865, 2.639988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.894577, 2.391922, 2.492634>,  <4.676620, 2.620350, 2.247043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.894577, 2.391922, 2.492634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618980, -0.220005, -0.753964,
		0.565645, 0.790870, 0.233602,
		0.544893, -0.571071, 0.613978,
		5.058045, 2.220601, 2.676827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312056, 2.709173, 2.093898>,  <4.676620, 2.620350, 2.247043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312056, 2.709173, 2.093898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.277149, 2.350098, 2.266659>,  <5.256205, 2.134652, 2.370316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.277149, 2.350098, 2.266659>,  <5.312056, 2.709173, 2.093898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.277149, 2.350098, 2.266659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482211, -0.417444, -0.770203,
		0.871698, 0.141055, 0.469304,
		-0.087267, -0.897688, 0.431903,
		5.250969, 2.080791, 2.396230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.955960, 1.898972, 1.018109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.871862, 1.531662, 1.152313>,  <0.821404, 1.311276, 1.232836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.871862, 1.531662, 1.152313>,  <0.955960, 1.898972, 1.018109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.871862, 1.531662, 1.152313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212853, 0.377942, 0.901029,
		-0.954196, 0.118023, -0.274918,
		-0.210245, -0.918276, 0.335510,
		0.808789, 1.256179, 1.252966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.319058, 1.788095, 1.246238>,  <0.955960, 1.898972, 1.018109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.319058, 1.788095, 1.246238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596294, 1.579681, 1.445496>,  <0.762636, 1.454633, 1.565050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596294, 1.579681, 1.445496>,  <0.319058, 1.788095, 1.246238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596294, 1.579681, 1.445496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379415, 0.323899, 0.866680,
		-0.612918, -0.789692, 0.026803,
		0.693091, -0.521034, 0.498144,
		0.804222, 1.423371, 1.594939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.006702, 1.352371, 1.634561>,  <0.319058, 1.788095, 1.246238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.006702, 1.352371, 1.634561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342794, 1.424881, 1.815102>,  <0.552492, 1.468387, 1.923426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342794, 1.424881, 1.815102>,  <-0.006702, 1.352371, 1.634561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.342794, 1.424881, 1.815102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485150, 0.391114, 0.782087,
		-0.034758, -0.902314, 0.429677,
		0.873740, 0.181273, 0.451352,
		0.604916, 1.479263, 1.950507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.172793, 0.940392, 2.306072>,  <-0.006702, 1.352371, 1.634561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.172793, 0.940392, 2.306072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.358603, 1.294540, 2.313354>,  <0.470090, 1.507030, 2.317724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.358603, 1.294540, 2.313354>,  <0.172793, 0.940392, 2.306072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.358603, 1.294540, 2.313354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435069, 0.210263, 0.875503,
		0.771317, -0.414616, 0.482870,
		0.464527, 0.885372, 0.018207,
		0.497962, 1.560152, 2.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.523283, 0.990047, 2.953126>,  <0.172793, 0.940392, 2.306072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.523283, 0.990047, 2.953126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.519516, 1.369995, 2.828125>,  <0.517256, 1.597964, 2.753124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.519516, 1.369995, 2.828125>,  <0.523283, 0.990047, 2.953126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.519516, 1.369995, 2.828125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428248, 0.278576, 0.859651,
		0.903612, 0.141925, 0.404156,
		-0.009418, 0.949870, -0.312503,
		0.516691, 1.654956, 2.734374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.675204, 1.376347, 3.502633>,  <0.523283, 0.990047, 2.953126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.675204, 1.376347, 3.502633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.490941, 1.626541, 3.250740>,  <0.380383, 1.776658, 3.099604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.490941, 1.626541, 3.250740>,  <0.675204, 1.376347, 3.502633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.490941, 1.626541, 3.250740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370227, 0.509416, 0.776806,
		0.806676, 0.590985, -0.003094,
		-0.460657, 0.625486, -0.629732,
		0.352744, 1.814187, 3.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.689165, 2.045240, 3.835725>,  <0.675204, 1.376347, 3.502633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.689165, 2.045240, 3.835725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.411160, 2.132141, 3.561569>,  <0.244356, 2.184282, 3.397076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.411160, 2.132141, 3.561569>,  <0.689165, 2.045240, 3.835725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.411160, 2.132141, 3.561569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487382, 0.558468, 0.671247,
		0.528598, 0.800572, -0.282257,
		-0.695013, 0.217253, -0.685389,
		0.202656, 2.197317, 3.355953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.635910, 2.819849, 3.826337>,  <0.689165, 2.045240, 3.835725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.635910, 2.819849, 3.826337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309655, 2.621170, 3.707657>,  <0.113903, 2.501963, 3.636449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309655, 2.621170, 3.707657>,  <0.635910, 2.819849, 3.826337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.309655, 2.621170, 3.707657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570820, 0.607211, 0.552684,
		-0.094357, 0.620151, -0.778787,
		-0.815636, -0.496696, -0.296700,
		0.064964, 2.472161, 3.618647>
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
