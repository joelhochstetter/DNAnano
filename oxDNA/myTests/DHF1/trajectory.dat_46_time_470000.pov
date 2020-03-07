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
	<4.302881, 3.915109, 3.608275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.023226, 4.021530, 3.873732>,  <3.855433, 4.085383, 4.033006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.023226, 4.021530, 3.873732>,  <4.302881, 3.915109, 3.608275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.023226, 4.021530, 3.873732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213831, 0.807902, -0.549155,
		-0.682262, -0.525843, -0.507945,
		-0.699139, 0.266053, 0.663642,
		3.813484, 4.101346, 4.072824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.656044, 4.500149, 3.626232>,  <4.302881, 3.915109, 3.608275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.656044, 4.500149, 3.626232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695364, 4.782814, 3.906507>,  <4.718956, 4.952413, 4.074673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695364, 4.782814, 3.906507>,  <4.656044, 4.500149, 3.626232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.695364, 4.782814, 3.906507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897818, -0.240732, 0.368743,
		0.429255, -0.665338, 0.610790,
		0.098302, 0.706663, 0.700688,
		4.724854, 4.994813, 4.116714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.366597, 4.714669, 3.744561>,  <4.656044, 4.500149, 3.626232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.366597, 4.714669, 3.744561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.392590, 4.324211, 3.661694>,  <5.408185, 4.089936, 3.611973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.392590, 4.324211, 3.661694>,  <5.366597, 4.714669, 3.744561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.392590, 4.324211, 3.661694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681005, 0.108366, -0.724216,
		0.729390, 0.188143, -0.657718,
		0.064982, -0.976145, -0.207168,
		5.412084, 4.031368, 3.599543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.494366, 4.729498, 2.991722>,  <5.366597, 4.714669, 3.744561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.494366, 4.729498, 2.991722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.359833, 4.364853, 3.086246>,  <5.279113, 4.146066, 3.142961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.359833, 4.364853, 3.086246>,  <5.494366, 4.729498, 2.991722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.359833, 4.364853, 3.086246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550216, -0.013430, -0.834914,
		0.764292, -0.410831, -0.497067,
		-0.336333, -0.911613, 0.236310,
		5.258933, 4.091369, 3.157140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.664595, 4.326357, 2.409202>,  <5.494366, 4.729498, 2.991722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.664595, 4.326357, 2.409202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355572, 4.195045, 2.626600>,  <5.170158, 4.116258, 2.757039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355572, 4.195045, 2.626600>,  <5.664595, 4.326357, 2.409202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355572, 4.195045, 2.626600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606549, 0.128440, -0.784603,
		0.187766, -0.935806, -0.298348,
		-0.772556, -0.328285, 0.543495,
		5.123805, 4.096561, 2.789649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.137802, 3.837568, 1.962927>,  <5.664595, 4.326357, 2.409202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.137802, 3.837568, 1.962927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.952625, 4.029266, 2.261190>,  <4.841519, 4.144285, 2.440149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.952625, 4.029266, 2.261190>,  <5.137802, 3.837568, 1.962927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.952625, 4.029266, 2.261190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712644, 0.299002, -0.634616,
		-0.527091, -0.825180, 0.203111,
		-0.462941, 0.479246, 0.745660,
		4.813743, 4.173040, 2.484888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.390131, 3.603739, 2.095095>,  <5.137802, 3.837568, 1.962927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.390131, 3.603739, 2.095095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.474882, 3.985214, 2.180498>,  <4.525733, 4.214099, 2.231740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.474882, 3.985214, 2.180498>,  <4.390131, 3.603739, 2.095095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.474882, 3.985214, 2.180498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737524, 0.299373, -0.605339,
		-0.641223, -0.029210, 0.766798,
		0.211877, 0.953689, 0.213508,
		4.538445, 4.271321, 2.244550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.733639, 4.047999, 2.192503>,  <4.390131, 3.603739, 2.095095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.733639, 4.047999, 2.192503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.011789, 4.318779, 2.096010>,  <4.178679, 4.481247, 2.038115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.011789, 4.318779, 2.096010>,  <3.733639, 4.047999, 2.192503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.011789, 4.318779, 2.096010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610119, 0.378732, -0.695929,
		-0.379746, 0.631112, 0.676380,
		0.695376, 0.676949, -0.241232,
		4.220402, 4.521863, 2.023641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.240046, 2.264462, 3.774624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.150372, 1.877159, 3.818842>,  <5.096567, 1.644778, 3.845373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.150372, 1.877159, 3.818842>,  <5.240046, 2.264462, 3.774624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.150372, 1.877159, 3.818842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558447, 0.034675, -0.828815,
		0.798673, -0.247543, -0.548493,
		-0.224186, -0.968256, 0.110546,
		5.083116, 1.586682, 3.852006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.393471, 1.843727, 3.232016>,  <5.240046, 2.264462, 3.774624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.393471, 1.843727, 3.232016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.081774, 1.711037, 3.444708>,  <4.894755, 1.631422, 3.572323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.081774, 1.711037, 3.444708>,  <5.393471, 1.843727, 3.232016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.081774, 1.711037, 3.444708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618960, 0.274232, -0.735993,
		0.098329, -0.902638, -0.419018,
		-0.779243, -0.331725, 0.531731,
		4.848001, 1.611519, 3.604227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.004673, 1.397191, 2.777206>,  <5.393471, 1.843727, 3.232016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.004673, 1.397191, 2.777206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.720142, 1.499771, 3.038969>,  <4.549424, 1.561319, 3.196027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.720142, 1.499771, 3.038969>,  <5.004673, 1.397191, 2.777206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.720142, 1.499771, 3.038969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631674, 0.175050, -0.755213,
		-0.308229, -0.950574, 0.037476,
		-0.711325, 0.256451, 0.654408,
		4.506745, 1.576706, 3.235291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.326593, 1.005056, 2.827205>,  <5.004673, 1.397191, 2.777206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.326593, 1.005056, 2.827205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.253067, 1.380646, 2.943506>,  <4.208951, 1.606000, 3.013287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.253067, 1.380646, 2.943506>,  <4.326593, 1.005056, 2.827205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.253067, 1.380646, 2.943506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804758, 0.026091, -0.593029,
		-0.564426, -0.342993, 0.750853,
		-0.183814, 0.938975, 0.290753,
		4.197923, 1.662338, 3.030732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671450, 0.966488, 2.987495>,  <4.326593, 1.005056, 2.827205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671450, 0.966488, 2.987495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.746590, 1.356422, 2.939486>,  <3.791673, 1.590383, 2.910680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.746590, 1.356422, 2.939486>,  <3.671450, 0.966488, 2.987495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.746590, 1.356422, 2.939486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866541, 0.106957, -0.487511,
		-0.462406, 0.195584, 0.864828,
		0.187849, 0.974837, -0.120024,
		3.802944, 1.648874, 2.903478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173239, 1.353711, 3.403334>,  <3.671450, 0.966488, 2.987495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173239, 1.353711, 3.403334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.328400, 1.491047, 3.061188>,  <3.421496, 1.573448, 2.855900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.328400, 1.491047, 3.061188>,  <3.173239, 1.353711, 3.403334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.328400, 1.491047, 3.061188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899138, -0.063127, -0.433089,
		-0.202694, 0.937087, 0.284222,
		0.387900, 0.343340, -0.855366,
		3.444770, 1.594049, 2.804578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909679, 2.038363, 3.073969>,  <3.173239, 1.353711, 3.403334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909679, 2.038363, 3.073969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026581, 1.748775, 2.824022>,  <3.096722, 1.575023, 2.674054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.026581, 1.748775, 2.824022>,  <2.909679, 2.038363, 3.073969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.026581, 1.748775, 2.824022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953189, -0.167512, -0.251734,
		0.077575, 0.669186, -0.739035,
		0.292254, -0.723968, -0.624866,
		3.114257, 1.531585, 2.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.581924, 2.179948, 2.552379>,  <2.909679, 2.038363, 3.073969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.581924, 2.179948, 2.552379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.671375, 1.793198, 2.503157>,  <2.725046, 1.561148, 2.473623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.671375, 1.793198, 2.503157>,  <2.581924, 2.179948, 2.552379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.671375, 1.793198, 2.503157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898428, -0.155531, -0.410655,
		0.377913, 0.202391, -0.903449,
		0.223627, -0.966876, -0.123056,
		2.738463, 1.503135, 2.466240>
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
