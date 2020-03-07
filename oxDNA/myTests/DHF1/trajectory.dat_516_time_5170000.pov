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
	<2.204173, 3.259433, 5.275455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.000735, 3.261751, 4.931061>,  <1.878673, 3.263142, 4.724424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.000735, 3.261751, 4.931061>,  <2.204173, 3.259433, 5.275455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.000735, 3.261751, 4.931061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483301, -0.825658, -0.291048,
		-0.712567, -0.564141, 0.417124,
		-0.508593, 0.005795, -0.860987,
		1.848157, 3.263489, 4.672765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.654006, 2.647424, 5.034961>,  <2.204173, 3.259433, 5.275455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.654006, 2.647424, 5.034961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.874366, 2.842710, 4.764214>,  <2.006582, 2.959883, 4.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.874366, 2.842710, 4.764214>,  <1.654006, 2.647424, 5.034961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.874366, 2.842710, 4.764214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406685, -0.865271, -0.293110,
		-0.728777, -0.113798, -0.675229,
		0.550901, 0.488218, -0.676869,
		2.039636, 2.989176, 4.561152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.619966, 2.335718, 4.410340>,  <1.654006, 2.647424, 5.034961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.619966, 2.335718, 4.410340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963021, 2.540613, 4.392151>,  <2.168855, 2.663550, 4.381238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963021, 2.540613, 4.392151>,  <1.619966, 2.335718, 4.410340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963021, 2.540613, 4.392151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435562, -0.770568, -0.465308,
		-0.273388, 0.379261, -0.883980,
		0.857639, 0.512237, -0.045473,
		2.220313, 2.694284, 4.378509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.890019, 2.338500, 3.748974>,  <1.619966, 2.335718, 4.410340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.890019, 2.338500, 3.748974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213825, 2.359509, 3.982872>,  <2.408109, 2.372114, 4.123211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213825, 2.359509, 3.982872>,  <1.890019, 2.338500, 3.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213825, 2.359509, 3.982872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368271, -0.821105, -0.436078,
		0.457234, 0.568356, -0.684038,
		0.809514, 0.052522, 0.584746,
		2.456680, 2.375265, 4.158296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.462591, 2.400409, 3.383656>,  <1.890019, 2.338500, 3.748974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.462591, 2.400409, 3.383656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603698, 2.227940, 3.715836>,  <2.688362, 2.124458, 3.915143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603698, 2.227940, 3.715836>,  <2.462591, 2.400409, 3.383656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.603698, 2.227940, 3.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556670, -0.616660, -0.556641,
		0.752113, 0.658650, 0.022484,
		0.352767, -0.431173, 0.830449,
		2.709528, 2.098588, 3.964970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.132432, 2.580980, 3.519708>,  <2.462591, 2.400409, 3.383656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.132432, 2.580980, 3.519708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102725, 2.224260, 3.698227>,  <3.084901, 2.010229, 3.805338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102725, 2.224260, 3.698227>,  <3.132432, 2.580980, 3.519708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.102725, 2.224260, 3.698227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739436, -0.349527, -0.575383,
		0.669118, 0.287276, 0.685386,
		-0.074267, -0.891798, 0.446297,
		3.080445, 1.956721, 3.832116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.856286, 2.338271, 3.701519>,  <3.132432, 2.580980, 3.519708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.856286, 2.338271, 3.701519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.636100, 2.004858, 3.720329>,  <3.503988, 1.804810, 3.731616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.636100, 2.004858, 3.720329>,  <3.856286, 2.338271, 3.701519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.636100, 2.004858, 3.720329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776714, -0.531968, -0.337231,
		0.306110, -0.149108, 0.940247,
		-0.550465, -0.833533, 0.047026,
		3.470960, 1.754798, 3.734437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.319685, 1.858608, 4.008283>,  <3.856286, 2.338271, 3.701519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.319685, 1.858608, 4.008283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.032540, 1.643465, 3.831474>,  <3.860253, 1.514379, 3.725389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.032540, 1.643465, 3.831474>,  <4.319685, 1.858608, 4.008283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.032540, 1.643465, 3.831474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677348, -0.686295, -0.264951,
		-0.160850, -0.489600, 0.856982,
		-0.717862, -0.537858, -0.442020,
		3.817182, 1.482108, 3.698868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.563039, 1.330083, 2.809808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333559, 1.015598, 2.717949>,  <4.195871, 0.826907, 2.662833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333559, 1.015598, 2.717949>,  <4.563039, 1.330083, 2.809808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333559, 1.015598, 2.717949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654122, 0.271050, 0.706156,
		-0.492942, 0.555340, -0.669780,
		-0.573701, -0.786212, -0.229648,
		4.161449, 0.779735, 2.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.904260, 1.325536, 2.555119>,  <4.563039, 1.330083, 2.809808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.904260, 1.325536, 2.555119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928585, 1.000412, 2.786858>,  <3.943180, 0.805338, 2.925901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928585, 1.000412, 2.786858>,  <3.904260, 1.325536, 2.555119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.928585, 1.000412, 2.786858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607922, 0.430190, 0.667358,
		-0.791664, -0.392780, -0.467965,
		0.060811, -0.812810, 0.579346,
		3.946828, 0.756569, 2.960661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203598, 1.005989, 2.670287>,  <3.904260, 1.325536, 2.555119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203598, 1.005989, 2.670287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.438709, 0.964981, 2.991287>,  <3.579776, 0.940377, 3.183887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.438709, 0.964981, 2.991287>,  <3.203598, 1.005989, 2.670287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.438709, 0.964981, 2.991287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714958, 0.398399, 0.574555,
		-0.378618, -0.911465, 0.160874,
		0.587779, -0.102519, 0.802499,
		3.615043, 0.934225, 3.232037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901601, 0.741541, 3.277004>,  <3.203598, 1.005989, 2.670287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901601, 0.741541, 3.277004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198574, 0.969009, 3.418655>,  <3.376758, 1.105491, 3.503646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198574, 0.969009, 3.418655>,  <2.901601, 0.741541, 3.277004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.198574, 0.969009, 3.418655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656630, 0.512944, 0.552925,
		0.132784, -0.643041, 0.754233,
		0.742433, 0.568671, 0.354129,
		3.421304, 1.139611, 3.524894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.773863, 0.692134, 4.001856>,  <2.901601, 0.741541, 3.277004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.773863, 0.692134, 4.001856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991535, 1.020504, 3.932632>,  <3.122139, 1.217526, 3.891098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991535, 1.020504, 3.932632>,  <2.773863, 0.692134, 4.001856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.991535, 1.020504, 3.932632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535547, 0.498684, 0.681545,
		0.645799, -0.278202, 0.711018,
		0.544180, 0.820925, -0.173059,
		3.154789, 1.266781, 3.880715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914307, 0.955685, 4.621766>,  <2.773863, 0.692134, 4.001856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914307, 0.955685, 4.621766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967520, 1.263565, 4.372009>,  <2.999447, 1.448293, 4.222155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967520, 1.263565, 4.372009>,  <2.914307, 0.955685, 4.621766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967520, 1.263565, 4.372009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476769, 0.602008, 0.640528,
		0.868904, 0.212481, 0.447055,
		0.133031, 0.769700, -0.624392,
		3.007429, 1.494475, 4.184692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.168503, 1.573730, 5.065635>,  <2.914307, 0.955685, 4.621766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.168503, 1.573730, 5.065635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010845, 1.703373, 4.721634>,  <2.916251, 1.781159, 4.515233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010845, 1.703373, 4.721634>,  <3.168503, 1.573730, 5.065635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010845, 1.703373, 4.721634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569413, 0.648395, 0.505324,
		0.721401, 0.688867, -0.071009,
		-0.394144, 0.324108, -0.860003,
		2.892602, 1.800605, 4.463633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.237640, 2.234811, 4.961677>,  <3.168503, 1.573730, 5.065635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.237640, 2.234811, 4.961677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.900940, 2.130272, 4.772720>,  <2.698920, 2.067549, 4.659347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.900940, 2.130272, 4.772720>,  <3.237640, 2.234811, 4.961677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900940, 2.130272, 4.772720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519148, 0.631930, 0.575456,
		0.148124, 0.729631, -0.667606,
		-0.841751, -0.261347, -0.472391,
		2.648415, 2.051868, 4.631003>
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
