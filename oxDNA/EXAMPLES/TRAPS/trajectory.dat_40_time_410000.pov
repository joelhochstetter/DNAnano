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
	<36.566891, 53.002029, 50.222073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671997, 52.677307, 50.013489>,  <36.735062, 52.482471, 49.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671997, 52.677307, 50.013489>,  <36.566891, 53.002029, 50.222073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671997, 52.677307, 50.013489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897965, 0.008029, 0.439994,
		-0.353004, -0.583869, 0.731085,
		0.262769, -0.811808, -0.521460,
		36.750828, 52.433765, 49.857052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832184, 52.519794, 50.682846>,  <36.566891, 53.002029, 50.222073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832184, 52.519794, 50.682846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988422, 52.498428, 50.315243>,  <37.082165, 52.485611, 50.094681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988422, 52.498428, 50.315243>,  <36.832184, 52.519794, 50.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988422, 52.498428, 50.315243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909264, 0.178315, 0.376089,
		0.143785, -0.982523, 0.118216,
		0.390596, -0.053414, -0.919011,
		37.105602, 52.482403, 50.039539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055191, 52.974781, 51.173027>,  <36.832184, 52.519794, 50.682846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055191, 52.974781, 51.173027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069832, 52.660172, 51.419617>,  <37.078617, 52.471405, 51.567570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069832, 52.660172, 51.419617>,  <37.055191, 52.974781, 51.173027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069832, 52.660172, 51.419617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864282, -0.284772, -0.414635,
		0.501675, 0.547984, 0.669355,
		0.036600, -0.786523, 0.616475,
		37.080811, 52.424213, 51.604561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586090, 52.922909, 51.719387>,  <37.055191, 52.974781, 51.173027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586090, 52.922909, 51.719387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497795, 52.566166, 51.561470>,  <37.444817, 52.352119, 51.466721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497795, 52.566166, 51.561470>,  <37.586090, 52.922909, 51.719387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497795, 52.566166, 51.561470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972069, -0.168088, -0.163792,
		0.079720, -0.419921, 0.904053,
		-0.220741, -0.891859, -0.394792,
		37.431572, 52.298607, 51.443031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122299, 52.506310, 51.901398>,  <37.586090, 52.922909, 51.719387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122299, 52.506310, 51.901398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948887, 52.337643, 51.582836>,  <37.844841, 52.236443, 51.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948887, 52.337643, 51.582836>,  <38.122299, 52.506310, 51.901398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948887, 52.337643, 51.582836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894609, -0.095167, -0.436599,
		0.108306, -0.901745, 0.418481,
		-0.433526, -0.421663, -0.796401,
		37.818829, 52.211143, 51.343914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233330, 51.726055, 51.849972>,  <38.122299, 52.506310, 51.901398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233330, 51.726055, 51.849972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173851, 51.911293, 51.500473>,  <38.138165, 52.022438, 51.290775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173851, 51.911293, 51.500473>,  <38.233330, 51.726055, 51.849972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173851, 51.911293, 51.500473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936683, -0.217314, -0.274590,
		-0.317040, -0.859252, -0.401462,
		-0.148699, 0.463098, -0.873744,
		38.129242, 52.050224, 51.238350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506180, 51.256386, 51.345375>,  <38.233330, 51.726055, 51.849972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506180, 51.256386, 51.345375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490765, 51.646839, 51.259888>,  <38.481514, 51.881111, 51.208595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490765, 51.646839, 51.259888>,  <38.506180, 51.256386, 51.345375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490765, 51.646839, 51.259888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961631, -0.021909, -0.273468,
		-0.271624, -0.216056, -0.937838,
		-0.038537, 0.976135, -0.213717,
		38.479202, 51.939678, 51.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767166, 51.489140, 50.644791>,  <38.506180, 51.256386, 51.345375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767166, 51.489140, 50.644791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824989, 51.797298, 50.893173>,  <38.859684, 51.982193, 51.042202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824989, 51.797298, 50.893173>,  <38.767166, 51.489140, 50.644791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824989, 51.797298, 50.893173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977065, -0.011979, -0.212603,
		-0.156351, 0.637448, -0.754463,
		0.144561, 0.770401, 0.620955,
		38.868359, 52.028419, 51.079460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406670, 51.740765, 50.368031>,  <38.767166, 51.489140, 50.644791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406670, 51.740765, 50.368031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382889, 51.780510, 50.765339>,  <39.368622, 51.804356, 51.003723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382889, 51.780510, 50.765339>,  <39.406670, 51.740765, 50.368031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382889, 51.780510, 50.765339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935138, -0.342598, 0.090242,
		0.349260, 0.934213, -0.072552,
		-0.059449, 0.099364, 0.993274,
		39.365055, 51.810318, 51.063320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955807, 51.992554, 50.605824>,  <39.406670, 51.740765, 50.368031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955807, 51.992554, 50.605824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822029, 51.840027, 50.950554>,  <39.741764, 51.748508, 51.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822029, 51.840027, 50.950554>,  <39.955807, 51.992554, 50.605824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822029, 51.840027, 50.950554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920455, -0.328436, 0.211876,
		0.202262, 0.864132, 0.460833,
		-0.334443, -0.381321, 0.861825,
		39.721695, 51.725632, 51.209103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459938, 52.187660, 51.134129>,  <39.955807, 51.992554, 50.605824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459938, 52.187660, 51.134129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278053, 51.843014, 51.224335>,  <40.168922, 51.636227, 51.278458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278053, 51.843014, 51.224335>,  <40.459938, 52.187660, 51.134129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278053, 51.843014, 51.224335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883397, -0.404101, 0.237301,
		-0.113329, 0.307128, 0.944896,
		-0.454715, -0.861612, 0.225519,
		40.141640, 51.584530, 51.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655209, 52.098927, 51.897438>,  <40.459938, 52.187660, 51.134129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655209, 52.098927, 51.897438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425747, 52.078018, 52.224407>,  <40.288071, 52.065472, 52.420589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425747, 52.078018, 52.224407>,  <40.655209, 52.098927, 51.897438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425747, 52.078018, 52.224407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350883, 0.917440, -0.187579,
		-0.740135, -0.394427, -0.544635,
		-0.573656, -0.052270, 0.817427,
		40.253651, 52.062336, 52.469635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923164, 52.795753, 51.607796>,  <40.655209, 52.098927, 51.897438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923164, 52.795753, 51.607796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819340, 53.153980, 51.752342>,  <40.757046, 53.368916, 51.839069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819340, 53.153980, 51.752342>,  <40.923164, 52.795753, 51.607796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819340, 53.153980, 51.752342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964566, 0.222077, 0.142456,
		0.047327, 0.385541, -0.921476,
		-0.259562, 0.895567, 0.361370,
		40.741470, 53.422649, 51.860752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046642, 53.273548, 51.068073>,  <40.923164, 52.795753, 51.607796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046642, 53.273548, 51.068073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036701, 52.904507, 50.914097>,  <41.030735, 52.683083, 50.821712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036701, 52.904507, 50.914097>,  <41.046642, 53.273548, 51.068073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036701, 52.904507, 50.914097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646017, 0.279034, -0.710495,
		0.762919, -0.266338, 0.589083,
		-0.024857, -0.922607, -0.384939,
		41.029243, 52.627724, 50.798615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672871, 52.832962, 51.047939>,  <41.046642, 53.273548, 51.068073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672871, 52.832962, 51.047939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430382, 52.748531, 50.741230>,  <41.284889, 52.697872, 50.557205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430382, 52.748531, 50.741230>,  <41.672871, 52.832962, 51.047939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430382, 52.748531, 50.741230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733106, 0.225448, -0.641661,
		0.308309, -0.951114, 0.018073,
		-0.606219, -0.211079, -0.766775,
		41.248516, 52.685207, 50.511196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861702, 52.197495, 50.564556>,  <41.672871, 52.832962, 51.047939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861702, 52.197495, 50.564556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668018, 52.490665, 50.373405>,  <41.551807, 52.666569, 50.258717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668018, 52.490665, 50.373405>,  <41.861702, 52.197495, 50.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668018, 52.490665, 50.373405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682620, -0.025218, -0.730339,
		-0.547335, -0.679841, -0.488099,
		-0.484205, 0.732926, -0.477876,
		41.522758, 52.710545, 50.230042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105320, 52.666485, 49.935478>,  <41.861702, 52.197495, 50.564556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105320, 52.666485, 49.935478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855930, 52.976791, 49.974403>,  <41.706295, 53.162975, 49.997757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855930, 52.976791, 49.974403>,  <42.105320, 52.666485, 49.935478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855930, 52.976791, 49.974403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688675, 0.603831, -0.401392,
		-0.370145, -0.183242, -0.910722,
		-0.623474, 0.775765, 0.097311,
		41.668888, 53.209522, 50.003597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552349, 52.162029, 50.103981>,  <42.105320, 52.666485, 49.935478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552349, 52.162029, 50.103981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357578, 52.421810, 50.337601>,  <42.240715, 52.577679, 50.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357578, 52.421810, 50.337601>,  <42.552349, 52.162029, 50.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357578, 52.421810, 50.337601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483305, -0.356638, 0.799515,
		0.727542, 0.671579, -0.140228,
		-0.486927, 0.649454, 0.584047,
		42.211498, 52.616646, 50.512814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029385, 52.322113, 50.613075>,  <42.552349, 52.162029, 50.103981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029385, 52.322113, 50.613075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678421, 52.416157, 50.780346>,  <42.467842, 52.472584, 50.880707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678421, 52.416157, 50.780346>,  <43.029385, 52.322113, 50.613075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678421, 52.416157, 50.780346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397722, -0.130929, 0.908116,
		0.268261, 0.963109, 0.021369,
		-0.877413, 0.235113, 0.418173,
		42.415195, 52.486691, 50.905796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055676, 52.980656, 50.878101>,  <43.029385, 52.322113, 50.613075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055676, 52.980656, 50.878101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850388, 52.680252, 51.044273>,  <42.727215, 52.500008, 51.143978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850388, 52.680252, 51.044273>,  <43.055676, 52.980656, 50.878101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850388, 52.680252, 51.044273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585126, 0.047937, 0.809524,
		-0.627878, 0.658545, 0.414835,
		-0.513223, -0.751013, 0.415430,
		42.696423, 52.454948, 51.168903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628326, 53.113995, 50.371998>,  <43.055676, 52.980656, 50.878101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628326, 53.113995, 50.371998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690434, 53.446415, 50.585632>,  <43.727699, 53.645866, 50.713814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690434, 53.446415, 50.585632>,  <43.628326, 53.113995, 50.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690434, 53.446415, 50.585632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986662, -0.103702, -0.125475,
		-0.048891, 0.546444, -0.836067,
		0.155267, 0.831051, 0.534085,
		43.737015, 53.695728, 50.745857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113373, 53.582287, 50.001156>,  <43.628326, 53.113995, 50.371998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113373, 53.582287, 50.001156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104378, 53.596901, 50.400787>,  <44.098980, 53.605667, 50.640568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104378, 53.596901, 50.400787>,  <44.113373, 53.582287, 50.001156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104378, 53.596901, 50.400787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973601, -0.226251, 0.030183,
		0.227145, 0.973384, -0.030479,
		-0.022483, 0.036530, 0.999080,
		44.097633, 53.607861, 50.700512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612499, 54.148380, 50.323277>,  <44.113373, 53.582287, 50.001156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612499, 54.148380, 50.323277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564671, 53.840675, 50.574333>,  <44.535973, 53.656052, 50.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564671, 53.840675, 50.574333>,  <44.612499, 54.148380, 50.323277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564671, 53.840675, 50.574333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980851, 0.006354, 0.194656,
		-0.153730, 0.638900, 0.753773,
		-0.119576, -0.769263, 0.627643,
		44.528797, 53.609898, 50.762627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042343, 54.239208, 50.971237>,  <44.612499, 54.148380, 50.323277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042343, 54.239208, 50.971237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962547, 53.847481, 50.957718>,  <44.914669, 53.612446, 50.949604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962547, 53.847481, 50.957718>,  <45.042343, 54.239208, 50.971237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962547, 53.847481, 50.957718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956608, -0.202103, 0.209895,
		-0.212385, 0.009538, 0.977139,
		-0.199485, -0.979318, -0.033800,
		44.902702, 53.553684, 50.947578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559883, 54.673416, 51.190140>,  <45.042343, 54.239208, 50.971237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559883, 54.673416, 51.190140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602142, 54.513390, 50.825989>,  <45.627499, 54.417374, 50.607498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602142, 54.513390, 50.825989>,  <45.559883, 54.673416, 51.190140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602142, 54.513390, 50.825989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701028, 0.679267, -0.217157,
		0.705265, -0.615256, 0.352223,
		0.105646, -0.400071, -0.910375,
		45.633835, 54.393368, 50.552876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307873, 54.676914, 51.021088>,  <45.559883, 54.673416, 51.190140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307873, 54.676914, 51.021088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129974, 54.693844, 50.663223>,  <46.023235, 54.704002, 50.448505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129974, 54.693844, 50.663223>,  <46.307873, 54.676914, 51.021088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129974, 54.693844, 50.663223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728888, 0.597598, -0.334066,
		0.520505, -0.800678, -0.296629,
		-0.444744, 0.042327, -0.894657,
		45.996552, 54.706543, 50.394825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604950, 54.146896, 50.640205>,  <46.307873, 54.676914, 51.021088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604950, 54.146896, 50.640205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455441, 54.481476, 50.479881>,  <46.365734, 54.682224, 50.383686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455441, 54.481476, 50.479881>,  <46.604950, 54.146896, 50.640205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455441, 54.481476, 50.479881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920755, 0.386710, -0.051633,
		0.111810, -0.388349, -0.914704,
		-0.373776, 0.836445, -0.400812,
		46.343307, 54.732410, 50.359638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835018, 53.879307, 51.257713>,  <46.604950, 54.146896, 50.640205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835018, 53.879307, 51.257713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155403, 54.102673, 51.171333>,  <47.347633, 54.236691, 51.119507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155403, 54.102673, 51.171333>,  <46.835018, 53.879307, 51.257713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155403, 54.102673, 51.171333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513554, -0.455377, 0.727251,
		0.307772, -0.693399, -0.651516,
		0.800961, 0.558416, -0.215946,
		47.395691, 54.270199, 51.106548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269325, 53.549332, 51.677696>,  <46.835018, 53.879307, 51.257713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269325, 53.549332, 51.677696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.480957, 53.865433, 51.554031>,  <47.607937, 54.055092, 51.479832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.480957, 53.865433, 51.554031>,  <47.269325, 53.549332, 51.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.480957, 53.865433, 51.554031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781138, -0.311226, 0.541260,
		0.331510, -0.527869, -0.781956,
		0.529080, 0.790248, -0.309164,
		47.639683, 54.102509, 51.461281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779202, 53.246998, 51.895420>,  <47.269325, 53.549332, 51.677696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779202, 53.246998, 51.895420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.877045, 53.622326, 51.797672>,  <47.935753, 53.847523, 51.739025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.877045, 53.622326, 51.797672>,  <47.779202, 53.246998, 51.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.877045, 53.622326, 51.797672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847502, -0.084460, 0.524029,
		0.471069, -0.335287, -0.815890,
		0.244610, 0.938322, -0.244370,
		47.950428, 53.903824, 51.724361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.381168, 53.374859, 51.374722>,  <47.779202, 53.246998, 51.895420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.381168, 53.374859, 51.374722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.313061, 53.632202, 51.673279>,  <48.272194, 53.786610, 51.852413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.313061, 53.632202, 51.673279>,  <48.381168, 53.374859, 51.374722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.313061, 53.632202, 51.673279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851790, -0.284737, 0.439748,
		0.495440, 0.710645, -0.499523,
		-0.170272, 0.643357, 0.746390,
		48.261978, 53.825211, 51.897198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.047405, 53.605316, 51.691502>,  <48.381168, 53.374859, 51.374722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.047405, 53.605316, 51.691502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.756935, 53.691483, 51.952656>,  <48.582653, 53.743183, 52.109348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.756935, 53.691483, 51.952656>,  <49.047405, 53.605316, 51.691502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.756935, 53.691483, 51.952656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654424, -0.074456, 0.752453,
		0.210703, 0.973679, -0.086907,
		-0.726177, 0.215418, 0.652887,
		48.539082, 53.756107, 52.148521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.240444, 54.181789, 52.054363>,  <49.047405, 53.605316, 51.691502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.240444, 54.181789, 52.054363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.976055, 53.982597, 52.278908>,  <48.817421, 53.863083, 52.413635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.976055, 53.982597, 52.278908>,  <49.240444, 54.181789, 52.054363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.976055, 53.982597, 52.278908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670510, -0.056033, 0.739782,
		-0.336940, 0.865377, 0.370936,
		-0.660975, -0.497978, 0.561364,
		48.777763, 53.833202, 52.447315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.215683, 54.246216, 52.779308>,  <49.240444, 54.181789, 52.054363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.215683, 54.246216, 52.779308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400745, 53.983719, 53.017735>,  <49.511784, 53.826221, 53.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400745, 53.983719, 53.017735>,  <49.215683, 54.246216, 52.779308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.400745, 53.983719, 53.017735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808794, 0.037110, -0.586920,
		0.363041, 0.753638, 0.547933,
		0.462659, -0.656241, 0.596066,
		49.539543, 53.786846, 53.196556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.932106, 54.510082, 53.191845>,  <49.215683, 54.246216, 52.779308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.932106, 54.510082, 53.191845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886642, 54.134163, 53.062939>,  <49.859364, 53.908611, 52.985596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886642, 54.134163, 53.062939>,  <49.932106, 54.510082, 53.191845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.886642, 54.134163, 53.062939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781032, 0.115963, -0.613631,
		0.614062, -0.321443, 0.720834,
		-0.113657, -0.939802, -0.322266,
		49.852547, 53.852222, 52.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.466499, 53.952988, 53.427624>,  <49.932106, 54.510082, 53.191845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.466499, 53.952988, 53.427624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.277809, 53.971504, 53.075413>,  <50.164597, 53.982613, 52.864086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.277809, 53.971504, 53.075413>,  <50.466499, 53.952988, 53.427624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.277809, 53.971504, 53.075413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871611, 0.175464, -0.457718,
		0.133312, -0.983397, -0.123120,
		-0.471722, 0.046293, -0.880531,
		50.136292, 53.985394, 52.811253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.660671, 53.376816, 52.852268>,  <50.466499, 53.952988, 53.427624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.660671, 53.376816, 52.852268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.578857, 53.755882, 52.754219>,  <50.529770, 53.983322, 52.695389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.578857, 53.755882, 52.754219>,  <50.660671, 53.376816, 52.852268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.578857, 53.755882, 52.754219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977366, 0.211545, 0.002309,
		0.054043, -0.239105, -0.969489,
		-0.204539, 0.947670, -0.245125,
		50.517494, 54.040184, 52.680683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.186031, 53.642883, 52.472565>,  <50.660671, 53.376816, 52.852268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.186031, 53.642883, 52.472565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.008255, 53.968346, 52.622467>,  <50.901588, 54.163624, 52.712406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.008255, 53.968346, 52.622467>,  <51.186031, 53.642883, 52.472565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.008255, 53.968346, 52.622467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894192, 0.428074, 0.131045,
		-0.053795, 0.393342, -0.917817,
		-0.444439, 0.813655, 0.374752,
		50.874924, 54.212440, 52.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.521679, 54.185669, 52.133736>,  <51.186031, 53.642883, 52.472565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.521679, 54.185669, 52.133736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.360722, 54.299423, 52.481804>,  <51.264149, 54.367676, 52.690647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.360722, 54.299423, 52.481804>,  <51.521679, 54.185669, 52.133736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.360722, 54.299423, 52.481804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891490, 0.337846, 0.301837,
		-0.208147, 0.897209, -0.389474,
		-0.402393, 0.284386, 0.870175,
		51.240005, 54.384739, 52.742855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.648071, 54.913101, 52.239422>,  <51.521679, 54.185669, 52.133736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.648071, 54.913101, 52.239422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.599510, 54.652832, 52.539257>,  <51.570374, 54.496670, 52.719158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.599510, 54.652832, 52.539257>,  <51.648071, 54.913101, 52.239422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.599510, 54.652832, 52.539257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883170, 0.273890, 0.380782,
		-0.453070, 0.708244, 0.541404,
		-0.121402, -0.650672, 0.749591,
		51.563091, 54.457630, 52.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.843464, 55.342148, 52.835209>,  <51.648071, 54.913101, 52.239422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.843464, 55.342148, 52.835209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.892658, 54.949188, 52.891457>,  <51.922173, 54.713413, 52.925205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.892658, 54.949188, 52.891457>,  <51.843464, 55.342148, 52.835209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.892658, 54.949188, 52.891457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986560, 0.136385, 0.089988,
		-0.107583, 0.127666, 0.985965,
		0.122983, -0.982395, 0.140622,
		51.929554, 54.654469, 52.933643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.287701, 55.295609, 53.392044>,  <51.843464, 55.342148, 52.835209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.287701, 55.295609, 53.392044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.358238, 54.955402, 53.193844>,  <52.400562, 54.751278, 53.074924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.358238, 54.955402, 53.193844>,  <52.287701, 55.295609, 53.392044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.358238, 54.955402, 53.193844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973626, 0.224745, -0.039264,
		0.144756, -0.475506, 0.867721,
		0.176345, -0.850520, -0.495498,
		52.411140, 54.700245, 53.045193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.779427, 54.803185, 53.699184>,  <52.287701, 55.295609, 53.392044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.779427, 54.803185, 53.699184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.799393, 54.824265, 53.300240>,  <52.811371, 54.836910, 53.060871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.799393, 54.824265, 53.300240>,  <52.779427, 54.803185, 53.699184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.799393, 54.824265, 53.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961675, 0.267034, 0.062237,
		0.269609, -0.962245, -0.037349,
		0.049914, 0.052697, -0.997362,
		52.814365, 54.840073, 53.001030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.349846, 54.359322, 53.398956>,  <52.779427, 54.803185, 53.699184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.349846, 54.359322, 53.398956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.251354, 54.675659, 53.174839>,  <53.192257, 54.865463, 53.040367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.251354, 54.675659, 53.174839>,  <53.349846, 54.359322, 53.398956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.251354, 54.675659, 53.174839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877944, 0.426899, 0.216731,
		0.410590, -0.438540, -0.799437,
		-0.246233, 0.790848, -0.560293,
		53.177483, 54.912914, 53.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.912640, 54.663864, 52.892464>,  <53.349846, 54.359322, 53.398956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.912640, 54.663864, 52.892464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.693947, 54.982361, 52.996059>,  <53.562729, 55.173458, 53.058216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.693947, 54.982361, 52.996059>,  <53.912640, 54.663864, 52.892464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.693947, 54.982361, 52.996059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815167, 0.435517, 0.381875,
		0.191271, 0.419905, -0.887184,
		-0.546735, 0.796244, 0.258991,
		53.529926, 55.221233, 53.073757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.361107, 55.240837, 52.825443>,  <53.912640, 54.663864, 52.892464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.361107, 55.240837, 52.825443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.075584, 55.340431, 53.087280>,  <53.904270, 55.400188, 53.244385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.075584, 55.340431, 53.087280>,  <54.361107, 55.240837, 52.825443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.075584, 55.340431, 53.087280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686190, 0.435625, 0.582558,
		-0.140111, 0.865007, -0.481800,
		-0.713802, 0.248983, 0.654595,
		53.861443, 55.415127, 53.283657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.414795, 55.974922, 52.980511>,  <54.361107, 55.240837, 52.825443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.414795, 55.974922, 52.980511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.239883, 55.809258, 53.299824>,  <54.134937, 55.709858, 53.491409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.239883, 55.809258, 53.299824>,  <54.414795, 55.974922, 52.980511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.239883, 55.809258, 53.299824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679958, 0.428689, 0.594880,
		-0.588592, 0.802929, 0.094155,
		-0.437283, -0.414163, 0.798281,
		54.108700, 55.685009, 53.539307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.132252, 56.504612, 53.437931>,  <54.414795, 55.974922, 52.980511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.132252, 56.504612, 53.437931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227104, 56.177223, 53.647263>,  <54.284016, 55.980789, 53.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227104, 56.177223, 53.647263>,  <54.132252, 56.504612, 53.437931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.227104, 56.177223, 53.647263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522223, 0.561638, 0.641752,
		-0.819176, 0.121112, 0.560609,
		0.237135, -0.818470, 0.523329,
		54.298244, 55.931683, 53.804260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.032253, 56.806019, 54.131405>,  <54.132252, 56.504612, 53.437931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.032253, 56.806019, 54.131405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.298775, 56.513901, 54.071129>,  <54.458687, 56.338631, 54.034962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.298775, 56.513901, 54.071129>,  <54.032253, 56.806019, 54.131405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.298775, 56.513901, 54.071129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667616, 0.494229, 0.556801,
		-0.332151, -0.471604, 0.816863,
		0.666307, -0.730292, -0.150691,
		54.498669, 56.294811, 54.025921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.544693, 56.709080, 54.603165>,  <54.032253, 56.806019, 54.131405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.544693, 56.709080, 54.603165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.810616, 56.545193, 54.353313>,  <54.970169, 56.446861, 54.203403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.810616, 56.545193, 54.353313>,  <54.544693, 56.709080, 54.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.810616, 56.545193, 54.353313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734687, 0.509884, 0.447496,
		0.135143, -0.756407, 0.639988,
		0.664809, -0.409715, -0.624630,
		55.010059, 56.422279, 54.165924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.149170, 56.346794, 54.942101>,  <54.544693, 56.709080, 54.603165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.149170, 56.346794, 54.942101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.251350, 56.501007, 54.587448>,  <55.312656, 56.593536, 54.374657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.251350, 56.501007, 54.587448>,  <55.149170, 56.346794, 54.942101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.251350, 56.501007, 54.587448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828809, 0.384870, 0.406141,
		0.497817, -0.838594, -0.221219,
		0.255447, 0.385532, -0.886630,
		55.327984, 56.616665, 54.321461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.867531, 56.072788, 54.687351>,  <55.149170, 56.346794, 54.942101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.867531, 56.072788, 54.687351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.704781, 56.437099, 54.659260>,  <55.607128, 56.655685, 54.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.704781, 56.437099, 54.659260>,  <55.867531, 56.072788, 54.687351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.704781, 56.437099, 54.659260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732427, 0.371210, 0.570748,
		0.545894, 0.180790, -0.818116,
		-0.406878, 0.910779, -0.070226,
		55.582718, 56.710335, 54.638191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.347733, 56.621109, 54.412052>,  <55.867531, 56.072788, 54.687351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.347733, 56.621109, 54.412052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.070091, 56.803200, 54.635117>,  <55.903507, 56.912457, 54.768955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.070091, 56.803200, 54.635117>,  <56.347733, 56.621109, 54.412052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.070091, 56.803200, 54.635117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719527, 0.414559, 0.557155,
		0.022450, 0.787975, -0.615297,
		-0.694101, 0.455231, 0.557663,
		55.861862, 56.939770, 54.802414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.250950, 57.410576, 54.441917>,  <56.347733, 56.621109, 54.412052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.250950, 57.410576, 54.441917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.181267, 57.263145, 54.807167>,  <56.139458, 57.174686, 55.026318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.181267, 57.263145, 54.807167>,  <56.250950, 57.410576, 54.441917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.181267, 57.263145, 54.807167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786655, 0.505685, 0.354197,
		-0.592304, 0.780022, 0.201846,
		-0.174211, -0.368576, 0.913128,
		56.129002, 57.152573, 55.081104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.032650, 57.926918, 54.979923>,  <56.250950, 57.410576, 54.441917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.032650, 57.926918, 54.979923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.243057, 57.608227, 55.098938>,  <56.369301, 57.417011, 55.170345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.243057, 57.608227, 55.098938>,  <56.032650, 57.926918, 54.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.243057, 57.608227, 55.098938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690150, 0.604324, 0.398101,
		-0.496985, -0.004067, 0.867750,
		0.526021, -0.796728, 0.297533,
		56.400864, 57.369209, 55.188198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.190880, 58.114075, 55.615845>,  <56.032650, 57.926918, 54.979923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.190880, 58.114075, 55.615845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.431763, 57.822807, 55.484932>,  <56.576294, 57.648048, 55.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.431763, 57.822807, 55.484932>,  <56.190880, 58.114075, 55.615845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.431763, 57.822807, 55.484932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725896, 0.328801, 0.604123,
		-0.332290, -0.601385, 0.726581,
		0.602211, -0.728166, -0.327286,
		56.612427, 57.604359, 55.386745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.372540, 57.581650, 56.126770>,  <56.190880, 58.114075, 55.615845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.372540, 57.581650, 56.126770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663132, 57.634117, 55.856949>,  <56.837486, 57.665596, 55.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663132, 57.634117, 55.856949>,  <56.372540, 57.581650, 56.126770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.663132, 57.634117, 55.856949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648954, 0.191900, 0.736230,
		0.226015, -0.972610, 0.054291,
		0.726483, 0.131166, -0.674551,
		56.881077, 57.673466, 55.654583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.793835, 56.996918, 56.226517>,  <56.372540, 57.581650, 56.126770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.793835, 56.996918, 56.226517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.956009, 57.337894, 56.094475>,  <57.053314, 57.542480, 56.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.956009, 57.337894, 56.094475>,  <56.793835, 56.996918, 56.226517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.956009, 57.337894, 56.094475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599910, 0.024354, 0.799697,
		0.689731, -0.522261, -0.501512,
		0.405437, 0.852438, -0.330107,
		57.077641, 57.593624, 55.995441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.495064, 56.977966, 56.109718>,  <56.793835, 56.996918, 56.226517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.495064, 56.977966, 56.109718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.366417, 57.344685, 56.204414>,  <57.289230, 57.564716, 56.261234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.366417, 57.344685, 56.204414>,  <57.495064, 56.977966, 56.109718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.366417, 57.344685, 56.204414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500188, -0.047796, 0.864597,
		0.803975, 0.396483, -0.443199,
		-0.321615, 0.916797, 0.236743,
		57.269932, 57.619724, 56.275436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.083611, 57.461834, 56.451584>,  <57.495064, 56.977966, 56.109718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.083611, 57.461834, 56.451584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.730919, 57.616402, 56.559837>,  <57.519306, 57.709141, 56.624790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.730919, 57.616402, 56.559837>,  <58.083611, 57.461834, 56.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.730919, 57.616402, 56.559837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284286, -0.022587, 0.958473,
		0.376484, 0.922047, -0.089938,
		-0.881726, 0.386418, 0.270629,
		57.466400, 57.732327, 56.641026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.157272, 58.077915, 56.930256>,  <58.083611, 57.461834, 56.451584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.157272, 58.077915, 56.930256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.820442, 57.871307, 56.992378>,  <57.618343, 57.747345, 57.029652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.820442, 57.871307, 56.992378>,  <58.157272, 58.077915, 56.930256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.820442, 57.871307, 56.992378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233200, -0.089016, 0.968346,
		-0.486341, 0.851638, 0.195410,
		-0.842075, -0.516516, 0.155310,
		57.567822, 57.716354, 57.038971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.949581, 58.459549, 57.663380>,  <58.157272, 58.077915, 56.930256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.949581, 58.459549, 57.663380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.046051, 58.082417, 57.755386>,  <58.103931, 57.856136, 57.810589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.046051, 58.082417, 57.755386>,  <57.949581, 58.459549, 57.663380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.046051, 58.082417, 57.755386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786563, 0.051069, -0.615394,
		0.568465, 0.329339, 0.753911,
		0.241175, -0.942830, 0.230015,
		58.118404, 57.799568, 57.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.679684, 58.404919, 57.679138>,  <57.949581, 58.459549, 57.663380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.679684, 58.404919, 57.679138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.569351, 58.020794, 57.662560>,  <58.503151, 57.790318, 57.652611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.569351, 58.020794, 57.662560>,  <58.679684, 58.404919, 57.679138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.569351, 58.020794, 57.662560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825184, -0.214468, -0.522565,
		0.492936, -0.178342, 0.851591,
		-0.275834, -0.960311, -0.041446,
		58.486603, 57.732700, 57.650127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.100277, 57.816570, 57.403442>,  <58.679684, 58.404919, 57.679138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.100277, 57.816570, 57.403442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.422089, 58.006367, 57.260567>,  <59.615177, 58.120247, 57.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.422089, 58.006367, 57.260567>,  <59.100277, 57.816570, 57.403442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.422089, 58.006367, 57.260567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571573, -0.781983, 0.248611,
		-0.161351, -0.404174, -0.900338,
		0.804531, 0.474495, -0.357189,
		59.663448, 58.148716, 57.153412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.533314, 57.359577, 57.086151>,  <59.100277, 57.816570, 57.403442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.533314, 57.359577, 57.086151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.771164, 57.676556, 57.140480>,  <59.913876, 57.866741, 57.173077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.771164, 57.676556, 57.140480>,  <59.533314, 57.359577, 57.086151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.771164, 57.676556, 57.140480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733480, -0.603860, 0.312026,
		0.329284, -0.085913, -0.940314,
		0.594625, 0.792447, 0.135826,
		59.949551, 57.914291, 57.181229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.138321, 57.264988, 56.736279>,  <59.533314, 57.359577, 57.086151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.138321, 57.264988, 56.736279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.192085, 57.499840, 57.055580>,  <60.224346, 57.640751, 57.247162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.192085, 57.499840, 57.055580>,  <60.138321, 57.264988, 56.736279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.192085, 57.499840, 57.055580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736978, -0.597738, 0.315551,
		0.662416, 0.545881, -0.513048,
		0.134415, 0.587131, 0.798254,
		60.232410, 57.675980, 57.295055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.813046, 57.566673, 56.668983>,  <60.138321, 57.264988, 56.736279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.813046, 57.566673, 56.668983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695145, 57.532928, 57.049721>,  <60.624405, 57.512680, 57.278164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695145, 57.532928, 57.049721>,  <60.813046, 57.566673, 56.668983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.695145, 57.532928, 57.049721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810930, -0.549004, 0.202454,
		0.505486, 0.831551, 0.230231,
		-0.294748, -0.084363, 0.951844,
		60.606720, 57.507618, 57.335274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.349224, 57.710396, 57.117233>,  <60.813046, 57.566673, 56.668983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.349224, 57.710396, 57.117233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.098068, 57.466190, 57.310326>,  <60.947376, 57.319668, 57.426182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.098068, 57.466190, 57.310326>,  <61.349224, 57.710396, 57.117233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.098068, 57.466190, 57.310326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775405, -0.544185, 0.320327,
		0.067129, 0.575440, 0.815084,
		-0.627886, -0.610517, 0.482730,
		60.909702, 57.283035, 57.455143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.634262, 58.446274, 57.054619>,  <61.349224, 57.710396, 57.117233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.634262, 58.446274, 57.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.344704, 58.353004, 56.794891>,  <61.170971, 58.297043, 56.639057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.344704, 58.353004, 56.794891>,  <61.634262, 58.446274, 57.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.344704, 58.353004, 56.794891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689914, 0.244798, 0.681243,
		0.000105, 0.941119, -0.338076,
		-0.723891, -0.233172, -0.649316,
		61.127537, 58.283054, 56.600098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.222893, 58.943977, 57.092945>,  <61.634262, 58.446274, 57.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.222893, 58.943977, 57.092945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.980858, 58.667969, 56.934082>,  <60.835636, 58.502365, 56.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.980858, 58.667969, 56.934082>,  <61.222893, 58.943977, 57.092945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.980858, 58.667969, 56.934082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728888, 0.279432, 0.625012,
		-0.320291, 0.667675, -0.672029,
		-0.605091, -0.690020, -0.397161,
		60.799332, 58.460964, 56.814934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.123535, 59.034904, 57.805523>,  <61.222893, 58.943977, 57.092945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.123535, 59.034904, 57.805523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.413620, 58.765854, 57.746674>,  <61.587669, 58.604424, 57.711365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.413620, 58.765854, 57.746674>,  <61.123535, 59.034904, 57.805523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.413620, 58.765854, 57.746674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559325, 0.700130, -0.443816,
		0.401528, 0.239570, 0.883958,
		0.725211, -0.672624, -0.147125,
		61.631184, 58.564068, 57.702538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.524868, 59.411953, 58.070663>,  <61.123535, 59.034904, 57.805523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.524868, 59.411953, 58.070663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.659782, 59.154022, 57.796310>,  <61.740730, 58.999264, 57.631699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.659782, 59.154022, 57.796310>,  <61.524868, 59.411953, 58.070663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.659782, 59.154022, 57.796310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366408, 0.761044, -0.535310,
		0.867170, -0.070761, 0.492959,
		0.337284, -0.644829, -0.685883,
		61.760967, 58.960575, 57.590546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.226513, 59.471256, 57.994499>,  <61.524868, 59.411953, 58.070663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.226513, 59.471256, 57.994499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.037949, 59.356476, 57.660927>,  <61.924812, 59.287609, 57.460785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.037949, 59.356476, 57.660927>,  <62.226513, 59.471256, 57.994499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.037949, 59.356476, 57.660927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516872, 0.676272, -0.524881,
		0.714574, -0.678468, -0.170486,
		-0.471410, -0.286947, -0.833927,
		61.896526, 59.270390, 57.410748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.733757, 59.478947, 57.577698>,  <62.226513, 59.471256, 57.994499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.733757, 59.478947, 57.577698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.392380, 59.539635, 57.378250>,  <62.187553, 59.576050, 57.258583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.392380, 59.539635, 57.378250>,  <62.733757, 59.478947, 57.577698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.392380, 59.539635, 57.378250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406008, 0.793405, -0.453504,
		0.326800, -0.589482, -0.738724,
		-0.853440, 0.151723, -0.498619,
		62.136349, 59.585152, 57.228664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.410774, 59.682022, 57.313202>,  <62.733757, 59.478947, 57.577698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.410774, 59.682022, 57.313202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.803299, 59.723888, 57.248627>,  <64.038818, 59.749008, 57.209881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.803299, 59.723888, 57.248627>,  <63.410774, 59.682022, 57.313202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.803299, 59.723888, 57.248627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149201, -0.943762, 0.295048,
		-0.121479, -0.313622, -0.941746,
		0.981317, 0.104667, -0.161439,
		64.097694, 59.755287, 57.200195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.762314, 59.151360, 56.890987>,  <63.410774, 59.682022, 57.313202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.762314, 59.151360, 56.890987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.067924, 59.278168, 57.115761>,  <64.251289, 59.354252, 57.250626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.067924, 59.278168, 57.115761>,  <63.762314, 59.151360, 56.890987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.067924, 59.278168, 57.115761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110884, -0.922515, 0.369690,
		0.635589, -0.220143, -0.739975,
		0.764023, 0.317022, 0.561930,
		64.297134, 59.373276, 57.284340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.385101, 58.753872, 56.819740>,  <63.762314, 59.151360, 56.890987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.385101, 58.753872, 56.819740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.301689, 58.920876, 57.173508>,  <64.251640, 59.021080, 57.385769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.301689, 58.920876, 57.173508>,  <64.385101, 58.753872, 56.819740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.301689, 58.920876, 57.173508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085189, -0.908618, 0.408848,
		0.974297, 0.009918, 0.225049,
		-0.208538, 0.417511, 0.884419,
		64.239128, 59.046127, 57.438835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.662117, 58.411045, 57.430912>,  <64.385101, 58.753872, 56.819740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.662117, 58.411045, 57.430912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.373367, 58.625633, 57.605774>,  <64.200119, 58.754387, 57.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.373367, 58.625633, 57.605774>,  <64.662117, 58.411045, 57.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.373367, 58.625633, 57.605774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197833, -0.765315, 0.612499,
		0.663143, 0.355664, 0.658592,
		-0.721875, 0.536466, 0.437152,
		64.156807, 58.786572, 57.736919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.593872, 57.660408, 57.423218>,  <64.662117, 58.411045, 57.430912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.593872, 57.660408, 57.423218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.894173, 57.572372, 57.174080>,  <65.074348, 57.519550, 57.024597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.894173, 57.572372, 57.174080>,  <64.593872, 57.660408, 57.423218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.894173, 57.572372, 57.174080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137870, 0.974305, -0.178103,
		0.646043, 0.047838, 0.761801,
		0.750747, -0.220092, -0.622847,
		65.119400, 57.506344, 56.987225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.197746, 57.844635, 57.704681>,  <64.593872, 57.660408, 57.423218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.197746, 57.844635, 57.704681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.254692, 57.836571, 57.308838>,  <65.288857, 57.831734, 57.071331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.254692, 57.836571, 57.308838>,  <65.197746, 57.844635, 57.704681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.254692, 57.836571, 57.308838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219960, 0.975438, 0.011771,
		0.965065, -0.219350, 0.143298,
		0.142360, -0.020160, -0.989609,
		65.297401, 57.830524, 57.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.888107, 58.125431, 57.594799>,  <65.197746, 57.844635, 57.704681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.888107, 58.125431, 57.594799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.611465, 58.178497, 57.310806>,  <65.445480, 58.210335, 57.140411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.611465, 58.178497, 57.310806>,  <65.888107, 58.125431, 57.594799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.611465, 58.178497, 57.310806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172683, 0.984851, 0.015809,
		0.701322, -0.111667, -0.704045,
		-0.691613, 0.132664, -0.709980,
		65.403984, 58.218296, 57.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.645233, 57.400593, 57.350536>,  <65.888107, 58.125431, 57.594799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.645233, 57.400593, 57.350536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.624374, 57.001137, 57.350449>,  <65.611855, 56.761463, 57.350395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.624374, 57.001137, 57.350449>,  <65.645233, 57.400593, 57.350536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.624374, 57.001137, 57.350449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997806, -0.052119, 0.040819,
		-0.040775, 0.001906, 0.999167,
		-0.052153, -0.998639, -0.000223,
		65.608727, 56.701546, 57.350380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.005234, 57.011181, 58.011120>,  <65.645233, 57.400593, 57.350536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.005234, 57.011181, 58.011120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.983353, 56.790531, 57.678200>,  <65.970222, 56.658142, 57.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.983353, 56.790531, 57.678200>,  <66.005234, 57.011181, 58.011120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.983353, 56.790531, 57.678200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992145, -0.123937, 0.016943,
		-0.112499, -0.824836, 0.554066,
		-0.054694, -0.551620, -0.832300,
		65.966942, 56.625046, 57.428509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.347946, 56.366245, 58.146873>,  <66.005234, 57.011181, 58.011120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.347946, 56.366245, 58.146873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.350815, 56.518108, 57.776833>,  <66.352539, 56.609226, 57.554810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.350815, 56.518108, 57.776833>,  <66.347946, 56.366245, 58.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.350815, 56.518108, 57.776833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999747, -0.022463, -0.001471,
		-0.021339, -0.924856, -0.379719,
		0.007169, 0.379654, -0.925101,
		66.352966, 56.632004, 57.499302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.708572, 55.999641, 57.606335>,  <66.347946, 56.366245, 58.146873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.708572, 55.999641, 57.606335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.767250, 56.393532, 57.568817>,  <66.802460, 56.629868, 57.546307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.767250, 56.393532, 57.568817>,  <66.708572, 55.999641, 57.606335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.767250, 56.393532, 57.568817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988787, -0.143295, 0.042027,
		0.027945, -0.098905, -0.994704,
		0.146693, 0.984725, -0.093792,
		66.811256, 56.688950, 57.540680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.148911, 56.233032, 56.996422>,  <66.708572, 55.999641, 57.606335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.148911, 56.233032, 56.996422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.164345, 56.505638, 57.288734>,  <67.173607, 56.669201, 57.464123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.164345, 56.505638, 57.288734>,  <67.148911, 56.233032, 56.996422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.164345, 56.505638, 57.288734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953113, -0.244768, 0.177948,
		0.300147, 0.689656, -0.659004,
		0.038580, 0.681515, 0.730786,
		67.175919, 56.710094, 57.507969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.591980, 56.825596, 56.860470>,  <67.148911, 56.233032, 56.996422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.591980, 56.825596, 56.860470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580780, 56.748108, 57.252731>,  <67.574059, 56.701614, 57.488091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580780, 56.748108, 57.252731>,  <67.591980, 56.825596, 56.860470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.580780, 56.748108, 57.252731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998926, 0.030805, 0.034612,
		-0.036914, 0.980572, 0.192653,
		-0.028005, -0.193724, 0.980656,
		67.572380, 56.689991, 57.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.099205, 57.166298, 57.120525>,  <67.591980, 56.825596, 56.860470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.099205, 57.166298, 57.120525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.016548, 56.862286, 57.366989>,  <67.966949, 56.679878, 57.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.016548, 56.862286, 57.366989>,  <68.099205, 57.166298, 57.120525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.016548, 56.862286, 57.366989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973906, -0.220175, 0.055044,
		0.093828, 0.611454, 0.785698,
		-0.206648, -0.760031, 0.616157,
		67.954552, 56.634277, 57.551838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.403183, 57.365974, 57.821228>,  <68.099205, 57.166298, 57.120525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.403183, 57.365974, 57.821228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.351036, 56.975040, 57.754509>,  <68.319748, 56.740479, 57.714478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.351036, 56.975040, 57.754509>,  <68.403183, 57.365974, 57.821228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.351036, 56.975040, 57.754509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940138, -0.175280, 0.292265,
		-0.314876, -0.118710, 0.941680,
		-0.130363, -0.977336, -0.166795,
		68.311928, 56.681839, 57.704472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.470863, 57.069595, 58.411091>,  <68.403183, 57.365974, 57.821228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.470863, 57.069595, 58.411091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588387, 56.819778, 58.121643>,  <68.658905, 56.669888, 57.947975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588387, 56.819778, 58.121643>,  <68.470863, 57.069595, 58.411091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.588387, 56.819778, 58.121643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871952, -0.135041, 0.470598,
		-0.391627, -0.769227, 0.504894,
		0.293816, -0.624543, -0.723615,
		68.676529, 56.632416, 57.904560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.993599, 56.670570, 58.682053>,  <68.470863, 57.069595, 58.411091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.993599, 56.670570, 58.682053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.307083, 56.918812, 58.671799>,  <69.495171, 57.067757, 58.665646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.307083, 56.918812, 58.671799>,  <68.993599, 56.670570, 58.682053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.307083, 56.918812, 58.671799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308220, -0.352726, 0.883507,
		0.539270, -0.700307, -0.467716,
		0.783702, 0.620608, -0.025634,
		69.542191, 57.104996, 58.664108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.628441, 56.346436, 59.058002>,  <68.993599, 56.670570, 58.682053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.628441, 56.346436, 59.058002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.703011, 56.738369, 59.029228>,  <69.747749, 56.973530, 59.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.703011, 56.738369, 59.029228>,  <69.628441, 56.346436, 59.058002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.703011, 56.738369, 59.029228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677239, -0.075115, 0.731919,
		0.711756, -0.185158, -0.677584,
		0.186417, 0.979834, -0.071933,
		69.758934, 57.032318, 59.007648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.365074, 56.478485, 59.039413>,  <69.628441, 56.346436, 59.058002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.365074, 56.478485, 59.039413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.232796, 56.841934, 59.141434>,  <70.153427, 57.060001, 59.202644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.232796, 56.841934, 59.141434>,  <70.365074, 56.478485, 59.039413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.232796, 56.841934, 59.141434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847615, 0.167131, 0.503603,
		0.414957, 0.382723, -0.825429,
		-0.330696, 0.908620, 0.255049,
		70.133591, 57.114521, 59.217949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.844116, 56.958328, 58.734062>,  <70.365074, 56.478485, 59.039413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.844116, 56.958328, 58.734062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.646118, 57.114471, 59.044571>,  <70.527321, 57.208157, 59.230877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.646118, 57.114471, 59.044571>,  <70.844116, 56.958328, 58.734062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.646118, 57.114471, 59.044571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867678, 0.269392, 0.417807,
		-0.046026, 0.880367, -0.472055,
		-0.494991, 0.390362, 0.776274,
		70.497620, 57.231579, 59.277454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.157104, 57.624611, 58.775982>,  <70.844116, 56.958328, 58.734062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.157104, 57.624611, 58.775982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.997131, 57.501461, 59.121300>,  <70.901146, 57.427570, 59.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.997131, 57.501461, 59.121300>,  <71.157104, 57.624611, 58.775982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.997131, 57.501461, 59.121300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842461, 0.247503, 0.478541,
		-0.360996, 0.918672, 0.160387,
		-0.399926, -0.307871, 0.863293,
		70.877151, 57.409100, 59.380287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.086761, 58.228165, 59.260635>,  <71.157104, 57.624611, 58.775982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.086761, 58.228165, 59.260635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.148621, 57.878929, 59.445587>,  <71.185738, 57.669388, 59.556557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.148621, 57.878929, 59.445587>,  <71.086761, 58.228165, 59.260635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.148621, 57.878929, 59.445587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775912, 0.397049, 0.490216,
		-0.611590, 0.282949, 0.738849,
		0.154653, -0.873093, 0.462375,
		71.195015, 57.617001, 59.584301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.270622, 58.382805, 59.968277>,  <71.086761, 58.228165, 59.260635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.270622, 58.382805, 59.968277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448402, 58.037376, 59.873016>,  <71.555069, 57.830120, 59.815861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448402, 58.037376, 59.873016>,  <71.270622, 58.382805, 59.968277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.448402, 58.037376, 59.873016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776595, 0.238915, 0.582941,
		-0.446512, -0.444033, 0.776828,
		0.444441, -0.863571, -0.238155,
		71.581734, 57.778305, 59.801571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.480400, 58.132580, 60.609688>,  <71.270622, 58.382805, 59.968277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.480400, 58.132580, 60.609688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.708427, 57.966831, 60.325905>,  <71.845245, 57.867382, 60.155636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.708427, 57.966831, 60.325905>,  <71.480400, 58.132580, 60.609688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.708427, 57.966831, 60.325905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818315, 0.363528, 0.445205,
		0.073427, -0.834353, 0.546319,
		0.570060, -0.414371, -0.709456,
		71.879448, 57.842522, 60.113068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.070236, 57.882725, 60.956596>,  <71.480400, 58.132580, 60.609688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.070236, 57.882725, 60.956596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.160774, 57.943398, 60.571732>,  <72.215096, 57.979801, 60.340813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.160774, 57.943398, 60.571732>,  <72.070236, 57.882725, 60.956596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.160774, 57.943398, 60.571732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867937, 0.416940, 0.269902,
		0.442104, -0.896189, -0.037279,
		0.226340, 0.151680, -0.962166,
		72.228676, 57.988903, 60.283081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.730453, 57.510048, 60.677036>,  <72.070236, 57.882725, 60.956596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.730453, 57.510048, 60.677036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.639114, 57.879700, 60.554497>,  <72.584312, 58.101490, 60.480972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.639114, 57.879700, 60.554497>,  <72.730453, 57.510048, 60.677036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.639114, 57.879700, 60.554497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910215, 0.314298, 0.269675,
		0.345499, -0.217265, -0.912922,
		-0.228339, 0.924128, -0.306348,
		72.570610, 58.156937, 60.462593>
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
