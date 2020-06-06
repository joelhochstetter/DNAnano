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
	<45.720829, 41.826084, 44.662220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474724, 42.038872, 44.894928>,  <45.327061, 42.166546, 45.034554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474724, 42.038872, 44.894928>,  <45.720829, 41.826084, 44.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474724, 42.038872, 44.894928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546434, -0.244142, 0.801127,
		0.568212, 0.810803, -0.140476,
		-0.615260, 0.531971, 0.581774,
		45.290146, 42.198463, 45.069462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195763, 42.189426, 45.115269>,  <45.720829, 41.826084, 44.662220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195763, 42.189426, 45.115269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843239, 42.172447, 45.303520>,  <45.631725, 42.162262, 45.416470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843239, 42.172447, 45.303520>,  <46.195763, 42.189426, 45.115269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843239, 42.172447, 45.303520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471645, -0.140230, 0.870567,
		0.029046, 0.989209, 0.143604,
		-0.881310, -0.042444, 0.470629,
		45.578846, 42.159714, 45.444710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260876, 42.521725, 45.750988>,  <46.195763, 42.189426, 45.115269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260876, 42.521725, 45.750988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930367, 42.308174, 45.822815>,  <45.732059, 42.180042, 45.865910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930367, 42.308174, 45.822815>,  <46.260876, 42.521725, 45.750988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930367, 42.308174, 45.822815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315390, -0.174383, 0.932802,
		-0.466686, 0.827386, 0.312467,
		-0.826277, -0.533875, 0.179567,
		45.682484, 42.148010, 45.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074867, 42.802666, 46.435959>,  <46.260876, 42.521725, 45.750988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074867, 42.802666, 46.435959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867340, 42.463249, 46.394371>,  <45.742825, 42.259602, 46.369419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867340, 42.463249, 46.394371>,  <46.074867, 42.802666, 46.435959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867340, 42.463249, 46.394371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069780, -0.163245, 0.984115,
		-0.852033, 0.503321, 0.143906,
		-0.518817, -0.848540, -0.103968,
		45.711697, 42.208687, 46.363182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771160, 42.697113, 47.103519>,  <46.074867, 42.802666, 46.435959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771160, 42.697113, 47.103519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758820, 42.344955, 46.914219>,  <45.751415, 42.133663, 46.800640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758820, 42.344955, 46.914219>,  <45.771160, 42.697113, 47.103519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758820, 42.344955, 46.914219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023463, -0.473980, 0.880223,
		-0.999249, 0.016053, 0.035280,
		-0.030852, -0.880390, -0.473247,
		45.749565, 42.080837, 46.772243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269367, 42.424809, 47.325256>,  <45.771160, 42.697113, 47.103519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269367, 42.424809, 47.325256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493774, 42.120399, 47.194965>,  <45.628418, 41.937752, 47.116791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493774, 42.120399, 47.194965>,  <45.269367, 42.424809, 47.325256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493774, 42.120399, 47.194965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210111, -0.511507, 0.833195,
		-0.800694, -0.398999, -0.446865,
		0.561019, -0.761025, -0.325727,
		45.662079, 41.892094, 47.097248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940834, 41.905178, 47.548046>,  <45.269367, 42.424809, 47.325256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940834, 41.905178, 47.548046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279118, 41.722748, 47.437218>,  <45.482090, 41.613289, 47.370720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279118, 41.722748, 47.437218>,  <44.940834, 41.905178, 47.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279118, 41.722748, 47.437218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146171, -0.697328, 0.701689,
		-0.513229, -0.552929, -0.656404,
		0.845713, -0.456074, -0.277067,
		45.532833, 41.585926, 47.354099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785793, 41.179394, 47.555569>,  <44.940834, 41.905178, 47.548046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785793, 41.179394, 47.555569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182514, 41.227951, 47.571487>,  <45.420547, 41.257084, 47.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182514, 41.227951, 47.571487>,  <44.785793, 41.179394, 47.555569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182514, 41.227951, 47.571487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038932, -0.583930, 0.810870,
		0.121672, -0.802676, -0.583872,
		0.991807, 0.121391, 0.039798,
		45.480057, 41.264370, 47.583427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106594, 40.505756, 47.580143>,  <44.785793, 41.179394, 47.555569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106594, 40.505756, 47.580143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380539, 40.753479, 47.733727>,  <45.544907, 40.902111, 47.825874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380539, 40.753479, 47.733727>,  <45.106594, 40.505756, 47.580143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380539, 40.753479, 47.733727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057644, -0.479227, 0.875796,
		0.726389, -0.621932, -0.292505,
		0.684862, 0.619307, 0.383956,
		45.585999, 40.939270, 47.848915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532978, 40.043560, 47.857540>,  <45.106594, 40.505756, 47.580143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532978, 40.043560, 47.857540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627602, 40.404358, 48.002007>,  <45.684376, 40.620838, 48.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627602, 40.404358, 48.002007>,  <45.532978, 40.043560, 47.857540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627602, 40.404358, 48.002007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060730, -0.384716, 0.921035,
		0.969717, -0.195946, -0.145787,
		0.236559, 0.901997, 0.361166,
		45.698570, 40.674957, 48.110355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060810, 39.910515, 48.350208>,  <45.532978, 40.043560, 47.857540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060810, 39.910515, 48.350208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915375, 40.270561, 48.446205>,  <45.828114, 40.486588, 48.503803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915375, 40.270561, 48.446205>,  <46.060810, 39.910515, 48.350208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915375, 40.270561, 48.446205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134355, -0.305594, 0.942635,
		0.921821, 0.310486, 0.232045,
		-0.363586, 0.900117, 0.239988,
		45.806297, 40.540596, 48.518200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455395, 40.189156, 48.921654>,  <46.060810, 39.910515, 48.350208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455395, 40.189156, 48.921654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095642, 40.361122, 48.953373>,  <45.879791, 40.464302, 48.972404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095642, 40.361122, 48.953373>,  <46.455395, 40.189156, 48.921654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095642, 40.361122, 48.953373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039701, -0.100320, 0.994163,
		0.435364, 0.897277, 0.073157,
		-0.899379, 0.429918, 0.079299,
		45.825829, 40.490097, 48.977161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463497, 40.445415, 49.572300>,  <46.455395, 40.189156, 48.921654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463497, 40.445415, 49.572300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070084, 40.473274, 49.505585>,  <45.834038, 40.489990, 49.465557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070084, 40.473274, 49.505585>,  <46.463497, 40.445415, 49.572300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070084, 40.473274, 49.505585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172074, -0.078449, 0.981955,
		0.055308, 0.994482, 0.089142,
		-0.983530, 0.069649, -0.166786,
		45.775024, 40.494167, 49.455547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201626, 40.956825, 50.087555>,  <46.463497, 40.445415, 49.572300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201626, 40.956825, 50.087555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874901, 40.771873, 49.949562>,  <45.678864, 40.660900, 49.866764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874901, 40.771873, 49.949562>,  <46.201626, 40.956825, 50.087555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874901, 40.771873, 49.949562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418891, 0.064190, 0.905765,
		-0.396666, 0.884354, -0.246120,
		-0.816815, -0.462383, -0.344986,
		45.629856, 40.633160, 49.846066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626957, 41.319649, 50.225430>,  <46.201626, 40.956825, 50.087555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626957, 41.319649, 50.225430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472351, 40.952271, 50.191826>,  <45.379589, 40.731842, 50.171665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472351, 40.952271, 50.191826>,  <45.626957, 41.319649, 50.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472351, 40.952271, 50.191826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434592, 0.101036, 0.894942,
		-0.813472, 0.382415, -0.438203,
		-0.386514, -0.918450, -0.084005,
		45.356396, 40.676735, 50.166626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946861, 41.311836, 50.385796>,  <45.626957, 41.319649, 50.225430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946861, 41.311836, 50.385796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031078, 40.927650, 50.458664>,  <45.081608, 40.697140, 50.502384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031078, 40.927650, 50.458664>,  <44.946861, 41.311836, 50.385796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031078, 40.927650, 50.458664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554566, 0.036115, 0.831356,
		-0.805065, -0.276057, -0.525036,
		0.210540, -0.960463, 0.182167,
		45.094242, 40.639511, 50.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358391, 41.068386, 50.642342>,  <44.946861, 41.311836, 50.385796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358391, 41.068386, 50.642342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618561, 40.786812, 50.756474>,  <44.774662, 40.617867, 50.824951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618561, 40.786812, 50.756474>,  <44.358391, 41.068386, 50.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618561, 40.786812, 50.756474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554808, -0.183733, 0.811437,
		-0.518777, -0.686085, -0.510056,
		0.650429, -0.703938, 0.285329,
		44.813690, 40.575630, 50.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907345, 40.599991, 50.989803>,  <44.358391, 41.068386, 50.642342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907345, 40.599991, 50.989803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271523, 40.497826, 51.119949>,  <44.490028, 40.436527, 51.198036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271523, 40.497826, 51.119949>,  <43.907345, 40.599991, 50.989803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271523, 40.497826, 51.119949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388912, -0.260674, 0.883627,
		-0.140879, -0.931027, -0.336662,
		0.910440, -0.255416, 0.325364,
		44.544655, 40.421200, 51.217560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874424, 39.957127, 51.282467>,  <43.907345, 40.599991, 50.989803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874424, 39.957127, 51.282467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209175, 40.117935, 51.431072>,  <44.410027, 40.214420, 51.520233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209175, 40.117935, 51.431072>,  <43.874424, 39.957127, 51.282467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209175, 40.117935, 51.431072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291481, -0.247190, 0.924086,
		0.463334, -0.881634, -0.089686,
		0.836875, 0.402019, 0.371511,
		44.460239, 40.238541, 51.542526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149082, 39.476765, 51.756077>,  <43.874424, 39.957127, 51.282467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149082, 39.476765, 51.756077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356453, 39.800247, 51.867233>,  <44.480873, 39.994339, 51.933929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356453, 39.800247, 51.867233>,  <44.149082, 39.476765, 51.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356453, 39.800247, 51.867233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122376, -0.251467, 0.960098,
		0.846321, -0.531746, -0.031400,
		0.518424, 0.808709, 0.277895,
		44.511982, 40.042858, 51.950603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689808, 39.240387, 52.209286>,  <44.149082, 39.476765, 51.756077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689808, 39.240387, 52.209286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624176, 39.628319, 52.281395>,  <44.584797, 39.861080, 52.324661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624176, 39.628319, 52.281395>,  <44.689808, 39.240387, 52.209286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624176, 39.628319, 52.281395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094137, -0.166523, 0.981534,
		0.981944, 0.178024, -0.063974,
		-0.164084, 0.969834, 0.180275,
		44.574951, 39.919270, 52.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179657, 39.527718, 52.851673>,  <44.689808, 39.240387, 52.209286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179657, 39.527718, 52.851673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872757, 39.782722, 52.823643>,  <44.688618, 39.935726, 52.806824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872757, 39.782722, 52.823643>,  <45.179657, 39.527718, 52.851673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872757, 39.782722, 52.823643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057524, 0.040425, 0.997525,
		0.638766, 0.769380, 0.005656,
		-0.767247, 0.637511, -0.070080,
		44.642582, 39.973976, 52.802620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212669, 39.912392, 53.522793>,  <45.179657, 39.527718, 52.851673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212669, 39.912392, 53.522793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857933, 40.034233, 53.383804>,  <44.645092, 40.107338, 53.300411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857933, 40.034233, 53.383804>,  <45.212669, 39.912392, 53.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857933, 40.034233, 53.383804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311363, 0.161717, 0.936430,
		0.341431, 0.938651, -0.048575,
		-0.886836, 0.304601, -0.347476,
		44.591881, 40.125614, 53.279560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036034, 40.494232, 53.935223>,  <45.212669, 39.912392, 53.522793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036034, 40.494232, 53.935223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685856, 40.373917, 53.783897>,  <44.475750, 40.301727, 53.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685856, 40.373917, 53.783897>,  <45.036034, 40.494232, 53.935223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685856, 40.373917, 53.783897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434208, 0.145709, 0.888950,
		-0.212263, 0.942494, -0.258166,
		-0.875447, -0.300789, -0.378310,
		44.423222, 40.283680, 53.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577744, 40.945614, 54.200691>,  <45.036034, 40.494232, 53.935223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577744, 40.945614, 54.200691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320595, 40.663704, 54.080685>,  <44.166306, 40.494560, 54.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320595, 40.663704, 54.080685>,  <44.577744, 40.945614, 54.200691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320595, 40.663704, 54.080685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498934, 0.088099, 0.862151,
		-0.581187, 0.703944, -0.408270,
		-0.642874, -0.704770, -0.300020,
		44.127731, 40.452274, 53.990677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821190, 41.270687, 54.284218>,  <44.577744, 40.945614, 54.200691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821190, 41.270687, 54.284218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791142, 40.872414, 54.262390>,  <43.773113, 40.633450, 54.249294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791142, 40.872414, 54.262390>,  <43.821190, 41.270687, 54.284218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791142, 40.872414, 54.262390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654326, 0.007927, 0.756171,
		-0.752471, 0.092514, -0.652095,
		-0.075125, -0.995680, -0.054569,
		43.768604, 40.573711, 54.246017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176250, 41.167439, 54.445953>,  <43.821190, 41.270687, 54.284218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176250, 41.167439, 54.445953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364956, 40.823509, 54.524071>,  <43.478180, 40.617149, 54.570942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364956, 40.823509, 54.524071>,  <43.176250, 41.167439, 54.445953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364956, 40.823509, 54.524071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449705, -0.044120, 0.892087,
		-0.758422, -0.508679, -0.407482,
		0.471763, -0.859825, 0.195294,
		43.506485, 40.565563, 54.582661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663513, 40.702530, 54.947739>,  <43.176250, 41.167439, 54.445953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663513, 40.702530, 54.947739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029140, 40.545967, 54.990227>,  <43.248516, 40.452030, 55.015720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029140, 40.545967, 54.990227>,  <42.663513, 40.702530, 54.947739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029140, 40.545967, 54.990227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186159, -0.172232, 0.967306,
		-0.360314, -0.903957, -0.230295,
		0.914067, -0.391406, 0.106222,
		43.303360, 40.428547, 55.022095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632854, 39.981758, 55.144455>,  <42.663513, 40.702530, 54.947739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632854, 39.981758, 55.144455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991253, 40.105850, 55.271545>,  <43.206291, 40.180305, 55.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991253, 40.105850, 55.271545>,  <42.632854, 39.981758, 55.144455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991253, 40.105850, 55.271545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234310, -0.277498, 0.931715,
		0.377214, -0.909259, -0.175947,
		0.895995, 0.310230, 0.317725,
		43.260052, 40.198917, 55.366863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797943, 39.412621, 55.478615>,  <42.632854, 39.981758, 55.144455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797943, 39.412621, 55.478615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048485, 39.692863, 55.615341>,  <43.198811, 39.861008, 55.697376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048485, 39.692863, 55.615341>,  <42.797943, 39.412621, 55.478615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048485, 39.692863, 55.615341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161292, -0.312516, 0.936119,
		0.762673, -0.641470, -0.082742,
		0.626350, 0.700607, 0.341811,
		43.236389, 39.903046, 55.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176865, 39.106197, 56.113972>,  <42.797943, 39.412621, 55.478615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176865, 39.106197, 56.113972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213448, 39.502945, 56.149376>,  <43.235397, 39.740993, 56.170616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213448, 39.502945, 56.149376>,  <43.176865, 39.106197, 56.113972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213448, 39.502945, 56.149376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398554, -0.044991, 0.916040,
		0.912573, -0.119056, 0.391198,
		0.091460, 0.991868, 0.088508,
		43.240887, 39.800507, 56.175930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413837, 39.223396, 56.795414>,  <43.176865, 39.106197, 56.113972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413837, 39.223396, 56.795414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270439, 39.577560, 56.677078>,  <43.184399, 39.790058, 56.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270439, 39.577560, 56.677078>,  <43.413837, 39.223396, 56.795414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270439, 39.577560, 56.677078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367860, 0.157277, 0.916484,
		0.857996, 0.437388, 0.269324,
		-0.358500, 0.885413, -0.295840,
		43.162888, 39.843185, 56.588326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612709, 39.740608, 57.327251>,  <43.413837, 39.223396, 56.795414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612709, 39.740608, 57.327251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297379, 39.904854, 57.143974>,  <43.108181, 40.003399, 57.034008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297379, 39.904854, 57.143974>,  <43.612709, 39.740608, 57.327251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297379, 39.904854, 57.143974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433749, 0.157265, 0.887203,
		0.436352, 0.898147, 0.054125,
		-0.788327, 0.410609, -0.458193,
		43.060879, 40.028038, 57.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501572, 40.376328, 57.703697>,  <43.612709, 39.740608, 57.327251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501572, 40.376328, 57.703697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159065, 40.289246, 57.516335>,  <42.953560, 40.236996, 57.403915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159065, 40.289246, 57.516335>,  <43.501572, 40.376328, 57.703697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159065, 40.289246, 57.516335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513362, 0.258427, 0.818337,
		-0.057106, 0.941181, -0.333044,
		-0.856270, -0.217704, -0.468408,
		42.902184, 40.223934, 57.375813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053841, 40.855358, 57.956779>,  <43.501572, 40.376328, 57.703697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053841, 40.855358, 57.956779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799023, 40.583603, 57.811119>,  <42.646133, 40.420551, 57.723724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799023, 40.583603, 57.811119>,  <43.053841, 40.855358, 57.956779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799023, 40.583603, 57.811119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660038, 0.236763, 0.712947,
		-0.398149, 0.694534, -0.599250,
		-0.637046, -0.679387, -0.364152,
		42.607910, 40.379787, 57.701874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477390, 41.191441, 57.869816>,  <43.053841, 40.855358, 57.956779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477390, 41.191441, 57.869816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391571, 40.801971, 57.900620>,  <42.340080, 40.568291, 57.919102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391571, 40.801971, 57.900620>,  <42.477390, 41.191441, 57.869816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391571, 40.801971, 57.900620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629169, 0.198086, 0.751604,
		-0.747071, 0.112800, -0.655104,
		-0.214547, -0.973673, 0.077014,
		42.327206, 40.509869, 57.923725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800228, 41.182095, 57.961159>,  <42.477390, 41.191441, 57.869816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800228, 41.182095, 57.961159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935684, 40.831543, 58.098145>,  <42.016960, 40.621212, 58.180336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935684, 40.831543, 58.098145>,  <41.800228, 41.182095, 57.961159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935684, 40.831543, 58.098145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451424, 0.168017, 0.876348,
		-0.825552, -0.451368, -0.338719,
		0.338645, -0.876377, 0.342465,
		42.037277, 40.568630, 58.200886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235386, 40.899059, 58.377651>,  <41.800228, 41.182095, 57.961159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235386, 40.899059, 58.377651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556061, 40.702950, 58.514431>,  <41.748466, 40.585285, 58.596500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556061, 40.702950, 58.514431>,  <41.235386, 40.899059, 58.377651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556061, 40.702950, 58.514431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373503, 0.035763, 0.926939,
		-0.466684, -0.870834, -0.154448,
		0.801687, -0.490275, 0.341949,
		41.796566, 40.555866, 58.617016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935715, 40.427536, 58.788128>,  <41.235386, 40.899059, 58.377651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935715, 40.427536, 58.788128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319386, 40.411659, 58.900131>,  <41.549587, 40.402134, 58.967335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319386, 40.411659, 58.900131>,  <40.935715, 40.427536, 58.788128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319386, 40.411659, 58.900131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282626, -0.098914, 0.954117,
		-0.010171, -0.994304, -0.106093,
		0.959177, -0.039689, 0.280010,
		41.607140, 40.399754, 58.984135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000626, 39.850639, 59.249645>,  <40.935715, 40.427536, 58.788128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000626, 39.850639, 59.249645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315842, 40.083603, 59.329437>,  <41.504971, 40.223381, 59.377312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315842, 40.083603, 59.329437>,  <41.000626, 39.850639, 59.249645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315842, 40.083603, 59.329437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125926, -0.164681, 0.978275,
		0.602612, -0.796037, -0.056433,
		0.788036, 0.582414, 0.199481,
		41.552254, 40.258327, 59.389282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606289, 39.395351, 59.699875>,  <41.000626, 39.850639, 59.249645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606289, 39.395351, 59.699875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623699, 39.789871, 59.763531>,  <41.634144, 40.026581, 59.801723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623699, 39.789871, 59.763531>,  <41.606289, 39.395351, 59.699875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623699, 39.789871, 59.763531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108556, -0.153681, 0.982139,
		0.993137, -0.060020, 0.100380,
		0.043521, 0.986296, 0.159142,
		41.636757, 40.085758, 59.811272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799557, 39.375935, 60.384094>,  <41.606289, 39.395351, 59.699875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799557, 39.375935, 60.384094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704338, 39.761459, 60.336105>,  <41.647209, 39.992775, 60.307312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704338, 39.761459, 60.336105>,  <41.799557, 39.375935, 60.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704338, 39.761459, 60.336105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, 0.060684, 0.968301,
		0.940545, 0.259567, 0.219091,
		-0.238044, 0.963817, -0.119970,
		41.632923, 40.050606, 60.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071087, 39.856709, 60.888279>,  <41.799557, 39.375935, 60.384094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071087, 39.856709, 60.888279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727253, 40.021179, 60.766930>,  <41.520950, 40.119862, 60.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727253, 40.021179, 60.766930>,  <42.071087, 39.856709, 60.888279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727253, 40.021179, 60.766930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332819, -0.000012, 0.942991,
		0.387736, 0.911554, 0.136859,
		-0.859588, 0.411181, -0.303378,
		41.469376, 40.144535, 60.675915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959827, 40.452286, 61.147533>,  <42.071087, 39.856709, 60.888279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959827, 40.452286, 61.147533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624001, 40.242897, 61.089424>,  <41.422504, 40.117264, 61.054558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624001, 40.242897, 61.089424>,  <41.959827, 40.452286, 61.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624001, 40.242897, 61.089424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118993, -0.083720, 0.989359,
		-0.530061, 0.847921, 0.007999,
		-0.839569, -0.523469, -0.145273,
		41.372131, 40.085857, 61.045841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301334, 40.699219, 61.413322>,  <41.959827, 40.452286, 61.147533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301334, 40.699219, 61.413322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270988, 40.300491, 61.423084>,  <41.252781, 40.061256, 61.428940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270988, 40.300491, 61.423084>,  <41.301334, 40.699219, 61.413322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270988, 40.300491, 61.423084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185676, 0.038170, 0.981869,
		-0.979678, 0.069955, -0.187981,
		-0.075862, -0.996819, 0.024406,
		41.248230, 40.001446, 61.430405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652897, 41.349373, 61.158951>,  <41.301334, 40.699219, 61.413322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652897, 41.349373, 61.158951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327881, 41.507904, 61.329926>,  <41.132870, 41.603024, 61.432510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327881, 41.507904, 61.329926>,  <41.652897, 41.349373, 61.158951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327881, 41.507904, 61.329926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287073, -0.366109, 0.885185,
		0.507311, 0.841955, 0.183704,
		-0.812542, 0.396328, 0.427434,
		41.084118, 41.626801, 61.458157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881050, 41.745018, 61.788059>,  <41.652897, 41.349373, 61.158951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881050, 41.745018, 61.788059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499481, 41.636024, 61.838314>,  <41.270538, 41.570629, 61.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499481, 41.636024, 61.838314>,  <41.881050, 41.745018, 61.788059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499481, 41.636024, 61.838314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228138, -0.386697, 0.893543,
		-0.194889, 0.881034, 0.431042,
		-0.953924, -0.272479, 0.125634,
		41.213303, 41.554279, 61.876003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153667, 41.457272, 62.436901>,  <41.881050, 41.745018, 61.788059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153667, 41.457272, 62.436901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899147, 41.664711, 62.665348>,  <41.746433, 41.789177, 62.802418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899147, 41.664711, 62.665348>,  <42.153667, 41.457272, 62.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899147, 41.664711, 62.665348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751612, -0.249982, -0.610400,
		-0.173785, -0.817656, 0.548851,
		-0.636300, 0.518602, 0.571117,
		41.708256, 41.820293, 62.836681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557766, 41.108982, 62.352375>,  <42.153667, 41.457272, 62.436901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557766, 41.108982, 62.352375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404655, 41.439369, 62.517910>,  <41.312790, 41.637600, 62.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404655, 41.439369, 62.517910>,  <41.557766, 41.108982, 62.352375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404655, 41.439369, 62.517910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658420, 0.070321, -0.749358,
		-0.648045, -0.559318, 0.516915,
		-0.382780, 0.825965, 0.413838,
		41.289822, 41.687160, 62.642063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818230, 41.116806, 62.256695>,  <41.557766, 41.108982, 62.352375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818230, 41.116806, 62.256695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946468, 41.491211, 62.314796>,  <41.023411, 41.715855, 62.349659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946468, 41.491211, 62.314796>,  <40.818230, 41.116806, 62.256695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946468, 41.491211, 62.314796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404608, 0.273983, -0.872483,
		-0.856451, 0.220947, 0.466556,
		0.320601, 0.936011, 0.145256,
		41.042648, 41.772015, 62.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218491, 41.628883, 62.360790>,  <40.818230, 41.116806, 62.256695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218491, 41.628883, 62.360790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556297, 41.749779, 62.183952>,  <40.758980, 41.822315, 62.077850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556297, 41.749779, 62.183952>,  <40.218491, 41.628883, 62.360790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556297, 41.749779, 62.183952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527387, 0.325917, -0.784628,
		-0.093061, 0.895784, 0.434639,
		0.844513, 0.302242, -0.442095,
		40.809650, 41.840450, 62.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076828, 42.195431, 61.977303>,  <40.218491, 41.628883, 62.360790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076828, 42.195431, 61.977303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420998, 42.064026, 61.821480>,  <40.627499, 41.985184, 61.727985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420998, 42.064026, 61.821480>,  <40.076828, 42.195431, 61.977303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420998, 42.064026, 61.821480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386621, 0.077171, -0.919004,
		0.331965, 0.941342, -0.060609,
		0.860420, -0.328510, -0.389561,
		40.679123, 41.965473, 61.704613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342880, 42.718338, 61.529392>,  <40.076828, 42.195431, 61.977303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342880, 42.718338, 61.529392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530388, 42.394447, 61.388195>,  <40.642895, 42.200115, 61.303478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530388, 42.394447, 61.388195>,  <40.342880, 42.718338, 61.529392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530388, 42.394447, 61.388195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253705, 0.259357, -0.931863,
		0.846100, 0.526387, -0.083851,
		0.468773, -0.809722, -0.352989,
		40.671021, 42.151531, 61.282299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854977, 42.899963, 60.955185>,  <40.342880, 42.718338, 61.529392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854977, 42.899963, 60.955185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743450, 42.517464, 60.919750>,  <40.676537, 42.287964, 60.898491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743450, 42.517464, 60.919750>,  <40.854977, 42.899963, 60.955185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743450, 42.517464, 60.919750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097596, 0.119981, -0.987967,
		0.955373, -0.266812, -0.126779,
		-0.278812, -0.956251, -0.088587,
		40.659805, 42.230587, 60.893173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281246, 42.699566, 60.478573>,  <40.854977, 42.899963, 60.955185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281246, 42.699566, 60.478573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996681, 42.418472, 60.481625>,  <40.825943, 42.249817, 60.483456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996681, 42.418472, 60.481625>,  <41.281246, 42.699566, 60.478573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996681, 42.418472, 60.481625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002003, -0.008825, -0.999959,
		0.702773, -0.711397, 0.004870,
		-0.711411, -0.702734, 0.007627,
		40.783257, 42.207653, 60.483913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520145, 42.156193, 60.053108>,  <41.281246, 42.699566, 60.478573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520145, 42.156193, 60.053108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129501, 42.072220, 60.071690>,  <40.895115, 42.021835, 60.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129501, 42.072220, 60.071690>,  <41.520145, 42.156193, 60.053108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129501, 42.072220, 60.071690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039886, -0.035431, -0.998576,
		0.211283, -0.977073, 0.026229,
		-0.976611, -0.209936, 0.046457,
		40.836517, 42.009239, 60.085629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391788, 41.738159, 59.474766>,  <41.520145, 42.156193, 60.053108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391788, 41.738159, 59.474766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031273, 41.862900, 59.595051>,  <40.814964, 41.937744, 59.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031273, 41.862900, 59.595051>,  <41.391788, 41.738159, 59.474766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031273, 41.862900, 59.595051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245743, 0.203630, -0.947705,
		-0.356777, -0.928054, -0.106895,
		-0.901289, 0.311850, 0.300714,
		40.760887, 41.956455, 59.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927071, 41.422184, 58.953362>,  <41.391788, 41.738159, 59.474766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927071, 41.422184, 58.953362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752075, 41.738228, 59.125099>,  <40.647076, 41.927853, 59.228142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752075, 41.738228, 59.125099>,  <40.927071, 41.422184, 58.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752075, 41.738228, 59.125099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317719, 0.310840, -0.895786,
		-0.841222, -0.528310, 0.115041,
		-0.437493, 0.790106, 0.429340,
		40.620827, 41.975258, 59.253902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294819, 41.520264, 58.606129>,  <40.927071, 41.422184, 58.953362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294819, 41.520264, 58.606129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385010, 41.872864, 58.772079>,  <40.439125, 42.084423, 58.871651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385010, 41.872864, 58.772079>,  <40.294819, 41.520264, 58.606129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385010, 41.872864, 58.772079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145137, 0.451483, -0.880397,
		-0.963378, 0.138294, 0.229736,
		0.225475, 0.881498, 0.414877,
		40.452652, 42.137314, 58.896542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779892, 41.944656, 58.412430>,  <40.294819, 41.520264, 58.606129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779892, 41.944656, 58.412430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085403, 42.186981, 58.501541>,  <40.268711, 42.332375, 58.555008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085403, 42.186981, 58.501541>,  <39.779892, 41.944656, 58.412430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085403, 42.186981, 58.501541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156385, 0.508528, -0.846725,
		-0.626244, 0.611874, 0.483144,
		0.763781, 0.605813, 0.222775,
		40.314537, 42.368725, 58.568375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650475, 42.431171, 58.006855>,  <39.779892, 41.944656, 58.412430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650475, 42.431171, 58.006855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026680, 42.510643, 58.117096>,  <40.252403, 42.558327, 58.183239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026680, 42.510643, 58.117096>,  <39.650475, 42.431171, 58.006855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026680, 42.510643, 58.117096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158099, 0.462069, -0.872638,
		-0.300725, 0.864302, 0.403171,
		0.940515, 0.198683, 0.275601,
		40.308834, 42.570248, 58.199776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734318, 43.100983, 57.739021>,  <39.650475, 42.431171, 58.006855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734318, 43.100983, 57.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111118, 42.978226, 57.793358>,  <40.337196, 42.904572, 57.825958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111118, 42.978226, 57.793358>,  <39.734318, 43.100983, 57.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111118, 42.978226, 57.793358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270861, 0.456206, -0.847650,
		0.198170, 0.835279, 0.512872,
		0.941999, -0.306896, 0.135839,
		40.393719, 42.886158, 57.834110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166500, 43.663826, 57.504650>,  <39.734318, 43.100983, 57.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166500, 43.663826, 57.504650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404007, 43.342026, 57.498863>,  <40.546513, 43.148945, 57.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404007, 43.342026, 57.498863>,  <40.166500, 43.663826, 57.504650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404007, 43.342026, 57.498863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568481, 0.432160, -0.700048,
		0.569443, 0.407444, 0.713949,
		0.593771, -0.804504, -0.014467,
		40.582138, 43.100674, 57.494522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919418, 43.933056, 57.444214>,  <40.166500, 43.663826, 57.504650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919418, 43.933056, 57.444214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884308, 43.550285, 57.333511>,  <40.863239, 43.320625, 57.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884308, 43.550285, 57.333511>,  <40.919418, 43.933056, 57.444214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884308, 43.550285, 57.333511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493949, 0.199454, -0.846305,
		0.865049, -0.210991, 0.455163,
		-0.087779, -0.956923, -0.276757,
		40.857975, 43.263210, 57.250484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580776, 43.807243, 57.205879>,  <40.919418, 43.933056, 57.444214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580776, 43.807243, 57.205879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347916, 43.516335, 57.060459>,  <41.208199, 43.341789, 56.973206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347916, 43.516335, 57.060459>,  <41.580776, 43.807243, 57.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347916, 43.516335, 57.060459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493304, 0.039512, -0.868959,
		0.646336, -0.685209, 0.335765,
		-0.582152, -0.727274, -0.363555,
		41.173271, 43.298153, 56.951393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969795, 43.354206, 56.753918>,  <41.580776, 43.807243, 57.205879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969795, 43.354206, 56.753918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593811, 43.313347, 56.623665>,  <41.368221, 43.288834, 56.545513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593811, 43.313347, 56.623665>,  <41.969795, 43.354206, 56.753918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593811, 43.313347, 56.623665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326335, 0.010258, -0.945199,
		0.099889, -0.994716, 0.023692,
		-0.939962, -0.102146, -0.325635,
		41.311821, 43.282703, 56.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016541, 42.888546, 56.161350>,  <41.969795, 43.354206, 56.753918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016541, 42.888546, 56.161350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648903, 43.035118, 56.103386>,  <41.428322, 43.123062, 56.068607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648903, 43.035118, 56.103386>,  <42.016541, 42.888546, 56.161350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648903, 43.035118, 56.103386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117356, -0.096521, -0.988388,
		-0.376167, -0.925424, 0.045708,
		-0.919089, 0.366435, -0.144912,
		41.373177, 43.145050, 56.059914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725552, 42.490387, 55.684044>,  <42.016541, 42.888546, 56.161350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725552, 42.490387, 55.684044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492836, 42.814583, 55.656830>,  <41.353207, 43.009102, 55.640503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492836, 42.814583, 55.656830>,  <41.725552, 42.490387, 55.684044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492836, 42.814583, 55.656830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135294, 0.013955, -0.990707,
		-0.802009, -0.585586, -0.117773,
		-0.581788, 0.810490, -0.068035,
		41.318298, 43.057732, 55.636421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281567, 42.362137, 55.111732>,  <41.725552, 42.490387, 55.684044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281567, 42.362137, 55.111732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250244, 42.758812, 55.152565>,  <41.231449, 42.996819, 55.177063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250244, 42.758812, 55.152565>,  <41.281567, 42.362137, 55.111732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250244, 42.758812, 55.152565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055978, 0.097856, -0.993625,
		-0.995356, -0.083524, 0.047850,
		-0.078310, 0.991689, 0.102077,
		41.226749, 43.056320, 55.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790897, 42.664902, 54.600628>,  <41.281567, 42.362137, 55.111732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790897, 42.664902, 54.600628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024662, 42.979935, 54.678780>,  <41.164921, 43.168957, 54.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024662, 42.979935, 54.678780>,  <40.790897, 42.664902, 54.600628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024662, 42.979935, 54.678780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166470, 0.119288, -0.978805,
		-0.794198, 0.604550, -0.061396,
		0.584412, 0.787585, 0.195377,
		41.199986, 43.216209, 54.737392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571857, 43.293812, 54.167744>,  <40.790897, 42.664902, 54.600628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571857, 43.293812, 54.167744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950512, 43.333954, 54.290260>,  <41.177704, 43.358040, 54.363770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950512, 43.333954, 54.290260>,  <40.571857, 43.293812, 54.167744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950512, 43.333954, 54.290260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276392, 0.236127, -0.931585,
		-0.165811, 0.966526, 0.195789,
		0.946633, 0.100353, 0.306292,
		41.234501, 43.364059, 54.382149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764065, 43.943592, 53.901314>,  <40.571857, 43.293812, 54.167744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764065, 43.943592, 53.901314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099907, 43.735962, 53.965347>,  <41.301411, 43.611382, 54.003769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099907, 43.735962, 53.965347>,  <40.764065, 43.943592, 53.901314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099907, 43.735962, 53.965347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406260, 0.404416, -0.819390,
		0.360587, 0.752997, 0.550429,
		0.839601, -0.519079, 0.160085,
		41.351788, 43.580238, 54.013374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361977, 44.394798, 53.653427>,  <40.764065, 43.943592, 53.901314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361977, 44.394798, 53.653427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508465, 44.022614, 53.658005>,  <41.596355, 43.799305, 53.660751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508465, 44.022614, 53.658005>,  <41.361977, 44.394798, 53.653427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508465, 44.022614, 53.658005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519992, 0.194432, -0.831748,
		0.771683, 0.310550, 0.555036,
		0.366216, -0.930460, 0.011443,
		41.618328, 43.743477, 53.661438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140518, 44.484692, 53.632198>,  <41.361977, 44.394798, 53.653427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140518, 44.484692, 53.632198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058136, 44.120499, 53.488754>,  <42.008705, 43.901981, 53.402687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058136, 44.120499, 53.488754>,  <42.140518, 44.484692, 53.632198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058136, 44.120499, 53.488754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594347, 0.174742, -0.784995,
		0.777389, -0.374815, 0.505154,
		-0.205956, -0.910483, -0.358613,
		41.996349, 43.847355, 53.381172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804035, 44.167557, 53.350163>,  <42.140518, 44.484692, 53.632198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804035, 44.167557, 53.350163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511642, 43.949097, 53.186516>,  <42.336208, 43.818020, 53.088326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511642, 43.949097, 53.186516>,  <42.804035, 44.167557, 53.350163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511642, 43.949097, 53.186516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440559, 0.080142, -0.894139,
		0.521126, -0.833842, 0.182031,
		-0.730983, -0.546154, -0.409121,
		42.292347, 43.785252, 53.063778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159973, 43.709183, 52.836151>,  <42.804035, 44.167557, 53.350163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159973, 43.709183, 52.836151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776295, 43.723114, 52.723915>,  <42.546089, 43.731472, 52.656574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776295, 43.723114, 52.723915>,  <43.159973, 43.709183, 52.836151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776295, 43.723114, 52.723915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282734, 0.112269, -0.952606,
		-0.001677, -0.993067, -0.117535,
		-0.959197, 0.034829, -0.280585,
		42.488537, 43.733562, 52.639740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102222, 43.191872, 52.268906>,  <43.159973, 43.709183, 52.836151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102222, 43.191872, 52.268906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787952, 43.431335, 52.206528>,  <42.599388, 43.575012, 52.169102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787952, 43.431335, 52.206528>,  <43.102222, 43.191872, 52.268906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787952, 43.431335, 52.206528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251547, 0.078851, -0.964628,
		-0.565184, -0.797115, -0.212542,
		-0.785679, 0.598656, -0.155947,
		42.552250, 43.610931, 52.159744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789200, 42.957890, 51.604118>,  <43.102222, 43.191872, 52.268906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789200, 42.957890, 51.604118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643333, 43.328278, 51.643295>,  <42.555813, 43.550510, 51.666801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643333, 43.328278, 51.643295>,  <42.789200, 42.957890, 51.604118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643333, 43.328278, 51.643295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127123, 0.153712, -0.979904,
		-0.922418, -0.344891, -0.173767,
		-0.364670, 0.925972, 0.097943,
		42.533932, 43.606068, 51.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289440, 43.036064, 51.011410>,  <42.789200, 42.957890, 51.604118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289440, 43.036064, 51.011410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376465, 43.404854, 51.139549>,  <42.428680, 43.626129, 51.216431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376465, 43.404854, 51.139549>,  <42.289440, 43.036064, 51.011410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376465, 43.404854, 51.139549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195654, 0.280349, -0.939747,
		-0.956235, 0.267134, -0.119394,
		0.217566, 0.921978, 0.320345,
		42.441734, 43.681446, 51.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948055, 43.479248, 50.613804>,  <42.289440, 43.036064, 51.011410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948055, 43.479248, 50.613804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266884, 43.682816, 50.743835>,  <42.458183, 43.804955, 50.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266884, 43.682816, 50.743835>,  <41.948055, 43.479248, 50.613804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266884, 43.682816, 50.743835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118120, 0.396526, -0.910393,
		-0.592216, 0.764049, 0.255948,
		0.797075, 0.508916, 0.325078,
		42.506008, 43.835491, 50.841358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868855, 44.111843, 50.355347>,  <41.948055, 43.479248, 50.613804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868855, 44.111843, 50.355347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251083, 44.122658, 50.472755>,  <42.480419, 44.129147, 50.543201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251083, 44.122658, 50.472755>,  <41.868855, 44.111843, 50.355347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251083, 44.122658, 50.472755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256192, 0.416287, -0.872394,
		-0.145775, 0.908831, 0.390865,
		0.955571, 0.027037, 0.293520,
		42.537754, 44.130768, 50.560810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114834, 44.694763, 50.032127>,  <41.868855, 44.111843, 50.355347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114834, 44.694763, 50.032127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421314, 44.454704, 50.124004>,  <42.605202, 44.310669, 50.179131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421314, 44.454704, 50.124004>,  <42.114834, 44.694763, 50.032127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421314, 44.454704, 50.124004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463846, 0.269152, -0.844040,
		0.444727, 0.753246, 0.484601,
		0.766201, -0.600148, 0.229691,
		42.651176, 44.274658, 50.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676285, 45.122952, 49.928196>,  <42.114834, 44.694763, 50.032127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676285, 45.122952, 49.928196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825089, 44.753113, 49.895390>,  <42.914371, 44.531208, 49.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825089, 44.753113, 49.895390>,  <42.676285, 45.122952, 49.928196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825089, 44.753113, 49.895390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421128, 0.246856, -0.872762,
		0.827199, 0.290140, 0.481208,
		0.372012, -0.924598, -0.082013,
		42.936691, 44.475735, 49.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370838, 45.215759, 49.531067>,  <42.676285, 45.122952, 49.928196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370838, 45.215759, 49.531067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282291, 44.828827, 49.481632>,  <43.229164, 44.596668, 49.451973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282291, 44.828827, 49.481632>,  <43.370838, 45.215759, 49.531067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282291, 44.828827, 49.481632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404498, 0.024235, -0.914218,
		0.887343, -0.252370, 0.385918,
		-0.221368, -0.967327, -0.123588,
		43.215881, 44.538628, 49.444557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032555, 44.811611, 49.275475>,  <43.370838, 45.215759, 49.531067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032555, 44.811611, 49.275475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708206, 44.599503, 49.176441>,  <43.513596, 44.472237, 49.117020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708206, 44.599503, 49.176441>,  <44.032555, 44.811611, 49.275475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708206, 44.599503, 49.176441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358755, -0.116157, -0.926176,
		0.462368, -0.839832, 0.284427,
		-0.810870, -0.530274, -0.247586,
		43.464947, 44.440422, 49.102165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334904, 44.344879, 48.878208>,  <44.032555, 44.811611, 49.275475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334904, 44.344879, 48.878208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949051, 44.343781, 48.772770>,  <43.717541, 44.343121, 48.709507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949051, 44.343781, 48.772770>,  <44.334904, 44.344879, 48.878208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949051, 44.343781, 48.772770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263529, -0.034185, -0.964046,
		-0.006355, -0.999412, 0.033701,
		-0.964631, -0.002754, -0.263591,
		43.659660, 44.342957, 48.693691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186413, 43.790253, 48.404072>,  <44.334904, 44.344879, 48.878208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186413, 43.790253, 48.404072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857948, 43.995583, 48.304317>,  <43.660870, 44.118782, 48.244465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857948, 43.995583, 48.304317>,  <44.186413, 43.790253, 48.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857948, 43.995583, 48.304317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208433, -0.137031, -0.968389,
		-0.531270, -0.847184, 0.005531,
		-0.821162, 0.513324, -0.249382,
		43.611599, 44.149578, 48.229504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884644, 43.389736, 47.916973>,  <44.186413, 43.790253, 48.404072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884644, 43.389736, 47.916973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734474, 43.757561, 47.870571>,  <43.644371, 43.978256, 47.842731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734474, 43.757561, 47.870571>,  <43.884644, 43.389736, 47.916973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734474, 43.757561, 47.870571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106352, -0.081596, -0.990975,
		-0.920731, -0.384374, -0.067164,
		-0.375425, 0.919564, -0.116006,
		43.621845, 44.033428, 47.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410072, 43.303322, 47.432171>,  <43.884644, 43.389736, 47.916973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410072, 43.303322, 47.432171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501648, 43.692337, 47.415417>,  <43.556591, 43.925747, 47.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501648, 43.692337, 47.415417>,  <43.410072, 43.303322, 47.432171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501648, 43.692337, 47.415417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090297, -0.021623, -0.995680,
		-0.969244, 0.231730, 0.082867,
		0.228937, 0.972540, -0.041883,
		43.570328, 43.984100, 47.402851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896091, 43.615341, 47.013905>,  <43.410072, 43.303322, 47.432171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896091, 43.615341, 47.013905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193424, 43.881378, 46.985325>,  <43.371826, 44.041000, 46.968178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193424, 43.881378, 46.985325>,  <42.896091, 43.615341, 47.013905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193424, 43.881378, 46.985325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040971, -0.061348, -0.997275,
		-0.667663, 0.744238, -0.018353,
		0.743336, 0.665092, -0.071452,
		43.416424, 44.080906, 46.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607822, 44.150085, 46.573055>,  <42.896091, 43.615341, 47.013905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607822, 44.150085, 46.573055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006058, 44.185349, 46.560181>,  <43.244999, 44.206505, 46.552456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006058, 44.185349, 46.560181>,  <42.607822, 44.150085, 46.573055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006058, 44.185349, 46.560181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027060, -0.058736, -0.997907,
		-0.089863, 0.994373, -0.056092,
		0.995586, 0.088157, -0.032186,
		43.304733, 44.211796, 46.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756393, 44.562202, 46.023987>,  <42.607822, 44.150085, 46.573055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756393, 44.562202, 46.023987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113892, 44.390274, 46.075340>,  <43.328388, 44.287117, 46.106152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113892, 44.390274, 46.075340>,  <42.756393, 44.562202, 46.023987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113892, 44.390274, 46.075340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188478, 0.100103, -0.976962,
		0.407064, 0.897350, 0.170477,
		0.893742, -0.429817, 0.128382,
		43.382015, 44.261330, 46.113853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393429, 45.115177, 46.218853>,  <42.756393, 44.562202, 46.023987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393429, 45.115177, 46.218853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021439, 45.123283, 46.072029>,  <41.798244, 45.128147, 45.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021439, 45.123283, 46.072029>,  <42.393429, 45.115177, 46.218853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021439, 45.123283, 46.072029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341115, 0.324685, 0.882168,
		0.137060, 0.945605, -0.295035,
		-0.929976, 0.020269, -0.367062,
		41.742447, 45.129364, 45.961910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000797, 45.711864, 46.479534>,  <42.393429, 45.115177, 46.218853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000797, 45.711864, 46.479534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689522, 45.484192, 46.373352>,  <41.502758, 45.347588, 46.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689522, 45.484192, 46.373352>,  <42.000797, 45.711864, 46.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689522, 45.484192, 46.373352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461507, 0.231574, 0.856379,
		-0.425958, 0.788930, -0.442886,
		-0.778184, -0.569177, -0.265456,
		41.456066, 45.313438, 46.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312393, 46.121788, 46.740147>,  <42.000797, 45.711864, 46.479534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312393, 46.121788, 46.740147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272583, 45.726791, 46.691242>,  <41.248695, 45.489792, 46.661900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272583, 45.726791, 46.691242>,  <41.312393, 46.121788, 46.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272583, 45.726791, 46.691242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440060, -0.066514, 0.895502,
		-0.892435, 0.142930, -0.427937,
		-0.099530, -0.987495, -0.122258,
		41.242725, 45.430542, 46.654564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665077, 45.990467, 47.054718>,  <41.312393, 46.121788, 46.740147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665077, 45.990467, 47.054718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836098, 45.629890, 47.027588>,  <40.938709, 45.413544, 47.011311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836098, 45.629890, 47.027588>,  <40.665077, 45.990467, 47.054718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836098, 45.629890, 47.027588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240936, -0.185950, 0.952561,
		-0.871290, -0.390931, -0.296694,
		0.427556, -0.901441, -0.067827,
		40.964363, 45.359459, 47.007240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140411, 45.462799, 47.242306>,  <40.665077, 45.990467, 47.054718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140411, 45.462799, 47.242306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503265, 45.308350, 47.309258>,  <40.720978, 45.215679, 47.349430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503265, 45.308350, 47.309258>,  <40.140411, 45.462799, 47.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503265, 45.308350, 47.309258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326511, -0.394803, 0.858791,
		-0.265514, -0.833691, -0.484212,
		0.907134, -0.386122, 0.167383,
		40.775406, 45.192513, 47.359470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990772, 44.721180, 47.493351>,  <40.140411, 45.462799, 47.242306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990772, 44.721180, 47.493351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369469, 44.776314, 47.609749>,  <40.596687, 44.809395, 47.679588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369469, 44.776314, 47.609749>,  <39.990772, 44.721180, 47.493351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369469, 44.776314, 47.609749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263013, -0.190267, 0.945845,
		0.185732, -0.972009, -0.143883,
		0.946746, 0.137830, 0.290990,
		40.653492, 44.817661, 47.697044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267853, 44.141579, 47.842651>,  <39.990772, 44.721180, 47.493351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267853, 44.141579, 47.842651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495495, 44.436989, 47.987267>,  <40.632080, 44.614235, 48.074036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495495, 44.436989, 47.987267>,  <40.267853, 44.141579, 47.842651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495495, 44.436989, 47.987267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187397, -0.311624, 0.931543,
		0.800628, -0.597894, -0.038949,
		0.569101, 0.738521, 0.361538,
		40.666225, 44.658546, 48.095730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621002, 43.831806, 48.351143>,  <40.267853, 44.141579, 47.842651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621002, 43.831806, 48.351143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630745, 44.226891, 48.412903>,  <40.636589, 44.463940, 48.449959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630745, 44.226891, 48.412903>,  <40.621002, 43.831806, 48.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630745, 44.226891, 48.412903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187662, -0.147185, 0.971143,
		0.981932, -0.052625, 0.181771,
		0.024352, 0.987708, 0.154401,
		40.638050, 44.523205, 48.459225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985332, 43.882351, 49.030293>,  <40.621002, 43.831806, 48.351143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985332, 43.882351, 49.030293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774151, 44.216286, 48.967937>,  <40.647442, 44.416649, 48.930523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774151, 44.216286, 48.967937>,  <40.985332, 43.882351, 49.030293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774151, 44.216286, 48.967937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407822, -0.088213, 0.908790,
		0.744944, 0.543377, 0.387039,
		-0.527958, 0.834841, -0.155888,
		40.615765, 44.466740, 48.921169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010563, 44.141022, 49.661736>,  <40.985332, 43.882351, 49.030293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010563, 44.141022, 49.661736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706726, 44.334618, 49.487946>,  <40.524422, 44.450775, 49.383671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706726, 44.334618, 49.487946>,  <41.010563, 44.141022, 49.661736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706726, 44.334618, 49.487946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613320, -0.310711, 0.726152,
		0.216455, 0.818054, 0.532855,
		-0.759595, 0.483990, -0.434474,
		40.478848, 44.479816, 49.357605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642609, 44.411835, 50.160248>,  <41.010563, 44.141022, 49.661736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642609, 44.411835, 50.160248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368141, 44.435577, 49.870243>,  <40.203461, 44.449821, 49.696239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368141, 44.435577, 49.870243>,  <40.642609, 44.411835, 50.160248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368141, 44.435577, 49.870243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720043, -0.197198, 0.665321,
		-0.103483, 0.978565, 0.178048,
		-0.686170, 0.059353, -0.725015,
		40.162289, 44.453384, 49.652737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203655, 44.896729, 50.398556>,  <40.642609, 44.411835, 50.160248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203655, 44.896729, 50.398556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977776, 44.679314, 50.150143>,  <39.842247, 44.548866, 50.001095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977776, 44.679314, 50.150143>,  <40.203655, 44.896729, 50.398556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977776, 44.679314, 50.150143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673867, -0.130763, 0.727189,
		-0.476459, 0.829140, -0.292427,
		-0.564703, -0.543532, -0.621034,
		39.808365, 44.516254, 49.963833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514793, 45.158894, 50.346516>,  <40.203655, 44.896729, 50.398556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514793, 45.158894, 50.346516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506775, 44.767220, 50.265728>,  <39.501965, 44.532215, 50.217255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506775, 44.767220, 50.265728>,  <39.514793, 45.158894, 50.346516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506775, 44.767220, 50.265728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574968, -0.153973, 0.803557,
		-0.817930, 0.132236, -0.559914,
		-0.020047, -0.979186, -0.201971,
		39.500759, 44.473465, 50.205135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795807, 44.961391, 50.460533>,  <39.514793, 45.158894, 50.346516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795807, 44.961391, 50.460533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016357, 44.627914, 50.472878>,  <39.148685, 44.427830, 50.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016357, 44.627914, 50.472878>,  <38.795807, 44.961391, 50.460533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016357, 44.627914, 50.472878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366295, -0.208687, 0.906795,
		-0.749544, -0.511286, -0.420440,
		0.551373, -0.833688, 0.030861,
		39.181770, 44.377808, 50.482136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384987, 44.522732, 50.852207>,  <38.795807, 44.961391, 50.460533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384987, 44.522732, 50.852207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746937, 44.352486, 50.854836>,  <38.964108, 44.250336, 50.856415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746937, 44.352486, 50.854836>,  <38.384987, 44.522732, 50.852207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746937, 44.352486, 50.854836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221274, -0.457130, 0.861435,
		-0.363634, -0.780951, -0.507825,
		0.904880, -0.425615, 0.006577,
		39.018402, 44.224800, 50.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294716, 43.918171, 51.156696>,  <38.384987, 44.522732, 50.852207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294716, 43.918171, 51.156696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692917, 43.948280, 51.179714>,  <38.931839, 43.966347, 51.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692917, 43.948280, 51.179714>,  <38.294716, 43.918171, 51.156696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692917, 43.948280, 51.179714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022563, -0.401517, 0.915574,
		0.092021, -0.912753, -0.398013,
		0.995502, 0.075272, 0.057542,
		38.991566, 43.970863, 51.196976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663155, 43.285027, 51.294731>,  <38.294716, 43.918171, 51.156696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663155, 43.285027, 51.294731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936363, 43.549339, 51.419216>,  <39.100288, 43.707928, 51.493908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936363, 43.549339, 51.419216>,  <38.663155, 43.285027, 51.294731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936363, 43.549339, 51.419216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044102, -0.462615, 0.885462,
		0.729063, -0.591067, -0.345119,
		0.683024, 0.660778, 0.311208,
		39.141270, 43.747574, 51.512577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113983, 42.803116, 51.734631>,  <38.663155, 43.285027, 51.294731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113983, 42.803116, 51.734631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210052, 43.180809, 51.824738>,  <39.267693, 43.407425, 51.878803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210052, 43.180809, 51.824738>,  <39.113983, 42.803116, 51.734631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210052, 43.180809, 51.824738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119055, -0.258963, 0.958522,
		0.963402, -0.203389, -0.174611,
		0.240171, 0.944231, 0.225271,
		39.282104, 43.464077, 51.892319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626686, 42.738285, 52.217831>,  <39.113983, 42.803116, 51.734631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626686, 42.738285, 52.217831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450634, 43.093269, 52.272530>,  <39.345001, 43.306259, 52.305347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450634, 43.093269, 52.272530>,  <39.626686, 42.738285, 52.217831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450634, 43.093269, 52.272530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054415, -0.125646, 0.990582,
		0.896282, 0.443430, 0.007010,
		-0.440134, 0.887459, 0.136743,
		39.318592, 43.359509, 52.313553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059639, 43.112263, 52.713032>,  <39.626686, 42.738285, 52.217831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059639, 43.112263, 52.713032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708473, 43.301353, 52.743469>,  <39.497772, 43.414806, 52.761730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708473, 43.301353, 52.743469>,  <40.059639, 43.112263, 52.713032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708473, 43.301353, 52.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003478, -0.152616, 0.988279,
		0.478800, 0.867892, 0.132340,
		-0.877917, 0.472728, 0.076091,
		39.445099, 43.443172, 52.766296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087204, 43.603794, 53.193012>,  <40.059639, 43.112263, 52.713032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087204, 43.603794, 53.193012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687683, 43.598480, 53.174160>,  <39.447971, 43.595291, 53.162849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687683, 43.598480, 53.174160>,  <40.087204, 43.603794, 53.193012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687683, 43.598480, 53.174160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043303, -0.209883, 0.976767,
		-0.022871, 0.977636, 0.209055,
		-0.998800, -0.013287, -0.047135,
		39.388042, 43.594494, 53.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888950, 44.064342, 53.714577>,  <40.087204, 43.603794, 53.193012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888950, 44.064342, 53.714577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561737, 43.841965, 53.655602>,  <39.365410, 43.708538, 53.620216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561737, 43.841965, 53.655602>,  <39.888950, 44.064342, 53.714577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561737, 43.841965, 53.655602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161006, -0.024757, 0.986643,
		-0.552173, 0.830848, -0.069259,
		-0.818035, -0.555949, -0.147442,
		39.316326, 43.675179, 53.611370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344448, 44.305500, 54.134991>,  <39.888950, 44.064342, 53.714577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344448, 44.305500, 54.134991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210831, 43.936424, 54.057987>,  <39.130661, 43.714977, 54.011787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210831, 43.936424, 54.057987>,  <39.344448, 44.305500, 54.134991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210831, 43.936424, 54.057987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250890, -0.109829, 0.961765,
		-0.908553, 0.369569, -0.194806,
		-0.334043, -0.922690, -0.192506,
		39.110619, 43.659618, 54.000237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706604, 44.295734, 54.368332>,  <39.344448, 44.305500, 54.134991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706604, 44.295734, 54.368332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814575, 43.911583, 54.340576>,  <38.879356, 43.681091, 54.323921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814575, 43.911583, 54.340576>,  <38.706604, 44.295734, 54.368332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814575, 43.911583, 54.340576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310339, -0.154991, 0.937906,
		-0.911499, -0.231631, -0.339878,
		0.269926, -0.960378, -0.069390,
		38.895554, 43.623470, 54.319759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154362, 43.980972, 54.664635>,  <38.706604, 44.295734, 54.368332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154362, 43.980972, 54.664635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449226, 43.710953, 54.676662>,  <38.626144, 43.548943, 54.683880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449226, 43.710953, 54.676662>,  <38.154362, 43.980972, 54.664635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449226, 43.710953, 54.676662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298369, -0.285256, 0.910827,
		-0.606273, -0.680398, -0.411693,
		0.737162, -0.675046, 0.030066,
		38.670376, 43.508438, 54.685684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835583, 43.399067, 54.941998>,  <38.154362, 43.980972, 54.664635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835583, 43.399067, 54.941998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220642, 43.319633, 55.015625>,  <38.451675, 43.271973, 55.059799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220642, 43.319633, 55.015625>,  <37.835583, 43.399067, 54.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220642, 43.319633, 55.015625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257900, -0.465382, 0.846704,
		-0.082481, -0.862545, -0.499212,
		0.962645, -0.198583, 0.184065,
		38.509434, 43.260059, 55.070843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885628, 42.725075, 55.021626>,  <37.835583, 43.399067, 54.941998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885628, 42.725075, 55.021626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210308, 42.866493, 55.207588>,  <38.405117, 42.951344, 55.319168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210308, 42.866493, 55.207588>,  <37.885628, 42.725075, 55.021626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210308, 42.866493, 55.207588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235907, -0.529713, 0.814709,
		0.534309, -0.770978, -0.346565,
		0.811703, 0.353549, 0.464910,
		38.453819, 42.972557, 55.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234287, 42.200844, 55.185921>,  <37.885628, 42.725075, 55.021626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234287, 42.200844, 55.185921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360363, 42.483894, 55.438881>,  <38.436008, 42.653725, 55.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360363, 42.483894, 55.438881>,  <38.234287, 42.200844, 55.185921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360363, 42.483894, 55.438881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355157, -0.529991, 0.770047,
		0.880069, -0.467308, 0.084272,
		0.315186, 0.707625, 0.632397,
		38.454918, 42.696182, 55.628601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538345, 41.757557, 55.771706>,  <38.234287, 42.200844, 55.185921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538345, 41.757557, 55.771706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485889, 42.126709, 55.916531>,  <38.454414, 42.348202, 56.003426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485889, 42.126709, 55.916531>,  <38.538345, 41.757557, 55.771706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485889, 42.126709, 55.916531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076265, -0.373530, 0.924478,
		0.988426, 0.093624, 0.119368,
		-0.131141, 0.922881, 0.362067,
		38.446548, 42.403572, 56.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039608, 41.859261, 56.295895>,  <38.538345, 41.757557, 55.771706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039608, 41.859261, 56.295895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733822, 42.111603, 56.348988>,  <38.550350, 42.263008, 56.380844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733822, 42.111603, 56.348988>,  <39.039608, 41.859261, 56.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733822, 42.111603, 56.348988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280046, -0.510420, 0.813047,
		0.580660, 0.584377, 0.566867,
		-0.764466, 0.630853, 0.132728,
		38.504482, 42.300858, 56.388805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109554, 42.080475, 57.031712>,  <39.039608, 41.859261, 56.295895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109554, 42.080475, 57.031712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735161, 42.147606, 56.907928>,  <38.510525, 42.187885, 56.833660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735161, 42.147606, 56.907928>,  <39.109554, 42.080475, 57.031712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735161, 42.147606, 56.907928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338050, -0.673827, 0.657023,
		-0.098251, 0.719576, 0.687428,
		-0.935986, 0.167832, -0.309456,
		38.454365, 42.197956, 56.815090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653923, 42.113174, 57.640251>,  <39.109554, 42.080475, 57.031712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653923, 42.113174, 57.640251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374344, 42.066429, 57.358028>,  <38.206596, 42.038380, 57.188694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374344, 42.066429, 57.358028>,  <38.653923, 42.113174, 57.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374344, 42.066429, 57.358028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558866, -0.526334, 0.640813,
		-0.446247, 0.842208, 0.302570,
		-0.698951, -0.116865, -0.705557,
		38.164658, 42.031368, 57.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004177, 42.387211, 57.887489>,  <38.653923, 42.113174, 57.640251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004177, 42.387211, 57.887489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929947, 42.118973, 57.600197>,  <37.885410, 41.958031, 57.427822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929947, 42.118973, 57.600197>,  <38.004177, 42.387211, 57.887489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929947, 42.118973, 57.600197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637657, -0.473941, 0.607267,
		-0.747633, 0.570681, -0.339660,
		-0.185577, -0.670599, -0.718233,
		37.874275, 41.917793, 57.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285492, 42.240891, 57.981461>,  <38.004177, 42.387211, 57.887489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285492, 42.240891, 57.981461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454262, 41.945808, 57.770645>,  <37.555523, 41.768757, 57.644157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454262, 41.945808, 57.770645>,  <37.285492, 42.240891, 57.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454262, 41.945808, 57.770645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713812, -0.628701, 0.308558,
		-0.558973, 0.246016, -0.791850,
		0.421926, -0.737707, -0.527035,
		37.580841, 41.724495, 57.612534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682590, 41.898956, 57.789639>,  <37.285492, 42.240891, 57.981461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682590, 41.898956, 57.789639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977043, 41.630173, 57.757172>,  <37.153713, 41.468903, 57.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977043, 41.630173, 57.757172>,  <36.682590, 41.898956, 57.789639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977043, 41.630173, 57.757172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599876, -0.703255, 0.381552,
		-0.313465, -0.232184, -0.920777,
		0.736131, -0.671955, -0.081164,
		37.197884, 41.428585, 57.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305115, 41.230167, 57.633881>,  <36.682590, 41.898956, 57.789639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305115, 41.230167, 57.633881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670013, 41.111969, 57.747368>,  <36.888950, 41.041050, 57.815460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670013, 41.111969, 57.747368>,  <36.305115, 41.230167, 57.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670013, 41.111969, 57.747368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392907, -0.827115, 0.401876,
		0.115911, -0.478082, -0.870633,
		0.912244, -0.295496, 0.283714,
		36.943687, 41.023319, 57.832481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383503, 40.582954, 57.547993>,  <36.305115, 41.230167, 57.633881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383503, 40.582954, 57.547993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654697, 40.681160, 57.825138>,  <36.817413, 40.740082, 57.991425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654697, 40.681160, 57.825138>,  <36.383503, 40.582954, 57.547993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654697, 40.681160, 57.825138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378875, -0.691010, 0.615597,
		0.629913, -0.679873, -0.375475,
		0.677985, 0.245515, 0.692863,
		36.858093, 40.754814, 58.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555878, 39.986862, 57.775467>,  <36.383503, 40.582954, 57.547993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555878, 39.986862, 57.775467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641762, 40.245720, 58.068069>,  <36.693291, 40.401035, 58.243633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641762, 40.245720, 58.068069>,  <36.555878, 39.986862, 57.775467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641762, 40.245720, 58.068069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532187, -0.550502, 0.643214,
		0.818949, -0.527402, 0.226205,
		0.214706, 0.647143, 0.731510,
		36.706173, 40.439861, 58.287521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907948, 39.813156, 58.398121>,  <36.555878, 39.986862, 57.775467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907948, 39.813156, 58.398121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828236, 39.422745, 58.363132>,  <36.780407, 39.188496, 58.342140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828236, 39.422745, 58.363132>,  <36.907948, 39.813156, 58.398121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828236, 39.422745, 58.363132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135141, 0.061031, -0.988945,
		0.970579, -0.208901, 0.119739,
		-0.199283, -0.976030, -0.087466,
		36.768452, 39.129936, 58.336891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449959, 39.512997, 58.040066>,  <36.907948, 39.813156, 58.398121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449959, 39.512997, 58.040066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136681, 39.272293, 57.977470>,  <36.948715, 39.127869, 57.939915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136681, 39.272293, 57.977470>,  <37.449959, 39.512997, 58.040066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136681, 39.272293, 57.977470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197309, -0.001867, -0.980340,
		0.589639, -0.798673, 0.120195,
		-0.783195, -0.601762, -0.156484,
		36.901722, 39.091766, 57.930527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711342, 38.913258, 57.600346>,  <37.449959, 39.512997, 58.040066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711342, 38.913258, 57.600346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316143, 38.966621, 57.569206>,  <37.079025, 38.998642, 57.550522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316143, 38.966621, 57.569206>,  <37.711342, 38.913258, 57.600346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316143, 38.966621, 57.569206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084666, 0.046182, -0.995339,
		-0.129196, -0.989984, -0.056923,
		-0.987998, 0.133414, -0.077851,
		37.019745, 39.006645, 57.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590252, 38.507092, 56.999825>,  <37.711342, 38.913258, 57.600346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590252, 38.507092, 56.999825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281975, 38.760345, 57.028618>,  <37.097008, 38.912296, 57.045895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281975, 38.760345, 57.028618>,  <37.590252, 38.507092, 56.999825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281975, 38.760345, 57.028618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049861, 0.052701, -0.997365,
		-0.635258, -0.772247, -0.009047,
		-0.770689, 0.633133, 0.071984,
		37.050770, 38.950287, 57.050213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140461, 38.303818, 56.522648>,  <37.590252, 38.507092, 56.999825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140461, 38.303818, 56.522648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014854, 38.681404, 56.563301>,  <36.939491, 38.907955, 56.587692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014854, 38.681404, 56.563301>,  <37.140461, 38.303818, 56.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014854, 38.681404, 56.563301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028460, 0.116362, -0.992799,
		-0.948992, -0.308859, -0.063404,
		-0.314012, 0.943963, 0.101636,
		36.920650, 38.964592, 56.593792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847176, 38.415375, 55.878757>,  <37.140461, 38.303818, 56.522648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847176, 38.415375, 55.878757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909611, 38.777786, 56.036110>,  <36.947071, 38.995232, 56.130520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909611, 38.777786, 56.036110>,  <36.847176, 38.415375, 55.878757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909611, 38.777786, 56.036110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064695, 0.388027, -0.919375,
		-0.985623, 0.168951, 0.001950,
		0.156086, 0.906030, 0.393379,
		36.956436, 39.049595, 56.154125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409584, 39.009998, 55.507072>,  <36.847176, 38.415375, 55.878757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409584, 39.009998, 55.507072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705551, 39.196678, 55.700859>,  <36.883133, 39.308685, 55.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705551, 39.196678, 55.700859>,  <36.409584, 39.009998, 55.507072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705551, 39.196678, 55.700859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282741, 0.437717, -0.853500,
		-0.610389, 0.768500, 0.191920,
		0.739921, 0.466703, 0.484464,
		36.927528, 39.336689, 55.846199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299709, 39.712337, 55.351856>,  <36.409584, 39.009998, 55.507072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299709, 39.712337, 55.351856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681885, 39.677788, 55.464760>,  <36.911190, 39.657059, 55.532501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681885, 39.677788, 55.464760>,  <36.299709, 39.712337, 55.351856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681885, 39.677788, 55.464760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285391, 0.514549, -0.808573,
		-0.075396, 0.853099, 0.516273,
		0.955441, -0.086377, 0.282261,
		36.968517, 39.651875, 55.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630737, 40.417538, 55.241741>,  <36.299709, 39.712337, 55.351856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630737, 40.417538, 55.241741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931557, 40.154343, 55.226357>,  <37.112049, 39.996426, 55.217125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931557, 40.154343, 55.226357>,  <36.630737, 40.417538, 55.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931557, 40.154343, 55.226357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306220, 0.400482, -0.863622,
		0.583657, 0.637705, 0.502670,
		0.752046, -0.657987, -0.038466,
		37.157169, 39.956947, 55.214817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206055, 40.692265, 54.924026>,  <36.630737, 40.417538, 55.241741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206055, 40.692265, 54.924026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342667, 40.318146, 54.886955>,  <37.424633, 40.093674, 54.864712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342667, 40.318146, 54.886955>,  <37.206055, 40.692265, 54.924026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342667, 40.318146, 54.886955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546935, 0.277962, -0.789683,
		0.764345, 0.219010, 0.606475,
		0.341525, -0.935292, -0.092674,
		37.445126, 40.037560, 54.859154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974358, 40.817589, 54.992535>,  <37.206055, 40.692265, 54.924026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974358, 40.817589, 54.992535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914917, 40.473541, 54.797344>,  <37.879253, 40.267113, 54.680229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914917, 40.473541, 54.797344>,  <37.974358, 40.817589, 54.992535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914917, 40.473541, 54.797344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574577, 0.326518, -0.750498,
		0.804848, -0.391903, 0.445682,
		-0.148599, -0.860115, -0.487976,
		37.870338, 40.215508, 54.650951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581379, 40.643391, 54.631039>,  <37.974358, 40.817589, 54.992535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581379, 40.643391, 54.631039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310692, 40.437065, 54.420902>,  <38.148277, 40.313271, 54.294819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310692, 40.437065, 54.420902>,  <38.581379, 40.643391, 54.631039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310692, 40.437065, 54.420902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452146, 0.271966, -0.849470,
		0.581044, -0.812385, 0.049179,
		-0.676721, -0.515815, -0.525341,
		38.107674, 40.282322, 54.263302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885822, 40.270813, 54.044147>,  <38.581379, 40.643391, 54.631039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885822, 40.270813, 54.044147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507259, 40.241875, 53.918240>,  <38.280121, 40.224510, 53.842697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507259, 40.241875, 53.918240>,  <38.885822, 40.270813, 54.044147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507259, 40.241875, 53.918240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313491, 0.028677, -0.949158,
		0.077703, -0.996966, -0.004458,
		-0.946407, -0.072355, -0.314768,
		38.223339, 40.220169, 53.823811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929413, 39.881809, 53.449539>,  <38.885822, 40.270813, 54.044147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929413, 39.881809, 53.449539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576832, 40.066116, 53.408104>,  <38.365284, 40.176701, 53.383244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576832, 40.066116, 53.408104>,  <38.929413, 39.881809, 53.449539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576832, 40.066116, 53.408104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185031, 0.135125, -0.973398,
		-0.434518, -0.877171, -0.204364,
		-0.881452, 0.460773, -0.103590,
		38.312397, 40.204350, 53.377026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715164, 39.690849, 52.731995>,  <38.929413, 39.881809, 53.449539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715164, 39.690849, 52.731995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504005, 40.006721, 52.857040>,  <38.377312, 40.196247, 52.932068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504005, 40.006721, 52.857040>,  <38.715164, 39.690849, 52.731995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504005, 40.006721, 52.857040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009999, 0.362271, -0.932019,
		-0.849251, -0.495133, -0.183345,
		-0.527894, 0.789685, 0.312610,
		38.345638, 40.243626, 52.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246971, 39.750652, 52.241558>,  <38.715164, 39.690849, 52.731995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246971, 39.750652, 52.241558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256058, 40.114418, 52.407661>,  <38.261509, 40.332680, 52.507324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256058, 40.114418, 52.407661>,  <38.246971, 39.750652, 52.241558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256058, 40.114418, 52.407661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019585, 0.415693, -0.909294,
		-0.999550, 0.012522, 0.027253,
		0.022715, 0.909419, 0.415261,
		38.262871, 40.387245, 52.532238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766022, 40.098892, 51.922623>,  <38.246971, 39.750652, 52.241558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766022, 40.098892, 51.922623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011139, 40.379303, 52.068527>,  <38.158211, 40.547550, 52.156071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011139, 40.379303, 52.068527>,  <37.766022, 40.098892, 51.922623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011139, 40.379303, 52.068527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009065, 0.455313, -0.890285,
		-0.790192, 0.548867, 0.272658,
		0.612793, 0.701024, 0.364760,
		38.194977, 40.589611, 52.177956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516895, 40.725090, 51.611816>,  <37.766022, 40.098892, 51.922623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516895, 40.725090, 51.611816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878616, 40.846756, 51.731628>,  <38.095650, 40.919758, 51.803516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878616, 40.846756, 51.731628>,  <37.516895, 40.725090, 51.611816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878616, 40.846756, 51.731628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089598, 0.550781, -0.829827,
		-0.417381, 0.777252, 0.470821,
		0.904304, 0.304169, 0.299526,
		38.149906, 40.938007, 51.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599419, 41.496254, 51.451290>,  <37.516895, 40.725090, 51.611816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599419, 41.496254, 51.451290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977463, 41.366066, 51.462845>,  <38.204288, 41.287952, 51.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977463, 41.366066, 51.462845>,  <37.599419, 41.496254, 51.451290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977463, 41.366066, 51.462845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239560, 0.630079, -0.738655,
		0.222214, 0.705029, 0.673465,
		0.945110, -0.325474, 0.028884,
		38.260994, 41.268425, 51.471512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935452, 42.083447, 51.342037>,  <37.599419, 41.496254, 51.451290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935452, 42.083447, 51.342037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165115, 41.769936, 51.247353>,  <38.302914, 41.581829, 51.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165115, 41.769936, 51.247353>,  <37.935452, 42.083447, 51.342037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165115, 41.769936, 51.247353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326893, 0.484518, -0.811408,
		0.750656, 0.388497, 0.534402,
		0.574157, -0.783781, -0.236709,
		38.337364, 41.534801, 51.176338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600815, 42.349995, 51.085949>,  <37.935452, 42.083447, 51.342037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600815, 42.349995, 51.085949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584846, 41.976898, 50.942619>,  <38.575268, 41.753040, 50.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584846, 41.976898, 50.942619>,  <38.600815, 42.349995, 51.085949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584846, 41.976898, 50.942619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434098, 0.306814, -0.847009,
		0.899981, -0.189360, 0.392654,
		-0.039918, -0.932742, -0.358328,
		38.572872, 41.697075, 50.835121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219898, 42.304325, 50.717083>,  <38.600815, 42.349995, 51.085949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219898, 42.304325, 50.717083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016754, 41.984764, 50.588184>,  <38.894867, 41.793030, 50.510845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016754, 41.984764, 50.588184>,  <39.219898, 42.304325, 50.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016754, 41.984764, 50.588184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442114, 0.079330, -0.893444,
		0.739335, -0.596211, 0.312916,
		-0.507858, -0.798899, -0.322245,
		38.864395, 41.745094, 50.491512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717094, 41.888245, 50.517597>,  <39.219898, 42.304325, 50.717083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717094, 41.888245, 50.517597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387596, 41.769554, 50.324352>,  <39.189896, 41.698338, 50.208405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387596, 41.769554, 50.324352>,  <39.717094, 41.888245, 50.517597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387596, 41.769554, 50.324352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507747, -0.006961, -0.861478,
		0.252262, -0.954937, 0.156397,
		-0.823745, -0.296728, -0.483111,
		39.140472, 41.680534, 50.179420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956295, 41.421375, 50.071098>,  <39.717094, 41.888245, 50.517597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956295, 41.421375, 50.071098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615364, 41.537247, 49.896912>,  <39.410805, 41.606770, 49.792400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615364, 41.537247, 49.896912>,  <39.956295, 41.421375, 50.071098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615364, 41.537247, 49.896912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475220, 0.081212, -0.876111,
		-0.218430, -0.953671, -0.206882,
		-0.852323, 0.289683, -0.435464,
		39.359669, 41.624153, 49.766273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004639, 41.260994, 49.385708>,  <39.956295, 41.421375, 50.071098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004639, 41.260994, 49.385708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702721, 41.523056, 49.372677>,  <39.521572, 41.680294, 49.364861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702721, 41.523056, 49.372677>,  <40.004639, 41.260994, 49.385708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702721, 41.523056, 49.372677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277075, 0.273414, -0.921126,
		-0.594573, -0.704286, -0.387898,
		-0.754793, 0.655154, -0.032576,
		39.476284, 41.719601, 49.362904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574505, 41.074814, 48.868641>,  <40.004639, 41.260994, 49.385708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574505, 41.074814, 48.868641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498325, 41.465027, 48.912567>,  <39.452618, 41.699154, 48.938923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498325, 41.465027, 48.912567>,  <39.574505, 41.074814, 48.868641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498325, 41.465027, 48.912567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229811, 0.153059, -0.961124,
		-0.954420, -0.157807, -0.253338,
		-0.190447, 0.975536, 0.109817,
		39.441193, 41.757687, 48.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216312, 41.246979, 48.294849>,  <39.574505, 41.074814, 48.868641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216312, 41.246979, 48.294849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372185, 41.582413, 48.447128>,  <39.465710, 41.783672, 48.538494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372185, 41.582413, 48.447128>,  <39.216312, 41.246979, 48.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372185, 41.582413, 48.447128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316463, 0.266269, -0.910468,
		-0.864869, 0.475270, -0.161619,
		0.389684, 0.838582, 0.380693,
		39.489090, 41.833988, 48.561337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051266, 41.660915, 47.832653>,  <39.216312, 41.246979, 48.294849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051266, 41.660915, 47.832653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299370, 41.911423, 48.021572>,  <39.448231, 42.061726, 48.134926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299370, 41.911423, 48.021572>,  <39.051266, 41.660915, 47.832653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299370, 41.911423, 48.021572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243099, 0.418997, -0.874840,
		-0.745774, 0.657445, 0.107643,
		0.620261, 0.626265, 0.472301,
		39.485447, 42.099300, 48.163261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813709, 42.293755, 47.726360>,  <39.051266, 41.660915, 47.832653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813709, 42.293755, 47.726360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206085, 42.305458, 47.803204>,  <39.441509, 42.312481, 47.849308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206085, 42.305458, 47.803204>,  <38.813709, 42.293755, 47.726360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206085, 42.305458, 47.803204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157633, 0.458304, -0.874705,
		-0.113636, 0.888314, 0.444956,
		0.980938, 0.029258, 0.192107,
		39.500366, 42.314236, 47.860836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989754, 42.851833, 47.395519>,  <38.813709, 42.293755, 47.726360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989754, 42.851833, 47.395519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345810, 42.675682, 47.442352>,  <39.559444, 42.569992, 47.470451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345810, 42.675682, 47.442352>,  <38.989754, 42.851833, 47.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345810, 42.675682, 47.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261104, 0.282347, -0.923095,
		0.373454, 0.852259, 0.366314,
		0.890144, -0.440380, 0.117084,
		39.612854, 42.543568, 47.477478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506233, 43.351074, 47.101620>,  <38.989754, 42.851833, 47.395519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506233, 43.351074, 47.101620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705254, 43.006660, 47.143703>,  <39.824665, 42.800011, 47.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705254, 43.006660, 47.143703>,  <39.506233, 43.351074, 47.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705254, 43.006660, 47.143703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400791, 0.120620, -0.908194,
		0.769294, 0.494038, 0.405109,
		0.497546, -0.861033, 0.105214,
		39.854519, 42.748352, 47.175266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208324, 43.581451, 47.012032>,  <39.506233, 43.351074, 47.101620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208324, 43.581451, 47.012032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159386, 43.194664, 46.922581>,  <40.130024, 42.962593, 46.868912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159386, 43.194664, 46.922581>,  <40.208324, 43.581451, 47.012032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159386, 43.194664, 46.922581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389448, 0.160475, -0.906961,
		0.912886, -0.198055, 0.356950,
		-0.122347, -0.966965, -0.223627,
		40.122681, 42.904575, 46.855492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786060, 43.407864, 46.584057>,  <40.208324, 43.581451, 47.012032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786060, 43.407864, 46.584057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512001, 43.123909, 46.518768>,  <40.347565, 42.953537, 46.479595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512001, 43.123909, 46.518768>,  <40.786060, 43.407864, 46.584057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512001, 43.123909, 46.518768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287933, -0.058121, -0.955885,
		0.669083, -0.701915, 0.244221,
		-0.685144, -0.709885, -0.163217,
		40.306458, 42.910942, 46.469803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116562, 42.921505, 46.141891>,  <40.786060, 43.407864, 46.584057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116562, 42.921505, 46.141891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728004, 42.844833, 46.085819>,  <40.494869, 42.798832, 46.052177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728004, 42.844833, 46.085819>,  <41.116562, 42.921505, 46.141891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728004, 42.844833, 46.085819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179553, -0.206528, -0.961825,
		0.155409, -0.959482, 0.235037,
		-0.971395, -0.191678, -0.140181,
		40.436584, 42.787331, 46.043766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134266, 42.365055, 45.651470>,  <41.116562, 42.921505, 46.141891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134266, 42.365055, 45.651470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760002, 42.502647, 45.619919>,  <40.535442, 42.585201, 45.600986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760002, 42.502647, 45.619919>,  <41.134266, 42.365055, 45.651470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760002, 42.502647, 45.619919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045995, -0.102745, -0.993644,
		-0.349898, -0.933339, 0.080313,
		-0.935658, 0.343980, -0.078879,
		40.479305, 42.605843, 45.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853901, 41.894772, 45.192059>,  <41.134266, 42.365055, 45.651470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853901, 41.894772, 45.192059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631638, 42.227280, 45.198196>,  <40.498280, 42.426785, 45.201881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631638, 42.227280, 45.198196>,  <40.853901, 41.894772, 45.192059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631638, 42.227280, 45.198196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017792, 0.030343, -0.999381,
		-0.831223, -0.555037, -0.031650,
		-0.555654, 0.831272, 0.015346,
		40.464943, 42.476662, 45.202801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263767, 41.856758, 44.687626>,  <40.853901, 41.894772, 45.192059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263767, 41.856758, 44.687626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334114, 42.242821, 44.765137>,  <40.376320, 42.474457, 44.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334114, 42.242821, 44.765137>,  <40.263767, 41.856758, 44.687626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334114, 42.242821, 44.765137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063979, 0.185222, -0.980612,
		-0.982333, 0.184851, -0.029176,
		0.175863, 0.965154, 0.193776,
		40.386871, 42.532368, 44.823269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822269, 42.202763, 44.193279>,  <40.263767, 41.856758, 44.687626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822269, 42.202763, 44.193279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075249, 42.495346, 44.295242>,  <40.227036, 42.670895, 44.356419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075249, 42.495346, 44.295242>,  <39.822269, 42.202763, 44.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075249, 42.495346, 44.295242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190818, 0.171819, -0.966471,
		-0.750728, 0.659888, -0.030907,
		0.632452, 0.731454, 0.254908,
		40.264984, 42.714783, 44.371716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711716, 42.747124, 43.701286>,  <39.822269, 42.202763, 44.193279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711716, 42.747124, 43.701286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078693, 42.787987, 43.855095>,  <40.298882, 42.812504, 43.947380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078693, 42.787987, 43.855095>,  <39.711716, 42.747124, 43.701286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078693, 42.787987, 43.855095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360908, 0.193054, -0.912401,
		-0.167446, 0.975855, 0.140246,
		0.917446, 0.102162, 0.384520,
		40.353928, 42.818634, 43.970451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940586, 43.441952, 43.534634>,  <39.711716, 42.747124, 43.701286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940586, 43.441952, 43.534634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260433, 43.208824, 43.592499>,  <40.452343, 43.068947, 43.627216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260433, 43.208824, 43.592499>,  <39.940586, 43.441952, 43.534634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260433, 43.208824, 43.592499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417849, 0.366998, -0.831092,
		0.431285, 0.725007, 0.536990,
		0.799622, -0.582818, 0.144662,
		40.500320, 43.033978, 43.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.511932, 38.140938, 52.525421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.838722, 38.136642, 52.756050>,  <42.034798, 38.134064, 52.894428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.838722, 38.136642, 52.756050>,  <41.511932, 38.140938, 52.525421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838722, 38.136642, 52.756050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550416, 0.312780, -0.774087,
		-0.172028, 0.949765, 0.261445,
		0.816975, -0.010739, 0.576573,
		42.083817, 38.133419, 52.929024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824860, 38.716801, 52.301559>,  <41.511932, 38.140938, 52.525421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824860, 38.716801, 52.301559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.109581, 38.490685, 52.468307>,  <42.280415, 38.355015, 52.568356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.109581, 38.490685, 52.468307>,  <41.824860, 38.716801, 52.301559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109581, 38.490685, 52.468307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562131, 0.102637, -0.820655,
		0.421120, 0.818483, 0.390824,
		0.711805, -0.565288, 0.416872,
		42.323124, 38.321098, 52.593369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447311, 39.093559, 52.237000>,  <41.824860, 38.716801, 52.301559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447311, 39.093559, 52.237000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.540092, 38.704697, 52.250301>,  <42.595760, 38.471378, 52.258282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.540092, 38.704697, 52.250301>,  <42.447311, 39.093559, 52.237000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540092, 38.704697, 52.250301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677843, 0.137020, -0.722326,
		0.697658, 0.190090, 0.690753,
		0.231954, -0.972158, 0.033258,
		42.609680, 38.413048, 52.260277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076626, 39.199123, 52.064003>,  <42.447311, 39.093559, 52.237000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076626, 39.199123, 52.064003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.020210, 38.807014, 52.008625>,  <42.986359, 38.571747, 51.975399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.020210, 38.807014, 52.008625>,  <43.076626, 39.199123, 52.064003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020210, 38.807014, 52.008625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507520, 0.048472, -0.860276,
		0.850018, -0.191598, 0.490673,
		-0.141043, -0.980276, -0.138442,
		42.977898, 38.512932, 51.967091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666424, 38.918812, 51.741138>,  <43.076626, 39.199123, 52.064003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666424, 38.918812, 51.741138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.388947, 38.648102, 51.642532>,  <43.222462, 38.485676, 51.583370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.388947, 38.648102, 51.642532>,  <43.666424, 38.918812, 51.741138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388947, 38.648102, 51.642532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308383, 0.030230, -0.950782,
		0.650919, -0.735568, 0.187736,
		-0.693689, -0.676776, -0.246513,
		43.180840, 38.445068, 51.568577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973026, 38.462536, 51.394741>,  <43.666424, 38.918812, 51.741138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973026, 38.462536, 51.394741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.597443, 38.370049, 51.292839>,  <43.372093, 38.314556, 51.231697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.597443, 38.370049, 51.292839>,  <43.973026, 38.462536, 51.394741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597443, 38.370049, 51.292839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249537, 0.052039, -0.966966,
		0.236840, -0.971509, 0.008836,
		-0.938956, -0.231221, -0.254753,
		43.315754, 38.300682, 51.216412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995323, 37.848053, 50.893394>,  <43.973026, 38.462536, 51.394741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995323, 37.848053, 50.893394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.659435, 38.059509, 50.843746>,  <43.457901, 38.186382, 50.813957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.659435, 38.059509, 50.843746>,  <43.995323, 37.848053, 50.893394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659435, 38.059509, 50.843746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199705, 0.088091, -0.975888,
		-0.504957, -0.844265, -0.179544,
		-0.839724, 0.528637, -0.124122,
		43.407516, 38.218102, 50.806511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768860, 37.674351, 50.203789>,  <43.995323, 37.848053, 50.893394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768860, 37.674351, 50.203789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.599495, 38.021446, 50.307903>,  <43.497875, 38.229706, 50.370373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.599495, 38.021446, 50.307903>,  <43.768860, 37.674351, 50.203789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599495, 38.021446, 50.307903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020963, 0.277852, -0.960395,
		-0.905696, -0.412096, -0.099455,
		-0.423408, 0.867742, 0.260288,
		43.472473, 38.281769, 50.385990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312794, 37.723858, 49.668858>,  <43.768860, 37.674351, 50.203789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312794, 37.723858, 49.668858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.336014, 38.085129, 49.838989>,  <43.349945, 38.301891, 49.941067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.336014, 38.085129, 49.838989>,  <43.312794, 37.723858, 49.668858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336014, 38.085129, 49.838989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002039, 0.426154, -0.904648,
		-0.998312, 0.051648, 0.026580,
		0.058051, 0.903175, 0.425329,
		43.353428, 38.356083, 49.966587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799671, 38.136414, 49.385937>,  <43.312794, 37.723858, 49.668858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799671, 38.136414, 49.385937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.080154, 38.387383, 49.521378>,  <43.248444, 38.537964, 49.602642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.080154, 38.387383, 49.521378>,  <42.799671, 38.136414, 49.385937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080154, 38.387383, 49.521378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082394, 0.543057, -0.835643,
		-0.708183, 0.558058, 0.432491,
		0.701205, 0.627423, 0.338603,
		43.290516, 38.575611, 49.622959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542980, 38.723305, 49.220203>,  <42.799671, 38.136414, 49.385937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542980, 38.723305, 49.220203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.928696, 38.816368, 49.270809>,  <43.160126, 38.872208, 49.301174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.928696, 38.816368, 49.270809>,  <42.542980, 38.723305, 49.220203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928696, 38.816368, 49.270809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002215, 0.484792, -0.874627,
		-0.264827, 0.843116, 0.467997,
		0.964293, 0.232662, 0.126518,
		43.217983, 38.886166, 49.308765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587158, 39.503101, 49.049835>,  <42.542980, 38.723305, 49.220203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587158, 39.503101, 49.049835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.949009, 39.346405, 48.982670>,  <43.166119, 39.252388, 48.942371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.949009, 39.346405, 48.982670>,  <42.587158, 39.503101, 49.049835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949009, 39.346405, 48.982670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026863, 0.445593, -0.894832,
		0.425366, 0.804975, 0.413617,
		0.904623, -0.391742, -0.167916,
		43.220394, 39.228882, 48.932297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906429, 39.980007, 48.685730>,  <42.587158, 39.503101, 49.049835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906429, 39.980007, 48.685730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.182465, 39.694763, 48.636333>,  <43.348087, 39.523617, 48.606697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.182465, 39.694763, 48.636333>,  <42.906429, 39.980007, 48.685730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182465, 39.694763, 48.636333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105552, 0.267982, -0.957624,
		0.715982, 0.647814, 0.260203,
		0.690093, -0.713107, -0.123492,
		43.389492, 39.480831, 48.599285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467171, 40.341789, 48.299026>,  <42.906429, 39.980007, 48.685730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467171, 40.341789, 48.299026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.541481, 39.956055, 48.223618>,  <43.586067, 39.724613, 48.178371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.541481, 39.956055, 48.223618>,  <43.467171, 40.341789, 48.299026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541481, 39.956055, 48.223618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310909, 0.239699, -0.919717,
		0.932107, 0.112247, 0.344351,
		0.185776, -0.964337, -0.188526,
		43.597214, 39.666752, 48.167061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188274, 40.225880, 48.079914>,  <43.467171, 40.341789, 48.299026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188274, 40.225880, 48.079914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.958996, 39.940025, 47.919544>,  <43.821426, 39.768513, 47.823322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.958996, 39.940025, 47.919544>,  <44.188274, 40.225880, 48.079914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958996, 39.940025, 47.919544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358646, 0.221126, -0.906904,
		0.736761, -0.663626, 0.129553,
		-0.573198, -0.714636, -0.400924,
		43.787037, 39.725636, 47.799267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512974, 40.126827, 47.450748>,  <44.188274, 40.225880, 48.079914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512974, 40.126827, 47.450748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.178070, 39.921951, 47.374161>,  <43.977127, 39.799026, 47.328209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.178070, 39.921951, 47.374161>,  <44.512974, 40.126827, 47.450748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178070, 39.921951, 47.374161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144045, 0.131195, -0.980836,
		0.527496, -0.848792, -0.036065,
		-0.837257, -0.512192, -0.191469,
		43.926891, 39.768295, 47.316719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693115, 39.609367, 46.894573>,  <44.512974, 40.126827, 47.450748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693115, 39.609367, 46.894573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.295551, 39.652809, 46.887131>,  <44.057014, 39.678875, 46.882664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.295551, 39.652809, 46.887131>,  <44.693115, 39.609367, 46.894573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295551, 39.652809, 46.887131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021353, 0.024176, -0.999480,
		-0.108102, -0.993791, -0.026348,
		-0.993910, 0.108608, -0.018607,
		43.997379, 39.685390, 46.881550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496307, 39.196075, 46.331810>,  <44.693115, 39.609367, 46.894573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496307, 39.196075, 46.331810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.200138, 39.455360, 46.402912>,  <44.022434, 39.610931, 46.445572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.200138, 39.455360, 46.402912>,  <44.496307, 39.196075, 46.331810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200138, 39.455360, 46.402912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187603, 0.054643, -0.980724,
		-0.645426, -0.759500, 0.081146,
		-0.740426, 0.648208, 0.177752,
		43.978012, 39.649822, 46.456238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889038, 38.957516, 45.982529>,  <44.496307, 39.196075, 46.331810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889038, 38.957516, 45.982529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.835346, 39.348778, 46.046009>,  <43.803131, 39.583534, 46.084099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.835346, 39.348778, 46.046009>,  <43.889038, 38.957516, 45.982529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835346, 39.348778, 46.046009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302135, 0.112132, -0.946647,
		-0.943767, -0.175018, 0.280485,
		-0.134229, 0.978159, 0.158705,
		43.795078, 39.642227, 46.093620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247753, 39.099468, 45.684834>,  <43.889038, 38.957516, 45.982529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247753, 39.099468, 45.684834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.365623, 39.477890, 45.738716>,  <43.436344, 39.704945, 45.771046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.365623, 39.477890, 45.738716>,  <43.247753, 39.099468, 45.684834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365623, 39.477890, 45.738716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532434, 0.279605, -0.798959,
		-0.793525, 0.163707, 0.586105,
		0.294673, 0.946055, 0.134710,
		43.454025, 39.761707, 45.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628754, 39.518208, 45.654285>,  <43.247753, 39.099468, 45.684834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628754, 39.518208, 45.654285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.924431, 39.760963, 45.537479>,  <43.101837, 39.906616, 45.467396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.924431, 39.760963, 45.537479>,  <42.628754, 39.518208, 45.654285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924431, 39.760963, 45.537479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497807, 0.200303, -0.843840,
		-0.453627, 0.769131, 0.450178,
		0.739196, 0.606890, -0.292017,
		43.146191, 39.943031, 45.449875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290775, 40.083073, 45.513931>,  <42.628754, 39.518208, 45.654285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290775, 40.083073, 45.513931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.643196, 40.084175, 45.324726>,  <42.854649, 40.084835, 45.211205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.643196, 40.084175, 45.324726>,  <42.290775, 40.083073, 45.513931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643196, 40.084175, 45.324726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471041, 0.096512, -0.876816,
		0.043238, 0.995328, 0.086328,
		0.881051, 0.002752, -0.473013,
		42.907513, 40.084999, 45.182823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585846, 40.412014, 44.949524>,  <42.290775, 40.083073, 45.513931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585846, 40.412014, 44.949524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.199585, 40.453918, 44.854408>,  <41.967831, 40.479061, 44.797337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.199585, 40.453918, 44.854408>,  <42.585846, 40.412014, 44.949524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199585, 40.453918, 44.854408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244703, -0.058779, 0.967815,
		0.087408, 0.992759, 0.082395,
		-0.965650, 0.104757, -0.237794,
		41.909889, 40.485344, 44.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274734, 40.888306, 45.474266>,  <42.585846, 40.412014, 44.949524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274734, 40.888306, 45.474266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.952049, 40.723038, 45.305264>,  <41.758438, 40.623878, 45.203861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.952049, 40.723038, 45.305264>,  <42.274734, 40.888306, 45.474266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952049, 40.723038, 45.305264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362142, -0.219345, 0.905947,
		-0.466985, 0.883843, 0.027322,
		-0.806708, -0.413169, -0.422508,
		41.710037, 40.599087, 45.178513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679089, 41.325577, 45.714031>,  <42.274734, 40.888306, 45.474266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679089, 41.325577, 45.714031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.530804, 40.964859, 45.625179>,  <41.441833, 40.748428, 45.571869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.530804, 40.964859, 45.625179>,  <41.679089, 41.325577, 45.714031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530804, 40.964859, 45.625179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397043, -0.062330, 0.915681,
		-0.839602, 0.427645, -0.334945,
		-0.370709, -0.901795, -0.222127,
		41.419590, 40.694321, 45.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012531, 41.357170, 45.896740>,  <41.679089, 41.325577, 45.714031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012531, 41.357170, 45.896740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.085308, 40.964233, 45.879330>,  <41.128975, 40.728470, 45.868885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.085308, 40.964233, 45.879330>,  <41.012531, 41.357170, 45.896740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085308, 40.964233, 45.879330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507014, -0.131650, 0.851825,
		-0.842515, -0.132918, -0.522016,
		0.181946, -0.982345, -0.043526,
		41.139893, 40.669529, 45.866272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476871, 41.137337, 46.144840>,  <41.012531, 41.357170, 45.896740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476871, 41.137337, 46.144840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.702091, 40.808449, 46.178154>,  <40.837223, 40.611118, 46.198143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.702091, 40.808449, 46.178154>,  <40.476871, 41.137337, 46.144840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702091, 40.808449, 46.178154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412683, -0.192423, 0.890318,
		-0.716011, -0.535659, -0.447659,
		0.563047, -0.822218, 0.083280,
		40.871006, 40.561783, 46.203136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069824, 40.607452, 46.352177>,  <40.476871, 41.137337, 46.144840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069824, 40.607452, 46.352177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430450, 40.478844, 46.467976>,  <40.646828, 40.401680, 46.537453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430450, 40.478844, 46.467976>,  <40.069824, 40.607452, 46.352177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430450, 40.478844, 46.467976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381356, -0.274558, 0.882715,
		-0.204326, -0.906225, -0.370144,
		0.901565, -0.321518, 0.289495,
		40.700920, 40.382389, 46.554825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965599, 39.941605, 46.690956>,  <40.069824, 40.607452, 46.352177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965599, 39.941605, 46.690956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325157, 40.069000, 46.811321>,  <40.540894, 40.145435, 46.883541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325157, 40.069000, 46.811321>,  <39.965599, 39.941605, 46.690956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325157, 40.069000, 46.811321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189943, -0.335629, 0.922645,
		0.394843, -0.886521, -0.241203,
		0.898899, 0.318485, 0.300910,
		40.594826, 40.164547, 46.901592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190945, 39.382221, 47.015961>,  <39.965599, 39.941605, 46.690956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190945, 39.382221, 47.015961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.385452, 39.708084, 47.142376>,  <40.502155, 39.903603, 47.218227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.385452, 39.708084, 47.142376>,  <40.190945, 39.382221, 47.015961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385452, 39.708084, 47.142376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144924, -0.281485, 0.948559,
		0.861708, -0.507056, -0.018815,
		0.486268, 0.814654, 0.316042,
		40.531334, 39.952480, 47.237190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724937, 39.145645, 47.484562>,  <40.190945, 39.382221, 47.015961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724937, 39.145645, 47.484562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664433, 39.531624, 47.570343>,  <40.628128, 39.763210, 47.621811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664433, 39.531624, 47.570343>,  <40.724937, 39.145645, 47.484562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664433, 39.531624, 47.570343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036728, -0.211312, 0.976728,
		0.987811, 0.155618, -0.003477,
		-0.151262, 0.964951, 0.214452,
		40.619053, 39.821110, 47.634678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238087, 39.360203, 47.962605>,  <40.724937, 39.145645, 47.484562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238087, 39.360203, 47.962605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957527, 39.630257, 48.054028>,  <40.789192, 39.792290, 48.108883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957527, 39.630257, 48.054028>,  <41.238087, 39.360203, 47.962605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957527, 39.630257, 48.054028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155626, -0.167873, 0.973447,
		0.695573, 0.718344, 0.012678,
		-0.701398, 0.675130, 0.228561,
		40.747108, 39.832794, 48.122597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408810, 39.654930, 48.659946>,  <41.238087, 39.360203, 47.962605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408810, 39.654930, 48.659946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.018272, 39.734245, 48.625450>,  <40.783951, 39.781834, 48.604752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.018272, 39.734245, 48.625450>,  <41.408810, 39.654930, 48.659946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018272, 39.734245, 48.625450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107223, -0.097639, 0.989429,
		0.187772, 0.975268, 0.116590,
		-0.976342, 0.198288, -0.086237,
		40.725368, 39.793732, 48.599579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354385, 40.130650, 49.227875>,  <41.408810, 39.654930, 48.659946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354385, 40.130650, 49.227875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996571, 39.992226, 49.114704>,  <40.781883, 39.909172, 49.046803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996571, 39.992226, 49.114704>,  <41.354385, 40.130650, 49.227875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996571, 39.992226, 49.114704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217645, -0.215649, 0.951906,
		-0.390430, 0.913092, 0.117588,
		-0.894536, -0.346060, -0.282926,
		40.728210, 39.888409, 49.029827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887947, 40.488308, 49.592720>,  <41.354385, 40.130650, 49.227875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887947, 40.488308, 49.592720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722542, 40.139030, 49.489536>,  <40.623299, 39.929466, 49.427628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722542, 40.139030, 49.489536>,  <40.887947, 40.488308, 49.592720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722542, 40.139030, 49.489536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280983, -0.147103, 0.948372,
		-0.866055, 0.464650, -0.184522,
		-0.413518, -0.873190, -0.257958,
		40.598488, 39.877075, 49.412148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243298, 40.558865, 49.844952>,  <40.887947, 40.488308, 49.592720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243298, 40.558865, 49.844952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303802, 40.166176, 49.798740>,  <40.340103, 39.930565, 49.771011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303802, 40.166176, 49.798740>,  <40.243298, 40.558865, 49.844952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303802, 40.166176, 49.798740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353046, -0.162820, 0.921329,
		-0.923298, -0.098572, -0.371220,
		0.151260, -0.981719, -0.115531,
		40.349182, 39.871658, 49.764080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719776, 40.270271, 50.057552>,  <40.243298, 40.558865, 49.844952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719776, 40.270271, 50.057552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961231, 39.951561, 50.068581>,  <40.106106, 39.760334, 50.075199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961231, 39.951561, 50.068581>,  <39.719776, 40.270271, 50.057552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961231, 39.951561, 50.068581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394236, -0.268258, 0.878986,
		-0.692962, -0.541461, -0.476050,
		0.603640, -0.796780, 0.027571,
		40.142323, 39.712528, 50.076851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303089, 39.755688, 50.354923>,  <39.719776, 40.270271, 50.057552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303089, 39.755688, 50.354923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657169, 39.570885, 50.376724>,  <39.869617, 39.460003, 50.389805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657169, 39.570885, 50.376724>,  <39.303089, 39.755688, 50.354923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657169, 39.570885, 50.376724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226169, -0.325008, 0.918269,
		-0.406538, -0.825176, -0.392189,
		0.885198, -0.462012, 0.054501,
		39.922729, 39.432281, 50.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136353, 39.078430, 50.714619>,  <39.303089, 39.755688, 50.354923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136353, 39.078430, 50.714619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527733, 39.153435, 50.749187>,  <39.762562, 39.198437, 50.769928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527733, 39.153435, 50.749187>,  <39.136353, 39.078430, 50.714619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527733, 39.153435, 50.749187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002354, -0.428670, 0.903458,
		0.206450, -0.883789, -0.419876,
		0.978454, 0.187507, 0.086419,
		39.821270, 39.209686, 50.775112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478664, 38.457909, 50.873631>,  <39.136353, 39.078430, 50.714619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478664, 38.457909, 50.873631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729744, 38.746407, 50.990799>,  <39.880390, 38.919506, 51.061100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729744, 38.746407, 50.990799>,  <39.478664, 38.457909, 50.873631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729744, 38.746407, 50.990799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039854, -0.405568, 0.913196,
		0.777435, -0.561538, -0.283319,
		0.627699, 0.721242, 0.292923,
		39.918053, 38.962780, 51.078674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.162651, 38.094082, 51.123550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107574, 38.454063, 51.289024>,  <40.074528, 38.670052, 51.388309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107574, 38.454063, 51.289024>,  <40.162651, 38.094082, 51.123550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107574, 38.454063, 51.289024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107466, -0.428767, 0.897000,
		0.984628, 0.079050, 0.155751,
		-0.137689, 0.899950, 0.413681,
		40.066269, 38.724049, 51.413128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570644, 38.070087, 51.735283>,  <40.162651, 38.094082, 51.123550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570644, 38.070087, 51.735283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328575, 38.382431, 51.797291>,  <40.183334, 38.569836, 51.834496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328575, 38.382431, 51.797291>,  <40.570644, 38.070087, 51.735283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328575, 38.382431, 51.797291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146371, -0.300544, 0.942470,
		0.782524, 0.547664, 0.296175,
		-0.605170, 0.780857, 0.155021,
		40.147022, 38.616688, 51.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885399, 38.673592, 52.278393>,  <40.570644, 38.070087, 51.735283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885399, 38.673592, 52.278393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485565, 38.684174, 52.273716>,  <40.245667, 38.690525, 52.270908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485565, 38.684174, 52.273716>,  <40.885399, 38.673592, 52.278393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485565, 38.684174, 52.273716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013448, -0.067086, 0.997657,
		0.025612, 0.997396, 0.067414,
		-0.999582, 0.026459, -0.011695,
		40.185692, 38.692112, 52.270206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704151, 39.083126, 52.800884>,  <40.885399, 38.673592, 52.278393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704151, 39.083126, 52.800884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362892, 38.892143, 52.716816>,  <40.158134, 38.777554, 52.666374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362892, 38.892143, 52.716816>,  <40.704151, 39.083126, 52.800884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362892, 38.892143, 52.716816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142748, -0.173843, 0.974372,
		-0.501754, 0.861288, 0.080159,
		-0.853151, -0.477453, -0.210174,
		40.106949, 38.748909, 52.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279118, 39.169281, 53.446480>,  <40.704151, 39.083126, 52.800884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279118, 39.169281, 53.446480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088158, 38.884842, 53.240013>,  <39.973579, 38.714180, 53.116135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088158, 38.884842, 53.240013>,  <40.279118, 39.169281, 53.446480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088158, 38.884842, 53.240013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401605, -0.345902, 0.847978,
		-0.781536, 0.612123, -0.120445,
		-0.477404, -0.711096, -0.516166,
		39.944935, 38.671513, 53.085163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527176, 39.312080, 53.559940>,  <40.279118, 39.169281, 53.446480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527176, 39.312080, 53.559940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600403, 38.928741, 53.472260>,  <39.644341, 38.698738, 53.419651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600403, 38.928741, 53.472260>,  <39.527176, 39.312080, 53.559940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600403, 38.928741, 53.472260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372764, -0.273986, 0.886555,
		-0.909688, -0.080593, -0.407398,
		0.183071, -0.958351, -0.219200,
		39.655323, 38.641235, 53.406498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956642, 38.889786, 53.893940>,  <39.527176, 39.312080, 53.559940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956642, 38.889786, 53.893940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200500, 38.583702, 53.811195>,  <39.346817, 38.400051, 53.761547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200500, 38.583702, 53.811195>,  <38.956642, 38.889786, 53.893940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200500, 38.583702, 53.811195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431856, -0.539468, 0.722824,
		-0.664704, -0.351334, -0.659343,
		0.609647, -0.765205, -0.206860,
		39.383396, 38.354141, 53.749138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543922, 38.287071, 53.956921>,  <38.956642, 38.889786, 53.893940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543922, 38.287071, 53.956921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930611, 38.196960, 54.005432>,  <39.162624, 38.142895, 54.034538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930611, 38.196960, 54.005432>,  <38.543922, 38.287071, 53.956921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930611, 38.196960, 54.005432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210863, -0.433071, 0.876348,
		-0.144895, -0.872755, -0.466159,
		0.966718, -0.225274, 0.121282,
		39.220627, 38.129379, 54.041817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599396, 37.524456, 53.944328>,  <38.543922, 38.287071, 53.956921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599396, 37.524456, 53.944328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916756, 37.667900, 54.141071>,  <39.107170, 37.753967, 54.259117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916756, 37.667900, 54.141071>,  <38.599396, 37.524456, 53.944328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916756, 37.667900, 54.141071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373916, -0.350482, 0.858690,
		0.480323, -0.865193, -0.143979,
		0.793395, 0.358613, 0.491854,
		39.154774, 37.775482, 54.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745548, 36.974644, 54.349815>,  <38.599396, 37.524456, 53.944328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745548, 36.974644, 54.349815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944946, 37.264534, 54.540089>,  <39.064587, 37.438469, 54.654255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944946, 37.264534, 54.540089>,  <38.745548, 36.974644, 54.349815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944946, 37.264534, 54.540089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206902, -0.433405, 0.877127,
		0.841839, -0.535665, -0.066104,
		0.498496, 0.724723, 0.475687,
		39.094494, 37.481953, 54.682796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307125, 36.684437, 54.781265>,  <38.745548, 36.974644, 54.349815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307125, 36.684437, 54.781265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253014, 37.049194, 54.936268>,  <39.220547, 37.268047, 55.029270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253014, 37.049194, 54.936268>,  <39.307125, 36.684437, 54.781265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253014, 37.049194, 54.936268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059866, -0.382861, 0.921864,
		0.988998, 0.147906, -0.002799,
		-0.135277, 0.911889, 0.387503,
		39.212429, 37.322762, 55.052517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744904, 36.685089, 55.374504>,  <39.307125, 36.684437, 54.781265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744904, 36.685089, 55.374504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487450, 36.981262, 55.451958>,  <39.332977, 37.158966, 55.498428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487450, 36.981262, 55.451958>,  <39.744904, 36.685089, 55.374504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487450, 36.981262, 55.451958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006369, -0.258182, 0.966075,
		0.765304, 0.620569, 0.170891,
		-0.643638, 0.740429, 0.193635,
		39.294357, 37.203392, 55.510048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929474, 36.946426, 56.101051>,  <39.744904, 36.685089, 55.374504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929474, 36.946426, 56.101051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557255, 37.077110, 56.034916>,  <39.333923, 37.155521, 55.995235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557255, 37.077110, 56.034916>,  <39.929474, 36.946426, 56.101051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557255, 37.077110, 56.034916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269972, -0.307118, 0.912575,
		0.247368, 0.893834, 0.373991,
		-0.930551, 0.326709, -0.165339,
		39.278091, 37.175121, 55.985313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795139, 37.402351, 56.771961>,  <39.929474, 36.946426, 56.101051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795139, 37.402351, 56.771961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451740, 37.331490, 56.579464>,  <39.245701, 37.288971, 56.463966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451740, 37.331490, 56.579464>,  <39.795139, 37.402351, 56.771961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451740, 37.331490, 56.579464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447753, -0.198532, 0.871839,
		-0.249993, 0.963951, 0.091118,
		-0.858499, -0.177155, -0.481243,
		39.194191, 37.278343, 56.435093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300705, 37.657608, 57.223183>,  <39.795139, 37.402351, 56.771961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300705, 37.657608, 57.223183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070076, 37.403442, 57.017731>,  <38.931698, 37.250942, 56.894459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070076, 37.403442, 57.017731>,  <39.300705, 37.657608, 57.223183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070076, 37.403442, 57.017731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413087, -0.315668, 0.854232,
		-0.704924, 0.704702, -0.080473,
		-0.576577, -0.635412, -0.513626,
		38.897102, 37.212818, 56.863644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559639, 37.756485, 57.504421>,  <39.300705, 37.657608, 57.223183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559639, 37.756485, 57.504421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572105, 37.411568, 57.302238>,  <38.579586, 37.204617, 57.180927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572105, 37.411568, 57.302238>,  <38.559639, 37.756485, 57.504421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572105, 37.411568, 57.302238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541614, -0.439593, 0.716528,
		-0.840049, 0.251428, -0.480730,
		0.031170, -0.862289, -0.505457,
		38.581455, 37.152882, 57.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885658, 37.530617, 57.332176>,  <38.559639, 37.756485, 57.504421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885658, 37.530617, 57.332176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127029, 37.214470, 57.374481>,  <38.271854, 37.024780, 57.399864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127029, 37.214470, 57.374481>,  <37.885658, 37.530617, 57.332176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127029, 37.214470, 57.374481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612354, -0.374335, 0.696345,
		-0.510779, -0.484961, -0.709872,
		0.603430, -0.790371, 0.105765,
		38.308060, 36.977360, 57.406212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456688, 37.020432, 57.395569>,  <37.885658, 37.530617, 57.332176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456688, 37.020432, 57.395569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792709, 36.855476, 57.536560>,  <37.994324, 36.756504, 57.621155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792709, 36.855476, 57.536560>,  <37.456688, 37.020432, 57.395569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792709, 36.855476, 57.536560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496882, -0.324094, 0.805029,
		-0.217744, -0.851412, -0.477163,
		0.840057, -0.412383, 0.352482,
		38.044727, 36.731762, 57.642303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206913, 36.495522, 57.770527>,  <37.456688, 37.020432, 57.395569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206913, 36.495522, 57.770527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583992, 36.533768, 57.898384>,  <37.810242, 36.556717, 57.975098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583992, 36.533768, 57.898384>,  <37.206913, 36.495522, 57.770527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583992, 36.533768, 57.898384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296139, -0.201479, 0.933653,
		0.153677, -0.974814, -0.161618,
		0.942701, 0.095620, 0.319643,
		37.866802, 36.562454, 57.994278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207397, 36.136002, 58.371628>,  <37.206913, 36.495522, 57.770527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207397, 36.136002, 58.371628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552975, 36.336395, 58.392105>,  <37.760323, 36.456631, 58.404392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552975, 36.336395, 58.392105>,  <37.207397, 36.136002, 58.371628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552975, 36.336395, 58.392105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089726, 0.053110, 0.994549,
		0.495534, -0.863825, 0.090836,
		0.863941, 0.500984, 0.051190,
		37.812157, 36.486691, 58.407463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534763, 35.777626, 58.727917>,  <37.207397, 36.136002, 58.371628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534763, 35.777626, 58.727917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676941, 36.147270, 58.784042>,  <37.762249, 36.369057, 58.817719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676941, 36.147270, 58.784042>,  <37.534763, 35.777626, 58.727917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676941, 36.147270, 58.784042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091566, -0.114964, 0.989141,
		0.930201, -0.364433, 0.043753,
		0.355446, 0.924106, 0.140309,
		37.783573, 36.424503, 58.826134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084229, 35.765324, 59.220509>,  <37.534763, 35.777626, 58.727917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084229, 35.765324, 59.220509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957561, 36.144432, 59.235752>,  <37.881561, 36.371899, 59.244900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957561, 36.144432, 59.235752>,  <38.084229, 35.765324, 59.220509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957561, 36.144432, 59.235752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256440, -0.124225, 0.958544,
		0.913214, 0.293767, 0.282384,
		-0.316667, 0.947771, 0.038110,
		37.862560, 36.428764, 59.247185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469154, 36.163826, 59.768959>,  <38.084229, 35.765324, 59.220509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469154, 36.163826, 59.768959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095551, 36.282188, 59.688896>,  <37.871387, 36.353207, 59.640858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095551, 36.282188, 59.688896>,  <38.469154, 36.163826, 59.768959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095551, 36.282188, 59.688896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265067, -0.198380, 0.943602,
		0.239513, 0.934389, 0.263725,
		-0.934009, 0.295910, -0.200161,
		37.815350, 36.370960, 59.628849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320087, 36.621014, 60.394226>,  <38.469154, 36.163826, 59.768959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320087, 36.621014, 60.394226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034492, 36.435333, 60.184563>,  <37.863136, 36.323925, 60.058765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034492, 36.435333, 60.184563>,  <38.320087, 36.621014, 60.394226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034492, 36.435333, 60.184563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458908, -0.255141, 0.851062,
		-0.528801, 0.848185, -0.030861,
		-0.713984, -0.464204, -0.524158,
		37.820297, 36.296070, 60.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820030, 36.975780, 59.999046>,  <38.320087, 36.621014, 60.394226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820030, 36.975780, 59.999046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174324, 37.090660, 60.144917>,  <39.386902, 37.159588, 60.232437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174324, 37.090660, 60.144917>,  <38.820030, 36.975780, 59.999046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174324, 37.090660, 60.144917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333987, 0.151303, -0.930355,
		-0.322378, 0.945844, 0.038092,
		0.885734, 0.287203, 0.364676,
		39.440044, 37.176823, 60.254318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075584, 37.711758, 59.665047>,  <38.820030, 36.975780, 59.999046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075584, 37.711758, 59.665047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398544, 37.553291, 59.839935>,  <39.592319, 37.458210, 59.944870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398544, 37.553291, 59.839935>,  <39.075584, 37.711758, 59.665047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398544, 37.553291, 59.839935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559706, 0.279856, -0.780007,
		0.186651, 0.874491, 0.447690,
		0.807398, -0.396164, 0.437222,
		39.640762, 37.434441, 59.971104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531185, 38.243374, 59.749493>,  <39.075584, 37.711758, 59.665047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531185, 38.243374, 59.749493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754581, 37.911873, 59.763638>,  <39.888618, 37.712971, 59.772125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754581, 37.911873, 59.763638>,  <39.531185, 38.243374, 59.749493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754581, 37.911873, 59.763638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534534, 0.326964, -0.779338,
		0.634317, 0.454159, 0.625605,
		0.558493, -0.828755, 0.035364,
		39.922131, 37.663246, 59.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220436, 38.499859, 59.756359>,  <39.531185, 38.243374, 59.749493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220436, 38.499859, 59.756359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285812, 38.117493, 59.658775>,  <40.325039, 37.888073, 59.600227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285812, 38.117493, 59.658775>,  <40.220436, 38.499859, 59.756359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285812, 38.117493, 59.658775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627672, 0.291534, -0.721828,
		0.761128, -0.035151, 0.647649,
		0.163439, -0.955914, -0.243958,
		40.334843, 37.830719, 59.585587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966297, 38.397926, 59.727741>,  <40.220436, 38.499859, 59.756359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966297, 38.397926, 59.727741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793694, 38.132072, 59.483757>,  <40.690132, 37.972561, 59.337364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793694, 38.132072, 59.483757>,  <40.966297, 38.397926, 59.727741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793694, 38.132072, 59.483757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647124, 0.243033, -0.722611,
		0.628516, -0.706534, 0.325233,
		-0.431507, -0.664639, -0.609965,
		40.664242, 37.932682, 59.300766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491802, 38.026581, 59.409706>,  <40.966297, 38.397926, 59.727741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491802, 38.026581, 59.409706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.183624, 37.940598, 59.169640>,  <40.998718, 37.889008, 59.025600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.183624, 37.940598, 59.169640>,  <41.491802, 38.026581, 59.409706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183624, 37.940598, 59.169640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605885, 0.045893, -0.794228,
		0.198273, -0.975543, 0.094884,
		-0.770449, -0.214962, -0.600166,
		40.952488, 37.876110, 58.989590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741425, 37.520470, 59.018131>,  <41.491802, 38.026581, 59.409706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741425, 37.520470, 59.018131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430855, 37.657478, 58.806530>,  <41.244511, 37.739681, 58.679569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430855, 37.657478, 58.806530>,  <41.741425, 37.520470, 59.018131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430855, 37.657478, 58.806530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539559, -0.072433, -0.838826,
		-0.325631, -0.936715, -0.128570,
		-0.776428, 0.342519, -0.528999,
		41.197926, 37.760235, 58.647831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639751, 37.087132, 58.370384>,  <41.741425, 37.520470, 59.018131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639751, 37.087132, 58.370384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419899, 37.406746, 58.272865>,  <41.287987, 37.598515, 58.214352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419899, 37.406746, 58.272865>,  <41.639751, 37.087132, 58.370384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419899, 37.406746, 58.272865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333256, -0.057898, -0.941057,
		-0.766058, -0.598484, -0.234462,
		-0.549633, 0.799040, -0.243801,
		41.255009, 37.646458, 58.199726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383865, 36.926498, 57.672466>,  <41.639751, 37.087132, 58.370384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383865, 36.926498, 57.672466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.340321, 37.321976, 57.713715>,  <41.314194, 37.559261, 57.738464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.340321, 37.321976, 57.713715>,  <41.383865, 36.926498, 57.672466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340321, 37.321976, 57.713715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096432, 0.113749, -0.988818,
		-0.989368, -0.097704, -0.107725,
		-0.108865, 0.988694, 0.103118,
		41.307663, 37.618584, 57.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807972, 37.145226, 57.233356>,  <41.383865, 36.926498, 57.672466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807972, 37.145226, 57.233356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.021095, 37.478745, 57.291183>,  <41.148968, 37.678856, 57.325878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.021095, 37.478745, 57.291183>,  <40.807972, 37.145226, 57.233356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021095, 37.478745, 57.291183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125877, 0.090845, -0.987878,
		-0.836821, 0.544548, -0.056553,
		0.532809, 0.833795, 0.144567,
		41.180939, 37.728882, 57.334553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387302, 37.764156, 56.939491>,  <40.807972, 37.145226, 57.233356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387302, 37.764156, 56.939491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786201, 37.793015, 56.946426>,  <41.025539, 37.810329, 56.950588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786201, 37.793015, 56.946426>,  <40.387302, 37.764156, 56.939491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786201, 37.793015, 56.946426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015228, 0.029732, -0.999442,
		-0.072624, 0.996951, 0.028551,
		0.997243, 0.072149, 0.017340,
		41.085373, 37.814659, 56.951630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549332, 38.328693, 56.427502>,  <40.387302, 37.764156, 56.939491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549332, 38.328693, 56.427502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902512, 38.145760, 56.469913>,  <41.114418, 38.035999, 56.495361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902512, 38.145760, 56.469913>,  <40.549332, 38.328693, 56.427502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902512, 38.145760, 56.469913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244990, 0.256200, -0.935062,
		0.400476, 0.851589, 0.338255,
		0.882949, -0.457339, 0.106029,
		41.167397, 38.008556, 56.501720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845592, 38.664497, 55.959618>,  <40.549332, 38.328693, 56.427502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845592, 38.664497, 55.959618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093727, 38.368324, 56.063110>,  <41.242607, 38.190620, 56.125206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093727, 38.368324, 56.063110>,  <40.845592, 38.664497, 55.959618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093727, 38.368324, 56.063110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462708, 0.079115, -0.882974,
		0.633309, 0.667463, 0.391680,
		0.620340, -0.740428, 0.258736,
		41.279831, 38.146194, 56.140732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526558, 38.831024, 55.855705>,  <40.845592, 38.664497, 55.959618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526558, 38.831024, 55.855705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565163, 38.433212, 55.871651>,  <41.588326, 38.194523, 55.881218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565163, 38.433212, 55.871651>,  <41.526558, 38.831024, 55.855705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565163, 38.433212, 55.871651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417262, 0.004060, -0.908777,
		0.903647, 0.104339, 0.415373,
		0.096507, -0.994533, 0.039868,
		41.594116, 38.134853, 55.883610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190170, 38.632172, 55.620693>,  <41.526558, 38.831024, 55.855705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190170, 38.632172, 55.620693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959747, 38.311386, 55.557434>,  <41.821495, 38.118916, 55.519478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959747, 38.311386, 55.557434>,  <42.190170, 38.632172, 55.620693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959747, 38.311386, 55.557434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369443, -0.082860, -0.925552,
		0.729156, -0.591596, 0.344013,
		-0.576058, -0.801965, -0.158143,
		41.786930, 38.070797, 55.509991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659225, 38.217213, 55.325405>,  <42.190170, 38.632172, 55.620693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659225, 38.217213, 55.325405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304047, 38.067871, 55.217964>,  <42.090939, 37.978264, 55.153500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304047, 38.067871, 55.217964>,  <42.659225, 38.217213, 55.325405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304047, 38.067871, 55.217964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359091, -0.197851, -0.912090,
		0.287394, -0.906343, 0.309752,
		-0.887952, -0.373359, -0.268599,
		42.037663, 37.955864, 55.137386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873096, 37.560936, 54.994072>,  <42.659225, 38.217213, 55.325405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873096, 37.560936, 54.994072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.503143, 37.670349, 54.888416>,  <42.281170, 37.735996, 54.825024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.503143, 37.670349, 54.888416>,  <42.873096, 37.560936, 54.994072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503143, 37.670349, 54.888416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184439, -0.284760, -0.940688,
		-0.332534, -0.918742, 0.212917,
		-0.924880, 0.273540, -0.264144,
		42.225677, 37.752411, 54.809174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773003, 37.219185, 54.372429>,  <42.873096, 37.560936, 54.994072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773003, 37.219185, 54.372429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.451973, 37.456566, 54.348137>,  <42.259354, 37.598995, 54.333561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.451973, 37.456566, 54.348137>,  <42.773003, 37.219185, 54.372429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451973, 37.456566, 54.348137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009662, -0.114722, -0.993351,
		-0.596472, -0.796652, 0.097807,
		-0.802575, 0.593451, -0.060732,
		42.211201, 37.634602, 54.329918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241848, 36.858486, 53.992985>,  <42.773003, 37.219185, 54.372429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241848, 36.858486, 53.992985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.206337, 37.254669, 53.950836>,  <42.185032, 37.492378, 53.925545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.206337, 37.254669, 53.950836>,  <42.241848, 36.858486, 53.992985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206337, 37.254669, 53.950836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214597, -0.084287, -0.973059,
		-0.972660, -0.108998, -0.205067,
		-0.088777, 0.990462, -0.105373,
		42.179703, 37.551807, 53.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730862, 36.935379, 53.449749>,  <42.241848, 36.858486, 53.992985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730862, 36.935379, 53.449749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.951458, 37.268013, 53.476032>,  <42.083817, 37.467594, 53.491802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.951458, 37.268013, 53.476032>,  <41.730862, 36.935379, 53.449749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951458, 37.268013, 53.476032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015755, 0.089145, -0.995894,
		-0.834031, 0.548194, 0.062265,
		0.551493, 0.831587, 0.065712,
		42.116905, 37.517490, 53.495747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.606926, 39.369129, 48.572300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940857, 39.533302, 48.719055>,  <40.141216, 39.631805, 48.807110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940857, 39.533302, 48.719055>,  <39.606926, 39.369129, 48.572300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940857, 39.533302, 48.719055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208060, 0.381793, -0.900525,
		-0.509685, 0.828116, 0.233335,
		0.834825, 0.410436, 0.366892,
		40.191303, 39.656433, 48.829124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535210, 40.111252, 48.356567>,  <39.606926, 39.369129, 48.572300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535210, 40.111252, 48.356567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916695, 40.041092, 48.454269>,  <40.145588, 39.998997, 48.512890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916695, 40.041092, 48.454269>,  <39.535210, 40.111252, 48.356567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916695, 40.041092, 48.454269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288257, 0.301942, -0.908702,
		0.085631, 0.937052, 0.338526,
		0.953716, -0.175396, 0.244257,
		40.202808, 39.988472, 48.527546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894402, 40.769478, 48.300900>,  <39.535210, 40.111252, 48.356567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894402, 40.769478, 48.300900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157021, 40.470879, 48.257645>,  <40.314590, 40.291721, 48.231693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157021, 40.470879, 48.257645>,  <39.894402, 40.769478, 48.300900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157021, 40.470879, 48.257645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341872, 0.422288, -0.839521,
		0.672362, 0.514216, 0.532457,
		0.656546, -0.746495, -0.108134,
		40.353985, 40.246929, 48.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515495, 41.010239, 47.980568>,  <39.894402, 40.769478, 48.300900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515495, 41.010239, 47.980568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553841, 40.623032, 47.887833>,  <40.576847, 40.390705, 47.832191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553841, 40.623032, 47.887833>,  <40.515495, 41.010239, 47.980568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553841, 40.623032, 47.887833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463311, 0.249535, -0.850338,
		0.880995, -0.025892, 0.472417,
		0.095867, -0.968020, -0.231835,
		40.582600, 40.332626, 47.818283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281605, 41.008080, 47.685444>,  <40.515495, 41.010239, 47.980568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281605, 41.008080, 47.685444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072807, 40.693314, 47.553814>,  <40.947529, 40.504456, 47.474834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072807, 40.693314, 47.553814>,  <41.281605, 41.008080, 47.685444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072807, 40.693314, 47.553814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292396, 0.197347, -0.935713,
		0.801268, -0.584654, 0.127077,
		-0.521990, -0.786914, -0.329079,
		40.916210, 40.457241, 47.455090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780487, 40.577587, 47.227463>,  <41.281605, 41.008080, 47.685444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780487, 40.577587, 47.227463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412811, 40.445084, 47.142269>,  <41.192207, 40.365582, 47.091152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412811, 40.445084, 47.142269>,  <41.780487, 40.577587, 47.227463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412811, 40.445084, 47.142269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209763, 0.045896, -0.976674,
		0.333307, -0.942423, 0.027299,
		-0.919187, -0.331259, -0.212983,
		41.137054, 40.345707, 47.078373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855595, 39.881702, 46.803673>,  <41.780487, 40.577587, 47.227463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855595, 39.881702, 46.803673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504158, 40.058334, 46.730911>,  <41.293297, 40.164314, 46.687252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504158, 40.058334, 46.730911>,  <41.855595, 39.881702, 46.803673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504158, 40.058334, 46.730911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143110, -0.119964, -0.982409,
		-0.455633, -0.889167, 0.042204,
		-0.878589, 0.441578, -0.181909,
		41.240582, 40.190807, 46.676338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595047, 39.508430, 46.281029>,  <41.855595, 39.881702, 46.803673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595047, 39.508430, 46.281029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377388, 39.843201, 46.257530>,  <41.246792, 40.044064, 46.243431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377388, 39.843201, 46.257530>,  <41.595047, 39.508430, 46.281029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377388, 39.843201, 46.257530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159334, 0.034344, -0.986627,
		-0.823718, -0.546234, -0.152039,
		-0.544151, 0.836928, -0.058744,
		41.214142, 40.094280, 46.239906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227184, 39.386154, 45.763027>,  <41.595047, 39.508430, 46.281029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227184, 39.386154, 45.763027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202000, 39.784027, 45.795612>,  <41.186890, 40.022751, 45.815163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202000, 39.784027, 45.795612>,  <41.227184, 39.386154, 45.763027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202000, 39.784027, 45.795612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234718, 0.094092, -0.967499,
		-0.970022, -0.041794, -0.239395,
		-0.062961, 0.994686, 0.081462,
		41.183113, 40.082432, 45.820049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901478, 39.567154, 45.112236>,  <41.227184, 39.386154, 45.763027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901478, 39.567154, 45.112236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054085, 39.911026, 45.248112>,  <41.145649, 40.117348, 45.329639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054085, 39.911026, 45.248112>,  <40.901478, 39.567154, 45.112236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054085, 39.911026, 45.248112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152261, 0.304023, -0.940418,
		-0.911735, 0.410509, -0.014905,
		0.381519, 0.859681, 0.339693,
		41.168541, 40.168930, 45.350021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653316, 40.052139, 44.655163>,  <40.901478, 39.567154, 45.112236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653316, 40.052139, 44.655163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977066, 40.219566, 44.819950>,  <41.171314, 40.320023, 44.918823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977066, 40.219566, 44.819950>,  <40.653316, 40.052139, 44.655163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977066, 40.219566, 44.819950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243678, 0.398888, -0.884030,
		-0.534357, 0.815896, 0.220852,
		0.809372, 0.418571, 0.411965,
		41.219879, 40.345139, 44.943539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622242, 40.772102, 44.604439>,  <40.653316, 40.052139, 44.655163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622242, 40.772102, 44.604439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010090, 40.678673, 44.633526>,  <41.242798, 40.622616, 44.650978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010090, 40.678673, 44.633526>,  <40.622242, 40.772102, 44.604439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010090, 40.678673, 44.633526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186939, 0.515694, -0.836130,
		0.157799, 0.824319, 0.543689,
		0.969615, -0.233577, 0.072721,
		41.300976, 40.608601, 44.655342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948780, 41.251713, 44.153957>,  <40.622242, 40.772102, 44.604439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948780, 41.251713, 44.153957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254925, 41.008034, 44.236996>,  <41.438610, 40.861824, 44.286819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254925, 41.008034, 44.236996>,  <40.948780, 41.251713, 44.153957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254925, 41.008034, 44.236996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466747, 0.303300, -0.830756,
		0.443133, 0.732725, 0.516477,
		0.765363, -0.609199, 0.207595,
		41.484535, 40.825275, 44.299274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601284, 41.579144, 44.170380>,  <40.948780, 41.251713, 44.153957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601284, 41.579144, 44.170380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634239, 41.195045, 44.063686>,  <41.654015, 40.964588, 43.999672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634239, 41.195045, 44.063686>,  <41.601284, 41.579144, 44.170380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634239, 41.195045, 44.063686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426673, 0.275861, -0.861308,
		0.900645, -0.042842, 0.432438,
		0.082393, -0.960242, -0.266733,
		41.658958, 40.906971, 43.983665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520576, 42.333374, 44.009727>,  <41.601284, 41.579144, 44.170380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520576, 42.333374, 44.009727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223106, 42.567009, 43.879623>,  <41.044624, 42.707191, 43.801559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223106, 42.567009, 43.879623>,  <41.520576, 42.333374, 44.009727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223106, 42.567009, 43.879623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348093, 0.077082, 0.934286,
		0.570775, 0.808024, 0.145993,
		-0.743672, 0.584086, -0.325264,
		41.000004, 42.742233, 43.782043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539265, 43.053532, 44.380249>,  <41.520576, 42.333374, 44.009727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539265, 43.053532, 44.380249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171124, 42.956543, 44.257511>,  <40.950237, 42.898350, 44.183868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171124, 42.956543, 44.257511>,  <41.539265, 43.053532, 44.380249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171124, 42.956543, 44.257511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354729, 0.187241, 0.916029,
		-0.164661, 0.951918, -0.258341,
		-0.920355, -0.242475, -0.306841,
		40.895016, 42.883801, 44.165459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091198, 43.654640, 44.713860>,  <41.539265, 43.053532, 44.380249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091198, 43.654640, 44.713860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836960, 43.357674, 44.629150>,  <40.684418, 43.179493, 44.578327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836960, 43.357674, 44.629150>,  <41.091198, 43.654640, 44.713860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836960, 43.357674, 44.629150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407275, 0.089411, 0.908918,
		-0.655857, 0.663951, -0.359195,
		-0.635593, -0.742412, -0.211770,
		40.646282, 43.134949, 44.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527428, 43.792572, 45.080910>,  <41.091198, 43.654640, 44.713860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527428, 43.792572, 45.080910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487801, 43.402023, 45.004093>,  <40.464024, 43.167694, 44.958004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487801, 43.402023, 45.004093>,  <40.527428, 43.792572, 45.080910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487801, 43.402023, 45.004093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422480, -0.133464, 0.896492,
		-0.900942, 0.169947, -0.399276,
		-0.099067, -0.976374, -0.192043,
		40.458080, 43.109112, 44.946480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834541, 43.603497, 45.206322>,  <40.527428, 43.792572, 45.080910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834541, 43.603497, 45.206322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034370, 43.257324, 45.221550>,  <40.154270, 43.049622, 45.230686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034370, 43.257324, 45.221550>,  <39.834541, 43.603497, 45.206322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034370, 43.257324, 45.221550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425005, -0.206571, 0.881306,
		-0.754847, -0.456459, -0.471011,
		0.499577, -0.865433, 0.038068,
		40.184242, 42.997696, 45.232971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314270, 43.127892, 45.483078>,  <39.834541, 43.603497, 45.206322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314270, 43.127892, 45.483078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672722, 42.953812, 45.517830>,  <39.887794, 42.849365, 45.538681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672722, 42.953812, 45.517830>,  <39.314270, 43.127892, 45.483078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672722, 42.953812, 45.517830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206841, -0.236382, 0.949389,
		-0.392638, -0.868748, -0.301847,
		0.896132, -0.435201, 0.086880,
		39.941563, 42.823254, 45.543896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173084, 42.543446, 45.898743>,  <39.314270, 43.127892, 45.483078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173084, 42.543446, 45.898743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559814, 42.638367, 45.936554>,  <39.791851, 42.695320, 45.959240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559814, 42.638367, 45.936554>,  <39.173084, 42.543446, 45.898743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559814, 42.638367, 45.936554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066675, -0.122798, 0.990189,
		0.246585, -0.963642, -0.102901,
		0.966825, 0.237305, 0.094531,
		39.849861, 42.709557, 45.964912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496231, 41.947262, 46.183334>,  <39.173084, 42.543446, 45.898743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496231, 41.947262, 46.183334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730194, 42.262100, 46.261681>,  <39.870571, 42.451004, 46.308689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730194, 42.262100, 46.261681>,  <39.496231, 41.947262, 46.183334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730194, 42.262100, 46.261681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064832, -0.286079, 0.956010,
		0.808507, -0.546477, -0.218358,
		0.584905, 0.787097, 0.195868,
		39.905666, 42.498230, 46.320442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916191, 41.639744, 46.611267>,  <39.496231, 41.947262, 46.183334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916191, 41.639744, 46.611267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974976, 42.031731, 46.665043>,  <40.010246, 42.266922, 46.697308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974976, 42.031731, 46.665043>,  <39.916191, 41.639744, 46.611267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974976, 42.031731, 46.665043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025479, -0.139619, 0.989877,
		0.988814, -0.142051, -0.045488,
		0.146964, 0.979963, 0.134438,
		40.019066, 42.325718, 46.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531036, 41.667240, 47.087631>,  <39.916191, 41.639744, 46.611267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531036, 41.667240, 47.087631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312218, 41.999016, 47.132839>,  <40.180927, 42.198082, 47.159962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312218, 41.999016, 47.132839>,  <40.531036, 41.667240, 47.087631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312218, 41.999016, 47.132839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105530, -0.202264, 0.973629,
		0.830424, 0.520693, 0.198178,
		-0.547046, 0.829438, 0.113017,
		40.148106, 42.247849, 47.166744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754189, 41.907009, 47.671192>,  <40.531036, 41.667240, 47.087631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754189, 41.907009, 47.671192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.416714, 42.115150, 47.618382>,  <40.214230, 42.240036, 47.586697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.416714, 42.115150, 47.618382>,  <40.754189, 41.907009, 47.671192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416714, 42.115150, 47.618382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127951, 0.043934, 0.990807,
		0.521370, 0.852820, 0.029513,
		-0.843683, 0.520354, -0.132025,
		40.163609, 42.271255, 47.578773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799385, 42.429836, 48.228371>,  <40.754189, 41.907009, 47.671192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799385, 42.429836, 48.228371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418747, 42.395256, 48.110394>,  <40.190365, 42.374508, 48.039608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418747, 42.395256, 48.110394>,  <40.799385, 42.429836, 48.228371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418747, 42.395256, 48.110394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300137, 0.054703, 0.952326,
		-0.066197, 0.994753, -0.078003,
		-0.951596, -0.086453, -0.294941,
		40.133266, 42.369320, 48.021912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405308, 42.833759, 48.767467>,  <40.799385, 42.429836, 48.228371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405308, 42.833759, 48.767467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133995, 42.608093, 48.579151>,  <39.971207, 42.472694, 48.466160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133995, 42.608093, 48.579151>,  <40.405308, 42.833759, 48.767467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133995, 42.608093, 48.579151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516805, -0.089180, 0.851446,
		-0.522342, 0.820831, -0.231074,
		-0.678285, -0.564166, -0.470792,
		39.930508, 42.438843, 48.437912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795826, 43.070454, 48.923519>,  <40.405308, 42.833759, 48.767467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795826, 43.070454, 48.923519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.710205, 42.692223, 48.825478>,  <39.658833, 42.465286, 48.766655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.710205, 42.692223, 48.825478>,  <39.795826, 43.070454, 48.923519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710205, 42.692223, 48.825478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539976, -0.094557, 0.836352,
		-0.814008, 0.311368, -0.490347,
		-0.214048, -0.945573, -0.245102,
		39.645992, 42.408550, 48.751945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308247, 43.643394, 49.185551>,  <39.795826, 43.070454, 48.923519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308247, 43.643394, 49.185551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470818, 43.913017, 49.432278>,  <39.568359, 44.074791, 49.580315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470818, 43.913017, 49.432278>,  <39.308247, 43.643394, 49.185551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470818, 43.913017, 49.432278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535284, 0.371438, -0.758621,
		-0.740462, 0.638497, -0.209848,
		0.406432, 0.674058, 0.616813,
		39.592747, 44.115234, 49.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223869, 44.343742, 48.767323>,  <39.308247, 43.643394, 49.185551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223869, 44.343742, 48.767323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.514336, 44.403961, 49.035656>,  <39.688614, 44.440094, 49.196655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.514336, 44.403961, 49.035656>,  <39.223869, 44.343742, 48.767323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514336, 44.403961, 49.035656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605368, 0.322517, -0.727676,
		-0.325908, 0.934514, 0.143062,
		0.726164, 0.150551, 0.670836,
		39.732185, 44.449127, 49.236908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498848, 45.148254, 48.772774>,  <39.223869, 44.343742, 48.767323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498848, 45.148254, 48.772774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790577, 44.922302, 48.927177>,  <39.965614, 44.786732, 49.019821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790577, 44.922302, 48.927177>,  <39.498848, 45.148254, 48.772774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790577, 44.922302, 48.927177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639242, 0.361522, -0.678727,
		0.243845, 0.741766, 0.624758,
		0.729321, -0.564876, 0.386013,
		40.009373, 44.752838, 49.042980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112431, 45.616192, 48.693897>,  <39.498848, 45.148254, 48.772774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112431, 45.616192, 48.693897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260410, 45.252754, 48.771454>,  <40.349197, 45.034691, 48.817986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260410, 45.252754, 48.771454>,  <40.112431, 45.616192, 48.693897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260410, 45.252754, 48.771454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764706, 0.179290, -0.618934,
		0.527597, 0.377243, 0.761136,
		0.369952, -0.908594, 0.193887,
		40.371395, 44.980175, 48.829620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735222, 45.777180, 48.629433>,  <40.112431, 45.616192, 48.693897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735222, 45.777180, 48.629433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714100, 45.379257, 48.594620>,  <40.701427, 45.140503, 48.573730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714100, 45.379257, 48.594620>,  <40.735222, 45.777180, 48.629433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714100, 45.379257, 48.594620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578330, 0.040588, -0.814793,
		0.814093, -0.093354, 0.573182,
		-0.052800, -0.994805, -0.087032,
		40.698261, 45.080814, 48.568512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462822, 45.558926, 48.521549>,  <40.735222, 45.777180, 48.629433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462822, 45.558926, 48.521549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215427, 45.275948, 48.384727>,  <41.066990, 45.106163, 48.302635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215427, 45.275948, 48.384727>,  <41.462822, 45.558926, 48.521549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215427, 45.275948, 48.384727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467694, 0.018386, -0.883699,
		0.631456, -0.706531, 0.319495,
		-0.618487, -0.707443, -0.342050,
		41.029881, 45.063713, 48.282112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883801, 45.050877, 48.142036>,  <41.462822, 45.558926, 48.521549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883801, 45.050877, 48.142036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511162, 44.998276, 48.006489>,  <41.287579, 44.966713, 47.925159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511162, 44.998276, 48.006489>,  <41.883801, 45.050877, 48.142036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511162, 44.998276, 48.006489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342605, -0.006200, -0.939459,
		0.121444, -0.991296, 0.050830,
		-0.931597, -0.131506, -0.338870,
		41.231682, 44.958824, 47.904827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804668, 44.527611, 47.576851>,  <41.883801, 45.050877, 48.142036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804668, 44.527611, 47.576851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495201, 44.768257, 47.497353>,  <41.309521, 44.912643, 47.449654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495201, 44.768257, 47.497353>,  <41.804668, 44.527611, 47.576851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495201, 44.768257, 47.497353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184514, -0.086145, -0.979047,
		-0.606131, -0.794127, -0.044359,
		-0.773667, 0.601615, -0.198742,
		41.263100, 44.948742, 47.437729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590519, 44.239540, 46.893452>,  <41.804668, 44.527611, 47.576851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590519, 44.239540, 46.893452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.357285, 44.563293, 46.921505>,  <41.217346, 44.757545, 46.938335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.357285, 44.563293, 46.921505>,  <41.590519, 44.239540, 46.893452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357285, 44.563293, 46.921505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153646, 0.194631, -0.968768,
		-0.797752, -0.554095, -0.237844,
		-0.583081, 0.809381, 0.070133,
		41.182362, 44.806107, 46.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189297, 44.112492, 46.374283>,  <41.590519, 44.239540, 46.893452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189297, 44.112492, 46.374283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164162, 44.501648, 46.463318>,  <41.149082, 44.735142, 46.516739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164162, 44.501648, 46.463318>,  <41.189297, 44.112492, 46.374283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164162, 44.501648, 46.463318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017951, 0.221888, -0.974907,
		-0.997863, -0.065252, 0.003523,
		-0.062833, 0.972887, 0.222585,
		41.145313, 44.793514, 46.530094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632275, 44.395050, 45.933548>,  <41.189297, 44.112492, 46.374283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632275, 44.395050, 45.933548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877483, 44.690727, 46.045116>,  <41.024609, 44.868134, 46.112057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877483, 44.690727, 46.045116>,  <40.632275, 44.395050, 45.933548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877483, 44.690727, 46.045116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176784, 0.215742, -0.960314,
		-0.770036, 0.637999, 0.001576,
		0.613019, 0.739198, 0.278917,
		41.061390, 44.912487, 46.128792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430107, 45.024921, 45.526020>,  <40.632275, 44.395050, 45.933548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430107, 45.024921, 45.526020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809589, 45.063896, 45.646328>,  <41.037277, 45.087280, 45.718513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809589, 45.063896, 45.646328>,  <40.430107, 45.024921, 45.526020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809589, 45.063896, 45.646328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283987, 0.155487, -0.946137,
		-0.138952, 0.983021, 0.119841,
		0.948707, 0.097434, 0.300770,
		41.094200, 45.093128, 45.736561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.112942, 43.514950, 52.941319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503883, 43.558090, 53.014145>,  <38.738449, 43.583973, 53.057842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503883, 43.558090, 53.014145>,  <38.112942, 43.514950, 52.941319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503883, 43.558090, 53.014145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166340, 0.140310, -0.976035,
		-0.130813, 0.984216, 0.119193,
		0.977353, 0.107852, 0.182069,
		38.797089, 43.590446, 53.068764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275288, 44.033401, 52.532951>,  <38.112942, 43.514950, 52.941319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275288, 44.033401, 52.532951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619576, 43.850365, 52.622192>,  <38.826149, 43.740543, 52.675735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619576, 43.850365, 52.622192>,  <38.275288, 44.033401, 52.532951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619576, 43.850365, 52.622192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375966, 0.275882, -0.884612,
		0.343244, 0.845279, 0.409496,
		0.860716, -0.457595, 0.223102,
		38.877789, 43.713085, 52.689121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816334, 44.543488, 52.476669>,  <38.275288, 44.033401, 52.532951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816334, 44.543488, 52.476669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989193, 44.188858, 52.410645>,  <39.092907, 43.976082, 52.371029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989193, 44.188858, 52.410645>,  <38.816334, 44.543488, 52.476669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989193, 44.188858, 52.410645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429757, 0.363372, -0.826602,
		0.792817, 0.286278, 0.538039,
		0.432146, -0.886570, -0.165057,
		39.118835, 43.922886, 52.361126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516403, 44.668064, 52.245979>,  <38.816334, 44.543488, 52.476669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516403, 44.668064, 52.245979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419861, 44.301987, 52.116879>,  <39.361935, 44.082340, 52.039417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419861, 44.301987, 52.116879>,  <39.516403, 44.668064, 52.245979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419861, 44.301987, 52.116879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372773, 0.219638, -0.901554,
		0.895985, -0.337908, 0.288149,
		-0.241354, -0.915193, -0.322755,
		39.347454, 44.027428, 52.020054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004929, 44.651192, 51.861057>,  <39.516403, 44.668064, 52.245979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004929, 44.651192, 51.861057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742188, 44.367577, 51.758446>,  <39.584545, 44.197407, 51.696877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742188, 44.367577, 51.758446>,  <40.004929, 44.651192, 51.861057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742188, 44.367577, 51.758446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297686, 0.068730, -0.952186,
		0.692772, -0.701808, 0.165927,
		-0.656848, -0.709042, -0.256533,
		39.545132, 44.154865, 51.681484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221889, 44.282024, 51.332687>,  <40.004929, 44.651192, 51.861057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221889, 44.282024, 51.332687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845726, 44.148872, 51.304909>,  <39.620029, 44.068981, 51.288242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845726, 44.148872, 51.304909>,  <40.221889, 44.282024, 51.332687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845726, 44.148872, 51.304909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072867, 0.002204, -0.997339,
		0.332152, -0.942965, 0.022183,
		-0.940408, -0.332884, -0.069443,
		39.563602, 44.049007, 51.284077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274555, 43.716404, 50.858791>,  <40.221889, 44.282024, 51.332687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274555, 43.716404, 50.858791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897270, 43.847748, 50.878929>,  <39.670898, 43.926552, 50.891014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897270, 43.847748, 50.878929>,  <40.274555, 43.716404, 50.858791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897270, 43.847748, 50.878929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050846, 0.007072, -0.998682,
		-0.328280, -0.944527, 0.010025,
		-0.943211, 0.328357, 0.050347,
		39.614307, 43.946255, 50.894032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797180, 43.235916, 50.530113>,  <40.274555, 43.716404, 50.858791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797180, 43.235916, 50.530113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618896, 43.593979, 50.527660>,  <39.511925, 43.808815, 50.526188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618896, 43.593979, 50.527660>,  <39.797180, 43.235916, 50.530113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618896, 43.593979, 50.527660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033752, -0.023647, -0.999151,
		-0.894540, -0.445126, 0.040753,
		-0.445712, 0.895155, -0.006130,
		39.485184, 43.862526, 50.525822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415535, 43.246544, 49.831299>,  <39.797180, 43.235916, 50.530113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415535, 43.246544, 49.831299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453194, 43.625183, 49.954651>,  <39.475788, 43.852367, 50.028660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453194, 43.625183, 49.954651>,  <39.415535, 43.246544, 49.831299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453194, 43.625183, 49.954651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035346, 0.306380, -0.951253,
		-0.994931, 0.100460, -0.004613,
		0.094149, 0.946594, 0.308377,
		39.481438, 43.909161, 50.047165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120480, 42.944839, 49.260334>,  <39.415535, 43.246544, 49.831299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120480, 42.944839, 49.260334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246830, 42.582024, 49.148979>,  <39.322639, 42.364334, 49.082165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246830, 42.582024, 49.148979>,  <39.120480, 42.944839, 49.260334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246830, 42.582024, 49.148979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478033, -0.405590, 0.779090,
		-0.819577, -0.113019, -0.561712,
		0.315877, -0.907041, -0.278386,
		39.341595, 42.309910, 49.065464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508961, 42.509178, 49.348591>,  <39.120480, 42.944839, 49.260334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508961, 42.509178, 49.348591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791210, 42.226669, 49.325699>,  <38.960560, 42.057163, 49.311966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791210, 42.226669, 49.325699>,  <38.508961, 42.509178, 49.348591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791210, 42.226669, 49.325699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475636, -0.531958, 0.700565,
		-0.525208, -0.467140, -0.711292,
		0.705639, -0.706259, -0.057200,
		39.002899, 42.014790, 49.308533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143677, 41.956738, 49.306152>,  <38.508961, 42.509178, 49.348591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143677, 41.956738, 49.306152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505917, 41.861687, 49.446678>,  <38.723259, 41.804657, 49.530994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505917, 41.861687, 49.446678>,  <38.143677, 41.956738, 49.306152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505917, 41.861687, 49.446678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416665, -0.343681, 0.841590,
		-0.079246, -0.908524, -0.410248,
		0.905599, -0.237628, 0.351315,
		38.777596, 41.790398, 49.552071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091572, 41.310879, 49.500084>,  <38.143677, 41.956738, 49.306152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091572, 41.310879, 49.500084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389984, 41.462662, 49.718967>,  <38.569031, 41.553734, 49.850300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389984, 41.462662, 49.718967>,  <38.091572, 41.310879, 49.500084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389984, 41.462662, 49.718967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433940, -0.346281, 0.831736,
		0.505102, -0.857961, -0.093674,
		0.746035, 0.379462, 0.547211,
		38.613796, 41.576500, 49.883129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222176, 40.758823, 49.976086>,  <38.091572, 41.310879, 49.500084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222176, 40.758823, 49.976086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417694, 41.072884, 50.128204>,  <38.535004, 41.261318, 50.219475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417694, 41.072884, 50.128204>,  <38.222176, 40.758823, 49.976086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417694, 41.072884, 50.128204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229996, -0.304522, 0.924321,
		0.841535, -0.539269, 0.031732,
		0.488795, 0.785147, 0.380295,
		38.564331, 41.308426, 50.242294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670181, 40.429523, 50.497349>,  <38.222176, 40.758823, 49.976086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670181, 40.429523, 50.497349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632656, 40.813698, 50.602234>,  <38.610142, 41.044205, 50.665165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632656, 40.813698, 50.602234>,  <38.670181, 40.429523, 50.497349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632656, 40.813698, 50.602234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144879, -0.273737, 0.950830,
		0.984992, 0.051214, 0.164829,
		-0.093816, 0.960440, 0.262209,
		38.604511, 41.101830, 50.680897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304214, 40.621876, 50.905018>,  <38.670181, 40.429523, 50.497349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304214, 40.621876, 50.905018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011528, 40.881950, 50.986855>,  <38.835918, 41.037994, 51.035957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011528, 40.881950, 50.986855>,  <39.304214, 40.621876, 50.905018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011528, 40.881950, 50.986855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022295, -0.277169, 0.960562,
		0.681249, 0.707416, 0.188312,
		-0.731712, 0.650184, 0.204593,
		38.792015, 41.077007, 51.048233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467968, 40.837223, 51.516705>,  <39.304214, 40.621876, 50.905018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467968, 40.837223, 51.516705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086166, 40.955620, 51.502243>,  <38.857086, 41.026657, 51.493565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086166, 40.955620, 51.502243>,  <39.467968, 40.837223, 51.516705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086166, 40.955620, 51.502243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142964, -0.347845, 0.926588,
		0.261685, 0.889603, 0.374337,
		-0.954507, 0.295991, -0.036156,
		38.799816, 41.044418, 51.491398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377438, 41.235344, 52.139652>,  <39.467968, 40.837223, 51.516705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377438, 41.235344, 52.139652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992771, 41.166115, 52.054569>,  <38.761971, 41.124577, 52.003517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992771, 41.166115, 52.054569>,  <39.377438, 41.235344, 52.139652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992771, 41.166115, 52.054569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151661, -0.310582, 0.938370,
		-0.228475, 0.934657, 0.272427,
		-0.961664, -0.173077, -0.212711,
		38.704273, 41.114193, 51.990757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115856, 41.361919, 52.796719>,  <39.377438, 41.235344, 52.139652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115856, 41.361919, 52.796719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831314, 41.155739, 52.605602>,  <38.660587, 41.032032, 52.490932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831314, 41.155739, 52.605602>,  <39.115856, 41.361919, 52.796719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831314, 41.155739, 52.605602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368692, -0.305086, 0.878060,
		-0.598361, 0.800772, 0.026984,
		-0.711358, -0.515448, -0.477790,
		38.617908, 41.001106, 52.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361977, 41.587029, 53.007595>,  <39.115856, 41.361919, 52.796719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361977, 41.587029, 53.007595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306477, 41.219742, 52.859207>,  <38.273174, 40.999371, 52.770172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306477, 41.219742, 52.859207>,  <38.361977, 41.587029, 53.007595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306477, 41.219742, 52.859207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280507, -0.322817, 0.903939,
		-0.949770, 0.229485, -0.212775,
		-0.138753, -0.918219, -0.370974,
		38.264851, 40.944275, 52.747913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721088, 41.297127, 53.257221>,  <38.361977, 41.587029, 53.007595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721088, 41.297127, 53.257221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935501, 40.972900, 53.162857>,  <38.064148, 40.778366, 53.106239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935501, 40.972900, 53.162857>,  <37.721088, 41.297127, 53.257221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935501, 40.972900, 53.162857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326134, -0.456584, 0.827749,
		-0.778659, -0.366759, -0.509096,
		0.536030, -0.810567, -0.235911,
		38.096310, 40.729729, 53.092083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198952, 40.810738, 53.270561>,  <37.721088, 41.297127, 53.257221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198952, 40.810738, 53.270561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552452, 40.627953, 53.310890>,  <37.764553, 40.518280, 53.335087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552452, 40.627953, 53.310890>,  <37.198952, 40.810738, 53.270561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552452, 40.627953, 53.310890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358064, -0.521624, 0.774402,
		-0.301286, -0.720479, -0.624609,
		0.883751, -0.456966, 0.100820,
		37.817577, 40.490864, 53.341137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019707, 40.115215, 53.393688>,  <37.198952, 40.810738, 53.270561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019707, 40.115215, 53.393688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388885, 40.189140, 53.528748>,  <37.610394, 40.233494, 53.609783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388885, 40.189140, 53.528748>,  <37.019707, 40.115215, 53.393688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388885, 40.189140, 53.528748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241377, -0.405405, 0.881694,
		0.299834, -0.895260, -0.329559,
		0.922950, 0.184814, 0.337649,
		37.665771, 40.244583, 53.630043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.460312, 39.909817, 55.272564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103256, 40.068604, 55.187130>,  <43.889023, 40.163876, 55.135868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103256, 40.068604, 55.187130>,  <44.460312, 39.909817, 55.272564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103256, 40.068604, 55.187130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245916, 0.031738, -0.968771,
		-0.377793, -0.917284, -0.125952,
		-0.892636, 0.396969, -0.213585,
		43.835464, 40.187695, 55.123055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133068, 39.471554, 54.829342>,  <44.460312, 39.909817, 55.272564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133068, 39.471554, 54.829342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.928658, 39.807518, 54.756229>,  <43.806011, 40.009098, 54.712364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.928658, 39.807518, 54.756229>,  <44.133068, 39.471554, 54.829342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928658, 39.807518, 54.756229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266734, -0.047192, -0.962614,
		-0.817134, -0.540671, -0.199916,
		-0.511023, 0.839910, -0.182778,
		43.775352, 40.059490, 54.701397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724957, 39.251720, 54.281273>,  <44.133068, 39.471554, 54.829342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724957, 39.251720, 54.281273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.749641, 39.650955, 54.279362>,  <43.764454, 39.890495, 54.278217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.749641, 39.650955, 54.279362>,  <43.724957, 39.251720, 54.281273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749641, 39.650955, 54.279362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263361, -0.020899, -0.964471,
		-0.962721, 0.058263, -0.264145,
		0.061714, 0.998082, -0.004776,
		43.768154, 39.950378, 54.277927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369663, 39.448193, 53.684456>,  <43.724957, 39.251720, 54.281273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369663, 39.448193, 53.684456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.594048, 39.766647, 53.775219>,  <43.728680, 39.957722, 53.829678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.594048, 39.766647, 53.775219>,  <43.369663, 39.448193, 53.684456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594048, 39.766647, 53.775219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330019, 0.036305, -0.943276,
		-0.759215, 0.604026, -0.242374,
		0.560964, 0.796137, 0.226903,
		43.762337, 40.005489, 53.843288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278519, 39.947258, 53.219330>,  <43.369663, 39.448193, 53.684456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278519, 39.947258, 53.219330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.634636, 40.065941, 53.357513>,  <43.848309, 40.137150, 53.440422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.634636, 40.065941, 53.357513>,  <43.278519, 39.947258, 53.219330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634636, 40.065941, 53.357513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343295, 0.061137, -0.937236,
		-0.299203, 0.953010, -0.047427,
		0.890295, 0.296706, 0.345456,
		43.901726, 40.154953, 53.461151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403625, 40.389374, 52.750912>,  <43.278519, 39.947258, 53.219330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403625, 40.389374, 52.750912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.758720, 40.328476, 52.924690>,  <43.971779, 40.291935, 53.028957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.758720, 40.328476, 52.924690>,  <43.403625, 40.389374, 52.750912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758720, 40.328476, 52.924690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446410, 0.054249, -0.893183,
		0.112416, 0.986853, 0.116124,
		0.887739, -0.152247, 0.434442,
		44.025043, 40.282803, 53.055023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837490, 40.960506, 52.606274>,  <43.403625, 40.389374, 52.750912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837490, 40.960506, 52.606274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.084347, 40.653503, 52.675625>,  <44.232460, 40.469299, 52.717236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.084347, 40.653503, 52.675625>,  <43.837490, 40.960506, 52.606274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084347, 40.653503, 52.675625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399128, 0.115457, -0.909597,
		0.678106, 0.630554, 0.377588,
		0.617146, -0.767510, 0.173379,
		44.269489, 40.423252, 52.727638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465366, 41.235401, 52.488537>,  <43.837490, 40.960506, 52.606274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465366, 41.235401, 52.488537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.499401, 40.838585, 52.451405>,  <44.519821, 40.600494, 52.429127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.499401, 40.838585, 52.451405>,  <44.465366, 41.235401, 52.488537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499401, 40.838585, 52.451405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333424, 0.116145, -0.935596,
		0.938929, 0.048659, 0.340653,
		0.085090, -0.992040, -0.092828,
		44.524929, 40.540974, 52.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179668, 41.061707, 52.331440>,  <44.465366, 41.235401, 52.488537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179668, 41.061707, 52.331440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.977837, 40.735970, 52.216721>,  <44.856739, 40.540527, 52.147888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.977837, 40.735970, 52.216721>,  <45.179668, 41.061707, 52.331440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977837, 40.735970, 52.216721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476062, 0.014696, -0.879289,
		0.720254, -0.580203, 0.380261,
		-0.504578, -0.814339, -0.286798,
		44.826462, 40.491669, 52.130680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689228, 40.622688, 51.967037>,  <45.179668, 41.061707, 52.331440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689228, 40.622688, 51.967037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.326462, 40.495987, 51.855911>,  <45.108803, 40.419968, 51.789238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.326462, 40.495987, 51.855911>,  <45.689228, 40.622688, 51.967037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326462, 40.495987, 51.855911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350576, -0.201619, -0.914574,
		0.233679, -0.926833, 0.293896,
		-0.906913, -0.316750, -0.277812,
		45.054386, 40.400963, 51.772568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767609, 40.040352, 51.582588>,  <45.689228, 40.622688, 51.967037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767609, 40.040352, 51.582588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.404030, 40.156807, 51.463226>,  <45.185883, 40.226681, 51.391609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.404030, 40.156807, 51.463226>,  <45.767609, 40.040352, 51.582588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404030, 40.156807, 51.463226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232815, -0.239280, -0.942625,
		-0.345841, -0.926272, 0.149711,
		-0.908951, 0.291143, -0.298403,
		45.131344, 40.244148, 51.373707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593983, 39.581966, 51.142422>,  <45.767609, 40.040352, 51.582588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593983, 39.581966, 51.142422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.359947, 39.891006, 51.043823>,  <45.219524, 40.076431, 50.984665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.359947, 39.891006, 51.043823>,  <45.593983, 39.581966, 51.142422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359947, 39.891006, 51.043823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228782, -0.134361, -0.964161,
		-0.778028, -0.620516, -0.098143,
		-0.585090, 0.772598, -0.246500,
		45.184422, 40.122787, 50.969872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361782, 39.385918, 50.538868>,  <45.593983, 39.581966, 51.142422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361782, 39.385918, 50.538868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.266163, 39.773911, 50.520992>,  <45.208794, 40.006706, 50.510265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.266163, 39.773911, 50.520992>,  <45.361782, 39.385918, 50.538868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266163, 39.773911, 50.520992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227206, 0.011127, -0.973783,
		-0.944053, -0.242931, -0.223045,
		-0.239044, 0.969980, -0.044691,
		45.194450, 40.064903, 50.507584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883446, 39.454674, 50.002445>,  <45.361782, 39.385918, 50.538868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883446, 39.454674, 50.002445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.056625, 39.811470, 50.054451>,  <45.160534, 40.025547, 50.085655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.056625, 39.811470, 50.054451>,  <44.883446, 39.454674, 50.002445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056625, 39.811470, 50.054451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197381, 0.046924, -0.979203,
		-0.879541, 0.449612, -0.155746,
		0.432954, 0.891990, 0.130016,
		45.186512, 40.079067, 50.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121006, 39.512581, 50.079937>,  <44.883446, 39.454674, 50.002445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121006, 39.512581, 50.079937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856960, 39.249733, 49.934364>,  <43.698532, 39.092026, 49.847019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856960, 39.249733, 49.934364>,  <44.121006, 39.512581, 50.079937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856960, 39.249733, 49.934364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160495, -0.349917, 0.922930,
		-0.733820, 0.667647, 0.125521,
		-0.660114, -0.657118, -0.363931,
		43.658928, 39.052597, 49.825184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562176, 39.549629, 50.496613>,  <44.121006, 39.512581, 50.079937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562176, 39.549629, 50.496613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.469009, 39.199440, 50.327240>,  <43.413109, 38.989326, 50.225616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.469009, 39.199440, 50.327240>,  <43.562176, 39.549629, 50.496613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469009, 39.199440, 50.327240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353490, -0.329413, 0.875518,
		-0.905978, 0.353601, -0.232746,
		-0.232915, -0.875473, -0.423436,
		43.399136, 38.936798, 50.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882347, 39.426941, 50.518097>,  <43.562176, 39.549629, 50.496613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882347, 39.426941, 50.518097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.061634, 39.070152, 50.494514>,  <43.169209, 38.856079, 50.480366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.061634, 39.070152, 50.494514>,  <42.882347, 39.426941, 50.518097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061634, 39.070152, 50.494514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490963, -0.300753, 0.817620,
		-0.747029, -0.337529, -0.572732,
		0.448222, -0.891976, -0.058957,
		43.196102, 38.802559, 50.476826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337761, 38.905880, 50.717018>,  <42.882347, 39.426941, 50.518097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337761, 38.905880, 50.717018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675991, 38.693672, 50.740898>,  <42.878929, 38.566349, 50.755226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675991, 38.693672, 50.740898>,  <42.337761, 38.905880, 50.717018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675991, 38.693672, 50.740898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384947, -0.528402, 0.756708,
		-0.369900, -0.662831, -0.651021,
		0.845571, -0.530515, 0.059699,
		42.929661, 38.534519, 50.758808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124073, 38.131454, 50.791027>,  <42.337761, 38.905880, 50.717018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124073, 38.131454, 50.791027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.494560, 38.190132, 50.929939>,  <42.716850, 38.225338, 51.013287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.494560, 38.190132, 50.929939>,  <42.124073, 38.131454, 50.791027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494560, 38.190132, 50.929939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259483, -0.420201, 0.869540,
		0.273481, -0.895496, -0.351134,
		0.926216, 0.146689, 0.347283,
		42.772427, 38.234138, 51.034122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189880, 37.667889, 51.371433>,  <42.124073, 38.131454, 50.791027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189880, 37.667889, 51.371433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.522934, 37.883507, 51.422268>,  <42.722767, 38.012878, 51.452766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.522934, 37.883507, 51.422268>,  <42.189880, 37.667889, 51.371433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522934, 37.883507, 51.422268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046301, -0.160912, 0.985882,
		0.551886, -0.826763, -0.109022,
		0.832633, 0.539046, 0.127085,
		42.772724, 38.045219, 51.460392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546261, 37.284668, 51.860710>,  <42.189880, 37.667889, 51.371433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546261, 37.284668, 51.860710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.695343, 37.654907, 51.887138>,  <42.784794, 37.877048, 51.902996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.695343, 37.654907, 51.887138>,  <42.546261, 37.284668, 51.860710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695343, 37.654907, 51.887138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156522, -0.007470, 0.987646,
		0.914653, -0.378445, 0.142092,
		0.372708, 0.925594, 0.066067,
		42.807156, 37.932587, 51.906960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018547, 37.219776, 52.442024>,  <42.546261, 37.284668, 51.860710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018547, 37.219776, 52.442024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899925, 37.595993, 52.375771>,  <42.828751, 37.821724, 52.336018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899925, 37.595993, 52.375771>,  <43.018547, 37.219776, 52.442024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899925, 37.595993, 52.375771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271784, 0.083148, 0.958760,
		0.915526, 0.329342, 0.230966,
		-0.296556, 0.940542, -0.165634,
		42.810959, 37.878155, 52.326080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320705, 37.604565, 53.044807>,  <43.018547, 37.219776, 52.442024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320705, 37.604565, 53.044807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.006462, 37.812424, 52.910477>,  <42.817917, 37.937141, 52.829880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.006462, 37.812424, 52.910477>,  <43.320705, 37.604565, 53.044807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006462, 37.812424, 52.910477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361582, 0.054842, 0.930726,
		0.502069, 0.852617, 0.144811,
		-0.785611, 0.519650, -0.335825,
		42.770779, 37.968319, 52.809731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183434, 38.146160, 53.515308>,  <43.320705, 37.604565, 53.044807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183434, 38.146160, 53.515308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829369, 38.102463, 53.334400>,  <42.616928, 38.076244, 53.225853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829369, 38.102463, 53.334400>,  <43.183434, 38.146160, 53.515308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829369, 38.102463, 53.334400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452267, -0.026277, 0.891496,
		-0.109270, 0.993668, -0.026146,
		-0.885164, -0.109239, -0.452274,
		42.563820, 38.069691, 53.198719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740005, 38.608227, 53.774734>,  <43.183434, 38.146160, 53.515308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740005, 38.608227, 53.774734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521591, 38.292801, 53.661598>,  <42.390541, 38.103546, 53.593716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521591, 38.292801, 53.661598>,  <42.740005, 38.608227, 53.774734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521591, 38.292801, 53.661598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544087, 0.077079, 0.835481,
		-0.637033, 0.610097, -0.471138,
		-0.546039, -0.788568, -0.282844,
		42.357780, 38.056229, 53.576744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057869, 38.826767, 53.782669>,  <42.740005, 38.608227, 53.774734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057869, 38.826767, 53.782669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085880, 38.430473, 53.829224>,  <42.102688, 38.192696, 53.857155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085880, 38.430473, 53.829224>,  <42.057869, 38.826767, 53.782669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085880, 38.430473, 53.829224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449000, 0.072879, 0.890555,
		-0.890784, -0.114616, -0.439736,
		0.070024, -0.990733, 0.116382,
		42.106888, 38.133255, 53.864140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421131, 38.615738, 54.109264>,  <42.057869, 38.826767, 53.782669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421131, 38.615738, 54.109264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680756, 38.321541, 54.187000>,  <41.836529, 38.145023, 54.233643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680756, 38.321541, 54.187000>,  <41.421131, 38.615738, 54.109264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680756, 38.321541, 54.187000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425827, -0.139568, 0.893975,
		-0.630389, -0.663000, -0.403782,
		0.649061, -0.735494, 0.194341,
		41.875473, 38.100891, 54.245304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012276, 38.092468, 54.331905>,  <41.421131, 38.615738, 54.109264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012276, 38.092468, 54.331905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371750, 37.996506, 54.478767>,  <41.587437, 37.938927, 54.566883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371750, 37.996506, 54.478767>,  <41.012276, 38.092468, 54.331905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371750, 37.996506, 54.478767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417700, -0.212918, 0.883285,
		-0.133728, -0.947161, -0.291554,
		0.898690, -0.239902, 0.367156,
		41.641357, 37.924534, 54.588913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404232, 37.681721, 54.213974>,  <41.012276, 38.092468, 54.331905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404232, 37.681721, 54.213974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.033897, 37.813820, 54.140469>,  <39.811699, 37.893078, 54.096363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.033897, 37.813820, 54.140469>,  <40.404232, 37.681721, 54.213974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033897, 37.813820, 54.140469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272732, 0.247209, -0.929788,
		-0.261629, -0.910948, -0.318943,
		-0.925834, 0.330245, -0.183767,
		39.756145, 37.912895, 54.085339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131149, 37.333107, 53.586205>,  <40.404232, 37.681721, 54.213974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131149, 37.333107, 53.586205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921860, 37.671631, 53.626205>,  <39.796288, 37.874744, 53.650204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921860, 37.671631, 53.626205>,  <40.131149, 37.333107, 53.586205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921860, 37.671631, 53.626205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301449, 0.293557, -0.907168,
		-0.797099, -0.444505, -0.408714,
		-0.523222, 0.846309, 0.099999,
		39.764893, 37.925522, 53.656204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745361, 37.403427, 52.927818>,  <40.131149, 37.333107, 53.586205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745361, 37.403427, 52.927818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689369, 37.773422, 53.069126>,  <39.655773, 37.995419, 53.153912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689369, 37.773422, 53.069126>,  <39.745361, 37.403427, 52.927818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689369, 37.773422, 53.069126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112104, 0.369292, -0.922527,
		-0.983788, -0.089533, -0.155389,
		-0.139981, 0.924991, 0.353268,
		39.647373, 38.050919, 53.175106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183514, 37.735817, 52.586651>,  <39.745361, 37.403427, 52.927818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183514, 37.735817, 52.586651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430172, 38.014748, 52.732796>,  <39.578167, 38.182106, 52.820480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430172, 38.014748, 52.732796>,  <39.183514, 37.735817, 52.586651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430172, 38.014748, 52.732796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088738, 0.399573, -0.912396,
		-0.782222, 0.595049, 0.184517,
		0.616648, 0.697322, 0.365358,
		39.615166, 38.223946, 52.842403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912876, 38.286987, 52.305347>,  <39.183514, 37.735817, 52.586651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912876, 38.286987, 52.305347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280823, 38.417831, 52.391922>,  <39.501591, 38.496338, 52.443867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280823, 38.417831, 52.391922>,  <38.912876, 38.286987, 52.305347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280823, 38.417831, 52.391922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075842, 0.393044, -0.916387,
		-0.384831, 0.859367, 0.336738,
		0.919866, 0.327115, 0.216432,
		39.556782, 38.515965, 52.456852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956566, 39.040989, 52.101490>,  <38.912876, 38.286987, 52.305347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956566, 39.040989, 52.101490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.335663, 38.918633, 52.137741>,  <39.563122, 38.845219, 52.159492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.335663, 38.918633, 52.137741>,  <38.956566, 39.040989, 52.101490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335663, 38.918633, 52.137741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218838, 0.416621, -0.882347,
		0.232144, 0.856072, 0.461790,
		0.947744, -0.305889, 0.090625,
		39.619987, 38.826866, 52.164928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358799, 39.603580, 51.937725>,  <38.956566, 39.040989, 52.101490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358799, 39.603580, 51.937725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596970, 39.283195, 51.912697>,  <39.739872, 39.090965, 51.897678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596970, 39.283195, 51.912697>,  <39.358799, 39.603580, 51.937725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596970, 39.283195, 51.912697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414876, 0.373240, -0.829801,
		0.687997, 0.468130, 0.554540,
		0.595431, -0.800966, -0.062572,
		39.775600, 39.042904, 51.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996384, 39.928417, 51.862835>,  <39.358799, 39.603580, 51.937725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996384, 39.928417, 51.862835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.020088, 39.554565, 51.722572>,  <40.034309, 39.330254, 51.638416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.020088, 39.554565, 51.722572>,  <39.996384, 39.928417, 51.862835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020088, 39.554565, 51.722572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344016, 0.348874, -0.871746,
		0.937092, -0.068968, 0.342203,
		0.059263, -0.934629, -0.350653,
		40.037868, 39.274178, 51.617378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628326, 39.893791, 51.555428>,  <39.996384, 39.928417, 51.862835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628326, 39.893791, 51.555428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400452, 39.602516, 51.403008>,  <40.263725, 39.427750, 51.311558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400452, 39.602516, 51.403008>,  <40.628326, 39.893791, 51.555428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400452, 39.602516, 51.403008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380547, 0.177224, -0.907621,
		0.728448, -0.662069, 0.176147,
		-0.569690, -0.728187, -0.381047,
		40.229546, 39.384060, 51.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032135, 39.514187, 51.031647>,  <40.628326, 39.893791, 51.555428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032135, 39.514187, 51.031647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662296, 39.394165, 50.937763>,  <40.440392, 39.322151, 50.881435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662296, 39.394165, 50.937763>,  <41.032135, 39.514187, 51.031647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662296, 39.394165, 50.937763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216666, 0.092544, -0.971850,
		0.313331, -0.949421, -0.020554,
		-0.924597, -0.300058, -0.234704,
		40.384918, 39.304150, 50.867352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207142, 39.115700, 50.552429>,  <41.032135, 39.514187, 51.031647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207142, 39.115700, 50.552429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.819553, 39.193390, 50.491287>,  <40.586998, 39.240005, 50.454601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.819553, 39.193390, 50.491287>,  <41.207142, 39.115700, 50.552429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819553, 39.193390, 50.491287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186628, 0.169508, -0.967697,
		-0.162045, -0.966200, -0.200498,
		-0.968974, 0.194228, -0.152852,
		40.528862, 39.251659, 50.445431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886471, 38.660015, 50.015808>,  <41.207142, 39.115700, 50.552429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886471, 38.660015, 50.015808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674263, 38.997726, 50.046127>,  <40.546940, 39.200352, 50.064320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674263, 38.997726, 50.046127>,  <40.886471, 38.660015, 50.015808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674263, 38.997726, 50.046127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106555, 0.155132, -0.982130,
		-0.840950, -0.512961, -0.172262,
		-0.530518, 0.844278, 0.075800,
		40.515106, 39.251011, 50.068867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440269, 38.614094, 49.485722>,  <40.886471, 38.660015, 50.015808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440269, 38.614094, 49.485722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415333, 39.001114, 49.583672>,  <40.400372, 39.233326, 49.642441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415333, 39.001114, 49.583672>,  <40.440269, 38.614094, 49.485722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415333, 39.001114, 49.583672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024373, 0.243803, -0.969519,
		-0.997758, -0.066406, 0.008384,
		-0.062338, 0.967549, 0.244875,
		40.396633, 39.291378, 49.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898163, 38.826035, 49.101616>,  <40.440269, 38.614094, 49.485722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898163, 38.826035, 49.101616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118073, 39.149284, 49.186180>,  <40.250019, 39.343235, 49.236919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118073, 39.149284, 49.186180>,  <39.898163, 38.826035, 49.101616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118073, 39.149284, 49.186180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021367, 0.239404, -0.970685,
		-0.835043, 0.538171, 0.114350,
		0.549770, 0.808120, 0.211411,
		40.283005, 39.391720, 49.249603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.243134, 39.479340, 53.764362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512753, 39.738197, 53.906834>,  <37.674522, 39.893513, 53.992317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512753, 39.738197, 53.906834>,  <37.243134, 39.479340, 53.764362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512753, 39.738197, 53.906834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009286, -0.474712, 0.880092,
		0.738631, -0.596531, -0.313968,
		0.674047, 0.647148, 0.356176,
		37.714966, 39.932343, 54.013687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718010, 39.080677, 54.047596>,  <37.243134, 39.479340, 53.764362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718010, 39.080677, 54.047596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762154, 39.425262, 54.245872>,  <37.788639, 39.632011, 54.364838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762154, 39.425262, 54.245872>,  <37.718010, 39.080677, 54.047596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762154, 39.425262, 54.245872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277492, -0.452198, 0.847652,
		0.954369, -0.231094, 0.189145,
		0.110356, 0.861459, 0.495690,
		37.795261, 39.683701, 54.394581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936016, 38.877068, 54.741482>,  <37.718010, 39.080677, 54.047596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936016, 38.877068, 54.741482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796585, 39.249969, 54.780266>,  <37.712929, 39.473709, 54.803535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796585, 39.249969, 54.780266>,  <37.936016, 38.877068, 54.741482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796585, 39.249969, 54.780266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352810, -0.226346, 0.907906,
		0.868344, 0.282265, 0.407806,
		-0.348575, 0.932252, 0.096960,
		37.692013, 39.529644, 54.809353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203789, 39.188950, 55.281841>,  <37.936016, 38.877068, 54.741482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203789, 39.188950, 55.281841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870453, 39.409393, 55.264782>,  <37.670452, 39.541660, 55.254547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870453, 39.409393, 55.264782>,  <38.203789, 39.188950, 55.281841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870453, 39.409393, 55.264782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187915, -0.209897, 0.959495,
		0.519834, 0.807603, 0.278478,
		-0.833343, 0.551109, -0.042649,
		37.620449, 39.574726, 55.251987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215591, 39.503647, 55.879753>,  <38.203789, 39.188950, 55.281841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215591, 39.503647, 55.879753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835411, 39.569611, 55.774334>,  <37.607304, 39.609188, 55.711082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835411, 39.569611, 55.774334>,  <38.215591, 39.503647, 55.879753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835411, 39.569611, 55.774334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272175, -0.031717, 0.961725,
		0.150236, 0.985799, 0.075029,
		-0.950447, 0.164907, -0.263544,
		37.550278, 39.619083, 55.695271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860912, 40.083439, 56.362492>,  <38.215591, 39.503647, 55.879753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860912, 40.083439, 56.362492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581757, 39.840004, 56.211460>,  <37.414261, 39.693943, 56.120842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581757, 39.840004, 56.211460>,  <37.860912, 40.083439, 56.362492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581757, 39.840004, 56.211460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373320, -0.140794, 0.916957,
		-0.611210, 0.780895, -0.128939,
		-0.697893, -0.608589, -0.377578,
		37.372387, 39.657429, 56.098186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252895, 40.190052, 56.746494>,  <37.860912, 40.083439, 56.362492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252895, 40.190052, 56.746494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154446, 39.853249, 56.554474>,  <37.095375, 39.651165, 56.439262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154446, 39.853249, 56.554474>,  <37.252895, 40.190052, 56.746494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154446, 39.853249, 56.554474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481060, -0.323850, 0.814679,
		-0.841431, 0.431441, -0.325350,
		-0.246121, -0.842009, -0.480047,
		37.080608, 39.600647, 56.410461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441936, 40.119839, 56.788094>,  <37.252895, 40.190052, 56.746494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441936, 40.119839, 56.788094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609627, 39.761673, 56.728115>,  <36.710239, 39.546772, 56.692127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609627, 39.761673, 56.728115>,  <36.441936, 40.119839, 56.788094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609627, 39.761673, 56.728115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224239, -0.262162, 0.938610,
		-0.879754, -0.359865, -0.310692,
		0.419224, -0.895415, -0.149942,
		36.735394, 39.493050, 56.683132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979187, 39.692425, 57.073063>,  <36.441936, 40.119839, 56.788094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979187, 39.692425, 57.073063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291725, 39.442787, 57.073936>,  <36.479248, 39.293007, 57.074459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291725, 39.442787, 57.073936>,  <35.979187, 39.692425, 57.073063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291725, 39.442787, 57.073936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177012, -0.218263, 0.959702,
		-0.598467, -0.750247, -0.281011,
		0.781348, -0.624092, 0.002180,
		36.526131, 39.255558, 57.074589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689945, 39.067436, 57.416939>,  <35.979187, 39.692425, 57.073063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689945, 39.067436, 57.416939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088585, 39.056168, 57.447906>,  <36.327770, 39.049408, 57.466488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088585, 39.056168, 57.447906>,  <35.689945, 39.067436, 57.416939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088585, 39.056168, 57.447906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082240, -0.396472, 0.914356,
		0.004937, -0.917614, -0.397441,
		0.996600, -0.028172, 0.077422,
		36.387566, 39.047714, 57.471134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854099, 38.402733, 57.775810>,  <35.689945, 39.067436, 57.416939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854099, 38.402733, 57.775810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171696, 38.641525, 57.821747>,  <36.362255, 38.784801, 57.849308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171696, 38.641525, 57.821747>,  <35.854099, 38.402733, 57.775810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171696, 38.641525, 57.821747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048132, -0.126585, 0.990787,
		0.606017, -0.792207, -0.071774,
		0.793994, 0.596980, 0.114843,
		36.409893, 38.820618, 57.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250950, 37.975140, 58.216206>,  <35.854099, 38.402733, 57.775810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250950, 37.975140, 58.216206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380188, 38.350510, 58.265133>,  <36.457729, 38.575733, 58.294487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380188, 38.350510, 58.265133>,  <36.250950, 37.975140, 58.216206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380188, 38.350510, 58.265133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102813, -0.163290, 0.981206,
		0.940766, -0.304445, -0.149240,
		0.323093, 0.938430, 0.122316,
		36.477116, 38.632038, 58.301826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899441, 38.039242, 58.647060>,  <36.250950, 37.975140, 58.216206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899441, 38.039242, 58.647060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688595, 38.374603, 58.702518>,  <36.562088, 38.575821, 58.735794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688595, 38.374603, 58.702518>,  <36.899441, 38.039242, 58.647060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688595, 38.374603, 58.702518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042830, -0.189154, 0.981013,
		0.848713, 0.511171, 0.135616,
		-0.527117, 0.838406, 0.138644,
		36.530460, 38.626125, 58.744110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303967, 38.397720, 59.167538>,  <36.899441, 38.039242, 58.647060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303967, 38.397720, 59.167538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915421, 38.488449, 59.139221>,  <36.682293, 38.542885, 59.122231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915421, 38.488449, 59.139221>,  <37.303967, 38.397720, 59.167538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915421, 38.488449, 59.139221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172251, -0.466978, 0.867330,
		0.163669, 0.854684, 0.492674,
		-0.971361, 0.226818, -0.070791,
		36.624012, 38.556496, 59.117985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515675, 37.650784, 59.176399>,  <37.303967, 38.397720, 59.167538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515675, 37.650784, 59.176399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645775, 37.276680, 59.232277>,  <37.723835, 37.052219, 59.265804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645775, 37.276680, 59.232277>,  <37.515675, 37.650784, 59.176399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645775, 37.276680, 59.232277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397482, 0.001170, -0.917609,
		0.858034, 0.353975, 0.372128,
		0.325246, -0.935254, 0.139695,
		37.743347, 36.996105, 59.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226166, 37.651745, 58.886517>,  <37.515675, 37.650784, 59.176399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226166, 37.651745, 58.886517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093082, 37.274658, 58.876827>,  <38.013233, 37.048405, 58.871014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093082, 37.274658, 58.876827>,  <38.226166, 37.651745, 58.886517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093082, 37.274658, 58.876827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557753, -0.176000, -0.811132,
		0.760406, -0.283382, 0.584361,
		-0.332708, -0.942719, -0.024225,
		37.993271, 36.991844, 58.869560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716000, 37.347569, 58.615688>,  <38.226166, 37.651745, 58.886517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716000, 37.347569, 58.615688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445580, 37.057297, 58.564541>,  <38.283329, 36.883133, 58.533852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445580, 37.057297, 58.564541>,  <38.716000, 37.347569, 58.615688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445580, 37.057297, 58.564541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348588, -0.162082, -0.923155,
		0.649188, -0.668671, 0.362538,
		-0.676048, -0.725678, -0.127869,
		38.242764, 36.839592, 58.526180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094261, 36.725674, 58.376999>,  <38.716000, 37.347569, 58.615688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094261, 36.725674, 58.376999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714943, 36.663414, 58.266357>,  <38.487350, 36.626057, 58.199974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714943, 36.663414, 58.266357>,  <39.094261, 36.725674, 58.376999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714943, 36.663414, 58.266357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278576, 0.009417, -0.960368,
		0.152088, -0.987767, 0.034431,
		-0.948296, -0.155652, -0.276601,
		38.430454, 36.616718, 58.183376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235546, 36.306747, 57.931648>,  <39.094261, 36.725674, 58.376999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235546, 36.306747, 57.931648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858612, 36.420212, 57.860615>,  <38.632450, 36.488289, 57.817997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858612, 36.420212, 57.860615>,  <39.235546, 36.306747, 57.931648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858612, 36.420212, 57.860615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199747, 0.050991, -0.978520,
		-0.268512, -0.957568, -0.104711,
		-0.942339, 0.283660, -0.177580,
		38.575909, 36.505310, 57.807343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052067, 35.921246, 57.351887>,  <39.235546, 36.306747, 57.931648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052067, 35.921246, 57.351887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819008, 36.245506, 57.375092>,  <38.679173, 36.440063, 57.389015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819008, 36.245506, 57.375092>,  <39.052067, 35.921246, 57.351887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819008, 36.245506, 57.375092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099534, 0.142016, -0.984847,
		-0.806610, -0.568041, -0.163433,
		-0.582644, 0.810655, 0.058012,
		38.644215, 36.488701, 57.392494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594055, 35.921360, 56.749138>,  <39.052067, 35.921246, 57.351887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594055, 35.921360, 56.749138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614563, 36.302963, 56.867287>,  <38.626869, 36.531925, 56.938175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614563, 36.302963, 56.867287>,  <38.594055, 35.921360, 56.749138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614563, 36.302963, 56.867287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164454, 0.283662, -0.944718,
		-0.985051, 0.097015, -0.142346,
		0.051274, 0.954004, 0.295376,
		38.629944, 36.589165, 56.955898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266266, 36.314667, 56.253277>,  <38.594055, 35.921360, 56.749138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266266, 36.314667, 56.253277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.456779, 36.609177, 56.445553>,  <38.571087, 36.785881, 56.560917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.456779, 36.609177, 56.445553>,  <38.266266, 36.314667, 56.253277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456779, 36.609177, 56.445553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132984, 0.480072, -0.867090,
		-0.869179, 0.476902, 0.130737,
		0.476281, 0.736271, 0.480689,
		38.599663, 36.830059, 56.589760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975269, 36.987003, 55.952095>,  <38.266266, 36.314667, 56.253277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975269, 36.987003, 55.952095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.351265, 37.048279, 56.074051>,  <38.576862, 37.085045, 56.147224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.351265, 37.048279, 56.074051>,  <37.975269, 36.987003, 55.952095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351265, 37.048279, 56.074051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176036, 0.547721, -0.817932,
		-0.292294, 0.822517, 0.487884,
		0.939987, 0.153191, 0.304889,
		38.633263, 37.094234, 56.165516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078979, 37.660828, 55.727306>,  <37.975269, 36.987003, 55.952095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078979, 37.660828, 55.727306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443283, 37.511833, 55.798599>,  <38.661865, 37.422436, 55.841373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443283, 37.511833, 55.798599>,  <38.078979, 37.660828, 55.727306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443283, 37.511833, 55.798599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348239, 0.460901, -0.816272,
		0.221902, 0.805497, 0.549486,
		0.910763, -0.372485, 0.178230,
		38.716511, 37.400089, 55.852070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547249, 38.179134, 55.816959>,  <38.078979, 37.660828, 55.727306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547249, 38.179134, 55.816959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781815, 37.872528, 55.712215>,  <38.922554, 37.688564, 55.649368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781815, 37.872528, 55.712215>,  <38.547249, 38.179134, 55.816959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781815, 37.872528, 55.712215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299884, 0.505757, -0.808875,
		0.752455, 0.395807, 0.526449,
		0.586414, -0.766516, -0.261863,
		38.957737, 37.642574, 55.633656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135197, 38.478741, 55.602062>,  <38.547249, 38.179134, 55.816959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135197, 38.478741, 55.602062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158955, 38.118607, 55.429611>,  <39.173210, 37.902527, 55.326141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158955, 38.118607, 55.429611>,  <39.135197, 38.478741, 55.602062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158955, 38.118607, 55.429611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311792, 0.427015, -0.848790,
		0.948292, -0.084012, 0.306077,
		0.059391, -0.900333, -0.431129,
		39.176773, 37.848507, 55.300274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766262, 38.447571, 55.198902>,  <39.135197, 38.478741, 55.602062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766262, 38.447571, 55.198902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568581, 38.138596, 55.039349>,  <39.449974, 37.953213, 54.943615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568581, 38.138596, 55.039349>,  <39.766262, 38.447571, 55.198902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568581, 38.138596, 55.039349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328018, 0.259235, -0.908406,
		0.805089, -0.579777, 0.125259,
		-0.494201, -0.772435, -0.398884,
		39.420319, 37.906864, 54.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278881, 38.034107, 54.851566>,  <39.766262, 38.447571, 55.198902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278881, 38.034107, 54.851566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927666, 37.951836, 54.678715>,  <39.716934, 37.902473, 54.575005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927666, 37.951836, 54.678715>,  <40.278881, 38.034107, 54.851566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927666, 37.951836, 54.678715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389784, 0.216579, -0.895077,
		0.277691, -0.954353, -0.109995,
		-0.878041, -0.205680, -0.432133,
		39.664253, 37.890133, 54.549076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826305, 37.513096, 54.806816>,  <40.278881, 38.034107, 54.851566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826305, 37.513096, 54.806816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195736, 37.638153, 54.895603>,  <41.417393, 37.713188, 54.948875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195736, 37.638153, 54.895603>,  <40.826305, 37.513096, 54.806816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195736, 37.638153, 54.895603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214854, -0.057485, 0.974953,
		0.317571, -0.948130, 0.014081,
		0.923573, 0.312642, 0.221965,
		41.472809, 37.731945, 54.962193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153141, 37.033112, 55.232479>,  <40.826305, 37.513096, 54.806816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153141, 37.033112, 55.232479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340767, 37.376328, 55.316151>,  <41.453342, 37.582256, 55.366352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340767, 37.376328, 55.316151>,  <41.153141, 37.033112, 55.232479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340767, 37.376328, 55.316151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053850, -0.208621, 0.976513,
		0.881522, -0.469310, -0.051651,
		0.469063, 0.858036, 0.209176,
		41.481487, 37.633739, 55.378902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566032, 36.838406, 55.808544>,  <41.153141, 37.033112, 55.232479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566032, 36.838406, 55.808544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576389, 37.238182, 55.817013>,  <41.582603, 37.478046, 55.822094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576389, 37.238182, 55.817013>,  <41.566032, 36.838406, 55.808544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576389, 37.238182, 55.817013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170514, -0.016453, 0.985218,
		0.985015, -0.029116, 0.169992,
		0.025888, 0.999441, 0.021171,
		41.584156, 37.538013, 55.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989380, 37.081657, 56.343903>,  <41.566032, 36.838406, 55.808544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989380, 37.081657, 56.343903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.755211, 37.403831, 56.306915>,  <41.614708, 37.597137, 56.284721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.755211, 37.403831, 56.306915>,  <41.989380, 37.081657, 56.343903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755211, 37.403831, 56.306915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031749, 0.136748, 0.990097,
		0.810106, 0.576690, -0.105627,
		-0.585424, 0.805437, -0.092471,
		41.579582, 37.645462, 56.279175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303425, 37.510082, 56.864872>,  <41.989380, 37.081657, 56.343903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303425, 37.510082, 56.864872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952324, 37.664223, 56.750992>,  <41.741665, 37.756706, 56.682663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952324, 37.664223, 56.750992>,  <42.303425, 37.510082, 56.864872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952324, 37.664223, 56.750992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207594, 0.229664, 0.950873,
		0.431808, 0.893732, -0.121591,
		-0.877751, 0.385353, -0.284705,
		41.688999, 37.779827, 56.665581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323883, 38.265881, 57.027981>,  <42.303425, 37.510082, 56.864872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323883, 38.265881, 57.027981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952335, 38.118721, 57.010757>,  <41.729408, 38.030426, 57.000423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952335, 38.118721, 57.010757>,  <42.323883, 38.265881, 57.027981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952335, 38.118721, 57.010757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180534, 0.348161, 0.919887,
		-0.323434, 0.862227, -0.389814,
		-0.928869, -0.367898, -0.043054,
		41.673676, 38.008350, 56.997841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906338, 38.746994, 57.311321>,  <42.323883, 38.265881, 57.027981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906338, 38.746994, 57.311321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677734, 38.418762, 57.313293>,  <41.540573, 38.221821, 57.314476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677734, 38.418762, 57.313293>,  <41.906338, 38.746994, 57.311321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677734, 38.418762, 57.313293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381601, 0.271078, 0.883684,
		-0.726472, 0.503149, -0.468058,
		-0.571505, -0.820583, 0.004928,
		41.506283, 38.172588, 57.314774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741493, 39.473713, 57.389446>,  <41.906338, 38.746994, 57.311321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741493, 39.473713, 57.389446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003700, 39.769035, 57.452946>,  <42.161026, 39.946228, 57.491047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003700, 39.769035, 57.452946>,  <41.741493, 39.473713, 57.389446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003700, 39.769035, 57.452946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406282, -0.167590, -0.898248,
		-0.636574, 0.653317, -0.409818,
		0.655522, 0.738302, 0.158748,
		42.200356, 39.990524, 57.500568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774151, 39.928013, 56.799557>,  <41.741493, 39.473713, 57.389446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774151, 39.928013, 56.799557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118958, 40.024895, 56.977661>,  <42.325844, 40.083023, 57.084522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118958, 40.024895, 56.977661>,  <41.774151, 39.928013, 56.799557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118958, 40.024895, 56.977661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430009, 0.115621, -0.895391,
		-0.268351, 0.963311, -0.004483,
		0.862021, 0.242206, 0.445259,
		42.377563, 40.097557, 57.111240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073830, 40.565540, 56.466774>,  <41.774151, 39.928013, 56.799557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073830, 40.565540, 56.466774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.379303, 40.366150, 56.630878>,  <42.562588, 40.246513, 56.729340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.379303, 40.366150, 56.630878>,  <42.073830, 40.565540, 56.466774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379303, 40.366150, 56.630878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576981, 0.241890, -0.780117,
		0.289633, 0.832471, 0.472339,
		0.763679, -0.498478, 0.410261,
		42.608406, 40.216606, 56.753956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662846, 40.992142, 56.252560>,  <42.073830, 40.565540, 56.466774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662846, 40.992142, 56.252560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833054, 40.651199, 56.374172>,  <42.935177, 40.446636, 56.447140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833054, 40.651199, 56.374172>,  <42.662846, 40.992142, 56.252560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833054, 40.651199, 56.374172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660801, 0.063116, -0.747903,
		0.618287, 0.519147, 0.590092,
		0.425516, -0.852351, 0.304029,
		42.960709, 40.395493, 56.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331768, 41.077152, 56.262341>,  <42.662846, 40.992142, 56.252560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331768, 41.077152, 56.262341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.308708, 40.679108, 56.230255>,  <43.294872, 40.440281, 56.211006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.308708, 40.679108, 56.230255>,  <43.331768, 41.077152, 56.262341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308708, 40.679108, 56.230255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652885, 0.023203, -0.757102,
		0.755260, -0.096014, 0.648354,
		-0.057649, -0.995110, -0.080210,
		43.291412, 40.380573, 56.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986336, 40.809383, 56.219227>,  <43.331768, 41.077152, 56.262341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986336, 40.809383, 56.219227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765408, 40.523804, 56.047077>,  <43.632851, 40.352455, 55.943787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765408, 40.523804, 56.047077>,  <43.986336, 40.809383, 56.219227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765408, 40.523804, 56.047077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508158, 0.120913, -0.852734,
		0.660843, -0.689683, 0.296014,
		-0.552324, -0.713945, -0.430372,
		43.599709, 40.309620, 55.917965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469566, 40.567219, 55.796612>,  <43.986336, 40.809383, 56.219227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469566, 40.567219, 55.796612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.116955, 40.428383, 55.668591>,  <43.905388, 40.345081, 55.591778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.116955, 40.428383, 55.668591>,  <44.469566, 40.567219, 55.796612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116955, 40.428383, 55.668591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370172, -0.087355, -0.924847,
		0.293045, -0.933756, 0.205489,
		-0.881531, -0.347088, -0.320051,
		43.852497, 40.324257, 55.572575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.305721, 41.082649, 59.219738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.125137, 40.876038, 58.928703>,  <37.016788, 40.752071, 58.754082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.125137, 40.876038, 58.928703>,  <37.305721, 41.082649, 59.219738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125137, 40.876038, 58.928703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608617, 0.418036, -0.674412,
		0.652512, -0.747290, 0.125643,
		-0.451457, -0.516531, -0.727587,
		36.989700, 40.721077, 58.710426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877937, 40.991680, 58.821075>,  <37.305721, 41.082649, 59.219738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877937, 40.991680, 58.821075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559513, 40.912460, 58.592316>,  <37.368458, 40.864929, 58.455059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559513, 40.912460, 58.592316>,  <37.877937, 40.991680, 58.821075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559513, 40.912460, 58.592316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482771, 0.362091, -0.797385,
		0.365065, -0.910844, -0.192587,
		-0.796027, -0.198122, -0.571917,
		37.320694, 40.853046, 58.420746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103867, 40.603188, 58.246845>,  <37.877937, 40.991680, 58.821075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103867, 40.603188, 58.246845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751747, 40.753304, 58.130753>,  <37.540474, 40.843372, 58.061096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751747, 40.753304, 58.130753>,  <38.103867, 40.603188, 58.246845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751747, 40.753304, 58.130753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430250, 0.373748, -0.821704,
		-0.199899, -0.848218, -0.490476,
		-0.880298, 0.375286, -0.290234,
		37.487659, 40.865891, 58.043682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098038, 40.546352, 57.564049>,  <38.103867, 40.603188, 58.246845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098038, 40.546352, 57.564049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808311, 40.818275, 57.610069>,  <37.634476, 40.981430, 57.637680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808311, 40.818275, 57.610069>,  <38.098038, 40.546352, 57.564049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808311, 40.818275, 57.610069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421572, 0.568704, -0.706295,
		-0.545573, -0.463077, -0.698506,
		-0.724312, 0.679806, 0.115049,
		37.591019, 41.022217, 57.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047306, 40.780987, 56.906769>,  <38.098038, 40.546352, 57.564049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047306, 40.780987, 56.906769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.862572, 41.061829, 57.123566>,  <37.751732, 41.230331, 57.253643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.862572, 41.061829, 57.123566>,  <38.047306, 40.780987, 56.906769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862572, 41.061829, 57.123566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225241, 0.683873, -0.693962,
		-0.857890, -0.198416, -0.473979,
		-0.461835, 0.702103, 0.541996,
		37.724022, 41.272461, 57.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561665, 41.098331, 56.413155>,  <38.047306, 40.780987, 56.906769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561665, 41.098331, 56.413155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660103, 41.350555, 56.707588>,  <37.719166, 41.501892, 56.884251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660103, 41.350555, 56.707588>,  <37.561665, 41.098331, 56.413155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660103, 41.350555, 56.707588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407283, 0.621864, -0.668884,
		-0.879520, 0.464408, -0.103778,
		0.246099, 0.630564, 0.736087,
		37.733932, 41.539726, 56.928413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325443, 41.754475, 56.173222>,  <37.561665, 41.098331, 56.413155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325443, 41.754475, 56.173222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571831, 41.855347, 56.471748>,  <37.719666, 41.915871, 56.650864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571831, 41.855347, 56.471748>,  <37.325443, 41.754475, 56.173222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571831, 41.855347, 56.471748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358477, 0.753872, -0.550609,
		-0.701479, 0.606696, 0.373961,
		0.615971, 0.252184, 0.746312,
		37.756622, 41.931004, 56.695641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173264, 42.484119, 56.464733>,  <37.325443, 41.754475, 56.173222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173264, 42.484119, 56.464733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554165, 42.380951, 56.530075>,  <37.782707, 42.319050, 56.569279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554165, 42.380951, 56.530075>,  <37.173264, 42.484119, 56.464733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554165, 42.380951, 56.530075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302356, 0.722555, -0.621687,
		0.042314, 0.641396, 0.766042,
		0.952255, -0.257924, 0.163356,
		37.839840, 42.303574, 56.579082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557819, 43.144737, 56.607323>,  <37.173264, 42.484119, 56.464733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557819, 43.144737, 56.607323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845757, 42.876617, 56.535179>,  <38.018520, 42.715748, 56.491894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845757, 42.876617, 56.535179>,  <37.557819, 43.144737, 56.607323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845757, 42.876617, 56.535179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438531, 0.640561, -0.630375,
		0.538069, 0.374678, 0.755049,
		0.719842, -0.670297, -0.180358,
		38.061710, 42.675529, 56.481071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143211, 43.564888, 56.369381>,  <37.557819, 43.144737, 56.607323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143211, 43.564888, 56.369381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264030, 43.192467, 56.287495>,  <38.336521, 42.969013, 56.238365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264030, 43.192467, 56.287495>,  <38.143211, 43.564888, 56.369381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264030, 43.192467, 56.287495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583882, 0.350434, -0.732309,
		0.753557, 0.101664, 0.649473,
		0.302047, -0.931053, -0.204712,
		38.354645, 42.913151, 56.226082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896160, 43.655170, 56.380280>,  <38.143211, 43.564888, 56.369381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896160, 43.655170, 56.380280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.771156, 43.342552, 56.164307>,  <38.696156, 43.154984, 56.034721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.771156, 43.342552, 56.164307>,  <38.896160, 43.655170, 56.380280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771156, 43.342552, 56.164307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428132, 0.391517, -0.814505,
		0.847963, -0.485704, 0.212250,
		-0.312509, -0.781541, -0.539937,
		38.677402, 43.108089, 56.002327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486149, 43.441170, 55.998764>,  <38.896160, 43.655170, 56.380280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486149, 43.441170, 55.998764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158699, 43.323982, 55.801170>,  <38.962227, 43.253670, 55.682613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158699, 43.323982, 55.801170>,  <39.486149, 43.441170, 55.998764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158699, 43.323982, 55.801170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317179, 0.486427, -0.814117,
		0.478798, -0.823139, -0.305279,
		-0.818627, -0.292969, -0.493982,
		38.913113, 43.236092, 55.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060593, 42.987026, 56.151009>,  <39.486149, 43.441170, 55.998764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060593, 42.987026, 56.151009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.445518, 43.042992, 56.244289>,  <40.676472, 43.076569, 56.300259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.445518, 43.042992, 56.244289>,  <40.060593, 42.987026, 56.151009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445518, 43.042992, 56.244289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163965, -0.385640, 0.907963,
		0.216967, -0.911979, -0.348165,
		0.962310, 0.139911, 0.233204,
		40.734211, 43.084965, 56.314251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369980, 42.308868, 56.497746>,  <40.060593, 42.987026, 56.151009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369980, 42.308868, 56.497746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604584, 42.606735, 56.625168>,  <40.745346, 42.785454, 56.701622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604584, 42.606735, 56.625168>,  <40.369980, 42.308868, 56.497746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604584, 42.606735, 56.625168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064396, -0.349186, 0.934838,
		0.807379, -0.568805, -0.156847,
		0.586509, 0.744668, 0.318554,
		40.780537, 42.830135, 56.720734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912598, 41.995300, 56.903984>,  <40.369980, 42.308868, 56.497746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912598, 41.995300, 56.903984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878830, 42.375092, 57.024895>,  <40.858570, 42.602966, 57.097439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878830, 42.375092, 57.024895>,  <40.912598, 41.995300, 56.903984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878830, 42.375092, 57.024895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277174, -0.313758, 0.908147,
		0.957104, -0.007121, 0.289656,
		-0.084415, 0.949476, 0.302273,
		40.853504, 42.659935, 57.115578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318401, 42.006626, 57.502022>,  <40.912598, 41.995300, 56.903984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318401, 42.006626, 57.502022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109726, 42.346657, 57.530872>,  <40.984520, 42.550674, 57.548183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109726, 42.346657, 57.530872>,  <41.318401, 42.006626, 57.502022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109726, 42.346657, 57.530872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044114, -0.111312, 0.992806,
		0.851992, 0.514758, 0.095571,
		-0.521693, 0.850079, 0.072129,
		40.953217, 42.601681, 57.552509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532543, 42.419788, 58.088158>,  <41.318401, 42.006626, 57.502022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532543, 42.419788, 58.088158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.170128, 42.572014, 58.014118>,  <40.952679, 42.663349, 57.969696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.170128, 42.572014, 58.014118>,  <41.532543, 42.419788, 58.088158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170128, 42.572014, 58.014118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228639, -0.072155, 0.970834,
		0.356106, 0.921936, 0.152386,
		-0.906042, 0.380562, -0.185096,
		40.898315, 42.686184, 57.958588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408195, 43.120319, 58.415051>,  <41.532543, 42.419788, 58.088158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408195, 43.120319, 58.415051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073212, 42.909203, 58.358349>,  <40.872219, 42.782532, 58.324326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073212, 42.909203, 58.358349>,  <41.408195, 43.120319, 58.415051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073212, 42.909203, 58.358349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159120, -0.012663, 0.987178,
		-0.522816, 0.849281, -0.073376,
		-0.837463, -0.527788, -0.141758,
		40.821972, 42.750866, 58.315823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174023, 43.250465, 59.070152>,  <41.408195, 43.120319, 58.415051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174023, 43.250465, 59.070152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929398, 42.981201, 58.903854>,  <40.782623, 42.819641, 58.804073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929398, 42.981201, 58.903854>,  <41.174023, 43.250465, 59.070152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929398, 42.981201, 58.903854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208981, -0.369372, 0.905479,
		-0.763098, 0.640641, 0.085216,
		-0.611563, -0.673160, -0.415749,
		40.745930, 42.779255, 58.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604942, 43.302513, 59.456299>,  <41.174023, 43.250465, 59.070152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604942, 43.302513, 59.456299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583385, 42.941925, 59.284512>,  <40.570450, 42.725571, 59.181438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583385, 42.941925, 59.284512>,  <40.604942, 43.302513, 59.456299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583385, 42.941925, 59.284512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127039, -0.420412, 0.898396,
		-0.990433, 0.102978, -0.091864,
		-0.053894, -0.901471, -0.429471,
		40.567219, 42.671482, 59.155670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169052, 42.968750, 59.924084>,  <40.604942, 43.302513, 59.456299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169052, 42.968750, 59.924084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285389, 42.656525, 59.702766>,  <40.355190, 42.469189, 59.569977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285389, 42.656525, 59.702766>,  <40.169052, 42.968750, 59.924084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285389, 42.656525, 59.702766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041394, -0.588011, 0.807792,
		-0.955876, -0.212035, -0.203329,
		0.290840, -0.780566, -0.553289,
		40.372643, 42.422356, 59.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574623, 42.443367, 59.978516>,  <40.169052, 42.968750, 59.924084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574623, 42.443367, 59.978516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.942287, 42.306313, 59.900803>,  <40.162888, 42.224079, 59.854176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.942287, 42.306313, 59.900803>,  <39.574623, 42.443367, 59.978516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942287, 42.306313, 59.900803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002679, -0.487788, 0.872958,
		-0.393873, -0.802910, -0.447438,
		0.919161, -0.342636, -0.194277,
		40.218037, 42.203522, 59.842518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574680, 41.720856, 60.060104>,  <39.574623, 42.443367, 59.978516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574680, 41.720856, 60.060104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947124, 41.860657, 60.101849>,  <40.170589, 41.944538, 60.126896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947124, 41.860657, 60.101849>,  <39.574680, 41.720856, 60.060104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947124, 41.860657, 60.101849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034425, -0.369043, 0.928774,
		0.363121, -0.861195, -0.355650,
		0.931106, 0.349501, 0.104361,
		40.226456, 41.965508, 60.133156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815929, 41.329689, 60.558540>,  <39.574680, 41.720856, 60.060104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815929, 41.329689, 60.558540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118538, 41.588531, 60.520760>,  <40.300102, 41.743839, 60.498089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118538, 41.588531, 60.520760>,  <39.815929, 41.329689, 60.558540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118538, 41.588531, 60.520760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257374, -0.161836, 0.952663,
		0.601191, -0.745023, -0.288982,
		0.756523, 0.647109, -0.094456,
		40.345493, 41.782665, 60.492424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333389, 40.969963, 60.747631>,  <39.815929, 41.329689, 60.558540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333389, 40.969963, 60.747631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.416245, 41.357407, 60.802612>,  <40.465958, 41.589874, 60.835602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.416245, 41.357407, 60.802612>,  <40.333389, 40.969963, 60.747631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416245, 41.357407, 60.802612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365354, -0.206924, 0.907578,
		0.907530, -0.137773, -0.396746,
		0.207137, 0.968608, 0.137454,
		40.478386, 41.647987, 60.843849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036118, 41.075375, 60.766983>,  <40.333389, 40.969963, 60.747631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036118, 41.075375, 60.766983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.919556, 41.411987, 60.948933>,  <40.849617, 41.613953, 61.058102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.919556, 41.411987, 60.948933>,  <41.036118, 41.075375, 60.766983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919556, 41.411987, 60.948933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390177, -0.329598, 0.859725,
		0.873410, 0.428010, -0.232298,
		-0.291406, 0.841530, 0.454874,
		40.832134, 41.664448, 61.085396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144966, 41.234924, 60.002907>,  <41.036118, 41.075375, 60.766983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144966, 41.234924, 60.002907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319244, 40.895073, 60.121769>,  <41.423813, 40.691162, 60.193089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319244, 40.895073, 60.121769>,  <41.144966, 41.234924, 60.002907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319244, 40.895073, 60.121769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462871, -0.071651, -0.883525,
		0.771959, 0.522494, 0.362049,
		0.435696, -0.849627, 0.297159,
		41.449955, 40.640186, 60.210918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857380, 41.351643, 59.844536>,  <41.144966, 41.234924, 60.002907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857380, 41.351643, 59.844536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.804031, 40.955338, 59.854397>,  <41.772022, 40.717556, 59.860313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.804031, 40.955338, 59.854397>,  <41.857380, 41.351643, 59.844536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804031, 40.955338, 59.854397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487871, -0.087288, -0.868540,
		0.862667, -0.103810, 0.495005,
		-0.133371, -0.990759, 0.024654,
		41.764019, 40.658112, 59.861794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528706, 41.046497, 59.654049>,  <41.857380, 41.351643, 59.844536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528706, 41.046497, 59.654049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.225037, 40.798004, 59.576355>,  <42.042835, 40.648907, 59.529739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.225037, 40.798004, 59.576355>,  <42.528706, 41.046497, 59.654049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225037, 40.798004, 59.576355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377380, -0.176974, -0.908991,
		0.530321, -0.763381, 0.368794,
		-0.759173, -0.621233, -0.194232,
		41.997284, 40.611633, 59.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879532, 40.504845, 59.390388>,  <42.528706, 41.046497, 59.654049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879532, 40.504845, 59.390388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498943, 40.454803, 59.277924>,  <42.270592, 40.424778, 59.210445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498943, 40.454803, 59.277924>,  <42.879532, 40.504845, 59.390388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498943, 40.454803, 59.277924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307169, -0.330294, -0.892498,
		0.018791, -0.935550, 0.352694,
		-0.951469, -0.125108, -0.281165,
		42.213501, 40.417271, 59.193573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815380, 39.813198, 59.066517>,  <42.879532, 40.504845, 59.390388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815380, 39.813198, 59.066517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.510914, 40.032394, 58.927761>,  <42.328236, 40.163914, 58.844509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.510914, 40.032394, 58.927761>,  <42.815380, 39.813198, 59.066517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510914, 40.032394, 58.927761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123482, -0.402628, -0.906996,
		-0.636695, -0.733208, 0.238799,
		-0.761164, 0.547993, -0.346889,
		42.282566, 40.196793, 58.823696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503254, 39.396030, 58.543915>,  <42.815380, 39.813198, 59.066517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503254, 39.396030, 58.543915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.349663, 39.753273, 58.450172>,  <42.257507, 39.967621, 58.393929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.349663, 39.753273, 58.450172>,  <42.503254, 39.396030, 58.543915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349663, 39.753273, 58.450172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040456, -0.237292, -0.970596,
		-0.922458, -0.382164, 0.054982,
		-0.383973, 0.893109, -0.234353,
		42.234470, 40.021206, 58.379868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955170, 39.291344, 58.077911>,  <42.503254, 39.396030, 58.543915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955170, 39.291344, 58.077911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.096508, 39.659241, 58.009544>,  <42.181313, 39.879978, 57.968525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.096508, 39.659241, 58.009544>,  <41.955170, 39.291344, 58.077911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096508, 39.659241, 58.009544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231946, -0.263131, -0.936463,
		-0.906282, 0.291252, -0.306308,
		0.353346, 0.919747, -0.170916,
		42.202511, 39.935165, 57.958271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386387, 38.873352, 57.957001>,  <41.955170, 39.291344, 58.077911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386387, 38.873352, 57.957001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342163, 38.489204, 57.854652>,  <41.315628, 38.258717, 57.793243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342163, 38.489204, 57.854652>,  <41.386387, 38.873352, 57.957001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342163, 38.489204, 57.854652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517733, -0.164107, 0.839656,
		-0.848368, 0.225309, -0.479069,
		-0.110564, -0.960367, -0.255873,
		41.308994, 38.201096, 57.777889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597385, 38.668339, 57.906273>,  <41.386387, 38.873352, 57.957001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597385, 38.668339, 57.906273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.816086, 38.349609, 58.009140>,  <40.947308, 38.158371, 58.070862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.816086, 38.349609, 58.009140>,  <40.597385, 38.668339, 57.906273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816086, 38.349609, 58.009140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617663, -0.176472, 0.766387,
		-0.565294, -0.577864, -0.588656,
		0.546749, -0.796825, 0.257167,
		40.980110, 38.110561, 58.086288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151981, 38.139599, 58.000477>,  <40.597385, 38.668339, 57.906273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151981, 38.139599, 58.000477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476849, 38.010986, 58.195206>,  <40.671768, 37.933819, 58.312042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476849, 38.010986, 58.195206>,  <40.151981, 38.139599, 58.000477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476849, 38.010986, 58.195206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566427, -0.234618, 0.790010,
		-0.139793, -0.917373, -0.372672,
		0.812169, -0.321529, 0.486826,
		40.720501, 37.914528, 58.341255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965801, 37.502514, 58.273159>,  <40.151981, 38.139599, 58.000477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965801, 37.502514, 58.273159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.276939, 37.622581, 58.494011>,  <40.463623, 37.694622, 58.626522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.276939, 37.622581, 58.494011>,  <39.965801, 37.502514, 58.273159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276939, 37.622581, 58.494011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427834, -0.390616, 0.815093,
		0.460334, -0.870242, -0.175420,
		0.777850, 0.300165, 0.552133,
		40.510296, 37.712631, 58.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155216, 36.943584, 58.638859>,  <39.965801, 37.502514, 58.273159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155216, 36.943584, 58.638859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300453, 37.252899, 58.846779>,  <40.387596, 37.438488, 58.971531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300453, 37.252899, 58.846779>,  <40.155216, 36.943584, 58.638859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300453, 37.252899, 58.846779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159717, -0.497966, 0.852362,
		0.917961, -0.392510, -0.057303,
		0.363096, 0.773282, 0.519804,
		40.409382, 37.484882, 59.002720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649757, 36.681557, 59.175438>,  <40.155216, 36.943584, 58.638859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649757, 36.681557, 59.175438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.540112, 37.040520, 59.313728>,  <40.474323, 37.255898, 59.396702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.540112, 37.040520, 59.313728>,  <40.649757, 36.681557, 59.175438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540112, 37.040520, 59.313728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341281, -0.426865, 0.837445,
		0.899105, 0.111564, 0.423277,
		-0.274111, 0.897407, 0.345721,
		40.457878, 37.309742, 59.417446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762981, 36.694157, 59.842300>,  <40.649757, 36.681557, 59.175438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762981, 36.694157, 59.842300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.497513, 36.992477, 59.819290>,  <40.338230, 37.171471, 59.805485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.497513, 36.992477, 59.819290>,  <40.762981, 36.694157, 59.842300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497513, 36.992477, 59.819290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395845, -0.284914, 0.873001,
		0.634699, 0.602161, 0.484313,
		-0.663675, 0.745806, -0.057528,
		40.298409, 37.216221, 59.802032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729443, 36.969189, 60.488201>,  <40.762981, 36.694157, 59.842300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729443, 36.969189, 60.488201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397560, 37.125656, 60.328918>,  <40.198429, 37.219536, 60.233349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397560, 37.125656, 60.328918>,  <40.729443, 36.969189, 60.488201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397560, 37.125656, 60.328918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529280, -0.324673, 0.783869,
		0.177337, 0.861147, 0.476421,
		-0.829707, 0.391169, -0.398211,
		40.148647, 37.243008, 60.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482708, 37.417793, 60.957756>,  <40.729443, 36.969189, 60.488201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482708, 37.417793, 60.957756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149506, 37.354866, 60.745583>,  <39.949585, 37.317108, 60.618279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149506, 37.354866, 60.745583>,  <40.482708, 37.417793, 60.957756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149506, 37.354866, 60.745583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499507, -0.198402, 0.843285,
		-0.237902, 0.967413, 0.086688,
		-0.833004, -0.157318, -0.530430,
		39.899605, 37.307671, 60.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.067356, 40.271431, 44.547016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.717293, 40.222466, 44.734253>,  <43.507256, 40.193085, 44.846596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.717293, 40.222466, 44.734253>,  <44.067356, 40.271431, 44.547016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717293, 40.222466, 44.734253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454403, 0.124347, 0.882075,
		-0.166188, 0.984658, -0.053197,
		-0.875157, -0.122417, 0.468096,
		43.454746, 40.185741, 44.874683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144588, 40.706001, 45.164066>,  <44.067356, 40.271431, 44.547016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144588, 40.706001, 45.164066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.829880, 40.475204, 45.251770>,  <43.641056, 40.336727, 45.304394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.829880, 40.475204, 45.251770>,  <44.144588, 40.706001, 45.164066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829880, 40.475204, 45.251770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225935, 0.061365, 0.972208,
		-0.574407, 0.814444, 0.082081,
		-0.786772, -0.576988, 0.219260,
		43.593849, 40.302109, 45.317547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739819, 41.025894, 45.703693>,  <44.144588, 40.706001, 45.164066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739819, 41.025894, 45.703693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.688362, 40.629623, 45.721630>,  <43.657486, 40.391861, 45.732391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.688362, 40.629623, 45.721630>,  <43.739819, 41.025894, 45.703693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688362, 40.629623, 45.721630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204359, 0.017763, 0.978735,
		-0.970406, 0.135071, 0.200169,
		-0.128643, -0.990677, 0.044840,
		43.649769, 40.332420, 45.735081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497555, 40.906841, 46.289669>,  <43.739819, 41.025894, 45.703693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497555, 40.906841, 46.289669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.567215, 40.518097, 46.226231>,  <43.609009, 40.284851, 46.188168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.567215, 40.518097, 46.226231>,  <43.497555, 40.906841, 46.289669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567215, 40.518097, 46.226231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091528, -0.144382, 0.985280,
		-0.980457, -0.186098, 0.063810,
		0.174146, -0.971865, -0.158593,
		43.619457, 40.226536, 46.178654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074574, 40.526550, 46.686440>,  <43.497555, 40.906841, 46.289669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074574, 40.526550, 46.686440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.351440, 40.249138, 46.606522>,  <43.517559, 40.082691, 46.558571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.351440, 40.249138, 46.606522>,  <43.074574, 40.526550, 46.686440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351440, 40.249138, 46.606522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028511, -0.302888, 0.952600,
		-0.721174, -0.653662, -0.229422,
		0.692167, -0.693531, -0.199798,
		43.559090, 40.041080, 46.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702461, 39.853958, 46.772816>,  <43.074574, 40.526550, 46.686440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702461, 39.853958, 46.772816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.098446, 39.822372, 46.819702>,  <43.336037, 39.803421, 46.847836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.098446, 39.822372, 46.819702>,  <42.702461, 39.853958, 46.772816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098446, 39.822372, 46.819702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140502, -0.459925, 0.876771,
		-0.015318, -0.884440, -0.466403,
		0.989962, -0.078961, 0.117220,
		43.395435, 39.798683, 46.854870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890476, 39.146679, 46.875378>,  <42.702461, 39.853958, 46.772816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890476, 39.146679, 46.875378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.191437, 39.353203, 47.038998>,  <43.372013, 39.477119, 47.137169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.191437, 39.353203, 47.038998>,  <42.890476, 39.146679, 46.875378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191437, 39.353203, 47.038998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165459, -0.452937, 0.876055,
		0.637591, -0.726822, -0.255360,
		0.752397, 0.516313, 0.409047,
		43.417156, 39.508095, 47.161713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107277, 38.718613, 47.328064>,  <42.890476, 39.146679, 46.875378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107277, 38.718613, 47.328064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.313698, 39.032555, 47.465286>,  <43.437550, 39.220921, 47.547619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.313698, 39.032555, 47.465286>,  <43.107277, 38.718613, 47.328064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313698, 39.032555, 47.465286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104587, -0.339773, 0.934674,
		0.850149, -0.518218, -0.093254,
		0.516051, 0.784859, 0.343057,
		43.468513, 39.268013, 47.568203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672409, 38.465286, 47.787441>,  <43.107277, 38.718613, 47.328064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672409, 38.465286, 47.787441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634529, 38.844879, 47.907745>,  <43.611801, 39.072636, 47.979927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634529, 38.844879, 47.907745>,  <43.672409, 38.465286, 47.787441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634529, 38.844879, 47.907745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039166, -0.305433, 0.951408,
		0.994735, 0.078322, 0.066093,
		-0.094704, 0.948987, 0.300757,
		43.606117, 39.129574, 47.997974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129322, 38.483917, 48.328148>,  <43.672409, 38.465286, 47.787441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129322, 38.483917, 48.328148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903652, 38.802322, 48.415848>,  <43.768250, 38.993366, 48.468468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903652, 38.802322, 48.415848>,  <44.129322, 38.483917, 48.328148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903652, 38.802322, 48.415848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025992, -0.248288, 0.968338,
		0.825246, 0.552010, 0.119388,
		-0.564175, 0.796014, 0.219246,
		43.734398, 39.041126, 48.481621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484478, 38.976879, 48.830067>,  <44.129322, 38.483917, 48.328148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484478, 38.976879, 48.830067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086960, 39.017021, 48.849209>,  <43.848450, 39.041107, 48.860695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086960, 39.017021, 48.849209>,  <44.484478, 38.976879, 48.830067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086960, 39.017021, 48.849209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011281, -0.337159, 0.941380,
		0.110609, 0.936083, 0.333937,
		-0.993800, 0.100358, 0.047853,
		43.788818, 39.047127, 48.863564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448479, 39.237926, 49.468594>,  <44.484478, 38.976879, 48.830067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448479, 39.237926, 49.468594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.060112, 39.150330, 49.429901>,  <43.827091, 39.097771, 49.406685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.060112, 39.150330, 49.429901>,  <44.448479, 39.237926, 49.468594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060112, 39.150330, 49.429901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045639, -0.227331, 0.972747,
		-0.235015, 0.948874, 0.210726,
		-0.970920, -0.218993, -0.096731,
		43.768837, 39.084633, 49.400883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616970, 39.945179, 49.415154>,  <44.448479, 39.237926, 49.468594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616970, 39.945179, 49.415154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.932125, 40.153534, 49.546551>,  <45.121216, 40.278549, 49.625389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.932125, 40.153534, 49.546551>,  <44.616970, 39.945179, 49.415154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932125, 40.153534, 49.546551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183982, 0.309964, -0.932777,
		-0.587698, 0.795358, 0.148382,
		0.787884, 0.520892, 0.328497,
		45.168491, 40.309803, 49.645100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538258, 40.574764, 49.148743>,  <44.616970, 39.945179, 49.415154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538258, 40.574764, 49.148743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.923611, 40.538330, 49.249611>,  <45.154823, 40.516468, 49.310131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.923611, 40.538330, 49.249611>,  <44.538258, 40.574764, 49.148743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923611, 40.538330, 49.249611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266203, 0.437197, -0.859066,
		-0.032003, 0.894742, 0.445436,
		0.963385, -0.091084, 0.252175,
		45.212627, 40.511005, 49.325264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729969, 41.179134, 49.033249>,  <44.538258, 40.574764, 49.148743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729969, 41.179134, 49.033249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.065857, 40.963882, 49.004181>,  <45.267391, 40.834732, 48.986740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.065857, 40.963882, 49.004181>,  <44.729969, 41.179134, 49.033249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065857, 40.963882, 49.004181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268786, 0.528199, -0.805456,
		0.471826, 0.656827, 0.588183,
		0.839723, -0.538130, -0.072673,
		45.317772, 40.802444, 48.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209915, 41.640842, 48.775272>,  <44.729969, 41.179134, 49.033249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209915, 41.640842, 48.775272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.414612, 41.303085, 48.711861>,  <45.537430, 41.100433, 48.673813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.414612, 41.303085, 48.711861>,  <45.209915, 41.640842, 48.775272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414612, 41.303085, 48.711861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503319, 0.444188, -0.741193,
		0.696271, 0.299509, 0.652305,
		0.511739, -0.844389, -0.158526,
		45.568134, 41.049770, 48.664303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952225, 41.801586, 48.752323>,  <45.209915, 41.640842, 48.775272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952225, 41.801586, 48.752323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.871117, 41.468208, 48.546700>,  <45.822453, 41.268181, 48.423325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.871117, 41.468208, 48.546700>,  <45.952225, 41.801586, 48.752323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871117, 41.468208, 48.546700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486408, 0.369893, -0.791572,
		0.849878, -0.410545, 0.330393,
		-0.202766, -0.833446, -0.514056,
		45.810287, 41.218174, 48.392483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454445, 41.735497, 48.311466>,  <45.952225, 41.801586, 48.752323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454445, 41.735497, 48.311466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.183350, 41.480576, 48.164764>,  <46.020691, 41.327621, 48.076744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.183350, 41.480576, 48.164764>,  <46.454445, 41.735497, 48.311466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183350, 41.480576, 48.164764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241725, 0.277952, -0.929684,
		0.694431, -0.718740, -0.034328,
		-0.677743, -0.637303, -0.366756,
		45.980026, 41.289383, 48.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753906, 41.564606, 47.655827>,  <46.454445, 41.735497, 48.311466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753906, 41.564606, 47.655827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.365479, 41.469086, 47.655407>,  <46.132423, 41.411774, 47.655155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.365479, 41.469086, 47.655407>,  <46.753906, 41.564606, 47.655827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365479, 41.469086, 47.655407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034647, 0.145245, -0.988789,
		0.236275, -0.960145, -0.149316,
		-0.971068, -0.238800, -0.001051,
		46.074158, 41.397446, 47.655090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695362, 41.091808, 47.085419>,  <46.753906, 41.564606, 47.655827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695362, 41.091808, 47.085419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.336380, 41.242935, 47.176491>,  <46.120991, 41.333611, 47.231133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.336380, 41.242935, 47.176491>,  <46.695362, 41.091808, 47.085419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336380, 41.242935, 47.176491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174768, 0.169355, -0.969935,
		-0.405017, -0.910260, -0.085958,
		-0.897451, 0.377817, 0.227676,
		46.067146, 41.356281, 47.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153328, 40.774231, 46.584019>,  <46.695362, 41.091808, 47.085419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153328, 40.774231, 46.584019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.016335, 41.125046, 46.718788>,  <45.934139, 41.335533, 46.799652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.016335, 41.125046, 46.718788>,  <46.153328, 40.774231, 46.584019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016335, 41.125046, 46.718788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302095, 0.236774, -0.923405,
		-0.889632, -0.418033, 0.183856,
		-0.342481, 0.877033, 0.336928,
		45.913589, 41.388157, 46.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756763, 40.923084, 46.086864>,  <46.153328, 40.774231, 46.584019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756763, 40.923084, 46.086864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.741043, 41.258591, 46.304096>,  <45.731613, 41.459892, 46.434437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.741043, 41.258591, 46.304096>,  <45.756763, 40.923084, 46.086864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741043, 41.258591, 46.304096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333641, 0.501292, -0.798367,
		-0.941881, -0.212566, 0.260146,
		-0.039297, 0.838762, 0.543079,
		45.729256, 41.510220, 46.467018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079308, 41.096420, 46.274815>,  <45.756763, 40.923084, 46.086864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079308, 41.096420, 46.274815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.293858, 41.434013, 46.275333>,  <45.422588, 41.636570, 46.275646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.293858, 41.434013, 46.275333>,  <45.079308, 41.096420, 46.274815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293858, 41.434013, 46.275333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492312, 0.314125, -0.811760,
		-0.685516, 0.434768, 0.583990,
		0.536374, 0.843980, 0.001296,
		45.454769, 41.687206, 46.275723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585194, 41.540195, 46.136635>,  <45.079308, 41.096420, 46.274815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585194, 41.540195, 46.136635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.935413, 41.713577, 46.051285>,  <45.145546, 41.817608, 46.000076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.935413, 41.713577, 46.051285>,  <44.585194, 41.540195, 46.136635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935413, 41.713577, 46.051285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409293, 0.430838, -0.804275,
		-0.256689, 0.791515, 0.554630,
		0.875551, 0.433455, -0.213370,
		45.198078, 41.843613, 45.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427208, 42.164349, 45.997284>,  <44.585194, 41.540195, 46.136635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427208, 42.164349, 45.997284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.785431, 42.125626, 45.823570>,  <45.000366, 42.102394, 45.719341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.785431, 42.125626, 45.823570>,  <44.427208, 42.164349, 45.997284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785431, 42.125626, 45.823570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334086, 0.498354, -0.800019,
		0.293872, 0.861552, 0.413965,
		0.895559, -0.096804, -0.434285,
		45.054100, 42.096584, 45.693283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595448, 42.861858, 45.909130>,  <44.427208, 42.164349, 45.997284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595448, 42.861858, 45.909130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.768944, 42.619957, 45.641956>,  <44.873043, 42.474815, 45.481651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.768944, 42.619957, 45.641956>,  <44.595448, 42.861858, 45.909130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768944, 42.619957, 45.641956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577216, 0.382724, -0.721348,
		0.691872, 0.698426, -0.183068,
		0.433744, -0.604751, -0.667939,
		44.899067, 42.438530, 45.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626354, 43.284016, 45.421616>,  <44.595448, 42.861858, 45.909130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626354, 43.284016, 45.421616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.702812, 42.924469, 45.263882>,  <44.748688, 42.708740, 45.169243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.702812, 42.924469, 45.263882>,  <44.626354, 43.284016, 45.421616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702812, 42.924469, 45.263882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426923, 0.285621, -0.857996,
		0.883856, 0.332350, -0.329153,
		0.191142, -0.898868, -0.394336,
		44.760155, 42.654808, 45.145580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022060, 43.437439, 45.755009>,  <44.626354, 43.284016, 45.421616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022060, 43.437439, 45.755009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.992508, 43.834793, 45.790173>,  <43.974777, 44.073204, 45.811272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.992508, 43.834793, 45.790173>,  <44.022060, 43.437439, 45.755009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992508, 43.834793, 45.790173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081551, -0.093870, 0.992239,
		0.993927, 0.066139, 0.087946,
		-0.073881, 0.993385, 0.087906,
		43.970345, 44.132809, 45.816544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445084, 43.650124, 46.351501>,  <44.022060, 43.437439, 45.755009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445084, 43.650124, 46.351501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.125175, 43.873337, 46.262989>,  <43.933231, 44.007267, 46.209881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.125175, 43.873337, 46.262989>,  <44.445084, 43.650124, 46.351501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125175, 43.873337, 46.262989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103899, 0.234378, 0.966577,
		0.591247, 0.796030, -0.129469,
		-0.799770, 0.558035, -0.221282,
		43.885246, 44.040749, 46.196606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598747, 44.472351, 46.560230>,  <44.445084, 43.650124, 46.351501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598747, 44.472351, 46.560230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.213531, 44.364830, 46.567104>,  <43.982403, 44.300316, 46.571228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.213531, 44.364830, 46.567104>,  <44.598747, 44.472351, 46.560230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213531, 44.364830, 46.567104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087905, 0.373951, 0.923273,
		-0.254608, 0.887639, -0.383760,
		-0.963041, -0.268807, 0.017183,
		43.924618, 44.284187, 46.572258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277073, 45.013134, 46.932911>,  <44.598747, 44.472351, 46.560230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277073, 45.013134, 46.932911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.010784, 44.714661, 46.934967>,  <43.851013, 44.535576, 46.936199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.010784, 44.714661, 46.934967>,  <44.277073, 45.013134, 46.932911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010784, 44.714661, 46.934967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173844, 0.161783, 0.971393,
		-0.725671, 0.645781, -0.237422,
		-0.665718, -0.746186, 0.005136,
		43.811069, 44.490807, 46.936508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769470, 45.297440, 47.351120>,  <44.277073, 45.013134, 46.932911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769470, 45.297440, 47.351120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.715675, 44.901077, 47.353184>,  <43.683399, 44.663261, 47.354424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.715675, 44.901077, 47.353184>,  <43.769470, 45.297440, 47.351120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715675, 44.901077, 47.353184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433009, 0.063453, 0.899153,
		-0.891301, 0.118688, -0.437603,
		-0.134486, -0.990902, 0.005163,
		43.675331, 44.603806, 47.354733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080818, 45.164406, 47.562065>,  <43.769470, 45.297440, 47.351120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080818, 45.164406, 47.562065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.279457, 44.831406, 47.660320>,  <43.398640, 44.631607, 47.719273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.279457, 44.831406, 47.660320>,  <43.080818, 45.164406, 47.562065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279457, 44.831406, 47.660320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479450, -0.027187, 0.877148,
		-0.723546, -0.553360, -0.412642,
		0.496597, -0.832498, 0.245638,
		43.428436, 44.581657, 47.734013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617790, 44.872280, 47.914669>,  <43.080818, 45.164406, 47.562065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617790, 44.872280, 47.914669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.930260, 44.648178, 48.024857>,  <43.117741, 44.513718, 48.090969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.930260, 44.648178, 48.024857>,  <42.617790, 44.872280, 47.914669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930260, 44.648178, 48.024857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417900, -0.141441, 0.897415,
		-0.463820, -0.816154, -0.344621,
		0.781173, -0.560256, 0.275468,
		43.164612, 44.480103, 48.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412636, 44.299717, 48.358158>,  <42.617790, 44.872280, 47.914669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412636, 44.299717, 48.358158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.797821, 44.319275, 48.464226>,  <43.028931, 44.331009, 48.527866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.797821, 44.319275, 48.464226>,  <42.412636, 44.299717, 48.358158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797821, 44.319275, 48.464226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241970, -0.277254, 0.929829,
		0.118980, -0.959552, -0.255154,
		0.962962, 0.048891, 0.265170,
		43.086708, 44.333942, 48.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505375, 43.700081, 48.839100>,  <42.412636, 44.299717, 48.358158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505375, 43.700081, 48.839100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.831451, 43.918945, 48.915081>,  <43.027096, 44.050262, 48.960670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.831451, 43.918945, 48.915081>,  <42.505375, 43.700081, 48.839100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831451, 43.918945, 48.915081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116023, -0.167042, 0.979099,
		0.567454, -0.820191, -0.072688,
		0.815190, 0.547160, 0.189949,
		43.076008, 44.083092, 48.972065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842640, 43.295803, 49.237156>,  <42.505375, 43.700081, 48.839100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842640, 43.295803, 49.237156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.978798, 43.662659, 49.320091>,  <43.060493, 43.882771, 49.369854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.978798, 43.662659, 49.320091>,  <42.842640, 43.295803, 49.237156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978798, 43.662659, 49.320091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193908, -0.147297, 0.969899,
		0.920070, -0.370356, 0.127701,
		0.340398, 0.917137, 0.207338,
		43.080917, 43.937801, 49.382294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286617, 43.193668, 49.806656>,  <42.842640, 43.295803, 49.237156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286617, 43.193668, 49.806656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.188206, 43.581314, 49.813519>,  <43.129158, 43.813900, 49.817635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.188206, 43.581314, 49.813519>,  <43.286617, 43.193668, 49.806656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188206, 43.581314, 49.813519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252708, -0.081222, 0.964127,
		0.935739, 0.232870, 0.264885,
		-0.246031, 0.969110, 0.017154,
		43.114395, 43.872047, 49.818665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673409, 43.540813, 50.421215>,  <43.286617, 43.193668, 49.806656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673409, 43.540813, 50.421215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.340485, 43.743988, 50.332439>,  <43.140728, 43.865894, 50.279175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.340485, 43.743988, 50.332439>,  <43.673409, 43.540813, 50.421215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340485, 43.743988, 50.332439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261781, -0.007263, 0.965100,
		0.488597, 0.861365, 0.139013,
		-0.832313, 0.507935, -0.221940,
		43.090790, 43.896370, 50.265858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809761, 44.174034, 50.784492>,  <43.673409, 43.540813, 50.421215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809761, 44.174034, 50.784492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.417908, 44.142532, 50.710613>,  <43.182796, 44.123631, 50.666286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.417908, 44.142532, 50.710613>,  <43.809761, 44.174034, 50.784492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417908, 44.142532, 50.710613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183928, -0.016994, 0.982793,
		-0.080535, 0.996750, 0.002163,
		-0.979635, -0.078752, -0.184699,
		43.124016, 44.118908, 50.655205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440544, 44.583488, 51.287956>,  <43.809761, 44.174034, 50.784492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440544, 44.583488, 51.287956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.136139, 44.370506, 51.139709>,  <42.953495, 44.242718, 51.050762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.136139, 44.370506, 51.139709>,  <43.440544, 44.583488, 51.287956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136139, 44.370506, 51.139709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405913, -0.054835, 0.912265,
		-0.506062, 0.844681, -0.174400,
		-0.761010, -0.532454, -0.370617,
		42.907837, 44.210770, 51.028522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805000, 44.883560, 51.527611>,  <43.440544, 44.583488, 51.287956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805000, 44.883560, 51.527611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701550, 44.507179, 51.440235>,  <42.639477, 44.281349, 51.387810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701550, 44.507179, 51.440235>,  <42.805000, 44.883560, 51.527611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701550, 44.507179, 51.440235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351402, -0.118989, 0.928632,
		-0.899793, 0.316931, -0.299879,
		-0.258630, -0.940955, -0.218436,
		42.623962, 44.224892, 51.374702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159958, 44.814754, 51.842358>,  <42.805000, 44.883560, 51.527611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159958, 44.814754, 51.842358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.277882, 44.434975, 51.799206>,  <42.348637, 44.207108, 51.773315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.277882, 44.434975, 51.799206>,  <42.159958, 44.814754, 51.842358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277882, 44.434975, 51.799206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315392, -0.203254, 0.926939,
		-0.902008, -0.239241, -0.359369,
		0.294805, -0.949448, -0.107882,
		42.366322, 44.150139, 51.766842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555382, 44.467060, 52.016033>,  <42.159958, 44.814754, 51.842358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555382, 44.467060, 52.016033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.866165, 44.218445, 52.056076>,  <42.052635, 44.069275, 52.080101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.866165, 44.218445, 52.056076>,  <41.555382, 44.467060, 52.016033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866165, 44.218445, 52.056076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416453, -0.388179, 0.822122,
		-0.472121, -0.680447, -0.560441,
		0.776961, -0.621538, 0.100106,
		42.099255, 44.031982, 52.086109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304752, 43.777901, 52.164192>,  <41.555382, 44.467060, 52.016033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304752, 43.777901, 52.164192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.673401, 43.758263, 52.318176>,  <41.894592, 43.746479, 52.410568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.673401, 43.758263, 52.318176>,  <41.304752, 43.777901, 52.164192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673401, 43.758263, 52.318176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361994, -0.466303, 0.807170,
		0.139881, -0.883262, -0.447529,
		0.921626, -0.049095, 0.384962,
		41.949890, 43.743534, 52.433666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448895, 43.035530, 52.493351>,  <41.304752, 43.777901, 52.164192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448895, 43.035530, 52.493351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692085, 43.287636, 52.686485>,  <41.837997, 43.438900, 52.802368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692085, 43.287636, 52.686485>,  <41.448895, 43.035530, 52.493351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692085, 43.287636, 52.686485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289689, -0.390121, 0.874006,
		0.739221, -0.671246, -0.054603,
		0.607974, 0.630266, 0.482838,
		41.874477, 43.476715, 52.831337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634895, 42.638287, 53.028053>,  <41.448895, 43.035530, 52.493351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634895, 42.638287, 53.028053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.754524, 43.000259, 53.149155>,  <41.826302, 43.217442, 53.221813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.754524, 43.000259, 53.149155>,  <41.634895, 42.638287, 53.028053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754524, 43.000259, 53.149155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029267, -0.308425, 0.950798,
		0.953782, -0.293218, -0.065757,
		0.299072, 0.904929, 0.302751,
		41.844246, 43.271740, 53.239979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204853, 42.531834, 53.695400>,  <41.634895, 42.638287, 53.028053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204853, 42.531834, 53.695400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.043419, 42.897804, 53.697681>,  <41.946556, 43.117386, 53.699051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.043419, 42.897804, 53.697681>,  <42.204853, 42.531834, 53.695400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043419, 42.897804, 53.697681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126528, -0.061982, 0.990025,
		0.906150, 0.398841, 0.140779,
		-0.403588, 0.914923, 0.005701,
		41.922344, 43.172279, 53.699390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398689, 42.865295, 54.278080>,  <42.204853, 42.531834, 53.695400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398689, 42.865295, 54.278080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.090263, 43.106354, 54.195839>,  <41.905209, 43.250988, 54.146496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.090263, 43.106354, 54.195839>,  <42.398689, 42.865295, 54.278080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090263, 43.106354, 54.195839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188315, 0.092628, 0.977731,
		0.608274, 0.792612, 0.042066,
		-0.771065, 0.602650, -0.205604,
		41.858944, 43.287148, 54.134159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550148, 43.489491, 54.637192>,  <42.398689, 42.865295, 54.278080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550148, 43.489491, 54.637192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158333, 43.449844, 54.567127>,  <41.923244, 43.426056, 54.525089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158333, 43.449844, 54.567127>,  <42.550148, 43.489491, 54.637192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158333, 43.449844, 54.567127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187257, 0.129913, 0.973682,
		-0.073748, 0.986559, -0.145814,
		-0.979539, -0.099112, -0.175160,
		41.864471, 43.420113, 54.514580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149372, 44.039566, 55.036308>,  <42.550148, 43.489491, 54.637192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149372, 44.039566, 55.036308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.868496, 43.764572, 54.962246>,  <41.699970, 43.599575, 54.917809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.868496, 43.764572, 54.962246>,  <42.149372, 44.039566, 55.036308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868496, 43.764572, 54.962246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345559, 0.101708, 0.932869,
		-0.622505, 0.719037, -0.308987,
		-0.702194, -0.687489, -0.185156,
		41.657837, 43.558327, 54.906700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496109, 44.325073, 55.279793>,  <42.149372, 44.039566, 55.036308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496109, 44.325073, 55.279793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.440689, 43.929375, 55.261044>,  <41.407436, 43.691956, 55.249794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.440689, 43.929375, 55.261044>,  <41.496109, 44.325073, 55.279793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440689, 43.929375, 55.261044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374691, 0.008544, 0.927111,
		-0.916740, 0.146012, -0.371845,
		-0.138547, -0.989246, -0.046877,
		41.399124, 43.632603, 55.246979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750156, 44.176472, 55.525234>,  <41.496109, 44.325073, 55.279793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750156, 44.176472, 55.525234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936638, 43.825066, 55.566933>,  <41.048527, 43.614223, 55.591953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936638, 43.825066, 55.566933>,  <40.750156, 44.176472, 55.525234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936638, 43.825066, 55.566933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420467, -0.116358, 0.899816,
		-0.778370, -0.463331, -0.423632,
		0.466205, -0.878513, 0.104245,
		41.076500, 43.561512, 55.598206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216717, 43.658859, 55.843708>,  <40.750156, 44.176472, 55.525234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216717, 43.658859, 55.843708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575722, 43.493858, 55.906067>,  <40.791126, 43.394855, 55.943481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575722, 43.493858, 55.906067>,  <40.216717, 43.658859, 55.843708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575722, 43.493858, 55.906067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289504, -0.284494, 0.913921,
		-0.332650, -0.865389, -0.374761,
		0.897514, -0.412510, 0.155897,
		40.844978, 43.370106, 55.952835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741325, 43.058636, 55.438118>,  <40.216717, 43.658859, 55.843708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741325, 43.058636, 55.438118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368855, 43.141579, 55.318172>,  <39.145374, 43.191345, 55.246204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368855, 43.141579, 55.318172>,  <39.741325, 43.058636, 55.438118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368855, 43.141579, 55.318172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320758, 0.075024, -0.944185,
		-0.173286, -0.975385, -0.136372,
		-0.931175, 0.207357, -0.299862,
		39.089500, 43.203785, 55.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709320, 42.711491, 54.773529>,  <39.741325, 43.058636, 55.438118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709320, 42.711491, 54.773529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388802, 42.948006, 54.737076>,  <39.196491, 43.089912, 54.715206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388802, 42.948006, 54.737076>,  <39.709320, 42.711491, 54.773529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388802, 42.948006, 54.737076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152926, 0.055173, -0.986696,
		-0.578392, -0.804572, -0.134633,
		-0.801297, 0.591286, -0.091129,
		39.148411, 43.125393, 54.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223949, 42.387814, 54.270561>,  <39.709320, 42.711491, 54.773529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223949, 42.387814, 54.270561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117111, 42.773018, 54.284775>,  <39.053009, 43.004143, 54.293304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117111, 42.773018, 54.284775>,  <39.223949, 42.387814, 54.270561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117111, 42.773018, 54.284775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124865, 0.071152, -0.989619,
		-0.955547, -0.259884, -0.139251,
		-0.267094, 0.963015, 0.035538,
		39.036983, 43.061924, 54.295437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906296, 42.414974, 53.667080>,  <39.223949, 42.387814, 54.270561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906296, 42.414974, 53.667080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937969, 42.798378, 53.776611>,  <38.956974, 43.028419, 53.842331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937969, 42.798378, 53.776611>,  <38.906296, 42.414974, 53.667080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937969, 42.798378, 53.776611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046770, 0.277964, -0.959452,
		-0.995762, 0.063167, 0.066840,
		0.079184, 0.958512, 0.273832,
		38.961723, 43.085930, 53.858761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352497, 42.809990, 53.412018>,  <38.906296, 42.414974, 53.667080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352497, 42.809990, 53.412018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633835, 43.088356, 53.470009>,  <38.802635, 43.255375, 53.504803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633835, 43.088356, 53.470009>,  <38.352497, 42.809990, 53.412018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633835, 43.088356, 53.470009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042534, 0.244787, -0.968643,
		-0.709579, 0.675120, 0.201769,
		0.703341, 0.695911, 0.144980,
		38.844837, 43.297131, 53.513504>
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
