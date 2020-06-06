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
	<43.200844, 32.228142, 22.645462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305214, 32.576942, 22.811131>,  <43.367836, 32.786221, 22.910532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305214, 32.576942, 22.811131>,  <43.200844, 32.228142, 22.645462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305214, 32.576942, 22.811131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633592, 0.169004, -0.754983,
		-0.728340, 0.459410, -0.508393,
		0.260926, 0.871998, 0.414171,
		43.383492, 32.838543, 22.935381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058334, 32.769844, 22.190681>,  <43.200844, 32.228142, 22.645462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058334, 32.769844, 22.190681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374916, 32.835163, 22.426285>,  <43.564865, 32.874355, 22.567646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374916, 32.835163, 22.426285>,  <43.058334, 32.769844, 22.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374916, 32.835163, 22.426285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567944, 0.159688, -0.807428,
		-0.225905, 0.973568, 0.033645,
		0.791459, 0.163293, 0.589006,
		43.612354, 32.884151, 22.602987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502274, 32.674717, 21.736187>,  <43.058334, 32.769844, 22.190681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502274, 32.674717, 21.736187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186066, 32.718708, 21.977177>,  <41.996342, 32.745102, 22.121771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186066, 32.718708, 21.977177>,  <42.502274, 32.674717, 21.736187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186066, 32.718708, 21.977177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274415, 0.943071, 0.187920,
		-0.547512, 0.313883, -0.775699,
		-0.790524, 0.109975, 0.602477,
		41.948910, 32.751701, 22.157919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964325, 33.332851, 21.693346>,  <42.502274, 32.674717, 21.736187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964325, 33.332851, 21.693346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075333, 33.182842, 22.047146>,  <42.141937, 33.092834, 22.259426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075333, 33.182842, 22.047146>,  <41.964325, 33.332851, 21.693346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075333, 33.182842, 22.047146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303647, 0.907708, 0.289593,
		-0.911472, 0.188207, 0.365784,
		0.277522, -0.375025, 0.884499,
		42.158588, 33.070335, 22.312496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309540, 33.609566, 21.590212>,  <41.964325, 33.332851, 21.693346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309540, 33.609566, 21.590212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006447, 33.637737, 21.330708>,  <40.824593, 33.654640, 21.175005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006447, 33.637737, 21.330708>,  <41.309540, 33.609566, 21.590212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006447, 33.637737, 21.330708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464439, -0.756574, 0.460317,
		-0.458415, 0.650104, 0.605986,
		-0.757728, 0.070427, -0.648759,
		40.779129, 33.658867, 21.136080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693913, 33.654003, 21.973772>,  <41.309540, 33.609566, 21.590212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693913, 33.654003, 21.973772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581413, 33.495556, 21.624146>,  <40.513912, 33.400486, 21.414370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581413, 33.495556, 21.624146>,  <40.693913, 33.654003, 21.973772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581413, 33.495556, 21.624146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594580, -0.643005, 0.482721,
		-0.753242, 0.655466, -0.054680,
		-0.281248, -0.396118, -0.874065,
		40.497040, 33.376720, 21.361925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012367, 33.988956, 21.707443>,  <40.693913, 33.654003, 21.973772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012367, 33.988956, 21.707443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626511, 34.022388, 21.607460>,  <39.394997, 34.042450, 21.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626511, 34.022388, 21.607460>,  <40.012367, 33.988956, 21.707443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626511, 34.022388, 21.607460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253585, 0.552801, -0.793792,
		0.071828, -0.829111, -0.554451,
		-0.964642, 0.083584, -0.249956,
		39.337116, 34.047462, 21.532473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945244, 33.866970, 20.895088>,  <40.012367, 33.988956, 21.707443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945244, 33.866970, 20.895088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603100, 34.053761, 20.984795>,  <39.397816, 34.165836, 21.038618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603100, 34.053761, 20.984795>,  <39.945244, 33.866970, 20.895088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603100, 34.053761, 20.984795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152040, 0.640148, -0.753056,
		-0.495225, -0.610034, -0.618555,
		-0.855357, 0.466978, 0.224268,
		39.346493, 34.193855, 21.052074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638077, 33.930630, 20.320301>,  <39.945244, 33.866970, 20.895088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638077, 33.930630, 20.320301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498581, 34.222775, 20.555229>,  <39.414883, 34.398064, 20.696186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498581, 34.222775, 20.555229>,  <39.638077, 33.930630, 20.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498581, 34.222775, 20.555229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069433, 0.645077, -0.760956,
		-0.934644, -0.224597, -0.275676,
		-0.348741, 0.730364, 0.587323,
		39.393959, 34.441883, 20.731426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325981, 34.382572, 19.863962>,  <39.638077, 33.930630, 20.320301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325981, 34.382572, 19.863962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349621, 34.599247, 20.199364>,  <39.363804, 34.729252, 20.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349621, 34.599247, 20.199364>,  <39.325981, 34.382572, 19.863962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349621, 34.599247, 20.199364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171982, 0.821885, -0.543072,
		-0.983326, 0.176302, -0.044588,
		0.059098, 0.541685, 0.838502,
		39.367352, 34.761753, 20.450914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053791, 35.014462, 19.679420>,  <39.325981, 34.382572, 19.863962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053791, 35.014462, 19.679420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270920, 35.096851, 20.005100>,  <39.401196, 35.146286, 20.200508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270920, 35.096851, 20.005100>,  <39.053791, 35.014462, 19.679420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270920, 35.096851, 20.005100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360733, 0.818296, -0.447507,
		-0.758429, 0.536625, 0.369889,
		0.542823, 0.205971, 0.814198,
		39.433765, 35.158642, 20.249359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939060, 35.711735, 19.736858>,  <39.053791, 35.014462, 19.679420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939060, 35.711735, 19.736858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271832, 35.626606, 19.941837>,  <39.471493, 35.575527, 20.064825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271832, 35.626606, 19.941837>,  <38.939060, 35.711735, 19.736858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271832, 35.626606, 19.941837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454003, 0.792041, -0.408108,
		-0.319027, 0.572170, 0.755542,
		0.831927, -0.212821, 0.512450,
		39.521408, 35.562759, 20.095572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079590, 36.315018, 20.093430>,  <38.939060, 35.711735, 19.736858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079590, 36.315018, 20.093430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419865, 36.105774, 20.072693>,  <39.624027, 35.980228, 20.060251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419865, 36.105774, 20.072693>,  <39.079590, 36.315018, 20.093430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419865, 36.105774, 20.072693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491562, 0.826551, -0.274190,
		0.186281, 0.207766, 0.960277,
		0.850685, -0.523113, -0.051841,
		39.675072, 35.948841, 20.057140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663494, 36.634418, 20.618406>,  <39.079590, 36.315018, 20.093430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663494, 36.634418, 20.618406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842178, 36.439503, 20.318272>,  <39.949387, 36.322552, 20.138191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842178, 36.439503, 20.318272>,  <39.663494, 36.634418, 20.618406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842178, 36.439503, 20.318272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456740, 0.845350, -0.277078,
		0.769313, -0.218936, 0.600187,
		0.446706, -0.487289, -0.750335,
		39.976189, 36.293316, 20.093170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322662, 36.884460, 20.572926>,  <39.663494, 36.634418, 20.618406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322662, 36.884460, 20.572926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294701, 36.708996, 20.214554>,  <40.277924, 36.603718, 19.999531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294701, 36.708996, 20.214554>,  <40.322662, 36.884460, 20.572926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294701, 36.708996, 20.214554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375556, 0.820476, -0.431019,
		0.924160, -0.366603, 0.107384,
		-0.069907, -0.438659, -0.895930,
		40.273727, 36.577396, 19.945774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965729, 37.169189, 20.071550>,  <40.322662, 36.884460, 20.572926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965729, 37.169189, 20.071550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688366, 37.038181, 19.814827>,  <40.521950, 36.959576, 19.660793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688366, 37.038181, 19.814827>,  <40.965729, 37.169189, 20.071550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688366, 37.038181, 19.814827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190221, 0.775915, -0.601475,
		0.694984, -0.539152, -0.475723,
		-0.693406, -0.327523, -0.641807,
		40.480343, 36.939922, 19.622284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300861, 37.154873, 19.431023>,  <40.965729, 37.169189, 20.071550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300861, 37.154873, 19.431023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911201, 37.151913, 19.340702>,  <40.677406, 37.150135, 19.286510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911201, 37.151913, 19.340702>,  <41.300861, 37.154873, 19.431023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911201, 37.151913, 19.340702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172810, 0.619378, -0.765838,
		0.145525, -0.785058, -0.602085,
		-0.974145, -0.007403, -0.225801,
		40.618958, 37.149693, 19.272963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270290, 37.393963, 18.727196>,  <41.300861, 37.154873, 19.431023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270290, 37.393963, 18.727196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890858, 37.425446, 18.849827>,  <40.663197, 37.444336, 18.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890858, 37.425446, 18.849827>,  <41.270290, 37.393963, 18.727196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890858, 37.425446, 18.849827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184891, 0.648368, -0.738535,
		-0.256903, -0.757248, -0.600480,
		-0.948586, 0.078709, 0.306576,
		40.606281, 37.449059, 18.941799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875576, 37.326557, 18.166828>,  <41.270290, 37.393963, 18.727196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875576, 37.326557, 18.166828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626797, 37.505726, 18.423744>,  <40.477528, 37.613228, 18.577894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626797, 37.505726, 18.423744>,  <40.875576, 37.326557, 18.166828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626797, 37.505726, 18.423744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237496, 0.673697, -0.699805,
		-0.746171, -0.587787, -0.312627,
		-0.621952, 0.447927, 0.642291,
		40.440212, 37.640102, 18.616432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291039, 37.442181, 17.731310>,  <40.875576, 37.326557, 18.166828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291039, 37.442181, 17.731310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319366, 37.679653, 18.051941>,  <40.336365, 37.822136, 18.244320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319366, 37.679653, 18.051941>,  <40.291039, 37.442181, 17.731310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319366, 37.679653, 18.051941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219100, 0.793231, -0.568138,
		-0.973129, -0.135388, 0.186255,
		0.070824, 0.593679, 0.801579,
		40.340614, 37.857758, 18.292414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654087, 37.876423, 17.752903>,  <40.291039, 37.442181, 17.731310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654087, 37.876423, 17.752903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914722, 38.077499, 17.980141>,  <40.071106, 38.198143, 18.116484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914722, 38.077499, 17.980141>,  <39.654087, 37.876423, 17.752903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914722, 38.077499, 17.980141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304684, 0.859272, -0.410876,
		-0.694692, 0.094633, 0.713055,
		0.651591, 0.502689, 0.568096,
		40.110199, 38.228306, 18.150570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305630, 38.499237, 17.975372>,  <39.654087, 37.876423, 17.752903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305630, 38.499237, 17.975372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686718, 38.588917, 18.057411>,  <39.915371, 38.642727, 18.106634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686718, 38.588917, 18.057411>,  <39.305630, 38.499237, 17.975372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686718, 38.588917, 18.057411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, 0.946184, -0.279930,
		-0.256820, 0.233386, 0.937856,
		0.952717, 0.224202, 0.205096,
		39.972534, 38.656178, 18.118940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391346, 39.270538, 18.282372>,  <39.305630, 38.499237, 17.975372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391346, 39.270538, 18.282372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756905, 39.174484, 18.151451>,  <39.976238, 39.116852, 18.072899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756905, 39.174484, 18.151451>,  <39.391346, 39.270538, 18.282372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756905, 39.174484, 18.151451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164288, 0.956080, -0.242736,
		0.371216, 0.168064, 0.913210,
		0.913897, -0.240137, -0.327301,
		40.031075, 39.102444, 18.053261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879524, 39.570618, 18.654940>,  <39.391346, 39.270538, 18.282372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879524, 39.570618, 18.654940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060204, 39.480919, 18.309528>,  <40.168610, 39.427101, 18.102282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060204, 39.480919, 18.309528>,  <39.879524, 39.570618, 18.654940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060204, 39.480919, 18.309528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139973, 0.973723, -0.179644,
		0.881122, -0.039726, 0.471217,
		0.451698, -0.224246, -0.863529,
		40.195713, 39.413647, 18.050470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346741, 40.130138, 18.583572>,  <39.879524, 39.570618, 18.654940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346741, 40.130138, 18.583572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313961, 39.966991, 18.219830>,  <40.294292, 39.869102, 18.001585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313961, 39.966991, 18.219830>,  <40.346741, 40.130138, 18.583572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313961, 39.966991, 18.219830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010254, 0.912721, -0.408455,
		0.996583, -0.024150, -0.078983,
		-0.081953, -0.407869, -0.909355,
		40.289375, 39.844631, 17.947023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904613, 40.472149, 18.292158>,  <40.346741, 40.130138, 18.583572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904613, 40.472149, 18.292158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650803, 40.364681, 18.002277>,  <40.498516, 40.300201, 17.828348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650803, 40.364681, 18.002277>,  <40.904613, 40.472149, 18.292158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650803, 40.364681, 18.002277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001263, 0.937997, -0.346641,
		0.772900, -0.219038, -0.595523,
		-0.634527, -0.268671, -0.724701,
		40.460445, 40.284081, 17.784866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251930, 40.581150, 17.590071>,  <40.904613, 40.472149, 18.292158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251930, 40.581150, 17.590071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852688, 40.579376, 17.565540>,  <40.613140, 40.578312, 17.550821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852688, 40.579376, 17.565540>,  <41.251930, 40.581150, 17.590071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852688, 40.579376, 17.565540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010922, 0.968732, -0.247870,
		0.060508, -0.248071, -0.966850,
		-0.998108, -0.004438, -0.061325,
		40.553257, 40.578045, 17.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813553, 40.523674, 16.926628>,  <41.251930, 40.581150, 17.590071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813553, 40.523674, 16.926628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627369, 40.770489, 17.180435>,  <40.515659, 40.918579, 17.332720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627369, 40.770489, 17.180435>,  <40.813553, 40.523674, 16.926628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627369, 40.770489, 17.180435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125007, 0.755559, -0.643043,
		-0.876198, -0.219989, -0.428814,
		-0.465457, 0.617038, 0.634519,
		40.487732, 40.955601, 17.370790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338627, 40.988102, 16.525322>,  <40.813553, 40.523674, 16.926628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338627, 40.988102, 16.525322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388618, 41.170067, 16.878010>,  <40.418613, 41.279247, 17.089622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388618, 41.170067, 16.878010>,  <40.338627, 40.988102, 16.525322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388618, 41.170067, 16.878010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047488, 0.890413, -0.452669,
		-0.991022, 0.014703, 0.132887,
		0.124980, 0.454916, 0.881721,
		40.426113, 41.306541, 17.142527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753262, 41.458187, 16.641977>,  <40.338627, 40.988102, 16.525322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753262, 41.458187, 16.641977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113983, 41.569527, 16.774208>,  <40.330414, 41.636330, 16.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113983, 41.569527, 16.774208>,  <39.753262, 41.458187, 16.641977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113983, 41.569527, 16.774208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121969, 0.897783, -0.423214,
		-0.414586, 0.341334, 0.843570,
		0.901799, 0.278348, 0.330576,
		40.384521, 41.653030, 16.873381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372578, 40.742641, 16.692453>,  <39.753262, 41.458187, 16.641977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372578, 40.742641, 16.692453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080864, 40.985592, 16.566441>,  <38.905834, 41.131363, 16.490833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080864, 40.985592, 16.566441>,  <39.372578, 40.742641, 16.692453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080864, 40.985592, 16.566441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684197, -0.650481, 0.329770,
		-0.004630, 0.456040, 0.889947,
		-0.729283, 0.607372, -0.315033,
		38.862080, 41.167805, 16.471931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666943, 40.530331, 16.344929>,  <39.372578, 40.742641, 16.692453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666943, 40.530331, 16.344929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461178, 40.861351, 16.255009>,  <38.337719, 41.059963, 16.201057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461178, 40.861351, 16.255009>,  <38.666943, 40.530331, 16.344929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461178, 40.861351, 16.255009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788405, 0.353278, -0.503600,
		-0.337340, -0.436289, -0.834178,
		-0.514412, 0.827554, -0.224798,
		38.306854, 41.109619, 16.187569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847416, 40.665363, 15.648206>,  <38.666943, 40.530331, 16.344929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847416, 40.665363, 15.648206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705051, 41.008682, 15.796075>,  <38.619633, 41.214672, 15.884796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705051, 41.008682, 15.796075>,  <38.847416, 40.665363, 15.648206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705051, 41.008682, 15.796075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730636, 0.502200, -0.462565,
		-0.582668, 0.105465, -0.805838,
		-0.355908, 0.858296, 0.369673,
		38.598278, 41.266171, 15.906977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321438, 40.374981, 15.383549>,  <38.847416, 40.665363, 15.648206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321438, 40.374981, 15.383549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238533, 40.187214, 15.040227>,  <38.188789, 40.074554, 14.834234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238533, 40.187214, 15.040227>,  <38.321438, 40.374981, 15.383549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238533, 40.187214, 15.040227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976525, -0.151883, -0.152744,
		-0.058661, -0.869813, 0.489882,
		-0.207264, -0.469422, -0.858304,
		38.176353, 40.046387, 14.782736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758244, 39.837070, 15.356901>,  <38.321438, 40.374981, 15.383549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758244, 39.837070, 15.356901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673252, 39.885956, 14.969104>,  <38.622257, 39.915287, 14.736425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673252, 39.885956, 14.969104>,  <38.758244, 39.837070, 15.356901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673252, 39.885956, 14.969104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932531, -0.271072, -0.238551,
		-0.291957, -0.954769, -0.056370,
		-0.212481, 0.122213, -0.969493,
		38.609509, 39.922619, 14.678256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875031, 39.185097, 14.953882>,  <38.758244, 39.837070, 15.356901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875031, 39.185097, 14.953882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924458, 39.527813, 14.753627>,  <38.954113, 39.733444, 14.633473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924458, 39.527813, 14.753627>,  <38.875031, 39.185097, 14.953882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924458, 39.527813, 14.753627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979888, -0.185009, -0.074775,
		-0.156689, -0.481330, -0.862421,
		0.123564, 0.856792, -0.500639,
		38.961525, 39.784851, 14.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097393, 38.477570, 14.621705>,  <38.875031, 39.185097, 14.953882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097393, 38.477570, 14.621705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393291, 38.326038, 14.844151>,  <39.570831, 38.235119, 14.977619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393291, 38.326038, 14.844151>,  <39.097393, 38.477570, 14.621705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393291, 38.326038, 14.844151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672635, -0.438979, 0.595701,
		0.018454, -0.814730, -0.579546,
		0.739744, -0.378830, 0.556117,
		39.615215, 38.212391, 15.010986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955887, 37.703655, 14.621376>,  <39.097393, 38.477570, 14.621705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955887, 37.703655, 14.621376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202221, 37.792809, 14.923654>,  <39.350021, 37.846298, 15.105020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202221, 37.792809, 14.923654>,  <38.955887, 37.703655, 14.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202221, 37.792809, 14.923654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465682, -0.670710, 0.577312,
		0.635522, -0.707441, -0.309255,
		0.615834, 0.222880, 0.755693,
		39.386971, 37.859673, 15.150362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198212, 37.101604, 14.878144>,  <38.955887, 37.703655, 14.621376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198212, 37.101604, 14.878144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217621, 37.383846, 15.160920>,  <39.229267, 37.553192, 15.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217621, 37.383846, 15.160920>,  <39.198212, 37.101604, 14.878144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217621, 37.383846, 15.160920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390201, -0.638139, 0.663719,
		0.919450, -0.308056, 0.244362,
		0.048525, 0.705607, 0.706940,
		39.232178, 37.595528, 15.373002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400208, 36.681705, 15.346529>,  <39.198212, 37.101604, 14.878144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400208, 36.681705, 15.346529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334087, 37.018822, 15.551421>,  <39.294415, 37.221092, 15.674356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334087, 37.018822, 15.551421>,  <39.400208, 36.681705, 15.346529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334087, 37.018822, 15.551421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271661, -0.538193, 0.797840,
		0.948090, -0.007266, 0.317919,
		-0.165304, 0.842790, 0.512230,
		39.284496, 37.271660, 15.705091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707218, 36.499901, 16.062094>,  <39.400208, 36.681705, 15.346529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707218, 36.499901, 16.062094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438976, 36.795280, 16.090351>,  <39.278030, 36.972507, 16.107306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438976, 36.795280, 16.090351>,  <39.707218, 36.499901, 16.062094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438976, 36.795280, 16.090351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357158, -0.404871, 0.841734,
		0.650178, 0.539237, 0.535249,
		-0.670602, 0.738446, 0.070646,
		39.237797, 37.016815, 16.111546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703293, 36.955505, 16.713614>,  <39.707218, 36.499901, 16.062094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703293, 36.955505, 16.713614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339191, 36.961849, 16.548111>,  <39.120731, 36.965656, 16.448809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339191, 36.961849, 16.548111>,  <39.703293, 36.955505, 16.713614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339191, 36.961849, 16.548111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403978, -0.253194, 0.879030,
		-0.090823, 0.967286, 0.236875,
		-0.910249, 0.015856, -0.413758,
		39.066116, 36.966606, 16.423983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215450, 37.339825, 17.244537>,  <39.703293, 36.955505, 16.713614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215450, 37.339825, 17.244537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999008, 37.097160, 17.011585>,  <38.869144, 36.951561, 16.871813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999008, 37.097160, 17.011585>,  <39.215450, 37.339825, 17.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999008, 37.097160, 17.011585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468820, -0.357311, 0.807798,
		-0.698150, 0.710135, -0.091072,
		-0.541105, -0.606661, -0.582382,
		38.836678, 36.915161, 16.836870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756504, 37.213093, 17.690359>,  <39.215450, 37.339825, 17.244537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756504, 37.213093, 17.690359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638073, 36.986656, 17.382626>,  <38.567013, 36.850792, 17.197985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638073, 36.986656, 17.382626>,  <38.756504, 37.213093, 17.690359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638073, 36.986656, 17.382626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721677, -0.395055, 0.568432,
		-0.625714, 0.723513, -0.291567,
		-0.296082, -0.566093, -0.769333,
		38.549248, 36.816830, 17.151825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981396, 37.187519, 17.741409>,  <38.756504, 37.213093, 17.690359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981396, 37.187519, 17.741409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102081, 36.877842, 17.518845>,  <38.174492, 36.692036, 17.385305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102081, 36.877842, 17.518845>,  <37.981396, 37.187519, 17.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102081, 36.877842, 17.518845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464333, -0.629040, 0.623462,
		-0.832684, 0.070252, -0.549275,
		0.301716, -0.774193, -0.556411,
		38.192596, 36.645584, 17.351921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406548, 36.828491, 17.640278>,  <37.981396, 37.187519, 17.741409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406548, 36.828491, 17.640278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708569, 36.574280, 17.575779>,  <37.889782, 36.421753, 17.537079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708569, 36.574280, 17.575779>,  <37.406548, 36.828491, 17.640278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708569, 36.574280, 17.575779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422463, -0.659633, 0.621618,
		-0.501421, -0.401232, -0.766544,
		0.755051, -0.635529, -0.161249,
		37.935085, 36.383621, 17.527405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005157, 36.076809, 17.517628>,  <37.406548, 36.828491, 17.640278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005157, 36.076809, 17.517628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393757, 36.046131, 17.607342>,  <37.626919, 36.027725, 17.661171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393757, 36.046131, 17.607342>,  <37.005157, 36.076809, 17.517628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393757, 36.046131, 17.607342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219956, -0.644359, 0.732407,
		0.088351, -0.760868, -0.642864,
		0.971501, -0.076693, 0.224287,
		37.685207, 36.023125, 17.674627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049664, 35.300056, 17.558380>,  <37.005157, 36.076809, 17.517628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049664, 35.300056, 17.558380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368458, 35.463997, 17.735844>,  <37.559734, 35.562363, 17.842321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368458, 35.463997, 17.735844>,  <37.049664, 35.300056, 17.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368458, 35.463997, 17.735844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021484, -0.714840, 0.698957,
		0.603615, -0.566591, -0.560913,
		0.796986, 0.409850, 0.443661,
		37.607555, 35.586952, 17.868942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434494, 34.655643, 17.759001>,  <37.049664, 35.300056, 17.558380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434494, 34.655643, 17.759001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585377, 34.962132, 17.967083>,  <37.675907, 35.146027, 18.091932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585377, 34.962132, 17.967083>,  <37.434494, 34.655643, 17.759001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585377, 34.962132, 17.967083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032477, -0.572298, 0.819402,
		0.925559, -0.292191, -0.240760,
		0.377209, 0.766224, 0.520206,
		37.698540, 35.191998, 18.123144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970467, 34.327393, 18.219675>,  <37.434494, 34.655643, 17.759001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970467, 34.327393, 18.219675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888958, 34.673393, 18.403088>,  <37.840054, 34.880993, 18.513136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888958, 34.673393, 18.403088>,  <37.970467, 34.327393, 18.219675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888958, 34.673393, 18.403088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007051, -0.467051, 0.884202,
		0.978994, 0.183406, 0.089071,
		-0.203768, 0.865000, 0.458533,
		37.827827, 34.932892, 18.540648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433186, 34.431129, 18.910160>,  <37.970467, 34.327393, 18.219675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433186, 34.431129, 18.910160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092716, 34.639805, 18.933300>,  <37.888435, 34.765011, 18.947184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092716, 34.639805, 18.933300>,  <38.433186, 34.431129, 18.910160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092716, 34.639805, 18.933300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221338, -0.456680, 0.861657,
		0.475936, 0.720613, 0.504183,
		-0.851172, 0.521689, 0.057852,
		37.837364, 34.796310, 18.950655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347034, 34.340233, 19.628672>,  <38.433186, 34.431129, 18.910160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347034, 34.340233, 19.628672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009624, 34.523273, 19.516205>,  <37.807178, 34.633099, 19.448725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009624, 34.523273, 19.516205>,  <38.347034, 34.340233, 19.628672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009624, 34.523273, 19.516205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448000, -0.310749, 0.838290,
		0.296233, 0.833086, 0.467134,
		-0.843529, 0.457606, -0.281168,
		37.756565, 34.660557, 19.431854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072899, 34.796574, 20.255636>,  <38.347034, 34.340233, 19.628672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072899, 34.796574, 20.255636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781918, 34.702007, 19.997978>,  <37.607330, 34.645267, 19.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781918, 34.702007, 19.997978>,  <38.072899, 34.796574, 20.255636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781918, 34.702007, 19.997978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605786, -0.219585, 0.764726,
		-0.322237, 0.946515, 0.016521,
		-0.727452, -0.236414, -0.644144,
		37.563683, 34.631084, 19.804735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486649, 35.141426, 20.539482>,  <38.072899, 34.796574, 20.255636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486649, 35.141426, 20.539482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 34.864605, 20.278690>,  <37.288364, 34.698513, 20.122215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 34.864605, 20.278690>,  <37.486649, 35.141426, 20.539482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362720, 34.864605, 20.278690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671230, -0.326456, 0.665490,
		-0.673395, 0.643811, -0.363382,
		-0.309821, -0.692051, -0.651979,
		37.269775, 34.656990, 20.083097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754631, 35.068203, 20.634846>,  <37.486649, 35.141426, 20.539482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754631, 35.068203, 20.634846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850609, 34.712372, 20.479374>,  <36.908195, 34.498871, 20.386091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850609, 34.712372, 20.479374>,  <36.754631, 35.068203, 20.634846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850609, 34.712372, 20.479374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626584, -0.447725, 0.637914,
		-0.741499, 0.090480, -0.664825,
		0.239940, -0.889581, -0.388681,
		36.922592, 34.445496, 20.362770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154057, 34.697262, 20.485600>,  <36.754631, 35.068203, 20.634846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154057, 34.697262, 20.485600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395744, 34.378567, 20.490074>,  <36.540756, 34.187351, 20.492758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395744, 34.378567, 20.490074>,  <36.154057, 34.697262, 20.485600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395744, 34.378567, 20.490074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576399, -0.427347, 0.696519,
		-0.550162, -0.427300, -0.717452,
		0.604223, -0.796737, 0.011185,
		36.577011, 34.139545, 20.493429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769150, 33.979744, 20.277651>,  <36.154057, 34.697262, 20.485600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769150, 33.979744, 20.277651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074677, 34.002117, 20.534851>,  <36.257992, 34.015541, 20.689171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074677, 34.002117, 20.534851>,  <35.769150, 33.979744, 20.277651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074677, 34.002117, 20.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578021, -0.383986, 0.720032,
		0.287179, -0.921643, -0.260964,
		0.763820, 0.055935, 0.643002,
		36.303822, 34.018898, 20.727751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066181, 33.278366, 20.622286>,  <35.769150, 33.979744, 20.277651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066181, 33.278366, 20.622286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039257, 33.630268, 20.810543>,  <36.023102, 33.841408, 20.923498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039257, 33.630268, 20.810543>,  <36.066181, 33.278366, 20.622286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039257, 33.630268, 20.810543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644922, -0.398286, 0.652260,
		0.761279, -0.259625, 0.594180,
		-0.067311, 0.879752, 0.470645,
		36.019062, 33.894192, 20.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122356, 33.092670, 21.408892>,  <36.066181, 33.278366, 20.622286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122356, 33.092670, 21.408892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897003, 33.412086, 21.324097>,  <35.761791, 33.603737, 21.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897003, 33.412086, 21.324097>,  <36.122356, 33.092670, 21.408892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897003, 33.412086, 21.324097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727529, -0.357893, 0.585333,
		0.391544, 0.483990, 0.782590,
		-0.563379, 0.798540, -0.211986,
		35.727989, 33.651649, 21.260502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689354, 33.234802, 22.107580>,  <36.122356, 33.092670, 21.408892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689354, 33.234802, 22.107580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493111, 33.369228, 21.785992>,  <35.375366, 33.449883, 21.593039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493111, 33.369228, 21.785992>,  <35.689354, 33.234802, 22.107580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493111, 33.369228, 21.785992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853023, -0.373622, 0.364361,
		-0.177931, 0.864561, 0.469973,
		-0.490604, 0.336067, -0.803969,
		35.345928, 33.470047, 21.544802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091640, 33.756618, 22.278395>,  <35.689354, 33.234802, 22.107580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091640, 33.756618, 22.278395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012619, 33.563683, 21.937027>,  <34.965206, 33.447922, 21.732206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012619, 33.563683, 21.937027>,  <35.091640, 33.756618, 22.278395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012619, 33.563683, 21.937027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887815, -0.281091, 0.364380,
		-0.415642, 0.829662, -0.372696,
		-0.197550, -0.482337, -0.853420,
		34.953354, 33.418983, 21.681002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459930, 33.989281, 21.912344>,  <35.091640, 33.756618, 22.278395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459930, 33.989281, 21.912344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489269, 33.599823, 21.825958>,  <34.506874, 33.366150, 21.774126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489269, 33.599823, 21.825958>,  <34.459930, 33.989281, 21.912344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489269, 33.599823, 21.825958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812005, -0.184031, 0.553878,
		-0.579023, 0.134737, -0.804101,
		0.073352, -0.973642, -0.215965,
		34.511276, 33.307732, 21.761169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828735, 33.703556, 21.541111>,  <34.459930, 33.989281, 21.912344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828735, 33.703556, 21.541111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978867, 33.441624, 21.803509>,  <34.068943, 33.284466, 21.960947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978867, 33.441624, 21.803509>,  <33.828735, 33.703556, 21.541111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978867, 33.441624, 21.803509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866227, 0.004035, 0.499635,
		-0.329822, -0.755766, -0.565717,
		0.375325, -0.654830, 0.655995,
		34.091465, 33.245174, 22.000307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373096, 33.235733, 21.579346>,  <33.828735, 33.703556, 21.541111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373096, 33.235733, 21.579346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582672, 33.164623, 21.912544>,  <33.708416, 33.121956, 22.112463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582672, 33.164623, 21.912544>,  <33.373096, 33.235733, 21.579346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582672, 33.164623, 21.912544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830543, -0.323534, 0.453348,
		0.188910, -0.929367, -0.317160,
		0.523938, -0.177773, 0.832998,
		33.739853, 33.111290, 22.162443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451191, 32.461414, 21.799837>,  <33.373096, 33.235733, 21.579346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451191, 32.461414, 21.799837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492287, 32.690853, 22.124905>,  <33.516945, 32.828518, 22.319944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492287, 32.690853, 22.124905>,  <33.451191, 32.461414, 21.799837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492287, 32.690853, 22.124905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517636, -0.666821, 0.536099,
		0.849410, -0.475746, 0.228405,
		0.102741, 0.573599, 0.812668,
		33.523109, 32.862934, 22.368706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455692, 31.931143, 22.318268>,  <33.451191, 32.461414, 21.799837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455692, 31.931143, 22.318268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426815, 32.271534, 22.526356>,  <33.409489, 32.475769, 22.651209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426815, 32.271534, 22.526356>,  <33.455692, 31.931143, 22.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426815, 32.271534, 22.526356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347350, -0.510378, 0.786678,
		0.934953, -0.123908, 0.332430,
		-0.072189, 0.850977, 0.520219,
		33.405159, 32.526829, 22.682421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885162, 31.829754, 22.808968>,  <33.455692, 31.931143, 22.318268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885162, 31.829754, 22.808968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594627, 32.086037, 22.908508>,  <33.420307, 32.239807, 22.968233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594627, 32.086037, 22.908508>,  <33.885162, 31.829754, 22.808968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594627, 32.086037, 22.908508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246292, -0.580620, 0.776029,
		0.641696, 0.502369, 0.579527,
		-0.726338, 0.640707, 0.248852,
		33.376724, 32.278248, 22.983164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924545, 31.814276, 23.552656>,  <33.885162, 31.829754, 22.808968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924545, 31.814276, 23.552656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577606, 31.990036, 23.459167>,  <33.369442, 32.095493, 23.403074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577606, 31.990036, 23.459167>,  <33.924545, 31.814276, 23.552656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577606, 31.990036, 23.459167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399048, -0.333341, 0.854192,
		0.297423, 0.834152, 0.464466,
		-0.867352, 0.439401, -0.233724,
		33.317402, 32.121857, 23.389050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784405, 32.281830, 24.136116>,  <33.924545, 31.814276, 23.552656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784405, 32.281830, 24.136116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447014, 32.203747, 23.935944>,  <33.244579, 32.156895, 23.815840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447014, 32.203747, 23.935944>,  <33.784405, 32.281830, 24.136116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447014, 32.203747, 23.935944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403716, -0.384163, 0.830320,
		-0.354334, 0.902393, 0.245225,
		-0.843481, -0.195209, -0.500432,
		33.193970, 32.145184, 23.785814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287399, 32.513142, 24.533970>,  <33.784405, 32.281830, 24.136116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287399, 32.513142, 24.533970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078701, 32.258801, 24.306473>,  <32.953484, 32.106194, 24.169973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078701, 32.258801, 24.306473>,  <33.287399, 32.513142, 24.533970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078701, 32.258801, 24.306473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317038, -0.474413, 0.821230,
		-0.792005, 0.608784, 0.045931,
		-0.521742, -0.635857, -0.568745,
		32.922180, 32.068043, 24.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588993, 32.510853, 24.885279>,  <33.287399, 32.513142, 24.533970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588993, 32.510853, 24.885279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664234, 32.189175, 24.659752>,  <32.709381, 31.996168, 24.524435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664234, 32.189175, 24.659752>,  <32.588993, 32.510853, 24.885279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664234, 32.189175, 24.659752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432443, -0.583239, 0.687623,
		-0.881822, 0.114473, -0.457478,
		0.188105, -0.804194, -0.563816,
		32.720665, 31.947916, 24.490606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092552, 32.166100, 25.025509>,  <32.588993, 32.510853, 24.885279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092552, 32.166100, 25.025509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280323, 31.847382, 24.873322>,  <32.392986, 31.656151, 24.782009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280323, 31.847382, 24.873322>,  <32.092552, 32.166100, 25.025509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280323, 31.847382, 24.873322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262506, -0.537354, 0.801462,
		-0.843047, -0.276353, -0.461413,
		0.469429, -0.796793, -0.380470,
		32.421150, 31.608343, 24.759180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597727, 31.525869, 24.870255>,  <32.092552, 32.166100, 25.025509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597727, 31.525869, 24.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973963, 31.411373, 24.943314>,  <32.199703, 31.342676, 24.987148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973963, 31.411373, 24.943314>,  <31.597727, 31.525869, 24.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973963, 31.411373, 24.943314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332405, -0.666482, 0.667314,
		-0.069282, -0.688381, -0.722034,
		0.940588, -0.286240, 0.182646,
		32.256138, 31.325500, 24.998108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487841, 30.914930, 24.974350>,  <31.597727, 31.525869, 24.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487841, 30.914930, 24.974350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866083, 30.935307, 25.102867>,  <32.093029, 30.947533, 25.179977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866083, 30.935307, 25.102867>,  <31.487841, 30.914930, 24.974350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866083, 30.935307, 25.102867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239583, -0.559064, 0.793755,
		0.220059, -0.827558, -0.516451,
		0.945608, 0.050940, 0.321295,
		32.149765, 30.950588, 25.199255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532700, 30.180717, 25.310726>,  <31.487841, 30.914930, 24.974350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532700, 30.180717, 25.310726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837667, 30.385353, 25.469215>,  <32.020649, 30.508135, 25.564310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837667, 30.385353, 25.469215>,  <31.532700, 30.180717, 25.310726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837667, 30.385353, 25.469215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092530, -0.519836, 0.849240,
		0.640434, -0.684139, -0.348995,
		0.762418, 0.511590, 0.396224,
		32.066395, 30.538830, 25.588083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077759, 29.706987, 25.476713>,  <31.532700, 30.180717, 25.310726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077759, 29.706987, 25.476713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109138, 30.025085, 25.717190>,  <32.127964, 30.215944, 25.861475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109138, 30.025085, 25.717190>,  <32.077759, 29.706987, 25.476713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109138, 30.025085, 25.717190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055943, -0.605609, 0.793793,
		0.995347, -0.028638, -0.091996,
		0.078446, 0.795247, 0.601189,
		32.132671, 30.263660, 25.897547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471394, 29.463247, 26.029079>,  <32.077759, 29.706987, 25.476713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471394, 29.463247, 26.029079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355103, 29.816677, 26.175922>,  <32.285328, 30.028736, 26.264029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355103, 29.816677, 26.175922>,  <32.471394, 29.463247, 26.029079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355103, 29.816677, 26.175922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197368, -0.320049, 0.926615,
		0.936228, 0.341850, -0.081341,
		-0.290730, 0.883576, 0.367109,
		32.267883, 30.081751, 26.286055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986954, 29.698290, 26.535179>,  <32.471394, 29.463247, 26.029079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986954, 29.698290, 26.535179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651283, 29.888096, 26.641479>,  <32.449883, 30.001980, 26.705259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651283, 29.888096, 26.641479>,  <32.986954, 29.698290, 26.535179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651283, 29.888096, 26.641479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173044, -0.230279, 0.957615,
		0.515600, 0.849592, 0.111133,
		-0.839174, 0.474515, 0.265749,
		32.399532, 30.030451, 26.721205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215302, 30.117937, 27.040390>,  <32.986954, 29.698290, 26.535179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215302, 30.117937, 27.040390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817802, 30.092274, 27.076935>,  <32.579304, 30.076876, 27.098862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817802, 30.092274, 27.076935>,  <33.215302, 30.117937, 27.040390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817802, 30.092274, 27.076935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104980, -0.258625, 0.960256,
		-0.037979, 0.963845, 0.263744,
		-0.993749, -0.064158, 0.091362,
		32.519676, 30.073027, 27.104343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084225, 30.618778, 27.583109>,  <33.215302, 30.117937, 27.040390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084225, 30.618778, 27.583109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744080, 30.408703, 27.596096>,  <32.539993, 30.282658, 27.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744080, 30.408703, 27.596096>,  <33.084225, 30.618778, 27.583109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744080, 30.408703, 27.596096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037254, 0.001460, 0.999305,
		-0.524873, 0.850984, 0.018325,
		-0.850365, -0.525190, 0.032469,
		32.488972, 30.251146, 27.605837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638412, 30.871851, 28.179832>,  <33.084225, 30.618778, 27.583109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638412, 30.871851, 28.179832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500996, 30.503288, 28.107178>,  <32.418545, 30.282150, 28.063585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500996, 30.503288, 28.107178>,  <32.638412, 30.871851, 28.179832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500996, 30.503288, 28.107178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012021, -0.189078, 0.981889,
		-0.939061, 0.339502, 0.053880,
		-0.343540, -0.921405, -0.181637,
		32.397934, 30.226866, 28.052687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019463, 30.704153, 28.612886>,  <32.638412, 30.871851, 28.179832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019463, 30.704153, 28.612886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150024, 30.340950, 28.507828>,  <32.228363, 30.123028, 28.444794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150024, 30.340950, 28.507828>,  <32.019463, 30.704153, 28.612886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150024, 30.340950, 28.507828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150075, -0.324122, 0.934036,
		-0.933241, -0.265457, -0.242064,
		0.326404, -0.908007, -0.262646,
		32.247944, 30.068548, 28.429033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529417, 30.224482, 28.844852>,  <32.019463, 30.704153, 28.612886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529417, 30.224482, 28.844852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852678, 29.992279, 28.805054>,  <32.046635, 29.852957, 28.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852678, 29.992279, 28.805054>,  <31.529417, 30.224482, 28.844852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852678, 29.992279, 28.805054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156693, -0.374764, 0.913783,
		-0.567747, -0.722886, -0.393828,
		0.808153, -0.580507, -0.099499,
		32.095123, 29.818127, 28.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314310, 29.662342, 29.240469>,  <31.529417, 30.224482, 28.844852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314310, 29.662342, 29.240469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710941, 29.626793, 29.202797>,  <31.948921, 29.605463, 29.180193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710941, 29.626793, 29.202797>,  <31.314310, 29.662342, 29.240469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710941, 29.626793, 29.202797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048821, -0.417072, 0.907561,
		-0.119937, -0.904518, -0.409222,
		0.991580, -0.088872, -0.094182,
		32.008415, 29.600132, 29.174541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501156, 29.124874, 29.628134>,  <31.314310, 29.662342, 29.240469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501156, 29.124874, 29.628134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856794, 29.302769, 29.584835>,  <32.070179, 29.409506, 29.558857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856794, 29.302769, 29.584835>,  <31.501156, 29.124874, 29.628134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856794, 29.302769, 29.584835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296018, -0.378315, 0.877070,
		0.349114, -0.811842, -0.468009,
		0.889097, 0.444736, -0.108245,
		32.123524, 29.436190, 29.552362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892847, 28.631407, 29.795868>,  <31.501156, 29.124874, 29.628134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892847, 28.631407, 29.795868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090622, 28.977150, 29.832554>,  <32.209286, 29.184597, 29.854565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090622, 28.977150, 29.832554>,  <31.892847, 28.631407, 29.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090622, 28.977150, 29.832554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375652, -0.307642, 0.874210,
		0.783847, -0.397791, -0.476808,
		0.494439, 0.864360, 0.091713,
		32.238953, 29.236458, 29.860067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539383, 28.421623, 30.050562>,  <31.892847, 28.631407, 29.795868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539383, 28.421623, 30.050562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484726, 28.806999, 30.142750>,  <32.451931, 29.038225, 30.198063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484726, 28.806999, 30.142750>,  <32.539383, 28.421623, 30.050562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484726, 28.806999, 30.142750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276485, -0.186316, 0.942784,
		0.951255, 0.192541, -0.240919,
		-0.136638, 0.963439, 0.230469,
		32.443733, 29.096031, 30.211891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105553, 28.669661, 30.403507>,  <32.539383, 28.421623, 30.050562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105553, 28.669661, 30.403507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849773, 28.961639, 30.500072>,  <32.696304, 29.136827, 30.558012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849773, 28.961639, 30.500072>,  <33.105553, 28.669661, 30.403507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849773, 28.961639, 30.500072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277984, -0.073244, 0.957789,
		0.716817, 0.679569, -0.156077,
		-0.639452, 0.729946, 0.241412,
		32.657936, 29.180624, 30.572496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427124, 29.217476, 30.688704>,  <33.105553, 28.669661, 30.403507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427124, 29.217476, 30.688704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055531, 29.260960, 30.830223>,  <32.832573, 29.287050, 30.915134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055531, 29.260960, 30.830223>,  <33.427124, 29.217476, 30.688704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055531, 29.260960, 30.830223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362081, 0.068738, 0.929609,
		0.076739, 0.991694, -0.103219,
		-0.928983, 0.108711, 0.353798,
		32.776836, 29.293573, 30.936363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518974, 29.592060, 31.294682>,  <33.427124, 29.217476, 30.688704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518974, 29.592060, 31.294682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137665, 29.482544, 31.345757>,  <32.908878, 29.416834, 31.376402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137665, 29.482544, 31.345757>,  <33.518974, 29.592060, 31.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137665, 29.482544, 31.345757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148816, -0.057756, 0.987177,
		-0.262904, 0.960054, 0.095802,
		-0.953276, -0.273790, 0.127687,
		32.851681, 29.400408, 31.384062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300030, 29.942966, 31.862747>,  <33.518974, 29.592060, 31.294682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300030, 29.942966, 31.862747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037079, 29.643219, 31.830971>,  <32.879311, 29.463371, 31.811905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037079, 29.643219, 31.830971>,  <33.300030, 29.942966, 31.862747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037079, 29.643219, 31.830971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068159, -0.164113, 0.984084,
		-0.750477, 0.641496, 0.158959,
		-0.657373, -0.749367, -0.079440,
		32.839867, 29.418409, 31.807138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825962, 30.111441, 32.529999>,  <33.300030, 29.942966, 31.862747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825962, 30.111441, 32.529999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812313, 29.726418, 32.422432>,  <32.804123, 29.495403, 32.357891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812313, 29.726418, 32.422432>,  <32.825962, 30.111441, 32.529999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812313, 29.726418, 32.422432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112976, -0.263638, 0.957983,
		-0.993011, 0.063071, -0.099750,
		-0.034123, -0.962557, -0.268921,
		32.802074, 29.437651, 32.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358871, 29.835457, 32.876347>,  <32.825962, 30.111441, 32.529999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358871, 29.835457, 32.876347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582520, 29.517879, 32.780819>,  <32.716709, 29.327333, 32.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582520, 29.517879, 32.780819>,  <32.358871, 29.835457, 32.876347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582520, 29.517879, 32.780819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129038, -0.367874, 0.920879,
		-0.818983, -0.484065, -0.308135,
		0.559120, -0.793946, -0.238820,
		32.750256, 29.279696, 32.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922358, 29.232990, 32.992355>,  <32.358871, 29.835457, 32.876347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922358, 29.232990, 32.992355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306492, 29.121628, 32.998569>,  <32.536972, 29.054810, 33.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306492, 29.121628, 32.998569>,  <31.922358, 29.232990, 32.992355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306492, 29.121628, 32.998569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147252, -0.459037, 0.876129,
		-0.236787, -0.843668, -0.481826,
		0.960338, -0.278406, 0.015537,
		32.594593, 29.038105, 33.003231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871483, 28.555187, 33.331299>,  <31.922358, 29.232990, 32.992355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871483, 28.555187, 33.331299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252083, 28.669029, 33.378025>,  <32.480442, 28.737335, 33.406063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252083, 28.669029, 33.378025>,  <31.871483, 28.555187, 33.331299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252083, 28.669029, 33.378025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024899, -0.449710, 0.892827,
		0.306640, -0.846616, -0.434985,
		0.951500, 0.284607, 0.116819,
		32.537533, 28.754412, 33.413071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288174, 27.970940, 33.473598>,  <31.871483, 28.555187, 33.331299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288174, 27.970940, 33.473598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516716, 28.275597, 33.595875>,  <32.653843, 28.458391, 33.669243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516716, 28.275597, 33.595875>,  <32.288174, 27.970940, 33.473598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516716, 28.275597, 33.595875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134561, -0.454377, 0.880588,
		0.809594, -0.461996, -0.362100,
		0.571358, 0.761643, 0.305694,
		32.688122, 28.504089, 33.687584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871452, 27.581722, 33.648094>,  <32.288174, 27.970940, 33.473598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871452, 27.581722, 33.648094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875774, 27.930286, 33.844269>,  <32.878368, 28.139425, 33.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875774, 27.930286, 33.844269>,  <32.871452, 27.581722, 33.648094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875774, 27.930286, 33.844269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253005, -0.476892, 0.841762,
		0.967405, 0.114989, -0.225623,
		0.010804, 0.871408, 0.490440,
		32.879017, 28.191710, 33.991402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479889, 27.575020, 34.163525>,  <32.871452, 27.581722, 33.648094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479889, 27.575020, 34.163525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239117, 27.867363, 34.292233>,  <33.094654, 28.042768, 34.369457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239117, 27.867363, 34.292233>,  <33.479889, 27.575020, 34.163525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239117, 27.867363, 34.292233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296396, -0.169680, 0.939871,
		0.741508, 0.661104, -0.114488,
		-0.601926, 0.730856, 0.321768,
		33.058540, 28.086620, 34.388763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851059, 27.962812, 34.584991>,  <33.479889, 27.575020, 34.163525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851059, 27.962812, 34.584991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474052, 28.033455, 34.698460>,  <33.247849, 28.075840, 34.766541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474052, 28.033455, 34.698460>,  <33.851059, 27.962812, 34.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474052, 28.033455, 34.698460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277750, -0.057935, 0.958905,
		0.185782, 0.982575, 0.005553,
		-0.942518, 0.176604, 0.283674,
		33.191296, 28.086435, 34.783562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803192, 28.505457, 35.054974>,  <33.851059, 27.962812, 34.584991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803192, 28.505457, 35.054974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503796, 28.248253, 35.119843>,  <33.324158, 28.093931, 35.158764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503796, 28.248253, 35.119843>,  <33.803192, 28.505457, 35.054974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503796, 28.248253, 35.119843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314951, -0.129488, 0.940233,
		-0.583581, 0.754831, 0.299438,
		-0.748491, -0.643011, 0.162168,
		33.279247, 28.055349, 35.168491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744507, 28.550161, 35.688320>,  <33.803192, 28.505457, 35.054974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744507, 28.550161, 35.688320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500870, 28.238392, 35.629665>,  <33.354687, 28.051331, 35.594471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500870, 28.238392, 35.629665>,  <33.744507, 28.550161, 35.688320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500870, 28.238392, 35.629665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145626, -0.291663, 0.945371,
		-0.779616, 0.554462, 0.291154,
		-0.609091, -0.779426, -0.146641,
		33.318142, 28.004564, 35.585674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334400, 28.508341, 36.245022>,  <33.744507, 28.550161, 35.688320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334400, 28.508341, 36.245022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265186, 28.142593, 36.098602>,  <33.223660, 27.923145, 36.010750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265186, 28.142593, 36.098602>,  <33.334400, 28.508341, 36.245022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265186, 28.142593, 36.098602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030574, -0.366485, 0.929922,
		-0.984442, 0.172097, 0.035458,
		-0.173031, -0.914370, -0.366044,
		33.213276, 27.868282, 35.988789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756580, 28.200085, 36.767056>,  <33.334400, 28.508341, 36.245022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756580, 28.200085, 36.767056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919369, 27.910263, 36.544559>,  <33.017040, 27.736370, 36.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919369, 27.910263, 36.544559>,  <32.756580, 28.200085, 36.767056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919369, 27.910263, 36.544559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181148, -0.532833, 0.826604,
		-0.895301, -0.437161, -0.085593,
		0.406966, -0.724555, -0.556237,
		33.041458, 27.692896, 36.377689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412899, 27.642164, 36.935574>,  <32.756580, 28.200085, 36.767056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412899, 27.642164, 36.935574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775093, 27.525326, 36.812435>,  <32.992409, 27.455223, 36.738552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775093, 27.525326, 36.812435>,  <32.412899, 27.642164, 36.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775093, 27.525326, 36.812435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145413, -0.467937, 0.871717,
		-0.398677, -0.834095, -0.381237,
		0.905490, -0.292097, -0.307844,
		33.046741, 27.437696, 36.720081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505798, 26.968039, 37.169315>,  <32.412899, 27.642164, 36.935574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505798, 26.968039, 37.169315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882172, 27.084244, 37.099758>,  <33.107998, 27.153967, 37.058022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882172, 27.084244, 37.099758>,  <32.505798, 26.968039, 37.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882172, 27.084244, 37.099758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328477, -0.658715, 0.676903,
		0.082101, -0.694044, -0.715236,
		0.940937, 0.290513, -0.173897,
		33.164452, 27.171398, 37.047588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897938, 26.334724, 37.025032>,  <32.505798, 26.968039, 37.169315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897938, 26.334724, 37.025032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169727, 26.611618, 37.122295>,  <33.332802, 26.777754, 37.180653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169727, 26.611618, 37.122295>,  <32.897938, 26.334724, 37.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169727, 26.611618, 37.122295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296724, -0.562367, 0.771815,
		0.671023, -0.452276, -0.587516,
		0.679473, 0.692236, 0.243160,
		33.373569, 26.819288, 37.195244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671925, 26.091766, 37.045353>,  <32.897938, 26.334724, 37.025032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671925, 26.091766, 37.045353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567528, 26.382278, 37.299725>,  <33.504890, 26.556585, 37.452347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567528, 26.382278, 37.299725>,  <33.671925, 26.091766, 37.045353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567528, 26.382278, 37.299725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048954, -0.647952, 0.760107,
		0.964099, 0.229514, 0.133557,
		-0.260994, 0.726280, 0.635925,
		33.489231, 26.600163, 37.490501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957844, 25.787907, 37.524338>,  <33.671925, 26.091766, 37.045353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957844, 25.787907, 37.524338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320652, 25.764427, 37.691124>,  <34.538338, 25.750340, 37.791195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320652, 25.764427, 37.691124>,  <33.957844, 25.787907, 37.524338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320652, 25.764427, 37.691124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166386, 0.859687, 0.482964,
		-0.386811, -0.507438, 0.769990,
		0.907024, -0.058701, 0.416966,
		34.592758, 25.746817, 37.816216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931580, 25.894033, 38.252319>,  <33.957844, 25.787907, 37.524338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931580, 25.894033, 38.252319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279533, 26.015919, 38.097172>,  <34.488308, 26.089050, 38.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279533, 26.015919, 38.097172>,  <33.931580, 25.894033, 38.252319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279533, 26.015919, 38.097172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053525, 0.840032, 0.539890,
		0.490336, -0.448883, 0.747044,
		0.869889, 0.304713, -0.387872,
		34.540501, 26.107332, 37.980812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341003, 26.046453, 38.789360>,  <33.931580, 25.894033, 38.252319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341003, 26.046453, 38.789360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494438, 26.252762, 38.482937>,  <34.586498, 26.376547, 38.299084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494438, 26.252762, 38.482937>,  <34.341003, 26.046453, 38.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494438, 26.252762, 38.482937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021716, 0.834316, 0.550858,
		0.923250, -0.194666, 0.331232,
		0.383585, 0.515773, -0.766055,
		34.609512, 26.407494, 38.253120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799507, 26.636488, 39.007118>,  <34.341003, 26.046453, 38.789360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799507, 26.636488, 39.007118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726486, 26.990574, 38.835968>,  <34.682674, 27.203026, 38.733280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726486, 26.990574, 38.835968>,  <34.799507, 26.636488, 39.007118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726486, 26.990574, 38.835968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889934, 0.036234, 0.454649,
		0.417965, 0.463773, 0.781166,
		-0.182549, 0.885213, -0.427872,
		34.671722, 27.256138, 38.707607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351997, 26.996000, 39.507912>,  <34.799507, 26.636488, 39.007118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351997, 26.996000, 39.507912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284893, 27.152290, 39.145874>,  <34.244629, 27.246065, 38.928654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284893, 27.152290, 39.145874>,  <34.351997, 26.996000, 39.507912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284893, 27.152290, 39.145874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971517, 0.090340, 0.219074,
		0.167364, 0.916063, 0.364443,
		-0.167762, 0.390727, -0.905090,
		34.234566, 27.269508, 38.874348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439938, 27.743036, 39.382984>,  <34.351997, 26.996000, 39.507912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439938, 27.743036, 39.382984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436329, 28.104771, 39.553677>,  <34.434162, 28.321812, 39.656090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436329, 28.104771, 39.553677>,  <34.439938, 27.743036, 39.382984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436329, 28.104771, 39.553677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254608, 0.414760, -0.873584,
		-0.967002, 0.100764, -0.233995,
		-0.009026, 0.904335, 0.426729,
		34.433620, 28.376072, 39.681694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000801, 28.239334, 38.978958>,  <34.439938, 27.743036, 39.382984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000801, 28.239334, 38.978958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285606, 28.425228, 39.189503>,  <34.456490, 28.536764, 39.315830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285606, 28.425228, 39.189503>,  <34.000801, 28.239334, 38.978958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285606, 28.425228, 39.189503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340404, 0.427185, -0.837638,
		-0.614132, 0.775588, 0.145966,
		0.712016, 0.464733, 0.526361,
		34.499210, 28.564648, 39.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873177, 28.953127, 39.122559>,  <34.000801, 28.239334, 38.978958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873177, 28.953127, 39.122559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255360, 28.863865, 39.045307>,  <34.484669, 28.810308, 38.998955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255360, 28.863865, 39.045307>,  <33.873177, 28.953127, 39.122559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255360, 28.863865, 39.045307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074654, 0.450365, -0.889718,
		0.285523, 0.864507, 0.413647,
		0.955460, -0.223155, -0.193128,
		34.541996, 28.796919, 38.987370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234802, 29.569569, 38.844574>,  <33.873177, 28.953127, 39.122559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234802, 29.569569, 38.844574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 29.242214, 38.670292>,  <34.474617, 29.045801, 38.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 29.242214, 38.670292>,  <34.234802, 29.569569, 38.844574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384686, 29.242214, 38.670292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028986, 0.480051, -0.876762,
		0.926689, 0.315903, 0.203602,
		0.374710, -0.818387, -0.435701,
		34.497097, 28.996698, 38.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926579, 29.781269, 38.466183>,  <34.234802, 29.569569, 38.844574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926579, 29.781269, 38.466183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717602, 29.488148, 38.291805>,  <34.592216, 29.312275, 38.187180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717602, 29.488148, 38.291805>,  <34.926579, 29.781269, 38.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717602, 29.488148, 38.291805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121679, 0.441966, -0.888741,
		0.843949, -0.517361, -0.141734,
		-0.522441, -0.732806, -0.435948,
		34.560871, 29.268307, 38.161022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370445, 29.648317, 37.921162>,  <34.926579, 29.781269, 38.466183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370445, 29.648317, 37.921162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028080, 29.486164, 37.792740>,  <34.822662, 29.388872, 37.715687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028080, 29.486164, 37.792740>,  <35.370445, 29.648317, 37.921162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028080, 29.486164, 37.792740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177692, 0.352482, -0.918794,
		0.485630, -0.843457, -0.229660,
		-0.855914, -0.405385, -0.321052,
		34.771305, 29.364550, 37.696426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554840, 29.139877, 37.403805>,  <35.370445, 29.648317, 37.921162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554840, 29.139877, 37.403805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186333, 29.286266, 37.351139>,  <34.965229, 29.374100, 37.319538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186333, 29.286266, 37.351139>,  <35.554840, 29.139877, 37.403805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186333, 29.286266, 37.351139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279550, 0.387706, -0.878371,
		-0.270411, -0.846020, -0.459488,
		-0.921266, 0.365971, -0.131665,
		34.909954, 29.396057, 37.311638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242805, 28.921848, 36.834908>,  <35.554840, 29.139877, 37.403805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242805, 28.921848, 36.834908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020836, 29.249847, 36.891003>,  <34.887653, 29.446648, 36.924660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020836, 29.249847, 36.891003>,  <35.242805, 28.921848, 36.834908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020836, 29.249847, 36.891003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006937, 0.164006, -0.986435,
		-0.831874, -0.548367, -0.085322,
		-0.554921, 0.819997, 0.140236,
		34.854359, 29.495846, 36.933075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776535, 28.874989, 36.290073>,  <35.242805, 28.921848, 36.834908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776535, 28.874989, 36.290073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727901, 29.248226, 36.425453>,  <34.698723, 29.472170, 36.506683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727901, 29.248226, 36.425453>,  <34.776535, 28.874989, 36.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727901, 29.248226, 36.425453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012672, 0.342413, -0.939464,
		-0.992500, -0.109934, -0.053456,
		-0.121583, 0.933096, 0.338452,
		34.691425, 29.528154, 36.526989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257961, 29.226030, 35.806751>,  <34.776535, 28.874989, 36.290073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257961, 29.226030, 35.806751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412853, 29.546158, 35.989853>,  <34.505791, 29.738234, 36.099712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412853, 29.546158, 35.989853>,  <34.257961, 29.226030, 35.806751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412853, 29.546158, 35.989853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066422, 0.519417, -0.851935,
		-0.919586, 0.299493, 0.254295,
		0.387234, 0.800318, 0.457756,
		34.529022, 29.786253, 36.127178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801289, 29.772783, 35.753616>,  <34.257961, 29.226030, 35.806751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801289, 29.772783, 35.753616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152405, 29.954872, 35.813286>,  <34.363075, 30.064125, 35.849087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152405, 29.954872, 35.813286>,  <33.801289, 29.772783, 35.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152405, 29.954872, 35.813286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147034, 0.552398, -0.820510,
		-0.455918, 0.698304, 0.551824,
		0.877793, 0.455222, 0.149174,
		34.415741, 30.091438, 35.858036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692833, 30.480007, 35.778927>,  <33.801289, 29.772783, 35.753616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692833, 30.480007, 35.778927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081779, 30.441689, 35.693764>,  <34.315147, 30.418697, 35.642666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081779, 30.441689, 35.693764>,  <33.692833, 30.480007, 35.778927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081779, 30.441689, 35.693764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174771, 0.305951, -0.935868,
		0.154793, 0.947215, 0.280753,
		0.972365, -0.095798, -0.212905,
		34.373489, 30.412949, 35.629890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818317, 31.009466, 35.367455>,  <33.692833, 30.480007, 35.778927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818317, 31.009466, 35.367455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146130, 30.786488, 35.314346>,  <34.342815, 30.652700, 35.282482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146130, 30.786488, 35.314346>,  <33.818317, 31.009466, 35.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146130, 30.786488, 35.314346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112321, 0.383465, -0.916700,
		0.561926, 0.736346, 0.376873,
		0.819526, -0.557448, -0.132772,
		34.391987, 30.619253, 35.274513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427692, 31.448582, 35.303074>,  <33.818317, 31.009466, 35.367455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427692, 31.448582, 35.303074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475643, 31.097645, 35.117214>,  <34.504414, 30.887083, 35.005699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475643, 31.097645, 35.117214>,  <34.427692, 31.448582, 35.303074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475643, 31.097645, 35.117214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038784, 0.471810, -0.880847,
		0.992031, 0.087571, 0.090585,
		0.119875, -0.877340, -0.464654,
		34.511604, 30.834442, 34.977818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967613, 31.567894, 34.836369>,  <34.427692, 31.448582, 35.303074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967613, 31.567894, 34.836369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 31.241787, 34.691948>,  <34.677856, 31.046122, 34.605297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 31.241787, 34.691948>,  <34.967613, 31.567894, 34.836369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786514, 31.241787, 34.691948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102763, 0.449940, -0.887127,
		0.885698, -0.364540, -0.287488,
		-0.452745, -0.815270, -0.361049,
		34.650692, 30.997206, 34.583633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131927, 31.589596, 34.211082>,  <34.967613, 31.567894, 34.836369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131927, 31.589596, 34.211082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883717, 31.278065, 34.174492>,  <34.734791, 31.091146, 34.152538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883717, 31.278065, 34.174492>,  <35.131927, 31.589596, 34.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883717, 31.278065, 34.174492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217841, 0.283266, -0.933973,
		0.753317, -0.559631, -0.345436,
		-0.620530, -0.778828, -0.091479,
		34.697556, 31.044416, 34.147049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320274, 31.223379, 33.590183>,  <35.131927, 31.589596, 34.211082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320274, 31.223379, 33.590183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930698, 31.157978, 33.653057>,  <34.696953, 31.118738, 33.690781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930698, 31.157978, 33.653057>,  <35.320274, 31.223379, 33.590183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930698, 31.157978, 33.653057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177607, 0.118815, -0.976903,
		0.141054, -0.979361, -0.144759,
		-0.973940, -0.163506, 0.157182,
		34.638515, 31.108927, 33.700211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152069, 30.882305, 32.994656>,  <35.320274, 31.223379, 33.590183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152069, 30.882305, 32.994656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802277, 30.999016, 33.149647>,  <34.592400, 31.069042, 33.242641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802277, 30.999016, 33.149647>,  <35.152069, 30.882305, 32.994656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802277, 30.999016, 33.149647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341744, 0.196286, -0.919066,
		-0.344218, -0.936130, -0.071937,
		-0.874486, 0.291775, 0.387482,
		34.539932, 31.086548, 33.265892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679562, 30.593096, 32.589733>,  <35.152069, 30.882305, 32.994656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679562, 30.593096, 32.589733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497017, 30.900719, 32.768745>,  <34.387489, 31.085293, 32.876152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497017, 30.900719, 32.768745>,  <34.679562, 30.593096, 32.589733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497017, 30.900719, 32.768745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363200, 0.298148, -0.882720,
		-0.812294, -0.565381, 0.143259,
		-0.456361, 0.769059, 0.447530,
		34.360107, 31.131435, 32.903004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048664, 30.596081, 32.230618>,  <34.679562, 30.593096, 32.589733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048664, 30.596081, 32.230618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097973, 30.949810, 32.410740>,  <34.127560, 31.162048, 32.518814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097973, 30.949810, 32.410740>,  <34.048664, 30.596081, 32.230618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097973, 30.949810, 32.410740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198898, 0.466573, -0.861829,
		-0.972236, 0.016674, 0.233406,
		0.123271, 0.884325, 0.450303,
		34.134953, 31.215107, 32.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429260, 31.021627, 31.974607>,  <34.048664, 30.596081, 32.230618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429260, 31.021627, 31.974607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717968, 31.268600, 32.099716>,  <33.891193, 31.416784, 32.174782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717968, 31.268600, 32.099716>,  <33.429260, 31.021627, 31.974607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717968, 31.268600, 32.099716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054107, 0.500845, -0.863844,
		-0.690015, 0.606574, 0.394903,
		0.721770, 0.617432, 0.312770,
		33.934498, 31.453831, 32.193546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250874, 31.579899, 31.669230>,  <33.429260, 31.021627, 31.974607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250874, 31.579899, 31.669230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631607, 31.669636, 31.752827>,  <33.860046, 31.723478, 31.802986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631607, 31.669636, 31.752827>,  <33.250874, 31.579899, 31.669230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631607, 31.669636, 31.752827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048738, 0.562264, -0.825520,
		-0.302709, 0.795946, 0.524249,
		0.951836, 0.224341, 0.208995,
		33.917156, 31.736938, 31.815525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306244, 32.246830, 31.604155>,  <33.250874, 31.579899, 31.669230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306244, 32.246830, 31.604155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672729, 32.095493, 31.551376>,  <33.892620, 32.004692, 31.519711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672729, 32.095493, 31.551376>,  <33.306244, 32.246830, 31.604155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672729, 32.095493, 31.551376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, 0.508359, -0.856786,
		0.391229, 0.773583, 0.498506,
		0.916216, -0.378338, -0.131944,
		33.947594, 31.981993, 31.511793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737408, 32.746101, 31.333214>,  <33.306244, 32.246830, 31.604155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737408, 32.746101, 31.333214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949486, 32.417267, 31.250202>,  <34.076733, 32.219967, 31.200396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949486, 32.417267, 31.250202>,  <33.737408, 32.746101, 31.333214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949486, 32.417267, 31.250202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221757, 0.370696, -0.901892,
		0.818364, 0.432155, 0.378844,
		0.530193, -0.822087, -0.207531,
		34.108543, 32.170639, 31.187943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311729, 32.999840, 30.982931>,  <33.737408, 32.746101, 31.333214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311729, 32.999840, 30.982931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333168, 32.613342, 30.882137>,  <34.346031, 32.381443, 30.821661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333168, 32.613342, 30.882137>,  <34.311729, 32.999840, 30.982931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333168, 32.613342, 30.882137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407987, 0.251513, -0.877660,
		0.911413, -0.055764, 0.407697,
		0.053599, -0.966246, -0.251983,
		34.349247, 32.323467, 30.806541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983208, 32.864853, 30.551678>,  <34.311729, 32.999840, 30.982931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983208, 32.864853, 30.551678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768566, 32.547989, 30.435379>,  <34.639782, 32.357872, 30.365599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768566, 32.547989, 30.435379>,  <34.983208, 32.864853, 30.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768566, 32.547989, 30.435379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288612, 0.151482, -0.945387,
		0.792942, -0.591214, 0.147341,
		-0.536606, -0.792161, -0.290748,
		34.607586, 32.310341, 30.348154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405449, 32.458984, 30.075119>,  <34.983208, 32.864853, 30.551678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405449, 32.458984, 30.075119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029343, 32.351261, 29.991810>,  <34.803680, 32.286629, 29.941824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029343, 32.351261, 29.991810>,  <35.405449, 32.458984, 30.075119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029343, 32.351261, 29.991810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175923, 0.139403, -0.974483,
		0.291469, -0.952912, -0.083698,
		-0.940264, -0.269307, -0.208271,
		34.747265, 32.270470, 29.929329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400013, 31.980585, 29.469208>,  <35.405449, 32.458984, 30.075119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400013, 31.980585, 29.469208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 32.110950, 29.440739>,  <34.796673, 32.189171, 29.423656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 32.110950, 29.440739>,  <35.400013, 31.980585, 29.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022926, 32.110950, 29.440739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077330, 0.005954, -0.996988,
		-0.324509, -0.945381, -0.030816,
		-0.942716, 0.325914, -0.071174,
		34.740112, 32.208725, 29.419386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134357, 31.677950, 28.845095>,  <35.400013, 31.980585, 29.469208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134357, 31.677950, 28.845095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896057, 31.989395, 28.923927>,  <34.753078, 32.176262, 28.971228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896057, 31.989395, 28.923927>,  <35.134357, 31.677950, 28.845095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896057, 31.989395, 28.923927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056495, 0.204149, -0.977308,
		-0.801180, -0.593367, -0.077634,
		-0.595751, 0.778614, 0.197083,
		34.717331, 32.222980, 28.983051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761433, 31.666082, 28.270224>,  <35.134357, 31.677950, 28.845095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761433, 31.666082, 28.270224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686600, 32.025013, 28.430126>,  <34.641701, 32.240372, 28.526068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686600, 32.025013, 28.430126>,  <34.761433, 31.666082, 28.270224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686600, 32.025013, 28.430126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176640, 0.369581, -0.912254,
		-0.966333, -0.241278, 0.089363,
		-0.187080, 0.897326, 0.399757,
		34.630474, 32.294212, 28.550053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113571, 32.038116, 27.899925>,  <34.761433, 31.666082, 28.270224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113571, 32.038116, 27.899925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316635, 32.332073, 28.079800>,  <34.438473, 32.508446, 28.187725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316635, 32.332073, 28.079800>,  <34.113571, 32.038116, 27.899925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316635, 32.332073, 28.079800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096622, 0.470092, -0.877313,
		-0.856123, 0.488825, 0.167639,
		0.507658, 0.734891, 0.449688,
		34.468933, 32.552540, 28.214706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839653, 32.610043, 27.613623>,  <34.113571, 32.038116, 27.899925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839653, 32.610043, 27.613623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190731, 32.726482, 27.765892>,  <34.401379, 32.796349, 27.857254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190731, 32.726482, 27.765892>,  <33.839653, 32.610043, 27.613623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190731, 32.726482, 27.765892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138096, 0.607026, -0.782591,
		-0.458892, 0.739445, 0.492583,
		0.877694, 0.291101, 0.380674,
		34.454041, 32.813812, 27.880095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834106, 33.397205, 27.595692>,  <33.839653, 32.610043, 27.613623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834106, 33.397205, 27.595692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210632, 33.262245, 27.599361>,  <34.436546, 33.181267, 27.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210632, 33.262245, 27.599361>,  <33.834106, 33.397205, 27.595692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210632, 33.262245, 27.599361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188656, 0.503400, -0.843206,
		0.279882, 0.795454, 0.537512,
		0.941316, -0.337403, 0.009175,
		34.493027, 33.161026, 27.602114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257732, 33.961319, 27.449320>,  <33.834106, 33.397205, 27.595692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257732, 33.961319, 27.449320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511189, 33.663414, 27.365578>,  <34.663261, 33.484669, 27.315332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511189, 33.663414, 27.365578>,  <34.257732, 33.961319, 27.449320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511189, 33.663414, 27.365578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441560, 0.570366, -0.692609,
		0.635240, 0.346420, 0.690263,
		0.633637, -0.744766, -0.209353,
		34.701279, 33.439983, 27.302773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861805, 34.259571, 27.365671>,  <34.257732, 33.961319, 27.449320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861805, 34.259571, 27.365671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876877, 33.917065, 27.159611>,  <34.885921, 33.711559, 27.035975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876877, 33.917065, 27.159611>,  <34.861805, 34.259571, 27.365671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876877, 33.917065, 27.159611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216953, 0.510233, -0.832223,
		0.975455, -0.080407, 0.204995,
		0.037679, -0.856270, -0.515153,
		34.888180, 33.660183, 27.005064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220768, 34.474705, 26.795721>,  <34.861805, 34.259571, 27.365671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220768, 34.474705, 26.795721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106869, 34.114941, 26.663063>,  <35.038528, 33.899082, 26.583467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106869, 34.114941, 26.663063>,  <35.220768, 34.474705, 26.795721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106869, 34.114941, 26.663063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146383, 0.301112, -0.942286,
		0.947360, -0.316859, 0.045917,
		-0.284746, -0.899406, -0.331645,
		35.021446, 33.845119, 26.563570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698914, 34.239697, 26.397461>,  <35.220768, 34.474705, 26.795721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698914, 34.239697, 26.397461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390839, 34.005539, 26.296165>,  <35.205994, 33.865044, 26.235388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390839, 34.005539, 26.296165>,  <35.698914, 34.239697, 26.397461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390839, 34.005539, 26.296165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002948, 0.400300, -0.916380,
		0.637810, -0.705038, -0.310032,
		-0.770188, -0.585390, -0.253237,
		35.159782, 33.829922, 26.220194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955395, 33.867188, 25.854803>,  <35.698914, 34.239697, 26.397461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955395, 33.867188, 25.854803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556572, 33.863682, 25.824352>,  <35.317276, 33.861580, 25.806082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556572, 33.863682, 25.824352>,  <35.955395, 33.867188, 25.854803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556572, 33.863682, 25.824352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067952, 0.358079, -0.931215,
		0.035418, -0.933650, -0.356431,
		-0.997060, -0.008762, -0.076126,
		35.257454, 33.861053, 25.801514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903515, 33.636120, 25.214245>,  <35.955395, 33.867188, 25.854803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903515, 33.636120, 25.214245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539223, 33.780891, 25.293816>,  <35.320648, 33.867752, 25.341558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539223, 33.780891, 25.293816>,  <35.903515, 33.636120, 25.214245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539223, 33.780891, 25.293816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078429, 0.321342, -0.943710,
		-0.405476, -0.875071, -0.264272,
		-0.910735, 0.361926, 0.198927,
		35.266003, 33.889469, 25.353495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479641, 33.372780, 24.583122>,  <35.903515, 33.636120, 25.214245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479641, 33.372780, 24.583122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283707, 33.677212, 24.753212>,  <35.166145, 33.859871, 24.855267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283707, 33.677212, 24.753212>,  <35.479641, 33.372780, 24.583122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283707, 33.677212, 24.753212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146716, 0.408825, -0.900742,
		-0.859382, -0.503601, -0.088593,
		-0.489833, 0.761083, 0.425224,
		35.136757, 33.905537, 24.880779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721859, 33.454197, 24.249660>,  <35.479641, 33.372780, 24.583122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721859, 33.454197, 24.249660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826107, 33.811504, 24.396164>,  <34.888657, 34.025890, 24.484066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826107, 33.811504, 24.396164>,  <34.721859, 33.454197, 24.249660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826107, 33.811504, 24.396164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357298, 0.441673, -0.822960,
		-0.896893, 0.083613, 0.434271,
		0.260616, 0.893271, 0.366259,
		34.904293, 34.079487, 24.506041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207268, 33.782406, 24.203653>,  <34.721859, 33.454197, 24.249660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207268, 33.782406, 24.203653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480820, 34.074154, 24.210945>,  <34.644951, 34.249203, 24.215321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480820, 34.074154, 24.210945>,  <34.207268, 33.782406, 24.203653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480820, 34.074154, 24.210945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357323, 0.356613, -0.863219,
		-0.636103, 0.583825, 0.504501,
		0.683881, 0.729366, 0.018228,
		34.685986, 34.292965, 24.216413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845165, 34.416859, 24.060671>,  <34.207268, 33.782406, 24.203653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845165, 34.416859, 24.060671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227627, 34.515987, 23.998260>,  <34.457104, 34.575466, 23.960814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227627, 34.515987, 23.998260>,  <33.845165, 34.416859, 24.060671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227627, 34.515987, 23.998260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259902, 0.472592, -0.842085,
		-0.134955, 0.845718, 0.516283,
		0.956158, 0.247826, -0.156025,
		34.514473, 34.590336, 23.951452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904781, 35.120941, 23.930571>,  <33.845165, 34.416859, 24.060671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904781, 35.120941, 23.930571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241714, 34.975258, 23.771660>,  <34.443874, 34.887848, 23.676313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241714, 34.975258, 23.771660>,  <33.904781, 35.120941, 23.930571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241714, 34.975258, 23.771660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279237, 0.335561, -0.899681,
		0.460984, 0.868764, 0.180952,
		0.842331, -0.364210, -0.397279,
		34.494415, 34.865993, 23.652475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526001, 35.051132, 24.633526>,  <33.904781, 35.120941, 23.930571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526001, 35.051132, 24.633526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160385, 35.211327, 24.607788>,  <32.941013, 35.307442, 24.592344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160385, 35.211327, 24.607788>,  <33.526001, 35.051132, 24.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160385, 35.211327, 24.607788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103923, -0.077880, 0.991532,
		0.392082, 0.912988, 0.112805,
		-0.914041, 0.400485, -0.064346,
		32.886173, 35.331470, 24.588484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495689, 35.416172, 25.324682>,  <33.526001, 35.051132, 24.633526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495689, 35.416172, 25.324682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119843, 35.359032, 25.200287>,  <32.894333, 35.324749, 25.125650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119843, 35.359032, 25.200287>,  <33.495689, 35.416172, 25.324682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119843, 35.359032, 25.200287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334376, 0.189671, 0.923156,
		-0.072886, 0.971401, -0.225984,
		-0.939617, -0.142848, -0.310989,
		32.837959, 35.316177, 25.106991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158676, 35.936943, 25.758152>,  <33.495689, 35.416172, 25.324682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158676, 35.936943, 25.758152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886620, 35.678986, 25.618713>,  <32.723385, 35.524212, 25.535051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886620, 35.678986, 25.618713>,  <33.158676, 35.936943, 25.758152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886620, 35.678986, 25.618713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436566, -0.025689, 0.899306,
		-0.588911, 0.763841, -0.264066,
		-0.680143, -0.644893, -0.348595,
		32.682575, 35.485519, 25.514135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484020, 36.157017, 26.004444>,  <33.158676, 35.936943, 25.758152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484020, 36.157017, 26.004444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447052, 35.766415, 25.926571>,  <32.424870, 35.532055, 25.879847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447052, 35.766415, 25.926571>,  <32.484020, 36.157017, 26.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447052, 35.766415, 25.926571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385249, -0.145222, 0.911314,
		-0.918172, 0.159227, -0.362775,
		-0.092423, -0.976502, -0.194681,
		32.419327, 35.473465, 25.868166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804178, 36.002762, 26.247446>,  <32.484020, 36.157017, 26.004444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804178, 36.002762, 26.247446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025314, 35.671066, 26.214638>,  <32.157997, 35.472050, 26.194954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025314, 35.671066, 26.214638>,  <31.804178, 36.002762, 26.247446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025314, 35.671066, 26.214638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147626, -0.194338, 0.969763,
		-0.820108, -0.524014, -0.229855,
		0.552838, -0.829242, -0.082020,
		32.191166, 35.422295, 26.190031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401602, 35.532940, 26.609818>,  <31.804178, 36.002762, 26.247446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401602, 35.532940, 26.609818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760923, 35.358772, 26.586288>,  <31.976517, 35.254272, 26.572172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760923, 35.358772, 26.586288>,  <31.401602, 35.532940, 26.609818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760923, 35.358772, 26.586288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027846, -0.190024, 0.981384,
		-0.438495, -0.879941, -0.182824,
		0.898302, -0.435424, -0.058822,
		32.030415, 35.228146, 26.568642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284288, 34.945560, 26.912031>,  <31.401602, 35.532940, 26.609818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284288, 34.945560, 26.912031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675711, 35.012691, 26.959797>,  <31.910564, 35.052971, 26.988457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675711, 35.012691, 26.959797>,  <31.284288, 34.945560, 26.912031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675711, 35.012691, 26.959797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087553, -0.185856, 0.978669,
		0.186440, -0.968139, -0.167177,
		0.978558, 0.167826, 0.119414,
		31.969278, 35.063038, 26.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506367, 34.566269, 27.382542>,  <31.284288, 34.945560, 26.912031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506367, 34.566269, 27.382542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815794, 34.819710, 27.387146>,  <32.001450, 34.971775, 27.389908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815794, 34.819710, 27.387146>,  <31.506367, 34.566269, 27.382542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815794, 34.819710, 27.387146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002679, -0.021431, 0.999767,
		0.633705, -0.773359, -0.018276,
		0.773570, 0.633607, 0.011509,
		32.047867, 35.009792, 27.390598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026623, 34.232536, 27.718374>,  <31.506367, 34.566269, 27.382542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026623, 34.232536, 27.718374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139671, 34.615406, 27.743504>,  <32.207500, 34.845127, 27.758581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139671, 34.615406, 27.743504>,  <32.026623, 34.232536, 27.718374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139671, 34.615406, 27.743504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138222, -0.105449, 0.984771,
		0.949219, -0.269637, -0.162105,
		0.282625, 0.957171, 0.062824,
		32.224461, 34.902557, 27.762350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684795, 34.233974, 28.220112>,  <32.026623, 34.232536, 27.718374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684795, 34.233974, 28.220112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479805, 34.577450, 28.221779>,  <32.356812, 34.783535, 28.222778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479805, 34.577450, 28.221779>,  <32.684795, 34.233974, 28.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479805, 34.577450, 28.221779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137960, 0.077543, 0.987398,
		0.847546, 0.506593, -0.158204,
		-0.512476, 0.858691, 0.004168,
		32.326061, 34.835056, 28.223030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039684, 34.739910, 28.734474>,  <32.684795, 34.233974, 28.220112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039684, 34.739910, 28.734474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671398, 34.892490, 28.701542>,  <32.450428, 34.984039, 28.681782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671398, 34.892490, 28.701542>,  <33.039684, 34.739910, 28.734474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671398, 34.892490, 28.701542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009730, 0.188469, 0.982031,
		0.390115, 0.904971, -0.169815,
		-0.920715, 0.381453, -0.082331,
		32.395184, 35.006927, 28.676844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076908, 35.225235, 29.104906>,  <33.039684, 34.739910, 28.734474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076908, 35.225235, 29.104906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678669, 35.193989, 29.084160>,  <32.439728, 35.175240, 29.071712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678669, 35.193989, 29.084160>,  <33.076908, 35.225235, 29.104906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678669, 35.193989, 29.084160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045022, -0.086973, 0.995193,
		-0.082251, 0.993143, 0.083072,
		-0.995594, -0.078116, -0.051867,
		32.379990, 35.170555, 29.068600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899353, 35.603458, 29.580818>,  <33.076908, 35.225235, 29.104906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899353, 35.603458, 29.580818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567219, 35.391525, 29.511738>,  <32.367939, 35.264366, 29.470289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567219, 35.391525, 29.511738>,  <32.899353, 35.603458, 29.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567219, 35.391525, 29.511738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131847, -0.114328, 0.984655,
		-0.541449, 0.840360, 0.025073,
		-0.830331, -0.529834, -0.172702,
		32.318119, 35.232574, 29.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331642, 35.845299, 29.821236>,  <32.899353, 35.603458, 29.580818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331642, 35.845299, 29.821236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202190, 35.468769, 29.782913>,  <32.124519, 35.242851, 29.759920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202190, 35.468769, 29.782913>,  <32.331642, 35.845299, 29.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202190, 35.468769, 29.782913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091163, -0.069765, 0.993389,
		-0.941781, 0.330228, -0.063235,
		-0.323633, -0.941320, -0.095807,
		32.105099, 35.186375, 29.754171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962820, 35.812454, 30.417219>,  <32.331642, 35.845299, 29.821236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962820, 35.812454, 30.417219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038910, 35.438774, 30.296497>,  <32.084564, 35.214565, 30.224064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038910, 35.438774, 30.296497>,  <31.962820, 35.812454, 30.417219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038910, 35.438774, 30.296497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107745, -0.325427, 0.939408,
		-0.975810, -0.146182, -0.162560,
		0.190226, -0.934199, -0.301804,
		32.095978, 35.158516, 30.205956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474140, 35.340710, 30.679684>,  <31.962820, 35.812454, 30.417219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474140, 35.340710, 30.679684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795290, 35.110016, 30.619324>,  <31.987980, 34.971600, 30.583107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795290, 35.110016, 30.619324>,  <31.474140, 35.340710, 30.679684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795290, 35.110016, 30.619324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084331, -0.360458, 0.928955,
		-0.590155, -0.733108, -0.338039,
		0.802873, -0.576735, -0.150903,
		32.036152, 34.936996, 30.574053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329817, 34.731171, 30.947546>,  <31.474140, 35.340710, 30.679684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329817, 34.731171, 30.947546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725620, 34.692417, 30.904675>,  <31.963102, 34.669167, 30.878952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725620, 34.692417, 30.904675>,  <31.329817, 34.731171, 30.947546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725620, 34.692417, 30.904675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034435, -0.562311, 0.826208,
		-0.140314, -0.821231, -0.553075,
		0.989508, -0.096883, -0.107179,
		32.022472, 34.663353, 30.872520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483835, 33.928169, 30.967663>,  <31.329817, 34.731171, 30.947546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483835, 33.928169, 30.967663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803610, 34.147198, 31.066509>,  <31.995476, 34.278614, 31.125818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803610, 34.147198, 31.066509>,  <31.483835, 33.928169, 30.967663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803610, 34.147198, 31.066509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106044, -0.533515, 0.839117,
		0.591315, -0.644617, -0.484578,
		0.799438, 0.547569, 0.247117,
		32.043442, 34.311470, 31.140644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844990, 33.466198, 31.237524>,  <31.483835, 33.928169, 30.967663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844990, 33.466198, 31.237524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023968, 33.793171, 31.382633>,  <32.131355, 33.989353, 31.469698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023968, 33.793171, 31.382633>,  <31.844990, 33.466198, 31.237524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023968, 33.793171, 31.382633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189939, -0.483251, 0.854630,
		0.873908, -0.313495, -0.371490,
		0.447445, 0.817428, 0.362772,
		32.158203, 34.038399, 31.491465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500347, 33.246212, 31.468025>,  <31.844990, 33.466198, 31.237524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500347, 33.246212, 31.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433895, 33.590519, 31.660473>,  <32.394024, 33.797104, 31.775942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433895, 33.590519, 31.660473>,  <32.500347, 33.246212, 31.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433895, 33.590519, 31.660473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274746, -0.428173, 0.860920,
		0.947055, 0.275213, -0.165359,
		-0.166134, 0.860770, 0.481117,
		32.384056, 33.848751, 31.804808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049789, 33.297001, 31.963118>,  <32.500347, 33.246212, 31.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049789, 33.297001, 31.963118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776161, 33.562984, 32.083035>,  <32.611984, 33.722576, 32.154984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776161, 33.562984, 32.083035>,  <33.049789, 33.297001, 31.963118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776161, 33.562984, 32.083035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022720, -0.391375, 0.919951,
		0.729063, 0.636121, 0.252619,
		-0.684069, 0.664963, 0.299790,
		32.570942, 33.762474, 32.172970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266022, 33.571732, 32.634232>,  <33.049789, 33.297001, 31.963118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266022, 33.571732, 32.634232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873989, 33.639832, 32.593349>,  <32.638767, 33.680691, 32.568821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873989, 33.639832, 32.593349>,  <33.266022, 33.571732, 32.634232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873989, 33.639832, 32.593349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159525, -0.368560, 0.915814,
		0.118253, 0.913880, 0.388380,
		-0.980086, 0.170254, -0.102203,
		32.579964, 33.690907, 32.562687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048862, 33.928070, 33.193836>,  <33.266022, 33.571732, 32.634232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048862, 33.928070, 33.193836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729107, 33.739532, 33.044807>,  <32.537254, 33.626411, 32.955391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729107, 33.739532, 33.044807>,  <33.048862, 33.928070, 33.193836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729107, 33.739532, 33.044807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054648, -0.560508, 0.826344,
		-0.598320, 0.680933, 0.422308,
		-0.799391, -0.471340, -0.372575,
		32.489288, 33.598129, 32.933037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575981, 33.899685, 33.740646>,  <33.048862, 33.928070, 33.193836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575981, 33.899685, 33.740646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431793, 33.633636, 33.479057>,  <32.345280, 33.474007, 33.322105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431793, 33.633636, 33.479057>,  <32.575981, 33.899685, 33.740646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431793, 33.633636, 33.479057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115477, -0.663888, 0.738863,
		-0.925596, 0.341855, 0.162504,
		-0.360468, -0.665123, -0.653968,
		32.323654, 33.434101, 33.282867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101959, 33.557346, 34.094482>,  <32.575981, 33.899685, 33.740646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101959, 33.557346, 34.094482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113537, 33.282898, 33.803719>,  <32.120483, 33.118229, 33.629261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113537, 33.282898, 33.803719>,  <32.101959, 33.557346, 34.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113537, 33.282898, 33.803719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089494, -0.726075, 0.681767,
		-0.995567, 0.045320, -0.082421,
		0.028947, -0.686120, -0.726912,
		32.122219, 33.077061, 33.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474657, 33.045471, 34.184601>,  <32.101959, 33.557346, 34.094482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474657, 33.045471, 34.184601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760992, 32.867722, 33.969154>,  <31.932793, 32.761070, 33.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760992, 32.867722, 33.969154>,  <31.474657, 33.045471, 34.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760992, 32.867722, 33.969154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074914, -0.718037, 0.691961,
		-0.694235, -0.535683, -0.480709,
		0.715839, -0.444372, -0.538617,
		31.975742, 32.734409, 33.807568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215179, 32.386810, 33.967606>,  <31.474657, 33.045471, 34.184601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215179, 32.386810, 33.967606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613949, 32.359379, 33.952423>,  <31.853210, 32.342922, 33.943314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613949, 32.359379, 33.952423>,  <31.215179, 32.386810, 33.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613949, 32.359379, 33.952423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043409, -0.886274, 0.461122,
		-0.065258, -0.458056, -0.886524,
		0.996924, -0.068575, -0.037953,
		31.913027, 32.338806, 33.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309782, 31.742941, 33.746853>,  <31.215179, 32.386810, 33.967606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309782, 31.742941, 33.746853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652166, 31.860577, 33.916954>,  <31.857597, 31.931158, 34.019016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652166, 31.860577, 33.916954>,  <31.309782, 31.742941, 33.746853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652166, 31.860577, 33.916954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028941, -0.848440, 0.528500,
		0.516228, -0.440068, -0.734744,
		0.855962, 0.294091, 0.425252,
		31.908955, 31.948805, 34.044529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696751, 31.143591, 33.773132>,  <31.309782, 31.742941, 33.746853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696751, 31.143591, 33.773132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820883, 31.396351, 34.057217>,  <31.895363, 31.548006, 34.227669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820883, 31.396351, 34.057217>,  <31.696751, 31.143591, 33.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820883, 31.396351, 34.057217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103574, -0.765123, 0.635499,
		0.944969, -0.123655, -0.302889,
		0.310331, 0.631899, 0.710210,
		31.913982, 31.585920, 34.270279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170750, 30.708570, 34.172642>,  <31.696751, 31.143591, 33.773132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170750, 30.708570, 34.172642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043560, 31.021862, 34.386349>,  <31.967245, 31.209837, 34.514572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043560, 31.021862, 34.386349>,  <32.170750, 30.708570, 34.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043560, 31.021862, 34.386349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038098, -0.573619, 0.818236,
		0.947332, 0.239827, 0.212238,
		-0.317978, 0.783227, 0.534271,
		31.948166, 31.256830, 34.546631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433067, 30.552032, 34.853275>,  <32.170750, 30.708570, 34.172642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433067, 30.552032, 34.853275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173275, 30.843632, 34.939743>,  <32.017399, 31.018591, 34.991623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173275, 30.843632, 34.939743>,  <32.433067, 30.552032, 34.853275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173275, 30.843632, 34.939743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227096, -0.457296, 0.859830,
		0.725671, 0.509354, 0.462559,
		-0.649484, 0.728999, 0.216174,
		31.978430, 31.062332, 35.004597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465702, 30.684280, 35.557919>,  <32.433067, 30.552032, 34.853275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465702, 30.684280, 35.557919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114910, 30.844486, 35.451714>,  <31.904436, 30.940609, 35.387989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114910, 30.844486, 35.451714>,  <32.465702, 30.684280, 35.557919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114910, 30.844486, 35.451714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421557, -0.376026, 0.825163,
		0.230650, 0.835579, 0.498606,
		-0.876978, 0.400515, -0.265514,
		31.851816, 30.964642, 35.372059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215687, 31.036657, 36.228710>,  <32.465702, 30.684280, 35.557919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215687, 31.036657, 36.228710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917387, 30.953915, 35.975391>,  <31.738407, 30.904270, 35.823399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917387, 30.953915, 35.975391>,  <32.215687, 31.036657, 36.228710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917387, 30.953915, 35.975391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567161, -0.301629, 0.766387,
		-0.349553, 0.930715, 0.107619,
		-0.745749, -0.206855, -0.633301,
		31.693663, 30.891859, 35.785400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624519, 31.142553, 36.623539>,  <32.215687, 31.036657, 36.228710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624519, 31.142553, 36.623539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474443, 30.940479, 36.312664>,  <31.384398, 30.819235, 36.126141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474443, 30.940479, 36.312664>,  <31.624519, 31.142553, 36.623539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474443, 30.940479, 36.312664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745892, -0.333253, 0.576704,
		-0.550342, 0.796072, -0.251779,
		-0.375191, -0.505185, -0.777187,
		31.361887, 30.788923, 36.079510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878017, 31.223246, 36.644253>,  <31.624519, 31.142553, 36.623539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878017, 31.223246, 36.644253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936239, 30.898121, 36.418633>,  <30.971172, 30.703047, 36.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936239, 30.898121, 36.418633>,  <30.878017, 31.223246, 36.644253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936239, 30.898121, 36.418633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707711, -0.483936, 0.514733,
		-0.691345, 0.324263, -0.645674,
		0.145556, -0.812810, -0.564052,
		30.979906, 30.654278, 36.249416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260010, 31.067707, 36.246082>,  <30.878017, 31.223246, 36.644253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260010, 31.067707, 36.246082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452827, 30.720135, 36.290974>,  <30.568518, 30.511591, 36.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452827, 30.720135, 36.290974>,  <30.260010, 31.067707, 36.246082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452827, 30.720135, 36.290974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607151, -0.238949, 0.757807,
		-0.631665, -0.433435, -0.642755,
		0.482046, -0.868929, 0.112225,
		30.597441, 30.459455, 36.324642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746376, 30.555994, 36.108971>,  <30.260010, 31.067707, 36.246082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746376, 30.555994, 36.108971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035906, 30.358124, 36.301376>,  <30.209623, 30.239401, 36.416821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035906, 30.358124, 36.301376>,  <29.746376, 30.555994, 36.108971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035906, 30.358124, 36.301376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653435, -0.267560, 0.708120,
		-0.221581, -0.826872, -0.516899,
		0.723826, -0.494666, 0.481021,
		30.253054, 30.209721, 36.445683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431046, 30.064667, 36.420937>,  <29.746376, 30.555994, 36.108971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431046, 30.064667, 36.420937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768063, 30.067253, 36.636372>,  <29.970274, 30.068806, 36.765633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768063, 30.067253, 36.636372>,  <29.431046, 30.064667, 36.420937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768063, 30.067253, 36.636372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527453, -0.192707, 0.827440,
		0.109141, -0.981235, -0.158953,
		0.842545, 0.006468, 0.538587,
		30.020826, 30.069193, 36.797947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450943, 29.596649, 36.954826>,  <29.431046, 30.064667, 36.420937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450943, 29.596649, 36.954826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112337, 29.620148, 37.166470>,  <28.909174, 29.634247, 37.293457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112337, 29.620148, 37.166470>,  <29.450943, 29.596649, 36.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112337, 29.620148, 37.166470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413372, 0.553756, -0.722826,
		-0.335461, -0.830604, -0.444480,
		-0.846516, 0.058745, 0.529112,
		28.858383, 29.637772, 37.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924309, 29.401541, 36.508179>,  <29.450943, 29.596649, 36.954826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924309, 29.401541, 36.508179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791349, 29.642017, 36.798855>,  <28.711575, 29.786303, 36.973263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791349, 29.642017, 36.798855>,  <28.924309, 29.401541, 36.508179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791349, 29.642017, 36.798855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451217, 0.575234, -0.682282,
		-0.828200, -0.554685, 0.080061,
		-0.332398, 0.601190, 0.726692,
		28.691629, 29.822374, 37.016861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280861, 29.477110, 36.233490>,  <28.924309, 29.401541, 36.508179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280861, 29.477110, 36.233490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298117, 29.761501, 36.514244>,  <28.308470, 29.932137, 36.682697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298117, 29.761501, 36.514244>,  <28.280861, 29.477110, 36.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298117, 29.761501, 36.514244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531175, 0.611344, -0.586611,
		-0.846163, -0.347519, 0.404028,
		0.043141, 0.710978, 0.701890,
		28.311060, 29.974794, 36.724812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569571, 29.625912, 36.379128>,  <28.280861, 29.477110, 36.233490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569571, 29.625912, 36.379128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801105, 29.928619, 36.500614>,  <27.940027, 30.110245, 36.573505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801105, 29.928619, 36.500614>,  <27.569571, 29.625912, 36.379128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801105, 29.928619, 36.500614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424226, 0.597554, -0.680413,
		-0.696403, 0.265005, 0.666930,
		0.578840, 0.756770, 0.303716,
		27.974758, 30.155651, 36.591728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148945, 30.202583, 36.351959>,  <27.569571, 29.625912, 36.379128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148945, 30.202583, 36.351959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515360, 30.363018, 36.351742>,  <27.735210, 30.459278, 36.351612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515360, 30.363018, 36.351742>,  <27.148945, 30.202583, 36.351959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515360, 30.363018, 36.351742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283360, 0.646197, -0.708616,
		-0.283863, 0.649275, 0.705595,
		0.916040, 0.401087, -0.000547,
		27.790173, 30.483343, 36.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992149, 30.880095, 36.287560>,  <27.148945, 30.202583, 36.351959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992149, 30.880095, 36.287560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378145, 30.864662, 36.183788>,  <27.609743, 30.855402, 36.121525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378145, 30.864662, 36.183788>,  <26.992149, 30.880095, 36.287560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378145, 30.864662, 36.183788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142169, 0.754266, -0.640992,
		0.220408, 0.655435, 0.722375,
		0.964991, -0.038581, -0.259429,
		27.667643, 30.853088, 36.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150303, 31.544935, 36.179062>,  <26.992149, 30.880095, 36.287560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150303, 31.544935, 36.179062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458937, 31.358643, 36.005741>,  <27.644117, 31.246866, 35.901749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458937, 31.358643, 36.005741>,  <27.150303, 31.544935, 36.179062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458937, 31.358643, 36.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014597, 0.668014, -0.744005,
		0.635958, 0.580389, 0.508632,
		0.771586, -0.465732, -0.433301,
		27.690413, 31.218924, 35.875751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704327, 32.061382, 35.889748>,  <27.150303, 31.544935, 36.179062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704327, 32.061382, 35.889748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760204, 31.728020, 35.675865>,  <27.793732, 31.528002, 35.547535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760204, 31.728020, 35.675865>,  <27.704327, 32.061382, 35.889748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760204, 31.728020, 35.675865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100546, 0.549149, -0.829654,
		0.985077, 0.062135, 0.160509,
		0.139694, -0.833411, -0.534707,
		27.802113, 31.477997, 35.515453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179993, 32.289745, 35.453350>,  <27.704327, 32.061382, 35.889748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179993, 32.289745, 35.453350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053997, 31.955914, 35.272572>,  <27.978399, 31.755615, 35.164104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053997, 31.955914, 35.272572>,  <28.179993, 32.289745, 35.453350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053997, 31.955914, 35.272572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108832, 0.441286, -0.890743,
		0.942834, -0.329762, -0.048172,
		-0.314990, -0.834580, -0.451948,
		27.959499, 31.705540, 35.136986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692064, 32.008217, 35.131565>,  <28.179993, 32.289745, 35.453350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692064, 32.008217, 35.131565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344683, 31.931904, 34.948528>,  <28.136253, 31.886116, 34.838707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344683, 31.931904, 34.948528>,  <28.692064, 32.008217, 35.131565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344683, 31.931904, 34.948528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329194, 0.468226, -0.819997,
		0.370698, -0.862766, -0.343827,
		-0.868455, -0.190786, -0.457588,
		28.084146, 31.874668, 34.811253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940462, 31.786924, 34.467632>,  <28.692064, 32.008217, 35.131565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940462, 31.786924, 34.467632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565563, 31.915710, 34.414112>,  <28.340624, 31.992983, 34.382000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565563, 31.915710, 34.414112>,  <28.940462, 31.786924, 34.467632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565563, 31.915710, 34.414112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267653, 0.418481, -0.867892,
		-0.223441, -0.849242, -0.478396,
		-0.937250, 0.321967, -0.133796,
		28.284388, 32.012299, 34.373974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779095, 31.695854, 33.854401>,  <28.940462, 31.786924, 34.467632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779095, 31.695854, 33.854401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481789, 31.958786, 33.904163>,  <28.303406, 32.116547, 33.934021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481789, 31.958786, 33.904163>,  <28.779095, 31.695854, 33.854401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481789, 31.958786, 33.904163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201388, 0.397170, -0.895376,
		-0.637968, -0.640447, -0.427580,
		-0.743263, 0.657331, 0.124403,
		28.258810, 32.155987, 33.941483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496714, 31.725487, 33.274574>,  <28.779095, 31.695854, 33.854401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496714, 31.725487, 33.274574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341761, 32.060955, 33.427708>,  <28.248789, 32.262238, 33.519588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341761, 32.060955, 33.427708>,  <28.496714, 31.725487, 33.274574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341761, 32.060955, 33.427708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008465, 0.418478, -0.908188,
		-0.921880, -0.348576, -0.169211,
		-0.387384, 0.838672, 0.382835,
		28.225546, 32.312557, 33.542557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821449, 31.780806, 32.973095>,  <28.496714, 31.725487, 33.274574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821449, 31.780806, 32.973095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920380, 32.150387, 33.089813>,  <27.979738, 32.372135, 33.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920380, 32.150387, 33.089813>,  <27.821449, 31.780806, 32.973095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920380, 32.150387, 33.089813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204923, 0.344219, -0.916253,
		-0.947015, 0.166816, 0.274472,
		0.247324, 0.923951, 0.291796,
		27.994577, 32.427570, 33.177353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376749, 32.175903, 32.564541>,  <27.821449, 31.780806, 32.973095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376749, 32.175903, 32.564541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667257, 32.417377, 32.696049>,  <27.841562, 32.562263, 32.774956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667257, 32.417377, 32.696049>,  <27.376749, 32.175903, 32.564541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667257, 32.417377, 32.696049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171150, 0.304416, -0.937037,
		-0.665759, 0.736814, 0.117768,
		0.726273, 0.603685, 0.328774,
		27.885139, 32.598484, 32.794682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216049, 32.669571, 32.119442>,  <27.376749, 32.175903, 32.564541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216049, 32.669571, 32.119442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593464, 32.700729, 32.248230>,  <27.819914, 32.719425, 32.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593464, 32.700729, 32.248230>,  <27.216049, 32.669571, 32.119442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593464, 32.700729, 32.248230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306304, 0.164978, -0.937529,
		-0.126147, 0.983216, 0.131804,
		0.943538, 0.077894, 0.321975,
		27.876526, 32.724098, 32.344822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472677, 33.180641, 31.831894>,  <27.216049, 32.669571, 32.119442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472677, 33.180641, 31.831894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829185, 33.028465, 31.930603>,  <28.043091, 32.937160, 31.989828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829185, 33.028465, 31.930603>,  <27.472677, 33.180641, 31.831894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829185, 33.028465, 31.930603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357387, 0.254349, -0.898655,
		0.279122, 0.889139, 0.362660,
		0.891272, -0.380444, 0.246772,
		28.096567, 32.914333, 32.004635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820732, 33.599857, 31.467640>,  <27.472677, 33.180641, 31.831894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820732, 33.599857, 31.467640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087387, 33.319748, 31.569782>,  <28.247379, 33.151680, 31.631067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087387, 33.319748, 31.569782>,  <27.820732, 33.599857, 31.467640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087387, 33.319748, 31.569782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567818, 0.255163, -0.782608,
		0.482884, 0.666712, 0.567730,
		0.666638, -0.700276, 0.255357,
		28.287378, 33.109665, 31.646389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555309, 33.895554, 31.685774>,  <27.820732, 33.599857, 31.467640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555309, 33.895554, 31.685774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579020, 33.520271, 31.549385>,  <28.593246, 33.295101, 31.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579020, 33.520271, 31.549385>,  <28.555309, 33.895554, 31.685774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579020, 33.520271, 31.549385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668998, 0.290852, -0.683994,
		0.740897, -0.187564, 0.644896,
		0.059276, -0.938203, -0.340971,
		28.596802, 33.238811, 31.447094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282305, 33.852112, 31.515079>,  <28.555309, 33.895554, 31.685774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282305, 33.852112, 31.515079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101109, 33.552467, 31.321739>,  <28.992392, 33.372681, 31.205734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101109, 33.552467, 31.321739>,  <29.282305, 33.852112, 31.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101109, 33.552467, 31.321739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448136, 0.277360, -0.849850,
		0.770697, -0.601580, 0.210064,
		-0.452989, -0.749115, -0.483351,
		28.965212, 33.327732, 31.176735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841351, 33.439579, 31.250181>,  <29.282305, 33.852112, 31.515079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841351, 33.439579, 31.250181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506939, 33.348904, 31.050316>,  <29.306292, 33.294498, 30.930397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506939, 33.348904, 31.050316>,  <29.841351, 33.439579, 31.250181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506939, 33.348904, 31.050316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430330, 0.294060, -0.853431,
		0.340401, -0.928514, -0.148289,
		-0.836028, -0.226696, -0.499666,
		29.256130, 33.280895, 30.900415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120901, 33.006165, 30.663887>,  <29.841351, 33.439579, 31.250181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120901, 33.006165, 30.663887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755772, 33.067017, 30.512302>,  <29.536694, 33.103527, 30.421350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755772, 33.067017, 30.512302>,  <30.120901, 33.006165, 30.663887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755772, 33.067017, 30.512302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407484, 0.278653, -0.869660,
		-0.026702, -0.948266, -0.316351,
		-0.912822, 0.152130, -0.378963,
		29.481926, 33.112656, 30.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193905, 32.767845, 30.050814>,  <30.120901, 33.006165, 30.663887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193905, 32.767845, 30.050814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897499, 33.036263, 30.060616>,  <29.719656, 33.197311, 30.066496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897499, 33.036263, 30.060616>,  <30.193905, 32.767845, 30.050814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897499, 33.036263, 30.060616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297953, 0.361287, -0.883570,
		-0.601765, -0.647437, -0.467659,
		-0.741015, 0.671041, 0.024504,
		29.675194, 33.237576, 30.067966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930843, 32.748066, 29.397633>,  <30.193905, 32.767845, 30.050814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930843, 32.748066, 29.397633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847462, 33.112213, 29.540611>,  <29.797434, 33.330704, 29.626398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847462, 33.112213, 29.540611>,  <29.930843, 32.748066, 29.397633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847462, 33.112213, 29.540611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015026, 0.368416, -0.929540,
		-0.977917, -0.188394, -0.090477,
		-0.208453, 0.910372, 0.357449,
		29.784925, 33.385326, 29.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350317, 33.010952, 29.046551>,  <29.930843, 32.748066, 29.397633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350317, 33.010952, 29.046551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540867, 33.330158, 29.194191>,  <29.655197, 33.521683, 29.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540867, 33.330158, 29.194191>,  <29.350317, 33.010952, 29.046551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540867, 33.330158, 29.194191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069502, 0.384304, -0.920587,
		-0.876492, 0.464196, 0.127609,
		0.476373, 0.798018, 0.369102,
		29.683779, 33.569565, 29.304922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083870, 33.521866, 28.724874>,  <29.350317, 33.010952, 29.046551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083870, 33.521866, 28.724874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421692, 33.679298, 28.870102>,  <29.624384, 33.773758, 28.957239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421692, 33.679298, 28.870102>,  <29.083870, 33.521866, 28.724874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421692, 33.679298, 28.870102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241227, 0.325681, -0.914189,
		-0.478056, 0.859664, 0.180112,
		0.844554, 0.393586, 0.363068,
		29.675058, 33.797375, 28.979023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977921, 33.907646, 28.066603>,  <29.083870, 33.521866, 28.724874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977921, 33.907646, 28.066603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286839, 34.066570, 28.264877>,  <29.472189, 34.161926, 28.383842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286839, 34.066570, 28.264877>,  <28.977921, 33.907646, 28.066603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286839, 34.066570, 28.264877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115091, 0.679864, -0.724251,
		-0.624751, 0.616385, 0.479328,
		0.772295, 0.397310, 0.495686,
		29.518528, 34.185764, 28.413584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801949, 34.678257, 28.222706>,  <28.977921, 33.907646, 28.066603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801949, 34.678257, 28.222706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193436, 34.604691, 28.186298>,  <29.428328, 34.560551, 28.164454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193436, 34.604691, 28.186298>,  <28.801949, 34.678257, 28.222706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193436, 34.604691, 28.186298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075964, 0.736771, -0.671862,
		0.190624, 0.650650, 0.735063,
		0.978720, -0.183912, -0.091020,
		29.487051, 34.549519, 28.158993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106709, 35.323376, 28.237408>,  <28.801949, 34.678257, 28.222706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106709, 35.323376, 28.237408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351246, 35.070560, 28.046921>,  <29.497969, 34.918869, 27.932629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351246, 35.070560, 28.046921>,  <29.106709, 35.323376, 28.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351246, 35.070560, 28.046921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004451, 0.599011, -0.800728,
		0.791354, 0.491638, 0.363387,
		0.611342, -0.632042, -0.476219,
		29.534649, 34.880947, 27.904055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603085, 35.766243, 28.070156>,  <29.106709, 35.323376, 28.237408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603085, 35.766243, 28.070156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612030, 35.440983, 27.837505>,  <29.617397, 35.245827, 27.697914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612030, 35.440983, 27.837505>,  <29.603085, 35.766243, 28.070156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612030, 35.440983, 27.837505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033631, 0.582057, -0.812453,
		0.999184, -0.001390, 0.040365,
		0.022366, -0.813147, -0.581628,
		29.618740, 35.197037, 27.663017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896574, 35.963543, 27.470863>,  <29.603085, 35.766243, 28.070156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896574, 35.963543, 27.470863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709276, 35.630211, 27.353344>,  <29.596897, 35.430214, 27.282833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709276, 35.630211, 27.353344>,  <29.896574, 35.963543, 27.470863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709276, 35.630211, 27.353344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195018, 0.421765, -0.885484,
		0.861810, -0.357327, -0.360002,
		-0.468244, -0.833326, -0.293797,
		29.568804, 35.380215, 27.265205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063086, 35.982235, 26.817263>,  <29.896574, 35.963543, 27.470863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063086, 35.982235, 26.817263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754692, 35.727520, 26.821060>,  <29.569656, 35.574692, 26.823339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754692, 35.727520, 26.821060>,  <30.063086, 35.982235, 26.817263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754692, 35.727520, 26.821060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306315, 0.357715, -0.882163,
		0.558352, -0.683041, -0.470849,
		-0.770983, -0.636786, 0.009495,
		29.523397, 35.536484, 26.823908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973495, 35.924915, 26.141846>,  <30.063086, 35.982235, 26.817263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973495, 35.924915, 26.141846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641180, 35.780464, 26.311256>,  <29.441790, 35.693794, 26.412903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641180, 35.780464, 26.311256>,  <29.973495, 35.924915, 26.141846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641180, 35.780464, 26.311256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542282, 0.353792, -0.762077,
		0.125368, -0.862796, -0.489761,
		-0.830791, -0.361128, 0.423525,
		29.391943, 35.672127, 26.438314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606560, 35.554501, 25.577955>,  <29.973495, 35.924915, 26.141846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606560, 35.554501, 25.577955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334539, 35.666695, 25.848911>,  <29.171328, 35.734009, 26.011484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334539, 35.666695, 25.848911>,  <29.606560, 35.554501, 25.577955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334539, 35.666695, 25.848911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652303, 0.190324, -0.733674,
		-0.334707, -0.940801, 0.053530,
		-0.680053, 0.280483, 0.677390,
		29.130524, 35.750839, 26.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070684, 35.263885, 25.278378>,  <29.606560, 35.554501, 25.577955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070684, 35.263885, 25.278378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916605, 35.527985, 25.536274>,  <28.824158, 35.686443, 25.691011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916605, 35.527985, 25.536274>,  <29.070684, 35.263885, 25.278378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916605, 35.527985, 25.536274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684351, 0.264333, -0.679553,
		-0.619101, -0.702992, 0.350022,
		-0.385198, 0.660250, 0.644742,
		28.801046, 35.726059, 25.729696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430647, 35.261600, 25.117193>,  <29.070684, 35.263885, 25.278378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430647, 35.261600, 25.117193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486624, 35.599407, 25.323959>,  <28.520210, 35.802094, 25.448019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486624, 35.599407, 25.323959>,  <28.430647, 35.261600, 25.117193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486624, 35.599407, 25.323959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663092, 0.467634, -0.584489,
		-0.735340, -0.260968, 0.625436,
		0.139942, 0.844520, 0.516916,
		28.528606, 35.852764, 25.479034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754051, 35.401577, 25.184114>,  <28.430647, 35.261600, 25.117193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754051, 35.401577, 25.184114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971159, 35.736073, 25.215351>,  <28.101423, 35.936771, 25.234093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971159, 35.736073, 25.215351>,  <27.754051, 35.401577, 25.184114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971159, 35.736073, 25.215351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551337, 0.424900, -0.717974,
		-0.633582, 0.346641, 0.691675,
		0.542772, 0.836242, 0.078093,
		28.133991, 35.986946, 25.238779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320494, 35.962112, 25.266537>,  <27.754051, 35.401577, 25.184114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320494, 35.962112, 25.266537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658285, 36.156128, 25.175682>,  <27.860960, 36.272537, 25.121170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658285, 36.156128, 25.175682>,  <27.320494, 35.962112, 25.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658285, 36.156128, 25.175682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503612, 0.574778, -0.644985,
		-0.182293, 0.659063, 0.729661,
		0.844478, 0.485042, -0.227134,
		27.911629, 36.301640, 25.107542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120365, 36.654430, 25.352562>,  <27.320494, 35.962112, 25.266537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120365, 36.654430, 25.352562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437332, 36.635979, 25.109268>,  <27.627512, 36.624908, 24.963291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437332, 36.635979, 25.109268>,  <27.120365, 36.654430, 25.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437332, 36.635979, 25.109268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505202, 0.509165, -0.696794,
		0.341832, 0.859432, 0.380168,
		0.792415, -0.046125, -0.608236,
		27.675056, 36.622143, 24.926798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187408, 37.338272, 25.186968>,  <27.120365, 36.654430, 25.352562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187408, 37.338272, 25.186968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395891, 37.132347, 24.914700>,  <27.520981, 37.008793, 24.751339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395891, 37.132347, 24.914700>,  <27.187408, 37.338272, 25.186968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395891, 37.132347, 24.914700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609530, 0.333692, -0.719113,
		0.597342, 0.789696, -0.139870,
		0.521207, -0.514811, -0.680671,
		27.552254, 36.977905, 24.710499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626396, 37.739594, 24.626328>,  <27.187408, 37.338272, 25.186968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626396, 37.739594, 24.626328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447569, 37.403805, 24.502769>,  <27.340273, 37.202332, 24.428635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447569, 37.403805, 24.502769>,  <27.626396, 37.739594, 24.626328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447569, 37.403805, 24.502769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643585, 0.541704, -0.540699,
		0.621233, -0.042927, -0.782449,
		-0.447066, -0.839473, -0.308897,
		27.313448, 37.151962, 24.410101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581266, 37.703537, 23.840582>,  <27.626396, 37.739594, 24.626328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581266, 37.703537, 23.840582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271929, 37.532196, 24.027538>,  <27.086327, 37.429390, 24.139713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271929, 37.532196, 24.027538>,  <27.581266, 37.703537, 23.840582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271929, 37.532196, 24.027538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633988, 0.522803, -0.569856,
		-0.000256, -0.737015, -0.675876,
		-0.773343, -0.428351, 0.467393,
		27.039927, 37.403690, 24.167755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235294, 37.310886, 23.300621>,  <27.581266, 37.703537, 23.840582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235294, 37.310886, 23.300621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006550, 37.422779, 23.609093>,  <26.869303, 37.489914, 23.794176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006550, 37.422779, 23.609093>,  <27.235294, 37.310886, 23.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006550, 37.422779, 23.609093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677008, 0.369963, -0.636229,
		-0.463285, -0.885931, -0.022185,
		-0.571863, 0.279736, 0.771181,
		26.834991, 37.506699, 23.840446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454611, 37.030811, 23.336227>,  <27.235294, 37.310886, 23.300621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454611, 37.030811, 23.336227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525106, 37.391079, 23.495090>,  <26.567404, 37.607239, 23.590408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525106, 37.391079, 23.495090>,  <26.454611, 37.030811, 23.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525106, 37.391079, 23.495090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603325, 0.417641, -0.679393,
		-0.777778, -0.119879, 0.617001,
		0.176240, 0.900669, 0.397158,
		26.577978, 37.661278, 23.614239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809763, 37.441505, 23.411139>,  <26.454611, 37.030811, 23.336227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809763, 37.441505, 23.411139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138304, 37.645206, 23.308346>,  <26.335428, 37.767426, 23.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138304, 37.645206, 23.308346>,  <25.809763, 37.441505, 23.411139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138304, 37.645206, 23.308346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453248, 0.309120, -0.836068,
		-0.346332, 0.803185, 0.484715,
		0.821353, 0.509253, -0.256984,
		26.384710, 37.797981, 23.231251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030790, 37.341988, 23.543644>,  <25.809763, 37.441505, 23.411139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030790, 37.341988, 23.543644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708586, 37.473114, 23.741104>,  <24.515263, 37.551788, 23.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708586, 37.473114, 23.741104>,  <25.030790, 37.341988, 23.543644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708586, 37.473114, 23.741104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592501, -0.459380, -0.661750,
		0.009841, -0.825534, 0.564266,
		-0.805510, 0.327816, 0.493651,
		24.466932, 37.571457, 23.889200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620760, 36.813011, 23.780832>,  <25.030790, 37.341988, 23.543644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620760, 36.813011, 23.780832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351812, 37.107807, 23.753242>,  <24.190443, 37.284687, 23.736689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351812, 37.107807, 23.753242>,  <24.620760, 36.813011, 23.780832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351812, 37.107807, 23.753242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563253, -0.569861, -0.598335,
		-0.480274, -0.363454, 0.798272,
		-0.672371, 0.736994, -0.068973,
		24.150101, 37.328907, 23.732552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.913046, 36.743111, 23.615458>,  <24.620760, 36.813011, 23.780832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.913046, 36.743111, 23.615458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663195, 36.994484, 23.800892>,  <23.513285, 37.145309, 23.912153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663195, 36.994484, 23.800892>,  <23.913046, 36.743111, 23.615458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.663195, 36.994484, 23.800892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072459, 0.544438, -0.835666,
		-0.777554, -0.555571, -0.294535,
		-0.624628, 0.628433, 0.463586,
		23.475807, 37.183014, 23.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.342031, 36.707687, 23.170984>,  <23.913046, 36.743111, 23.615458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.342031, 36.707687, 23.170984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335136, 37.045002, 23.385860>,  <23.330999, 37.247391, 23.514786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335136, 37.045002, 23.385860>,  <23.342031, 36.707687, 23.170984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335136, 37.045002, 23.385860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082501, 0.536640, -0.839769,
		-0.996442, 0.029842, -0.078822,
		-0.017239, 0.843284, 0.537193,
		23.329966, 37.297989, 23.547018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.893456, 37.158237, 22.815647>,  <23.342031, 36.707687, 23.170984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.893456, 37.158237, 22.815647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108118, 37.414139, 23.035725>,  <23.236916, 37.567680, 23.167770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108118, 37.414139, 23.035725>,  <22.893456, 37.158237, 22.815647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.108118, 37.414139, 23.035725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055883, 0.623664, -0.779693,
		-0.841950, 0.449172, 0.298941,
		0.536654, 0.639757, 0.550194,
		23.269114, 37.606068, 23.200783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.624733, 37.786591, 22.607288>,  <22.893456, 37.158237, 22.815647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.624733, 37.786591, 22.607288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964895, 37.887001, 22.792240>,  <23.168993, 37.947247, 22.903212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964895, 37.887001, 22.792240>,  <22.624733, 37.786591, 22.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.964895, 37.887001, 22.792240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142784, 0.735746, -0.662035,
		-0.506381, 0.629020, 0.589841,
		0.850407, 0.251023, 0.462381,
		23.220016, 37.962307, 22.930954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521355, 38.488373, 22.792206>,  <22.624733, 37.786591, 22.607288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521355, 38.488373, 22.792206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912378, 38.404194, 22.788357>,  <23.146992, 38.353687, 22.786047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912378, 38.404194, 22.788357>,  <22.521355, 38.488373, 22.792206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912378, 38.404194, 22.788357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178781, 0.852908, -0.490496,
		0.111430, 0.477768, 0.871391,
		0.977558, -0.210444, -0.009624,
		23.205647, 38.341061, 22.785469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876541, 39.124458, 22.947863>,  <22.521355, 38.488373, 22.792206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876541, 39.124458, 22.947863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113392, 38.873352, 22.745754>,  <23.255503, 38.722691, 22.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113392, 38.873352, 22.745754>,  <22.876541, 39.124458, 22.947863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113392, 38.873352, 22.745754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344250, 0.763969, -0.545750,
		0.728613, 0.149214, 0.668474,
		0.592127, -0.627763, -0.505271,
		23.291031, 38.685024, 22.594173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364006, 39.555119, 22.687746>,  <22.876541, 39.124458, 22.947863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364006, 39.555119, 22.687746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.440689, 39.214497, 22.492565>,  <23.486698, 39.010124, 22.375456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.440689, 39.214497, 22.492565>,  <23.364006, 39.555119, 22.687746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.440689, 39.214497, 22.492565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567814, 0.501751, -0.652559,
		0.800523, -0.151967, 0.579715,
		0.191705, -0.851558, -0.487952,
		23.498201, 38.959030, 22.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.102167, 39.477974, 22.583195>,  <23.364006, 39.555119, 22.687746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.102167, 39.477974, 22.583195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.889725, 39.291206, 22.300377>,  <23.762259, 39.179146, 22.130686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.889725, 39.291206, 22.300377>,  <24.102167, 39.477974, 22.583195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.889725, 39.291206, 22.300377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511779, 0.488273, -0.706875,
		0.675283, -0.737277, -0.020367,
		-0.531107, -0.466918, -0.707045,
		23.730392, 39.151131, 22.088263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549562, 39.470421, 21.953119>,  <24.102167, 39.477974, 22.583195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549562, 39.470421, 21.953119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205795, 39.378960, 21.770203>,  <23.999535, 39.324081, 21.660452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205795, 39.378960, 21.770203>,  <24.549562, 39.470421, 21.953119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205795, 39.378960, 21.770203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248817, 0.594308, -0.764780,
		0.446640, -0.771049, -0.453868,
		-0.859420, -0.228651, -0.457292,
		23.947969, 39.310364, 21.633015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744854, 39.237442, 21.350060>,  <24.549562, 39.470421, 21.953119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744854, 39.237442, 21.350060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372494, 39.377789, 21.309429>,  <24.149078, 39.461998, 21.285051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372494, 39.377789, 21.309429>,  <24.744854, 39.237442, 21.350060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372494, 39.377789, 21.309429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281627, 0.512326, -0.811300,
		-0.232618, -0.783846, -0.575738,
		-0.930900, 0.350867, -0.101576,
		24.093224, 39.483047, 21.278955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685783, 39.302219, 20.716516>,  <24.744854, 39.237442, 21.350060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685783, 39.302219, 20.716516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389336, 39.540333, 20.840702>,  <24.211468, 39.683201, 20.915213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389336, 39.540333, 20.840702>,  <24.685783, 39.302219, 20.716516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389336, 39.540333, 20.840702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126578, 0.578024, -0.806143,
		-0.659335, -0.558150, -0.503733,
		-0.741118, 0.595279, 0.310462,
		24.167000, 39.718918, 20.933840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493963, 39.368225, 20.120916>,  <24.685783, 39.302219, 20.716516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493963, 39.368225, 20.120916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300949, 39.667740, 20.302673>,  <24.185141, 39.847450, 20.411728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300949, 39.667740, 20.302673>,  <24.493963, 39.368225, 20.120916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300949, 39.667740, 20.302673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016859, 0.526630, -0.849927,
		-0.875714, -0.402459, -0.266741,
		-0.482535, 0.748790, 0.454392,
		24.156189, 39.892376, 20.438992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009686, 39.609009, 19.513052>,  <24.493963, 39.368225, 20.120916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009686, 39.609009, 19.513052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.010683, 39.906025, 19.780972>,  <24.011282, 40.084236, 19.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.010683, 39.906025, 19.780972>,  <24.009686, 39.609009, 19.513052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.010683, 39.906025, 19.780972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150776, 0.662422, -0.733801,
		-0.988565, -0.099160, 0.113609,
		0.002494, 0.742539, 0.669798,
		24.011431, 40.128788, 19.981911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390577, 40.064346, 19.501799>,  <24.009686, 39.609009, 19.513052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390577, 40.064346, 19.501799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.700834, 40.277157, 19.637638>,  <23.886988, 40.404842, 19.719141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.700834, 40.277157, 19.637638>,  <23.390577, 40.064346, 19.501799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700834, 40.277157, 19.637638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159048, 0.685431, -0.710555,
		-0.610804, 0.497125, 0.616267,
		0.775643, 0.532026, 0.339597,
		23.933527, 40.436764, 19.739517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.248648, 40.706028, 19.270290>,  <23.390577, 40.064346, 19.501799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.248648, 40.706028, 19.270290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.623066, 40.773762, 19.393673>,  <23.847717, 40.814404, 19.467703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.623066, 40.773762, 19.393673>,  <23.248648, 40.706028, 19.270290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.623066, 40.773762, 19.393673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040471, 0.818968, -0.572410,
		-0.349547, 0.548285, 0.759737,
		0.936045, 0.169337, 0.308457,
		23.903879, 40.824562, 19.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.297148, 41.347103, 19.287537>,  <23.248648, 40.706028, 19.270290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.297148, 41.347103, 19.287537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.687054, 41.258053, 19.280960>,  <23.920998, 41.204624, 19.277014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.687054, 41.258053, 19.280960>,  <23.297148, 41.347103, 19.287537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.687054, 41.258053, 19.280960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162709, 0.758985, -0.630450,
		0.152832, 0.611866, 0.776056,
		0.974766, -0.222625, -0.016441,
		23.979483, 41.191265, 19.276028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.665249, 41.878296, 19.443686>,  <23.297148, 41.347103, 19.287537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.665249, 41.878296, 19.443686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.934458, 41.660755, 19.243179>,  <24.095984, 41.530231, 19.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.934458, 41.660755, 19.243179>,  <23.665249, 41.878296, 19.443686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.934458, 41.660755, 19.243179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192622, 0.783228, -0.591144,
		0.714100, 0.301298, 0.631887,
		0.673022, -0.543851, -0.501266,
		24.136364, 41.497601, 19.092800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336895, 42.391914, 19.275152>,  <23.665249, 41.878296, 19.443686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336895, 42.391914, 19.275152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324503, 42.053623, 19.062069>,  <24.317068, 41.850647, 18.934219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324503, 42.053623, 19.062069>,  <24.336895, 42.391914, 19.275152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324503, 42.053623, 19.062069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075493, 0.529461, -0.844969,
		0.996665, -0.066392, 0.047445,
		-0.030979, -0.845732, -0.532707,
		24.315208, 41.799904, 18.902256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793900, 42.552937, 18.798672>,  <24.336895, 42.391914, 19.275152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793900, 42.552937, 18.798672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564411, 42.266792, 18.639122>,  <24.426718, 42.095104, 18.543392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564411, 42.266792, 18.639122>,  <24.793900, 42.552937, 18.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564411, 42.266792, 18.639122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002454, 0.488495, -0.872563,
		0.819049, -0.499627, -0.282014,
		-0.573719, -0.715364, -0.398875,
		24.392296, 42.052181, 18.519459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129454, 42.209827, 18.260330>,  <24.793900, 42.552937, 18.798672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129454, 42.209827, 18.260330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746063, 42.147652, 18.164692>,  <24.516029, 42.110348, 18.107309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746063, 42.147652, 18.164692>,  <25.129454, 42.209827, 18.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746063, 42.147652, 18.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139002, 0.477428, -0.867607,
		0.249006, -0.864814, -0.435997,
		-0.958475, -0.155435, -0.239093,
		24.458521, 42.101021, 18.092964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158266, 42.108849, 17.597530>,  <25.129454, 42.209827, 18.260330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158266, 42.108849, 17.597530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773447, 42.187428, 17.673290>,  <24.542555, 42.234573, 17.718746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773447, 42.187428, 17.673290>,  <25.158266, 42.108849, 17.597530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773447, 42.187428, 17.673290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065960, 0.506090, -0.859955,
		-0.264788, -0.839811, -0.473926,
		-0.962049, 0.196446, 0.189401,
		24.484833, 42.246361, 17.730110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774944, 42.216469, 16.933813>,  <25.158266, 42.108849, 17.597530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774944, 42.216469, 16.933813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532541, 42.407158, 17.188526>,  <24.387100, 42.521572, 17.341354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532541, 42.407158, 17.188526>,  <24.774944, 42.216469, 16.933813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532541, 42.407158, 17.188526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104863, 0.745660, -0.658024,
		-0.788517, -0.465543, -0.401886,
		-0.606008, 0.476720, 0.636783,
		24.350739, 42.550175, 17.379560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160233, 42.250763, 16.654337>,  <24.774944, 42.216469, 16.933813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160233, 42.250763, 16.654337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208744, 42.564728, 16.897385>,  <24.237850, 42.753109, 17.043213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208744, 42.564728, 16.897385>,  <24.160233, 42.250763, 16.654337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208744, 42.564728, 16.897385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260513, 0.615847, -0.743549,
		-0.957823, -0.068115, 0.279170,
		0.121279, 0.784916, 0.607617,
		24.245129, 42.800201, 17.079670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.532242, 42.707325, 16.744047>,  <24.160233, 42.250763, 16.654337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.532242, 42.707325, 16.744047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.890196, 42.882744, 16.777168>,  <24.104969, 42.987995, 16.797041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.890196, 42.882744, 16.777168>,  <23.532242, 42.707325, 16.744047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.890196, 42.882744, 16.777168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256345, 0.656963, -0.709004,
		-0.365329, 0.613252, 0.700326,
		0.894887, 0.438545, 0.082804,
		24.158661, 43.014309, 16.802010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.450788, 43.378441, 16.734516>,  <23.532242, 42.707325, 16.744047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.450788, 43.378441, 16.734516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834881, 43.321461, 16.638466>,  <24.065336, 43.287273, 16.580835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834881, 43.321461, 16.638466>,  <23.450788, 43.378441, 16.734516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.834881, 43.321461, 16.638466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096528, 0.637626, -0.764274,
		0.261982, 0.757060, 0.598519,
		0.960233, -0.142452, -0.240124,
		24.122952, 43.278725, 16.566429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027185, 43.983883, 16.968271>,  <23.450788, 43.378441, 16.734516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027185, 43.983883, 16.968271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896854, 44.240139, 17.246384>,  <22.818657, 44.393894, 17.413252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896854, 44.240139, 17.246384>,  <23.027185, 43.983883, 16.968271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.896854, 44.240139, 17.246384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138139, -0.759782, 0.635334,
		0.935283, 0.110962, 0.336054,
		-0.325826, 0.640639, 0.695283,
		22.799107, 44.432331, 17.454969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.891876, 43.690342, 17.668568>,  <23.027185, 43.983883, 16.968271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.891876, 43.690342, 17.668568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655384, 43.997753, 17.766396>,  <22.513489, 44.182201, 17.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655384, 43.997753, 17.766396>,  <22.891876, 43.690342, 17.668568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655384, 43.997753, 17.766396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378890, -0.532376, 0.756980,
		0.711962, 0.354884, 0.605943,
		-0.591229, 0.768527, 0.244569,
		22.478016, 44.228310, 17.839766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038908, 44.018963, 18.363541>,  <22.891876, 43.690342, 17.668568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038908, 44.018963, 18.363541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660038, 44.017391, 18.235264>,  <22.432716, 44.016449, 18.158297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660038, 44.017391, 18.235264>,  <23.038908, 44.018963, 18.363541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.660038, 44.017391, 18.235264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290835, -0.410952, 0.864022,
		-0.135184, 0.911648, 0.388101,
		-0.947175, -0.003928, -0.320693,
		22.375885, 44.016212, 18.139055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.730488, 44.313549, 18.859385>,  <23.038908, 44.018963, 18.363541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.730488, 44.313549, 18.859385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491005, 44.055531, 18.669453>,  <22.347315, 43.900719, 18.555492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491005, 44.055531, 18.669453>,  <22.730488, 44.313549, 18.859385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491005, 44.055531, 18.669453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231302, -0.428328, 0.873518,
		-0.766844, 0.632811, 0.107242,
		-0.598706, -0.645047, -0.474831,
		22.311394, 43.862015, 18.527004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954067, 44.224060, 19.187351>,  <22.730488, 44.313549, 18.859385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954067, 44.224060, 19.187351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025013, 43.900677, 18.962875>,  <22.067581, 43.706646, 18.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025013, 43.900677, 18.962875>,  <21.954067, 44.224060, 19.187351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025013, 43.900677, 18.962875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385357, -0.581749, 0.716288,
		-0.905561, 0.089212, -0.414728,
		0.177366, -0.808461, -0.561188,
		22.078222, 43.658138, 18.794519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362112, 43.706879, 18.892813>,  <21.954067, 44.224060, 19.187351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362112, 43.706879, 18.892813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707699, 43.531414, 18.991718>,  <21.915051, 43.426136, 19.051062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707699, 43.531414, 18.991718>,  <21.362112, 43.706879, 18.892813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707699, 43.531414, 18.991718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499192, -0.681635, 0.534959,
		-0.066120, -0.585619, -0.807885,
		0.863965, -0.438661, 0.247266,
		21.966888, 43.399815, 19.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268637, 42.964516, 19.021053>,  <21.362112, 43.706879, 18.892813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268637, 42.964516, 19.021053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581018, 43.096180, 19.233379>,  <21.768448, 43.175179, 19.360775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581018, 43.096180, 19.233379>,  <21.268637, 42.964516, 19.021053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581018, 43.096180, 19.233379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154904, -0.721244, 0.675139,
		0.605075, -0.609478, -0.512270,
		0.780954, 0.329157, 0.530817,
		21.815304, 43.194927, 19.392624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694946, 42.301838, 19.209940>,  <21.268637, 42.964516, 19.021053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694946, 42.301838, 19.209940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860289, 42.572071, 19.454147>,  <21.959494, 42.734211, 19.600672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860289, 42.572071, 19.454147>,  <21.694946, 42.301838, 19.209940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860289, 42.572071, 19.454147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056127, -0.650300, 0.757601,
		0.908839, -0.347425, -0.230886,
		0.413355, 0.675578, 0.610518,
		21.984295, 42.774746, 19.637302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278389, 41.940903, 19.631470>,  <21.694946, 42.301838, 19.209940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278389, 41.940903, 19.631470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168945, 42.280323, 19.812618>,  <22.103279, 42.483974, 19.921309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168945, 42.280323, 19.812618>,  <22.278389, 41.940903, 19.631470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168945, 42.280323, 19.812618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117372, -0.437865, 0.891346,
		0.954653, 0.297034, 0.020207,
		-0.273608, 0.848555, 0.452873,
		22.086863, 42.534889, 19.948481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630888, 41.906731, 20.301319>,  <22.278389, 41.940903, 19.631470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630888, 41.906731, 20.301319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.373915, 42.201466, 20.385559>,  <22.219730, 42.378307, 20.436102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.373915, 42.201466, 20.385559>,  <22.630888, 41.906731, 20.301319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.373915, 42.201466, 20.385559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103800, -0.355944, 0.928724,
		0.759281, 0.574782, 0.305154,
		-0.642432, 0.736838, 0.210599,
		22.181185, 42.422516, 20.448738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.799744, 42.128708, 20.968388>,  <22.630888, 41.906731, 20.301319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.799744, 42.128708, 20.968388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420229, 42.241016, 20.910461>,  <22.192520, 42.308403, 20.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420229, 42.241016, 20.910461>,  <22.799744, 42.128708, 20.968388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420229, 42.241016, 20.910461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253079, -0.401125, 0.880369,
		0.189093, 0.871932, 0.451640,
		-0.948786, 0.280773, -0.144818,
		22.135593, 42.325249, 20.867016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.648075, 42.454899, 21.572330>,  <22.799744, 42.128708, 20.968388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.648075, 42.454899, 21.572330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.297123, 42.355373, 21.408234>,  <22.086552, 42.295658, 21.309776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.297123, 42.355373, 21.408234>,  <22.648075, 42.454899, 21.572330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.297123, 42.355373, 21.408234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318017, -0.338661, 0.885536,
		-0.359266, 0.907415, 0.218008,
		-0.877379, -0.248812, -0.410243,
		22.033909, 42.280731, 21.285160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172579, 42.774578, 21.940157>,  <22.648075, 42.454899, 21.572330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172579, 42.774578, 21.940157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990757, 42.466698, 21.760853>,  <21.881664, 42.281971, 21.653271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990757, 42.466698, 21.760853>,  <22.172579, 42.774578, 21.940157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990757, 42.466698, 21.760853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326970, -0.323933, 0.887783,
		-0.828534, 0.550115, -0.104424,
		-0.454556, -0.769702, -0.448261,
		21.854391, 42.235786, 21.626375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568090, 42.696301, 22.308702>,  <22.172579, 42.774578, 21.940157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568090, 42.696301, 22.308702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616791, 42.349949, 22.114616>,  <21.646011, 42.142139, 21.998165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.616791, 42.349949, 22.114616>,  <21.568090, 42.696301, 22.308702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.616791, 42.349949, 22.114616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267692, -0.499381, 0.823990,
		-0.955781, 0.029566, -0.292589,
		0.121751, -0.865878, -0.485213,
		21.653316, 42.090187, 21.969053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.973198, 42.388638, 22.306341>,  <21.568090, 42.696301, 22.308702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.973198, 42.388638, 22.306341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234314, 42.087849, 22.269672>,  <21.390984, 41.907375, 22.247671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234314, 42.087849, 22.269672>,  <20.973198, 42.388638, 22.306341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234314, 42.087849, 22.269672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436632, -0.472379, 0.765643,
		-0.619047, -0.459777, -0.636699,
		0.652789, -0.751973, -0.091671,
		21.430151, 41.862255, 22.242170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556549, 41.794624, 22.426130>,  <20.973198, 42.388638, 22.306341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556549, 41.794624, 22.426130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933250, 41.662357, 22.450668>,  <21.159271, 41.582996, 22.465391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933250, 41.662357, 22.450668>,  <20.556549, 41.794624, 22.426130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933250, 41.662357, 22.450668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278025, -0.662856, 0.695215,
		-0.189219, -0.671776, -0.716179,
		0.941753, -0.330664, 0.061346,
		21.215776, 41.563160, 22.469072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461864, 41.063919, 22.402540>,  <20.556549, 41.794624, 22.426130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461864, 41.063919, 22.402540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836653, 41.110832, 22.534195>,  <21.061525, 41.138981, 22.613188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836653, 41.110832, 22.534195>,  <20.461864, 41.063919, 22.402540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836653, 41.110832, 22.534195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162739, -0.687099, 0.708103,
		0.309195, -0.717036, -0.624707,
		0.936971, 0.117278, 0.329137,
		21.117744, 41.146015, 22.632936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774715, 40.365524, 22.363283>,  <20.461864, 41.063919, 22.402540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774715, 40.365524, 22.363283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027479, 40.561672, 22.603359>,  <21.179138, 40.679359, 22.747404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027479, 40.561672, 22.603359>,  <20.774715, 40.365524, 22.363283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027479, 40.561672, 22.603359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001403, -0.773671, 0.633586,
		0.775041, -0.401211, -0.488202,
		0.631909, 0.490370, 0.600190,
		21.217052, 40.708782, 22.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389893, 39.935081, 22.462313>,  <20.774715, 40.365524, 22.363283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389893, 39.935081, 22.462313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405827, 40.180103, 22.778084>,  <21.415386, 40.327114, 22.967546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405827, 40.180103, 22.778084>,  <21.389893, 39.935081, 22.462313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405827, 40.180103, 22.778084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199741, -0.778989, 0.594373,
		0.979039, 0.134004, -0.153382,
		0.039834, 0.612551, 0.789427,
		21.417776, 40.363869, 23.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978151, 39.735485, 22.791754>,  <21.389893, 39.935081, 22.462313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978151, 39.735485, 22.791754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732361, 39.916012, 23.050594>,  <21.584887, 40.024326, 23.205898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732361, 39.916012, 23.050594>,  <21.978151, 39.735485, 22.791754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732361, 39.916012, 23.050594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136295, -0.747159, 0.650521,
		0.777074, 0.487925, 0.397599,
		-0.614475, 0.451312, 0.647099,
		21.548018, 40.051407, 23.244724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220650, 39.549156, 23.506250>,  <21.978151, 39.735485, 22.791754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220650, 39.549156, 23.506250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.847492, 39.663418, 23.593987>,  <21.623598, 39.731976, 23.646627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.847492, 39.663418, 23.593987>,  <22.220650, 39.549156, 23.506250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.847492, 39.663418, 23.593987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031293, -0.671015, 0.740783,
		0.358785, 0.684209, 0.634926,
		-0.932895, 0.285651, 0.219339,
		21.567623, 39.749115, 23.659788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157349, 39.606216, 24.248522>,  <22.220650, 39.549156, 23.506250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157349, 39.606216, 24.248522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.782749, 39.577686, 24.111187>,  <21.557989, 39.560566, 24.028786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.782749, 39.577686, 24.111187>,  <22.157349, 39.606216, 24.248522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782749, 39.577686, 24.111187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182462, -0.737000, 0.650798,
		-0.299459, 0.672119, 0.677186,
		-0.936500, -0.071327, -0.343337,
		21.501799, 39.556290, 24.008186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.883614, 39.377037, 24.808876>,  <22.157349, 39.606216, 24.248522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.883614, 39.377037, 24.808876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.609873, 39.290020, 24.530499>,  <21.445629, 39.237808, 24.363472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.609873, 39.290020, 24.530499>,  <21.883614, 39.377037, 24.808876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.609873, 39.290020, 24.530499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337946, -0.751117, 0.567112,
		-0.646108, 0.623295, 0.440509,
		-0.684352, -0.217547, -0.695942,
		21.404568, 39.224754, 24.321716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360889, 38.970531, 25.042311>,  <21.883614, 39.377037, 24.808876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360889, 38.970531, 25.042311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.259672, 38.883705, 24.665195>,  <21.198942, 38.831608, 24.438927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.259672, 38.883705, 24.665195>,  <21.360889, 38.970531, 25.042311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259672, 38.883705, 24.665195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489906, -0.811571, 0.318347,
		-0.834243, 0.542433, 0.099019,
		-0.253043, -0.217069, -0.942789,
		21.183760, 38.818584, 24.382359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636473, 38.904217, 24.981413>,  <21.360889, 38.970531, 25.042311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636473, 38.904217, 24.981413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804417, 38.710114, 24.674625>,  <20.905182, 38.593651, 24.490553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804417, 38.710114, 24.674625>,  <20.636473, 38.904217, 24.981413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804417, 38.710114, 24.674625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222205, -0.874304, 0.431530,
		-0.879970, -0.010756, -0.474908,
		0.419856, -0.485260, -0.766970,
		20.930374, 38.564537, 24.444534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224194, 38.376812, 24.803991>,  <20.636473, 38.904217, 24.981413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224194, 38.376812, 24.803991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.581568, 38.263325, 24.664692>,  <20.795992, 38.195232, 24.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.581568, 38.263325, 24.664692>,  <20.224194, 38.376812, 24.803991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581568, 38.263325, 24.664692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113528, -0.892736, 0.436043,
		-0.434606, -0.350041, -0.829812,
		0.893436, -0.283714, -0.348249,
		20.849598, 38.178211, 24.560217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952168, 37.983624, 24.083666>,  <20.224194, 38.376812, 24.803991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952168, 37.983624, 24.083666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279453, 38.122444, 23.900330>,  <20.475824, 38.205738, 23.790327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279453, 38.122444, 23.900330>,  <19.952168, 37.983624, 24.083666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279453, 38.122444, 23.900330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523395, 0.779525, -0.344091,
		0.237869, 0.521434, 0.819466,
		0.818215, 0.347056, -0.458341,
		20.524918, 38.226562, 23.762827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732243, 37.302181, 24.015795>,  <19.952168, 37.983624, 24.083666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732243, 37.302181, 24.015795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.370934, 37.179741, 24.136059>,  <19.154148, 37.106277, 24.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.370934, 37.179741, 24.136059>,  <19.732243, 37.302181, 24.015795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370934, 37.179741, 24.136059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426954, 0.571822, -0.700521,
		0.042507, -0.761131, -0.647204,
		-0.903274, -0.306103, 0.300662,
		19.099951, 37.087910, 24.226257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304384, 36.861702, 23.517780>,  <19.732243, 37.302181, 24.015795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304384, 36.861702, 23.517780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076008, 37.090385, 23.753468>,  <18.938982, 37.227596, 23.894880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076008, 37.090385, 23.753468>,  <19.304384, 36.861702, 23.517780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076008, 37.090385, 23.753468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280529, 0.538643, -0.794460,
		-0.771575, -0.618884, -0.147154,
		-0.570942, 0.571705, 0.589219,
		18.904726, 37.261898, 23.930233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619150, 36.757217, 23.449463>,  <19.304384, 36.861702, 23.517780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619150, 36.757217, 23.449463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768314, 37.115139, 23.547657>,  <18.857813, 37.329891, 23.606573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768314, 37.115139, 23.547657>,  <18.619150, 36.757217, 23.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768314, 37.115139, 23.547657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314482, 0.370797, -0.873848,
		-0.872948, 0.248667, 0.419674,
		0.372911, 0.894804, 0.245485,
		18.880188, 37.383579, 23.621304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046450, 37.301254, 23.626814>,  <18.619150, 36.757217, 23.449463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046450, 37.301254, 23.626814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395111, 37.379494, 23.447052>,  <18.604307, 37.426437, 23.339195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395111, 37.379494, 23.447052>,  <18.046450, 37.301254, 23.626814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395111, 37.379494, 23.447052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490122, 0.351295, -0.797729,
		0.001841, 0.915606, 0.402072,
		0.871652, 0.195596, -0.449405,
		18.656607, 37.438171, 23.312231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978552, 37.962177, 23.269932>,  <18.046450, 37.301254, 23.626814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978552, 37.962177, 23.269932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.232750, 37.723202, 23.074295>,  <18.385269, 37.579815, 22.956913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.232750, 37.723202, 23.074295>,  <17.978552, 37.962177, 23.269932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232750, 37.723202, 23.074295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445305, 0.233879, -0.864294,
		0.630752, 0.767050, -0.117414,
		0.635496, -0.597440, -0.489091,
		18.423399, 37.543968, 22.927568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.209713, 28.919804, 30.361559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575436, 28.786415, 30.269615>,  <29.794870, 28.706381, 30.214449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575436, 28.786415, 30.269615>,  <29.209713, 28.919804, 30.361559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575436, 28.786415, 30.269615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021675, 0.526427, -0.849944,
		0.404437, 0.782094, 0.474088,
		0.914309, -0.333473, -0.229859,
		29.849728, 28.686373, 30.200657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671534, 29.455101, 30.333565>,  <29.209713, 28.919804, 30.361559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671534, 29.455101, 30.333565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.868933, 29.182560, 30.117336>,  <29.987373, 29.019035, 29.987598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.868933, 29.182560, 30.117336>,  <29.671534, 29.455101, 30.333565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868933, 29.182560, 30.117336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057399, 0.594661, -0.801925,
		0.867850, 0.426778, 0.254355,
		0.493499, -0.681351, -0.540573,
		30.016983, 28.978155, 29.955164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096182, 29.823771, 30.049124>,  <29.671534, 29.455101, 30.333565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096182, 29.823771, 30.049124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.067738, 29.510532, 29.801994>,  <30.050671, 29.322590, 29.653717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.067738, 29.510532, 29.801994>,  <30.096182, 29.823771, 30.049124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067738, 29.510532, 29.801994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132954, 0.621305, -0.772207,
		0.988568, 0.027230, -0.148297,
		-0.071111, -0.783096, -0.617822,
		30.046404, 29.275604, 29.616648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569315, 29.996080, 29.457069>,  <30.096182, 29.823771, 30.049124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569315, 29.996080, 29.457069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.325773, 29.704079, 29.332886>,  <30.179647, 29.528877, 29.258375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.325773, 29.704079, 29.332886>,  <30.569315, 29.996080, 29.457069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325773, 29.704079, 29.332886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109408, 0.464896, -0.878579,
		0.785701, -0.500960, -0.362923,
		-0.608855, -0.730007, -0.310460,
		30.143116, 29.485077, 29.239748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780790, 29.870617, 28.814762>,  <30.569315, 29.996080, 29.457069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780790, 29.870617, 28.814762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.414301, 29.710613, 28.823944>,  <30.194407, 29.614611, 28.829453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.414301, 29.710613, 28.823944>,  <30.780790, 29.870617, 28.814762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414301, 29.710613, 28.823944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212937, 0.437604, -0.873591,
		0.339399, -0.805293, -0.486119,
		-0.916224, -0.400008, 0.022954,
		30.139435, 29.590611, 28.830830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747616, 29.438560, 28.261047>,  <30.780790, 29.870617, 28.814762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747616, 29.438560, 28.261047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.365774, 29.530239, 28.337151>,  <30.136669, 29.585245, 28.382812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.365774, 29.530239, 28.337151>,  <30.747616, 29.438560, 28.261047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365774, 29.530239, 28.337151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103708, 0.343038, -0.933579,
		-0.279239, -0.910930, -0.303696,
		-0.954605, 0.229196, 0.190260,
		30.079393, 29.598997, 28.394228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407677, 29.125013, 27.673094>,  <30.747616, 29.438560, 28.261047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407677, 29.125013, 27.673094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192419, 29.407192, 27.857594>,  <30.063265, 29.576500, 27.968294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192419, 29.407192, 27.857594>,  <30.407677, 29.125013, 27.673094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192419, 29.407192, 27.857594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063577, 0.511713, -0.856801,
		-0.840453, -0.490405, -0.230524,
		-0.538142, 0.705445, 0.461249,
		30.030977, 29.618826, 27.995968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901451, 29.155018, 27.185322>,  <30.407677, 29.125013, 27.673094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901451, 29.155018, 27.185322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831734, 29.466320, 27.426632>,  <29.789904, 29.653101, 27.571419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831734, 29.466320, 27.426632>,  <29.901451, 29.155018, 27.185322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831734, 29.466320, 27.426632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133475, 0.588328, -0.797530,
		-0.975606, -0.219525, 0.001336,
		-0.174291, 0.778254, 0.603278,
		29.779446, 29.699797, 27.607615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256704, 29.403872, 27.106941>,  <29.901451, 29.155018, 27.185322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256704, 29.403872, 27.106941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.475552, 29.712902, 27.235809>,  <29.606859, 29.898319, 27.313129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.475552, 29.712902, 27.235809>,  <29.256704, 29.403872, 27.106941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475552, 29.712902, 27.235809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230143, 0.508887, -0.829499,
		-0.804797, 0.379687, 0.456223,
		0.547116, 0.772575, 0.322168,
		29.639687, 29.944675, 27.332460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905792, 29.938066, 26.805174>,  <29.256704, 29.403872, 27.106941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905792, 29.938066, 26.805174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250101, 30.105347, 26.921227>,  <29.456686, 30.205715, 26.990858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250101, 30.105347, 26.921227>,  <28.905792, 29.938066, 26.805174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250101, 30.105347, 26.921227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087910, 0.683602, -0.724541,
		-0.501339, 0.598160, 0.625191,
		0.860773, 0.418202, 0.290132,
		29.508333, 30.230806, 27.008266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801582, 30.625608, 26.608704>,  <28.905792, 29.938066, 26.805174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801582, 30.625608, 26.608704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196112, 30.580059, 26.656372>,  <29.432829, 30.552729, 26.684973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196112, 30.580059, 26.656372>,  <28.801582, 30.625608, 26.608704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196112, 30.580059, 26.656372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164241, 0.740044, -0.652196,
		-0.013923, 0.662848, 0.748624,
		0.986322, -0.113874, 0.119171,
		29.492008, 30.545897, 26.692123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035931, 31.221355, 26.936638>,  <28.801582, 30.625608, 26.608704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035931, 31.221355, 26.936638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.300524, 31.033165, 26.703026>,  <29.459280, 30.920250, 26.562859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.300524, 31.033165, 26.703026>,  <29.035931, 31.221355, 26.936638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300524, 31.033165, 26.703026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055623, 0.807382, -0.587401,
		0.747894, 0.356070, 0.560239,
		0.661483, -0.470476, -0.584031,
		29.498968, 30.892023, 26.527817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517153, 31.703934, 26.764086>,  <29.035931, 31.221355, 26.936638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517153, 31.703934, 26.764086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.579262, 31.417923, 26.491432>,  <29.616528, 31.246317, 26.327841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.579262, 31.417923, 26.491432>,  <29.517153, 31.703934, 26.764086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579262, 31.417923, 26.491432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198290, 0.698519, -0.687570,
		0.967766, -0.028399, 0.250245,
		0.155275, -0.715027, -0.681634,
		29.625845, 31.203415, 26.286942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997574, 31.975073, 26.492712>,  <29.517153, 31.703934, 26.764086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997574, 31.975073, 26.492712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.877768, 31.704517, 26.223553>,  <29.805883, 31.542185, 26.062057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.877768, 31.704517, 26.223553>,  <29.997574, 31.975073, 26.492712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877768, 31.704517, 26.223553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113381, 0.675044, -0.729014,
		0.947331, -0.294644, -0.125496,
		-0.299515, -0.676388, -0.672897,
		29.787912, 31.501600, 26.021685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443613, 32.024055, 26.002968>,  <29.997574, 31.975073, 26.492712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443613, 32.024055, 26.002968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125753, 31.874756, 25.811459>,  <29.935038, 31.785177, 25.696554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125753, 31.874756, 25.811459>,  <30.443613, 32.024055, 26.002968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125753, 31.874756, 25.811459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079984, 0.717413, -0.692041,
		0.601779, -0.588222, -0.540237,
		-0.794647, -0.373245, -0.478773,
		29.887360, 31.762783, 25.667828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672628, 31.944977, 25.295464>,  <30.443613, 32.024055, 26.002968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672628, 31.944977, 25.295464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.273136, 31.954411, 25.277664>,  <30.033442, 31.960070, 25.266985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.273136, 31.954411, 25.277664>,  <30.672628, 31.944977, 25.295464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273136, 31.954411, 25.277664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049522, 0.620616, -0.782550,
		0.009162, -0.783760, -0.620996,
		-0.998731, 0.023583, -0.044499,
		29.973516, 31.961485, 25.264315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633245, 32.045315, 24.565323>,  <30.672628, 31.944977, 25.295464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633245, 32.045315, 24.565323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.269318, 32.133194, 24.706154>,  <30.050961, 32.185921, 24.790653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.269318, 32.133194, 24.706154>,  <30.633245, 32.045315, 24.565323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269318, 32.133194, 24.706154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155298, 0.606497, -0.779771,
		-0.384849, -0.764129, -0.517685,
		-0.909821, 0.219699, 0.352077,
		29.996372, 32.199104, 24.811777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209805, 31.973856, 24.062237>,  <30.633245, 32.045315, 24.565323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209805, 31.973856, 24.062237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.987535, 32.217022, 24.289101>,  <29.854174, 32.362923, 24.425219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.987535, 32.217022, 24.289101>,  <30.209805, 31.973856, 24.062237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987535, 32.217022, 24.289101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178309, 0.579162, -0.795473,
		-0.812056, -0.543151, -0.213427,
		-0.555671, 0.607913, 0.567161,
		29.820833, 32.399395, 24.459249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534769, 32.000103, 23.744881>,  <30.209805, 31.973856, 24.062237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534769, 32.000103, 23.744881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.546869, 32.335907, 23.961884>,  <29.554129, 32.537388, 24.092085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.546869, 32.335907, 23.961884>,  <29.534769, 32.000103, 23.744881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546869, 32.335907, 23.961884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163482, 0.539602, -0.825895,
		-0.986083, -0.063708, 0.153566,
		0.030248, 0.839506, 0.542508,
		29.555944, 32.587757, 24.124636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061424, 32.397106, 23.438501>,  <29.534769, 32.000103, 23.744881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061424, 32.397106, 23.438501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.222914, 32.693718, 23.652843>,  <29.319807, 32.871685, 23.781448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.222914, 32.693718, 23.652843>,  <29.061424, 32.397106, 23.438501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222914, 32.693718, 23.652843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039201, 0.599193, -0.799644,
		-0.914040, 0.301831, 0.270978,
		0.403726, 0.741529, 0.535854,
		29.344032, 32.916176, 23.813601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554916, 32.918449, 23.378538>,  <29.061424, 32.397106, 23.438501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554916, 32.918449, 23.378538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.910089, 33.070324, 23.482391>,  <29.123194, 33.161449, 23.544703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.910089, 33.070324, 23.482391>,  <28.554916, 32.918449, 23.378538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910089, 33.070324, 23.482391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121298, 0.737760, -0.664076,
		-0.443687, 0.558164, 0.701138,
		0.887935, 0.379689, 0.259631,
		29.176470, 33.184231, 23.560280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462749, 33.717556, 23.503780>,  <28.554916, 32.918449, 23.378538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462749, 33.717556, 23.503780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.848995, 33.650429, 23.424355>,  <29.080742, 33.610153, 23.376699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.848995, 33.650429, 23.424355>,  <28.462749, 33.717556, 23.503780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848995, 33.650429, 23.424355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004828, 0.775207, -0.631689,
		0.259938, 0.609009, 0.749360,
		0.965613, -0.167818, -0.198565,
		29.138680, 33.600082, 23.364784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875343, 33.988953, 23.679518>,  <28.462749, 33.717556, 23.503780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875343, 33.988953, 23.679518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.577999, 34.242355, 23.765388>,  <27.399593, 34.394398, 23.816912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.577999, 34.242355, 23.765388>,  <27.875343, 33.988953, 23.679518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577999, 34.242355, 23.765388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040660, -0.363147, 0.930844,
		0.667656, 0.683222, 0.295707,
		-0.743358, 0.633507, 0.214677,
		27.354992, 34.432407, 23.829792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035646, 34.334225, 24.223356>,  <27.875343, 33.988953, 23.679518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035646, 34.334225, 24.223356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.636820, 34.314976, 24.199532>,  <27.397524, 34.303429, 24.185236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.636820, 34.314976, 24.199532>,  <28.035646, 34.334225, 24.223356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636820, 34.314976, 24.199532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036938, -0.379099, 0.924619,
		-0.067070, 0.924104, 0.376208,
		-0.997064, -0.048118, -0.059561,
		27.337700, 34.300541, 24.181664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875650, 34.506458, 24.889778>,  <28.035646, 34.334225, 24.223356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875650, 34.506458, 24.889778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543116, 34.319847, 24.768963>,  <27.343594, 34.207878, 24.696474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543116, 34.319847, 24.768963>,  <27.875650, 34.506458, 24.889778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543116, 34.319847, 24.768963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103813, -0.403539, 0.909054,
		-0.545986, 0.787086, 0.287045,
		-0.831338, -0.466531, -0.302036,
		27.293715, 34.179886, 24.678352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454054, 34.307858, 25.552687>,  <27.875650, 34.506458, 24.889778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454054, 34.307858, 25.552687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.282057, 34.084930, 25.268574>,  <27.178858, 33.951176, 25.098106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.282057, 34.084930, 25.268574>,  <27.454054, 34.307858, 25.552687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282057, 34.084930, 25.268574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235054, -0.690490, 0.684085,
		-0.871697, 0.461107, 0.165906,
		-0.429993, -0.557318, -0.710284,
		27.153059, 33.917736, 25.055489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664734, 34.195488, 25.693777>,  <27.454054, 34.307858, 25.552687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664734, 34.195488, 25.693777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.801506, 33.895821, 25.466858>,  <26.883570, 33.716019, 25.330706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.801506, 33.895821, 25.466858>,  <26.664734, 34.195488, 25.693777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801506, 33.895821, 25.466858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242385, -0.653571, 0.717004,
		-0.907928, -0.107660, -0.405063,
		0.341930, -0.749169, -0.567300,
		26.904085, 33.671070, 25.296667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254536, 33.715202, 25.944752>,  <26.664734, 34.195488, 25.693777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254536, 33.715202, 25.944752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.550156, 33.518929, 25.760132>,  <26.727528, 33.401165, 25.649359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.550156, 33.518929, 25.760132>,  <26.254536, 33.715202, 25.944752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550156, 33.518929, 25.760132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099109, -0.756895, 0.645978,
		-0.666316, -0.431668, -0.608017,
		0.739053, -0.490685, -0.461550,
		26.771872, 33.371723, 25.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941195, 33.067287, 25.772858>,  <26.254536, 33.715202, 25.944752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941195, 33.067287, 25.772858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.333982, 32.991959, 25.779430>,  <26.569654, 32.946762, 25.783375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.333982, 32.991959, 25.779430>,  <25.941195, 33.067287, 25.772858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333982, 32.991959, 25.779430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140661, -0.669829, 0.729070,
		-0.126293, -0.718236, -0.684242,
		0.981970, -0.188323, 0.016434,
		26.628572, 32.935463, 25.784361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113581, 32.275120, 25.644182>,  <25.941195, 33.067287, 25.772858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113581, 32.275120, 25.644182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.432629, 32.427662, 25.831104>,  <26.624058, 32.519188, 25.943258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.432629, 32.427662, 25.831104>,  <26.113581, 32.275120, 25.644182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432629, 32.427662, 25.831104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153928, -0.620409, 0.769025,
		0.583189, -0.685321, -0.436149,
		0.797620, 0.381351, 0.467306,
		26.671915, 32.542068, 25.971296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501402, 31.678793, 25.845877>,  <26.113581, 32.275120, 25.644182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501402, 31.678793, 25.845877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633589, 31.968060, 26.088470>,  <26.712900, 32.141621, 26.234026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633589, 31.968060, 26.088470>,  <26.501402, 31.678793, 25.845877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633589, 31.968060, 26.088470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015454, -0.646644, 0.762635,
		0.943691, -0.242653, -0.224871,
		0.330467, 0.723167, 0.606483,
		26.732729, 32.185009, 26.270414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827169, 31.293186, 26.361649>,  <26.501402, 31.678793, 25.845877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827169, 31.293186, 26.361649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.835447, 31.655571, 26.530788>,  <26.840414, 31.873003, 26.632273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.835447, 31.655571, 26.530788>,  <26.827169, 31.293186, 26.361649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835447, 31.655571, 26.530788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059857, -0.423303, 0.904009,
		0.997992, 0.006601, -0.062989,
		0.020696, 0.905964, 0.422848,
		26.841656, 31.927361, 26.657642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374630, 31.212166, 26.812357>,  <26.827169, 31.293186, 26.361649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374630, 31.212166, 26.812357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.110456, 31.479279, 26.949699>,  <26.951952, 31.639547, 27.032104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.110456, 31.479279, 26.949699>,  <27.374630, 31.212166, 26.812357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110456, 31.479279, 26.949699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235168, -0.250316, 0.939169,
		0.713109, 0.701005, 0.008276,
		-0.660433, 0.667783, 0.343356,
		26.912327, 31.679613, 27.052706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807146, 31.516230, 27.364393>,  <27.374630, 31.212166, 26.812357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807146, 31.516230, 27.364393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415964, 31.568829, 27.429283>,  <27.181255, 31.600388, 27.468218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415964, 31.568829, 27.429283>,  <27.807146, 31.516230, 27.364393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415964, 31.568829, 27.429283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099811, -0.388021, 0.916230,
		0.183430, 0.912221, 0.366342,
		-0.977953, 0.131499, 0.162225,
		27.122578, 31.608278, 27.477951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711178, 31.873816, 28.013071>,  <27.807146, 31.516230, 27.364393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711178, 31.873816, 28.013071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384279, 31.655727, 27.938408>,  <27.188141, 31.524874, 27.893610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384279, 31.655727, 27.938408>,  <27.711178, 31.873816, 28.013071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384279, 31.655727, 27.938408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029307, -0.362796, 0.931408,
		-0.575542, 0.755719, 0.312473,
		-0.817247, -0.545222, -0.186657,
		27.139105, 31.492161, 27.882410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318687, 31.893639, 28.650330>,  <27.711178, 31.873816, 28.013071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318687, 31.893639, 28.650330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.189184, 31.574451, 28.446987>,  <27.111483, 31.382938, 28.324982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.189184, 31.574451, 28.446987>,  <27.318687, 31.893639, 28.650330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189184, 31.574451, 28.446987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138377, -0.491582, 0.859767,
		-0.935966, 0.348701, 0.048733,
		-0.323758, -0.797969, -0.508356,
		27.092056, 31.335060, 28.294479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733448, 31.618135, 28.992910>,  <27.318687, 31.893639, 28.650330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733448, 31.618135, 28.992910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.893131, 31.320808, 28.778206>,  <26.988941, 31.142412, 28.649384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.893131, 31.320808, 28.778206>,  <26.733448, 31.618135, 28.992910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893131, 31.320808, 28.778206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080685, -0.611644, 0.787007,
		-0.913304, -0.270869, -0.304147,
		0.399206, -0.743317, -0.536762,
		27.012894, 31.097813, 28.617178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219570, 31.006689, 29.101051>,  <26.733448, 31.618135, 28.992910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219570, 31.006689, 29.101051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.582489, 30.869347, 29.003956>,  <26.800240, 30.786942, 28.945698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.582489, 30.869347, 29.003956>,  <26.219570, 31.006689, 29.101051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582489, 30.869347, 29.003956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070087, -0.445715, 0.892427,
		-0.414607, -0.826709, -0.380332,
		0.907297, -0.343350, -0.242738,
		26.854677, 30.766340, 28.931133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260965, 30.269835, 29.331400>,  <26.219570, 31.006689, 29.101051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260965, 30.269835, 29.331400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.652002, 30.334061, 29.276947>,  <26.886625, 30.372597, 29.244276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.652002, 30.334061, 29.276947>,  <26.260965, 30.269835, 29.331400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652002, 30.334061, 29.276947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195588, -0.453709, 0.869422,
		0.077836, -0.876566, -0.474947,
		0.977593, 0.160566, -0.136131,
		26.945280, 30.382231, 29.236109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646799, 29.564844, 29.444233>,  <26.260965, 30.269835, 29.331400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646799, 29.564844, 29.444233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919657, 29.855328, 29.478397>,  <27.083372, 30.029617, 29.498896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919657, 29.855328, 29.478397>,  <26.646799, 29.564844, 29.444233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919657, 29.855328, 29.478397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300201, -0.384650, 0.872882,
		0.666750, -0.569792, -0.480397,
		0.682146, 0.726210, 0.085413,
		27.124300, 30.073191, 29.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.775202, 29.150578, 29.137966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752796, 29.493156, 29.343243>,  <27.739353, 29.698704, 29.466408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752796, 29.493156, 29.343243>,  <27.775202, 29.150578, 29.137966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752796, 29.493156, 29.343243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232059, -0.488753, 0.840993,
		0.971087, 0.166199, -0.171368,
		-0.056015, 0.856445, 0.513190,
		27.735992, 29.750090, 29.497200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433207, 29.170740, 29.600510>,  <27.775202, 29.150578, 29.137966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433207, 29.170740, 29.600510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168039, 29.405910, 29.785931>,  <28.008938, 29.547012, 29.897182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168039, 29.405910, 29.785931>,  <28.433207, 29.170740, 29.600510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168039, 29.405910, 29.785931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298197, -0.360579, 0.883777,
		0.686743, 0.724102, 0.063716,
		-0.662919, 0.587928, 0.463551,
		27.969164, 29.582289, 29.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792038, 29.524158, 30.109966>,  <28.433207, 29.170740, 29.600510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792038, 29.524158, 30.109966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419556, 29.576511, 30.246040>,  <28.196066, 29.607924, 30.327684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419556, 29.576511, 30.246040>,  <28.792038, 29.524158, 30.109966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419556, 29.576511, 30.246040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272639, -0.369340, 0.888401,
		0.241919, 0.920031, 0.308248,
		-0.931205, 0.130881, 0.340187,
		28.140194, 29.615776, 30.348097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878689, 29.653486, 30.884848>,  <28.792038, 29.524158, 30.109966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878689, 29.653486, 30.884848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.488304, 29.575672, 30.845543>,  <28.254074, 29.528984, 30.821960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.488304, 29.575672, 30.845543>,  <28.878689, 29.653486, 30.884848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488304, 29.575672, 30.845543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014101, -0.393553, 0.919194,
		-0.217487, 0.898483, 0.381349,
		-0.975961, -0.194536, -0.098262,
		28.195517, 29.517311, 30.816065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587587, 29.949913, 31.486298>,  <28.878689, 29.653486, 30.884848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587587, 29.949913, 31.486298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.342169, 29.658802, 31.363724>,  <28.194918, 29.484137, 31.290180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.342169, 29.658802, 31.363724>,  <28.587587, 29.949913, 31.486298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342169, 29.658802, 31.363724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104908, -0.459741, 0.881835,
		-0.782657, 0.508901, 0.358423,
		-0.613549, -0.727776, -0.306432,
		28.158104, 29.440470, 31.271793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100012, 29.863337, 31.984432>,  <28.587587, 29.949913, 31.486298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100012, 29.863337, 31.984432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069201, 29.510647, 31.798260>,  <28.050714, 29.299032, 31.686556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069201, 29.510647, 31.798260>,  <28.100012, 29.863337, 31.984432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069201, 29.510647, 31.798260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064082, -0.461474, 0.884836,
		-0.994967, 0.097983, -0.020956,
		-0.077028, -0.881726, -0.465431,
		28.046091, 29.246128, 31.658630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669361, 29.533485, 32.367840>,  <28.100012, 29.863337, 31.984432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669361, 29.533485, 32.367840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.836893, 29.234665, 32.161346>,  <27.937412, 29.055372, 32.037453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.836893, 29.234665, 32.161346>,  <27.669361, 29.533485, 32.367840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836893, 29.234665, 32.161346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022070, -0.576701, 0.816657,
		-0.907798, -0.330645, -0.258026,
		0.418827, -0.747054, -0.516231,
		27.962542, 29.010550, 32.006477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301325, 28.971210, 32.589207>,  <27.669361, 29.533485, 32.367840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301325, 28.971210, 32.589207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650530, 28.848396, 32.437641>,  <27.860052, 28.774708, 32.346703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650530, 28.848396, 32.437641>,  <27.301325, 28.971210, 32.589207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650530, 28.848396, 32.437641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134453, -0.595324, 0.792157,
		-0.468796, -0.742510, -0.478444,
		0.873013, -0.307032, -0.378918,
		27.912434, 28.756287, 32.323967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246620, 28.241863, 32.610157>,  <27.301325, 28.971210, 32.589207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246620, 28.241863, 32.610157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634699, 28.336746, 32.590370>,  <27.867546, 28.393677, 32.578499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634699, 28.336746, 32.590370>,  <27.246620, 28.241863, 32.610157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634699, 28.336746, 32.590370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165183, -0.498098, 0.851242,
		0.177283, -0.834045, -0.522436,
		0.970199, 0.237208, -0.049466,
		27.925758, 28.407909, 32.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587025, 27.512970, 32.693172>,  <27.246620, 28.241863, 32.610157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587025, 27.512970, 32.693172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.876181, 27.785248, 32.740639>,  <28.049675, 27.948614, 32.769119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.876181, 27.785248, 32.740639>,  <27.587025, 27.512970, 32.693172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876181, 27.785248, 32.740639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287239, -0.452250, 0.844372,
		0.628429, -0.576302, -0.522450,
		0.722891, 0.680696, 0.118670,
		28.093048, 27.989456, 32.776241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106043, 27.117640, 32.778179>,  <27.587025, 27.512970, 32.693172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106043, 27.117640, 32.778179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.185806, 27.474030, 32.941349>,  <28.233664, 27.687864, 33.039249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.185806, 27.474030, 32.941349>,  <28.106043, 27.117640, 32.778179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185806, 27.474030, 32.941349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036327, -0.422716, 0.905534,
		0.979243, -0.165753, -0.116660,
		0.199409, 0.890975, 0.407920,
		28.245628, 27.741322, 33.063725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768679, 27.010382, 33.081158>,  <28.106043, 27.117640, 32.778179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768679, 27.010382, 33.081158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.585079, 27.321243, 33.253368>,  <28.474920, 27.507759, 33.356697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.585079, 27.321243, 33.253368>,  <28.768679, 27.010382, 33.081158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585079, 27.321243, 33.253368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010181, -0.479960, 0.877231,
		0.888379, 0.407030, 0.212388,
		-0.458998, 0.777152, 0.430530,
		28.447380, 27.554388, 33.382526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071358, 27.028467, 33.698544>,  <28.768679, 27.010382, 33.081158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071358, 27.028467, 33.698544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734287, 27.240570, 33.735912>,  <28.532045, 27.367832, 33.758331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734287, 27.240570, 33.735912>,  <29.071358, 27.028467, 33.698544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734287, 27.240570, 33.735912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042491, -0.238457, 0.970223,
		0.536744, 0.813613, 0.223472,
		-0.842675, 0.530257, 0.093419,
		28.481485, 27.399647, 33.763939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065414, 27.426031, 34.381199>,  <29.071358, 27.028467, 33.698544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065414, 27.426031, 34.381199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676397, 27.475815, 34.302544>,  <28.442987, 27.505686, 34.255348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676397, 27.475815, 34.302544>,  <29.065414, 27.426031, 34.381199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676397, 27.475815, 34.302544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210500, -0.110168, 0.971366,
		0.099232, 0.986090, 0.133342,
		-0.972544, 0.124459, -0.196640,
		28.384634, 27.513153, 34.243553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898993, 27.983702, 34.832176>,  <29.065414, 27.426031, 34.381199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898993, 27.983702, 34.832176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.570713, 27.766548, 34.760925>,  <28.373745, 27.636255, 34.718174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.570713, 27.766548, 34.760925>,  <28.898993, 27.983702, 34.832176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570713, 27.766548, 34.760925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002528, -0.315210, 0.949019,
		-0.571355, 0.778408, 0.260065,
		-0.820699, -0.542884, -0.178129,
		28.324503, 27.603683, 34.707485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356279, 28.188751, 35.360523>,  <28.898993, 27.983702, 34.832176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356279, 28.188751, 35.360523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229490, 27.836788, 35.218937>,  <28.153418, 27.625610, 35.133984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229490, 27.836788, 35.218937>,  <28.356279, 28.188751, 35.360523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229490, 27.836788, 35.218937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209950, -0.298859, 0.930916,
		-0.924906, 0.369389, -0.090007,
		-0.316970, -0.879907, -0.353969,
		28.134399, 27.572817, 35.112747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656038, 28.124325, 35.677216>,  <28.356279, 28.188751, 35.360523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656038, 28.124325, 35.677216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.775372, 27.754673, 35.581730>,  <27.846972, 27.532883, 35.524441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.775372, 27.754673, 35.581730>,  <27.656038, 28.124325, 35.677216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775372, 27.754673, 35.581730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238724, -0.314398, 0.918784,
		-0.924126, -0.217116, -0.314407,
		0.298332, -0.924129, -0.238713,
		27.864872, 27.477434, 35.510117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245899, 27.778782, 36.022949>,  <27.656038, 28.124325, 35.677216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245899, 27.778782, 36.022949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.549280, 27.534103, 35.932991>,  <27.731308, 27.387297, 35.879017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.549280, 27.534103, 35.932991>,  <27.245899, 27.778782, 36.022949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549280, 27.534103, 35.932991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049647, -0.398305, 0.915908,
		-0.649836, -0.683506, -0.332464,
		0.758451, -0.611696, -0.224899,
		27.776815, 27.350595, 35.865520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016062, 27.277254, 36.321976>,  <27.245899, 27.778782, 36.022949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016062, 27.277254, 36.321976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408607, 27.207500, 36.289684>,  <27.644135, 27.165648, 36.270309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408607, 27.207500, 36.289684>,  <27.016062, 27.277254, 36.321976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408607, 27.207500, 36.289684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014817, -0.350201, 0.936558,
		-0.191594, -0.920299, -0.341090,
		0.981362, -0.174385, -0.080733,
		27.703016, 27.155186, 36.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187250, 26.553116, 36.548073>,  <27.016062, 27.277254, 36.321976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187250, 26.553116, 36.548073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538675, 26.739883, 36.588291>,  <27.749531, 26.851944, 36.612423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538675, 26.739883, 36.588291>,  <27.187250, 26.553116, 36.548073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538675, 26.739883, 36.588291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112210, -0.406403, 0.906778,
		0.464255, -0.785381, -0.409444,
		0.878565, 0.466920, 0.100547,
		27.802244, 26.879959, 36.618454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626059, 26.055870, 36.844151>,  <27.187250, 26.553116, 36.548073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626059, 26.055870, 36.844151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803411, 26.410069, 36.899731>,  <27.909822, 26.622587, 36.933079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803411, 26.410069, 36.899731>,  <27.626059, 26.055870, 36.844151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803411, 26.410069, 36.899731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082452, -0.194656, 0.977400,
		0.892532, -0.421905, -0.159318,
		0.443383, 0.885497, 0.138950,
		27.936426, 26.675718, 36.941414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272194, 25.896906, 37.214169>,  <27.626059, 26.055870, 36.844151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272194, 25.896906, 37.214169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.160645, 26.276859, 37.270672>,  <28.093716, 26.504831, 37.304573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.160645, 26.276859, 37.270672>,  <28.272194, 25.896906, 37.214169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160645, 26.276859, 37.270672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194093, -0.199804, 0.960420,
		0.940509, 0.240420, 0.240086,
		-0.278874, 0.949882, 0.141254,
		28.076982, 26.561825, 37.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272293, 25.872810, 37.920593>,  <28.272194, 25.896906, 37.214169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272293, 25.872810, 37.920593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129265, 26.240509, 37.854710>,  <28.043447, 26.461128, 37.815182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129265, 26.240509, 37.854710>,  <28.272293, 25.872810, 37.920593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129265, 26.240509, 37.854710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112883, 0.132528, 0.984730,
		0.927038, 0.370705, 0.056379,
		-0.357573, 0.919246, -0.164705,
		28.021994, 26.516283, 37.805298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665552, 26.424458, 38.171513>,  <28.272293, 25.872810, 37.920593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665552, 26.424458, 38.171513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271851, 26.494720, 38.163677>,  <28.035629, 26.536879, 38.158974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271851, 26.494720, 38.163677>,  <28.665552, 26.424458, 38.171513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271851, 26.494720, 38.163677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018389, 0.008464, 0.999795,
		0.175789, 0.984414, -0.005100,
		-0.984256, 0.175659, -0.019591,
		27.976574, 26.547419, 38.157799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191557, 26.555927, 37.557007>,  <28.665552, 26.424458, 38.171513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191557, 26.555927, 37.557007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.555536, 26.405586, 37.627121>,  <29.773924, 26.315382, 37.669189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.555536, 26.405586, 37.627121>,  <29.191557, 26.555927, 37.557007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555536, 26.405586, 37.627121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313778, 0.347597, -0.883583,
		0.271171, 0.859017, 0.434231,
		0.909950, -0.375854, 0.175282,
		29.828522, 26.292830, 37.679707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763033, 27.025490, 37.420609>,  <29.191557, 26.555927, 37.557007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763033, 27.025490, 37.420609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949617, 26.671738, 37.413849>,  <30.061569, 26.459486, 37.409794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949617, 26.671738, 37.413849>,  <29.763033, 27.025490, 37.420609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949617, 26.671738, 37.413849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400092, 0.227986, -0.887665,
		0.788885, 0.407303, 0.460180,
		0.466463, -0.884379, -0.016896,
		30.089556, 26.406424, 37.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354883, 27.201576, 37.230282>,  <29.763033, 27.025490, 37.420609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354883, 27.201576, 37.230282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364044, 26.809467, 37.151752>,  <30.369541, 26.574202, 37.104633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364044, 26.809467, 37.151752>,  <30.354883, 27.201576, 37.230282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364044, 26.809467, 37.151752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519853, 0.179416, -0.835202,
		0.853949, -0.082930, 0.513706,
		0.022904, -0.980272, -0.196324,
		30.370914, 26.515387, 37.092854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080267, 27.028885, 36.972122>,  <30.354883, 27.201576, 37.230282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080267, 27.028885, 36.972122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827888, 26.749168, 36.837719>,  <30.676460, 26.581339, 36.757076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827888, 26.749168, 36.837719>,  <31.080267, 27.028885, 36.972122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827888, 26.749168, 36.837719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405363, 0.072131, -0.911306,
		0.661503, -0.711190, 0.237955,
		-0.630948, -0.699289, -0.336005,
		30.638603, 26.539381, 36.736916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454191, 26.614973, 36.556885>,  <31.080267, 27.028885, 36.972122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454191, 26.614973, 36.556885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096804, 26.507458, 36.412960>,  <30.882370, 26.442949, 36.326607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096804, 26.507458, 36.412960>,  <31.454191, 26.614973, 36.556885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096804, 26.507458, 36.412960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360623, 0.048154, -0.931468,
		0.267695, -0.961994, 0.053907,
		-0.893471, -0.268789, -0.359808,
		30.828762, 26.426821, 36.305019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512409, 26.097460, 36.036194>,  <31.454191, 26.614973, 36.556885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512409, 26.097460, 36.036194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160017, 26.273235, 35.966026>,  <30.948582, 26.378700, 35.923927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160017, 26.273235, 35.966026>,  <31.512409, 26.097460, 36.036194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160017, 26.273235, 35.966026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293206, 0.216048, -0.931318,
		-0.371358, -0.871905, -0.319179,
		-0.880979, 0.439438, -0.175417,
		30.895723, 26.405067, 35.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536848, 26.267504, 35.298691>,  <31.512409, 26.097460, 36.036194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536848, 26.267504, 35.298691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180380, 26.421501, 35.394691>,  <30.966499, 26.513899, 35.452293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180380, 26.421501, 35.394691>,  <31.536848, 26.267504, 35.298691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180380, 26.421501, 35.394691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097924, 0.353309, -0.930367,
		-0.442979, -0.852616, -0.277158,
		-0.891168, 0.384992, 0.240000,
		30.913029, 26.536999, 35.466690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041267, 25.986757, 34.872803>,  <31.536848, 26.267504, 35.298691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041267, 25.986757, 34.872803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.885674, 26.337399, 34.986118>,  <30.792316, 26.547783, 35.054108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.885674, 26.337399, 34.986118>,  <31.041267, 25.986757, 34.872803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885674, 26.337399, 34.986118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012883, 0.302303, -0.953125,
		-0.921154, -0.374400, -0.106298,
		-0.388985, 0.876605, 0.283291,
		30.768978, 26.600380, 35.071106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528223, 26.181000, 34.446239>,  <31.041267, 25.986757, 34.872803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528223, 26.181000, 34.446239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571707, 26.547832, 34.599674>,  <30.597797, 26.767933, 34.691734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571707, 26.547832, 34.599674>,  <30.528223, 26.181000, 34.446239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571707, 26.547832, 34.599674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171692, 0.397400, -0.901441,
		-0.979134, 0.032137, 0.200658,
		0.108711, 0.917083, 0.383590,
		30.604321, 26.822958, 34.714752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939785, 26.519276, 34.246868>,  <30.528223, 26.181000, 34.446239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939785, 26.519276, 34.246868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255013, 26.758186, 34.306473>,  <30.444149, 26.901533, 34.342236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255013, 26.758186, 34.306473>,  <29.939785, 26.519276, 34.246868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255013, 26.758186, 34.306473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161123, 0.433765, -0.886503,
		-0.594124, 0.674618, 0.438073,
		0.788071, 0.597276, 0.149013,
		30.491434, 26.937368, 34.351177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799679, 27.156305, 33.965496>,  <29.939785, 26.519276, 34.246868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799679, 27.156305, 33.965496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187946, 27.236980, 34.017845>,  <30.420906, 27.285385, 34.049255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187946, 27.236980, 34.017845>,  <29.799679, 27.156305, 33.965496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187946, 27.236980, 34.017845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013017, 0.587614, -0.809037,
		-0.240074, 0.783602, 0.573003,
		0.970667, 0.201687, 0.130870,
		30.479147, 27.297487, 34.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882114, 27.921923, 33.843781>,  <29.799679, 27.156305, 33.965496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882114, 27.921923, 33.843781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222424, 27.722775, 33.776474>,  <30.426609, 27.603285, 33.736092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222424, 27.722775, 33.776474>,  <29.882114, 27.921923, 33.843781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222424, 27.722775, 33.776474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084390, 0.445443, -0.891324,
		0.518716, 0.744114, 0.420986,
		0.850771, -0.497871, -0.168262,
		30.477655, 27.573414, 33.725994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269638, 28.409195, 33.389027>,  <29.882114, 27.921923, 33.843781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269638, 28.409195, 33.389027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447538, 28.054737, 33.336952>,  <30.554277, 27.842062, 33.305706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447538, 28.054737, 33.336952>,  <30.269638, 28.409195, 33.389027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447538, 28.054737, 33.336952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149282, 0.216664, -0.964765,
		0.883126, 0.409644, 0.228647,
		0.444750, -0.886143, -0.130189,
		30.580963, 27.788895, 33.297897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822096, 28.568573, 32.921860>,  <30.269638, 28.409195, 33.389027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822096, 28.568573, 32.921860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.717737, 28.186077, 32.868877>,  <30.655123, 27.956579, 32.837090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.717737, 28.186077, 32.868877>,  <30.822096, 28.568573, 32.921860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717737, 28.186077, 32.868877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057977, 0.152478, -0.986605,
		0.963625, -0.249721, -0.095221,
		-0.260895, -0.956237, -0.132453,
		30.639469, 27.899206, 32.829140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404192, 28.295567, 32.504364>,  <30.822096, 28.568573, 32.921860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404192, 28.295567, 32.504364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065115, 28.088173, 32.459480>,  <30.861670, 27.963736, 32.432552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065115, 28.088173, 32.459480>,  <31.404192, 28.295567, 32.504364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065115, 28.088173, 32.459480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060302, 0.115965, -0.991421,
		0.527050, -0.847186, -0.067037,
		-0.847692, -0.518486, -0.112206,
		30.810806, 27.932627, 32.425819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520124, 27.868420, 31.889006>,  <31.404192, 28.295567, 32.504364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520124, 27.868420, 31.889006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122705, 27.873173, 31.934120>,  <30.884254, 27.876024, 31.961189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122705, 27.873173, 31.934120>,  <31.520124, 27.868420, 31.889006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122705, 27.873173, 31.934120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110629, 0.117384, -0.986906,
		-0.024964, -0.993016, -0.115313,
		-0.993548, 0.011881, 0.112786,
		30.824640, 27.876738, 31.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270819, 27.444860, 31.369400>,  <31.520124, 27.868420, 31.889006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270819, 27.444860, 31.369400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959232, 27.679729, 31.457439>,  <30.772282, 27.820650, 31.510263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959232, 27.679729, 31.457439>,  <31.270819, 27.444860, 31.369400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959232, 27.679729, 31.457439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204332, 0.094159, -0.974363,
		-0.592843, -0.803967, 0.046632,
		-0.778964, 0.587172, 0.220098,
		30.725542, 27.855881, 31.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764236, 27.171263, 30.959219>,  <31.270819, 27.444860, 31.369400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764236, 27.171263, 30.959219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612080, 27.531555, 31.043106>,  <30.520784, 27.747730, 31.093437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612080, 27.531555, 31.043106>,  <30.764236, 27.171263, 30.959219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612080, 27.531555, 31.043106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280635, 0.103649, -0.954202,
		-0.881217, -0.421827, 0.213349,
		-0.380394, 0.900732, 0.209716,
		30.497961, 27.801775, 31.106022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202066, 27.228050, 30.617512>,  <30.764236, 27.171263, 30.959219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202066, 27.228050, 30.617512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217489, 27.611603, 30.729980>,  <30.226742, 27.841734, 30.797461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217489, 27.611603, 30.729980>,  <30.202066, 27.228050, 30.617512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217489, 27.611603, 30.729980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351979, 0.276377, -0.894274,
		-0.935213, -0.064487, 0.348163,
		0.038556, 0.958883, 0.281170,
		30.229055, 27.899267, 30.814331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529696, 27.452679, 30.445557>,  <30.202066, 27.228050, 30.617512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529696, 27.452679, 30.445557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789974, 27.756351, 30.451664>,  <29.946142, 27.938555, 30.455328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789974, 27.756351, 30.451664>,  <29.529696, 27.452679, 30.445557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789974, 27.756351, 30.451664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218166, 0.206176, -0.953884,
		-0.727321, 0.617360, 0.299786,
		0.650698, 0.759183, 0.015269,
		29.985184, 27.984106, 30.456245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.207014, 42.475155, 17.933342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594181, 42.408295, 17.858303>,  <23.826481, 42.368179, 17.813280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594181, 42.408295, 17.858303>,  <23.207014, 42.475155, 17.933342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594181, 42.408295, 17.858303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006577, -0.729506, 0.683943,
		-0.251178, -0.663235, -0.705003,
		0.967919, -0.167155, -0.187597,
		23.884556, 42.358147, 17.802023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.289364, 41.715019, 17.722601>,  <23.207014, 42.475155, 17.933342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.289364, 41.715019, 17.722601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648293, 41.835323, 17.851818>,  <23.863649, 41.907505, 17.929348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648293, 41.835323, 17.851818>,  <23.289364, 41.715019, 17.722601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.648293, 41.835323, 17.851818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032725, -0.775218, 0.630845,
		0.440162, -0.555500, -0.705463,
		0.897322, 0.300760, 0.323042,
		23.917490, 41.925552, 17.948730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619368, 41.176125, 17.924702>,  <23.289364, 41.715019, 17.722601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619368, 41.176125, 17.924702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.857920, 41.437065, 18.111790>,  <24.001051, 41.593632, 18.224043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.857920, 41.437065, 18.111790>,  <23.619368, 41.176125, 17.924702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.857920, 41.437065, 18.111790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107755, -0.642473, 0.758695,
		0.795437, -0.402071, -0.453453,
		0.596380, 0.652355, 0.467721,
		24.036835, 41.632771, 18.252106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244478, 40.699551, 18.160160>,  <23.619368, 41.176125, 17.924702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244478, 40.699551, 18.160160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.262939, 41.047615, 18.356403>,  <24.274015, 41.256454, 18.474150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.262939, 41.047615, 18.356403>,  <24.244478, 40.699551, 18.160160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262939, 41.047615, 18.356403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427495, -0.461090, 0.777589,
		0.902839, 0.173845, -0.393267,
		0.046151, 0.870157, 0.490608,
		24.276785, 41.308662, 18.503586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903858, 40.684898, 18.418676>,  <24.244478, 40.699551, 18.160160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903858, 40.684898, 18.418676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.699411, 40.951614, 18.635620>,  <24.576742, 41.111645, 18.765787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.699411, 40.951614, 18.635620>,  <24.903858, 40.684898, 18.418676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699411, 40.951614, 18.635620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137665, -0.559355, 0.817417,
		0.848414, 0.492461, 0.194103,
		-0.511118, 0.666787, 0.542359,
		24.546076, 41.151649, 18.798328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239716, 40.869514, 19.118425>,  <24.903858, 40.684898, 18.418676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239716, 40.869514, 19.118425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.853584, 40.950977, 19.183746>,  <24.621906, 40.999855, 19.222939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.853584, 40.950977, 19.183746>,  <25.239716, 40.869514, 19.118425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853584, 40.950977, 19.183746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014489, -0.582807, 0.812481,
		0.260645, 0.786676, 0.559648,
		-0.965326, 0.203661, 0.163304,
		24.563986, 41.012077, 19.232738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188868, 41.051296, 19.842913>,  <25.239716, 40.869514, 19.118425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188868, 41.051296, 19.842913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.805412, 40.993626, 19.744751>,  <24.575338, 40.959023, 19.685854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.805412, 40.993626, 19.744751>,  <25.188868, 41.051296, 19.842913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805412, 40.993626, 19.744751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190120, -0.317268, 0.929083,
		-0.211810, 0.937312, 0.276735,
		-0.958640, -0.144176, -0.245403,
		24.517820, 40.950375, 19.671129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668966, 41.148647, 20.448196>,  <25.188868, 41.051296, 19.842913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668966, 41.148647, 20.448196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.507128, 40.887585, 20.191967>,  <24.410025, 40.730946, 20.038229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.507128, 40.887585, 20.191967>,  <24.668966, 41.148647, 20.448196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507128, 40.887585, 20.191967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347492, -0.538207, 0.767843,
		-0.845901, 0.533263, -0.009036,
		-0.404599, -0.652659, -0.640575,
		24.385748, 40.691788, 19.999794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.181839, 40.983437, 20.943806>,  <24.668966, 41.148647, 20.448196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.181839, 40.983437, 20.943806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.118486, 40.724186, 20.645855>,  <24.080475, 40.568634, 20.467085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.118486, 40.724186, 20.645855>,  <24.181839, 40.983437, 20.943806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118486, 40.724186, 20.645855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373163, -0.659157, 0.652887,
		-0.914147, 0.381365, -0.137461,
		-0.158380, -0.648130, -0.744878,
		24.070972, 40.529747, 20.422392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482666, 40.816124, 21.045443>,  <24.181839, 40.983437, 20.943806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482666, 40.816124, 21.045443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.697519, 40.525818, 20.873512>,  <23.826431, 40.351635, 20.770355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.697519, 40.525818, 20.873512>,  <23.482666, 40.816124, 21.045443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.697519, 40.525818, 20.873512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395240, -0.666730, 0.631868,
		-0.745165, -0.169515, -0.644976,
		0.537136, -0.725766, -0.429824,
		23.858660, 40.308086, 20.744564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.078735, 40.346489, 21.212540>,  <23.482666, 40.816124, 21.045443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.078735, 40.346489, 21.212540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413595, 40.153873, 21.108768>,  <23.614511, 40.038303, 21.046505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413595, 40.153873, 21.108768>,  <23.078735, 40.346489, 21.212540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.413595, 40.153873, 21.108768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208541, -0.719463, 0.662483,
		-0.505656, -0.500498, -0.702719,
		0.837151, -0.481535, -0.259427,
		23.664740, 40.009415, 21.030941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.859425, 39.665825, 21.094189>,  <23.078735, 40.346489, 21.212540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.859425, 39.665825, 21.094189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.249908, 39.622223, 21.169167>,  <23.484200, 39.596062, 21.214153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.249908, 39.622223, 21.169167>,  <22.859425, 39.665825, 21.094189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.249908, 39.622223, 21.169167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203063, -0.762719, 0.614024,
		0.076037, -0.637478, -0.766707,
		0.976209, -0.109001, 0.187443,
		23.542770, 39.589523, 21.225399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813330, 38.954945, 21.188948>,  <22.859425, 39.665825, 21.094189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813330, 38.954945, 21.188948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156260, 39.080624, 21.352051>,  <23.362019, 39.156033, 21.449913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156260, 39.080624, 21.352051>,  <22.813330, 38.954945, 21.188948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156260, 39.080624, 21.352051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076191, -0.705941, 0.704161,
		0.509103, -0.634763, -0.581283,
		0.857327, 0.314202, 0.407760,
		23.413458, 39.174885, 21.474379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276560, 38.370655, 21.181135>,  <22.813330, 38.954945, 21.188948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276560, 38.370655, 21.181135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363573, 38.632633, 21.470612>,  <23.415781, 38.789822, 21.644297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363573, 38.632633, 21.470612>,  <23.276560, 38.370655, 21.181135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363573, 38.632633, 21.470612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172739, -0.703908, 0.688967,
		0.960646, -0.274883, -0.039990,
		0.217534, 0.654945, 0.723689,
		23.428833, 38.829117, 21.687717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655668, 37.900604, 21.610107>,  <23.276560, 38.370655, 21.181135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655668, 37.900604, 21.610107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618971, 38.220577, 21.847321>,  <23.596952, 38.412563, 21.989649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618971, 38.220577, 21.847321>,  <23.655668, 37.900604, 21.610107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618971, 38.220577, 21.847321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015044, -0.596590, 0.802405,
		0.995669, 0.064692, 0.066766,
		-0.091742, 0.799934, 0.593033,
		23.591448, 38.460556, 22.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194410, 37.934841, 22.086304>,  <23.655668, 37.900604, 21.610107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194410, 37.934841, 22.086304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874723, 38.120975, 22.238468>,  <23.682911, 38.232655, 22.329767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874723, 38.120975, 22.238468>,  <24.194410, 37.934841, 22.086304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874723, 38.120975, 22.238468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096688, -0.525141, 0.845505,
		0.593213, 0.712524, 0.374709,
		-0.799218, 0.465335, 0.380413,
		23.634958, 38.260574, 22.352592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449726, 37.969307, 22.748087>,  <24.194410, 37.934841, 22.086304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449726, 37.969307, 22.748087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.072161, 38.097496, 22.779881>,  <23.845621, 38.174412, 22.798958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.072161, 38.097496, 22.779881>,  <24.449726, 37.969307, 22.748087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.072161, 38.097496, 22.779881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103027, -0.514578, 0.851231,
		0.313701, 0.795301, 0.518737,
		-0.943916, 0.320477, 0.079486,
		23.788986, 38.193638, 22.803726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395317, 38.273052, 23.345863>,  <24.449726, 37.969307, 22.748087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395317, 38.273052, 23.345863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026320, 38.171219, 23.229801>,  <23.804920, 38.110119, 23.160164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026320, 38.171219, 23.229801>,  <24.395317, 38.273052, 23.345863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026320, 38.171219, 23.229801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109887, -0.547377, 0.829640,
		-0.370040, 0.797223, 0.476976,
		-0.922494, -0.254587, -0.290156,
		23.749571, 38.094841, 23.142754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980659, 38.411030, 23.879337>,  <24.395317, 38.273052, 23.345863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980659, 38.411030, 23.879337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750578, 38.153381, 23.677643>,  <23.612530, 37.998795, 23.556625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750578, 38.153381, 23.677643>,  <23.980659, 38.411030, 23.879337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.750578, 38.153381, 23.677643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258059, -0.442056, 0.859064,
		-0.776239, 0.624259, 0.088051,
		-0.575202, -0.644117, -0.504237,
		23.578016, 37.960148, 23.526371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397982, 38.361225, 24.304180>,  <23.980659, 38.411030, 23.879337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397982, 38.361225, 24.304180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.352049, 38.040405, 24.069736>,  <23.324490, 37.847912, 23.929070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.352049, 38.040405, 24.069736>,  <23.397982, 38.361225, 24.304180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352049, 38.040405, 24.069736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243690, -0.549240, 0.799344,
		-0.963031, 0.234620, -0.132382,
		-0.114832, -0.802053, -0.586110,
		23.317598, 37.799789, 23.893904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657907, 38.071999, 24.399490>,  <23.397982, 38.361225, 24.304180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657907, 38.071999, 24.399490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936798, 37.802635, 24.301182>,  <23.104132, 37.641018, 24.242197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936798, 37.802635, 24.301182>,  <22.657907, 38.071999, 24.399490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936798, 37.802635, 24.301182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151193, -0.473278, 0.867841,
		-0.700727, -0.567921, -0.431795,
		0.697225, -0.673404, -0.245772,
		23.145966, 37.600613, 24.227449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016586, 37.717361, 24.713186>,  <22.657907, 38.071999, 24.399490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016586, 37.717361, 24.713186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638670, 37.662434, 24.594181>,  <21.411921, 37.629478, 24.522778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638670, 37.662434, 24.594181>,  <22.016586, 37.717361, 24.713186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638670, 37.662434, 24.594181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075037, 0.793156, -0.604378,
		0.318968, -0.593335, -0.739063,
		-0.944790, -0.137320, -0.297513,
		21.355232, 37.621239, 24.504927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.961826, 37.839027, 23.976887>,  <22.016586, 37.717361, 24.713186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.961826, 37.839027, 23.976887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617569, 37.936264, 24.155861>,  <21.411015, 37.994606, 24.263245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617569, 37.936264, 24.155861>,  <21.961826, 37.839027, 23.976887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617569, 37.936264, 24.155861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033014, 0.903476, -0.427365,
		-0.508136, -0.353038, -0.785596,
		-0.860644, 0.243095, 0.447434,
		21.359375, 38.009193, 24.290091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502275, 38.053459, 23.412176>,  <21.961826, 37.839027, 23.976887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502275, 38.053459, 23.412176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.294758, 38.190025, 23.725681>,  <21.170248, 38.271965, 23.913784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.294758, 38.190025, 23.725681>,  <21.502275, 38.053459, 23.412176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.294758, 38.190025, 23.725681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133643, 0.873131, -0.468809,
		-0.844389, -0.347960, -0.407347,
		-0.518794, 0.341418, 0.783764,
		21.139120, 38.292450, 23.960810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967144, 38.428215, 23.133009>,  <21.502275, 38.053459, 23.412176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967144, 38.428215, 23.133009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.006290, 38.551407, 23.511547>,  <21.029778, 38.625320, 23.738670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.006290, 38.551407, 23.511547>,  <20.967144, 38.428215, 23.133009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.006290, 38.551407, 23.511547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183397, 0.940208, -0.287011,
		-0.978155, -0.145468, 0.148496,
		0.097866, 0.307975, 0.946348,
		21.035650, 38.643799, 23.795452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568277, 39.009106, 23.316303>,  <20.967144, 38.428215, 23.133009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568277, 39.009106, 23.316303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.814016, 39.062870, 23.627304>,  <20.961460, 39.095131, 23.813904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.814016, 39.062870, 23.627304>,  <20.568277, 39.009106, 23.316303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814016, 39.062870, 23.627304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116182, 0.959233, -0.257633,
		-0.780436, 0.248608, 0.573685,
		0.614347, 0.134415, 0.777503,
		20.998320, 39.103195, 23.860556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297831, 39.541382, 23.695864>,  <20.568277, 39.009106, 23.316303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297831, 39.541382, 23.695864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.690891, 39.545700, 23.769924>,  <20.926727, 39.548290, 23.814362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.690891, 39.545700, 23.769924>,  <20.297831, 39.541382, 23.695864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690891, 39.545700, 23.769924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057559, 0.931268, -0.359760,
		-0.176308, 0.364175, 0.914490,
		0.982651, 0.010791, 0.185152,
		20.985687, 39.548939, 23.825470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410952, 40.189072, 24.037176>,  <20.297831, 39.541382, 23.695864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410952, 40.189072, 24.037176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777897, 40.078594, 23.922520>,  <20.998064, 40.012306, 23.853725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777897, 40.078594, 23.922520>,  <20.410952, 40.189072, 24.037176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777897, 40.078594, 23.922520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146876, 0.904160, -0.401151,
		0.369964, 0.325901, 0.870009,
		0.917363, -0.276195, -0.286640,
		21.053106, 39.995735, 23.836527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879539, 40.660610, 24.157846>,  <20.410952, 40.189072, 24.037176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879539, 40.660610, 24.157846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.076086, 40.473686, 23.863857>,  <21.194014, 40.361530, 23.687464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.076086, 40.473686, 23.863857>,  <20.879539, 40.660610, 24.157846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076086, 40.473686, 23.863857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210235, 0.882555, -0.420593,
		0.845199, 0.052148, 0.531902,
		0.491365, -0.467309, -0.734971,
		21.223495, 40.333492, 23.643366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464460, 41.066071, 24.049818>,  <20.879539, 40.660610, 24.157846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464460, 41.066071, 24.049818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458046, 40.842232, 23.718376>,  <21.454197, 40.707928, 23.519510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458046, 40.842232, 23.718376>,  <21.464460, 41.066071, 24.049818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458046, 40.842232, 23.718376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255331, 0.798946, -0.544511,
		0.966721, -0.220300, 0.130073,
		-0.016034, -0.559602, -0.828607,
		21.453236, 40.674351, 23.469793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974396, 41.331406, 23.659849>,  <21.464460, 41.066071, 24.049818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974396, 41.331406, 23.659849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731293, 41.146366, 23.401661>,  <21.585430, 41.035343, 23.246748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731293, 41.146366, 23.401661>,  <21.974396, 41.331406, 23.659849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731293, 41.146366, 23.401661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152176, 0.729905, -0.666394,
		0.779406, -0.503230, -0.373209,
		-0.607757, -0.462599, -0.645472,
		21.548965, 41.007587, 23.208019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.341713, 41.307343, 23.111917>,  <21.974396, 41.331406, 23.659849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.341713, 41.307343, 23.111917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970467, 41.246300, 22.976086>,  <21.747719, 41.209675, 22.894587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970467, 41.246300, 22.976086>,  <22.341713, 41.307343, 23.111917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970467, 41.246300, 22.976086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220743, 0.508922, -0.832028,
		0.299794, -0.847177, -0.438651,
		-0.928114, -0.152608, -0.339580,
		21.692032, 41.200516, 22.874212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482323, 41.147610, 22.447388>,  <22.341713, 41.307343, 23.111917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482323, 41.147610, 22.447388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.104311, 41.276077, 22.471951>,  <21.877504, 41.353157, 22.486689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.104311, 41.276077, 22.471951>,  <22.482323, 41.147610, 22.447388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.104311, 41.276077, 22.471951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133656, 0.550801, -0.823866,
		-0.298426, -0.770368, -0.563449,
		-0.945028, 0.321171, 0.061409,
		21.820803, 41.372429, 22.490374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.238192, 40.946983, 21.821148>,  <22.482323, 41.147610, 22.447388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.238192, 40.946983, 21.821148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.988068, 41.222313, 21.968224>,  <21.837994, 41.387512, 22.056469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.988068, 41.222313, 21.968224>,  <22.238192, 40.946983, 21.821148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988068, 41.222313, 21.968224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058001, 0.510856, -0.857707,
		-0.778220, -0.515005, -0.359366,
		-0.625308, 0.688329, 0.367688,
		21.800476, 41.428810, 22.078529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546989, 40.936531, 21.410971>,  <22.238192, 40.946983, 21.821148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546989, 40.936531, 21.410971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.597626, 41.293720, 21.583744>,  <21.628008, 41.508034, 21.687408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.597626, 41.293720, 21.583744>,  <21.546989, 40.936531, 21.410971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597626, 41.293720, 21.583744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046707, 0.429587, -0.901817,
		-0.990855, 0.134337, 0.012675,
		0.126593, 0.892977, 0.431932,
		21.635603, 41.561615, 21.713324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113829, 41.349804, 21.011860>,  <21.546989, 40.936531, 21.410971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113829, 41.349804, 21.011860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.366405, 41.602589, 21.191593>,  <21.517952, 41.754261, 21.299433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.366405, 41.602589, 21.191593>,  <21.113829, 41.349804, 21.011860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366405, 41.602589, 21.191593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047362, 0.546956, -0.835821,
		-0.773974, 0.549055, 0.315440,
		0.631443, 0.631964, 0.449334,
		21.555838, 41.792179, 21.326393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914505, 41.987255, 20.656080>,  <21.113829, 41.349804, 21.011860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914505, 41.987255, 20.656080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.256004, 42.081455, 20.841835>,  <21.460903, 42.137974, 20.953287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.256004, 42.081455, 20.841835>,  <20.914505, 41.987255, 20.656080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.256004, 42.081455, 20.841835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259735, 0.580366, -0.771825,
		-0.451280, 0.779561, 0.434318,
		0.853747, 0.235501, 0.464387,
		21.512129, 42.152107, 20.981152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906328, 42.724236, 20.648436>,  <20.914505, 41.987255, 20.656080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906328, 42.724236, 20.648436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281622, 42.609184, 20.725368>,  <21.506798, 42.540154, 20.771528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281622, 42.609184, 20.725368>,  <20.906328, 42.724236, 20.648436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281622, 42.609184, 20.725368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337085, 0.634402, -0.695635,
		0.078064, 0.717500, 0.692170,
		0.938232, -0.287624, 0.192335,
		21.563091, 42.522896, 20.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.205721, 43.219589, 20.594959>,  <20.906328, 42.724236, 20.648436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.205721, 43.219589, 20.594959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.501978, 42.956490, 20.540089>,  <21.679731, 42.798630, 20.507166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.501978, 42.956490, 20.540089>,  <21.205721, 43.219589, 20.594959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501978, 42.956490, 20.540089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380019, 0.578448, -0.721792,
		0.554106, 0.482460, 0.678380,
		0.740643, -0.657746, -0.137178,
		21.724171, 42.759167, 20.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735960, 43.692677, 20.499548>,  <21.205721, 43.219589, 20.594959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735960, 43.692677, 20.499548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876030, 43.345627, 20.358345>,  <21.960072, 43.137398, 20.273623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876030, 43.345627, 20.358345>,  <21.735960, 43.692677, 20.499548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.876030, 43.345627, 20.358345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296946, 0.460256, -0.836653,
		0.888370, 0.188150, 0.418806,
		0.350174, -0.867620, -0.353007,
		21.981083, 43.085342, 20.252443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485058, 43.771908, 20.345337>,  <21.735960, 43.692677, 20.499548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485058, 43.771908, 20.345337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312241, 43.479492, 20.134083>,  <22.208549, 43.304043, 20.007330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312241, 43.479492, 20.134083>,  <22.485058, 43.771908, 20.345337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312241, 43.479492, 20.134083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237656, 0.472622, -0.848615,
		0.869976, -0.492153, -0.030458,
		-0.432043, -0.731036, -0.528133,
		22.182627, 43.260181, 19.975643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005375, 43.551712, 19.928549>,  <22.485058, 43.771908, 20.345337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005375, 43.551712, 19.928549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645836, 43.462677, 19.777538>,  <22.430113, 43.409256, 19.686932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645836, 43.462677, 19.777538>,  <23.005375, 43.551712, 19.928549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645836, 43.462677, 19.777538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259286, 0.424405, -0.867554,
		0.353327, -0.877688, -0.323764,
		-0.898849, -0.222583, -0.377527,
		22.376181, 43.395901, 19.664280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.826586, 31.759499, 27.733974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217381, 31.779037, 27.650921>,  <26.451857, 31.790762, 27.601089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217381, 31.779037, 27.650921>,  <25.826586, 31.759499, 27.733974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217381, 31.779037, 27.650921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212278, 0.317966, -0.924032,
		0.020882, 0.946843, 0.321018,
		0.976986, 0.048850, -0.207633,
		26.510477, 31.793692, 27.588631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106453, 32.516354, 27.603756>,  <25.826586, 31.759499, 27.733974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106453, 32.516354, 27.603756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356987, 32.261814, 27.423641>,  <26.507307, 32.109089, 27.315571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356987, 32.261814, 27.423641>,  <26.106453, 32.516354, 27.603756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356987, 32.261814, 27.423641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071718, 0.528138, -0.846124,
		0.776246, 0.562253, 0.285155,
		0.626337, -0.636350, -0.450289,
		26.544888, 32.070908, 27.288555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787670, 32.934135, 27.444633>,  <26.106453, 32.516354, 27.603756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787670, 32.934135, 27.444633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814953, 32.631245, 27.184799>,  <26.831324, 32.449512, 27.028898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814953, 32.631245, 27.184799>,  <26.787670, 32.934135, 27.444633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814953, 32.631245, 27.184799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200372, 0.648231, -0.734607,
		0.977343, -0.080051, 0.195942,
		0.068209, -0.757224, -0.649584,
		26.835415, 32.404076, 26.989923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201979, 33.177647, 26.994724>,  <26.787670, 32.934135, 27.444633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201979, 33.177647, 26.994724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067533, 32.873173, 26.772865>,  <26.986866, 32.690491, 26.639750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067533, 32.873173, 26.772865>,  <27.201979, 33.177647, 26.994724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067533, 32.873173, 26.772865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308083, 0.467649, -0.828486,
		0.890007, -0.449343, 0.077323,
		-0.336114, -0.761180, -0.554646,
		26.966700, 32.644817, 26.606472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768692, 32.983845, 26.495264>,  <27.201979, 33.177647, 26.994724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768692, 32.983845, 26.495264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421579, 32.861225, 26.338814>,  <27.213310, 32.787655, 26.244944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421579, 32.861225, 26.338814>,  <27.768692, 32.983845, 26.495264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421579, 32.861225, 26.338814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264363, 0.381677, -0.885683,
		0.420791, -0.871979, -0.250172,
		-0.867783, -0.306552, -0.391125,
		27.161243, 32.769260, 26.221476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916008, 32.680294, 25.891855>,  <27.768692, 32.983845, 26.495264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916008, 32.680294, 25.891855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532906, 32.790257, 25.858078>,  <27.303045, 32.856236, 25.837811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532906, 32.790257, 25.858078>,  <27.916008, 32.680294, 25.891855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532906, 32.790257, 25.858078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214300, 0.486413, -0.847041,
		-0.191784, -0.829354, -0.524777,
		-0.957755, 0.274909, -0.084444,
		27.245579, 32.872730, 25.832745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777477, 32.693150, 25.166462>,  <27.916008, 32.680294, 25.891855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777477, 32.693150, 25.166462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462063, 32.895245, 25.306717>,  <27.272814, 33.016502, 25.390869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462063, 32.895245, 25.306717>,  <27.777477, 32.693150, 25.166462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462063, 32.895245, 25.306717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008798, 0.560825, -0.827888,
		-0.614928, -0.655903, -0.437785,
		-0.788534, 0.505240, 0.350637,
		27.225502, 33.046818, 25.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265669, 32.619041, 24.644514>,  <27.777477, 32.693150, 25.166462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265669, 32.619041, 24.644514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181997, 32.947540, 24.856853>,  <27.131794, 33.144638, 24.984257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181997, 32.947540, 24.856853>,  <27.265669, 32.619041, 24.644514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181997, 32.947540, 24.856853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016316, 0.545715, -0.837812,
		-0.977741, -0.166592, -0.127552,
		-0.209180, 0.821244, 0.530850,
		27.119244, 33.193913, 25.016108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710957, 32.989952, 24.243181>,  <27.265669, 32.619041, 24.644514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710957, 32.989952, 24.243181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834690, 33.286583, 24.481297>,  <26.908930, 33.464561, 24.624166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834690, 33.286583, 24.481297>,  <26.710957, 32.989952, 24.243181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834690, 33.286583, 24.481297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074796, 0.643026, -0.762183,
		-0.948008, 0.191243, 0.254376,
		0.309333, 0.741581, 0.595290,
		26.927490, 33.509056, 24.659883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234089, 33.596786, 24.200764>,  <26.710957, 32.989952, 24.243181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234089, 33.596786, 24.200764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562492, 33.772934, 24.346104>,  <26.759535, 33.878620, 24.433308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562492, 33.772934, 24.346104>,  <26.234089, 33.596786, 24.200764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562492, 33.772934, 24.346104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124243, 0.758991, -0.639137,
		-0.557232, 0.479594, 0.677851,
		0.821009, 0.440366, 0.363348,
		26.808796, 33.905045, 24.455109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090445, 34.343800, 24.229597>,  <26.234089, 33.596786, 24.200764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090445, 34.343800, 24.229597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485786, 34.296013, 24.191895>,  <26.722992, 34.267342, 24.169273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485786, 34.296013, 24.191895>,  <26.090445, 34.343800, 24.229597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485786, 34.296013, 24.191895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021511, 0.722859, -0.690660,
		0.150648, 0.680589, 0.717011,
		0.988353, -0.119470, -0.094257,
		26.782293, 34.260170, 24.163618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351404, 35.039761, 24.198088>,  <26.090445, 34.343800, 24.229597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351404, 35.039761, 24.198088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655699, 34.827946, 24.047955>,  <26.838276, 34.700859, 23.957874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655699, 34.827946, 24.047955>,  <26.351404, 35.039761, 24.198088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655699, 34.827946, 24.047955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210689, 0.748421, -0.628869,
		0.613916, 0.399324, 0.680917,
		0.760734, -0.529535, -0.375335,
		26.883919, 34.669086, 23.935354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968197, 35.407887, 24.353046>,  <26.351404, 35.039761, 24.198088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968197, 35.407887, 24.353046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962358, 35.190746, 24.017166>,  <26.958855, 35.060463, 23.815638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962358, 35.190746, 24.017166>,  <26.968197, 35.407887, 24.353046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962358, 35.190746, 24.017166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131260, 0.831483, -0.539822,
		0.991241, -0.118100, 0.059117,
		-0.014598, -0.542853, -0.839701,
		26.957979, 35.027889, 23.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454159, 35.726532, 24.014656>,  <26.968197, 35.407887, 24.353046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454159, 35.726532, 24.014656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162962, 35.585846, 23.779259>,  <26.988243, 35.501434, 23.638020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162962, 35.585846, 23.779259>,  <27.454159, 35.726532, 24.014656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162962, 35.585846, 23.779259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135877, 0.767339, -0.626681,
		0.671984, -0.536182, -0.510828,
		-0.727993, -0.351710, -0.588495,
		26.944565, 35.480331, 23.602711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110575, 36.243454, 23.853848>,  <27.454159, 35.726532, 24.014656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110575, 36.243454, 23.853848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942783, 36.505604, 24.105091>,  <27.842108, 36.662895, 24.255836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942783, 36.505604, 24.105091>,  <28.110575, 36.243454, 23.853848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942783, 36.505604, 24.105091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587605, -0.331370, 0.738183,
		0.691923, 0.678732, -0.246099,
		-0.419478, 0.655375, 0.628109,
		27.816940, 36.702217, 24.293524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669455, 36.715389, 24.136906>,  <28.110575, 36.243454, 23.853848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669455, 36.715389, 24.136906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370834, 36.672977, 24.399635>,  <28.191662, 36.647530, 24.557274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370834, 36.672977, 24.399635>,  <28.669455, 36.715389, 24.136906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370834, 36.672977, 24.399635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656051, -0.281590, 0.700217,
		0.110711, 0.953659, 0.279783,
		-0.746552, -0.106030, 0.656824,
		28.146870, 36.641167, 24.596682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948757, 37.010586, 24.744415>,  <28.669455, 36.715389, 24.136906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948757, 37.010586, 24.744415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626778, 36.797997, 24.849937>,  <28.433590, 36.670444, 24.913250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626778, 36.797997, 24.849937>,  <28.948757, 37.010586, 24.744415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626778, 36.797997, 24.849937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489874, -0.344421, 0.800873,
		-0.334782, 0.773894, 0.537596,
		-0.804950, -0.531472, 0.263804,
		28.385292, 36.638554, 24.929079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882038, 37.107441, 25.431461>,  <28.948757, 37.010586, 24.744415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882038, 37.107441, 25.431461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669331, 36.774101, 25.371124>,  <28.541706, 36.574097, 25.334923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669331, 36.774101, 25.371124>,  <28.882038, 37.107441, 25.431461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669331, 36.774101, 25.371124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331126, -0.368527, 0.868644,
		-0.779471, 0.411972, 0.471915,
		-0.531770, -0.833347, -0.150842,
		28.509800, 36.524097, 25.325872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640871, 36.928314, 26.150261>,  <28.882038, 37.107441, 25.431461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640871, 36.928314, 26.150261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613543, 36.597969, 25.926376>,  <28.597145, 36.399761, 25.792046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613543, 36.597969, 25.926376>,  <28.640871, 36.928314, 26.150261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613543, 36.597969, 25.926376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399037, -0.536813, 0.743372,
		-0.914386, -0.172559, 0.366226,
		-0.068320, -0.825866, -0.559712,
		28.593046, 36.350208, 25.758463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260214, 36.554905, 26.554913>,  <28.640871, 36.928314, 26.150261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260214, 36.554905, 26.554913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432497, 36.294247, 26.305161>,  <28.535866, 36.137852, 26.155310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432497, 36.294247, 26.305161>,  <28.260214, 36.554905, 26.554913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432497, 36.294247, 26.305161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476819, -0.423086, 0.770482,
		-0.766248, -0.629567, 0.128492,
		0.430707, -0.651647, -0.624378,
		28.561708, 36.098751, 26.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106863, 35.942383, 26.861288>,  <28.260214, 36.554905, 26.554913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106863, 35.942383, 26.861288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427114, 35.883720, 26.628914>,  <28.619267, 35.848522, 26.489491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427114, 35.883720, 26.628914>,  <28.106863, 35.942383, 26.861288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427114, 35.883720, 26.628914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373863, -0.635393, 0.675650,
		-0.468207, -0.758135, -0.453887,
		0.800630, -0.146653, -0.580934,
		28.667303, 35.839725, 26.454634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243814, 35.244720, 26.858097>,  <28.106863, 35.942383, 26.861288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243814, 35.244720, 26.858097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605251, 35.364857, 26.735909>,  <28.822113, 35.436939, 26.662596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605251, 35.364857, 26.735909>,  <28.243814, 35.244720, 26.858097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605251, 35.364857, 26.735909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428383, -0.629560, 0.648183,
		0.002362, -0.716554, -0.697528,
		0.903594, 0.300340, -0.305472,
		28.876329, 35.454960, 26.644266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525150, 34.660721, 26.756575>,  <28.243814, 35.244720, 26.858097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525150, 34.660721, 26.756575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838833, 34.906773, 26.789150>,  <29.027042, 35.054405, 26.808695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838833, 34.906773, 26.789150>,  <28.525150, 34.660721, 26.756575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838833, 34.906773, 26.789150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373740, -0.573027, 0.729355,
		0.495316, -0.541529, -0.679271,
		0.784207, 0.615132, 0.081439,
		29.074095, 35.091312, 26.813581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196589, 34.241325, 26.788422>,  <28.525150, 34.660721, 26.756575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196589, 34.241325, 26.788422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292816, 34.591724, 26.955635>,  <29.350554, 34.801964, 27.055964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292816, 34.591724, 26.955635>,  <29.196589, 34.241325, 26.788422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292816, 34.591724, 26.955635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471842, -0.481912, 0.738327,
		0.848229, 0.019627, -0.529266,
		0.240568, 0.876000, 0.418032,
		29.364986, 34.854523, 27.081045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878487, 34.118385, 26.922861>,  <29.196589, 34.241325, 26.788422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878487, 34.118385, 26.922861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762978, 34.436646, 27.135860>,  <29.693672, 34.627602, 27.263660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762978, 34.436646, 27.135860>,  <29.878487, 34.118385, 26.922861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762978, 34.436646, 27.135860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305645, -0.450473, 0.838841,
		0.907299, 0.404990, -0.113102,
		-0.288773, 0.795649, 0.532497,
		29.676346, 34.675339, 27.295609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442219, 34.077354, 27.463474>,  <29.878487, 34.118385, 26.922861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442219, 34.077354, 27.463474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182940, 34.349808, 27.599651>,  <30.027372, 34.513279, 27.681356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182940, 34.349808, 27.599651>,  <30.442219, 34.077354, 27.463474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182940, 34.349808, 27.599651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142440, -0.330732, 0.932913,
		0.748032, 0.653203, 0.117358,
		-0.648196, 0.681133, 0.340441,
		29.988482, 34.554146, 27.701784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756449, 34.426140, 28.076704>,  <30.442219, 34.077354, 27.463474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756449, 34.426140, 28.076704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357311, 34.451416, 28.083858>,  <30.117828, 34.466579, 28.088150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357311, 34.451416, 28.083858>,  <30.756449, 34.426140, 28.076704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357311, 34.451416, 28.083858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001006, -0.287022, 0.957923,
		0.065662, 0.955838, 0.286466,
		-0.997841, 0.063187, 0.017884,
		30.057959, 34.470371, 28.089224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503344, 34.999142, 28.460472>,  <30.756449, 34.426140, 28.076704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503344, 34.999142, 28.460472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243757, 34.694832, 28.463562>,  <30.088005, 34.512245, 28.465416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243757, 34.694832, 28.463562>,  <30.503344, 34.999142, 28.460472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243757, 34.694832, 28.463562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165145, -0.130949, 0.977537,
		-0.742678, 0.635664, 0.210620,
		-0.648966, -0.760779, 0.007723,
		30.049068, 34.466599, 28.465879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094254, 35.116814, 28.917175>,  <30.503344, 34.999142, 28.460472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094254, 35.116814, 28.917175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489819, 35.129860, 28.975128>,  <31.727158, 35.137688, 29.009899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489819, 35.129860, 28.975128>,  <31.094254, 35.116814, 28.917175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489819, 35.129860, 28.975128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134285, 0.220230, -0.966161,
		-0.063415, 0.974903, 0.213409,
		0.988912, 0.032611, 0.144881,
		31.786491, 35.139645, 29.018593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306263, 35.711956, 28.578430>,  <31.094254, 35.116814, 28.917175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306263, 35.711956, 28.578430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631226, 35.482292, 28.619091>,  <31.826204, 35.344494, 28.643488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631226, 35.482292, 28.619091>,  <31.306263, 35.711956, 28.578430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631226, 35.482292, 28.619091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232011, 0.158368, -0.959735,
		0.534943, 0.803280, 0.261871,
		0.812408, -0.574161, 0.101652,
		31.874949, 35.310043, 28.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901220, 36.084900, 28.297222>,  <31.306263, 35.711956, 28.578430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901220, 36.084900, 28.297222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000595, 35.701488, 28.241371>,  <32.060219, 35.471439, 28.207861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000595, 35.701488, 28.241371>,  <31.901220, 36.084900, 28.297222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000595, 35.701488, 28.241371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432224, 0.238700, -0.869600,
		0.866869, 0.155689, 0.473603,
		0.248436, -0.958532, -0.139629,
		32.075127, 35.413929, 28.199482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514748, 36.116421, 27.912073>,  <31.901220, 36.084900, 28.297222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514748, 36.116421, 27.912073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425480, 35.728905, 27.868912>,  <32.371922, 35.496395, 27.843016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425480, 35.728905, 27.868912>,  <32.514748, 36.116421, 27.912073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425480, 35.728905, 27.868912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155228, 0.073962, -0.985106,
		0.962341, -0.236593, 0.133878,
		-0.223167, -0.968790, -0.107903,
		32.358528, 35.438267, 27.836540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036446, 35.815308, 27.495270>,  <32.514748, 36.116421, 27.912073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036446, 35.815308, 27.495270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714512, 35.582264, 27.450020>,  <32.521351, 35.442436, 27.422871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714512, 35.582264, 27.450020>,  <33.036446, 35.815308, 27.495270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714512, 35.582264, 27.450020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215334, -0.109045, -0.970433,
		0.553051, -0.805401, 0.213220,
		-0.804839, -0.582613, -0.113123,
		32.473061, 35.407478, 27.416082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273354, 35.235321, 27.055006>,  <33.036446, 35.815308, 27.495270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273354, 35.235321, 27.055006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879684, 35.164928, 27.046715>,  <32.643482, 35.122692, 27.041740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879684, 35.164928, 27.046715>,  <33.273354, 35.235321, 27.055006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879684, 35.164928, 27.046715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028157, -0.039815, -0.998810,
		0.174951, -0.983587, 0.044140,
		-0.984174, -0.175986, -0.020729,
		32.584431, 35.112133, 27.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172985, 34.678139, 26.592598>,  <33.273354, 35.235321, 27.055006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172985, 34.678139, 26.592598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825878, 34.876923, 26.593899>,  <32.617615, 34.996193, 26.594679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825878, 34.876923, 26.593899>,  <33.172985, 34.678139, 26.592598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825878, 34.876923, 26.593899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022596, -0.032921, -0.999203,
		-0.496452, -0.867151, 0.039797,
		-0.867770, 0.496956, 0.003250,
		32.565548, 35.026009, 26.594873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892670, 34.335983, 26.023178>,  <33.172985, 34.678139, 26.592598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892670, 34.335983, 26.023178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677975, 34.669811, 26.072830>,  <32.549160, 34.870110, 26.102621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677975, 34.669811, 26.072830>,  <32.892670, 34.335983, 26.023178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677975, 34.669811, 26.072830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122230, 0.068656, -0.990124,
		-0.834850, -0.546607, 0.065159,
		-0.536736, 0.834570, 0.124129,
		32.516953, 34.920181, 26.110069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253571, 34.244709, 25.666389>,  <32.892670, 34.335983, 26.023178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253571, 34.244709, 25.666389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312084, 34.637875, 25.711071>,  <32.347191, 34.873775, 25.737881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312084, 34.637875, 25.711071>,  <32.253571, 34.244709, 25.666389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312084, 34.637875, 25.711071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034647, 0.107760, -0.993573,
		-0.988636, 0.149211, -0.018292,
		0.146281, 0.982916, 0.111705,
		32.355968, 34.932751, 25.744583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908188, 34.570236, 25.114719>,  <32.253571, 34.244709, 25.666389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908188, 34.570236, 25.114719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139114, 34.868210, 25.248455>,  <32.277668, 35.046993, 25.328697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139114, 34.868210, 25.248455>,  <31.908188, 34.570236, 25.114719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139114, 34.868210, 25.248455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073618, 0.360315, -0.929921,
		-0.813197, 0.561470, 0.153174,
		0.577314, 0.744932, 0.334341,
		32.312309, 35.091690, 25.348757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627575, 35.143921, 24.719147>,  <31.908188, 34.570236, 25.114719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627575, 35.143921, 24.719147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993685, 35.225624, 24.858028>,  <32.213352, 35.274647, 24.941357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993685, 35.225624, 24.858028>,  <31.627575, 35.143921, 24.719147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993685, 35.225624, 24.858028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261740, 0.353632, -0.898018,
		-0.306209, 0.912811, 0.270208,
		0.915275, 0.204257, 0.347204,
		32.268269, 35.286900, 24.962189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720570, 35.902187, 24.735119>,  <31.627575, 35.143921, 24.719147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720570, 35.902187, 24.735119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061207, 35.705868, 24.661457>,  <32.265587, 35.588078, 24.617260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061207, 35.705868, 24.661457>,  <31.720570, 35.902187, 24.735119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061207, 35.705868, 24.661457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027276, 0.392308, -0.919429,
		0.523497, 0.777955, 0.347473,
		0.851591, -0.490796, -0.184153,
		32.316685, 35.558628, 24.606211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.637236, 34.531189, 32.572311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.941408, 34.299706, 32.454433>,  <32.123913, 34.160816, 32.383709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.941408, 34.299706, 32.454433>,  <31.637236, 34.531189, 32.572311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941408, 34.299706, 32.454433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186325, 0.629120, -0.754646,
		0.622113, 0.518950, 0.586231,
		0.760433, -0.578704, -0.294690,
		32.169537, 34.126095, 32.366028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237923, 34.998337, 32.338367>,  <31.637236, 34.531189, 32.572311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237923, 34.998337, 32.338367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.300552, 34.636635, 32.179466>,  <32.338131, 34.419613, 32.084126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.300552, 34.636635, 32.179466>,  <32.237923, 34.998337, 32.338367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300552, 34.636635, 32.179466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350678, 0.426905, -0.833533,
		0.923313, -0.008794, 0.383946,
		0.156579, -0.904254, -0.397251,
		32.347527, 34.365360, 32.060291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811127, 35.072273, 31.940676>,  <32.237923, 34.998337, 32.338367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811127, 35.072273, 31.940676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629906, 34.744743, 31.799664>,  <32.521172, 34.548225, 31.715057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629906, 34.744743, 31.799664>,  <32.811127, 35.072273, 31.940676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629906, 34.744743, 31.799664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225616, 0.277255, -0.933931,
		0.862463, -0.502655, 0.059129,
		-0.453051, -0.818821, -0.352529,
		32.493992, 34.499096, 31.693905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227730, 34.876358, 31.333897>,  <32.811127, 35.072273, 31.940676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227730, 34.876358, 31.333897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.862000, 34.725887, 31.273899>,  <32.642559, 34.635605, 31.237900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.862000, 34.725887, 31.273899>,  <33.227730, 34.876358, 31.333897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862000, 34.725887, 31.273899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081246, 0.192459, -0.977936,
		0.396743, -0.906340, -0.145407,
		-0.914327, -0.376175, -0.149993,
		32.587700, 34.613033, 31.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303894, 34.532303, 30.737246>,  <33.227730, 34.876358, 31.333897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303894, 34.532303, 30.737246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908596, 34.574677, 30.781322>,  <32.671417, 34.600101, 30.807768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908596, 34.574677, 30.781322>,  <33.303894, 34.532303, 30.737246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908596, 34.574677, 30.781322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094178, 0.145826, -0.984817,
		-0.120396, -0.983622, -0.134136,
		-0.988248, 0.105935, 0.110193,
		32.612122, 34.606457, 30.814381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066116, 34.143204, 30.374317>,  <33.303894, 34.532303, 30.737246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066116, 34.143204, 30.374317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745945, 34.377106, 30.427032>,  <32.553841, 34.517448, 30.458662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745945, 34.377106, 30.427032>,  <33.066116, 34.143204, 30.374317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745945, 34.377106, 30.427032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162356, 0.000146, -0.986732,
		-0.577017, -0.811209, 0.094821,
		-0.800432, 0.584756, 0.131789,
		32.505814, 34.552532, 30.466570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489315, 33.953842, 29.922895>,  <33.066116, 34.143204, 30.374317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489315, 33.953842, 29.922895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353245, 34.319199, 30.012337>,  <32.271603, 34.538414, 30.066002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353245, 34.319199, 30.012337>,  <32.489315, 33.953842, 29.922895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353245, 34.319199, 30.012337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307799, 0.116533, -0.944288,
		-0.888560, -0.390050, 0.241498,
		-0.340177, 0.913390, 0.223603,
		32.251190, 34.593216, 30.079418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766012, 33.946007, 29.652439>,  <32.489315, 33.953842, 29.922895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766012, 33.946007, 29.652439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.883562, 34.326206, 29.692822>,  <31.954092, 34.554325, 29.717051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.883562, 34.326206, 29.692822>,  <31.766012, 33.946007, 29.652439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883562, 34.326206, 29.692822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273846, 0.184915, -0.943830,
		-0.915777, 0.249720, 0.314631,
		0.293873, 0.950498, 0.100956,
		31.971724, 34.611355, 29.723108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349436, 34.422508, 29.264103>,  <31.766012, 33.946007, 29.652439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349436, 34.422508, 29.264103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.659939, 34.665436, 29.331726>,  <31.846241, 34.811192, 29.372299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.659939, 34.665436, 29.331726>,  <31.349436, 34.422508, 29.264103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659939, 34.665436, 29.331726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074577, 0.354753, -0.931981,
		-0.625988, 0.710851, 0.320672,
		0.776259, 0.607323, 0.169058,
		31.892817, 34.847633, 29.382444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764252, 34.251373, 29.507254>,  <31.349436, 34.422508, 29.264103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764252, 34.251373, 29.507254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447838, 34.087437, 29.325573>,  <30.257990, 33.989075, 29.216564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447838, 34.087437, 29.325573>,  <30.764252, 34.251373, 29.507254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447838, 34.087437, 29.325573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387271, -0.239274, 0.890376,
		-0.473589, 0.880216, 0.030555,
		-0.791034, -0.409839, -0.454200,
		30.210527, 33.964485, 29.189314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229681, 34.548664, 29.918957>,  <30.764252, 34.251373, 29.507254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229681, 34.548664, 29.918957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.078873, 34.233723, 29.723843>,  <29.988388, 34.044758, 29.606773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.078873, 34.233723, 29.723843>,  <30.229681, 34.548664, 29.918957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078873, 34.233723, 29.723843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475838, -0.287178, 0.831329,
		-0.794629, 0.545534, -0.266380,
		-0.377019, -0.787351, -0.487785,
		29.965767, 33.997517, 29.577507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454105, 34.529793, 30.086529>,  <30.229681, 34.548664, 29.918957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454105, 34.529793, 30.086529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.583780, 34.170059, 29.969154>,  <29.661585, 33.954220, 29.898729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.583780, 34.170059, 29.969154>,  <29.454105, 34.529793, 30.086529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583780, 34.170059, 29.969154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405570, -0.412367, 0.815761,
		-0.854643, -0.145451, -0.498427,
		0.324188, -0.899332, -0.293436,
		29.681036, 33.900261, 29.881123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783539, 34.179157, 29.995419>,  <29.454105, 34.529793, 30.086529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783539, 34.179157, 29.995419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.054272, 33.885300, 30.014137>,  <29.216711, 33.708984, 30.025368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.054272, 33.885300, 30.014137>,  <28.783539, 34.179157, 29.995419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054272, 33.885300, 30.014137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569315, -0.482096, 0.665931,
		-0.466657, -0.477374, -0.744544,
		0.676840, -0.734641, 0.046803,
		29.257322, 33.664906, 30.028177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458439, 33.616295, 29.898451>,  <28.783539, 34.179157, 29.995419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458439, 33.616295, 29.898451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776716, 33.474407, 30.094837>,  <28.967682, 33.389275, 30.212669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776716, 33.474407, 30.094837>,  <28.458439, 33.616295, 29.898451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776716, 33.474407, 30.094837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602645, -0.544939, 0.582976,
		0.060753, -0.759748, -0.647374,
		0.795694, -0.354719, 0.490965,
		29.015425, 33.367992, 30.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220951, 32.998352, 30.150578>,  <28.458439, 33.616295, 29.898451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220951, 32.998352, 30.150578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.547401, 33.034607, 30.378864>,  <28.743273, 33.056358, 30.515837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.547401, 33.034607, 30.378864>,  <28.220951, 32.998352, 30.150578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547401, 33.034607, 30.378864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509378, -0.353557, 0.784559,
		0.272892, -0.931012, -0.242379,
		0.816128, 0.090638, 0.570719,
		28.792240, 33.061798, 30.550079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310703, 32.333908, 30.556454>,  <28.220951, 32.998352, 30.150578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310703, 32.333908, 30.556454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512251, 32.623402, 30.745060>,  <28.633179, 32.797096, 30.858223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512251, 32.623402, 30.745060>,  <28.310703, 32.333908, 30.556454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512251, 32.623402, 30.745060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364228, -0.316955, 0.875715,
		0.783233, -0.612985, 0.103900,
		0.503869, 0.723732, 0.471516,
		28.663412, 32.840523, 30.886515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653563, 31.982780, 31.062408>,  <28.310703, 32.333908, 30.556454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653563, 31.982780, 31.062408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.638977, 32.369080, 31.165169>,  <28.630226, 32.600861, 31.226826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.638977, 32.369080, 31.165169>,  <28.653563, 31.982780, 31.062408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638977, 32.369080, 31.165169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282236, -0.256559, 0.924403,
		0.958652, -0.038799, 0.281925,
		-0.036465, 0.965750, 0.256901,
		28.628038, 32.658806, 31.242239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072264, 32.062565, 31.737314>,  <28.653563, 31.982780, 31.062408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072264, 32.062565, 31.737314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.824669, 32.375843, 31.713783>,  <28.676111, 32.563808, 31.699665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.824669, 32.375843, 31.713783>,  <29.072264, 32.062565, 31.737314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824669, 32.375843, 31.713783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196533, -0.081938, 0.977067,
		0.760413, 0.616355, 0.204642,
		-0.618988, 0.783194, -0.058828,
		28.638973, 32.610802, 31.696135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094299, 32.356869, 32.502743>,  <29.072264, 32.062565, 31.737314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094299, 32.356869, 32.502743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.792641, 32.553806, 32.328911>,  <28.611645, 32.671967, 32.224609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.792641, 32.553806, 32.328911>,  <29.094299, 32.356869, 32.502743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792641, 32.553806, 32.328911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258479, 0.385808, 0.885630,
		0.603696, 0.780227, -0.163697,
		-0.754148, 0.492339, -0.434583,
		28.566397, 32.701508, 32.198536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181293, 32.994282, 32.739574>,  <29.094299, 32.356869, 32.502743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181293, 32.994282, 32.739574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.800308, 32.929928, 32.636089>,  <28.571716, 32.891315, 32.573997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.800308, 32.929928, 32.636089>,  <29.181293, 32.994282, 32.739574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800308, 32.929928, 32.636089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280926, 0.135245, 0.950152,
		-0.117877, 0.977663, -0.174012,
		-0.952463, -0.160885, -0.258708,
		28.514568, 32.881660, 32.558475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775116, 33.484386, 33.117126>,  <29.181293, 32.994282, 32.739574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775116, 33.484386, 33.117126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.504183, 33.197807, 33.050278>,  <28.341623, 33.025860, 33.010170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.504183, 33.197807, 33.050278>,  <28.775116, 33.484386, 33.117126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504183, 33.197807, 33.050278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318820, 0.081138, 0.944336,
		-0.663003, 0.692911, -0.283374,
		-0.677333, -0.716443, -0.167119,
		28.300983, 32.982876, 33.000141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401892, 33.554604, 33.638474>,  <28.775116, 33.484386, 33.117126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401892, 33.554604, 33.638474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257996, 33.209145, 33.497223>,  <28.171658, 33.001869, 33.412472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257996, 33.209145, 33.497223>,  <28.401892, 33.554604, 33.638474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257996, 33.209145, 33.497223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288650, -0.256886, 0.922329,
		-0.887281, 0.433729, -0.156879,
		-0.359741, -0.863648, -0.353126,
		28.150074, 32.950050, 33.391285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832422, 33.454159, 34.033916>,  <28.401892, 33.554604, 33.638474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832422, 33.454159, 34.033916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.918442, 33.097549, 33.874447>,  <27.970053, 32.883583, 33.778763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.918442, 33.097549, 33.874447>,  <27.832422, 33.454159, 34.033916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918442, 33.097549, 33.874447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252287, -0.445085, 0.859215,
		-0.943454, -0.084192, -0.320634,
		0.215048, -0.891522, -0.398676,
		27.982956, 32.830093, 33.754845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.852001, 28.239458, 31.913689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815269, 28.614193, 32.048687>,  <32.793228, 28.839033, 32.129688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815269, 28.614193, 32.048687>,  <32.852001, 28.239458, 31.913689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815269, 28.614193, 32.048687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468784, 0.258349, -0.844688,
		-0.878527, -0.235782, 0.415449,
		-0.091831, 0.936836, 0.337498,
		32.787720, 28.895245, 32.149937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130295, 28.388237, 31.773298>,  <32.852001, 28.239458, 31.913689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130295, 28.388237, 31.773298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359283, 28.716061, 31.783077>,  <32.496677, 28.912754, 31.788944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359283, 28.716061, 31.783077>,  <32.130295, 28.388237, 31.773298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359283, 28.716061, 31.783077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445198, 0.335740, -0.830107,
		-0.688529, 0.464331, 0.557068,
		0.572474, 0.819558, 0.024448,
		32.531025, 28.961927, 31.790411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683105, 28.952938, 31.646273>,  <32.130295, 28.388237, 31.773298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683105, 28.952938, 31.646273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047989, 29.076298, 31.538368>,  <32.266918, 29.150312, 31.473625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047989, 29.076298, 31.538368>,  <31.683105, 28.952938, 31.646273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047989, 29.076298, 31.538368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357773, 0.278656, -0.891263,
		-0.199693, 0.909528, 0.364528,
		0.912206, 0.308398, -0.269759,
		32.321651, 29.168818, 31.457441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580671, 29.549952, 31.231760>,  <31.683105, 28.952938, 31.646273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580671, 29.549952, 31.231760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956198, 29.439579, 31.149307>,  <32.181515, 29.373356, 31.099836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956198, 29.439579, 31.149307>,  <31.580671, 29.549952, 31.231760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956198, 29.439579, 31.149307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099546, 0.355564, -0.929336,
		0.329724, 0.892994, 0.306341,
		0.938815, -0.275929, -0.206132,
		32.237843, 29.356800, 31.087467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829954, 30.137762, 30.827341>,  <31.580671, 29.549952, 31.231760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829954, 30.137762, 30.827341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068481, 29.827698, 30.743885>,  <32.211597, 29.641659, 30.693811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068481, 29.827698, 30.743885>,  <31.829954, 30.137762, 30.827341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068481, 29.827698, 30.743885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008466, 0.253822, -0.967214,
		0.802702, 0.578536, 0.144796,
		0.596321, -0.775158, -0.208641,
		32.247379, 29.595150, 30.681293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320702, 30.417549, 30.389915>,  <31.829954, 30.137762, 30.827341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320702, 30.417549, 30.389915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340286, 30.020901, 30.342091>,  <32.352036, 29.782911, 30.313396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340286, 30.020901, 30.342091>,  <32.320702, 30.417549, 30.389915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340286, 30.020901, 30.342091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099041, 0.114295, -0.988498,
		0.993878, 0.060238, -0.092615,
		0.048960, -0.991619, -0.119561,
		32.354973, 29.723415, 30.306223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836792, 30.369616, 29.940819>,  <32.320702, 30.417549, 30.389915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836792, 30.369616, 29.940819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627823, 30.028797, 29.927616>,  <32.502441, 29.824306, 29.919695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627823, 30.028797, 29.927616>,  <32.836792, 30.369616, 29.940819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627823, 30.028797, 29.927616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094437, 0.096286, -0.990863,
		0.847439, -0.514536, -0.130767,
		-0.522426, -0.852046, -0.033006,
		32.471096, 29.773184, 29.917715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322960, 30.038242, 29.554705>,  <32.836792, 30.369616, 29.940819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322960, 30.038242, 29.554705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.958557, 29.873886, 29.540672>,  <32.739914, 29.775272, 29.532253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.958557, 29.873886, 29.540672>,  <33.322960, 30.038242, 29.554705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958557, 29.873886, 29.540672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104363, -0.147415, -0.983553,
		0.398960, -0.899688, 0.177178,
		-0.911010, -0.410889, -0.035081,
		32.685253, 29.750620, 29.530148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313797, 29.577532, 29.007923>,  <33.322960, 30.038242, 29.554705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313797, 29.577532, 29.007923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918457, 29.590546, 29.067398>,  <32.681252, 29.598354, 29.103083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918457, 29.590546, 29.067398>,  <33.313797, 29.577532, 29.007923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918457, 29.590546, 29.067398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150578, -0.066582, -0.986353,
		-0.022185, -0.997251, 0.070704,
		-0.988349, 0.032528, 0.148687,
		32.621952, 29.600306, 29.112003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069138, 29.031120, 28.621407>,  <33.313797, 29.577532, 29.007923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069138, 29.031120, 28.621407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776165, 29.299171, 28.669521>,  <32.600380, 29.460003, 28.698391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776165, 29.299171, 28.669521>,  <33.069138, 29.031120, 28.621407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776165, 29.299171, 28.669521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062941, 0.109272, -0.992017,
		-0.677923, -0.734157, -0.037855,
		-0.732433, 0.670129, 0.120287,
		32.556435, 29.500210, 28.705606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620438, 28.891768, 28.132479>,  <33.069138, 29.031120, 28.621407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620438, 28.891768, 28.132479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525978, 29.269882, 28.222519>,  <32.469303, 29.496752, 28.276543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525978, 29.269882, 28.222519>,  <32.620438, 28.891768, 28.132479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525978, 29.269882, 28.222519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159794, 0.190721, -0.968551,
		-0.958489, -0.264687, 0.106013,
		-0.236144, 0.945286, 0.225100,
		32.455135, 29.553469, 28.290049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992529, 29.033731, 27.753788>,  <32.620438, 28.891768, 28.132479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992529, 29.033731, 27.753788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130783, 29.399368, 27.838615>,  <32.213734, 29.618750, 27.889513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130783, 29.399368, 27.838615>,  <31.992529, 29.033731, 27.753788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130783, 29.399368, 27.838615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295415, 0.320504, -0.900004,
		-0.890655, 0.248423, 0.380814,
		0.345634, 0.914091, 0.212071,
		32.234474, 29.673595, 27.902237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453386, 29.468225, 27.571703>,  <31.992529, 29.033731, 27.753788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453386, 29.468225, 27.571703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774496, 29.706577, 27.580490>,  <31.967161, 29.849588, 27.585762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774496, 29.706577, 27.580490>,  <31.453386, 29.468225, 27.571703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774496, 29.706577, 27.580490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051903, 0.106530, -0.992954,
		-0.594022, 0.795976, 0.116447,
		0.802772, 0.595881, 0.021967,
		32.015327, 29.885342, 27.587080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207350, 30.089848, 27.275637>,  <31.453386, 29.468225, 27.571703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207350, 30.089848, 27.275637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605007, 30.103714, 27.234699>,  <31.843601, 30.112034, 27.210136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605007, 30.103714, 27.234699>,  <31.207350, 30.089848, 27.275637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605007, 30.103714, 27.234699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108056, 0.323839, -0.939921,
		0.000559, 0.945477, 0.325689,
		0.994145, 0.034667, -0.102346,
		31.903250, 30.114115, 27.203995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707718, 30.716583, 27.258438>,  <31.207350, 30.089848, 27.275637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707718, 30.716583, 27.258438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344852, 30.570526, 27.174797>,  <30.127132, 30.482891, 27.124613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344852, 30.570526, 27.174797>,  <30.707718, 30.716583, 27.258438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344852, 30.570526, 27.174797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129320, -0.230956, 0.964332,
		-0.400413, 0.901848, 0.162294,
		-0.907163, -0.365143, -0.209105,
		30.072704, 30.460983, 27.112066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263123, 31.003620, 27.730459>,  <30.707718, 30.716583, 27.258438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263123, 31.003620, 27.730459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068102, 30.671577, 27.622227>,  <29.951090, 30.472351, 27.557287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068102, 30.671577, 27.622227>,  <30.263123, 31.003620, 27.730459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068102, 30.671577, 27.622227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025889, -0.296030, 0.954828,
		-0.872710, 0.472533, 0.122839,
		-0.487552, -0.830108, -0.270581,
		29.921837, 30.422544, 27.541052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745636, 30.897400, 28.305658>,  <30.263123, 31.003620, 27.730459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745636, 30.897400, 28.305658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.769117, 30.553123, 28.103367>,  <29.783207, 30.346558, 27.981991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.769117, 30.553123, 28.103367>,  <29.745636, 30.897400, 28.305658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769117, 30.553123, 28.103367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019812, -0.507508, 0.861419,
		-0.998079, -0.040548, -0.046844,
		0.058703, -0.860692, -0.505730,
		29.786728, 30.294916, 27.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230988, 30.494486, 28.458351>,  <29.745636, 30.897400, 28.305658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230988, 30.494486, 28.458351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468801, 30.204166, 28.319935>,  <29.611490, 30.029976, 28.236885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468801, 30.204166, 28.319935>,  <29.230988, 30.494486, 28.458351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468801, 30.204166, 28.319935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236801, -0.569326, 0.787269,
		-0.768408, -0.386118, -0.510355,
		0.594537, -0.725797, -0.346041,
		29.647163, 29.986427, 28.216122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853981, 29.883097, 28.526817>,  <29.230988, 30.494486, 28.458351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853981, 29.883097, 28.526817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.244429, 29.796822, 28.516495>,  <29.478697, 29.745056, 28.510302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.244429, 29.796822, 28.516495>,  <28.853981, 29.883097, 28.526817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244429, 29.796822, 28.516495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077419, -0.456417, 0.886391,
		-0.202962, -0.863227, -0.462217,
		0.976121, -0.215688, -0.025805,
		29.537266, 29.732115, 28.508753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887623, 29.162016, 28.886089>,  <28.853981, 29.883097, 28.526817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887623, 29.162016, 28.886089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269772, 29.274006, 28.848404>,  <29.499062, 29.341200, 28.825792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269772, 29.274006, 28.848404>,  <28.887623, 29.162016, 28.886089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269772, 29.274006, 28.848404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248851, -0.590931, 0.767381,
		0.159174, -0.756580, -0.634232,
		0.955372, 0.279977, -0.094215,
		29.556383, 29.358000, 28.820139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211872, 28.588137, 28.928625>,  <28.887623, 29.162016, 28.886089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211872, 28.588137, 28.928625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503536, 28.850704, 29.006020>,  <29.678535, 29.008245, 29.052456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503536, 28.850704, 29.006020>,  <29.211872, 28.588137, 28.928625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503536, 28.850704, 29.006020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389501, -0.630549, 0.671340,
		0.562685, -0.414150, -0.715447,
		0.729160, 0.656420, 0.193488,
		29.722284, 29.047630, 29.064066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842077, 28.235422, 28.824251>,  <29.211872, 28.588137, 28.928625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842077, 28.235422, 28.824251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883469, 28.536659, 29.084141>,  <29.908304, 28.717402, 29.240074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883469, 28.536659, 29.084141>,  <29.842077, 28.235422, 28.824251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883469, 28.536659, 29.084141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491385, -0.606653, 0.624910,
		0.864773, 0.254598, -0.432836,
		0.103480, 0.753095, 0.649723,
		29.914513, 28.762589, 29.279058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572863, 28.136211, 29.187994>,  <29.842077, 28.235422, 28.824251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572863, 28.136211, 29.187994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389988, 28.392765, 29.434444>,  <30.280264, 28.546698, 29.582314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389988, 28.392765, 29.434444>,  <30.572863, 28.136211, 29.187994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389988, 28.392765, 29.434444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368854, -0.493635, 0.787573,
		0.809277, 0.587327, -0.010893,
		-0.457185, 0.641383, 0.616125,
		30.252832, 28.585180, 29.619282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014534, 28.248751, 29.818501>,  <30.572863, 28.136211, 29.187994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014534, 28.248751, 29.818501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651562, 28.370045, 29.934856>,  <30.433779, 28.442822, 30.004671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651562, 28.370045, 29.934856>,  <31.014534, 28.248751, 29.818501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651562, 28.370045, 29.934856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199329, -0.298789, 0.933270,
		0.369916, 0.904861, 0.210687,
		-0.907431, 0.303236, 0.290892,
		30.379333, 28.461016, 30.022123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024406, 28.789217, 30.334585>,  <31.014534, 28.248751, 29.818501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024406, 28.789217, 30.334585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688917, 28.577141, 30.384293>,  <30.487623, 28.449896, 30.414118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688917, 28.577141, 30.384293>,  <31.024406, 28.789217, 30.334585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688917, 28.577141, 30.384293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198181, -0.084631, 0.976505,
		-0.507217, 0.843644, 0.176056,
		-0.838722, -0.530191, 0.124268,
		30.437300, 28.418083, 30.421574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734228, 29.014811, 31.030535>,  <31.024406, 28.789217, 30.334585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734228, 29.014811, 31.030535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565500, 28.666931, 30.928009>,  <30.464264, 28.458204, 30.866493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565500, 28.666931, 30.928009>,  <30.734228, 29.014811, 31.030535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565500, 28.666931, 30.928009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058431, -0.308181, 0.949532,
		-0.904795, 0.385554, 0.180814,
		-0.421819, -0.869697, -0.256312,
		30.438955, 28.406023, 30.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079044, 28.986366, 31.366419>,  <30.734228, 29.014811, 31.030535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079044, 28.986366, 31.366419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209726, 28.614883, 31.296257>,  <30.288136, 28.391994, 31.254160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209726, 28.614883, 31.296257>,  <30.079044, 28.986366, 31.366419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209726, 28.614883, 31.296257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048861, -0.168745, 0.984448,
		-0.943863, -0.330194, -0.009753,
		0.326704, -0.928707, -0.175406,
		30.307737, 28.336271, 31.243635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763597, 28.576567, 31.971960>,  <30.079044, 28.986366, 31.366419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763597, 28.576567, 31.971960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037090, 28.341614, 31.798759>,  <30.201185, 28.200642, 31.694839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037090, 28.341614, 31.798759>,  <29.763597, 28.576567, 31.971960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037090, 28.341614, 31.798759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185662, -0.433822, 0.881662,
		-0.705721, -0.683212, -0.187562,
		0.683730, -0.587385, -0.433004,
		30.242210, 28.165398, 31.668858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045822, 28.434999, 31.822670>,  <29.763597, 28.576567, 31.971960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045822, 28.434999, 31.822670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685598, 28.516777, 31.976131>,  <28.469463, 28.565844, 32.068211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685598, 28.516777, 31.976131>,  <29.045822, 28.434999, 31.822670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685598, 28.516777, 31.976131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294096, 0.363409, -0.883992,
		-0.320151, -0.908920, -0.267146,
		-0.900561, 0.204445, 0.383655,
		28.415430, 28.578110, 32.091228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697937, 28.125576, 31.363487>,  <29.045822, 28.434999, 31.822670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697937, 28.125576, 31.363487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.451040, 28.376049, 31.554028>,  <28.302902, 28.526333, 31.668352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.451040, 28.376049, 31.554028>,  <28.697937, 28.125576, 31.363487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451040, 28.376049, 31.554028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325108, 0.348347, -0.879181,
		-0.716461, -0.697533, -0.011438,
		-0.617243, 0.626181, 0.476351,
		28.265867, 28.563904, 31.696932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995161, 28.189411, 30.949305>,  <28.697937, 28.125576, 31.363487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995161, 28.189411, 30.949305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.018557, 28.519962, 31.173332>,  <28.032595, 28.718294, 31.307749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.018557, 28.519962, 31.173332>,  <27.995161, 28.189411, 30.949305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018557, 28.519962, 31.173332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417437, 0.529871, -0.738229,
		-0.906822, -0.190615, 0.375953,
		0.058489, 0.826379, 0.560069,
		28.036102, 28.767876, 31.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409349, 28.473835, 30.781824>,  <27.995161, 28.189411, 30.949305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409349, 28.473835, 30.781824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.627771, 28.774174, 30.930447>,  <27.758825, 28.954376, 31.019619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.627771, 28.774174, 30.930447>,  <27.409349, 28.473835, 30.781824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627771, 28.774174, 30.930447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367439, 0.613236, -0.699236,
		-0.752870, 0.245297, 0.610751,
		0.546055, 0.750847, 0.371555,
		27.791588, 28.999428, 31.041914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961428, 29.064659, 30.768759>,  <27.409349, 28.473835, 30.781824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961428, 29.064659, 30.768759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.325382, 29.229980, 30.783092>,  <27.543755, 29.329174, 30.791693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.325382, 29.229980, 30.783092>,  <26.961428, 29.064659, 30.768759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325382, 29.229980, 30.783092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233203, 0.581008, -0.779773,
		-0.343104, 0.701149, 0.625036,
		0.909888, 0.413304, 0.035836,
		27.598349, 29.353971, 30.793844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893848, 29.779533, 30.665266>,  <26.961428, 29.064659, 30.768759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893848, 29.779533, 30.665266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.276529, 29.725769, 30.561996>,  <27.506138, 29.693510, 30.500034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.276529, 29.725769, 30.561996>,  <26.893848, 29.779533, 30.665266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276529, 29.725769, 30.561996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181115, 0.419443, -0.889531,
		0.227852, 0.897776, 0.376938,
		0.956703, -0.134412, -0.258172,
		27.563540, 29.685446, 30.484545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175253, 30.400972, 30.571049>,  <26.893848, 29.779533, 30.665266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175253, 30.400972, 30.571049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403807, 30.146641, 30.363495>,  <27.540939, 29.994041, 30.238962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403807, 30.146641, 30.363495>,  <27.175253, 30.400972, 30.571049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403807, 30.146641, 30.363495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057632, 0.599613, -0.798212,
		0.818655, 0.485992, 0.305967,
		0.571387, -0.635827, -0.518885,
		27.575222, 29.955893, 30.207829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745886, 30.804384, 30.272001>,  <27.175253, 30.400972, 30.571049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745886, 30.804384, 30.272001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.698990, 30.470993, 30.056011>,  <27.670853, 30.270958, 29.926416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.698990, 30.470993, 30.056011>,  <27.745886, 30.804384, 30.272001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698990, 30.470993, 30.056011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148280, 0.552321, -0.820338,
		0.981971, -0.016109, -0.188342,
		-0.117240, -0.833476, -0.539975,
		27.663818, 30.220951, 29.894018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975237, 31.024555, 29.625511>,  <27.745886, 30.804384, 30.272001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975237, 31.024555, 29.625511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.745270, 30.701103, 29.575577>,  <27.607290, 30.507032, 29.545616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.745270, 30.701103, 29.575577>,  <27.975237, 31.024555, 29.625511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745270, 30.701103, 29.575577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269648, 0.331299, -0.904174,
		0.772502, -0.486164, -0.408516,
		-0.574918, -0.808632, -0.124836,
		27.572794, 30.458513, 29.538126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200857, 30.659294, 28.994770>,  <27.975237, 31.024555, 29.625511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200857, 30.659294, 28.994770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.820240, 30.570595, 29.079994>,  <27.591869, 30.517376, 29.131128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.820240, 30.570595, 29.079994>,  <28.200857, 30.659294, 28.994770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820240, 30.570595, 29.079994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260323, 0.212023, -0.941954,
		0.163695, -0.951776, -0.259474,
		-0.951544, -0.221740, 0.213062,
		27.534777, 30.504070, 29.143911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927505, 30.226912, 28.420231>,  <28.200857, 30.659294, 28.994770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927505, 30.226912, 28.420231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.625711, 30.425907, 28.591465>,  <27.444635, 30.545305, 28.694206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.625711, 30.425907, 28.591465>,  <27.927505, 30.226912, 28.420231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625711, 30.425907, 28.591465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316689, 0.295341, -0.901378,
		-0.574858, -0.815645, -0.065280,
		-0.754484, 0.497491, 0.428085,
		27.399366, 30.575155, 28.719891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351824, 29.998281, 28.057575>,  <27.927505, 30.226912, 28.420231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351824, 29.998281, 28.057575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.269550, 30.349434, 28.230556>,  <27.220186, 30.560125, 28.334345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.269550, 30.349434, 28.230556>,  <27.351824, 29.998281, 28.057575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269550, 30.349434, 28.230556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371963, 0.338606, -0.864286,
		-0.905173, -0.338626, 0.256894,
		-0.205683, 0.877883, 0.432453,
		27.207846, 30.612799, 28.360292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729000, 30.177876, 27.778288>,  <27.351824, 29.998281, 28.057575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729000, 30.177876, 27.778288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.839785, 30.525791, 27.941631>,  <26.906256, 30.734541, 28.039639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.839785, 30.525791, 27.941631>,  <26.729000, 30.177876, 27.778288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839785, 30.525791, 27.941631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397081, 0.490602, -0.775652,
		-0.874997, 0.052672, 0.481255,
		0.276960, 0.869790, 0.408360,
		26.922873, 30.786728, 28.064138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204077, 30.547110, 27.630676>,  <26.729000, 30.177876, 27.778288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204077, 30.547110, 27.630676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.473064, 30.828526, 27.722603>,  <26.634457, 30.997375, 27.777760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.473064, 30.828526, 27.722603>,  <26.204077, 30.547110, 27.630676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473064, 30.828526, 27.722603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320722, 0.556843, -0.766201,
		-0.667025, 0.441539, 0.600101,
		0.672469, 0.703541, 0.229817,
		26.674805, 31.039587, 27.791548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.591202, 39.927731, 16.804651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862640, 40.020870, 17.083302>,  <40.025505, 40.076756, 17.250492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862640, 40.020870, 17.083302>,  <39.591202, 39.927731, 16.804651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862640, 40.020870, 17.083302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049233, -0.960708, 0.273160,
		0.732858, -0.151069, -0.663398,
		0.678598, 0.232848, 0.696625,
		40.066219, 40.090725, 17.292290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221352, 39.435757, 16.767830>,  <39.591202, 39.927731, 16.804651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221352, 39.435757, 16.767830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242012, 39.560116, 17.147446>,  <40.254406, 39.634731, 17.375216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242012, 39.560116, 17.147446>,  <40.221352, 39.435757, 16.767830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242012, 39.560116, 17.147446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163811, -0.940072, 0.299049,
		0.985139, 0.140018, -0.099481,
		0.051647, 0.310901, 0.949038,
		40.257507, 39.653385, 17.432158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784328, 39.031178, 16.960819>,  <40.221352, 39.435757, 16.767830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784328, 39.031178, 16.960819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592880, 39.162106, 17.286713>,  <40.478012, 39.240662, 17.482248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592880, 39.162106, 17.286713>,  <40.784328, 39.031178, 16.960819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592880, 39.162106, 17.286713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191306, -0.866748, 0.460597,
		0.856929, 0.376313, 0.352223,
		-0.478618, 0.327317, 0.814732,
		40.449295, 39.260300, 17.531132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160599, 38.846905, 17.455309>,  <40.784328, 39.031178, 16.960819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160599, 38.846905, 17.455309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819687, 38.915047, 17.653137>,  <40.615139, 38.955933, 17.771833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819687, 38.915047, 17.653137>,  <41.160599, 38.846905, 17.455309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819687, 38.915047, 17.653137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170472, -0.803410, 0.570501,
		0.494527, 0.570537, 0.655691,
		-0.852281, 0.170350, 0.494569,
		40.564003, 38.966152, 17.801508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209373, 38.916531, 18.230143>,  <41.160599, 38.846905, 17.455309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209373, 38.916531, 18.230143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824894, 38.814922, 18.187103>,  <40.594208, 38.753956, 18.161280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824894, 38.814922, 18.187103>,  <41.209373, 38.916531, 18.230143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824894, 38.814922, 18.187103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122005, -0.741244, 0.660054,
		-0.247427, 0.621313, 0.743472,
		-0.961194, -0.254023, -0.107600,
		40.536537, 38.738716, 18.154823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009796, 38.779068, 18.911882>,  <41.209373, 38.916531, 18.230143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009796, 38.779068, 18.911882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739029, 38.619431, 18.664494>,  <40.576569, 38.523647, 18.516060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739029, 38.619431, 18.664494>,  <41.009796, 38.779068, 18.911882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739029, 38.619431, 18.664494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002321, -0.841397, 0.540412,
		-0.736056, 0.364378, 0.570482,
		-0.676917, -0.399097, -0.618470,
		40.535954, 38.499702, 18.478952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504158, 38.615734, 19.339283>,  <41.009796, 38.779068, 18.911882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504158, 38.615734, 19.339283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.445572, 38.395977, 19.010231>,  <40.410419, 38.264122, 18.812799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.445572, 38.395977, 19.010231>,  <40.504158, 38.615734, 19.339283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445572, 38.395977, 19.010231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114410, -0.816609, 0.565739,
		-0.982578, 0.176976, 0.056746,
		-0.146461, -0.549390, -0.822630,
		40.401634, 38.231159, 18.763443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829460, 38.319752, 19.510313>,  <40.504158, 38.615734, 19.339283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829460, 38.319752, 19.510313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001045, 38.091965, 19.229828>,  <40.103996, 37.955292, 19.061537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001045, 38.091965, 19.229828>,  <39.829460, 38.319752, 19.510313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001045, 38.091965, 19.229828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202254, -0.817102, 0.539849,
		-0.880388, -0.089753, -0.465684,
		0.428965, -0.569463, -0.701214,
		40.129734, 37.921127, 19.019464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398766, 37.644230, 19.429600>,  <39.829460, 38.319752, 19.510313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398766, 37.644230, 19.429600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758736, 37.570641, 19.271469>,  <39.974720, 37.526485, 19.176590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758736, 37.570641, 19.271469>,  <39.398766, 37.644230, 19.429600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758736, 37.570641, 19.271469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028575, -0.929565, 0.367550,
		-0.435103, -0.319472, -0.841798,
		0.899927, -0.183976, -0.395327,
		40.028713, 37.515450, 19.152870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377907, 37.111309, 18.980217>,  <39.398766, 37.644230, 19.429600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377907, 37.111309, 18.980217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764172, 37.115452, 19.084061>,  <39.995930, 37.117939, 19.146368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764172, 37.115452, 19.084061>,  <39.377907, 37.111309, 18.980217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764172, 37.115452, 19.084061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090256, -0.923608, 0.372563,
		0.243637, -0.383199, -0.890954,
		0.965658, 0.010357, 0.259611,
		40.053867, 37.118557, 19.161943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587982, 36.434689, 18.906033>,  <39.377907, 37.111309, 18.980217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587982, 36.434689, 18.906033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902882, 36.577347, 19.107246>,  <40.091820, 36.662941, 19.227976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902882, 36.577347, 19.107246>,  <39.587982, 36.434689, 18.906033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902882, 36.577347, 19.107246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005726, -0.811507, 0.584315,
		0.616612, -0.462880, -0.636813,
		0.787246, 0.356649, 0.503036,
		40.139057, 36.684341, 19.258158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181007, 35.955418, 18.825237>,  <39.587982, 36.434689, 18.906033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181007, 35.955418, 18.825237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198959, 36.164093, 19.166019>,  <40.209732, 36.289299, 19.370489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198959, 36.164093, 19.166019>,  <40.181007, 35.955418, 18.825237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198959, 36.164093, 19.166019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131006, -0.842375, 0.522725,
		0.990365, -0.135072, 0.030536,
		0.044883, 0.521689, 0.851954,
		40.212425, 36.320599, 19.421606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705376, 35.738644, 19.208536>,  <40.181007, 35.955418, 18.825237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705376, 35.738644, 19.208536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442883, 35.897694, 19.465050>,  <40.285385, 35.993126, 19.618958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442883, 35.897694, 19.465050>,  <40.705376, 35.738644, 19.208536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442883, 35.897694, 19.465050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035655, -0.865275, 0.500029,
		0.753712, 0.305272, 0.582003,
		-0.656237, 0.397629, 0.641283,
		40.246010, 36.016983, 19.657434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786350, 35.272598, 19.858400>,  <40.705376, 35.738644, 19.208536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786350, 35.272598, 19.858400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447002, 35.482040, 19.889641>,  <40.243393, 35.607708, 19.908384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447002, 35.482040, 19.889641>,  <40.786350, 35.272598, 19.858400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447002, 35.482040, 19.889641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375761, -0.699496, 0.607873,
		0.372918, 0.486355, 0.790184,
		-0.848373, 0.523607, 0.078101,
		40.192490, 35.639122, 19.913071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655125, 35.230240, 20.590965>,  <40.786350, 35.272598, 19.858400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655125, 35.230240, 20.590965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307739, 35.341915, 20.427101>,  <40.099308, 35.408920, 20.328783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307739, 35.341915, 20.427101>,  <40.655125, 35.230240, 20.590965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307739, 35.341915, 20.427101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484158, -0.655308, 0.579795,
		-0.106582, 0.701873, 0.704284,
		-0.868465, 0.279189, -0.409661,
		40.047199, 35.425671, 20.304203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232651, 35.298298, 21.281868>,  <40.655125, 35.230240, 20.590965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232651, 35.298298, 21.281868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994343, 35.284565, 20.960899>,  <39.851357, 35.276325, 20.768318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994343, 35.284565, 20.960899>,  <40.232651, 35.298298, 21.281868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994343, 35.284565, 20.960899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683400, -0.503184, 0.528933,
		-0.421927, 0.863496, 0.276317,
		-0.595770, -0.034336, -0.802421,
		39.815613, 35.274265, 20.720173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482033, 35.434006, 21.533808>,  <40.232651, 35.298298, 21.281868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482033, 35.434006, 21.533808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446377, 35.240189, 21.185722>,  <39.424984, 35.123898, 20.976871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446377, 35.240189, 21.185722>,  <39.482033, 35.434006, 21.533808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446377, 35.240189, 21.185722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475984, -0.746745, 0.464555,
		-0.874925, 0.455617, -0.164073,
		-0.089139, -0.484547, -0.870212,
		39.419636, 35.094826, 20.924658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861328, 35.308662, 21.502880>,  <39.482033, 35.434006, 21.533808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861328, 35.308662, 21.502880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037704, 35.031158, 21.275101>,  <39.143528, 34.864655, 21.138433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037704, 35.031158, 21.275101>,  <38.861328, 35.308662, 21.502880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037704, 35.031158, 21.275101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503846, -0.716384, 0.482632,
		-0.742775, 0.074105, -0.665427,
		0.440936, -0.693760, -0.569449,
		39.169987, 34.823029, 21.104267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285076, 34.873558, 21.355013>,  <38.861328, 35.308662, 21.502880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285076, 34.873558, 21.355013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614243, 34.666870, 21.260513>,  <38.811741, 34.542858, 21.203814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614243, 34.666870, 21.260513>,  <38.285076, 34.873558, 21.355013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614243, 34.666870, 21.260513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242740, -0.695690, 0.676086,
		-0.513703, -0.499014, -0.697922,
		0.822914, -0.516721, -0.236247,
		38.861118, 34.511852, 21.189638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072231, 34.183662, 21.236782>,  <38.285076, 34.873558, 21.355013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072231, 34.183662, 21.236782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.458263, 34.154228, 21.337341>,  <38.689884, 34.136570, 21.397676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.458263, 34.154228, 21.337341>,  <38.072231, 34.183662, 21.236782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458263, 34.154228, 21.337341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215786, -0.767404, 0.603760,
		0.148497, -0.636927, -0.756487,
		0.965083, -0.073583, 0.251398,
		38.747787, 34.132153, 21.412760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333820, 33.572540, 20.910919>,  <38.072231, 34.183662, 21.236782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333820, 33.572540, 20.910919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511143, 33.683949, 21.251720>,  <38.617535, 33.750793, 21.456202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511143, 33.683949, 21.251720>,  <38.333820, 33.572540, 20.910919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511143, 33.683949, 21.251720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265190, -0.867201, 0.421468,
		0.856246, -0.412781, -0.310572,
		0.443303, 0.278520, 0.852003,
		38.644135, 33.767506, 21.507320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567677, 33.713932, 20.971870>,  <38.333820, 33.572540, 20.910919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567677, 33.713932, 20.971870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194294, 33.619503, 20.863850>,  <36.970264, 33.562847, 20.799038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194294, 33.619503, 20.863850>,  <37.567677, 33.713932, 20.971870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194294, 33.619503, 20.863850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178142, 0.348348, -0.920282,
		0.311324, -0.907152, -0.283114,
		-0.933457, -0.236071, -0.270051,
		36.914257, 33.548679, 20.782835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553612, 33.215889, 20.503611>,  <37.567677, 33.713932, 20.971870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553612, 33.215889, 20.503611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281044, 33.507469, 20.477409>,  <37.117504, 33.682419, 20.461689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281044, 33.507469, 20.477409>,  <37.553612, 33.215889, 20.503611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281044, 33.507469, 20.477409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414316, 0.310420, -0.855559,
		-0.603330, -0.610135, -0.513545,
		-0.681422, 0.728954, -0.065503,
		37.076618, 33.726154, 20.457758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337067, 33.359123, 19.789505>,  <37.553612, 33.215889, 20.503611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337067, 33.359123, 19.789505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203465, 33.693802, 19.963116>,  <37.123302, 33.894608, 20.067282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203465, 33.693802, 19.963116>,  <37.337067, 33.359123, 19.789505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203465, 33.693802, 19.963116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419455, 0.544302, -0.726494,
		-0.844097, -0.060597, -0.532756,
		-0.334003, 0.836698, 0.434025,
		37.103264, 33.944813, 20.093323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040859, 33.710041, 19.280666>,  <37.337067, 33.359123, 19.789505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040859, 33.710041, 19.280666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135891, 33.998119, 19.541397>,  <37.192909, 34.170967, 19.697836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135891, 33.998119, 19.541397>,  <37.040859, 33.710041, 19.280666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135891, 33.998119, 19.541397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377170, 0.549995, -0.745150,
		-0.895153, 0.422881, -0.140969,
		0.237578, 0.720192, 0.651828,
		37.207165, 34.214176, 19.736946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622433, 34.180630, 18.963760>,  <37.040859, 33.710041, 19.280666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622433, 34.180630, 18.963760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906837, 34.306099, 19.215496>,  <37.077480, 34.381378, 19.366537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906837, 34.306099, 19.215496>,  <36.622433, 34.180630, 18.963760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906837, 34.306099, 19.215496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383626, 0.577035, -0.721014,
		-0.589310, 0.754084, 0.289950,
		0.711016, 0.313669, 0.629339,
		37.120144, 34.400200, 19.404297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584160, 34.880478, 18.974287>,  <36.622433, 34.180630, 18.963760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584160, 34.880478, 18.974287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951000, 34.827614, 19.124733>,  <37.171104, 34.795895, 19.215000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951000, 34.827614, 19.124733>,  <36.584160, 34.880478, 18.974287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951000, 34.827614, 19.124733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354352, 0.702511, -0.617182,
		-0.182657, 0.699294, 0.691104,
		0.917100, -0.132161, 0.376114,
		37.226131, 34.787964, 19.237568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765549, 35.471035, 19.078863>,  <36.584160, 34.880478, 18.974287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765549, 35.471035, 19.078863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109985, 35.272701, 19.033852>,  <37.316647, 35.153702, 19.006844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109985, 35.272701, 19.033852>,  <36.765549, 35.471035, 19.078863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109985, 35.272701, 19.033852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329210, 0.712387, -0.619779,
		0.387473, 0.496642, 0.776667,
		0.861096, -0.495834, -0.112531,
		37.368313, 35.123951, 19.000092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414440, 36.015625, 19.108894>,  <36.765549, 35.471035, 19.078863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414440, 36.015625, 19.108894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531933, 35.686741, 18.913879>,  <37.602428, 35.489410, 18.796871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531933, 35.686741, 18.913879>,  <37.414440, 36.015625, 19.108894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531933, 35.686741, 18.913879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485092, 0.567697, -0.665136,
		0.823655, -0.041129, 0.565598,
		0.293732, -0.822210, -0.487538,
		37.620052, 35.440079, 18.767618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062454, 36.194496, 18.872524>,  <37.414440, 36.015625, 19.108894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062454, 36.194496, 18.872524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961914, 35.887558, 18.636555>,  <37.901588, 35.703396, 18.494972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961914, 35.887558, 18.636555>,  <38.062454, 36.194496, 18.872524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961914, 35.887558, 18.636555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462156, 0.440374, -0.769729,
		0.850432, -0.466109, 0.243943,
		-0.251351, -0.767342, -0.589923,
		37.886509, 35.657356, 18.459578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697983, 35.951019, 18.512705>,  <38.062454, 36.194496, 18.872524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697983, 35.951019, 18.512705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363815, 35.851891, 18.316475>,  <38.163315, 35.792416, 18.198736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363815, 35.851891, 18.316475>,  <38.697983, 35.951019, 18.512705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363815, 35.851891, 18.316475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360519, 0.426635, -0.829463,
		0.414855, -0.869808, -0.267074,
		-0.835417, -0.247822, -0.490575,
		38.113190, 35.777546, 18.169302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947132, 35.820477, 17.852772>,  <38.697983, 35.951019, 18.512705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947132, 35.820477, 17.852772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.551464, 35.862404, 17.811676>,  <38.314064, 35.887558, 17.787020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.551464, 35.862404, 17.811676>,  <38.947132, 35.820477, 17.852772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551464, 35.862404, 17.811676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146405, 0.655297, -0.741047,
		-0.010350, -0.748064, -0.663546,
		-0.989171, 0.104817, -0.102738,
		38.254711, 35.893848, 17.780855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885128, 35.524723, 17.230646>,  <38.947132, 35.820477, 17.852772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885128, 35.524723, 17.230646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601875, 35.794918, 17.312874>,  <38.431923, 35.957035, 17.362209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601875, 35.794918, 17.312874>,  <38.885128, 35.524723, 17.230646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601875, 35.794918, 17.312874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266185, 0.525057, -0.808369,
		-0.653979, -0.517716, -0.551617,
		-0.708136, 0.675489, 0.205568,
		38.389435, 35.997566, 17.374544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590202, 35.685341, 16.572800>,  <38.885128, 35.524723, 17.230646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590202, 35.685341, 16.572800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473785, 35.973080, 16.825096>,  <38.403934, 36.145721, 16.976475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473785, 35.973080, 16.825096>,  <38.590202, 35.685341, 16.572800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473785, 35.973080, 16.825096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152893, 0.685780, -0.711568,
		-0.944414, -0.110661, -0.309575,
		-0.291043, 0.719347, 0.630741,
		38.386471, 36.188885, 17.014318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059200, 36.026772, 16.214394>,  <38.590202, 35.685341, 16.572800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059200, 36.026772, 16.214394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199799, 36.278305, 16.491814>,  <38.284157, 36.429226, 16.658266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199799, 36.278305, 16.491814>,  <38.059200, 36.026772, 16.214394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199799, 36.278305, 16.491814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227002, 0.661468, -0.714794,
		-0.908251, 0.408686, 0.089757,
		0.351497, 0.628837, 0.693551,
		38.305248, 36.466957, 16.699879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137856, 36.623871, 15.891940>,  <38.059200, 36.026772, 16.214394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137856, 36.623871, 15.891940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.325706, 36.736389, 16.226681>,  <38.438416, 36.803902, 16.427525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.325706, 36.736389, 16.226681>,  <38.137856, 36.623871, 15.891940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325706, 36.736389, 16.226681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452968, 0.736842, -0.501880,
		-0.757807, 0.614763, 0.218621,
		0.469626, 0.281300, 0.836852,
		38.466595, 36.820778, 16.477736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084694, 37.330719, 15.880340>,  <38.137856, 36.623871, 15.891940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084694, 37.330719, 15.880340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393761, 37.256336, 16.123123>,  <38.579201, 37.211708, 16.268793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393761, 37.256336, 16.123123>,  <38.084694, 37.330719, 15.880340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393761, 37.256336, 16.123123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540243, 0.694699, -0.474901,
		-0.333342, 0.694848, 0.637236,
		0.772671, -0.185958, 0.606959,
		38.625561, 37.200550, 16.305210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361420, 37.996349, 16.150904>,  <38.084694, 37.330719, 15.880340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361420, 37.996349, 16.150904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.642654, 37.711910, 16.152000>,  <38.811394, 37.541248, 16.152658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.642654, 37.711910, 16.152000>,  <38.361420, 37.996349, 16.150904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642654, 37.711910, 16.152000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595732, 0.586908, -0.548308,
		0.388292, 0.387142, 0.836272,
		0.703088, -0.711098, 0.002742,
		38.853580, 37.498581, 16.152822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035004, 38.333687, 16.398340>,  <38.361420, 37.996349, 16.150904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035004, 38.333687, 16.398340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.107845, 37.998940, 16.191849>,  <39.151550, 37.798092, 16.067953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.107845, 37.998940, 16.191849>,  <39.035004, 38.333687, 16.398340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107845, 37.998940, 16.191849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616927, 0.506055, -0.602752,
		0.765663, -0.208714, 0.608439,
		0.182101, -0.836867, -0.516229,
		39.162476, 37.747879, 16.036980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649921, 38.234261, 16.392963>,  <39.035004, 38.333687, 16.398340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649921, 38.234261, 16.392963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527584, 38.042412, 16.063984>,  <39.454182, 37.927303, 15.866596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527584, 38.042412, 16.063984>,  <39.649921, 38.234261, 16.392963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527584, 38.042412, 16.063984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700916, 0.471197, -0.535435,
		0.644343, -0.740225, 0.192065,
		-0.305842, -0.479625, -0.822448,
		39.435833, 37.898525, 15.817249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294621, 38.110222, 16.078907>,  <39.649921, 38.234261, 16.392963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294621, 38.110222, 16.078907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.009434, 38.029190, 15.810390>,  <39.838322, 37.980572, 15.649279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.009434, 38.029190, 15.810390>,  <40.294621, 38.110222, 16.078907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009434, 38.029190, 15.810390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578370, 0.371363, -0.726345,
		0.396443, -0.906117, -0.147599,
		-0.712966, -0.202588, -0.671295,
		39.795544, 37.968414, 15.609001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612206, 37.661495, 15.607167>,  <40.294621, 38.110222, 16.078907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612206, 37.661495, 15.607167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301334, 37.844261, 15.434089>,  <40.114815, 37.953922, 15.330241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301334, 37.844261, 15.434089>,  <40.612206, 37.661495, 15.607167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301334, 37.844261, 15.434089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598793, 0.325504, -0.731774,
		-0.193517, -0.827811, -0.526573,
		-0.777173, 0.456919, -0.432697,
		40.068184, 37.981339, 15.304279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.320454, 32.961369, 34.209167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.594412, 32.686943, 34.110996>,  <27.758787, 32.522285, 34.052094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.594412, 32.686943, 34.110996>,  <27.320454, 32.961369, 34.209167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594412, 32.686943, 34.110996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249268, -0.537111, 0.805839,
		-0.684679, -0.490738, -0.538879,
		0.684894, -0.686067, -0.245423,
		27.799881, 32.481125, 34.037369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941870, 32.197975, 34.240211>,  <27.320454, 32.961369, 34.209167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941870, 32.197975, 34.240211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.338448, 32.152775, 34.266335>,  <27.576395, 32.125656, 34.282009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.338448, 32.152775, 34.266335>,  <26.941870, 32.197975, 34.240211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338448, 32.152775, 34.266335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129000, -0.772419, 0.621874,
		-0.019821, -0.624980, -0.780389,
		0.991446, -0.112996, 0.065313,
		27.635881, 32.118877, 34.285927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108103, 31.434841, 34.194656>,  <26.941870, 32.197975, 34.240211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108103, 31.434841, 34.194656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.438723, 31.570419, 34.374401>,  <27.637094, 31.651766, 34.482250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.438723, 31.570419, 34.374401>,  <27.108103, 31.434841, 34.194656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438723, 31.570419, 34.374401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073715, -0.726295, 0.683419,
		0.558014, -0.598005, -0.575335,
		0.826551, 0.338947, 0.449365,
		27.686687, 31.672104, 34.509209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321047, 30.797752, 34.471684>,  <27.108103, 31.434841, 34.194656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321047, 30.797752, 34.471684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.548494, 31.058868, 34.671898>,  <27.684963, 31.215538, 34.792027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.548494, 31.058868, 34.671898>,  <27.321047, 30.797752, 34.471684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548494, 31.058868, 34.671898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053545, -0.636561, 0.769365,
		0.820855, -0.410676, -0.396915,
		0.568621, 0.652790, 0.500535,
		27.719080, 31.254705, 34.822060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900270, 30.377083, 34.881214>,  <27.321047, 30.797752, 34.471684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900270, 30.377083, 34.881214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914251, 30.733780, 35.061687>,  <27.922640, 30.947798, 35.169971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914251, 30.733780, 35.061687>,  <27.900270, 30.377083, 34.881214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914251, 30.733780, 35.061687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235429, -0.446105, 0.863460,
		0.971263, 0.076041, -0.225535,
		0.034954, 0.891745, 0.451187,
		27.924738, 31.001303, 35.197044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580511, 30.463787, 35.190536>,  <27.900270, 30.377083, 34.881214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580511, 30.463787, 35.190536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334141, 30.696800, 35.402683>,  <28.186319, 30.836607, 35.529972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334141, 30.696800, 35.402683>,  <28.580511, 30.463787, 35.190536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334141, 30.696800, 35.402683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282901, -0.464775, 0.839018,
		0.735258, 0.666815, 0.121468,
		-0.615925, 0.582531, 0.530372,
		28.149363, 30.871559, 35.561794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946081, 30.678726, 35.721100>,  <28.580511, 30.463787, 35.190536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946081, 30.678726, 35.721100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.565802, 30.738262, 35.829929>,  <28.337635, 30.773983, 35.895226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.565802, 30.738262, 35.829929>,  <28.946081, 30.678726, 35.721100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565802, 30.738262, 35.829929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179120, -0.452635, 0.873520,
		0.253163, 0.879186, 0.403658,
		-0.950697, 0.148840, 0.272070,
		28.280592, 30.782915, 35.911549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979507, 31.036335, 36.428345>,  <28.946081, 30.678726, 35.721100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979507, 31.036335, 36.428345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628424, 30.848145, 36.391964>,  <28.417772, 30.735229, 36.370136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628424, 30.848145, 36.391964>,  <28.979507, 31.036335, 36.428345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628424, 30.848145, 36.391964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155924, -0.459887, 0.874181,
		-0.453111, 0.753096, 0.477007,
		-0.877712, -0.470478, -0.090954,
		28.365110, 30.707001, 36.364677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694685, 31.175037, 37.028175>,  <28.979507, 31.036335, 36.428345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694685, 31.175037, 37.028175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487148, 30.863541, 36.887112>,  <28.362625, 30.676643, 36.802475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487148, 30.863541, 36.887112>,  <28.694685, 31.175037, 37.028175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487148, 30.863541, 36.887112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103260, -0.466596, 0.878422,
		-0.848610, 0.419348, 0.322503,
		-0.518844, -0.778739, -0.352656,
		28.331495, 30.629919, 36.781315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385265, 30.971788, 37.572483>,  <28.694685, 31.175037, 37.028175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385265, 30.971788, 37.572483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354095, 30.660515, 37.323208>,  <28.335394, 30.473751, 37.173645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354095, 30.660515, 37.323208>,  <28.385265, 30.971788, 37.572483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354095, 30.660515, 37.323208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213665, -0.623597, 0.751980,
		-0.973794, -0.074555, 0.214864,
		-0.077924, -0.778183, -0.623185,
		28.330719, 30.427059, 37.136253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066076, 30.444178, 37.961517>,  <28.385265, 30.971788, 37.572483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066076, 30.444178, 37.961517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.229235, 30.237362, 37.660507>,  <28.327129, 30.113272, 37.479900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.229235, 30.237362, 37.660507>,  <28.066076, 30.444178, 37.961517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229235, 30.237362, 37.660507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234167, -0.737396, 0.633571,
		-0.882489, -0.434647, -0.179706,
		0.407895, -0.517039, -0.752524,
		28.351603, 30.082251, 37.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747431, 29.759417, 37.953995>,  <28.066076, 30.444178, 37.961517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747431, 29.759417, 37.953995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096497, 29.732037, 37.760593>,  <28.305937, 29.715609, 37.644554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096497, 29.732037, 37.760593>,  <27.747431, 29.759417, 37.953995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096497, 29.732037, 37.760593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254967, -0.780575, 0.570696,
		-0.416473, -0.621302, -0.663727,
		0.872664, -0.068452, -0.483500,
		28.358295, 29.711500, 37.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910229, 29.034540, 37.945522>,  <27.747431, 29.759417, 37.953995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910229, 29.034540, 37.945522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.268764, 29.203663, 37.892132>,  <28.483885, 29.305136, 37.860100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.268764, 29.203663, 37.892132>,  <27.910229, 29.034540, 37.945522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268764, 29.203663, 37.892132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415938, -0.697618, 0.583373,
		0.153539, -0.578416, -0.801162,
		0.896338, 0.422805, -0.133474,
		28.537666, 29.330503, 37.852089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397957, 28.566828, 37.703545>,  <27.910229, 29.034540, 37.945522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397957, 28.566828, 37.703545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601448, 28.839592, 37.913761>,  <28.723543, 29.003250, 38.039890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601448, 28.839592, 37.913761>,  <28.397957, 28.566828, 37.703545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601448, 28.839592, 37.913761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377451, -0.725301, 0.575734,
		0.773773, -0.094528, -0.626371,
		0.508730, 0.681912, 0.525538,
		28.754066, 29.044165, 38.071423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872490, 27.925325, 37.475578>,  <28.397957, 28.566828, 37.703545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872490, 27.925325, 37.475578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.925665, 27.534847, 37.407032>,  <27.957569, 27.300560, 37.365902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.925665, 27.534847, 37.407032>,  <27.872490, 27.925325, 37.475578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925665, 27.534847, 37.407032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285667, 0.203305, -0.936516,
		0.949064, 0.075545, 0.305894,
		0.132938, -0.976197, -0.171368,
		27.965546, 27.241989, 37.355621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468077, 27.875170, 37.041767>,  <27.872490, 27.925325, 37.475578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468077, 27.875170, 37.041767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.317518, 27.505501, 37.015751>,  <28.227182, 27.283699, 37.000141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.317518, 27.505501, 37.015751>,  <28.468077, 27.875170, 37.041767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317518, 27.505501, 37.015751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198271, -0.011774, -0.980076,
		0.904994, -0.381794, 0.187668,
		-0.376397, -0.924172, -0.065043,
		28.204599, 27.228249, 36.996239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952953, 27.509237, 36.692684>,  <28.468077, 27.875170, 37.041767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952953, 27.509237, 36.692684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.604532, 27.316788, 36.653107>,  <28.395479, 27.201319, 36.629360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.604532, 27.316788, 36.653107>,  <28.952953, 27.509237, 36.692684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604532, 27.316788, 36.653107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186115, -0.136859, -0.972950,
		0.454567, -0.865904, 0.208755,
		-0.871051, -0.481123, -0.098946,
		28.343216, 27.172451, 36.623425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019203, 27.117359, 36.128731>,  <28.952953, 27.509237, 36.692684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019203, 27.117359, 36.128731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620209, 27.105766, 36.154610>,  <28.380812, 27.098810, 36.170135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620209, 27.105766, 36.154610>,  <29.019203, 27.117359, 36.128731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620209, 27.105766, 36.154610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065357, 0.022483, -0.997609,
		0.027534, -0.999325, -0.024325,
		-0.997482, -0.029058, 0.064694,
		28.320963, 27.097073, 36.174019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693375, 26.502653, 35.750202>,  <29.019203, 27.117359, 36.128731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693375, 26.502653, 35.750202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402988, 26.776829, 35.772625>,  <28.228756, 26.941334, 35.786079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402988, 26.776829, 35.772625>,  <28.693375, 26.502653, 35.750202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402988, 26.776829, 35.772625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125974, -0.052401, -0.990648,
		-0.676094, -0.726240, 0.124390,
		-0.725966, 0.685441, 0.056059,
		28.185198, 26.982462, 35.789444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240801, 26.226299, 35.253407>,  <28.693375, 26.502653, 35.750202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240801, 26.226299, 35.253407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.176985, 26.617973, 35.303596>,  <28.138695, 26.852978, 35.333710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.176985, 26.617973, 35.303596>,  <28.240801, 26.226299, 35.253407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176985, 26.617973, 35.303596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130002, 0.105152, -0.985922,
		-0.978594, -0.173606, 0.110521,
		-0.159540, 0.979185, 0.125470,
		28.129122, 26.911730, 35.341236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759157, 26.412348, 34.718109>,  <28.240801, 26.226299, 35.253407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759157, 26.412348, 34.718109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.855656, 26.786217, 34.822563>,  <27.913555, 27.010538, 34.885235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.855656, 26.786217, 34.822563>,  <27.759157, 26.412348, 34.718109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855656, 26.786217, 34.822563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215085, 0.313888, -0.924777,
		-0.946329, 0.166931, 0.276757,
		0.241245, 0.934670, 0.261137,
		27.928030, 27.066618, 34.900906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299532, 26.799925, 34.351551>,  <27.759157, 26.412348, 34.718109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299532, 26.799925, 34.351551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598518, 27.035011, 34.475410>,  <27.777910, 27.176064, 34.549728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.598518, 27.035011, 34.475410>,  <27.299532, 26.799925, 34.351551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598518, 27.035011, 34.475410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036465, 0.429128, -0.902508,
		-0.663299, 0.685885, 0.299327,
		0.747465, 0.587718, 0.309651,
		27.822758, 27.211327, 34.568306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170795, 27.329592, 34.048767>,  <27.299532, 26.799925, 34.351551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170795, 27.329592, 34.048767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.563799, 27.363483, 34.115093>,  <27.799601, 27.383820, 34.154888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.563799, 27.363483, 34.115093>,  <27.170795, 27.329592, 34.048767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563799, 27.363483, 34.115093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081756, 0.603760, -0.792963,
		-0.167299, 0.792650, 0.586273,
		0.982510, 0.084731, 0.165812,
		27.858553, 27.388903, 34.164837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395576, 28.068291, 34.035965>,  <27.170795, 27.329592, 34.048767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395576, 28.068291, 34.035965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.731716, 27.869503, 33.949398>,  <27.933399, 27.750231, 33.897457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.731716, 27.869503, 33.949398>,  <27.395576, 28.068291, 34.035965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731716, 27.869503, 33.949398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214981, 0.672088, -0.708577,
		0.497593, 0.548926, 0.671626,
		0.840348, -0.496970, -0.216418,
		27.983820, 27.720411, 33.884472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876869, 28.585262, 33.944950>,  <27.395576, 28.068291, 34.035965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876869, 28.585262, 33.944950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.044308, 28.267418, 33.769054>,  <28.144772, 28.076710, 33.663517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.044308, 28.267418, 33.769054>,  <27.876869, 28.585262, 33.944950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044308, 28.267418, 33.769054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161278, 0.541543, -0.825058,
		0.893738, 0.274446, 0.354841,
		0.418596, -0.794613, -0.439736,
		28.169886, 28.029034, 33.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414961, 28.908138, 33.664974>,  <27.876869, 28.585262, 33.944950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414961, 28.908138, 33.664974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388258, 28.556969, 33.475327>,  <28.372236, 28.346268, 33.361538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388258, 28.556969, 33.475327>,  <28.414961, 28.908138, 33.664974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388258, 28.556969, 33.475327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046497, 0.471930, -0.880409,
		0.996685, -0.080819, 0.009316,
		-0.066758, -0.877924, -0.474123,
		28.368231, 28.293591, 33.333088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932817, 28.925575, 33.066540>,  <28.414961, 28.908138, 33.664974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932817, 28.925575, 33.066540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659027, 28.644508, 32.988823>,  <28.494753, 28.475868, 32.942192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.659027, 28.644508, 32.988823>,  <28.932817, 28.925575, 33.066540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659027, 28.644508, 32.988823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054833, 0.315371, -0.947383,
		0.726969, -0.637809, -0.254393,
		-0.684477, -0.702667, -0.194292,
		28.453684, 28.433708, 32.930534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178886, 28.489025, 32.523186>,  <28.932817, 28.925575, 33.066540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178886, 28.489025, 32.523186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.779013, 28.494083, 32.531853>,  <28.539087, 28.497118, 32.537052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.779013, 28.494083, 32.531853>,  <29.178886, 28.489025, 32.523186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779013, 28.494083, 32.531853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016752, 0.306579, -0.951698,
		-0.018680, -0.951761, -0.306271,
		-0.999685, 0.012647, 0.021671,
		28.479107, 28.497877, 32.538353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562153, 27.884062, 32.151783>,  <29.178886, 28.489025, 32.523186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562153, 27.884062, 32.151783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953377, 27.864113, 32.070877>,  <30.188112, 27.852142, 32.022335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953377, 27.864113, 32.070877>,  <29.562153, 27.884062, 32.151783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953377, 27.864113, 32.070877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173725, -0.340538, 0.924042,
		-0.114962, -0.938907, -0.324403,
		0.978061, -0.049873, -0.202261,
		30.246796, 27.849152, 32.010201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773403, 27.170029, 32.275314>,  <29.562153, 27.884062, 32.151783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773403, 27.170029, 32.275314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.085413, 27.414104, 32.330791>,  <30.272619, 27.560549, 32.364079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.085413, 27.414104, 32.330791>,  <29.773403, 27.170029, 32.275314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085413, 27.414104, 32.330791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171930, -0.422101, 0.890096,
		0.601668, -0.670449, -0.434158,
		0.780023, 0.610188, 0.138695,
		30.319420, 27.597160, 32.372398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332169, 26.654398, 32.652290>,  <29.773403, 27.170029, 32.275314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332169, 26.654398, 32.652290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435713, 27.036728, 32.707985>,  <30.497841, 27.266127, 32.741402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435713, 27.036728, 32.707985>,  <30.332169, 26.654398, 32.652290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435713, 27.036728, 32.707985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203807, -0.194956, 0.959404,
		0.944168, -0.219976, -0.245270,
		0.258863, 0.955826, 0.139238,
		30.513372, 27.323475, 32.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032728, 26.629807, 33.028408>,  <30.332169, 26.654398, 32.652290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032728, 26.629807, 33.028408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864580, 26.984425, 33.105690>,  <30.763691, 27.197195, 33.152061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864580, 26.984425, 33.105690>,  <31.032728, 26.629807, 33.028408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864580, 26.984425, 33.105690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186992, -0.123718, 0.974540,
		0.887875, 0.445797, -0.113769,
		-0.420371, 0.886543, 0.193207,
		30.738468, 27.250387, 33.163651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547964, 26.908348, 33.473583>,  <31.032728, 26.629807, 33.028408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547964, 26.908348, 33.473583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213690, 27.110138, 33.560425>,  <31.013124, 27.231211, 33.612530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213690, 27.110138, 33.560425>,  <31.547964, 26.908348, 33.473583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213690, 27.110138, 33.560425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286346, 0.062899, 0.956059,
		0.468651, 0.861133, -0.197018,
		-0.835687, 0.504473, 0.217104,
		30.962984, 27.261480, 33.625557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741568, 27.302624, 34.043613>,  <31.547964, 26.908348, 33.473583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741568, 27.302624, 34.043613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341776, 27.297569, 34.055515>,  <31.101902, 27.294537, 34.062656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341776, 27.297569, 34.055515>,  <31.741568, 27.302624, 34.043613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341776, 27.297569, 34.055515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030681, -0.081071, 0.996236,
		-0.010179, 0.996628, 0.081416,
		-0.999477, -0.012638, 0.029752,
		31.041933, 27.293777, 34.064442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624876, 27.720152, 34.655716>,  <31.741568, 27.302624, 34.043613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624876, 27.720152, 34.655716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297096, 27.504189, 34.578770>,  <31.100430, 27.374611, 34.532600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297096, 27.504189, 34.578770>,  <31.624876, 27.720152, 34.655716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297096, 27.504189, 34.578770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016072, -0.357140, 0.933913,
		-0.572928, 0.762201, 0.301335,
		-0.819448, -0.539908, -0.192365,
		31.051262, 27.342216, 34.521061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989929, 28.352829, 35.134571>,  <31.624876, 27.720152, 34.655716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989929, 28.352829, 35.134571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365543, 28.258366, 35.034615>,  <32.590912, 28.201687, 34.974640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365543, 28.258366, 35.034615>,  <31.989929, 28.352829, 35.134571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365543, 28.258366, 35.034615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145474, 0.385645, -0.911107,
		0.311534, 0.891913, 0.327778,
		0.939033, -0.236158, -0.249892,
		32.647255, 28.187519, 34.959648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246147, 28.991379, 34.865925>,  <31.989929, 28.352829, 35.134571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246147, 28.991379, 34.865925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499992, 28.718002, 34.721603>,  <32.652298, 28.553976, 34.635010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499992, 28.718002, 34.721603>,  <32.246147, 28.991379, 34.865925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499992, 28.718002, 34.721603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171915, 0.580004, -0.796267,
		0.753469, 0.443290, 0.485570,
		0.634609, -0.683440, -0.360807,
		32.690376, 28.512970, 34.613361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859257, 29.367634, 34.524349>,  <32.246147, 28.991379, 34.865925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859257, 29.367634, 34.524349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864132, 28.999813, 34.367237>,  <32.867058, 28.779121, 34.272968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864132, 28.999813, 34.367237>,  <32.859257, 29.367634, 34.524349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864132, 28.999813, 34.367237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141497, 0.390446, -0.909687,
		0.989864, -0.044487, 0.134874,
		0.012192, -0.919550, -0.392783,
		32.867790, 28.723948, 34.249401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566452, 29.324188, 34.126663>,  <32.859257, 29.367634, 34.524349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566452, 29.324188, 34.126663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289093, 29.074295, 33.983051>,  <33.122677, 28.924358, 33.896885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289093, 29.074295, 33.983051>,  <33.566452, 29.324188, 34.126663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289093, 29.074295, 33.983051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187078, 0.325100, -0.926990,
		0.695846, -0.709940, -0.108550,
		-0.693397, -0.624735, -0.359034,
		33.081074, 28.886875, 33.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769585, 29.187840, 33.427933>,  <33.566452, 29.324188, 34.126663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769585, 29.187840, 33.427933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401226, 29.032005, 33.422714>,  <33.180210, 28.938505, 33.419582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401226, 29.032005, 33.422714>,  <33.769585, 29.187840, 33.427933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401226, 29.032005, 33.422714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046770, -0.077214, -0.995917,
		0.386988, -0.917748, 0.089328,
		-0.920898, -0.389586, -0.013042,
		33.124958, 28.915129, 33.418800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890587, 28.610544, 33.049191>,  <33.769585, 29.187840, 33.427933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890587, 28.610544, 33.049191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505325, 28.717892, 33.042175>,  <33.274166, 28.782301, 33.037968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505325, 28.717892, 33.042175>,  <33.890587, 28.610544, 33.049191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505325, 28.717892, 33.042175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020299, 0.007519, -0.999766,
		-0.268176, -0.963286, -0.012690,
		-0.963156, 0.268370, -0.017537,
		33.216377, 28.798403, 33.036915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589195, 28.403011, 32.319794>,  <33.890587, 28.610544, 33.049191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589195, 28.403011, 32.319794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313377, 28.672131, 32.427029>,  <33.147888, 28.833601, 32.491371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313377, 28.672131, 32.427029>,  <33.589195, 28.403011, 32.319794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313377, 28.672131, 32.427029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261201, 0.114235, -0.958501,
		-0.675502, -0.730955, 0.096964,
		-0.689544, 0.672797, 0.268092,
		33.106514, 28.873970, 32.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.966469, 30.021402, 37.689156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.701050, 30.089909, 37.397850>,  <30.541798, 30.131012, 37.223064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.701050, 30.089909, 37.397850>,  <30.966469, 30.021402, 37.689156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701050, 30.089909, 37.397850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716172, -0.136083, -0.684528,
		-0.216342, -0.975781, -0.032360,
		-0.663547, 0.171267, -0.728267,
		30.501986, 30.141289, 37.179371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335825, 29.746721, 37.147545>,  <30.966469, 30.021402, 37.689156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335825, 29.746721, 37.147545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000881, 29.832020, 36.946209>,  <30.799915, 29.883200, 36.825409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000881, 29.832020, 36.946209>,  <31.335825, 29.746721, 37.147545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000881, 29.832020, 36.946209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500323, -0.071992, -0.862841,
		-0.220236, -0.974342, -0.046410,
		-0.837361, 0.213249, -0.503341,
		30.749672, 29.895994, 36.795208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325777, 29.387024, 36.444939>,  <31.335825, 29.746721, 37.147545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325777, 29.387024, 36.444939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094881, 29.713425, 36.432686>,  <30.956345, 29.909266, 36.425335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094881, 29.713425, 36.432686>,  <31.325777, 29.387024, 36.444939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094881, 29.713425, 36.432686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415615, 0.261306, -0.871196,
		-0.702894, -0.515618, -0.489979,
		-0.577239, 0.816001, -0.030628,
		30.921709, 29.958225, 36.423496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225626, 29.523418, 35.721386>,  <31.325777, 29.387024, 36.444939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225626, 29.523418, 35.721386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123068, 29.879368, 35.872326>,  <31.061533, 30.092937, 35.962891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123068, 29.879368, 35.872326>,  <31.225626, 29.523418, 35.721386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123068, 29.879368, 35.872326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358517, 0.450102, -0.817847,
		-0.897623, -0.074407, -0.434438,
		-0.256395, 0.889872, 0.377346,
		31.046150, 30.146330, 35.985531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024584, 29.938787, 35.134499>,  <31.225626, 29.523418, 35.721386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024584, 29.938787, 35.134499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.088558, 30.214966, 35.416691>,  <31.126944, 30.380672, 35.586006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.088558, 30.214966, 35.416691>,  <31.024584, 29.938787, 35.134499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088558, 30.214966, 35.416691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426872, 0.596027, -0.680097,
		-0.890056, 0.409924, -0.199404,
		0.159938, 0.690445, 0.705483,
		31.136539, 30.422100, 35.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746897, 30.604038, 34.886917>,  <31.024584, 29.938787, 35.134499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746897, 30.604038, 34.886917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.013611, 30.691406, 35.171928>,  <31.173639, 30.743828, 35.342934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.013611, 30.691406, 35.171928>,  <30.746897, 30.604038, 34.886917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013611, 30.691406, 35.171928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398069, 0.703887, -0.588289,
		-0.630031, 0.675896, 0.382394,
		0.666785, 0.218421, 0.712524,
		31.213646, 30.756933, 35.385685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656673, 31.353054, 35.106617>,  <30.746897, 30.604038, 34.886917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656673, 31.353054, 35.106617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028923, 31.224926, 35.177425>,  <31.252272, 31.148048, 35.219910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028923, 31.224926, 35.177425>,  <30.656673, 31.353054, 35.106617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028923, 31.224926, 35.177425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355614, 0.677125, -0.644236,
		0.086495, 0.662492, 0.744058,
		0.930622, -0.320321, 0.177023,
		31.308109, 31.128830, 35.230534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053835, 32.012177, 35.179008>,  <30.656673, 31.353054, 35.106617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053835, 32.012177, 35.179008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331484, 31.734093, 35.104309>,  <31.498074, 31.567242, 35.059490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331484, 31.734093, 35.104309>,  <31.053835, 32.012177, 35.179008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331484, 31.734093, 35.104309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488008, 0.645165, -0.587886,
		0.529191, 0.316928, 0.787092,
		0.694121, -0.695212, -0.186752,
		31.539721, 31.525530, 35.048283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683678, 32.327126, 35.231903>,  <31.053835, 32.012177, 35.179008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683678, 32.327126, 35.231903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770052, 31.997368, 35.022621>,  <31.821877, 31.799513, 34.897053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770052, 31.997368, 35.022621>,  <31.683678, 32.327126, 35.231903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770052, 31.997368, 35.022621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603952, 0.533810, -0.591853,
		0.767212, -0.188186, 0.613165,
		0.215935, -0.824399, -0.523200,
		31.834833, 31.750048, 34.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398880, 32.282841, 35.184628>,  <31.683678, 32.327126, 35.231903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398880, 32.282841, 35.184628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272449, 32.058372, 34.878639>,  <32.196590, 31.923691, 34.695045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272449, 32.058372, 34.878639>,  <32.398880, 32.282841, 35.184628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272449, 32.058372, 34.878639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530393, 0.564018, -0.632903,
		0.786626, -0.605780, 0.119371,
		-0.316073, -0.561171, -0.764973,
		32.177628, 31.890020, 34.649147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975155, 32.291348, 34.708271>,  <32.398880, 32.282841, 35.184628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975155, 32.291348, 34.708271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654129, 32.184849, 34.494728>,  <32.461514, 32.120949, 34.366604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654129, 32.184849, 34.494728>,  <32.975155, 32.291348, 34.708271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654129, 32.184849, 34.494728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209273, 0.712363, -0.669883,
		0.558658, -0.649345, -0.515997,
		-0.802562, -0.266251, -0.533858,
		32.413361, 32.104973, 34.334572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226292, 32.243240, 33.995983>,  <32.975155, 32.291348, 34.708271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226292, 32.243240, 33.995983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828812, 32.272671, 33.962185>,  <32.590324, 32.290329, 33.941906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828812, 32.272671, 33.962185>,  <33.226292, 32.243240, 33.995983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828812, 32.272671, 33.962185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111947, 0.620819, -0.775920,
		-0.004633, -0.780493, -0.625147,
		-0.993703, 0.073578, -0.084497,
		32.530701, 32.294743, 33.936836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400040, 31.585014, 33.704498>,  <33.226292, 32.243240, 33.995983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400040, 31.585014, 33.704498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.752247, 31.443756, 33.578026>,  <33.963573, 31.359001, 33.502140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.752247, 31.443756, 33.578026>,  <33.400040, 31.585014, 33.704498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752247, 31.443756, 33.578026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216719, -0.293316, 0.931127,
		-0.421565, -0.888400, -0.181738,
		0.880520, -0.353145, -0.316185,
		34.016403, 31.337812, 33.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366673, 30.976561, 33.996426>,  <33.400040, 31.585014, 33.704498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366673, 30.976561, 33.996426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759983, 31.002876, 33.928509>,  <33.995972, 31.018665, 33.887756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759983, 31.002876, 33.928509>,  <33.366673, 30.976561, 33.996426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759983, 31.002876, 33.928509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181843, -0.403772, 0.896605,
		-0.009572, -0.912491, -0.408985,
		0.983281, 0.065788, -0.169795,
		34.054966, 31.022614, 33.877571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631062, 30.390259, 33.940571>,  <33.366673, 30.976561, 33.996426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631062, 30.390259, 33.940571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976303, 30.579609, 34.010960>,  <34.183449, 30.693218, 34.053192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976303, 30.579609, 34.010960>,  <33.631062, 30.390259, 33.940571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976303, 30.579609, 34.010960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082697, -0.476210, 0.875434,
		0.498206, -0.741040, -0.450167,
		0.863106, 0.473374, 0.175969,
		34.235233, 30.721621, 34.063751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219212, 29.879198, 34.122959>,  <33.631062, 30.390259, 33.940571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219212, 29.879198, 34.122959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310368, 30.231750, 34.288479>,  <34.365063, 30.443281, 34.387791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310368, 30.231750, 34.288479>,  <34.219212, 29.879198, 34.122959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310368, 30.231750, 34.288479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261724, -0.464795, 0.845852,
		0.937851, -0.084461, -0.336602,
		0.227892, 0.881381, 0.413803,
		34.378735, 30.496164, 34.412621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749119, 29.674570, 34.508160>,  <34.219212, 29.879198, 34.122959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749119, 29.674570, 34.508160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700699, 30.049572, 34.638657>,  <34.671646, 30.274572, 34.716957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700699, 30.049572, 34.638657>,  <34.749119, 29.674570, 34.508160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700699, 30.049572, 34.638657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284070, -0.282203, 0.916333,
		0.951132, 0.203595, -0.232158,
		-0.121045, 0.937502, 0.326247,
		34.664387, 30.330822, 34.736530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372013, 29.921389, 34.949368>,  <34.749119, 29.674570, 34.508160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372013, 29.921389, 34.949368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051533, 30.134636, 35.058075>,  <34.859245, 30.262585, 35.123299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051533, 30.134636, 35.058075>,  <35.372013, 29.921389, 34.949368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051533, 30.134636, 35.058075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210710, -0.173731, 0.961987,
		0.560066, 0.828012, 0.026861,
		-0.801204, 0.533117, 0.271771,
		34.811172, 30.294571, 35.139606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673130, 30.400042, 35.500843>,  <35.372013, 29.921389, 34.949368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673130, 30.400042, 35.500843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278629, 30.414883, 35.565250>,  <35.041927, 30.423788, 35.603897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278629, 30.414883, 35.565250>,  <35.673130, 30.400042, 35.500843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278629, 30.414883, 35.565250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156876, -0.095860, 0.982955,
		0.051905, 0.994703, 0.088722,
		-0.986253, 0.037102, 0.161020,
		34.982754, 30.426014, 35.613556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604874, 30.364054, 36.174015>,  <35.673130, 30.400042, 35.500843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604874, 30.364054, 36.174015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.224297, 30.320965, 36.058674>,  <34.995949, 30.295111, 35.989468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.224297, 30.320965, 36.058674>,  <35.604874, 30.364054, 36.174015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224297, 30.320965, 36.058674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259447, -0.223467, 0.939547,
		-0.165648, 0.968741, 0.184668,
		-0.951445, -0.107722, -0.288354,
		34.938862, 30.288649, 35.972168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187798, 30.742723, 36.651684>,  <35.604874, 30.364054, 36.174015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187798, 30.742723, 36.651684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979546, 30.442490, 36.488926>,  <34.854595, 30.262350, 36.391270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979546, 30.442490, 36.488926>,  <35.187798, 30.742723, 36.651684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979546, 30.442490, 36.488926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374433, -0.227577, 0.898893,
		-0.767295, 0.620349, -0.162559,
		-0.520633, -0.750584, -0.406898,
		34.823357, 30.217314, 36.366856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528828, 30.770012, 36.870983>,  <35.187798, 30.742723, 36.651684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528828, 30.770012, 36.870983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589333, 30.385685, 36.778072>,  <34.625637, 30.155088, 36.722324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589333, 30.385685, 36.778072>,  <34.528828, 30.770012, 36.870983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589333, 30.385685, 36.778072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462631, -0.276471, 0.842340,
		-0.873552, -0.019954, -0.486322,
		0.151262, -0.960815, -0.232280,
		34.634712, 30.097441, 36.708389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999199, 30.352512, 37.211891>,  <34.528828, 30.770012, 36.870983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999199, 30.352512, 37.211891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248688, 30.063770, 37.091957>,  <34.398380, 29.890526, 37.019997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248688, 30.063770, 37.091957>,  <33.999199, 30.352512, 37.211891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248688, 30.063770, 37.091957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331693, -0.591773, 0.734700,
		-0.707780, -0.358794, -0.608534,
		0.623720, -0.721853, -0.299835,
		34.435802, 29.847214, 37.002007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651237, 29.684996, 37.167366>,  <33.999199, 30.352512, 37.211891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651237, 29.684996, 37.167366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041103, 29.617409, 37.225998>,  <34.275021, 29.576857, 37.261177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041103, 29.617409, 37.225998>,  <33.651237, 29.684996, 37.167366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041103, 29.617409, 37.225998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218164, -0.573337, 0.789740,
		-0.049399, -0.801708, -0.595671,
		0.974662, -0.168966, 0.146581,
		34.333500, 29.566719, 37.269974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578831, 29.054472, 37.330231>,  <33.651237, 29.684996, 37.167366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578831, 29.054472, 37.330231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946091, 29.152626, 37.454674>,  <34.166447, 29.211519, 37.529339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946091, 29.152626, 37.454674>,  <33.578831, 29.054472, 37.330231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946091, 29.152626, 37.454674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114346, -0.587658, 0.800989,
		0.379373, -0.771002, -0.511500,
		0.918151, 0.245385, 0.311103,
		34.221535, 29.226242, 37.548004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836456, 28.484610, 37.483528>,  <33.578831, 29.054472, 37.330231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836456, 28.484610, 37.483528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.049026, 28.728802, 37.718441>,  <34.176567, 28.875317, 37.859390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.049026, 28.728802, 37.718441>,  <33.836456, 28.484610, 37.483528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049026, 28.728802, 37.718441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083009, -0.652415, 0.753302,
		0.843028, -0.449074, -0.296035,
		0.531426, 0.610481, 0.587281,
		34.208454, 28.911945, 37.894627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146626, 27.830950, 37.482315>,  <33.836456, 28.484610, 37.483528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146626, 27.830950, 37.482315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.940807, 27.500881, 37.389072>,  <33.817318, 27.302839, 37.333126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.940807, 27.500881, 37.389072>,  <34.146626, 27.830950, 37.482315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940807, 27.500881, 37.389072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154099, 0.356413, -0.921533,
		0.843503, -0.438248, -0.310548,
		-0.514544, -0.825171, -0.233103,
		33.786446, 27.253330, 37.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379879, 27.534697, 36.855804>,  <34.146626, 27.830950, 37.482315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379879, 27.534697, 36.855804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.005074, 27.402851, 36.902035>,  <33.780190, 27.323744, 36.929775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.005074, 27.402851, 36.902035>,  <34.379879, 27.534697, 36.855804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005074, 27.402851, 36.902035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169614, 0.140113, -0.975499,
		0.305345, -0.933661, -0.187196,
		-0.937014, -0.329615, 0.115579,
		33.723969, 27.303967, 36.936710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270100, 27.109856, 36.312042>,  <34.379879, 27.534697, 36.855804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270100, 27.109856, 36.312042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.899899, 27.205616, 36.429440>,  <33.677780, 27.263071, 36.499878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.899899, 27.205616, 36.429440>,  <34.270100, 27.109856, 36.312042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899899, 27.205616, 36.429440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249138, 0.198863, -0.947831,
		-0.285275, -0.950338, -0.124404,
		-0.925499, 0.239399, 0.293496,
		33.622250, 27.277435, 36.517487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753628, 26.752399, 35.845161>,  <34.270100, 27.109856, 36.312042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753628, 26.752399, 35.845161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555630, 27.062099, 36.002903>,  <33.436832, 27.247919, 36.097549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555630, 27.062099, 36.002903>,  <33.753628, 26.752399, 35.845161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555630, 27.062099, 36.002903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345836, 0.240805, -0.906868,
		-0.797106, -0.585279, 0.148565,
		-0.494995, 0.774249, 0.394358,
		33.407131, 27.294374, 36.121212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989838, 26.683903, 35.500645>,  <33.753628, 26.752399, 35.845161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989838, 26.683903, 35.500645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041962, 27.045536, 35.663445>,  <33.073235, 27.262516, 35.761124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041962, 27.045536, 35.663445>,  <32.989838, 26.683903, 35.500645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041962, 27.045536, 35.663445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433528, 0.421134, -0.796681,
		-0.891669, -0.072632, 0.446823,
		0.130308, 0.904086, 0.407000,
		33.081055, 27.316761, 35.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382351, 27.116831, 35.359249>,  <32.989838, 26.683903, 35.500645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382351, 27.116831, 35.359249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669090, 27.385044, 35.435684>,  <32.841133, 27.545971, 35.481544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669090, 27.385044, 35.435684>,  <32.382351, 27.116831, 35.359249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669090, 27.385044, 35.435684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303385, 0.546739, -0.780406,
		-0.627761, 0.501462, 0.595359,
		0.716850, 0.670531, 0.191085,
		32.884144, 27.586203, 35.493011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050129, 27.680027, 35.444412>,  <32.382351, 27.116831, 35.359249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050129, 27.680027, 35.444412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.426800, 27.764786, 35.339844>,  <32.652802, 27.815641, 35.277103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.426800, 27.764786, 35.339844>,  <32.050129, 27.680027, 35.444412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426800, 27.764786, 35.339844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335556, 0.532768, -0.776892,
		-0.025346, 0.819303, 0.572800,
		0.941679, 0.211898, -0.261419,
		32.709305, 27.828356, 35.261417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240856, 27.788942, 35.337700>,  <32.050129, 27.680027, 35.444412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240856, 27.788942, 35.337700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022497, 27.517933, 35.140537>,  <30.891481, 27.355328, 35.022240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022497, 27.517933, 35.140537>,  <31.240856, 27.788942, 35.337700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022497, 27.517933, 35.140537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173959, -0.483828, 0.857700,
		-0.819593, 0.553963, 0.146260,
		-0.545899, -0.677521, -0.492909,
		30.858728, 27.314676, 34.992664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566151, 27.816156, 35.578548>,  <31.240856, 27.788942, 35.337700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566151, 27.816156, 35.578548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.661705, 27.458435, 35.427204>,  <30.719038, 27.243803, 35.336399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.661705, 27.458435, 35.427204>,  <30.566151, 27.816156, 35.578548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661705, 27.458435, 35.427204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115656, -0.413070, 0.903325,
		-0.964136, -0.172032, -0.202108,
		0.238886, -0.894303, -0.378359,
		30.733370, 27.190144, 35.313698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045332, 27.368380, 35.788574>,  <30.566151, 27.816156, 35.578548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045332, 27.368380, 35.788574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.340635, 27.115700, 35.693974>,  <30.517817, 26.964092, 35.637215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.340635, 27.115700, 35.693974>,  <30.045332, 27.368380, 35.788574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340635, 27.115700, 35.693974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312946, -0.631370, 0.709533,
		-0.597529, -0.449807, -0.663801,
		0.738257, -0.631700, -0.236497,
		30.562113, 26.926189, 35.623024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719213, 26.757961, 35.627739>,  <30.045332, 27.368380, 35.788574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719213, 26.757961, 35.627739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091265, 26.665367, 35.741772>,  <30.314495, 26.609810, 35.810192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091265, 26.665367, 35.741772>,  <29.719213, 26.757961, 35.627739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091265, 26.665367, 35.741772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362005, -0.708462, 0.605834,
		0.061726, -0.666705, -0.742761,
		0.930130, -0.231487, 0.285081,
		30.370304, 26.595921, 35.827297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573475, 26.096859, 35.937008>,  <29.719213, 26.757961, 35.627739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573475, 26.096859, 35.937008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939896, 26.205120, 36.055393>,  <30.159748, 26.270077, 36.126427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939896, 26.205120, 36.055393>,  <29.573475, 26.096859, 35.937008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939896, 26.205120, 36.055393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172027, -0.401467, 0.899573,
		0.362293, -0.874969, -0.321205,
		0.916052, 0.270653, 0.295966,
		30.214712, 26.286316, 36.144184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798460, 25.579882, 36.299084>,  <29.573475, 26.096859, 35.937008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798460, 25.579882, 36.299084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043953, 25.863045, 36.438911>,  <30.191250, 26.032944, 36.522808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043953, 25.863045, 36.438911>,  <29.798460, 25.579882, 36.299084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043953, 25.863045, 36.438911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251109, -0.244745, 0.936506,
		0.748515, -0.662545, 0.027554,
		0.613733, 0.707908, 0.349566,
		30.228073, 26.075417, 36.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329529, 25.216276, 36.796196>,  <29.798460, 25.579882, 36.299084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329529, 25.216276, 36.796196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.302084, 25.608364, 36.870457>,  <30.285618, 25.843616, 36.915012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.302084, 25.608364, 36.870457>,  <30.329529, 25.216276, 36.796196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302084, 25.608364, 36.870457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172145, -0.194929, 0.965592,
		0.982679, 0.034291, 0.182114,
		-0.068611, 0.980217, 0.185650,
		30.281500, 25.902430, 36.926151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617529, 25.231199, 37.453171>,  <30.329529, 25.216276, 36.796196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617529, 25.231199, 37.453171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462660, 25.597862, 37.413490>,  <30.369740, 25.817860, 37.389683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462660, 25.597862, 37.413490>,  <30.617529, 25.231199, 37.453171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462660, 25.597862, 37.413490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378428, -0.059874, 0.923692,
		0.840768, 0.395168, 0.370069,
		-0.387171, 0.916656, -0.099203,
		30.346508, 25.872858, 37.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943029, 25.657682, 37.967484>,  <30.617529, 25.231199, 37.453171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943029, 25.657682, 37.967484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591309, 25.820526, 37.868614>,  <30.380276, 25.918232, 37.809292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591309, 25.820526, 37.868614>,  <30.943029, 25.657682, 37.967484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591309, 25.820526, 37.868614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276460, -0.013704, 0.960928,
		0.387816, 0.913276, 0.124599,
		-0.879300, 0.407110, -0.247170,
		30.327518, 25.942659, 37.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.451517, 33.386017, 23.223232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062677, 33.474190, 23.255310>,  <29.829372, 33.527092, 23.274557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062677, 33.474190, 23.255310>,  <30.451517, 33.386017, 23.223232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062677, 33.474190, 23.255310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021726, -0.425033, 0.904917,
		0.233557, 0.877928, 0.417963,
		-0.972100, 0.220431, 0.080196,
		29.771048, 33.540318, 23.279369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365387, 33.827553, 23.791275>,  <30.451517, 33.386017, 23.223232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365387, 33.827553, 23.791275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027775, 33.623146, 23.726200>,  <29.825207, 33.500500, 23.687155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027775, 33.623146, 23.726200>,  <30.365387, 33.827553, 23.791275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027775, 33.623146, 23.726200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217986, -0.604072, 0.766537,
		-0.489992, 0.611518, 0.621251,
		-0.844032, -0.511021, -0.162688,
		29.774565, 33.469841, 23.677393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096472, 33.716618, 24.445009>,  <30.365387, 33.827553, 23.791275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096472, 33.716618, 24.445009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839283, 33.475742, 24.255711>,  <29.684971, 33.331219, 24.142132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839283, 33.475742, 24.255711>,  <30.096472, 33.716618, 24.445009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839283, 33.475742, 24.255711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037686, -0.592278, 0.804851,
		-0.764963, 0.535330, 0.358123,
		-0.642971, -0.602186, -0.473246,
		29.646391, 33.295086, 24.113737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559938, 33.598145, 24.950989>,  <30.096472, 33.716618, 24.445009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559938, 33.598145, 24.950989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568203, 33.286911, 24.699860>,  <29.573162, 33.100170, 24.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568203, 33.286911, 24.699860>,  <29.559938, 33.598145, 24.950989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568203, 33.286911, 24.699860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094718, -0.626656, 0.773519,
		-0.995290, 0.043485, -0.086645,
		0.020660, -0.778082, -0.627823,
		29.574402, 33.053486, 24.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253134, 33.180099, 25.323254>,  <29.559938, 33.598145, 24.950989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253134, 33.180099, 25.323254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412523, 32.936642, 25.048801>,  <29.508158, 32.790569, 24.884130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412523, 32.936642, 25.048801>,  <29.253134, 33.180099, 25.323254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412523, 32.936642, 25.048801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062829, -0.764444, 0.641622,
		-0.915025, -0.212562, -0.342852,
		0.398476, -0.608640, -0.686130,
		29.532066, 32.754051, 24.842962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855639, 32.589481, 25.385328>,  <29.253134, 33.180099, 25.323254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855639, 32.589481, 25.385328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198408, 32.461555, 25.223640>,  <29.404070, 32.384800, 25.126627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198408, 32.461555, 25.223640>,  <28.855639, 32.589481, 25.385328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198408, 32.461555, 25.223640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079806, -0.692445, 0.717044,
		-0.509224, -0.646712, -0.567850,
		0.856926, -0.319818, -0.404221,
		29.455486, 32.365608, 25.102373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691072, 31.869720, 25.350903>,  <28.855639, 32.589481, 25.385328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691072, 31.869720, 25.350903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088642, 31.895710, 25.315369>,  <29.327185, 31.911304, 25.294048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088642, 31.895710, 25.315369>,  <28.691072, 31.869720, 25.350903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088642, 31.895710, 25.315369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100045, -0.869794, 0.483165,
		-0.045873, -0.489118, -0.871011,
		0.993925, 0.064976, -0.088834,
		29.386820, 31.915203, 25.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856941, 31.230093, 25.106031>,  <28.691072, 31.869720, 25.350903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856941, 31.230093, 25.106031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189262, 31.384197, 25.266701>,  <29.388655, 31.476660, 25.363102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189262, 31.384197, 25.266701>,  <28.856941, 31.230093, 25.106031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189262, 31.384197, 25.266701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222168, -0.891268, 0.395325,
		0.510299, -0.239199, -0.826062,
		0.830804, 0.385259, 0.401671,
		29.438503, 31.499775, 25.387201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480341, 30.777466, 24.990429>,  <28.856941, 31.230093, 25.106031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480341, 30.777466, 24.990429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555183, 30.996914, 25.316376>,  <29.600090, 31.128582, 25.511944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555183, 30.996914, 25.316376>,  <29.480341, 30.777466, 24.990429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555183, 30.996914, 25.316376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210178, -0.832665, 0.512341,
		0.959591, 0.075404, -0.271106,
		0.187108, 0.548619, 0.814867,
		29.611317, 31.161499, 25.560835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878511, 30.310814, 25.331255>,  <29.480341, 30.777466, 24.990429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878511, 30.310814, 25.331255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799156, 30.596626, 25.599609>,  <29.751543, 30.768114, 25.760622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799156, 30.596626, 25.599609>,  <29.878511, 30.310814, 25.331255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799156, 30.596626, 25.599609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167960, -0.649581, 0.741508,
		0.965625, 0.259787, 0.008856,
		-0.198387, 0.714532, 0.670885,
		29.739639, 30.810986, 25.800875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411339, 30.233423, 25.875185>,  <29.878511, 30.310814, 25.331255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411339, 30.233423, 25.875185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124744, 30.441879, 26.060684>,  <29.952787, 30.566952, 26.171984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124744, 30.441879, 26.060684>,  <30.411339, 30.233423, 25.875185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124744, 30.441879, 26.060684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145580, -0.538438, 0.829995,
		0.682241, 0.662193, 0.309917,
		-0.716487, 0.521139, 0.463746,
		29.909798, 30.598221, 26.199808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767448, 30.510248, 26.520767>,  <30.411339, 30.233423, 25.875185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767448, 30.510248, 26.520767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380598, 30.538841, 26.618385>,  <30.148487, 30.555998, 26.676956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380598, 30.538841, 26.618385>,  <30.767448, 30.510248, 26.520767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380598, 30.538841, 26.618385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170840, -0.528227, 0.831739,
		0.188367, 0.846089, 0.498650,
		-0.967125, 0.071483, 0.244047,
		30.090460, 30.560286, 26.691599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360376, 30.709209, 26.940611>,  <30.767448, 30.510248, 26.520767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360376, 30.709209, 26.940611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702354, 30.511227, 26.878529>,  <31.907541, 30.392437, 26.841280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702354, 30.511227, 26.878529>,  <31.360376, 30.709209, 26.940611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702354, 30.511227, 26.878529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064122, 0.397756, -0.915248,
		0.514741, 0.772534, 0.371797,
		0.854945, -0.494955, -0.155205,
		31.958838, 30.362740, 26.831966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750221, 31.216194, 26.564934>,  <31.360376, 30.709209, 26.940611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750221, 31.216194, 26.564934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947634, 30.874233, 26.500973>,  <32.066082, 30.669056, 26.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947634, 30.874233, 26.500973>,  <31.750221, 31.216194, 26.564934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947634, 30.874233, 26.500973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362668, 0.369394, -0.855582,
		0.790506, 0.364264, 0.492353,
		0.493530, -0.854903, -0.159901,
		32.095692, 30.617762, 26.453003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480495, 31.367268, 26.515614>,  <31.750221, 31.216194, 26.564934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480495, 31.367268, 26.515614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356655, 31.042763, 26.317219>,  <32.282349, 30.848061, 26.198183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356655, 31.042763, 26.317219>,  <32.480495, 31.367268, 26.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356655, 31.042763, 26.317219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445223, 0.337220, -0.829493,
		0.840191, -0.477639, 0.256787,
		-0.309605, -0.811260, -0.495986,
		32.263775, 30.799385, 26.168423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994762, 31.265289, 26.149870>,  <32.480495, 31.367268, 26.515614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994762, 31.265289, 26.149870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712444, 31.062088, 25.952374>,  <32.543053, 30.940168, 25.833876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712444, 31.062088, 25.952374>,  <32.994762, 31.265289, 26.149870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712444, 31.062088, 25.952374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331615, 0.378968, -0.863953,
		0.626002, -0.773510, -0.099014,
		-0.705799, -0.508002, -0.493743,
		32.500706, 30.909687, 25.804251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345184, 30.985960, 25.621061>,  <32.994762, 31.265289, 26.149870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345184, 30.985960, 25.621061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970512, 30.970074, 25.481892>,  <32.745708, 30.960541, 25.398390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970512, 30.970074, 25.481892>,  <33.345184, 30.985960, 25.621061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970512, 30.970074, 25.481892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326482, 0.260279, -0.908661,
		0.126647, -0.964716, -0.230832,
		-0.936680, -0.039717, -0.347926,
		32.689507, 30.958158, 25.377514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427204, 30.741198, 24.950264>,  <33.345184, 30.985960, 25.621061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427204, 30.741198, 24.950264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082012, 30.941795, 24.974842>,  <32.874897, 31.062153, 24.989590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082012, 30.941795, 24.974842>,  <33.427204, 30.741198, 24.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082012, 30.941795, 24.974842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134614, 0.345439, -0.928736,
		-0.486981, -0.793206, -0.365614,
		-0.862977, 0.501494, 0.061445,
		32.823120, 31.092243, 24.993277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149792, 30.650015, 24.288469>,  <33.427204, 30.741198, 24.950264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149792, 30.650015, 24.288469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952297, 30.962044, 24.442204>,  <32.833801, 31.149261, 24.534445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952297, 30.962044, 24.442204>,  <33.149792, 30.650015, 24.288469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952297, 30.962044, 24.442204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073273, 0.403072, -0.912230,
		-0.866519, -0.478563, -0.141854,
		-0.493736, 0.780071, 0.384335,
		32.804176, 31.196066, 24.557505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691479, 30.829020, 23.811089>,  <33.149792, 30.650015, 24.288469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691479, 30.829020, 23.811089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689743, 31.177826, 24.006874>,  <32.688702, 31.387110, 24.124346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689743, 31.177826, 24.006874>,  <32.691479, 30.829020, 23.811089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689743, 31.177826, 24.006874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145241, 0.484826, -0.862467,
		-0.989387, 0.067349, -0.128755,
		-0.004338, 0.872014, 0.489462,
		32.688442, 31.439430, 24.153713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305119, 31.196589, 23.403757>,  <32.691479, 30.829020, 23.811089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305119, 31.196589, 23.403757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510193, 31.446892, 23.638901>,  <32.633236, 31.597075, 23.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510193, 31.446892, 23.638901>,  <32.305119, 31.196589, 23.403757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510193, 31.446892, 23.638901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283177, 0.523137, -0.803828,
		-0.810533, 0.578580, 0.091005,
		0.512686, 0.625758, 0.587860,
		32.663998, 31.634619, 23.815258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110321, 31.854406, 23.106754>,  <32.305119, 31.196589, 23.403757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110321, 31.854406, 23.106754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430882, 31.944263, 23.328487>,  <32.623219, 31.998178, 23.461527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430882, 31.944263, 23.328487>,  <32.110321, 31.854406, 23.106754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430882, 31.944263, 23.328487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365279, 0.550066, -0.750999,
		-0.473627, 0.804341, 0.358768,
		0.801404, 0.224643, 0.554335,
		32.671303, 32.011658, 23.494787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122211, 32.570415, 23.210211>,  <32.110321, 31.854406, 23.106754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122211, 32.570415, 23.210211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495312, 32.435780, 23.261875>,  <32.719173, 32.355000, 23.292873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495312, 32.435780, 23.261875>,  <32.122211, 32.570415, 23.210211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495312, 32.435780, 23.261875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357275, 0.815063, -0.456100,
		0.048244, 0.471574, 0.880506,
		0.932752, -0.336587, 0.129160,
		32.775139, 32.334805, 23.300623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523888, 33.150078, 23.373703>,  <32.122211, 32.570415, 23.210211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523888, 33.150078, 23.373703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797535, 32.882076, 23.258404>,  <32.961723, 32.721275, 23.189224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797535, 32.882076, 23.258404>,  <32.523888, 33.150078, 23.373703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797535, 32.882076, 23.258404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490250, 0.715005, -0.498421,
		0.540040, 0.199664, 0.817613,
		0.684114, -0.670002, -0.288246,
		33.002769, 32.681076, 23.171930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100780, 33.521420, 23.468920>,  <32.523888, 33.150078, 23.373703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100780, 33.521420, 23.468920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205593, 33.233898, 23.211346>,  <33.268482, 33.061386, 23.056801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205593, 33.233898, 23.211346>,  <33.100780, 33.521420, 23.468920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205593, 33.233898, 23.211346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387767, 0.689440, -0.611808,
		0.883727, -0.089382, 0.459387,
		0.262035, -0.718807, -0.643936,
		33.284203, 33.018257, 23.018166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843307, 33.537067, 23.360504>,  <33.100780, 33.521420, 23.468920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843307, 33.537067, 23.360504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689503, 33.358479, 23.037315>,  <33.597221, 33.251324, 22.843403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689503, 33.358479, 23.037315>,  <33.843307, 33.537067, 23.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689503, 33.358479, 23.037315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533056, 0.607197, -0.589206,
		0.753661, -0.657248, 0.004522,
		-0.384508, -0.446472, -0.807970,
		33.574150, 33.224537, 22.794924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414272, 33.730068, 22.891077>,  <33.843307, 33.537067, 23.360504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414272, 33.730068, 22.891077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510696, 34.107456, 22.800079>,  <34.568550, 34.333889, 22.745481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510696, 34.107456, 22.800079>,  <34.414272, 33.730068, 22.891077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510696, 34.107456, 22.800079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351947, 0.133467, 0.926456,
		0.904446, -0.303399, -0.299878,
		0.241062, 0.943470, -0.227494,
		34.583015, 34.390495, 22.731831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201134, 33.932861, 23.125965>,  <34.414272, 33.730068, 22.891077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201134, 33.932861, 23.125965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964050, 34.255005, 23.121983>,  <34.821800, 34.448292, 23.119593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964050, 34.255005, 23.121983>,  <35.201134, 33.932861, 23.125965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964050, 34.255005, 23.121983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380891, 0.291171, 0.877577,
		0.709660, 0.516355, -0.479332,
		-0.592709, 0.805355, -0.009958,
		34.786236, 34.496613, 23.118996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643196, 34.535881, 23.164818>,  <35.201134, 33.932861, 23.125965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643196, 34.535881, 23.164818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289589, 34.636101, 23.322670>,  <35.077423, 34.696232, 23.417381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289589, 34.636101, 23.322670>,  <35.643196, 34.535881, 23.164818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289589, 34.636101, 23.322670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421186, 0.060757, 0.904937,
		0.202757, 0.966195, -0.159240,
		-0.884020, 0.250552, 0.394629,
		35.024384, 34.711266, 23.441059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792805, 34.840630, 23.809908>,  <35.643196, 34.535881, 23.164818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792805, 34.840630, 23.809908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397335, 34.801712, 23.855606>,  <35.160053, 34.778362, 23.883026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397335, 34.801712, 23.855606>,  <35.792805, 34.840630, 23.809908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397335, 34.801712, 23.855606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127142, -0.138719, 0.982136,
		-0.079705, 0.985541, 0.149518,
		-0.988677, -0.097291, 0.114247,
		35.100731, 34.772526, 23.889881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525089, 35.241680, 24.447065>,  <35.792805, 34.840630, 23.809908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525089, 35.241680, 24.447065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244160, 34.963715, 24.385303>,  <35.075603, 34.796936, 24.348246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244160, 34.963715, 24.385303>,  <35.525089, 35.241680, 24.447065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244160, 34.963715, 24.385303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015622, -0.201806, 0.979301,
		-0.711690, 0.690194, 0.130876,
		-0.702320, -0.694914, -0.154405,
		35.033463, 34.755241, 24.338982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176445, 35.257423, 25.034803>,  <35.525089, 35.241680, 24.447065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176445, 35.257423, 25.034803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085232, 34.899647, 24.880936>,  <35.030502, 34.684978, 24.788614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085232, 34.899647, 24.880936>,  <35.176445, 35.257423, 25.034803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085232, 34.899647, 24.880936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014488, -0.391917, 0.919887,
		-0.973546, 0.215337, 0.076411,
		-0.228032, -0.894445, -0.384669,
		35.016823, 34.631313, 24.765535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558270, 34.994034, 25.429331>,  <35.176445, 35.257423, 25.034803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558270, 34.994034, 25.429331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723785, 34.670006, 25.263165>,  <34.823093, 34.475590, 25.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723785, 34.670006, 25.263165>,  <34.558270, 34.994034, 25.429331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723785, 34.670006, 25.263165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038560, -0.471501, 0.881022,
		-0.909557, -0.348536, -0.226337,
		0.413786, -0.810068, -0.415418,
		34.847919, 34.426987, 25.138538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195545, 34.485245, 25.675138>,  <34.558270, 34.994034, 25.429331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195545, 34.485245, 25.675138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524620, 34.292770, 25.554043>,  <34.722065, 34.177288, 25.481384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524620, 34.292770, 25.554043>,  <34.195545, 34.485245, 25.675138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524620, 34.292770, 25.554043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025789, -0.500394, 0.865414,
		-0.567912, -0.719770, -0.399258,
		0.822685, -0.481183, -0.302742,
		34.771427, 34.148415, 25.463221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004391, 33.771690, 25.664995>,  <34.195545, 34.485245, 25.675138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004391, 33.771690, 25.664995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400486, 33.806808, 25.708317>,  <34.638142, 33.827881, 25.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400486, 33.806808, 25.708317>,  <34.004391, 33.771690, 25.664995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400486, 33.806808, 25.708317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060973, -0.425868, 0.902728,
		0.125378, -0.900515, -0.416356,
		0.990234, 0.087796, 0.108302,
		34.697556, 33.833145, 25.740807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179283, 33.111046, 25.748281>,  <34.004391, 33.771690, 25.664995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179283, 33.111046, 25.748281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462399, 33.346813, 25.904041>,  <34.632267, 33.488274, 25.997498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462399, 33.346813, 25.904041>,  <34.179283, 33.111046, 25.748281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462399, 33.346813, 25.904041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116805, -0.641277, 0.758367,
		0.696706, -0.491276, -0.522732,
		0.707784, 0.589416, 0.389398,
		34.674732, 33.523640, 26.020861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576313, 32.700336, 26.071310>,  <34.179283, 33.111046, 25.748281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576313, 32.700336, 26.071310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723640, 33.034527, 26.234444>,  <34.812038, 33.235039, 26.332325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723640, 33.034527, 26.234444>,  <34.576313, 32.700336, 26.071310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723640, 33.034527, 26.234444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243895, -0.510140, 0.824786,
		0.897138, -0.204314, -0.391661,
		0.368317, 0.835471, 0.407835,
		34.834137, 33.285168, 26.356794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031799, 32.457882, 26.532928>,  <34.576313, 32.700336, 26.071310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031799, 32.457882, 26.532928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002155, 32.837376, 26.655838>,  <34.984367, 33.065071, 26.729584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002155, 32.837376, 26.655838>,  <35.031799, 32.457882, 26.532928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002155, 32.837376, 26.655838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107916, -0.298681, 0.948232,
		0.991394, 0.103433, -0.080248,
		-0.074110, 0.948731, 0.307273,
		34.979923, 33.121994, 26.748020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543400, 32.500561, 27.072435>,  <35.031799, 32.457882, 26.532928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543400, 32.500561, 27.072435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276150, 32.793240, 27.126438>,  <35.115799, 32.968845, 27.158840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276150, 32.793240, 27.126438>,  <35.543400, 32.500561, 27.072435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276150, 32.793240, 27.126438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059430, -0.233350, 0.970575,
		0.741673, 0.640441, 0.199392,
		-0.668124, 0.731699, 0.135008,
		35.075714, 33.012749, 27.166941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692123, 32.645466, 27.721703>,  <35.543400, 32.500561, 27.072435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692123, 32.645466, 27.721703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337677, 32.821484, 27.663525>,  <35.125008, 32.927094, 27.628618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337677, 32.821484, 27.663525>,  <35.692123, 32.645466, 27.721703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337677, 32.821484, 27.663525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216845, -0.116300, 0.969254,
		0.409598, 0.890413, 0.198477,
		-0.886119, 0.440044, -0.145446,
		35.071842, 32.953495, 27.619890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634357, 33.130428, 28.298048>,  <35.692123, 32.645466, 27.721703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634357, 33.130428, 28.298048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256088, 33.061501, 28.187767>,  <35.029125, 33.020145, 28.121599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256088, 33.061501, 28.187767>,  <35.634357, 33.130428, 28.298048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256088, 33.061501, 28.187767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217601, -0.294606, 0.930514,
		-0.241566, 0.939954, 0.241105,
		-0.945672, -0.172316, -0.275702,
		34.972385, 33.009808, 28.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146309, 33.576141, 28.737801>,  <35.634357, 33.130428, 28.298048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146309, 33.576141, 28.737801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959999, 33.252380, 28.594734>,  <34.848213, 33.058125, 28.508894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959999, 33.252380, 28.594734>,  <35.146309, 33.576141, 28.737801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959999, 33.252380, 28.594734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239242, -0.273951, 0.931512,
		-0.851947, 0.519446, -0.066042,
		-0.465778, -0.809399, -0.357665,
		34.820267, 33.009560, 28.487434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566044, 33.572987, 29.151197>,  <35.146309, 33.576141, 28.737801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566044, 33.572987, 29.151197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580532, 33.211353, 28.980869>,  <34.589226, 32.994373, 28.878674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580532, 33.211353, 28.980869>,  <34.566044, 33.572987, 29.151197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580532, 33.211353, 28.980869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337256, -0.412159, 0.846394,
		-0.940716, 0.112956, -0.319835,
		0.036217, -0.904083, -0.425819,
		34.591396, 32.940128, 28.853123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855141, 33.189693, 29.221199>,  <34.566044, 33.572987, 29.151197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855141, 33.189693, 29.221199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135082, 32.908611, 29.169945>,  <34.303047, 32.739964, 29.139193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135082, 32.908611, 29.169945>,  <33.855141, 33.189693, 29.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135082, 32.908611, 29.169945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336060, -0.482224, 0.809026,
		-0.630295, -0.523136, -0.573635,
		0.699851, -0.702701, -0.128138,
		34.345039, 32.697800, 29.131504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551811, 32.674847, 29.541729>,  <33.855141, 33.189693, 29.221199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551811, 32.674847, 29.541729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919682, 32.521294, 29.508694>,  <34.140404, 32.429161, 29.488873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919682, 32.521294, 29.508694>,  <33.551811, 32.674847, 29.541729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919682, 32.521294, 29.508694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183004, -0.605120, 0.774816,
		-0.347417, -0.697468, -0.626769,
		0.919680, -0.383886, -0.082589,
		34.195587, 32.406128, 29.483917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549355, 31.845314, 29.689182>,  <33.551811, 32.674847, 29.541729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549355, 31.845314, 29.689182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915073, 31.989147, 29.763760>,  <34.134506, 32.075447, 29.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915073, 31.989147, 29.763760>,  <33.549355, 31.845314, 29.689182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915073, 31.989147, 29.763760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016501, -0.426859, 0.904168,
		0.404707, -0.829755, -0.384342,
		0.914297, 0.359581, 0.186445,
		34.189362, 32.097023, 29.819693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808327, 31.290056, 30.072212>,  <33.549355, 31.845314, 29.689182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808327, 31.290056, 30.072212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045471, 31.604664, 30.141376>,  <34.187759, 31.793428, 30.182875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045471, 31.604664, 30.141376>,  <33.808327, 31.290056, 30.072212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045471, 31.604664, 30.141376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156308, -0.323020, 0.933395,
		0.789988, -0.526348, -0.314446,
		0.592863, 0.786521, 0.172909,
		34.223331, 31.840620, 30.193249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286411, 31.030308, 30.625393>,  <33.808327, 31.290056, 30.072212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286411, 31.030308, 30.625393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303143, 31.427383, 30.670677>,  <34.313183, 31.665628, 30.697847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303143, 31.427383, 30.670677>,  <34.286411, 31.030308, 30.625393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303143, 31.427383, 30.670677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225526, -0.119766, 0.966847,
		0.973339, -0.014912, -0.228888,
		0.041831, 0.992690, 0.113210,
		34.315693, 31.725191, 30.704639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908909, 31.172750, 30.943020>,  <34.286411, 31.030308, 30.625393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908909, 31.172750, 30.943020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659439, 31.474815, 31.023777>,  <34.509758, 31.656054, 31.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659439, 31.474815, 31.023777>,  <34.908909, 31.172750, 30.943020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659439, 31.474815, 31.023777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091765, -0.185761, 0.978301,
		0.776278, 0.628669, 0.046558,
		-0.623676, 0.755161, 0.201892,
		34.472336, 31.701363, 31.084345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265816, 31.576012, 31.555721>,  <34.908909, 31.172750, 30.943020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265816, 31.576012, 31.555721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877155, 31.667725, 31.532658>,  <34.643959, 31.722752, 31.518820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877155, 31.667725, 31.532658>,  <35.265816, 31.576012, 31.555721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877155, 31.667725, 31.532658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095628, -0.158111, 0.982780,
		0.216217, 0.960433, 0.175554,
		-0.971651, 0.229282, -0.057658,
		34.585659, 31.736509, 31.515360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138657, 32.005615, 32.108135>,  <35.265816, 31.576012, 31.555721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138657, 32.005615, 32.108135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764069, 31.901211, 32.014423>,  <34.539314, 31.838568, 31.958195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764069, 31.901211, 32.014423>,  <35.138657, 32.005615, 32.108135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764069, 31.901211, 32.014423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178854, -0.219221, 0.959142,
		-0.301709, 0.940114, 0.158612,
		-0.936474, -0.261014, -0.234284,
		34.483128, 31.822906, 31.944138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829765, 32.314674, 32.588161>,  <35.138657, 32.005615, 32.108135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829765, 32.314674, 32.588161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542770, 32.062763, 32.469109>,  <34.370571, 31.911617, 32.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542770, 32.062763, 32.469109>,  <34.829765, 32.314674, 32.588161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542770, 32.062763, 32.469109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151206, -0.276285, 0.949107,
		-0.679958, 0.725979, 0.103006,
		-0.717491, -0.629778, -0.297634,
		34.327522, 31.873829, 32.379818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238281, 32.390987, 33.037800>,  <34.829765, 32.314674, 32.588161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238281, 32.390987, 33.037800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221142, 32.018032, 32.894238>,  <34.210857, 31.794258, 32.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221142, 32.018032, 32.894238>,  <34.238281, 32.390987, 33.037800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221142, 32.018032, 32.894238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108829, -0.352739, 0.929371,
		-0.993136, 0.078886, -0.086355,
		-0.042853, -0.932391, -0.358903,
		34.208286, 31.738316, 32.786568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674049, 32.152317, 33.371513>,  <34.238281, 32.390987, 33.037800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674049, 32.152317, 33.371513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910351, 31.852497, 33.252056>,  <34.052132, 31.672606, 33.180382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910351, 31.852497, 33.252056>,  <33.674049, 32.152317, 33.371513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910351, 31.852497, 33.252056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162662, -0.251894, 0.953987,
		-0.790284, -0.612151, -0.026885,
		0.590756, -0.749547, -0.298642,
		34.087578, 31.627634, 33.162464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943050, 32.050190, 33.254192>,  <33.674049, 32.152317, 33.371513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943050, 32.050190, 33.254192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645554, 32.252930, 33.428524>,  <32.467056, 32.374573, 33.533123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645554, 32.252930, 33.428524>,  <32.943050, 32.050190, 33.254192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645554, 32.252930, 33.428524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001243, 0.653028, -0.757332,
		-0.668462, -0.562721, -0.486317,
		-0.743746, 0.506852, 0.435825,
		32.422428, 32.404984, 33.559273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497627, 32.252758, 32.668526>,  <32.943050, 32.050190, 33.254192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497627, 32.252758, 32.668526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385708, 32.509823, 32.953815>,  <32.318554, 32.664062, 33.124989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385708, 32.509823, 32.953815>,  <32.497627, 32.252758, 32.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385708, 32.509823, 32.953815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311167, 0.642092, -0.700637,
		-0.908232, -0.417973, 0.020317,
		-0.279802, 0.642663, 0.713228,
		32.301765, 32.702621, 33.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859032, 32.549164, 32.452160>,  <32.497627, 32.252758, 32.668526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859032, 32.549164, 32.452160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978392, 32.818829, 32.722408>,  <32.050007, 32.980629, 32.884556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978392, 32.818829, 32.722408>,  <31.859032, 32.549164, 32.452160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978392, 32.818829, 32.722408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135064, 0.730573, -0.669344,
		-0.944837, 0.108479, 0.309057,
		0.298398, 0.674163, 0.675620,
		32.067909, 33.021076, 32.925095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378069, 33.125244, 32.511795>,  <31.859032, 32.549164, 32.452160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378069, 33.125244, 32.511795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733355, 33.263947, 32.632351>,  <31.946526, 33.347168, 32.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733355, 33.263947, 32.632351>,  <31.378069, 33.125244, 32.511795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733355, 33.263947, 32.632351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027911, 0.695519, -0.717965,
		-0.458584, 0.629294, 0.627447,
		0.888213, 0.346759, 0.301390,
		31.999819, 33.367973, 32.722767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298183, 33.767738, 32.588894>,  <31.378069, 33.125244, 32.511795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298183, 33.767738, 32.588894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695621, 33.737076, 32.555687>,  <31.934084, 33.718678, 32.535763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695621, 33.737076, 32.555687>,  <31.298183, 33.767738, 32.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695621, 33.737076, 32.555687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019563, 0.606928, -0.794516,
		0.111288, 0.791052, 0.601541,
		0.993596, -0.076652, -0.083019,
		31.993700, 33.714081, 32.530781>
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
