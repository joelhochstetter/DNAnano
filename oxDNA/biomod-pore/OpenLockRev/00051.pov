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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.782364, 32.925720, 50.712585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792023, 33.314438, 50.618752>,  <39.797817, 33.547668, 50.562450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792023, 33.314438, 50.618752>,  <39.782364, 32.925720, 50.712585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792023, 33.314438, 50.618752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964611, 0.038984, 0.260778,
		0.262568, -0.232580, -0.936464,
		0.024145, 0.971796, -0.234585,
		39.799267, 33.605976, 50.548374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333946, 33.000927, 50.244724>,  <39.782364, 32.925720, 50.712585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333946, 33.000927, 50.244724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294891, 33.366859, 50.401470>,  <40.271458, 33.586418, 50.495518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294891, 33.366859, 50.401470>,  <40.333946, 33.000927, 50.244724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294891, 33.366859, 50.401470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986374, 0.036564, 0.160402,
		0.132412, 0.402187, -0.905932,
		-0.097636, 0.914827, 0.391866,
		40.265602, 33.641308, 50.519032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887768, 33.204578, 49.972908>,  <40.333946, 33.000927, 50.244724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887768, 33.204578, 49.972908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804729, 33.464390, 50.265488>,  <40.754906, 33.620277, 50.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804729, 33.464390, 50.265488>,  <40.887768, 33.204578, 49.972908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804729, 33.464390, 50.265488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978165, 0.130286, 0.161920,
		0.009875, 0.749088, -0.662396,
		-0.207593, 0.649532, 0.731446,
		40.742451, 33.659248, 50.484921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195129, 33.873478, 49.770866>,  <40.887768, 33.204578, 49.972908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195129, 33.873478, 49.770866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167381, 33.860909, 50.169704>,  <41.150730, 33.853367, 50.409008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167381, 33.860909, 50.169704>,  <41.195129, 33.873478, 49.770866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167381, 33.860909, 50.169704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948513, 0.307563, 0.075686,
		-0.309048, 0.951009, 0.008467,
		-0.069374, -0.031422, 0.997096,
		41.146568, 33.851482, 50.468834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475521, 34.431293, 49.959553>,  <41.195129, 33.873478, 49.770866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475521, 34.431293, 49.959553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477417, 34.214840, 50.295921>,  <41.478554, 34.084969, 50.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477417, 34.214840, 50.295921>,  <41.475521, 34.431293, 49.959553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477417, 34.214840, 50.295921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896603, 0.374678, 0.236050,
		-0.442810, 0.752854, 0.486960,
		0.004742, -0.541135, 0.840922,
		41.478840, 34.052498, 50.548199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822220, 34.950146, 50.462330>,  <41.475521, 34.431293, 49.959553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822220, 34.950146, 50.462330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846703, 34.578053, 50.607059>,  <41.861393, 34.354797, 50.693897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846703, 34.578053, 50.607059>,  <41.822220, 34.950146, 50.462330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846703, 34.578053, 50.607059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873733, 0.225188, 0.431139,
		-0.482539, 0.289752, 0.826559,
		0.061208, -0.930233, 0.361828,
		41.865067, 34.298981, 50.715607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070042, 35.063839, 51.143406>,  <41.822220, 34.950146, 50.462330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070042, 35.063839, 51.143406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143776, 34.677444, 51.070866>,  <42.188015, 34.445606, 51.027340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143776, 34.677444, 51.070866>,  <42.070042, 35.063839, 51.143406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143776, 34.677444, 51.070866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873174, 0.076241, 0.481409,
		-0.451208, -0.247094, 0.857529,
		0.184333, -0.965988, -0.181355,
		42.199074, 34.387650, 51.016460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211105, 34.758732, 51.824955>,  <42.070042, 35.063839, 51.143406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211105, 34.758732, 51.824955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384056, 34.541199, 51.537262>,  <42.487827, 34.410679, 51.364647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384056, 34.541199, 51.537262>,  <42.211105, 34.758732, 51.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384056, 34.541199, 51.537262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893672, 0.152313, 0.422079,
		-0.119991, -0.825257, 0.551863,
		0.432380, -0.543830, -0.719233,
		42.513771, 34.378048, 51.321491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778324, 34.321251, 52.172096>,  <42.211105, 34.758732, 51.824955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778324, 34.321251, 52.172096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875870, 34.308064, 51.784397>,  <42.934399, 34.300152, 51.551777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875870, 34.308064, 51.784397>,  <42.778324, 34.321251, 52.172096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875870, 34.308064, 51.784397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946951, 0.223800, 0.230646,
		0.209315, -0.974077, 0.085794,
		0.243868, -0.032965, -0.969248,
		42.949032, 34.298176, 51.493622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363918, 33.906105, 52.196651>,  <42.778324, 34.321251, 52.172096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363918, 33.906105, 52.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370815, 34.093803, 51.843491>,  <43.374954, 34.206421, 51.631596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370815, 34.093803, 51.843491>,  <43.363918, 33.906105, 52.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370815, 34.093803, 51.843491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999563, -0.029323, 0.003940,
		-0.024040, -0.882581, -0.469546,
		0.017246, 0.469246, -0.882899,
		43.375988, 34.234577, 51.578621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849644, 33.600334, 51.860584>,  <43.363918, 33.906105, 52.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849644, 33.600334, 51.860584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805641, 33.955158, 51.681240>,  <43.779240, 34.168053, 51.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805641, 33.955158, 51.681240>,  <43.849644, 33.600334, 51.860584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805641, 33.955158, 51.681240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986207, 0.153542, 0.061813,
		0.123673, -0.435373, -0.891715,
		-0.110004, 0.887060, -0.448357,
		43.772640, 34.221275, 51.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486191, 33.547688, 51.479610>,  <43.849644, 33.600334, 51.860584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486191, 33.547688, 51.479610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370697, 33.927818, 51.433105>,  <44.301403, 34.155895, 51.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370697, 33.927818, 51.433105>,  <44.486191, 33.547688, 51.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370697, 33.927818, 51.433105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939907, 0.258239, -0.223356,
		-0.182237, -0.173768, -0.967778,
		-0.288730, 0.950325, -0.116265,
		44.284077, 34.212917, 51.398228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771553, 33.806122, 50.809006>,  <44.486191, 33.547688, 51.479610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771553, 33.806122, 50.809006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684162, 34.120754, 51.040024>,  <44.631729, 34.309532, 51.178635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684162, 34.120754, 51.040024>,  <44.771553, 33.806122, 50.809006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684162, 34.120754, 51.040024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895537, 0.396725, -0.201549,
		-0.387662, 0.473180, -0.791088,
		-0.218475, 0.786581, 0.577545,
		44.618618, 34.356728, 51.213287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222523, 34.290573, 50.581039>,  <44.771553, 33.806122, 50.809006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222523, 34.290573, 50.581039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112122, 34.451294, 50.930298>,  <45.045879, 34.547726, 51.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112122, 34.451294, 50.930298>,  <45.222523, 34.290573, 50.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112122, 34.451294, 50.930298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905195, 0.414112, 0.095568,
		-0.323180, 0.816742, -0.478004,
		-0.276002, 0.401801, 0.873143,
		45.029320, 34.571835, 51.192242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423862, 34.970779, 50.552197>,  <45.222523, 34.290573, 50.581039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423862, 34.970779, 50.552197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398186, 34.913910, 50.947300>,  <45.382782, 34.879787, 51.184361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398186, 34.913910, 50.947300>,  <45.423862, 34.970779, 50.552197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398186, 34.913910, 50.947300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833387, 0.536837, 0.131424,
		-0.548950, 0.831621, 0.084023,
		-0.064188, -0.142169, 0.987759,
		45.378929, 34.871258, 51.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572239, 35.561462, 50.810959>,  <45.423862, 34.970779, 50.552197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572239, 35.561462, 50.810959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643856, 35.315453, 51.118122>,  <45.686829, 35.167847, 51.302422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643856, 35.315453, 51.118122>,  <45.572239, 35.561462, 50.810959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643856, 35.315453, 51.118122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930226, 0.359973, 0.071413,
		-0.320348, 0.701546, 0.636562,
		0.179045, -0.615023, 0.767913,
		45.697571, 35.130947, 51.348495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923267, 35.915775, 51.334457>,  <45.572239, 35.561462, 50.810959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923267, 35.915775, 51.334457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006733, 35.542515, 51.451546>,  <46.056812, 35.318558, 51.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006733, 35.542515, 51.451546>,  <45.923267, 35.915775, 51.334457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006733, 35.542515, 51.451546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923208, 0.286710, 0.255899,
		-0.322719, 0.216845, 0.921320,
		0.208661, -0.933154, 0.292720,
		46.069332, 35.262569, 51.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240124, 35.959003, 52.075020>,  <45.923267, 35.915775, 51.334457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240124, 35.959003, 52.075020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343979, 35.609543, 51.910423>,  <46.406292, 35.399868, 51.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343979, 35.609543, 51.910423>,  <46.240124, 35.959003, 52.075020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343979, 35.609543, 51.910423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957888, 0.287096, -0.005149,
		0.122636, -0.392825, 0.911399,
		0.259636, -0.873650, -0.411491,
		46.421871, 35.347446, 51.786976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632343, 35.595329, 52.550125>,  <46.240124, 35.959003, 52.075020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632343, 35.595329, 52.550125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719360, 35.437462, 52.193043>,  <46.771568, 35.342743, 51.978794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719360, 35.437462, 52.193043>,  <46.632343, 35.595329, 52.550125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719360, 35.437462, 52.193043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924699, 0.376089, 0.059067,
		0.312424, -0.838330, 0.446760,
		0.217540, -0.394664, -0.892702,
		46.784622, 35.319061, 51.925232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.264057, 35.335213, 52.617207>,  <46.632343, 35.595329, 52.550125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.264057, 35.335213, 52.617207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261360, 35.360954, 52.218044>,  <47.259743, 35.376400, 51.978546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261360, 35.360954, 52.218044>,  <47.264057, 35.335213, 52.617207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261360, 35.360954, 52.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999974, -0.002287, -0.006900,
		-0.002726, -0.997924, -0.064341,
		-0.006739, 0.064358, -0.997904,
		47.259338, 35.380260, 51.918674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.818005, 34.859520, 52.420677>,  <47.264057, 35.335213, 52.617207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.818005, 34.859520, 52.420677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760147, 35.105160, 52.110332>,  <47.725433, 35.252544, 51.924126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760147, 35.105160, 52.110332>,  <47.818005, 34.859520, 52.420677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760147, 35.105160, 52.110332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968253, -0.073717, -0.238855,
		-0.203875, -0.785782, -0.583937,
		-0.144642, 0.614095, -0.775864,
		47.716755, 35.289387, 51.877575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.517611, 35.229321, 51.666451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.472940, 34.963375, 51.961880>,  <24.446138, 34.803806, 52.139137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.472940, 34.963375, 51.961880>,  <24.517611, 35.229321, 51.666451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472940, 34.963375, 51.961880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935530, 0.180302, 0.303768,
		-0.335130, 0.724877, 0.601865,
		-0.111677, -0.664864, 0.738569,
		24.439438, 34.763916, 52.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691074, 35.550842, 52.198315>,  <24.517611, 35.229321, 51.666451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691074, 35.550842, 52.198315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.744905, 35.174881, 52.323830>,  <24.777205, 34.949303, 52.399139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.744905, 35.174881, 52.323830>,  <24.691074, 35.550842, 52.198315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744905, 35.174881, 52.323830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959558, 0.202631, 0.195421,
		-0.247261, 0.274801, 0.929164,
		0.134575, -0.939907, 0.313790,
		24.785278, 34.892910, 52.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125515, 35.597851, 52.765148>,  <24.691074, 35.550842, 52.198315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125515, 35.597851, 52.765148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.185396, 35.214417, 52.668228>,  <25.221325, 34.984356, 52.610077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.185396, 35.214417, 52.668228>,  <25.125515, 35.597851, 52.765148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185396, 35.214417, 52.668228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986392, 0.161643, -0.030050,
		0.067971, -0.234500, 0.969737,
		0.149704, -0.958583, -0.242296,
		25.230307, 34.926842, 52.595539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590443, 35.217968, 53.247601>,  <25.125515, 35.597851, 52.765148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590443, 35.217968, 53.247601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.615974, 35.045082, 52.887798>,  <25.631294, 34.941349, 52.671917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.615974, 35.045082, 52.887798>,  <25.590443, 35.217968, 53.247601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615974, 35.045082, 52.887798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991204, -0.077254, 0.107458,
		-0.115935, -0.898454, 0.423485,
		0.063830, -0.432218, -0.899507,
		25.635124, 34.915417, 52.617947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995012, 34.677380, 53.487644>,  <25.590443, 35.217968, 53.247601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995012, 34.677380, 53.487644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.028551, 34.709862, 53.090378>,  <26.048674, 34.729351, 52.852020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.028551, 34.709862, 53.090378>,  <25.995012, 34.677380, 53.487644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028551, 34.709862, 53.090378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949237, -0.309749, 0.054810,
		-0.303181, -0.947344, -0.103056,
		0.083845, 0.081208, -0.993164,
		26.053705, 34.734222, 52.792427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237967, 34.028347, 53.164219>,  <25.995012, 34.677380, 53.487644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237967, 34.028347, 53.164219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.348686, 34.284283, 52.877445>,  <26.415117, 34.437843, 52.705383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.348686, 34.284283, 52.877445>,  <26.237967, 34.028347, 53.164219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348686, 34.284283, 52.877445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883986, -0.462077, -0.071089,
		-0.376763, -0.614081, -0.693509,
		0.276800, 0.639836, -0.716932,
		26.431726, 34.476234, 52.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838224, 33.697479, 52.984764>,  <26.237967, 34.028347, 53.164219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838224, 33.697479, 52.984764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.837879, 34.025623, 52.756027>,  <26.837671, 34.222511, 52.618786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.837879, 34.025623, 52.756027>,  <26.838224, 33.697479, 52.984764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837879, 34.025623, 52.756027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947250, -0.182601, -0.263390,
		-0.320494, -0.541907, -0.776930,
		-0.000864, 0.820362, -0.571844,
		26.837620, 34.271732, 52.584473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072624, 33.540997, 52.320843>,  <26.838224, 33.697479, 52.984764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072624, 33.540997, 52.320843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.135551, 33.935398, 52.342892>,  <27.173307, 34.172039, 52.356121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.135551, 33.935398, 52.342892>,  <27.072624, 33.540997, 52.320843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135551, 33.935398, 52.342892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907931, -0.122453, -0.400833,
		-0.388475, 0.113103, -0.914492,
		0.157318, 0.986009, 0.055119,
		27.182747, 34.231201, 52.359428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485287, 33.726513, 51.726536>,  <27.072624, 33.540997, 52.320843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485287, 33.726513, 51.726536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532274, 34.054482, 51.950653>,  <27.560467, 34.251263, 52.085125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532274, 34.054482, 51.950653>,  <27.485287, 33.726513, 51.726536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532274, 34.054482, 51.950653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969545, 0.027406, -0.243376,
		-0.214905, 0.571817, -0.791733,
		0.117468, 0.819923, 0.560292,
		27.567514, 34.300457, 52.118740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828444, 34.104626, 51.275322>,  <27.485287, 33.726513, 51.726536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828444, 34.104626, 51.275322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.909805, 34.227966, 51.647030>,  <27.958622, 34.301971, 51.870056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.909805, 34.227966, 51.647030>,  <27.828444, 34.104626, 51.275322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909805, 34.227966, 51.647030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977217, -0.005190, -0.212179,
		-0.060604, 0.951257, -0.302386,
		0.203406, 0.308355, 0.929270,
		27.970827, 34.320473, 51.925812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343721, 34.526409, 51.145275>,  <27.828444, 34.104626, 51.275322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343721, 34.526409, 51.145275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.358541, 34.410454, 51.527813>,  <28.367434, 34.340881, 51.757336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.358541, 34.410454, 51.527813>,  <28.343721, 34.526409, 51.145275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358541, 34.410454, 51.527813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994282, -0.085218, -0.064349,
		0.100152, 0.953259, 0.285074,
		0.037048, -0.289889, 0.956343,
		28.369656, 34.323486, 51.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730988, 34.949520, 51.476959>,  <28.343721, 34.526409, 51.145275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730988, 34.949520, 51.476959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.759567, 34.594555, 51.659122>,  <28.776716, 34.381577, 51.768421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.759567, 34.594555, 51.659122>,  <28.730988, 34.949520, 51.476959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759567, 34.594555, 51.659122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988301, 0.001306, -0.152513,
		0.134747, 0.460978, 0.877122,
		0.071450, -0.887411, 0.455408,
		28.781002, 34.328331, 51.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178547, 35.098846, 51.984558>,  <28.730988, 34.949520, 51.476959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178547, 35.098846, 51.984558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.202757, 34.702610, 51.935463>,  <29.217283, 34.464867, 51.906006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.202757, 34.702610, 51.935463>,  <29.178547, 35.098846, 51.984558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202757, 34.702610, 51.935463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977732, 0.083592, -0.192489,
		0.200938, -0.108355, 0.973593,
		0.060527, -0.990592, -0.122739,
		29.220915, 34.405434, 51.898640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739723, 34.845100, 52.377972>,  <29.178547, 35.098846, 51.984558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739723, 34.845100, 52.377972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692017, 34.563469, 52.097961>,  <29.663393, 34.394489, 51.929955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692017, 34.563469, 52.097961>,  <29.739723, 34.845100, 52.377972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692017, 34.563469, 52.097961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984823, 0.005648, -0.173469,
		0.126090, -0.710095, 0.692724,
		-0.119267, -0.704084, -0.700030,
		29.656237, 34.352245, 51.887951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509026, 34.397038, 52.352615>,  <29.739723, 34.845100, 52.377972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509026, 34.397038, 52.352615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307974, 34.279625, 52.027359>,  <30.187344, 34.209179, 51.832203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307974, 34.279625, 52.027359>,  <30.509026, 34.397038, 52.352615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307974, 34.279625, 52.027359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859933, -0.266335, -0.435409,
		-0.088765, -0.918100, 0.386281,
		-0.502630, -0.293526, -0.813146,
		30.157185, 34.191566, 51.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874640, 33.772194, 52.154713>,  <30.509026, 34.397038, 52.352615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874640, 33.772194, 52.154713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.691114, 33.882870, 51.816971>,  <30.580999, 33.949276, 51.614326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.691114, 33.882870, 51.816971>,  <30.874640, 33.772194, 52.154713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691114, 33.882870, 51.816971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797677, -0.290346, -0.528594,
		-0.391410, -0.916048, -0.087492,
		-0.458814, 0.276687, -0.844354,
		30.553471, 33.965878, 51.563663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979597, 33.266186, 51.724888>,  <30.874640, 33.772194, 52.154713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979597, 33.266186, 51.724888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.895533, 33.569912, 51.478550>,  <30.845095, 33.752148, 51.330746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.895533, 33.569912, 51.478550>,  <30.979597, 33.266186, 51.724888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895533, 33.569912, 51.478550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855004, -0.162739, -0.492427,
		-0.474132, -0.630040, -0.615020,
		-0.210161, 0.759319, -0.615846,
		30.832485, 33.797707, 51.293797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999166, 33.013699, 51.049553>,  <30.979597, 33.266186, 51.724888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999166, 33.013699, 51.049553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.028614, 33.410225, 51.005974>,  <31.046282, 33.648140, 50.979828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.028614, 33.410225, 51.005974>,  <30.999166, 33.013699, 51.049553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028614, 33.410225, 51.005974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746091, -0.127235, -0.653575,
		-0.661762, -0.033171, -0.748980,
		0.073617, 0.991318, -0.108948,
		31.050699, 33.707619, 50.973289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803646, 33.209846, 50.293865>,  <30.999166, 33.013699, 51.049553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803646, 33.209846, 50.293865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.026604, 33.514404, 50.426285>,  <31.160378, 33.697140, 50.505737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.026604, 33.514404, 50.426285>,  <30.803646, 33.209846, 50.293865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026604, 33.514404, 50.426285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591418, -0.084281, -0.801948,
		-0.582698, 0.642787, -0.497280,
		0.557394, 0.761394, 0.331046,
		31.193821, 33.742821, 50.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118397, 33.379036, 49.711639>,  <30.803646, 33.209846, 50.293865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118397, 33.379036, 49.711639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352816, 33.579578, 49.966255>,  <31.493467, 33.699905, 50.119026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352816, 33.579578, 49.966255>,  <31.118397, 33.379036, 49.711639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352816, 33.579578, 49.966255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780328, -0.137613, -0.610041,
		-0.218254, 0.854225, -0.471873,
		0.586049, 0.501360, 0.636541,
		31.528631, 33.729988, 50.157219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479826, 33.893002, 49.314751>,  <31.118397, 33.379036, 49.711639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479826, 33.893002, 49.314751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688168, 33.814941, 49.647167>,  <31.813173, 33.768105, 49.846619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688168, 33.814941, 49.647167>,  <31.479826, 33.893002, 49.314751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688168, 33.814941, 49.647167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837804, -0.069817, -0.541488,
		0.163691, 0.978286, 0.127131,
		0.520854, -0.195148, 0.831041,
		31.844423, 33.756397, 49.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.546721, 34.921326, 34.622837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.358412, 35.128693, 34.908386>,  <24.245426, 35.253113, 35.079716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.358412, 35.128693, 34.908386>,  <24.546721, 34.921326, 34.622837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358412, 35.128693, 34.908386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142669, -0.843230, 0.518274,
		0.870643, 0.142141, 0.470931,
		-0.470772, 0.518419, 0.713874,
		24.217180, 35.284218, 35.122547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092421, 35.350357, 34.960552>,  <24.546721, 34.921326, 34.622837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092421, 35.350357, 34.960552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.464800, 35.387764, 35.101742>,  <25.688227, 35.410210, 35.186455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.464800, 35.387764, 35.101742>,  <25.092421, 35.350357, 34.960552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464800, 35.387764, 35.101742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344423, -0.096187, 0.933874,
		0.121286, -0.990960, -0.057335,
		0.930947, 0.093518, 0.352976,
		25.744083, 35.415817, 35.207634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426287, 34.614517, 35.259052>,  <25.092421, 35.350357, 34.960552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426287, 34.614517, 35.259052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565300, 34.944122, 35.438038>,  <25.648708, 35.141884, 35.545429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565300, 34.944122, 35.438038>,  <25.426287, 34.614517, 35.259052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565300, 34.944122, 35.438038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341137, -0.333398, 0.878904,
		0.873412, -0.458094, 0.165235,
		0.347531, 0.824012, 0.447466,
		25.669559, 35.191326, 35.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915424, 34.352238, 35.887348>,  <25.426287, 34.614517, 35.259052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915424, 34.352238, 35.887348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.704655, 34.687477, 35.943825>,  <25.578192, 34.888622, 35.977711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.704655, 34.687477, 35.943825>,  <25.915424, 34.352238, 35.887348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704655, 34.687477, 35.943825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545645, -0.460954, 0.699852,
		0.651630, 0.291731, 0.700194,
		-0.526926, 0.838102, 0.141190,
		25.546577, 34.938908, 35.986183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296389, 34.296539, 36.426846>,  <25.915424, 34.352238, 35.887348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296389, 34.296539, 36.426846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285295, 34.037678, 36.122101>,  <26.278641, 33.882362, 35.939255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285295, 34.037678, 36.122101>,  <26.296389, 34.296539, 36.426846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285295, 34.037678, 36.122101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751816, 0.515793, -0.410768,
		0.658790, 0.561385, -0.500842,
		-0.027732, -0.647150, -0.761858,
		26.276976, 33.843533, 35.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717176, 33.937027, 36.763500>,  <26.296389, 34.296539, 36.426846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717176, 33.937027, 36.763500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.416710, 34.186981, 36.848606>,  <25.236431, 34.336952, 36.899670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.416710, 34.186981, 36.848606>,  <25.717176, 33.937027, 36.763500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416710, 34.186981, 36.848606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565832, 0.775518, -0.280010,
		-0.339980, -0.089942, -0.936122,
		-0.751164, 0.624886, 0.212768,
		25.191360, 34.374447, 36.912437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982569, 34.541149, 37.279472>,  <25.717176, 33.937027, 36.763500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982569, 34.541149, 37.279472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.105192, 34.236458, 37.507786>,  <26.178766, 34.053642, 37.644775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.105192, 34.236458, 37.507786>,  <25.982569, 34.541149, 37.279472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105192, 34.236458, 37.507786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929305, -0.109771, 0.352623,
		-0.205946, -0.638534, -0.741526,
		0.306560, -0.761725, 0.570786,
		26.197161, 34.007942, 37.679024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424215, 34.015232, 37.403324>,  <25.982569, 34.541149, 37.279472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424215, 34.015232, 37.403324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.692501, 33.910099, 37.680759>,  <25.853474, 33.847019, 37.847221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.692501, 33.910099, 37.680759>,  <25.424215, 34.015232, 37.403324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692501, 33.910099, 37.680759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737612, -0.138134, 0.660945,
		-0.077905, -0.954904, -0.286511,
		0.670716, -0.262825, 0.693587,
		25.893715, 33.831249, 37.888836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238106, 33.317684, 37.607887>,  <25.424215, 34.015232, 37.403324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238106, 33.317684, 37.607887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.429396, 33.550064, 37.871342>,  <25.544170, 33.689491, 38.029415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.429396, 33.550064, 37.871342>,  <25.238106, 33.317684, 37.607887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429396, 33.550064, 37.871342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778153, -0.067391, 0.624449,
		0.407160, -0.811144, 0.419840,
		0.478225, 0.580951, 0.658633,
		25.572863, 33.724350, 38.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298410, 33.048893, 38.393597>,  <25.238106, 33.317684, 37.607887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298410, 33.048893, 38.393597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.280098, 33.448360, 38.384163>,  <25.269110, 33.688042, 38.378502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.280098, 33.448360, 38.384163>,  <25.298410, 33.048893, 38.393597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280098, 33.448360, 38.384163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793699, -0.022026, 0.607911,
		0.606585, 0.046554, 0.793654,
		-0.045782, 0.998673, -0.023589,
		25.266363, 33.747963, 38.377087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240076, 33.411263, 39.084751>,  <25.298410, 33.048893, 38.393597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240076, 33.411263, 39.084751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.048746, 33.572887, 38.772869>,  <24.933949, 33.669861, 38.585739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.048746, 33.572887, 38.772869>,  <25.240076, 33.411263, 39.084751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048746, 33.572887, 38.772869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868147, -0.083718, 0.489195,
		0.132390, 0.910892, 0.390830,
		-0.478323, 0.404063, -0.779705,
		24.905249, 33.694107, 38.538956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205631, 33.455322, 39.737801>,  <25.240076, 33.411263, 39.084751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205631, 33.455322, 39.737801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.058306, 33.253662, 40.050255>,  <24.969910, 33.132668, 40.237728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.058306, 33.253662, 40.050255>,  <25.205631, 33.455322, 39.737801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058306, 33.253662, 40.050255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717964, -0.688034, -0.105535,
		0.590655, 0.521958, 0.615375,
		-0.368314, -0.504152, 0.781138,
		24.947811, 33.102417, 40.284595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760851, 33.218048, 40.113960>,  <25.205631, 33.455322, 39.737801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760851, 33.218048, 40.113960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472708, 32.956184, 40.205616>,  <25.299822, 32.799065, 40.260609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472708, 32.956184, 40.205616>,  <25.760851, 33.218048, 40.113960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472708, 32.956184, 40.205616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674013, -0.738670, 0.008521,
		0.163683, 0.160583, 0.973355,
		-0.720357, -0.654660, 0.229143,
		25.256601, 32.759785, 40.274357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161121, 32.756630, 40.322681>,  <25.760851, 33.218048, 40.113960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161121, 32.756630, 40.322681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.801689, 32.582470, 40.344517>,  <25.586029, 32.477974, 40.357620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.801689, 32.582470, 40.344517>,  <26.161121, 32.756630, 40.322681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801689, 32.582470, 40.344517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438088, -0.897261, 0.054780,
		0.025131, 0.073140, 0.997005,
		-0.898581, -0.435400, 0.054591,
		25.532116, 32.451851, 40.360893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332907, 32.397350, 40.909634>,  <26.161121, 32.756630, 40.322681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332907, 32.397350, 40.909634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.054667, 32.226921, 40.678253>,  <25.887722, 32.124664, 40.539425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.054667, 32.226921, 40.678253>,  <26.332907, 32.397350, 40.909634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054667, 32.226921, 40.678253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352214, -0.904004, 0.242327,
		-0.626168, -0.035174, 0.778894,
		-0.695600, -0.426075, -0.578447,
		25.845987, 32.099098, 40.504719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781908, 31.947720, 41.283833>,  <26.332907, 32.397350, 40.909634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781908, 31.947720, 41.283833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.906120, 31.836529, 40.920227>,  <25.980648, 31.769815, 40.702065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.906120, 31.836529, 40.920227>,  <25.781908, 31.947720, 41.283833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906120, 31.836529, 40.920227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364877, -0.848172, 0.384017,
		-0.877745, -0.450926, -0.161955,
		0.310529, -0.277976, -0.909011,
		25.999279, 31.753136, 40.647522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779953, 32.666855, 41.502525>,  <25.781908, 31.947720, 41.283833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779953, 32.666855, 41.502525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039112, 32.372261, 41.580315>,  <26.194607, 32.195507, 41.626987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.039112, 32.372261, 41.580315>,  <25.779953, 32.666855, 41.502525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039112, 32.372261, 41.580315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708994, 0.676402, 0.199521,
		-0.278488, 0.008614, 0.960401,
		0.647898, -0.736483, 0.194477,
		26.233482, 32.151318, 41.638657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980295, 32.712696, 42.214939>,  <25.779953, 32.666855, 41.502525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980295, 32.712696, 42.214939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237398, 32.580582, 41.938454>,  <26.391661, 32.501312, 41.772564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237398, 32.580582, 41.938454>,  <25.980295, 32.712696, 42.214939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237398, 32.580582, 41.938454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643270, 0.722681, 0.252855,
		0.416010, -0.607160, 0.676972,
		0.642759, -0.330286, -0.691211,
		26.430225, 32.481495, 41.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560146, 32.284218, 42.465115>,  <25.980295, 32.712696, 42.214939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560146, 32.284218, 42.465115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648941, 32.503937, 42.142876>,  <26.702219, 32.635769, 41.949532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648941, 32.503937, 42.142876>,  <26.560146, 32.284218, 42.465115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648941, 32.503937, 42.142876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574805, 0.593657, 0.563178,
		0.787604, -0.588082, -0.183956,
		0.221988, 0.549300, -0.805600,
		26.715538, 32.668728, 41.901196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301481, 32.307590, 42.364300>,  <26.560146, 32.284218, 42.465115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301481, 32.307590, 42.364300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.113783, 32.620178, 42.199802>,  <27.001163, 32.807732, 42.101105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.113783, 32.620178, 42.199802>,  <27.301481, 32.307590, 42.364300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113783, 32.620178, 42.199802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654033, 0.620457, 0.432751,
		0.593338, -0.065898, -0.802252,
		-0.469245, 0.781467, -0.411240,
		26.973009, 32.854618, 42.076431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812878, 32.795437, 42.031258>,  <27.301481, 32.307590, 42.364300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812878, 32.795437, 42.031258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994535, 32.590870, 41.739449>,  <28.103531, 32.468128, 41.564362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994535, 32.590870, 41.739449>,  <27.812878, 32.795437, 42.031258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994535, 32.590870, 41.739449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862521, 0.047263, 0.503809,
		-0.223178, -0.858031, 0.462574,
		0.454146, -0.511419, -0.729522,
		28.130779, 32.437443, 41.520592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091242, 32.143974, 42.241779>,  <27.812878, 32.795437, 42.031258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091242, 32.143974, 42.241779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296661, 32.321762, 41.948189>,  <28.419912, 32.428436, 41.772034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296661, 32.321762, 41.948189>,  <28.091242, 32.143974, 42.241779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296661, 32.321762, 41.948189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732535, 0.218341, 0.644764,
		0.446835, -0.868777, -0.213461,
		0.513548, 0.444470, -0.733972,
		28.450726, 32.455105, 41.727997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904060, 31.887066, 42.244129>,  <28.091242, 32.143974, 42.241779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904060, 31.887066, 42.244129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837465, 32.254349, 42.100365>,  <28.797508, 32.474720, 42.014107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837465, 32.254349, 42.100365>,  <28.904060, 31.887066, 42.244129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837465, 32.254349, 42.100365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743317, 0.356370, 0.566110,
		0.647889, -0.172906, -0.741851,
		-0.166490, 0.918207, -0.359412,
		28.787518, 32.529812, 41.992542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553095, 32.139931, 42.134968>,  <28.904060, 31.887066, 42.244129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553095, 32.139931, 42.134968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316900, 32.459808, 42.178429>,  <29.175182, 32.651737, 42.204506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316900, 32.459808, 42.178429>,  <29.553095, 32.139931, 42.134968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316900, 32.459808, 42.178429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755203, 0.500050, 0.423815,
		0.284592, 0.332314, -0.899208,
		-0.590489, 0.799698, 0.108654,
		29.139753, 32.699718, 42.211025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846756, 32.673824, 41.886635>,  <29.553095, 32.139931, 42.134968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846756, 32.673824, 41.886635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594013, 32.776512, 42.179169>,  <29.442368, 32.838123, 42.354691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594013, 32.776512, 42.179169>,  <29.846756, 32.673824, 41.886635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594013, 32.776512, 42.179169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768672, 0.328673, 0.548741,
		-0.099500, 0.908884, -0.405005,
		-0.631857, 0.256716, 0.731337,
		29.404457, 32.853527, 42.398571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976795, 33.398544, 42.009441>,  <29.846756, 32.673824, 41.886635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976795, 33.398544, 42.009441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845615, 33.194462, 42.327473>,  <29.766909, 33.072014, 42.518291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845615, 33.194462, 42.327473>,  <29.976795, 33.398544, 42.009441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845615, 33.194462, 42.327473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744522, 0.378462, 0.549958,
		-0.581495, 0.772308, 0.255741,
		-0.327949, -0.510202, 0.795074,
		29.747231, 33.041401, 42.565994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777617, 33.853584, 42.585571>,  <29.976795, 33.398544, 42.009441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777617, 33.853584, 42.585571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907326, 33.511852, 42.748032>,  <29.985151, 33.306812, 42.845509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907326, 33.511852, 42.748032>,  <29.777617, 33.853584, 42.585571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907326, 33.511852, 42.748032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752999, 0.493000, 0.435824,
		-0.572574, 0.164509, 0.803179,
		0.324271, -0.854335, 0.406154,
		30.004606, 33.255550, 42.869877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849119, 34.028358, 43.293564>,  <29.777617, 33.853584, 42.585571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849119, 34.028358, 43.293564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120256, 33.756382, 43.181705>,  <30.282940, 33.593197, 43.114590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120256, 33.756382, 43.181705>,  <29.849119, 34.028358, 43.293564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120256, 33.756382, 43.181705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684291, 0.444396, 0.578150,
		-0.268836, -0.583256, 0.766511,
		0.677844, -0.679945, -0.279647,
		30.323610, 33.552399, 43.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187613, 34.035107, 43.990696>,  <29.849119, 34.028358, 43.293564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187613, 34.035107, 43.990696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269724, 34.422184, 44.049252>,  <30.318991, 34.654430, 44.084385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269724, 34.422184, 44.049252>,  <30.187613, 34.035107, 43.990696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269724, 34.422184, 44.049252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963241, 0.173282, 0.205280,
		0.173282, -0.183149, 0.967693,
		-0.205280, -0.967693, -0.146390,
		30.331308, 34.712490, 44.093170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839760, 34.592319, 44.221199>,  <30.187613, 34.035107, 43.990696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839760, 34.592319, 44.221199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076023, 34.271324, 44.187424>,  <31.217781, 34.078728, 44.167156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076023, 34.271324, 44.187424>,  <30.839760, 34.592319, 44.221199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076023, 34.271324, 44.187424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703232, 0.563249, -0.433838,
		0.395713, 0.196867, 0.897025,
		0.590657, -0.802492, -0.084442,
		31.253220, 34.030575, 44.162090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502813, 34.730438, 44.628849>,  <30.839760, 34.592319, 44.221199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502813, 34.730438, 44.628849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544611, 34.484871, 44.315880>,  <31.569689, 34.337528, 44.128098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544611, 34.484871, 44.315880>,  <31.502813, 34.730438, 44.628849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544611, 34.484871, 44.315880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697078, 0.606342, -0.382665,
		0.709340, -0.505421, 0.491310,
		0.104494, -0.613921, -0.782421,
		31.575960, 34.300694, 44.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356813, 34.693550, 45.409966>,  <31.502813, 34.730438, 44.628849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356813, 34.693550, 45.409966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755798, 34.668995, 45.395546>,  <31.995190, 34.654263, 45.386894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755798, 34.668995, 45.395546>,  <31.356813, 34.693550, 45.409966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755798, 34.668995, 45.395546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007849, -0.598074, 0.801402,
		-0.070754, -0.799086, -0.597039,
		0.997463, -0.061389, -0.036044,
		32.055038, 34.650578, 45.384731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607416, 33.974659, 45.712845>,  <31.356813, 34.693550, 45.409966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607416, 33.974659, 45.712845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894325, 34.249893, 45.756779>,  <32.066471, 34.415031, 45.783138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894325, 34.249893, 45.756779>,  <31.607416, 33.974659, 45.712845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894325, 34.249893, 45.756779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156816, -0.312994, 0.936719,
		0.678919, -0.654657, -0.332404,
		0.717271, 0.688083, 0.109837,
		32.109505, 34.456318, 45.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309097, 33.703526, 46.026142>,  <31.607416, 33.974659, 45.712845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309097, 33.703526, 46.026142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280556, 34.092247, 46.116032>,  <32.263432, 34.325481, 46.169964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280556, 34.092247, 46.116032>,  <32.309097, 33.703526, 46.026142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280556, 34.092247, 46.116032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180925, -0.208946, 0.961045,
		0.980905, 0.109236, -0.160914,
		-0.071358, 0.971807, 0.224720,
		32.259148, 34.383789, 46.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918507, 33.799633, 46.411316>,  <32.309097, 33.703526, 46.026142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918507, 33.799633, 46.411316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595715, 34.017982, 46.501472>,  <32.402039, 34.148991, 46.555569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595715, 34.017982, 46.501472>,  <32.918507, 33.799633, 46.411316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595715, 34.017982, 46.501472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259327, -0.015358, 0.965668,
		0.530593, 0.837728, -0.129166,
		-0.806983, 0.545873, 0.225394,
		32.353619, 34.181744, 46.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031109, 34.401184, 46.720779>,  <32.918507, 33.799633, 46.411316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031109, 34.401184, 46.720779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661789, 34.340290, 46.861824>,  <32.440197, 34.303753, 46.946449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661789, 34.340290, 46.861824>,  <33.031109, 34.401184, 46.720779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661789, 34.340290, 46.861824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354831, 0.013251, 0.934837,
		-0.146984, 0.988256, 0.041782,
		-0.923304, -0.152231, 0.352611,
		32.384796, 34.294621, 46.967606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989643, 34.913998, 47.294106>,  <33.031109, 34.401184, 46.720779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989643, 34.913998, 47.294106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719280, 34.624107, 47.347668>,  <32.557064, 34.450172, 47.379803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719280, 34.624107, 47.347668>,  <32.989643, 34.913998, 47.294106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719280, 34.624107, 47.347668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285818, -0.090296, 0.954020,
		-0.679311, 0.683096, 0.268171,
		-0.675903, -0.724725, 0.133902,
		32.516510, 34.406689, 47.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458912, 34.926208, 47.850189>,  <32.989643, 34.913998, 47.294106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458912, 34.926208, 47.850189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597122, 34.558983, 47.772461>,  <32.680050, 34.338646, 47.725822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597122, 34.558983, 47.772461>,  <32.458912, 34.926208, 47.850189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597122, 34.558983, 47.772461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359184, -0.061924, 0.931210,
		-0.866948, -0.391555, 0.308359,
		0.345525, -0.918069, -0.194325,
		32.700779, 34.283562, 47.714165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361626, 34.529797, 48.588478>,  <32.458912, 34.926208, 47.850189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361626, 34.529797, 48.588478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637119, 34.350990, 48.360153>,  <32.802414, 34.243706, 48.223160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637119, 34.350990, 48.360153>,  <32.361626, 34.529797, 48.588478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637119, 34.350990, 48.360153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584649, -0.123171, 0.801882,
		-0.428760, -0.886006, 0.176515,
		0.688731, -0.447014, -0.570813,
		32.843739, 34.216885, 48.188908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185223, 34.293167, 49.286751>,  <32.361626, 34.529797, 48.588478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185223, 34.293167, 49.286751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255299, 34.031559, 49.581116>,  <32.297344, 33.874596, 49.757736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255299, 34.031559, 49.581116>,  <32.185223, 34.293167, 49.286751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255299, 34.031559, 49.581116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973983, 0.005994, -0.226542,
		0.143751, 0.756456, 0.638051,
		0.175194, -0.654017, 0.735914,
		32.307858, 33.835354, 49.801891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811237, 34.542019, 49.704605>,  <32.185223, 34.293167, 49.286751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811237, 34.542019, 49.704605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762684, 34.157391, 49.803112>,  <32.733551, 33.926613, 49.862217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762684, 34.157391, 49.803112>,  <32.811237, 34.542019, 49.704605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762684, 34.157391, 49.803112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988904, -0.138555, -0.053596,
		0.085658, 0.237025, 0.967720,
		-0.121379, -0.961573, 0.246263,
		32.726269, 33.868919, 49.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338638, 34.350151, 50.325584>,  <32.811237, 34.542019, 49.704605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338638, 34.350151, 50.325584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236835, 34.014702, 50.132942>,  <33.175755, 33.813435, 50.017357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236835, 34.014702, 50.132942>,  <33.338638, 34.350151, 50.325584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236835, 34.014702, 50.132942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966348, -0.239782, -0.093143,
		-0.037368, -0.489101, 0.871426,
		-0.254509, -0.838620, -0.481602,
		33.160484, 33.763115, 49.988461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806519, 33.818802, 50.517498>,  <33.338638, 34.350151, 50.325584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806519, 33.818802, 50.517498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659443, 33.675697, 50.174149>,  <33.571198, 33.589832, 49.968140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659443, 33.675697, 50.174149>,  <33.806519, 33.818802, 50.517498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659443, 33.675697, 50.174149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913441, -0.312087, -0.261204,
		-0.174438, -0.880117, 0.441549,
		-0.367692, -0.357765, -0.858375,
		33.549137, 33.568367, 49.916637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032982, 33.127216, 50.533409>,  <33.806519, 33.818802, 50.517498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032982, 33.127216, 50.533409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980251, 33.234718, 50.151752>,  <33.948612, 33.299221, 49.922756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980251, 33.234718, 50.151752>,  <34.032982, 33.127216, 50.533409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980251, 33.234718, 50.151752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911459, -0.345542, -0.223256,
		-0.389698, -0.899094, -0.199410,
		-0.131824, 0.268756, -0.954145,
		33.940704, 33.315346, 49.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364368, 32.670570, 50.085041>,  <34.032982, 33.127216, 50.533409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364368, 32.670570, 50.085041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295300, 32.968517, 49.827248>,  <34.253857, 33.147285, 49.672573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295300, 32.968517, 49.827248>,  <34.364368, 32.670570, 50.085041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295300, 32.968517, 49.827248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856202, -0.209955, -0.472056,
		-0.486932, -0.633317, -0.601504,
		-0.172673, 0.744868, -0.644481,
		34.243496, 33.191978, 49.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529701, 32.373947, 49.389828>,  <34.364368, 32.670570, 50.085041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529701, 32.373947, 49.389828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545845, 32.766506, 49.314754>,  <34.555531, 33.002041, 49.269711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545845, 32.766506, 49.314754>,  <34.529701, 32.373947, 49.389828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545845, 32.766506, 49.314754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901614, -0.116728, -0.416492,
		-0.430654, -0.152409, -0.889555,
		0.040359, 0.981400, -0.187684,
		34.557953, 33.060925, 49.258450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766159, 32.577950, 48.638233>,  <34.529701, 32.373947, 49.389828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766159, 32.577950, 48.638233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822906, 32.906620, 48.859039>,  <34.856956, 33.103821, 48.991524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822906, 32.906620, 48.859039>,  <34.766159, 32.577950, 48.638233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822906, 32.906620, 48.859039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904212, 0.119371, -0.410062,
		-0.402833, 0.557318, -0.726032,
		0.141868, 0.821673, 0.552020,
		34.865467, 33.153122, 49.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859440, 33.107567, 48.121681>,  <34.766159, 32.577950, 48.638233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859440, 33.107567, 48.121681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040154, 33.265934, 48.441467>,  <35.148582, 33.360954, 48.633339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040154, 33.265934, 48.441467>,  <34.859440, 33.107567, 48.121681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040154, 33.265934, 48.441467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866993, 0.016370, -0.498052,
		-0.210274, 0.918140, -0.335862,
		0.451783, 0.395917, 0.799463,
		35.175690, 33.384708, 48.681305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291496, 33.698410, 47.935459>,  <34.859440, 33.107567, 48.121681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291496, 33.698410, 47.935459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457100, 33.578339, 48.279202>,  <35.556461, 33.506294, 48.485447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457100, 33.578339, 48.279202>,  <35.291496, 33.698410, 47.935459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457100, 33.578339, 48.279202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892742, 0.318278, -0.318921,
		-0.177779, 0.899217, 0.399755,
		0.414012, -0.300180, 0.859352,
		35.581303, 33.488285, 48.537006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644562, 34.304310, 48.095177>,  <35.291496, 33.698410, 47.935459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644562, 34.304310, 48.095177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806190, 34.011879, 48.315086>,  <35.903168, 33.836422, 48.447033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806190, 34.011879, 48.315086>,  <35.644562, 34.304310, 48.095177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806190, 34.011879, 48.315086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908200, 0.248982, -0.336423,
		0.109065, 0.635248, 0.764568,
		0.404076, -0.731073, 0.549777,
		35.927414, 33.792557, 48.480019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119099, 34.595467, 48.460522>,  <35.644562, 34.304310, 48.095177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119099, 34.595467, 48.460522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252628, 34.218636, 48.447578>,  <36.332745, 33.992535, 48.439812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252628, 34.218636, 48.447578>,  <36.119099, 34.595467, 48.460522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252628, 34.218636, 48.447578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938940, 0.335354, -0.076998,
		0.083391, -0.004682, 0.996506,
		0.333821, -0.942081, -0.032362,
		36.352776, 33.936012, 48.437870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795006, 34.540848, 48.781517>,  <36.119099, 34.595467, 48.460522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795006, 34.540848, 48.781517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820240, 34.191784, 48.587822>,  <36.835381, 33.982346, 48.471607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820240, 34.191784, 48.587822>,  <36.795006, 34.540848, 48.781517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820240, 34.191784, 48.587822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962582, 0.181328, -0.201384,
		0.263545, -0.453413, 0.851446,
		0.063081, -0.872661, -0.484235,
		36.839165, 33.929985, 48.442551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383251, 34.225582, 49.007095>,  <36.795006, 34.540848, 48.781517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383251, 34.225582, 49.007095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300968, 34.068031, 48.648754>,  <37.251598, 33.973499, 48.433750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300968, 34.068031, 48.648754>,  <37.383251, 34.225582, 49.007095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300968, 34.068031, 48.648754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893662, 0.297453, -0.335989,
		0.398812, -0.869703, 0.290803,
		-0.205711, -0.393876, -0.895849,
		37.239254, 33.949867, 48.380001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876961, 33.734726, 48.734173>,  <37.383251, 34.225582, 49.007095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876961, 33.734726, 48.734173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694664, 33.918591, 48.429276>,  <37.585285, 34.028912, 48.246338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694664, 33.918591, 48.429276>,  <37.876961, 33.734726, 48.734173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694664, 33.918591, 48.429276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886201, 0.314522, -0.340183,
		0.083371, -0.830533, -0.550695,
		-0.455738, 0.459665, -0.762241,
		37.557941, 34.056488, 48.200603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311920, 33.676804, 48.158684>,  <37.876961, 33.734726, 48.734173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311920, 33.676804, 48.158684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139332, 34.033386, 48.103348>,  <38.035778, 34.247337, 48.070145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139332, 34.033386, 48.103348>,  <38.311920, 33.676804, 48.158684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139332, 34.033386, 48.103348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859208, 0.359345, -0.364188,
		-0.274945, -0.276001, -0.920993,
		-0.431471, 0.891456, -0.138342,
		38.009892, 34.300823, 48.061844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871861, 33.455784, 48.563885>,  <38.311920, 33.676804, 48.158684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871861, 33.455784, 48.563885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084404, 33.525513, 48.232281>,  <39.211929, 33.567352, 48.033318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084404, 33.525513, 48.232281>,  <38.871861, 33.455784, 48.563885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084404, 33.525513, 48.232281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779528, -0.483726, 0.397927,
		-0.331647, -0.857683, -0.392925,
		0.531363, 0.174325, -0.829014,
		39.243813, 33.577808, 47.983578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518028, 33.074360, 48.811455>,  <38.871861, 33.455784, 48.563885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518028, 33.074360, 48.811455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638916, 33.234013, 48.465195>,  <39.711449, 33.329803, 48.257439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638916, 33.234013, 48.465195>,  <39.518028, 33.074360, 48.811455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638916, 33.234013, 48.465195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950907, -0.189699, 0.244523,
		-0.066616, -0.897055, -0.436870,
		0.302224, 0.399133, -0.865652,
		39.729584, 33.353752, 48.205498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365986, 33.039753, 49.587002>,  <39.518028, 33.074360, 48.811455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365986, 33.039753, 49.587002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559742, 33.237785, 49.875519>,  <39.675995, 33.356606, 50.048630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559742, 33.237785, 49.875519>,  <39.365986, 33.039753, 49.587002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559742, 33.237785, 49.875519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863575, 0.402542, 0.303640,
		-0.140026, -0.769972, 0.622523,
		0.484386, 0.495078, 0.721296,
		39.705059, 33.386311, 50.091908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002438, 33.019768, 50.187592>,  <39.365986, 33.039753, 49.587002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002438, 33.019768, 50.187592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242741, 33.330189, 50.264366>,  <39.386921, 33.516441, 50.310432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242741, 33.330189, 50.264366>,  <39.002438, 33.019768, 50.187592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242741, 33.330189, 50.264366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739414, 0.448125, 0.502444,
		0.303911, -0.443766, 0.843036,
		0.600754, 0.776051, 0.191936,
		39.422966, 33.563004, 50.321949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120426, 33.107872, 50.927643>,  <39.002438, 33.019768, 50.187592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120426, 33.107872, 50.927643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111389, 33.434189, 50.696480>,  <39.105965, 33.629978, 50.557781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111389, 33.434189, 50.696480>,  <39.120426, 33.107872, 50.927643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111389, 33.434189, 50.696480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811563, 0.322602, 0.487127,
		0.583827, 0.480013, 0.654777,
		-0.022595, 0.815791, -0.577905,
		39.104610, 33.678925, 50.523109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078018, 33.725628, 51.324928>,  <39.120426, 33.107872, 50.927643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078018, 33.725628, 51.324928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872478, 33.788467, 50.987579>,  <38.749153, 33.826172, 50.785168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872478, 33.788467, 50.987579>,  <39.078018, 33.725628, 51.324928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872478, 33.788467, 50.987579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799292, 0.269401, 0.537173,
		0.311596, 0.950128, -0.012863,
		-0.513848, 0.157100, -0.843374,
		38.718323, 33.835598, 50.734566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029125, 34.351151, 51.320641>,  <39.078018, 33.725628, 51.324928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029125, 34.351151, 51.320641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736389, 34.219311, 51.082054>,  <38.560749, 34.140205, 50.938900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736389, 34.219311, 51.082054>,  <39.029125, 34.351151, 51.320641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736389, 34.219311, 51.082054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640352, 0.632048, 0.436423,
		0.233152, 0.701341, -0.673618,
		-0.731840, -0.329600, -0.596468,
		38.516838, 34.120430, 50.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665733, 34.956642, 51.268890>,  <39.029125, 34.351151, 51.320641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665733, 34.956642, 51.268890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415920, 34.669899, 51.144905>,  <38.266033, 34.497852, 51.070515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415920, 34.669899, 51.144905>,  <38.665733, 34.956642, 51.268890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415920, 34.669899, 51.144905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756134, 0.455648, 0.469729,
		-0.195493, 0.527736, -0.826605,
		-0.624534, -0.716853, -0.309964,
		38.228561, 34.454842, 51.051914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087727, 35.341713, 51.018917>,  <38.665733, 34.956642, 51.268890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087727, 35.341713, 51.018917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965771, 34.969574, 51.100395>,  <37.892597, 34.746288, 51.149284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965771, 34.969574, 51.100395>,  <38.087727, 35.341713, 51.018917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965771, 34.969574, 51.100395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819602, 0.365242, 0.441419,
		-0.485073, -0.032369, -0.873874,
		-0.304887, -0.930349, 0.203699,
		37.874306, 34.690468, 51.161507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286034, 35.253838, 50.804146>,  <38.087727, 35.341713, 51.018917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286034, 35.253838, 50.804146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337387, 34.968182, 51.079399>,  <37.368198, 34.796787, 51.244553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337387, 34.968182, 51.079399>,  <37.286034, 35.253838, 50.804146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337387, 34.968182, 51.079399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851164, 0.276753, 0.446012,
		-0.508957, -0.642974, -0.572318,
		0.128383, -0.714137, 0.688132,
		37.375900, 34.753941, 51.285839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668468, 35.125172, 50.996792>,  <37.286034, 35.253838, 50.804146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668468, 35.125172, 50.996792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845394, 34.916977, 51.288940>,  <36.951550, 34.792061, 51.464230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845394, 34.916977, 51.288940>,  <36.668468, 35.125172, 50.996792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845394, 34.916977, 51.288940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723309, 0.274469, 0.633633,
		-0.530264, -0.808552, -0.255074,
		0.442316, -0.520490, 0.730374,
		36.978088, 34.760830, 51.508053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065662, 34.893791, 51.255665>,  <36.668468, 35.125172, 50.996792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065662, 34.893791, 51.255665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350292, 34.857239, 51.534321>,  <36.521069, 34.835308, 51.701515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350292, 34.857239, 51.534321>,  <36.065662, 34.893791, 51.255665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350292, 34.857239, 51.534321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690365, 0.093384, 0.717409,
		-0.130612, -0.991428, 0.003364,
		0.711574, -0.091380, 0.696644,
		36.563763, 34.829826, 51.743313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887291, 34.459187, 51.682571>,  <36.065662, 34.893791, 51.255665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887291, 34.459187, 51.682571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146313, 34.665379, 51.907055>,  <36.301723, 34.789093, 52.041744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146313, 34.665379, 51.907055>,  <35.887291, 34.459187, 51.682571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146313, 34.665379, 51.907055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713496, 0.151533, 0.684077,
		0.267588, -0.843395, 0.465920,
		0.647550, 0.515483, 0.561210,
		36.340576, 34.820023, 52.075417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987980, 34.103493, 52.343166>,  <35.887291, 34.459187, 51.682571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987980, 34.103493, 52.343166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094345, 34.483868, 52.406418>,  <36.158165, 34.712093, 52.444370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094345, 34.483868, 52.406418>,  <35.987980, 34.103493, 52.343166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094345, 34.483868, 52.406418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728101, 0.090616, 0.679454,
		0.631790, -0.295809, 0.716476,
		0.265913, 0.950939, 0.158129,
		36.174118, 34.769150, 52.453857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031273, 34.145763, 53.091702>,  <35.987980, 34.103493, 52.343166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031273, 34.145763, 53.091702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004730, 34.511673, 52.932312>,  <35.988804, 34.731220, 52.836678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004730, 34.511673, 52.932312>,  <36.031273, 34.145763, 53.091702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004730, 34.511673, 52.932312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684784, 0.248709, 0.684992,
		0.725719, 0.318322, 0.609921,
		-0.066355, 0.914776, -0.398475,
		35.984825, 34.786106, 52.812771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795902, 34.544353, 53.643883>,  <36.031273, 34.145763, 53.091702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795902, 34.544353, 53.643883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730930, 34.791813, 53.336407>,  <35.691948, 34.940289, 53.151920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730930, 34.791813, 53.336407>,  <35.795902, 34.544353, 53.643883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730930, 34.791813, 53.336407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758075, 0.420430, 0.498559,
		0.631615, 0.663708, 0.400692,
		-0.162434, 0.618652, -0.768691,
		35.682201, 34.977409, 53.105801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739971, 35.194172, 53.932728>,  <35.795902, 34.544353, 53.643883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739971, 35.194172, 53.932728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558804, 35.151123, 53.578716>,  <35.450104, 35.125294, 53.366310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558804, 35.151123, 53.578716>,  <35.739971, 35.194172, 53.932728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558804, 35.151123, 53.578716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756542, 0.571607, 0.317661,
		0.471703, 0.813439, -0.340313,
		-0.452923, -0.107620, -0.885030,
		35.422928, 35.118835, 53.313206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623192, 35.827076, 53.716770>,  <35.739971, 35.194172, 53.932728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623192, 35.827076, 53.716770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381241, 35.631603, 53.465275>,  <35.236069, 35.514320, 53.314377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381241, 35.631603, 53.465275>,  <35.623192, 35.827076, 53.716770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381241, 35.631603, 53.465275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685934, 0.720806, 0.099671,
		0.404492, 0.491562, -0.771202,
		-0.604881, -0.488678, -0.628740,
		35.199776, 35.485001, 53.276653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357029, 36.337704, 53.263161>,  <35.623192, 35.827076, 53.716770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357029, 36.337704, 53.263161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109200, 36.023987, 53.250412>,  <34.960503, 35.835758, 53.242764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109200, 36.023987, 53.250412>,  <35.357029, 36.337704, 53.263161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109200, 36.023987, 53.250412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783493, 0.615468, 0.085657,
		-0.047565, 0.078040, -0.995815,
		-0.619577, -0.784289, -0.031869,
		34.923325, 35.788700, 53.240852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837627, 36.489956, 52.850365>,  <35.357029, 36.337704, 53.263161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837627, 36.489956, 52.850365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681850, 36.206272, 53.085430>,  <34.588383, 36.036060, 53.226471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681850, 36.206272, 53.085430>,  <34.837627, 36.489956, 52.850365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681850, 36.206272, 53.085430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721990, 0.631232, 0.283331,
		-0.571894, -0.313945, -0.757875,
		-0.389445, -0.709214, 0.587664,
		34.565018, 35.993507, 53.261730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149887, 36.451836, 52.582344>,  <34.837627, 36.489956, 52.850365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149887, 36.451836, 52.582344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154266, 36.305622, 52.954639>,  <34.156895, 36.217896, 53.178017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154266, 36.305622, 52.954639>,  <34.149887, 36.451836, 52.582344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154266, 36.305622, 52.954639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807195, 0.546140, 0.223982,
		-0.590184, -0.753735, -0.289079,
		0.010945, -0.365534, 0.930734,
		34.157551, 36.195961, 53.233860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415485, 36.467709, 52.801403>,  <34.149887, 36.451836, 52.582344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415485, 36.467709, 52.801403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601856, 36.403194, 53.149403>,  <33.713680, 36.364487, 53.358204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601856, 36.403194, 53.149403>,  <33.415485, 36.467709, 52.801403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601856, 36.403194, 53.149403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657048, 0.595475, 0.462274,
		-0.592619, -0.787018, 0.171479,
		0.465929, -0.161282, 0.869999,
		33.741634, 36.354809, 53.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958347, 36.179893, 53.369823>,  <33.415485, 36.467709, 52.801403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958347, 36.179893, 53.369823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259106, 36.406147, 53.505295>,  <33.439560, 36.541901, 53.586578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259106, 36.406147, 53.505295>,  <32.958347, 36.179893, 53.369823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259106, 36.406147, 53.505295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621482, 0.436677, 0.650441,
		0.220019, -0.699550, 0.679869,
		0.751898, 0.565636, 0.338681,
		33.484676, 36.575836, 53.606899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876202, 36.222118, 54.047672>,  <32.958347, 36.179893, 53.369823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876202, 36.222118, 54.047672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103210, 36.544331, 53.979504>,  <33.239414, 36.737656, 53.938602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103210, 36.544331, 53.979504>,  <32.876202, 36.222118, 54.047672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103210, 36.544331, 53.979504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485343, 0.494492, 0.721055,
		0.665103, -0.326500, 0.671592,
		0.567521, 0.805529, -0.170423,
		33.273468, 36.785988, 53.928375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627285, 36.626537, 54.448368>,  <32.876202, 36.222118, 54.047672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627285, 36.626537, 54.448368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879566, 36.900829, 54.303047>,  <33.030933, 37.065407, 54.215855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879566, 36.900829, 54.303047>,  <32.627285, 36.626537, 54.448368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879566, 36.900829, 54.303047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552096, 0.725492, 0.410915,
		0.545349, -0.058588, 0.836159,
		0.630702, 0.685732, -0.363301,
		33.068775, 37.106548, 54.194057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956547, 37.076233, 55.051853>,  <32.627285, 36.626537, 54.448368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956547, 37.076233, 55.051853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005928, 37.272587, 54.706879>,  <33.035557, 37.390400, 54.499893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005928, 37.272587, 54.706879>,  <32.956547, 37.076233, 55.051853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005928, 37.272587, 54.706879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276232, 0.851730, 0.445254,
		0.953130, 0.183265, 0.240744,
		0.123449, 0.490886, -0.862433,
		33.042961, 37.419853, 54.448147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412903, 37.731087, 55.221176>,  <32.956547, 37.076233, 55.051853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412903, 37.731087, 55.221176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229763, 37.814388, 54.875458>,  <33.119877, 37.864368, 54.668026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229763, 37.814388, 54.875458>,  <33.412903, 37.731087, 55.221176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229763, 37.814388, 54.875458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361998, 0.844264, 0.395191,
		0.811991, 0.493812, -0.311161,
		-0.457852, 0.208252, -0.864293,
		33.092407, 37.876865, 54.616169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400101, 38.461063, 55.188412>,  <33.412903, 37.731087, 55.221176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400101, 38.461063, 55.188412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106682, 38.347649, 54.941345>,  <32.930630, 38.279598, 54.793106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106682, 38.347649, 54.941345>,  <33.400101, 38.461063, 55.188412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106682, 38.347649, 54.941345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559137, 0.768414, 0.311298,
		0.386360, 0.573713, -0.722205,
		-0.733548, -0.283538, -0.617668,
		32.886616, 38.262589, 54.756046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155987, 39.093643, 54.870289>,  <33.400101, 38.461063, 55.188412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155987, 39.093643, 54.870289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843269, 38.854366, 54.799904>,  <32.655640, 38.710800, 54.757675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843269, 38.854366, 54.799904>,  <33.155987, 39.093643, 54.870289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843269, 38.854366, 54.799904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622891, 0.736413, 0.264013,
		-0.028352, 0.316007, -0.948333,
		-0.781795, -0.598194, -0.175959,
		32.608730, 38.674908, 54.747116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709850, 39.479977, 54.443600>,  <33.155987, 39.093643, 54.870289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709850, 39.479977, 54.443600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483429, 39.189472, 54.599617>,  <32.347576, 39.015171, 54.693226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483429, 39.189472, 54.599617>,  <32.709850, 39.479977, 54.443600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483429, 39.189472, 54.599617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637337, 0.685638, 0.351713,
		-0.522860, -0.049498, -0.850980,
		-0.566055, -0.726257, 0.390040,
		32.313614, 38.971596, 54.716629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974436, 39.620007, 54.275364>,  <32.709850, 39.479977, 54.443600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974436, 39.620007, 54.275364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972176, 39.374271, 54.590973>,  <31.970819, 39.226830, 54.780338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972176, 39.374271, 54.590973>,  <31.974436, 39.620007, 54.275364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972176, 39.374271, 54.590973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610079, 0.627300, 0.484044,
		-0.792320, -0.478632, -0.378338,
		-0.005652, -0.614334, 0.789026,
		31.970480, 39.189972, 54.827682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284935, 39.700912, 54.473606>,  <31.974436, 39.620007, 54.275364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284935, 39.700912, 54.473606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496460, 39.579895, 54.790798>,  <31.623375, 39.507282, 54.981113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496460, 39.579895, 54.790798>,  <31.284935, 39.700912, 54.473606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496460, 39.579895, 54.790798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559607, 0.578168, 0.593769,
		-0.638121, -0.757751, 0.136434,
		0.528811, -0.302547, 0.792984,
		31.655104, 39.489132, 55.028694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826105, 39.712719, 54.880539>,  <31.284935, 39.700912, 54.473606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826105, 39.712719, 54.880539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145031, 39.690983, 55.120987>,  <31.336386, 39.677940, 55.265255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145031, 39.690983, 55.120987>,  <30.826105, 39.712719, 54.880539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145031, 39.690983, 55.120987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441772, 0.626066, 0.642556,
		-0.411255, -0.777874, 0.475164,
		0.797312, -0.054340, 0.601116,
		31.384224, 39.674683, 55.301323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628344, 39.486759, 55.579227>,  <30.826105, 39.712719, 54.880539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628344, 39.486759, 55.579227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965660, 39.692085, 55.642941>,  <31.168049, 39.815281, 55.681168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965660, 39.692085, 55.642941>,  <30.628344, 39.486759, 55.579227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965660, 39.692085, 55.642941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418263, 0.440677, 0.794267,
		0.337518, -0.736418, 0.586319,
		0.843290, 0.513315, 0.159280,
		31.218647, 39.846081, 55.690723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731970, 39.381065, 56.263962>,  <30.628344, 39.486759, 55.579227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731970, 39.381065, 56.263962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951191, 39.703266, 56.173805>,  <31.082724, 39.896587, 56.119709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951191, 39.703266, 56.173805>,  <30.731970, 39.381065, 56.263962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951191, 39.703266, 56.173805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415993, 0.496260, 0.762021,
		0.725665, -0.323864, 0.607060,
		0.548051, 0.805505, -0.225394,
		31.115606, 39.944916, 56.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828924, 39.609814, 56.855072>,  <30.731970, 39.381065, 56.263962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828924, 39.609814, 56.855072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892731, 39.928078, 56.621326>,  <30.931015, 40.119038, 56.481079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892731, 39.928078, 56.621326>,  <30.828924, 39.609814, 56.855072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892731, 39.928078, 56.621326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495350, 0.576541, 0.649791,
		0.853922, 0.185814, 0.486097,
		0.159515, 0.795659, -0.584364,
		30.940586, 40.166775, 56.446018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022871, 40.059620, 57.383999>,  <30.828924, 39.609814, 56.855072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022871, 40.059620, 57.383999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966761, 40.296032, 57.066257>,  <30.933094, 40.437881, 56.875610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966761, 40.296032, 57.066257>,  <31.022871, 40.059620, 57.383999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966761, 40.296032, 57.066257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515732, 0.641240, 0.568183,
		0.845188, 0.489377, 0.214865,
		-0.140275, 0.591034, -0.794356,
		30.924679, 40.473343, 56.827950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076864, 40.655460, 57.735313>,  <31.022871, 40.059620, 57.383999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076864, 40.655460, 57.735313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899309, 40.735306, 57.385887>,  <30.792776, 40.783215, 57.176231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899309, 40.735306, 57.385887>,  <31.076864, 40.655460, 57.735313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899309, 40.735306, 57.385887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540662, 0.717767, 0.438743,
		0.714597, 0.667056, -0.210681,
		-0.443886, 0.199617, -0.873566,
		30.766144, 40.795193, 57.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217953, 41.382900, 57.642521>,  <31.076864, 40.655460, 57.735313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217953, 41.382900, 57.642521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899752, 41.266644, 57.429844>,  <30.708830, 41.196888, 57.302238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899752, 41.266644, 57.429844>,  <31.217953, 41.382900, 57.642521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899752, 41.266644, 57.429844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518430, 0.780706, 0.348894,
		0.313692, 0.553193, -0.771735,
		-0.795505, -0.290646, -0.531693,
		30.661100, 41.179451, 57.270336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970337, 41.996025, 57.298317>,  <31.217953, 41.382900, 57.642521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970337, 41.996025, 57.298317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679750, 41.725273, 57.345783>,  <30.505398, 41.562820, 57.374264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679750, 41.725273, 57.345783>,  <30.970337, 41.996025, 57.298317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679750, 41.725273, 57.345783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630380, 0.725141, 0.277112,
		-0.273619, 0.126510, -0.953482,
		-0.726467, -0.676879, 0.118663,
		30.461811, 41.522209, 57.381382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416306, 42.384125, 57.105350>,  <30.970337, 41.996025, 57.298317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416306, 42.384125, 57.105350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252403, 42.076508, 57.301582>,  <30.154062, 41.891937, 57.419323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252403, 42.076508, 57.301582>,  <30.416306, 42.384125, 57.105350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252403, 42.076508, 57.301582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812053, 0.552515, 0.187876,
		-0.415539, -0.321394, -0.850902,
		-0.409754, -0.769047, 0.490581,
		30.129477, 41.845795, 57.448757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721102, 42.527042, 56.854958>,  <30.416306, 42.384125, 57.105350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721102, 42.527042, 56.854958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734093, 42.263100, 57.155231>,  <29.741886, 42.104733, 57.335396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734093, 42.263100, 57.155231>,  <29.721102, 42.527042, 56.854958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734093, 42.263100, 57.155231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862959, 0.360408, 0.354130,
		-0.504230, -0.659314, -0.557725,
		0.032475, -0.659857, 0.750689,
		29.743835, 42.065144, 57.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073877, 42.154797, 56.865280>,  <29.721102, 42.527042, 56.854958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073877, 42.154797, 56.865280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.226330, 42.110100, 57.232376>,  <29.317802, 42.083282, 57.452633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.226330, 42.110100, 57.232376>,  <29.073877, 42.154797, 56.865280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226330, 42.110100, 57.232376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805551, 0.446985, 0.388962,
		-0.453679, -0.887535, 0.080349,
		0.381133, -0.111738, 0.917743,
		29.340670, 42.076580, 57.507698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501368, 41.867146, 57.252129>,  <29.073877, 42.154797, 56.865280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501368, 41.867146, 57.252129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.740877, 42.049572, 57.515484>,  <28.884583, 42.159027, 57.673496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.740877, 42.049572, 57.515484>,  <28.501368, 41.867146, 57.252129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740877, 42.049572, 57.515484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780334, 0.517369, 0.351296,
		-0.180417, -0.724109, 0.665669,
		0.598773, 0.456065, 0.658389,
		28.920509, 42.186390, 57.713001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063871, 42.002487, 57.761169>,  <28.501368, 41.867146, 57.252129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063871, 42.002487, 57.761169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.385490, 42.192375, 57.904358>,  <28.578463, 42.306309, 57.990273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.385490, 42.192375, 57.904358>,  <28.063871, 42.002487, 57.761169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385490, 42.192375, 57.904358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592696, 0.687629, 0.419378,
		-0.047068, -0.549371, 0.834252,
		0.804050, 0.474719, 0.357975,
		28.626705, 42.334789, 58.011749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038322, 41.982140, 58.560646>,  <28.063871, 42.002487, 57.761169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038322, 41.982140, 58.560646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206354, 42.302124, 58.389248>,  <28.307173, 42.494114, 58.286411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206354, 42.302124, 58.389248>,  <28.038322, 41.982140, 58.560646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206354, 42.302124, 58.389248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552031, 0.600021, 0.578996,
		0.720275, -0.006683, 0.693656,
		0.420078, 0.799956, -0.428491,
		28.332376, 42.542110, 58.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374161, 42.466698, 59.064732>,  <28.038322, 41.982140, 58.560646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374161, 42.466698, 59.064732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242435, 42.664612, 58.743050>,  <28.163401, 42.783360, 58.550041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242435, 42.664612, 58.743050>,  <28.374161, 42.466698, 59.064732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242435, 42.664612, 58.743050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495692, 0.634315, 0.593240,
		0.803644, 0.593998, 0.036372,
		-0.329312, 0.494783, -0.804204,
		28.143642, 42.813046, 58.501789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622864, 43.185940, 59.118366>,  <28.374161, 42.466698, 59.064732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622864, 43.185940, 59.118366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.277636, 43.145531, 58.920414>,  <28.070499, 43.121284, 58.801643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.277636, 43.145531, 58.920414>,  <28.622864, 43.185940, 59.118366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277636, 43.145531, 58.920414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461465, 0.556014, 0.691302,
		0.205325, 0.825012, -0.526496,
		-0.863071, -0.101018, -0.494878,
		28.018715, 43.115227, 58.771950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243181, 43.912540, 58.874153>,  <28.622864, 43.185940, 59.118366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243181, 43.912540, 58.874153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972401, 43.623646, 58.930885>,  <27.809933, 43.450310, 58.964924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972401, 43.623646, 58.930885>,  <28.243181, 43.912540, 58.874153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972401, 43.623646, 58.930885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397896, 0.521216, 0.754992,
		-0.619208, 0.454655, -0.640211,
		-0.676949, -0.722234, 0.141835,
		27.769316, 43.406975, 58.973434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910849, 44.093918, 58.501381>,  <28.243181, 43.912540, 58.874153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910849, 44.093918, 58.501381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693846, 44.287052, 58.226410>,  <28.563644, 44.402931, 58.061428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693846, 44.287052, 58.226410>,  <28.910849, 44.093918, 58.501381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693846, 44.287052, 58.226410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659968, 0.261321, 0.704382,
		0.519738, 0.835813, 0.176886,
		-0.542508, 0.482833, -0.687428,
		28.531094, 44.431904, 58.020180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673271, 44.870651, 58.713009>,  <28.910849, 44.093918, 58.501381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673271, 44.870651, 58.713009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415636, 44.652885, 58.498062>,  <28.261055, 44.522228, 58.369095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415636, 44.652885, 58.498062>,  <28.673271, 44.870651, 58.713009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415636, 44.652885, 58.498062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691946, 0.115149, 0.712707,
		-0.326127, 0.830878, -0.450869,
		-0.644090, -0.544411, -0.537369,
		28.222408, 44.489563, 58.336853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065203, 45.229115, 58.537434>,  <28.673271, 44.870651, 58.713009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065203, 45.229115, 58.537434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011629, 44.841167, 58.618843>,  <27.979485, 44.608398, 58.667686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011629, 44.841167, 58.618843>,  <28.065203, 45.229115, 58.537434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011629, 44.841167, 58.618843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675497, 0.239617, 0.697343,
		-0.725097, -0.044079, -0.687235,
		-0.133935, -0.969866, 0.203520,
		27.971449, 44.550209, 58.679897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458729, 44.876877, 58.656811>,  <28.065203, 45.229115, 58.537434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458729, 44.876877, 58.656811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.610836, 44.569668, 58.862934>,  <27.702101, 44.385342, 58.986607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.610836, 44.569668, 58.862934>,  <27.458729, 44.876877, 58.656811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610836, 44.569668, 58.862934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781398, 0.031283, 0.623249,
		-0.494787, -0.639663, -0.588232,
		0.380267, -0.768018, 0.515310,
		27.724916, 44.339264, 59.017529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185072, 44.943779, 57.976353>,  <27.458729, 44.876877, 58.656811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185072, 44.943779, 57.976353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.138256, 45.161289, 57.643940>,  <27.110167, 45.291794, 57.444492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.138256, 45.161289, 57.643940>,  <27.185072, 44.943779, 57.976353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138256, 45.161289, 57.643940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766021, -0.483137, -0.424017,
		-0.632071, -0.686215, -0.359994,
		-0.117040, 0.543771, -0.831032,
		27.103144, 45.324421, 57.394630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417839, 44.513805, 57.491016>,  <27.185072, 44.943779, 57.976353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417839, 44.513805, 57.491016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388807, 44.851273, 57.278240>,  <27.371389, 45.053753, 57.150574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388807, 44.851273, 57.278240>,  <27.417839, 44.513805, 57.491016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388807, 44.851273, 57.278240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809327, -0.261869, -0.525751,
		-0.582857, -0.468672, -0.663796,
		-0.072577, 0.843665, -0.531941,
		27.367035, 45.104374, 57.118656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026482, 44.656174, 56.777660>,  <27.417839, 44.513805, 57.491016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026482, 44.656174, 56.777660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.365818, 44.857132, 56.844494>,  <27.569420, 44.977707, 56.884594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.365818, 44.857132, 56.844494>,  <27.026482, 44.656174, 56.777660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365818, 44.857132, 56.844494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443923, -0.502985, -0.741578,
		-0.288524, 0.703283, -0.649728,
		0.848343, 0.502393, 0.167080,
		27.620321, 45.007851, 56.894619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227495, 44.941887, 56.175144>,  <27.026482, 44.656174, 56.777660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227495, 44.941887, 56.175144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.545412, 44.899082, 56.414093>,  <27.736162, 44.873398, 56.557461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.545412, 44.899082, 56.414093>,  <27.227495, 44.941887, 56.175144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545412, 44.899082, 56.414093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514139, -0.404244, -0.756471,
		0.322435, 0.908370, -0.266271,
		0.794793, -0.107012, 0.597371,
		27.783850, 44.866978, 56.593304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973663, 45.196217, 55.965939>,  <27.227495, 44.941887, 56.175144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973663, 45.196217, 55.965939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042286, 44.899544, 56.225315>,  <28.083460, 44.721539, 56.380939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042286, 44.899544, 56.225315>,  <27.973663, 45.196217, 55.965939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042286, 44.899544, 56.225315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494776, -0.504303, -0.707725,
		0.851918, 0.442245, 0.280453,
		0.171555, -0.741685, 0.648438,
		28.093752, 44.677036, 56.419846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778883, 45.058403, 56.078552>,  <27.973663, 45.196217, 55.965939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778883, 45.058403, 56.078552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540394, 44.742950, 56.138657>,  <28.397301, 44.553680, 56.174717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540394, 44.742950, 56.138657>,  <28.778883, 45.058403, 56.078552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540394, 44.742950, 56.138657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469909, -0.494567, -0.731156,
		0.650925, -0.365325, 0.665458,
		-0.596223, -0.788632, 0.150257,
		28.361526, 44.506359, 56.183735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183521, 44.445759, 55.951973>,  <28.778883, 45.058403, 56.078552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183521, 44.445759, 55.951973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817217, 44.287235, 55.925682>,  <28.597433, 44.192123, 55.909908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817217, 44.287235, 55.925682>,  <29.183521, 44.445759, 55.951973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817217, 44.287235, 55.925682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307605, -0.586545, -0.749229,
		0.258375, -0.706332, 0.659042,
		-0.915763, -0.396307, -0.065722,
		28.542488, 44.168343, 55.905964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332289, 43.777939, 55.846817>,  <29.183521, 44.445759, 55.951973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332289, 43.777939, 55.846817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958834, 43.829655, 55.713188>,  <28.734760, 43.860683, 55.633011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958834, 43.829655, 55.713188>,  <29.332289, 43.777939, 55.846817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958834, 43.829655, 55.713188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188271, -0.616298, -0.764677,
		-0.304753, -0.776828, 0.551058,
		-0.933638, 0.129289, -0.334073,
		28.678741, 43.868443, 55.612965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107874, 43.203781, 55.651894>,  <29.332289, 43.777939, 55.846817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107874, 43.203781, 55.651894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834070, 43.416199, 55.452118>,  <28.669788, 43.543648, 55.332253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834070, 43.416199, 55.452118>,  <29.107874, 43.203781, 55.651894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834070, 43.416199, 55.452118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104196, -0.606793, -0.788001,
		-0.721520, -0.591433, 0.360022,
		-0.684509, 0.531045, -0.499438,
		28.628717, 43.575512, 55.302288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703302, 42.662918, 55.426987>,  <29.107874, 43.203781, 55.651894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703302, 42.662918, 55.426987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603701, 42.967045, 55.187016>,  <28.543940, 43.149521, 55.043034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603701, 42.967045, 55.187016>,  <28.703302, 42.662918, 55.426987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603701, 42.967045, 55.187016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084382, -0.600056, -0.795495,
		-0.964819, -0.248705, 0.085260,
		-0.249004, 0.760315, -0.599932,
		28.528999, 43.195141, 55.007034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305143, 42.374294, 54.881210>,  <28.703302, 42.662918, 55.426987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305143, 42.374294, 54.881210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.426773, 42.732143, 54.750252>,  <28.499750, 42.946854, 54.671677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.426773, 42.732143, 54.750252>,  <28.305143, 42.374294, 54.881210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426773, 42.732143, 54.750252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074907, -0.365056, -0.927967,
		-0.949699, 0.257645, -0.178017,
		0.304072, 0.894625, -0.327394,
		28.517994, 43.000530, 54.652035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877092, 42.559196, 54.311214>,  <28.305143, 42.374294, 54.881210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877092, 42.559196, 54.311214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231461, 42.737495, 54.259899>,  <28.444082, 42.844475, 54.229111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231461, 42.737495, 54.259899>,  <27.877092, 42.559196, 54.311214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231461, 42.737495, 54.259899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044472, -0.356937, -0.933069,
		-0.461701, 0.820919, -0.336041,
		0.885920, 0.445744, -0.128290,
		28.497236, 42.871220, 54.221413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832857, 42.812412, 53.614952>,  <27.877092, 42.559196, 54.311214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832857, 42.812412, 53.614952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217329, 42.851059, 53.718334>,  <28.448011, 42.874249, 53.780365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217329, 42.851059, 53.718334>,  <27.832857, 42.812412, 53.614952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217329, 42.851059, 53.718334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275257, -0.400893, -0.873796,
		0.019189, 0.911016, -0.411924,
		0.961179, 0.096618, 0.258456,
		28.505682, 42.880043, 53.795872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245413, 43.030926, 53.079994>,  <27.832857, 42.812412, 53.614952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245413, 43.030926, 53.079994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.547150, 42.889294, 53.301117>,  <28.728191, 42.804314, 53.433792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.547150, 42.889294, 53.301117>,  <28.245413, 43.030926, 53.079994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547150, 42.889294, 53.301117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329859, -0.523622, -0.785502,
		0.567595, 0.774884, -0.278192,
		0.754340, -0.354083, 0.552807,
		28.773451, 42.783070, 53.466961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699125, 43.001678, 52.598881>,  <28.245413, 43.030926, 53.079994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699125, 43.001678, 52.598881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896700, 42.818047, 52.894253>,  <29.015244, 42.707867, 53.071476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896700, 42.818047, 52.894253>,  <28.699125, 43.001678, 52.598881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896700, 42.818047, 52.894253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599439, -0.435392, -0.671645,
		0.629842, 0.774392, 0.060134,
		0.493935, -0.459076, 0.738429,
		29.044880, 42.680325, 53.115780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414398, 43.068527, 52.414219>,  <28.699125, 43.001678, 52.598881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414398, 43.068527, 52.414219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354925, 42.744644, 52.641293>,  <29.319242, 42.550316, 52.777538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354925, 42.744644, 52.641293>,  <29.414398, 43.068527, 52.414219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354925, 42.744644, 52.641293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495545, -0.557792, -0.665809,
		0.855762, 0.182321, 0.484180,
		-0.148681, -0.809708, 0.567686,
		29.310320, 42.501732, 52.811600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053734, 42.733593, 52.240635>,  <29.414398, 43.068527, 52.414219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053734, 42.733593, 52.240635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830435, 42.450756, 52.414242>,  <29.696455, 42.281052, 52.518406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830435, 42.450756, 52.414242>,  <30.053734, 42.733593, 52.240635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830435, 42.450756, 52.414242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514646, -0.705439, -0.487334,
		0.650767, -0.048686, 0.757715,
		-0.558248, -0.707096, 0.434021,
		29.662960, 42.238628, 52.544449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481297, 42.250568, 52.696247>,  <30.053734, 42.733593, 52.240635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481297, 42.250568, 52.696247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154737, 42.067551, 52.555305>,  <29.958801, 41.957741, 52.470741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154737, 42.067551, 52.555305>,  <30.481297, 42.250568, 52.696247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154737, 42.067551, 52.555305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576295, -0.684724, -0.446136,
		-0.037137, -0.567282, 0.822686,
		-0.816397, -0.457541, -0.352351,
		29.909819, 41.930286, 52.449600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394892, 41.573658, 52.890011>,  <30.481297, 42.250568, 52.696247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394892, 41.573658, 52.890011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181696, 41.576939, 52.551579>,  <30.053778, 41.578907, 52.348518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181696, 41.576939, 52.551579>,  <30.394892, 41.573658, 52.890011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181696, 41.576939, 52.551579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660106, -0.621524, -0.421861,
		-0.529320, -0.783352, 0.325853,
		-0.532992, 0.008202, -0.846081,
		30.021799, 41.579399, 52.297752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280718, 40.926025, 52.662685>,  <30.394892, 41.573658, 52.890011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280718, 40.926025, 52.662685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254721, 41.124649, 52.316460>,  <30.239122, 41.243824, 52.108723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254721, 41.124649, 52.316460>,  <30.280718, 40.926025, 52.662685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254721, 41.124649, 52.316460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692480, -0.602108, -0.397412,
		-0.718503, -0.625219, -0.304720,
		-0.064995, 0.496555, -0.865569,
		30.235222, 41.273617, 52.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257299, 40.414551, 52.049713>,  <30.280718, 40.926025, 52.662685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257299, 40.414551, 52.049713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405537, 40.764835, 51.925915>,  <30.494480, 40.975006, 51.851635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405537, 40.764835, 51.925915>,  <30.257299, 40.414551, 52.049713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405537, 40.764835, 51.925915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762748, -0.477086, -0.436583,
		-0.529977, -0.074271, -0.844753,
		0.370594, 0.875713, -0.309495,
		30.516714, 41.027550, 51.833065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643366, 40.289909, 51.339352>,  <30.257299, 40.414551, 52.049713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643366, 40.289909, 51.339352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781183, 40.622318, 51.514023>,  <30.863873, 40.821762, 51.618828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781183, 40.622318, 51.514023>,  <30.643366, 40.289909, 51.339352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781183, 40.622318, 51.514023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925097, -0.221449, -0.308475,
		-0.159647, 0.510256, -0.845075,
		0.344542, 0.831023, 0.436683,
		30.884546, 40.871624, 51.645027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917547, 40.798443, 50.736519>,  <30.643366, 40.289909, 51.339352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917547, 40.798443, 50.736519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107613, 40.849995, 51.084682>,  <31.221651, 40.880928, 51.293579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107613, 40.849995, 51.084682>,  <30.917547, 40.798443, 50.736519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107613, 40.849995, 51.084682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852984, -0.310258, -0.419711,
		0.215957, 0.941875, -0.257359,
		0.475163, 0.128884, 0.870407,
		31.250162, 40.888660, 51.345806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471197, 41.132385, 50.528160>,  <30.917547, 40.798443, 50.736519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471197, 41.132385, 50.528160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553053, 40.975563, 50.886917>,  <31.602167, 40.881470, 51.102169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553053, 40.975563, 50.886917>,  <31.471197, 41.132385, 50.528160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553053, 40.975563, 50.886917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902979, -0.278063, -0.327580,
		0.377823, 0.876910, 0.297116,
		0.204642, -0.392057, 0.896891,
		31.614445, 40.857944, 51.155983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188869, 41.064819, 50.495914>,  <31.471197, 41.132385, 50.528160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188869, 41.064819, 50.495914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130424, 40.868141, 50.839283>,  <32.095356, 40.750134, 51.045303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130424, 40.868141, 50.839283>,  <32.188869, 41.064819, 50.495914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130424, 40.868141, 50.839283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888180, -0.447327, -0.105048,
		0.435646, 0.747082, 0.502077,
		-0.146113, -0.491699, 0.858419,
		32.086590, 40.720631, 51.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776363, 41.105976, 50.831993>,  <32.188869, 41.064819, 50.495914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776363, 41.105976, 50.831993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611031, 40.785702, 51.005459>,  <32.511833, 40.593536, 51.109539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611031, 40.785702, 51.005459>,  <32.776363, 41.105976, 50.831993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611031, 40.785702, 51.005459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859347, -0.500493, -0.105023,
		0.301137, 0.329260, 0.894933,
		-0.413328, -0.800684, 0.433665,
		32.487034, 40.545498, 51.135559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286488, 40.829018, 51.206661>,  <32.776363, 41.105976, 50.831993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286488, 40.829018, 51.206661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039906, 40.525513, 51.122501>,  <32.891956, 40.343410, 51.072006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039906, 40.525513, 51.122501>,  <33.286488, 40.829018, 51.206661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039906, 40.525513, 51.122501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780539, -0.553685, -0.290157,
		0.103665, -0.343092, 0.933564,
		-0.616451, -0.758762, -0.210399,
		32.854969, 40.297886, 51.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519413, 40.259007, 51.511784>,  <33.286488, 40.829018, 51.206661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519413, 40.259007, 51.511784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282604, 40.094219, 51.234715>,  <33.140518, 39.995346, 51.068474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282604, 40.094219, 51.234715>,  <33.519413, 40.259007, 51.511784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282604, 40.094219, 51.234715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700929, -0.687389, -0.190252,
		-0.397755, -0.598145, 0.695710,
		-0.592022, -0.411970, -0.692670,
		33.105000, 39.970627, 51.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625702, 39.476624, 51.558216>,  <33.519413, 40.259007, 51.511784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625702, 39.476624, 51.558216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448238, 39.543396, 51.206013>,  <33.341759, 39.583462, 50.994690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448238, 39.543396, 51.206013>,  <33.625702, 39.476624, 51.558216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448238, 39.543396, 51.206013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614391, -0.658626, -0.434437,
		-0.652444, -0.733722, 0.189654,
		-0.443668, 0.166924, -0.880509,
		33.315140, 39.593475, 50.941860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407787, 38.889774, 51.299160>,  <33.625702, 39.476624, 51.558216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407787, 38.889774, 51.299160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417782, 39.096592, 50.956924>,  <33.423779, 39.220684, 50.751583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417782, 39.096592, 50.956924>,  <33.407787, 38.889774, 51.299160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417782, 39.096592, 50.956924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475702, -0.758901, -0.444722,
		-0.879252, -0.395894, -0.264923,
		0.024988, 0.517047, -0.855592,
		33.425278, 39.251705, 50.700245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167614, 38.426971, 50.714897>,  <33.407787, 38.889774, 51.299160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167614, 38.426971, 50.714897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364750, 38.721249, 50.529057>,  <33.483032, 38.897816, 50.417553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364750, 38.721249, 50.529057>,  <33.167614, 38.426971, 50.714897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364750, 38.721249, 50.529057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398261, -0.665469, -0.631299,
		-0.773624, 0.126098, -0.620971,
		0.492843, 0.735697, -0.464603,
		33.512604, 38.941959, 50.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264328, 38.183681, 50.010822>,  <33.167614, 38.426971, 50.714897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264328, 38.183681, 50.010822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513832, 38.494648, 50.043179>,  <33.663536, 38.681229, 50.062592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513832, 38.494648, 50.043179>,  <33.264328, 38.183681, 50.010822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513832, 38.494648, 50.043179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635444, -0.444124, -0.631636,
		-0.455119, 0.445394, -0.771033,
		0.623761, 0.777418, 0.080894,
		33.700962, 38.727875, 50.067448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457024, 38.375565, 49.267361>,  <33.264328, 38.183681, 50.010822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457024, 38.375565, 49.267361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717636, 38.483845, 49.550831>,  <33.874004, 38.548813, 49.720913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717636, 38.483845, 49.550831>,  <33.457024, 38.375565, 49.267361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717636, 38.483845, 49.550831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695181, -0.587009, -0.414902,
		0.303687, 0.762983, -0.570641,
		0.651534, 0.270698, 0.708679,
		33.913097, 38.565056, 49.763435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115669, 38.357071, 48.957767>,  <33.457024, 38.375565, 49.267361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115669, 38.357071, 48.957767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210285, 38.356724, 49.346416>,  <34.267056, 38.356518, 49.579605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210285, 38.356724, 49.346416>,  <34.115669, 38.357071, 48.957767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210285, 38.356724, 49.346416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833884, -0.513070, -0.203461,
		0.498686, 0.858346, -0.120639,
		0.236536, -0.000865, 0.971622,
		34.281246, 38.356464, 49.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768726, 38.547665, 48.967014>,  <34.115669, 38.357071, 48.957767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768726, 38.547665, 48.967014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730030, 38.387550, 49.331524>,  <34.706810, 38.291481, 49.550228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730030, 38.387550, 49.331524>,  <34.768726, 38.547665, 48.967014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730030, 38.387550, 49.331524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841353, -0.522042, -0.139990,
		0.531757, 0.753156, 0.387286,
		-0.096745, -0.400284, 0.911270,
		34.701008, 38.267464, 49.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343826, 38.615936, 49.321198>,  <34.768726, 38.547665, 48.967014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343826, 38.615936, 49.321198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178749, 38.297195, 49.497700>,  <35.079704, 38.105949, 49.603600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178749, 38.297195, 49.497700>,  <35.343826, 38.615936, 49.321198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178749, 38.297195, 49.497700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829620, -0.528827, -0.179087,
		0.376055, 0.292169, 0.879329,
		-0.412689, -0.796856, 0.441257,
		35.054943, 38.058140, 49.630077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931599, 38.259930, 49.615799>,  <35.343826, 38.615936, 49.321198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931599, 38.259930, 49.615799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650730, 37.975765, 49.634827>,  <35.482208, 37.805267, 49.646244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650730, 37.975765, 49.634827>,  <35.931599, 38.259930, 49.615799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650730, 37.975765, 49.634827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690607, -0.695808, -0.197266,
		0.173236, -0.105666, 0.979196,
		-0.702176, -0.710413, 0.047565,
		35.440079, 37.762642, 49.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142475, 37.800209, 50.106426>,  <35.931599, 38.259930, 49.615799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142475, 37.800209, 50.106426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885490, 37.594135, 49.879509>,  <35.731300, 37.470490, 49.743359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885490, 37.594135, 49.879509>,  <36.142475, 37.800209, 50.106426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885490, 37.594135, 49.879509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689173, -0.712144, -0.133760,
		-0.335082, -0.476898, 0.812581,
		-0.642465, -0.515189, -0.567292,
		35.692753, 37.439579, 49.709320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382294, 37.102936, 50.228718>,  <36.142475, 37.800209, 50.106426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382294, 37.102936, 50.228718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130161, 37.065395, 49.920464>,  <35.978882, 37.042870, 49.735512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130161, 37.065395, 49.920464>,  <36.382294, 37.102936, 50.228718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130161, 37.065395, 49.920464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539312, -0.766967, -0.347712,
		-0.558417, -0.634785, 0.534059,
		-0.630328, -0.093856, -0.770634,
		35.941063, 37.037239, 49.689274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237843, 36.397972, 50.227478>,  <36.382294, 37.102936, 50.228718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237843, 36.397972, 50.227478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163155, 36.543262, 49.862358>,  <36.118343, 36.630436, 49.643288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163155, 36.543262, 49.862358>,  <36.237843, 36.397972, 50.227478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163155, 36.543262, 49.862358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303965, -0.862188, -0.405262,
		-0.934207, -0.353128, 0.050577,
		-0.186716, 0.363225, -0.912800,
		36.107140, 36.652229, 49.588516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864834, 35.924953, 49.971188>,  <36.237843, 36.397972, 50.227478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864834, 35.924953, 49.971188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995140, 36.125851, 49.650780>,  <36.073322, 36.246391, 49.458534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995140, 36.125851, 49.650780>,  <35.864834, 35.924953, 49.971188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995140, 36.125851, 49.650780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242613, -0.863269, -0.442612,
		-0.913792, -0.050149, -0.403074,
		0.325764, 0.502247, -0.801015,
		36.092869, 36.276524, 49.410477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 35.517742, 49.457172>,  <35.864834, 35.924953, 49.971188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623604, 35.517742, 49.457172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911201, 35.734386, 49.282948>,  <36.083759, 35.864372, 49.178413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911201, 35.734386, 49.282948>,  <35.623604, 35.517742, 49.457172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911201, 35.734386, 49.282948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302321, -0.808008, -0.505693,
		-0.625823, 0.231910, -0.744690,
		0.718991, 0.541610, -0.435558,
		36.126900, 35.896870, 49.152279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528984, 35.504642, 48.761032>,  <35.623604, 35.517742, 49.457172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528984, 35.504642, 48.761032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912109, 35.581570, 48.846462>,  <36.141983, 35.627728, 48.897720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912109, 35.581570, 48.846462>,  <35.528984, 35.504642, 48.761032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912109, 35.581570, 48.846462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260974, -0.893260, -0.366033,
		0.120382, 0.406327, -0.905763,
		0.957810, 0.192317, 0.213573,
		36.199451, 35.639263, 48.910534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500160, 36.056114, 48.207859>,  <35.528984, 35.504642, 48.761032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500160, 36.056114, 48.207859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437710, 36.311794, 47.906647>,  <35.400238, 36.465202, 47.725922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437710, 36.311794, 47.906647>,  <35.500160, 36.056114, 48.207859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437710, 36.311794, 47.906647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142576, -0.739809, -0.657537,
		-0.977393, -0.210023, 0.024369,
		-0.156127, 0.639198, -0.753028,
		35.390873, 36.503555, 47.680737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970078, 35.547157, 47.997974>,  <35.500160, 36.056114, 48.207859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970078, 35.547157, 47.997974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862915, 35.305294, 47.697941>,  <34.798618, 35.160175, 47.517921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862915, 35.305294, 47.697941>,  <34.970078, 35.547157, 47.997974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862915, 35.305294, 47.697941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935715, 0.348741, 0.053077,
		0.229491, 0.716082, -0.659212,
		-0.267902, -0.604653, -0.750082,
		34.782543, 35.123898, 47.472916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633034, 35.982639, 47.539162>,  <34.970078, 35.547157, 47.997974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633034, 35.982639, 47.539162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493843, 35.620510, 47.441750>,  <34.410328, 35.403233, 47.383301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493843, 35.620510, 47.441750>,  <34.633034, 35.982639, 47.539162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493843, 35.620510, 47.441750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929059, 0.367791, -0.039739,
		0.125544, 0.212425, -0.969079,
		-0.347977, -0.905321, -0.243529,
		34.389450, 35.348915, 47.368690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174305, 36.123077, 46.963161>,  <34.633034, 35.982639, 47.539162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174305, 36.123077, 46.963161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077118, 35.757576, 47.093410>,  <34.018806, 35.538277, 47.171558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077118, 35.757576, 47.093410>,  <34.174305, 36.123077, 46.963161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077118, 35.757576, 47.093410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966040, 0.258359, 0.004170,
		-0.087937, -0.313547, -0.945492,
		-0.242969, -0.913750, 0.325619,
		34.004227, 35.483452, 47.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677971, 36.063229, 46.614918>,  <34.174305, 36.123077, 46.963161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677971, 36.063229, 46.614918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614895, 35.800945, 46.910263>,  <33.577049, 35.643574, 47.087471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614895, 35.800945, 46.910263>,  <33.677971, 36.063229, 46.614918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614895, 35.800945, 46.910263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914746, 0.378660, 0.140913,
		-0.371986, -0.653195, -0.659517,
		-0.157689, -0.655708, 0.738364,
		33.567589, 35.604233, 47.131771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026012, 35.815872, 46.500694>,  <33.677971, 36.063229, 46.614918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026012, 35.815872, 46.500694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 35.678448, 46.873074>,  <33.105164, 35.595993, 47.096500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 35.678448, 46.873074>,  <33.026012, 35.815872, 46.500694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075481, 35.678448, 46.873074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967076, 0.168547, 0.190674,
		-0.222417, -0.923881, -0.311408,
		0.123673, -0.343564, 0.930950,
		33.112583, 35.575378, 47.152359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359177, 35.403404, 46.727440>,  <33.026012, 35.815872, 46.500694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359177, 35.403404, 46.727440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542896, 35.498798, 47.069706>,  <32.653126, 35.556034, 47.275066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542896, 35.498798, 47.069706>,  <32.359177, 35.403404, 46.727440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542896, 35.498798, 47.069706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865126, 0.338617, 0.369993,
		-0.201506, -0.910199, 0.361847,
		0.459295, 0.238488, 0.855670,
		32.680683, 35.570347, 47.326408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822794, 35.095814, 47.281418>,  <32.359177, 35.403404, 46.727440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822794, 35.095814, 47.281418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069962, 35.374119, 47.427887>,  <32.218262, 35.541103, 47.515770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069962, 35.374119, 47.427887>,  <31.822794, 35.095814, 47.281418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069962, 35.374119, 47.427887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782899, 0.501579, 0.368088,
		0.072437, -0.514127, 0.854650,
		0.617918, 0.695767, 0.366177,
		32.255337, 35.582848, 47.537739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618092, 35.195358, 48.045792>,  <31.822794, 35.095814, 47.281418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618092, 35.195358, 48.045792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822474, 35.532417, 47.977825>,  <31.945103, 35.734653, 47.937046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822474, 35.532417, 47.977825>,  <31.618092, 35.195358, 48.045792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822474, 35.532417, 47.977825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807219, 0.538300, 0.242138,
		0.295504, 0.013440, 0.955247,
		0.510955, 0.842646, -0.169919,
		31.975760, 35.785210, 47.926849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379698, 35.607727, 48.635590>,  <31.618092, 35.195358, 48.045792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379698, 35.607727, 48.635590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498480, 35.865761, 48.353970>,  <31.569748, 36.020580, 48.184998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498480, 35.865761, 48.353970>,  <31.379698, 35.607727, 48.635590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498480, 35.865761, 48.353970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746065, 0.616924, 0.250582,
		0.595992, 0.450856, 0.664472,
		0.296952, 0.645084, -0.704050,
		31.587566, 36.059288, 48.142754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474874, 36.226208, 48.929436>,  <31.379698, 35.607727, 48.635590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474874, 36.226208, 48.929436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432188, 36.326450, 48.544559>,  <31.406576, 36.386597, 48.313633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432188, 36.326450, 48.544559>,  <31.474874, 36.226208, 48.929436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432188, 36.326450, 48.544559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746887, 0.618584, 0.243953,
		0.656331, 0.744680, 0.121163,
		-0.106718, 0.250609, -0.962188,
		31.400173, 36.401634, 48.255901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425343, 36.967270, 48.885578>,  <31.474874, 36.226208, 48.929436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425343, 36.967270, 48.885578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.250010, 36.825108, 48.555355>,  <31.144810, 36.739811, 48.357220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.250010, 36.825108, 48.555355>,  <31.425343, 36.967270, 48.885578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250010, 36.825108, 48.555355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670841, 0.740661, 0.037326,
		0.598193, 0.570180, -0.563080,
		-0.438334, -0.355409, -0.825559,
		31.118509, 36.718487, 48.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324614, 37.566559, 48.357651>,  <31.425343, 36.967270, 48.885578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324614, 37.566559, 48.357651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055477, 37.299976, 48.229206>,  <30.893995, 37.140026, 48.152138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055477, 37.299976, 48.229206>,  <31.324614, 37.566559, 48.357651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055477, 37.299976, 48.229206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712450, 0.700659, 0.038634,
		0.199243, 0.254772, -0.946252,
		-0.672843, -0.666460, -0.321114,
		30.853624, 37.100037, 48.132874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951788, 37.830341, 47.745457>,  <31.324614, 37.566559, 48.357651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951788, 37.830341, 47.745457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728170, 37.561832, 47.940128>,  <30.594000, 37.400726, 48.056931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728170, 37.561832, 47.940128>,  <30.951788, 37.830341, 47.745457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728170, 37.561832, 47.940128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663920, 0.714024, 0.222216,
		-0.496672, -0.198891, -0.844843,
		-0.559042, -0.671276, 0.486683,
		30.560457, 37.360451, 48.086132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185139, 38.134819, 47.555801>,  <30.951788, 37.830341, 47.745457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185139, 38.134819, 47.555801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193125, 37.888916, 47.871185>,  <30.197916, 37.741375, 48.060417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193125, 37.888916, 47.871185>,  <30.185139, 38.134819, 47.555801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193125, 37.888916, 47.871185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620340, 0.610847, 0.491980,
		-0.784079, -0.498936, -0.369165,
		0.019963, -0.614758, 0.788463,
		30.199114, 37.704487, 48.107723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597139, 38.215317, 47.773460>,  <30.185139, 38.134819, 47.555801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597139, 38.215317, 47.773460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755655, 38.020592, 48.084835>,  <29.850765, 37.903759, 48.271660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755655, 38.020592, 48.084835>,  <29.597139, 38.215317, 47.773460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755655, 38.020592, 48.084835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526775, 0.573864, 0.627048,
		-0.751972, -0.658556, -0.029023,
		0.396291, -0.486811, 0.778440,
		29.874542, 37.874550, 48.318367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017811, 38.102650, 48.129929>,  <29.597139, 38.215317, 47.773460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017811, 38.102650, 48.129929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.335016, 38.090378, 48.373302>,  <29.525339, 38.083015, 48.519325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.335016, 38.090378, 48.373302>,  <29.017811, 38.102650, 48.129929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335016, 38.090378, 48.373302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451579, 0.640767, 0.620881,
		-0.408909, -0.767122, 0.494285,
		0.793013, -0.030676, 0.608432,
		29.572920, 38.081177, 48.555832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727495, 38.073284, 48.782558>,  <29.017811, 38.102650, 48.129929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727495, 38.073284, 48.782558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098164, 38.185547, 48.882568>,  <29.320564, 38.252903, 48.942574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098164, 38.185547, 48.882568>,  <28.727495, 38.073284, 48.782558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098164, 38.185547, 48.882568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373494, 0.612785, 0.696416,
		0.042241, -0.738732, 0.672674,
		0.926670, 0.280657, 0.250028,
		29.376165, 38.269745, 48.957577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763960, 37.998058, 49.589714>,  <28.727495, 38.073284, 48.782558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763960, 37.998058, 49.589714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092712, 38.218990, 49.533936>,  <29.289963, 38.351551, 49.500469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092712, 38.218990, 49.533936>,  <28.763960, 37.998058, 49.589714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092712, 38.218990, 49.533936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259923, 0.581416, 0.770971,
		0.506907, -0.597400, 0.621417,
		0.821880, 0.552330, -0.139445,
		29.339275, 38.384689, 49.492104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015726, 38.135002, 50.179829>,  <28.763960, 37.998058, 49.589714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015726, 38.135002, 50.179829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210699, 38.413834, 49.969498>,  <29.327682, 38.581131, 49.843300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210699, 38.413834, 49.969498>,  <29.015726, 38.135002, 50.179829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210699, 38.413834, 49.969498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472852, 0.716993, 0.512183,
		0.734045, -0.001016, 0.679100,
		0.487431, 0.697079, -0.525825,
		29.356928, 38.622959, 49.811749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365349, 38.624329, 50.615574>,  <29.015726, 38.135002, 50.179829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365349, 38.624329, 50.615574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359034, 38.859112, 50.291786>,  <29.355246, 38.999981, 50.097515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359034, 38.859112, 50.291786>,  <29.365349, 38.624329, 50.615574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359034, 38.859112, 50.291786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322916, 0.763191, 0.559701,
		0.946296, 0.270225, 0.177489,
		-0.015787, 0.586956, -0.809465,
		29.354298, 39.035198, 50.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728231, 39.259663, 50.768841>,  <29.365349, 38.624329, 50.615574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728231, 39.259663, 50.768841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471523, 39.349445, 50.475513>,  <29.317499, 39.403313, 50.299519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471523, 39.349445, 50.475513>,  <29.728231, 39.259663, 50.768841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471523, 39.349445, 50.475513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399853, 0.718018, 0.569708,
		0.654408, 0.658840, -0.371053,
		-0.641769, 0.224454, -0.733316,
		29.278992, 39.416782, 50.255520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667597, 40.031311, 50.626583>,  <29.728231, 39.259663, 50.768841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667597, 40.031311, 50.626583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316013, 39.891026, 50.497318>,  <29.105062, 39.806854, 50.419758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316013, 39.891026, 50.497318>,  <29.667597, 40.031311, 50.626583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316013, 39.891026, 50.497318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472279, 0.734218, 0.487726,
		0.066219, 0.581313, -0.810981,
		-0.878958, -0.350712, -0.323161,
		29.052326, 39.785812, 50.400372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267822, 40.602077, 50.731346>,  <29.667597, 40.031311, 50.626583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267822, 40.602077, 50.731346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994518, 40.326870, 50.633537>,  <28.830536, 40.161747, 50.574852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994518, 40.326870, 50.633537>,  <29.267822, 40.602077, 50.731346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994518, 40.326870, 50.633537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725274, 0.600745, 0.336277,
		-0.084466, 0.407112, -0.909464,
		-0.683259, -0.688015, -0.244526,
		28.789541, 40.120464, 50.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753622, 40.944199, 50.325500>,  <29.267822, 40.602077, 50.731346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753622, 40.944199, 50.325500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569956, 40.615009, 50.459301>,  <28.459757, 40.417496, 50.539581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569956, 40.615009, 50.459301>,  <28.753622, 40.944199, 50.325500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569956, 40.615009, 50.459301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814258, 0.540439, 0.211918,
		-0.355178, -0.175062, -0.918260,
		-0.459165, -0.822970, 0.334497,
		28.432207, 40.368118, 50.559650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084892, 41.035526, 50.183891>,  <28.753622, 40.944199, 50.325500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084892, 41.035526, 50.183891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061069, 40.771267, 50.483223>,  <28.046776, 40.612709, 50.662823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061069, 40.771267, 50.483223>,  <28.084892, 41.035526, 50.183891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061069, 40.771267, 50.483223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729717, 0.540353, 0.418966,
		-0.681151, -0.521115, -0.514270,
		-0.059558, -0.660650, 0.748328,
		28.043201, 40.573071, 50.707722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370390, 41.006081, 50.409744>,  <28.084892, 41.035526, 50.183891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370390, 41.006081, 50.409744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574427, 40.861095, 50.721752>,  <27.696848, 40.774105, 50.908958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574427, 40.861095, 50.721752>,  <27.370390, 41.006081, 50.409744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574427, 40.861095, 50.721752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539481, 0.571488, 0.618354,
		-0.669902, -0.736221, 0.095969,
		0.510090, -0.362463, 0.780018,
		27.727453, 40.752357, 50.955757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903112, 40.844463, 50.978226>,  <27.370390, 41.006081, 50.409744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903112, 40.844463, 50.978226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.266020, 40.975849, 51.083275>,  <27.483765, 41.054680, 51.146305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.266020, 40.975849, 51.083275>,  <26.903112, 40.844463, 50.978226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266020, 40.975849, 51.083275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402828, 0.499391, 0.767032,
		0.120792, -0.801697, 0.585398,
		0.907270, 0.328466, 0.262623,
		27.538200, 41.074390, 51.162064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904678, 40.612110, 51.649418>,  <26.903112, 40.844463, 50.978226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904678, 40.612110, 51.649418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175980, 40.904850, 51.622990>,  <27.338760, 41.080494, 51.607132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175980, 40.904850, 51.622990>,  <26.904678, 40.612110, 51.649418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175980, 40.904850, 51.622990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426566, 0.465338, 0.775566,
		0.598344, -0.497847, 0.627800,
		0.678252, 0.731853, -0.066068,
		27.379456, 41.124405, 51.603168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269714, 40.785152, 52.267605>,  <26.904678, 40.612110, 51.649418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269714, 40.785152, 52.267605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337912, 41.133080, 52.082413>,  <27.378830, 41.341835, 51.971298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337912, 41.133080, 52.082413>,  <27.269714, 40.785152, 52.267605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337912, 41.133080, 52.082413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406396, 0.490111, 0.771125,
		0.897649, 0.056682, 0.437051,
		0.170495, 0.869815, -0.462983,
		27.389059, 41.394024, 51.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262228, 41.290047, 52.787136>,  <27.269714, 40.785152, 52.267605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262228, 41.290047, 52.787136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215933, 41.529690, 52.470230>,  <27.188156, 41.673473, 52.280087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215933, 41.529690, 52.470230>,  <27.262228, 41.290047, 52.787136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215933, 41.529690, 52.470230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665458, 0.545385, 0.509628,
		0.737408, 0.586200, 0.335557,
		-0.115736, 0.599103, -0.792263,
		27.181211, 41.709419, 52.232552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469805, 41.949837, 52.959194>,  <27.262228, 41.290047, 52.787136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469805, 41.949837, 52.959194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.219904, 42.015087, 52.653755>,  <27.069963, 42.054237, 52.470493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.219904, 42.015087, 52.653755>,  <27.469805, 41.949837, 52.959194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219904, 42.015087, 52.653755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502303, 0.664760, 0.552979,
		0.597812, 0.729030, -0.333371,
		-0.624750, 0.163125, -0.763595,
		27.032478, 42.064026, 52.424675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383940, 42.686489, 52.941921>,  <27.469805, 41.949837, 52.959194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383940, 42.686489, 52.941921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.087242, 42.528168, 52.725346>,  <26.909224, 42.433174, 52.595402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.087242, 42.528168, 52.725346>,  <27.383940, 42.686489, 52.941921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087242, 42.528168, 52.725346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659101, 0.579556, 0.479271,
		0.124096, 0.712358, -0.690758,
		-0.741745, -0.395804, -0.541437,
		26.864719, 42.409428, 52.562916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946077, 43.284584, 52.871094>,  <27.383940, 42.686489, 52.941921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946077, 43.284584, 52.871094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.714184, 42.980309, 52.754295>,  <26.575047, 42.797745, 52.684216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.714184, 42.980309, 52.754295>,  <26.946077, 43.284584, 52.871094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714184, 42.980309, 52.754295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797103, 0.455177, 0.396787,
		-0.168920, 0.462784, -0.870228,
		-0.579735, -0.760687, -0.291998,
		26.540264, 42.752102, 52.666695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373959, 43.574135, 52.472492>,  <26.946077, 43.284584, 52.871094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373959, 43.574135, 52.472492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.258415, 43.220097, 52.618462>,  <26.189089, 43.007675, 52.706043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.258415, 43.220097, 52.618462>,  <26.373959, 43.574135, 52.472492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258415, 43.220097, 52.618462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868508, 0.402636, 0.289097,
		-0.402809, -0.233428, -0.885018,
		-0.288857, -0.885097, 0.364919,
		26.171759, 42.954567, 52.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730154, 43.544022, 52.313908>,  <26.373959, 43.574135, 52.472492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730154, 43.544022, 52.313908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.770603, 43.256973, 52.589531>,  <25.794872, 43.084743, 52.754906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.770603, 43.256973, 52.589531>,  <25.730154, 43.544022, 52.313908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770603, 43.256973, 52.589531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843028, 0.305964, 0.442369,
		-0.528279, -0.625626, -0.574033,
		0.101124, -0.717620, 0.689054,
		25.800940, 43.041687, 52.796246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016348, 43.105911, 52.406021>,  <25.730154, 43.544022, 52.313908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016348, 43.105911, 52.406021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.231974, 43.079876, 52.741920>,  <25.361349, 43.064255, 52.943459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.231974, 43.079876, 52.741920>,  <25.016348, 43.105911, 52.406021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231974, 43.079876, 52.741920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824513, 0.162835, 0.541907,
		-0.172014, -0.984504, 0.034109,
		0.539063, -0.065092, 0.839746,
		25.393692, 43.060349, 52.993843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547159, 42.912220, 52.809380>,  <25.016348, 43.105911, 52.406021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547159, 42.912220, 52.809380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.826574, 43.006004, 53.079807>,  <24.994223, 43.062275, 53.242065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.826574, 43.006004, 53.079807>,  <24.547159, 42.912220, 52.809380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826574, 43.006004, 53.079807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715261, 0.200839, 0.669377,
		0.021158, -0.951154, 0.307992,
		0.698537, 0.234457, 0.676074,
		25.036135, 43.076344, 53.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333572, 42.583645, 53.472477>,  <24.547159, 42.912220, 52.809380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333572, 42.583645, 53.472477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.551197, 42.915466, 53.522808>,  <24.681772, 43.114559, 53.553005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.551197, 42.915466, 53.522808>,  <24.333572, 42.583645, 53.472477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551197, 42.915466, 53.522808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695697, 0.362176, 0.620350,
		0.469047, -0.425041, 0.774167,
		0.544059, 0.829560, 0.125823,
		24.714415, 43.164333, 53.560555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090054, 42.123032, 54.047539>,  <24.333572, 42.583645, 53.472477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090054, 42.123032, 54.047539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.166231, 41.884258, 54.359283>,  <24.211939, 41.740993, 54.546329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.166231, 41.884258, 54.359283>,  <24.090054, 42.123032, 54.047539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166231, 41.884258, 54.359283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549337, -0.593158, -0.588551,
		0.813609, 0.540219, 0.214953,
		0.190445, -0.596932, 0.779360,
		24.223364, 41.705177, 54.593090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969908, 42.087124, 54.179550>,  <24.090054, 42.123032, 54.047539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969908, 42.087124, 54.179550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.794350, 41.774448, 54.356789>,  <24.689014, 41.586842, 54.463131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.794350, 41.774448, 54.356789>,  <24.969908, 42.087124, 54.179550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794350, 41.774448, 54.356789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633164, -0.618951, -0.464762,
		0.637554, 0.076571, 0.766591,
		-0.438894, -0.781689, 0.443097,
		24.662682, 41.539944, 54.489719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469259, 41.750248, 54.603340>,  <24.969908, 42.087124, 54.179550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469259, 41.750248, 54.603340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.182123, 41.498013, 54.485310>,  <25.009842, 41.346672, 54.414494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.182123, 41.498013, 54.485310>,  <25.469259, 41.750248, 54.603340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182123, 41.498013, 54.485310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696012, -0.660020, -0.282737,
		-0.016465, -0.408335, 0.912684,
		-0.717841, -0.630584, -0.295073,
		24.966770, 41.308838, 54.396786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789597, 41.145275, 54.700176>,  <25.469259, 41.750248, 54.603340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789597, 41.145275, 54.700176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476992, 41.050915, 54.469147>,  <25.289429, 40.994297, 54.330528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476992, 41.050915, 54.469147>,  <25.789597, 41.145275, 54.700176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476992, 41.050915, 54.469147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569001, -0.649192, -0.504765,
		-0.255879, -0.723118, 0.641581,
		-0.781514, -0.235901, -0.577570,
		25.242538, 40.980145, 54.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822811, 40.322681, 54.526516>,  <25.789597, 41.145275, 54.700176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822811, 40.322681, 54.526516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.586809, 40.487484, 54.248768>,  <25.445208, 40.586365, 54.082119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.586809, 40.487484, 54.248768>,  <25.822811, 40.322681, 54.526516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586809, 40.487484, 54.248768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409066, -0.588922, -0.697019,
		-0.696104, -0.695287, 0.178929,
		-0.590004, 0.412004, -0.694369,
		25.409807, 40.611084, 54.040459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490599, 39.759155, 54.269691>,  <25.822811, 40.322681, 54.526516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490599, 39.759155, 54.269691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472095, 40.052895, 53.998814>,  <25.460995, 40.229137, 53.836285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472095, 40.052895, 53.998814>,  <25.490599, 39.759155, 54.269691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472095, 40.052895, 53.998814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179036, -0.660852, -0.728849,
		-0.982755, -0.154957, -0.100905,
		-0.046257, 0.734345, -0.677199,
		25.458218, 40.273197, 53.795654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230541, 39.343815, 53.766548>,  <25.490599, 39.759155, 54.269691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230541, 39.343815, 53.766548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.357859, 39.689350, 53.610359>,  <25.434248, 39.896671, 53.516647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.357859, 39.689350, 53.610359>,  <25.230541, 39.343815, 53.766548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357859, 39.689350, 53.610359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226695, -0.469300, -0.853444,
		-0.920489, 0.183126, -0.345203,
		0.318292, 0.863842, -0.390472,
		25.453346, 39.948502, 53.493217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812691, 39.570534, 53.189312>,  <25.230541, 39.343815, 53.766548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812691, 39.570534, 53.189312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.181299, 39.716530, 53.136276>,  <25.402464, 39.804127, 53.104454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.181299, 39.716530, 53.136276>,  <24.812691, 39.570534, 53.189312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181299, 39.716530, 53.136276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072870, -0.497906, -0.864164,
		-0.381434, 0.786682, -0.485427,
		0.921519, 0.364995, -0.132593,
		25.457754, 39.826027, 53.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793489, 39.628128, 52.499199>,  <24.812691, 39.570534, 53.189312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793489, 39.628128, 52.499199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.181095, 39.660446, 52.592567>,  <25.413658, 39.679836, 52.648590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.181095, 39.660446, 52.592567>,  <24.793489, 39.628128, 52.499199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181095, 39.660446, 52.592567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236660, -0.574336, -0.783665,
		0.070747, 0.814623, -0.575659,
		0.969013, 0.080794, 0.233421,
		25.471800, 39.684685, 52.662594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025589, 39.623810, 51.857395>,  <24.793489, 39.628128, 52.499199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025589, 39.623810, 51.857395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.341722, 39.550381, 52.091206>,  <25.531403, 39.506321, 52.231491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.341722, 39.550381, 52.091206>,  <25.025589, 39.623810, 51.857395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341722, 39.550381, 52.091206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364310, -0.626259, -0.689259,
		0.492597, 0.757694, -0.428075,
		0.790333, -0.183575, 0.584529,
		25.578823, 39.495308, 52.266563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564001, 39.624687, 51.415695>,  <25.025589, 39.623810, 51.857395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564001, 39.624687, 51.415695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.694397, 39.442013, 51.746796>,  <25.772635, 39.332409, 51.945457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.694397, 39.442013, 51.746796>,  <25.564001, 39.624687, 51.415695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694397, 39.442013, 51.746796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584249, -0.591034, -0.556176,
		0.743225, 0.664921, 0.074145,
		0.325990, -0.456683, 0.827750,
		25.792194, 39.305008, 51.995121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360794, 39.622654, 51.396259>,  <25.564001, 39.624687, 51.415695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360794, 39.622654, 51.396259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.226084, 39.312099, 51.609356>,  <26.145258, 39.125767, 51.737213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.226084, 39.312099, 51.609356>,  <26.360794, 39.622654, 51.396259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226084, 39.312099, 51.609356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629600, -0.606383, -0.485699,
		0.700133, 0.171842, 0.693026,
		-0.336776, -0.776383, 0.532740,
		26.125051, 39.079185, 51.769176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934315, 39.228065, 51.520538>,  <26.360794, 39.622654, 51.396259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934315, 39.228065, 51.520538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.637794, 38.966774, 51.582203>,  <26.459883, 38.809998, 51.619202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.637794, 38.966774, 51.582203>,  <26.934315, 39.228065, 51.520538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637794, 38.966774, 51.582203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573729, -0.735928, -0.359506,
		0.348294, -0.178053, 0.920320,
		-0.741301, -0.653228, 0.154165,
		26.415403, 38.770805, 51.628452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167309, 38.748383, 51.966457>,  <26.934315, 39.228065, 51.520538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167309, 38.748383, 51.966457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861664, 38.568195, 51.781757>,  <26.678278, 38.460083, 51.670937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861664, 38.568195, 51.781757>,  <27.167309, 38.748383, 51.966457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861664, 38.568195, 51.781757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598064, -0.762968, -0.245357,
		-0.241775, -0.463636, 0.852400,
		-0.764110, -0.450468, -0.461751,
		26.632431, 38.433056, 51.643230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196606, 37.992626, 52.119038>,  <27.167309, 38.748383, 51.966457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196606, 37.992626, 52.119038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986416, 38.003792, 51.778896>,  <26.860302, 38.010490, 51.574814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986416, 38.003792, 51.778896>,  <27.196606, 37.992626, 52.119038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986416, 38.003792, 51.778896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514331, -0.785739, -0.343625,
		-0.677746, -0.617928, 0.398528,
		-0.525474, 0.027915, -0.850351,
		26.828773, 38.012165, 51.523792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075737, 37.245296, 51.906242>,  <27.196606, 37.992626, 52.119038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075737, 37.245296, 51.906242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.978006, 37.454792, 51.579807>,  <26.919367, 37.580490, 51.383945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.978006, 37.454792, 51.579807>,  <27.075737, 37.245296, 51.906242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978006, 37.454792, 51.579807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572383, -0.601443, -0.557355,
		-0.782740, -0.603292, -0.152832,
		-0.244328, 0.523742, -0.816087,
		26.904709, 37.611916, 51.334980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780510, 36.729958, 51.448105>,  <27.075737, 37.245296, 51.906242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780510, 36.729958, 51.448105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895197, 37.037800, 51.219898>,  <26.964010, 37.222507, 51.082973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895197, 37.037800, 51.219898>,  <26.780510, 36.729958, 51.448105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895197, 37.037800, 51.219898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361380, -0.638415, -0.679582,
		-0.887241, -0.011325, -0.461167,
		0.286719, 0.769609, -0.570520,
		26.981213, 37.268684, 51.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682070, 36.507587, 50.716221>,  <26.780510, 36.729958, 51.448105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682070, 36.507587, 50.716221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.946505, 36.807667, 50.710964>,  <27.105165, 36.987713, 50.707809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.946505, 36.807667, 50.710964>,  <26.682070, 36.507587, 50.716221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946505, 36.807667, 50.710964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589573, -0.530212, -0.609327,
		-0.464079, 0.395072, -0.792811,
		0.661086, 0.750195, -0.013137,
		27.144831, 37.032726, 50.707024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835403, 36.642979, 50.063210>,  <26.682070, 36.507587, 50.716221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835403, 36.642979, 50.063210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158195, 36.761337, 50.267654>,  <27.351870, 36.832352, 50.390320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158195, 36.761337, 50.267654>,  <26.835403, 36.642979, 50.063210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158195, 36.761337, 50.267654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575088, -0.590638, -0.566057,
		0.134385, 0.750728, -0.646798,
		0.806978, 0.295897, 0.511108,
		27.400290, 36.850105, 50.420986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369280, 36.969845, 49.617588>,  <26.835403, 36.642979, 50.063210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369280, 36.969845, 49.617588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591564, 36.840397, 49.923912>,  <27.724934, 36.762730, 50.107704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591564, 36.840397, 49.923912>,  <27.369280, 36.969845, 49.617588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591564, 36.840397, 49.923912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681762, -0.349785, -0.642535,
		0.475803, 0.879160, 0.026251,
		0.555709, -0.323617, 0.765807,
		27.758276, 36.743313, 50.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984476, 37.222305, 49.435913>,  <27.369280, 36.969845, 49.617588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984476, 37.222305, 49.435913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.056297, 36.942223, 49.712311>,  <28.099390, 36.774174, 49.878147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.056297, 36.942223, 49.712311>,  <27.984476, 37.222305, 49.435913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056297, 36.942223, 49.712311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640104, -0.450218, -0.622552,
		0.747013, 0.554087, 0.367369,
		0.179552, -0.700208, 0.690992,
		28.110163, 36.732159, 49.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639555, 37.086838, 49.297028>,  <27.984476, 37.222305, 49.435913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639555, 37.086838, 49.297028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512918, 36.766617, 49.500553>,  <28.436937, 36.574486, 49.622669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512918, 36.766617, 49.500553>,  <28.639555, 37.086838, 49.297028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512918, 36.766617, 49.500553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652822, -0.573049, -0.495418,
		0.688183, 0.175322, 0.704036,
		-0.316589, -0.800548, 0.508816,
		28.417942, 36.526451, 49.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247316, 36.734875, 49.582088>,  <28.639555, 37.086838, 49.297028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247316, 36.734875, 49.582088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011095, 36.419361, 49.650276>,  <28.869362, 36.230053, 49.691189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011095, 36.419361, 49.650276>,  <29.247316, 36.734875, 49.582088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011095, 36.419361, 49.650276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774803, -0.613270, -0.153561,
		0.225673, 0.041396, 0.973323,
		-0.590553, -0.788788, 0.170472,
		28.833929, 36.182724, 49.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666222, 36.194214, 49.915943>,  <29.247316, 36.734875, 49.582088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666222, 36.194214, 49.915943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358892, 36.018799, 49.729454>,  <29.174496, 35.913548, 49.617561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358892, 36.018799, 49.729454>,  <29.666222, 36.194214, 49.915943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358892, 36.018799, 49.729454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616669, -0.702312, -0.355637,
		-0.171474, -0.560749, 0.810035,
		-0.768321, -0.438541, -0.466225,
		29.128397, 35.887238, 49.589588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884850, 35.621353, 50.046818>,  <29.666222, 36.194214, 49.915943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884850, 35.621353, 50.046818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629797, 35.580845, 49.741356>,  <29.476765, 35.556538, 49.558079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629797, 35.580845, 49.741356>,  <29.884850, 35.621353, 50.046818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629797, 35.580845, 49.741356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616942, -0.660775, -0.427504,
		-0.461309, -0.743721, 0.483811,
		-0.637634, -0.101272, -0.763654,
		29.438507, 35.550465, 49.512260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652208, 34.876106, 49.897800>,  <29.884850, 35.621353, 50.046818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652208, 34.876106, 49.897800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.565517, 35.034489, 49.540871>,  <29.513502, 35.129517, 49.326714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.565517, 35.034489, 49.540871>,  <29.652208, 34.876106, 49.897800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565517, 35.034489, 49.540871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355355, -0.819346, -0.449883,
		-0.909259, -0.414596, 0.036870,
		-0.216729, 0.395958, -0.892326,
		29.500498, 35.153275, 49.273174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198166, 34.345512, 49.388729>,  <29.652208, 34.876106, 49.897800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198166, 34.345512, 49.388729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406267, 34.607563, 49.169590>,  <29.531128, 34.764793, 49.038105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406267, 34.607563, 49.169590>,  <29.198166, 34.345512, 49.388729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406267, 34.607563, 49.169590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455284, -0.755503, -0.471096,
		-0.722532, -0.004338, -0.691324,
		0.520253, 0.655131, -0.547850,
		29.562344, 34.804104, 49.005234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080469, 34.129494, 48.724224>,  <29.198166, 34.345512, 49.388729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080469, 34.129494, 48.724224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398436, 34.371124, 48.701569>,  <29.589214, 34.516102, 48.687977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398436, 34.371124, 48.701569>,  <29.080469, 34.129494, 48.724224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398436, 34.371124, 48.701569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467136, -0.668929, -0.578203,
		-0.387162, 0.433165, -0.813925,
		0.794915, 0.604072, -0.056637,
		29.636909, 34.552345, 48.684578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323807, 33.950195, 48.044994>,  <29.080469, 34.129494, 48.724224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323807, 33.950195, 48.044994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626421, 34.143829, 48.220863>,  <29.807989, 34.260010, 48.326385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.626421, 34.143829, 48.220863>,  <29.323807, 33.950195, 48.044994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626421, 34.143829, 48.220863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642048, -0.677539, -0.358768,
		0.124221, 0.553713, -0.823390,
		0.756534, 0.484089, 0.439675,
		29.853380, 34.289055, 48.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842091, 33.847630, 47.650860>,  <29.323807, 33.950195, 48.044994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842091, 33.847630, 47.650860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036167, 33.966606, 47.979767>,  <30.152613, 34.037991, 48.177109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036167, 33.966606, 47.979767>,  <29.842091, 33.847630, 47.650860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036167, 33.966606, 47.979767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606703, -0.791697, -0.071611,
		0.629683, 0.533614, -0.564584,
		0.485192, 0.297443, 0.822263,
		30.181725, 34.055840, 48.226444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562763, 33.880871, 47.475903>,  <29.842091, 33.847630, 47.650860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562763, 33.880871, 47.475903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524651, 33.841984, 47.872181>,  <30.501783, 33.818653, 48.109947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524651, 33.841984, 47.872181>,  <30.562763, 33.880871, 47.475903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524651, 33.841984, 47.872181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683586, -0.729846, -0.005874,
		0.723624, 0.676664, 0.135993,
		-0.095280, -0.097214, 0.990692,
		30.496067, 33.812820, 48.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218073, 33.902744, 47.696011>,  <30.562763, 33.880871, 47.475903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218073, 33.902744, 47.696011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019987, 33.722748, 47.993271>,  <30.901136, 33.614750, 48.171627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019987, 33.722748, 47.993271>,  <31.218073, 33.902744, 47.696011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019987, 33.722748, 47.993271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650537, -0.759026, -0.026105,
		0.575817, 0.470519, 0.668616,
		-0.495214, -0.449991, 0.743150,
		30.871424, 33.587749, 48.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730997, 33.714176, 48.250072>,  <31.218073, 33.902744, 47.696011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730997, 33.714176, 48.250072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408581, 33.481827, 48.295483>,  <31.215132, 33.342419, 48.322727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408581, 33.481827, 48.295483>,  <31.730997, 33.714176, 48.250072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408581, 33.481827, 48.295483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591239, -0.781440, 0.199469,
		-0.027152, 0.227901, 0.973306,
		-0.806040, -0.580872, 0.113526,
		31.166769, 33.307564, 48.329540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917788, 33.289230, 48.826107>,  <31.730997, 33.714176, 48.250072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917788, 33.289230, 48.826107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596958, 33.093906, 48.688568>,  <31.404461, 32.976711, 48.606045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596958, 33.093906, 48.688568>,  <31.917788, 33.289230, 48.826107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596958, 33.093906, 48.688568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381886, -0.861997, 0.333352,
		-0.459171, 0.136064, 0.877866,
		-0.802075, -0.488311, -0.343843,
		31.356335, 32.947414, 48.585415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774147, 32.852764, 49.347630>,  <31.917788, 33.289230, 48.826107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774147, 32.852764, 49.347630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593927, 32.704144, 49.022926>,  <31.485796, 32.614971, 48.828102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593927, 32.704144, 49.022926>,  <31.774147, 32.852764, 49.347630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593927, 32.704144, 49.022926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445267, -0.881633, 0.156397,
		-0.773786, -0.290987, 0.562656,
		-0.450547, -0.371550, -0.811762,
		31.458763, 32.592678, 48.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483505, 32.169159, 49.472397>,  <31.774147, 32.852764, 49.347630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483505, 32.169159, 49.472397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558889, 32.185547, 49.079906>,  <31.604120, 32.195381, 48.844414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558889, 32.185547, 49.079906>,  <31.483505, 32.169159, 49.472397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558889, 32.185547, 49.079906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382070, -0.923477, 0.034821,
		-0.904713, -0.381459, -0.189692,
		0.188459, 0.040973, -0.981226,
		31.615427, 32.197838, 48.785538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205975, 31.545954, 49.211273>,  <31.483505, 32.169159, 49.472397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205975, 31.545954, 49.211273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457012, 31.655834, 48.919888>,  <31.607635, 31.721764, 48.745056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457012, 31.655834, 48.919888>,  <31.205975, 31.545954, 49.211273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457012, 31.655834, 48.919888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266930, -0.954891, -0.130119,
		-0.731350, -0.112787, -0.672611,
		0.627595, 0.274702, -0.728466,
		31.645290, 31.738245, 48.701347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191929, 30.915953, 48.656368>,  <31.205975, 31.545954, 49.211273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191929, 30.915953, 48.656368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514555, 31.120321, 48.537434>,  <31.708132, 31.242943, 48.466072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514555, 31.120321, 48.537434>,  <31.191929, 30.915953, 48.656368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514555, 31.120321, 48.537434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443264, -0.855509, -0.267622,
		-0.391111, 0.084055, -0.916497,
		0.806567, 0.510920, -0.297340,
		31.756525, 31.273598, 48.448231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524071, 30.528917, 48.067348>,  <31.191929, 30.915953, 48.656368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524071, 30.528917, 48.067348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821167, 30.760168, 48.202465>,  <31.999426, 30.898918, 48.283535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821167, 30.760168, 48.202465>,  <31.524071, 30.528917, 48.067348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821167, 30.760168, 48.202465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623929, -0.780660, -0.035818,
		0.242995, 0.237363, -0.940538,
		0.742742, 0.578126, 0.337794,
		32.043991, 30.933605, 48.303802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164867, 30.366821, 47.698383>,  <31.524071, 30.528917, 48.067348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164867, 30.366821, 47.698383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314987, 30.552750, 48.019157>,  <32.405060, 30.664307, 48.211620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314987, 30.552750, 48.019157>,  <32.164867, 30.366821, 47.698383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314987, 30.552750, 48.019157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754057, -0.656234, 0.027475,
		0.539026, 0.594390, -0.596785,
		0.375300, 0.464820, 0.801931,
		32.427578, 30.692196, 48.259735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894829, 30.419802, 47.650547>,  <32.164867, 30.366821, 47.698383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894829, 30.419802, 47.650547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829323, 30.420921, 48.045147>,  <32.790020, 30.421593, 48.281906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829323, 30.420921, 48.045147>,  <32.894829, 30.419802, 47.650547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829323, 30.420921, 48.045147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670870, -0.732845, 0.113449,
		0.723266, 0.680390, 0.118134,
		-0.163764, 0.002801, 0.986496,
		32.780193, 30.421762, 48.341095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404205, 30.702534, 48.128094>,  <32.894829, 30.419802, 47.650547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404205, 30.702534, 48.128094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219547, 30.416098, 48.337513>,  <33.108753, 30.244236, 48.463165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219547, 30.416098, 48.337513>,  <33.404205, 30.702534, 48.128094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219547, 30.416098, 48.337513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878150, -0.452382, 0.155574,
		0.125438, 0.531572, 0.837674,
		-0.461647, -0.716088, 0.523545,
		33.081055, 30.201271, 48.494576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816345, 30.608870, 48.765854>,  <33.404205, 30.702534, 48.128094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816345, 30.608870, 48.765854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603687, 30.279198, 48.687794>,  <33.476093, 30.081394, 48.640957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603687, 30.279198, 48.687794>,  <33.816345, 30.608870, 48.765854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603687, 30.279198, 48.687794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792439, -0.565366, 0.228914,
		-0.298997, -0.032943, 0.953685,
		-0.531640, -0.824182, -0.195148,
		33.444195, 30.031942, 48.629250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179840, 30.072367, 48.287407>,  <33.816345, 30.608870, 48.765854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179840, 30.072367, 48.287407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278358, 29.706879, 48.158127>,  <34.337467, 29.487587, 48.080559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278358, 29.706879, 48.158127>,  <34.179840, 30.072367, 48.287407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278358, 29.706879, 48.158127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966360, 0.206024, 0.153957,
		-0.074087, -0.350246, 0.933723,
		0.246293, -0.913719, -0.323200,
		34.352245, 29.432762, 48.061169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598537, 29.709530, 48.705837>,  <34.179840, 30.072367, 48.287407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598537, 29.709530, 48.705837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706730, 29.566120, 48.348446>,  <34.771645, 29.480074, 48.134010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706730, 29.566120, 48.348446>,  <34.598537, 29.709530, 48.705837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706730, 29.566120, 48.348446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960067, 0.169368, 0.222679,
		0.071492, -0.918028, 0.390017,
		0.270482, -0.358522, -0.893477,
		34.787876, 29.458563, 48.080402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220470, 29.263262, 48.726791>,  <34.598537, 29.709530, 48.705837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220470, 29.263262, 48.726791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207027, 29.379992, 48.344440>,  <35.198963, 29.450029, 48.115028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207027, 29.379992, 48.344440>,  <35.220470, 29.263262, 48.726791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207027, 29.379992, 48.344440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998939, -0.020324, -0.041324,
		-0.031487, -0.956256, -0.290832,
		-0.033605, 0.291825, -0.955881,
		35.196945, 29.467539, 48.057674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647251, 28.859114, 48.291275>,  <35.220470, 29.263262, 48.726791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647251, 28.859114, 48.291275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611637, 29.240677, 48.176640>,  <35.590267, 29.469614, 48.107861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611637, 29.240677, 48.176640>,  <35.647251, 28.859114, 48.291275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611637, 29.240677, 48.176640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993976, 0.103559, 0.035888,
		0.063913, -0.281664, -0.957382,
		-0.089037, 0.953908, -0.286585,
		35.584927, 29.526850, 48.090664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247517, 29.096008, 47.882248>,  <35.647251, 28.859114, 48.291275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247517, 29.096008, 47.882248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081867, 29.441782, 47.996269>,  <35.982479, 29.649246, 48.064682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081867, 29.441782, 47.996269>,  <36.247517, 29.096008, 47.882248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081867, 29.441782, 47.996269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909408, 0.406178, 0.089418,
		-0.038485, 0.296257, -0.954332,
		-0.414120, 0.864437, 0.285051,
		35.957630, 29.701113, 48.081783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622604, 29.611290, 47.552269>,  <36.247517, 29.096008, 47.882248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622604, 29.611290, 47.552269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441101, 29.778204, 47.867222>,  <36.332199, 29.878351, 48.056194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441101, 29.778204, 47.867222>,  <36.622604, 29.611290, 47.552269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441101, 29.778204, 47.867222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871831, 0.390740, 0.295352,
		-0.184416, 0.820486, -0.541104,
		-0.453763, 0.417284, 0.787384,
		36.304974, 29.903389, 48.103436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692066, 30.369650, 47.465599>,  <36.622604, 29.611290, 47.552269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692066, 30.369650, 47.465599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648987, 30.288727, 47.854954>,  <36.623138, 30.240173, 48.088566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648987, 30.288727, 47.854954>,  <36.692066, 30.369650, 47.465599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648987, 30.288727, 47.854954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758617, 0.616088, 0.211982,
		-0.642575, 0.761253, 0.087125,
		-0.107695, -0.202309, 0.973382,
		36.616676, 30.228035, 48.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549026, 31.015657, 47.856331>,  <36.692066, 30.369650, 47.465599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549026, 31.015657, 47.856331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679890, 30.771603, 48.144970>,  <36.758408, 30.625170, 48.318153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679890, 30.771603, 48.144970>,  <36.549026, 31.015657, 47.856331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679890, 30.771603, 48.144970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646352, 0.701536, 0.300127,
		-0.689343, 0.368215, 0.623878,
		0.327161, -0.610136, 0.721595,
		36.778038, 30.588562, 48.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590443, 31.401163, 48.368359>,  <36.549026, 31.015657, 47.856331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590443, 31.401163, 48.368359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826908, 31.103895, 48.493725>,  <36.968788, 30.925533, 48.568943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826908, 31.103895, 48.493725>,  <36.590443, 31.401163, 48.368359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826908, 31.103895, 48.493725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648169, 0.668996, 0.363760,
		-0.480008, -0.011896, 0.877183,
		0.591159, -0.743171, 0.313413,
		37.004257, 30.880943, 48.587749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776409, 31.734144, 48.983196>,  <36.590443, 31.401163, 48.368359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776409, 31.734144, 48.983196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028656, 31.429276, 48.924648>,  <37.180004, 31.246355, 48.889519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028656, 31.429276, 48.924648>,  <36.776409, 31.734144, 48.983196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028656, 31.429276, 48.924648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775417, 0.610860, 0.159933,
		-0.032486, -0.214352, 0.976216,
		0.630614, -0.762170, -0.146368,
		37.217838, 31.200624, 48.880737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296688, 31.720840, 49.556160>,  <36.776409, 31.734144, 48.983196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296688, 31.720840, 49.556160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458019, 31.522938, 49.248253>,  <37.554817, 31.404196, 49.063511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458019, 31.522938, 49.248253>,  <37.296688, 31.720840, 49.556160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458019, 31.522938, 49.248253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899998, 0.366458, 0.236033,
		0.165306, -0.787986, 0.593087,
		0.403332, -0.494759, -0.769764,
		37.579018, 31.374510, 49.017323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837200, 31.430838, 49.788242>,  <37.296688, 31.720840, 49.556160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837200, 31.430838, 49.788242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937332, 31.456982, 49.401863>,  <37.997410, 31.472668, 49.170036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937332, 31.456982, 49.401863>,  <37.837200, 31.430838, 49.788242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937332, 31.456982, 49.401863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889102, 0.379367, 0.256082,
		0.383188, -0.922935, 0.036857,
		0.250330, 0.065358, -0.965952,
		38.012432, 31.476589, 49.112076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565872, 31.183161, 49.765663>,  <37.837200, 31.430838, 49.788242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565872, 31.183161, 49.765663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530029, 31.392778, 49.426876>,  <38.508522, 31.518549, 49.223606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530029, 31.392778, 49.426876>,  <38.565872, 31.183161, 49.765663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530029, 31.392778, 49.426876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929195, 0.350136, 0.118330,
		0.358563, -0.776391, -0.518315,
		-0.089610, 0.524044, -0.846964,
		38.503147, 31.549992, 49.172787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163963, 31.131287, 49.544075>,  <38.565872, 31.183161, 49.765663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163963, 31.131287, 49.544075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.013992, 31.417801, 49.308666>,  <38.924007, 31.589710, 49.167419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.013992, 31.417801, 49.308666>,  <39.163963, 31.131287, 49.544075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013992, 31.417801, 49.308666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823442, 0.548947, 0.143528,
		0.425876, -0.430803, -0.795637,
		-0.374930, 0.716286, -0.588525,
		38.901512, 31.632687, 49.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644062, 31.247423, 49.101498>,  <39.163963, 31.131287, 49.544075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644062, 31.247423, 49.101498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436520, 31.589273, 49.109570>,  <39.311993, 31.794384, 49.114414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436520, 31.589273, 49.109570>,  <39.644062, 31.247423, 49.101498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436520, 31.589273, 49.109570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850125, 0.513355, 0.117275,
		0.089867, 0.078003, -0.992894,
		-0.518855, 0.854624, 0.020179,
		39.280865, 31.845661, 49.115623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011013, 31.728916, 48.693245>,  <39.644062, 31.247423, 49.101498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011013, 31.728916, 48.693245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784370, 31.926338, 48.957172>,  <39.648384, 32.044792, 49.115528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784370, 31.926338, 48.957172>,  <40.011013, 31.728916, 48.693245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784370, 31.926338, 48.957172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724783, 0.679457, 0.114143,
		-0.391985, 0.542901, -0.742702,
		-0.566602, 0.493555, 0.659822,
		39.614391, 32.074406, 49.155121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013252, 32.177715, 48.026512>,  <40.011013, 31.728916, 48.693245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013252, 32.177715, 48.026512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222301, 31.919142, 47.804165>,  <40.347733, 31.763998, 47.670757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222301, 31.919142, 47.804165>,  <40.013252, 32.177715, 48.026512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222301, 31.919142, 47.804165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603158, 0.741140, -0.294808,
		0.602549, -0.181203, 0.777239,
		0.522623, -0.646434, -0.555867,
		40.379089, 31.725212, 47.637405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448307, 32.765942, 48.166584>,  <40.013252, 32.177715, 48.026512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448307, 32.765942, 48.166584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841228, 32.812946, 48.224915>,  <41.076981, 32.841148, 48.259914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841228, 32.812946, 48.224915>,  <40.448307, 32.765942, 48.166584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841228, 32.812946, 48.224915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034741, -0.879466, 0.474692,
		0.184035, -0.461226, -0.867987,
		0.982306, 0.117515, 0.145830,
		41.135921, 32.848202, 48.268661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021832, 32.339787, 47.884846>,  <40.448307, 32.765942, 48.166584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021832, 32.339787, 47.884846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098301, 32.474522, 48.253628>,  <41.144184, 32.555363, 48.474895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098301, 32.474522, 48.253628>,  <41.021832, 32.339787, 47.884846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098301, 32.474522, 48.253628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110236, -0.940701, 0.320826,
		0.975346, 0.040298, -0.216971,
		0.191176, 0.336835, 0.921951,
		41.155655, 32.575573, 48.530212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096230, 31.674509, 47.939617>,  <41.021832, 32.339787, 47.884846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096230, 31.674509, 47.939617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122288, 31.283958, 47.857212>,  <41.137924, 31.049627, 47.807770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122288, 31.283958, 47.857212>,  <41.096230, 31.674509, 47.939617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122288, 31.283958, 47.857212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582942, 0.204800, -0.786280,
		0.809898, -0.068867, 0.582515,
		0.065150, -0.976378, -0.206012,
		41.141834, 30.991045, 47.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708797, 31.398523, 47.789082>,  <41.096230, 31.674509, 47.939617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708797, 31.398523, 47.789082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447464, 31.188032, 47.571369>,  <41.290665, 31.061737, 47.440742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447464, 31.188032, 47.571369>,  <41.708797, 31.398523, 47.789082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447464, 31.188032, 47.571369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635843, 0.008816, -0.771768,
		0.410925, -0.850298, 0.328839,
		-0.653333, -0.526228, -0.544279,
		41.251465, 31.030163, 47.408085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084576, 30.754438, 47.578320>,  <41.708797, 31.398523, 47.789082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084576, 30.754438, 47.578320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799065, 30.890484, 47.333424>,  <41.627758, 30.972111, 47.186485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799065, 30.890484, 47.333424>,  <42.084576, 30.754438, 47.578320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799065, 30.890484, 47.333424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665378, 0.056446, -0.744369,
		-0.218610, -0.938689, -0.266594,
		-0.713779, 0.340113, -0.612244,
		41.584930, 30.992517, 47.149750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031780, 30.438217, 46.838665>,  <42.084576, 30.754438, 47.578320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031780, 30.438217, 46.838665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.892315, 30.811363, 46.802452>,  <41.808636, 31.035252, 46.780724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.892315, 30.811363, 46.802452>,  <42.031780, 30.438217, 46.838665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892315, 30.811363, 46.802452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635998, 0.164534, -0.753947,
		-0.688436, -0.320450, -0.650667,
		-0.348659, 0.932867, -0.090535,
		41.787716, 31.091223, 46.775291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781109, 30.614134, 46.182178>,  <42.031780, 30.438217, 46.838665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781109, 30.614134, 46.182178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910542, 30.957092, 46.342262>,  <41.988201, 31.162868, 46.438313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910542, 30.957092, 46.342262>,  <41.781109, 30.614134, 46.182178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910542, 30.957092, 46.342262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629445, 0.120744, -0.767606,
		-0.706467, 0.500289, -0.500615,
		0.323578, 0.857398, 0.400206,
		42.007614, 31.214312, 46.462326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782158, 31.156105, 45.662880>,  <41.781109, 30.614134, 46.182178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782158, 31.156105, 45.662880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038383, 31.258537, 45.952461>,  <42.192120, 31.319996, 46.126209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038383, 31.258537, 45.952461>,  <41.782158, 31.156105, 45.662880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038383, 31.258537, 45.952461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694563, 0.208874, -0.688443,
		-0.327512, 0.943819, -0.044068,
		0.640561, 0.256081, 0.723950,
		42.230553, 31.335361, 46.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015659, 31.886410, 45.613384>,  <41.782158, 31.156105, 45.662880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015659, 31.886410, 45.613384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.302460, 31.645294, 45.753414>,  <42.474541, 31.500626, 45.837433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.302460, 31.645294, 45.753414>,  <42.015659, 31.886410, 45.613384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302460, 31.645294, 45.753414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589519, 0.256359, -0.765994,
		0.371987, 0.755597, 0.539165,
		0.717003, -0.602788, 0.350077,
		42.517559, 31.464458, 45.858437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663589, 32.196934, 45.511929>,  <42.015659, 31.886410, 45.613384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663589, 32.196934, 45.511929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.661671, 31.797276, 45.495537>,  <42.660519, 31.557480, 45.485703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.661671, 31.797276, 45.495537>,  <42.663589, 32.196934, 45.511929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661671, 31.797276, 45.495537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561327, 0.031223, -0.827005,
		0.827580, -0.026964, 0.560699,
		-0.004793, -0.999149, -0.040976,
		42.660233, 31.497532, 45.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298286, 31.984638, 45.369011>,  <42.663589, 32.196934, 45.511929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298286, 31.984638, 45.369011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.070919, 31.678713, 45.247715>,  <42.934498, 31.495157, 45.174938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.070919, 31.678713, 45.247715>,  <43.298286, 31.984638, 45.369011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070919, 31.678713, 45.247715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496055, -0.024543, -0.867944,
		0.656373, -0.643783, 0.393341,
		-0.568422, -0.764814, -0.303242,
		42.900391, 31.449268, 45.156742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769306, 31.363817, 45.131039>,  <43.298286, 31.984638, 45.369011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769306, 31.363817, 45.131039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.419395, 31.357359, 44.937336>,  <43.209450, 31.353483, 44.821114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.419395, 31.357359, 44.937336>,  <43.769306, 31.363817, 45.131039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419395, 31.357359, 44.937336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484469, -0.013685, -0.874701,
		0.007494, -0.999776, 0.019793,
		-0.874776, -0.016144, -0.484258,
		43.156963, 31.352514, 44.792057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875843, 30.795137, 44.665653>,  <43.769306, 31.363817, 45.131039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875843, 30.795137, 44.665653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605656, 31.047129, 44.512356>,  <43.443542, 31.198324, 44.420380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605656, 31.047129, 44.512356>,  <43.875843, 30.795137, 44.665653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605656, 31.047129, 44.512356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538756, 0.066767, -0.839812,
		-0.503477, -0.773737, -0.384504,
		-0.675465, 0.629979, -0.383240,
		43.403015, 31.236122, 44.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484322, 30.608473, 44.020092>,  <43.875843, 30.795137, 44.665653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484322, 30.608473, 44.020092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.587200, 30.988905, 44.088562>,  <43.648926, 31.217165, 44.129642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.587200, 30.988905, 44.088562>,  <43.484322, 30.608473, 44.020092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587200, 30.988905, 44.088562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687646, -0.055668, -0.723909,
		-0.678967, 0.303888, -0.668323,
		0.257192, 0.951080, 0.171171,
		43.664356, 31.274229, 44.139912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353123, 31.038055, 43.329025>,  <43.484322, 30.608473, 44.020092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353123, 31.038055, 43.329025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.629780, 31.088379, 43.613506>,  <43.795773, 31.118572, 43.784195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.629780, 31.088379, 43.613506>,  <43.353123, 31.038055, 43.329025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629780, 31.088379, 43.613506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719708, -0.202476, -0.664096,
		0.060453, 0.971173, -0.230585,
		0.691640, 0.125807, 0.711201,
		43.837273, 31.126122, 43.826866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968208, 31.015068, 42.710396>,  <43.353123, 31.038055, 43.329025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968208, 31.015068, 42.710396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.692562, 31.151142, 42.454460>,  <42.527176, 31.232786, 42.300900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.692562, 31.151142, 42.454460>,  <42.968208, 31.015068, 42.710396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692562, 31.151142, 42.454460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167076, -0.784586, -0.597085,
		-0.705125, -0.518364, 0.483836,
		-0.689118, 0.340182, -0.639838,
		42.485828, 31.253197, 42.262508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514626, 30.387695, 42.474277>,  <42.968208, 31.015068, 42.710396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514626, 30.387695, 42.474277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.556484, 30.710602, 42.241943>,  <42.581600, 30.904345, 42.102543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.556484, 30.710602, 42.241943>,  <42.514626, 30.387695, 42.474277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556484, 30.710602, 42.241943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285112, -0.583881, -0.760128,
		-0.952765, -0.086059, -0.291262,
		0.104646, 0.807265, -0.580838,
		42.587879, 30.952782, 42.067692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114120, 30.288837, 41.890682>,  <42.514626, 30.387695, 42.474277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114120, 30.288837, 41.890682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390656, 30.552744, 41.772865>,  <42.556576, 30.711088, 41.702175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390656, 30.552744, 41.772865>,  <42.114120, 30.288837, 41.890682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390656, 30.552744, 41.772865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106817, -0.496503, -0.861438,
		-0.714589, 0.564086, -0.413727,
		0.691342, 0.659767, -0.294541,
		42.598057, 30.750673, 41.684502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958706, 30.842995, 41.294117>,  <42.114120, 30.288837, 41.890682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958706, 30.842995, 41.294117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324902, 30.682693, 41.279804>,  <42.544617, 30.586514, 41.271217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324902, 30.682693, 41.279804>,  <41.958706, 30.842995, 41.294117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324902, 30.682693, 41.279804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235940, -0.462688, -0.854548,
		0.325907, 0.790769, -0.518139,
		0.915487, -0.400753, -0.035781,
		42.599548, 30.562468, 41.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444351, 31.050606, 40.691948>,  <41.958706, 30.842995, 41.294117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444351, 31.050606, 40.691948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.431961, 30.686886, 40.857944>,  <42.424526, 30.468655, 40.957542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.431961, 30.686886, 40.857944>,  <42.444351, 31.050606, 40.691948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431961, 30.686886, 40.857944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316566, -0.384890, -0.866975,
		0.948065, -0.158223, -0.275933,
		-0.030971, -0.909299, 0.414989,
		42.422668, 30.414097, 40.982441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839226, 30.665880, 40.441113>,  <42.444351, 31.050606, 40.691948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839226, 30.665880, 40.441113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520454, 30.447485, 40.544498>,  <42.329193, 30.316448, 40.606529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520454, 30.447485, 40.544498>,  <42.839226, 30.665880, 40.441113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520454, 30.447485, 40.544498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107861, -0.292380, -0.950200,
		0.594370, -0.785117, 0.174114,
		-0.796926, -0.545990, 0.258466,
		42.281376, 30.283688, 40.622040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425312, 30.902683, 40.004669>,  <42.839226, 30.665880, 40.441113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425312, 30.902683, 40.004669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813503, 30.810009, 39.977867>,  <44.046417, 30.754404, 39.961784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813503, 30.810009, 39.977867>,  <43.425312, 30.902683, 40.004669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813503, 30.810009, 39.977867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059896, -0.500642, 0.863580,
		-0.233625, -0.834073, -0.499740,
		0.970480, -0.231687, -0.067005,
		44.104649, 30.740503, 39.957767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026821, 31.279758, 40.162445>,  <43.425312, 30.902683, 40.004669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026821, 31.279758, 40.162445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308010, 31.526085, 40.304768>,  <44.476723, 31.673880, 40.390160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308010, 31.526085, 40.304768>,  <44.026821, 31.279758, 40.162445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308010, 31.526085, 40.304768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048701, -0.540785, 0.839749,
		0.709544, -0.572996, -0.410150,
		0.702976, 0.615814, 0.355805,
		44.518902, 31.710829, 40.411510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700962, 30.889921, 40.248402>,  <44.026821, 31.279758, 40.162445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700962, 30.889921, 40.248402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647358, 31.190659, 40.506634>,  <44.615196, 31.371101, 40.661572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647358, 31.190659, 40.506634>,  <44.700962, 30.889921, 40.248402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647358, 31.190659, 40.506634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028964, -0.654147, 0.755812,
		0.990557, 0.082585, 0.109436,
		-0.134006, 0.751845, 0.645578,
		44.607155, 31.416212, 40.700306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207817, 31.275993, 39.810917>,  <44.700962, 30.889921, 40.248402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207817, 31.275993, 39.810917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.252026, 31.040897, 39.490330>,  <45.278549, 30.899839, 39.297977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.252026, 31.040897, 39.490330>,  <45.207817, 31.275993, 39.810917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252026, 31.040897, 39.490330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164334, 0.806111, -0.568488,
		0.980193, -0.068878, 0.185678,
		0.110521, -0.587742, -0.801464,
		45.285183, 30.864574, 39.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827465, 31.533291, 39.436981>,  <45.207817, 31.275993, 39.810917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827465, 31.533291, 39.436981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.608475, 31.318869, 39.179947>,  <45.477081, 31.190216, 39.025726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.608475, 31.318869, 39.179947>,  <45.827465, 31.533291, 39.436981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608475, 31.318869, 39.179947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001021, 0.768313, -0.640074,
		0.836819, -0.349771, -0.421182,
		-0.547479, -0.536056, -0.642582,
		45.444229, 31.158052, 38.987171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224422, 31.675108, 38.844315>,  <45.827465, 31.533291, 39.436981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224422, 31.675108, 38.844315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.830830, 31.629557, 38.789448>,  <45.594673, 31.602226, 38.756527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.830830, 31.629557, 38.789448>,  <46.224422, 31.675108, 38.844315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830830, 31.629557, 38.789448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005006, 0.786745, -0.617258,
		0.178205, -0.606684, -0.774712,
		-0.983981, -0.113876, -0.137165,
		45.535637, 31.595394, 38.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107201, 31.743881, 38.072353>,  <46.224422, 31.675108, 38.844315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107201, 31.743881, 38.072353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.784580, 31.826626, 38.293873>,  <45.591007, 31.876272, 38.426785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.784580, 31.826626, 38.293873>,  <46.107201, 31.743881, 38.072353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784580, 31.826626, 38.293873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220019, 0.764448, -0.605980,
		-0.548701, -0.610597, -0.571050,
		-0.806548, 0.206859, 0.553796,
		45.542618, 31.888683, 38.460011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290585, 31.669367, 37.921604>,  <46.107201, 31.743881, 38.072353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290585, 31.669367, 37.921604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.313263, 32.020042, 38.112686>,  <45.326870, 32.230450, 38.227337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.313263, 32.020042, 38.112686>,  <45.290585, 31.669367, 37.921604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313263, 32.020042, 38.112686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311907, 0.470079, -0.825676,
		-0.948420, -0.102188, 0.300096,
		0.056694, 0.876689, 0.477705,
		45.330273, 32.283051, 38.255997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794250, 32.185555, 37.659206>,  <45.290585, 31.669367, 37.921604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794250, 32.185555, 37.659206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.093853, 32.381886, 37.837231>,  <45.273613, 32.499683, 37.944046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.093853, 32.381886, 37.837231>,  <44.794250, 32.185555, 37.659206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093853, 32.381886, 37.837231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065441, 0.613643, -0.786867,
		-0.659326, 0.618492, 0.427500,
		0.749003, 0.490826, 0.445065,
		45.318554, 32.529133, 37.970749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780071, 32.734562, 38.125431>,  <44.794250, 32.185555, 37.659206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780071, 32.734562, 38.125431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.493935, 32.531914, 37.932919>,  <44.322254, 32.410324, 37.817413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.493935, 32.531914, 37.932919>,  <44.780071, 32.734562, 38.125431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493935, 32.531914, 37.932919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127115, -0.771594, 0.623286,
		-0.687119, 0.384683, 0.616350,
		-0.715339, -0.506619, -0.481277,
		44.279331, 32.379929, 37.788536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369144, 33.072105, 37.752670>,  <44.780071, 32.734562, 38.125431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369144, 33.072105, 37.752670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.334846, 33.368362, 37.486107>,  <45.314266, 33.546116, 37.326172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.334846, 33.368362, 37.486107>,  <45.369144, 33.072105, 37.752670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334846, 33.368362, 37.486107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983580, -0.043682, -0.175104,
		-0.158800, -0.670476, -0.724738,
		-0.085745, 0.740644, -0.666404,
		45.309124, 33.590557, 37.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723526, 32.912453, 37.051517>,  <45.369144, 33.072105, 37.752670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723526, 32.912453, 37.051517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.710819, 33.311287, 37.079262>,  <45.703197, 33.550587, 37.095909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.710819, 33.311287, 37.079262>,  <45.723526, 32.912453, 37.051517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710819, 33.311287, 37.079262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905276, 0.058114, -0.420830,
		-0.423635, 0.049425, -0.904484,
		-0.031763, 0.997086, 0.069362,
		45.701290, 33.610413, 37.100071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934616, 33.215797, 36.287937>,  <45.723526, 32.912453, 37.051517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934616, 33.215797, 36.287937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.041130, 33.398346, 36.627541>,  <46.105038, 33.507874, 36.831303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.041130, 33.398346, 36.627541>,  <45.934616, 33.215797, 36.287937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041130, 33.398346, 36.627541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908702, 0.174917, -0.379032,
		-0.321486, 0.872427, -0.368127,
		0.266286, 0.456371, 0.849010,
		46.121017, 33.535255, 36.882244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273968, 33.782429, 36.067669>,  <45.934616, 33.215797, 36.287937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273968, 33.782429, 36.067669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.417877, 33.651985, 36.417347>,  <46.504223, 33.573719, 36.627155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.417877, 33.651985, 36.417347>,  <46.273968, 33.782429, 36.067669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417877, 33.651985, 36.417347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908318, -0.091841, -0.408074,
		0.213365, 0.940859, 0.263172,
		0.359770, -0.326113, 0.874194,
		46.525806, 33.554150, 36.679604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873230, 33.347916, 35.863403>,  <46.273968, 33.782429, 36.067669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873230, 33.347916, 35.863403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.780212, 33.728867, 35.942284>,  <46.724400, 33.957439, 35.989613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.780212, 33.728867, 35.942284>,  <46.873230, 33.347916, 35.863403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780212, 33.728867, 35.942284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759282, 0.304488, -0.575133,
		-0.607792, 0.015988, -0.793935,
		-0.232549, 0.952382, 0.197205,
		46.710449, 34.014580, 36.001446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757023, 33.670399, 35.256363>,  <46.873230, 33.347916, 35.863403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757023, 33.670399, 35.256363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.890511, 33.941334, 35.518612>,  <46.970604, 34.103893, 35.675961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.890511, 33.941334, 35.518612>,  <46.757023, 33.670399, 35.256363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890511, 33.941334, 35.518612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654874, 0.333690, -0.678078,
		-0.678064, 0.655640, -0.332213,
		0.333719, 0.677338, 0.655625,
		46.990627, 34.144535, 35.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687313, 34.467632, 35.021481>,  <46.757023, 33.670399, 35.256363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687313, 34.467632, 35.021481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.983479, 34.383545, 35.276855>,  <47.161179, 34.333092, 35.430080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.983479, 34.383545, 35.276855>,  <46.687313, 34.467632, 35.021481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983479, 34.383545, 35.276855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667860, 0.337304, -0.663468,
		-0.075872, 0.917624, 0.390142,
		0.740410, -0.210221, 0.638436,
		47.205601, 34.320480, 35.468388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065094, 34.961449, 35.136078>,  <46.687313, 34.467632, 35.021481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065094, 34.961449, 35.136078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.306236, 34.646606, 35.188278>,  <47.450920, 34.457703, 35.219601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.306236, 34.646606, 35.188278>,  <47.065094, 34.961449, 35.136078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306236, 34.646606, 35.188278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583807, 0.323691, -0.744576,
		0.543817, 0.525061, 0.654656,
		0.602854, -0.787105, 0.130506,
		47.487091, 34.410477, 35.227428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.698856, 35.265194, 34.976963>,  <47.065094, 34.961449, 35.136078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.698856, 35.265194, 34.976963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.657238, 34.880669, 34.874947>,  <47.632267, 34.649952, 34.813736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.657238, 34.880669, 34.874947>,  <47.698856, 35.265194, 34.976963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657238, 34.880669, 34.874947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372908, 0.200015, -0.906054,
		0.922016, -0.189379, 0.337672,
		-0.104048, -0.961317, -0.255038,
		47.626022, 34.592274, 34.798435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.367863, 35.529652, 55.586140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.702351, 35.742859, 55.637711>,  <30.903044, 35.870785, 55.668652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.702351, 35.742859, 55.637711>,  <30.367863, 35.529652, 55.586140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702351, 35.742859, 55.637711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479876, -0.597444, -0.642480,
		-0.265431, 0.599123, -0.755380,
		0.836221, 0.533022, 0.128924,
		30.953217, 35.902767, 55.676388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669245, 35.564499, 54.885609>,  <30.367863, 35.529652, 55.586140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669245, 35.564499, 54.885609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.946203, 35.633266, 55.165905>,  <31.112377, 35.674526, 55.334084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.946203, 35.633266, 55.165905>,  <30.669245, 35.564499, 54.885609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946203, 35.633266, 55.165905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662563, -0.536004, -0.523172,
		0.285655, 0.826525, -0.485034,
		0.692395, 0.171918, 0.700737,
		31.153921, 35.684841, 55.376125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341019, 35.795704, 54.507412>,  <30.669245, 35.564499, 54.885609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341019, 35.795704, 54.507412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.440815, 35.646519, 54.864883>,  <31.500692, 35.557007, 55.079365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.440815, 35.646519, 54.864883>,  <31.341019, 35.795704, 54.507412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440815, 35.646519, 54.864883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609685, -0.656493, -0.444185,
		0.752355, 0.655681, 0.063597,
		0.249493, -0.372959, 0.893675,
		31.515663, 35.534630, 55.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799030, 35.420635, 54.321987>,  <31.341019, 35.795704, 54.507412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799030, 35.420635, 54.321987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.808907, 35.316093, 54.707958>,  <31.814833, 35.253368, 54.939541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.808907, 35.316093, 54.707958>,  <31.799030, 35.420635, 54.321987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808907, 35.316093, 54.707958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647527, -0.731196, -0.214618,
		0.761642, 0.630114, 0.151184,
		0.024688, -0.261358, 0.964926,
		31.816313, 35.237686, 54.997437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504620, 35.428314, 54.585514>,  <31.799030, 35.420635, 54.321987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504620, 35.428314, 54.585514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323792, 35.172665, 54.834400>,  <32.215294, 35.019276, 54.983734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323792, 35.172665, 54.834400>,  <32.504620, 35.428314, 54.585514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323792, 35.172665, 54.834400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742909, -0.655859, -0.133920,
		0.493679, 0.401711, 0.771304,
		-0.452070, -0.639122, 0.622218,
		32.188171, 34.980927, 55.021065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981018, 35.255577, 55.061909>,  <32.504620, 35.428314, 54.585514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981018, 35.255577, 55.061909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.708706, 34.962605, 55.065529>,  <32.545319, 34.786819, 55.067699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.708706, 34.962605, 55.065529>,  <32.981018, 35.255577, 55.061909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708706, 34.962605, 55.065529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709078, -0.662071, -0.242634,
		0.183706, -0.158762, 0.970076,
		-0.680780, -0.732432, 0.009051,
		32.504471, 34.742874, 55.068245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325134, 34.722359, 55.495457>,  <32.981018, 35.255577, 55.061909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325134, 34.722359, 55.495457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.044491, 34.518482, 55.296272>,  <32.876106, 34.396156, 55.176762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.044491, 34.518482, 55.296272>,  <33.325134, 34.722359, 55.495457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044491, 34.518482, 55.296272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711023, -0.546736, -0.442184,
		-0.046880, -0.664303, 0.745991,
		-0.701604, -0.509687, -0.497965,
		32.834011, 34.365578, 55.146881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508533, 34.026127, 55.556782>,  <33.325134, 34.722359, 55.495457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508533, 34.026127, 55.556782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250778, 34.005474, 55.251602>,  <33.096123, 33.993084, 55.068493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250778, 34.005474, 55.251602>,  <33.508533, 34.026127, 55.556782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250778, 34.005474, 55.251602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584615, -0.676405, -0.447998,
		-0.492934, -0.734719, 0.466052,
		-0.644393, -0.051627, -0.762950,
		33.057461, 33.989986, 55.022717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547630, 33.325478, 55.245274>,  <33.508533, 34.026127, 55.556782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547630, 33.325478, 55.245274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378689, 33.547359, 54.958519>,  <33.277325, 33.680489, 54.786469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378689, 33.547359, 54.958519>,  <33.547630, 33.325478, 55.245274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378689, 33.547359, 54.958519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470435, -0.541887, -0.696455,
		-0.774794, -0.631400, -0.032081,
		-0.422357, 0.554701, -0.716883,
		33.251980, 33.713768, 54.743454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245941, 32.814102, 54.862736>,  <33.547630, 33.325478, 55.245274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245941, 32.814102, 54.862736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.306686, 33.142334, 54.642342>,  <33.343132, 33.339272, 54.510105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.306686, 33.142334, 54.642342>,  <33.245941, 32.814102, 54.862736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306686, 33.142334, 54.642342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318553, -0.568341, -0.758625,
		-0.935662, -0.060314, -0.347707,
		0.151860, 0.820579, -0.550988,
		33.352245, 33.388508, 54.477047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996193, 32.778408, 54.235409>,  <33.245941, 32.814102, 54.862736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996193, 32.778408, 54.235409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284908, 33.050140, 54.182461>,  <33.458138, 33.213181, 54.150692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284908, 33.050140, 54.182461>,  <32.996193, 32.778408, 54.235409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284908, 33.050140, 54.182461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318882, -0.496168, -0.807546,
		-0.614271, 0.540670, -0.574758,
		0.721793, 0.679332, -0.132371,
		33.501446, 33.253941, 54.142750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956261, 32.890251, 53.537140>,  <32.996193, 32.778408, 54.235409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956261, 32.890251, 53.537140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332680, 32.962975, 53.651249>,  <33.558529, 33.006611, 53.719715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332680, 32.962975, 53.651249>,  <32.956261, 32.890251, 53.537140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332680, 32.962975, 53.651249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330070, -0.678176, -0.656606,
		0.074083, 0.712055, -0.698205,
		0.941045, 0.181813, 0.285269,
		33.614994, 33.017517, 53.736828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307362, 33.005829, 52.878925>,  <32.956261, 32.890251, 53.537140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307362, 33.005829, 52.878925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.588421, 32.921555, 53.150776>,  <33.757057, 32.870991, 53.313885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.588421, 32.921555, 53.150776>,  <33.307362, 33.005829, 52.878925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588421, 32.921555, 53.150776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397633, -0.675820, -0.620610,
		0.590058, 0.706314, -0.391091,
		0.702652, -0.210685, 0.679626,
		33.799217, 32.858349, 53.354664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936832, 33.010201, 52.457455>,  <33.307362, 33.005829, 52.878925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936832, 33.010201, 52.457455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049149, 32.842319, 52.802708>,  <34.116539, 32.741592, 53.009861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049149, 32.842319, 52.802708>,  <33.936832, 33.010201, 52.457455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049149, 32.842319, 52.802708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706785, -0.517995, -0.481805,
		0.649316, 0.745339, 0.151191,
		0.280792, -0.419703, 0.863137,
		34.133385, 32.716408, 53.061649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753529, 32.951767, 52.445843>,  <33.936832, 33.010201, 52.457455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753529, 32.951767, 52.445843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.648678, 32.702396, 52.740498>,  <34.585770, 32.552773, 52.917290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.648678, 32.702396, 52.740498>,  <34.753529, 32.951767, 52.445843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648678, 32.702396, 52.740498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683141, -0.659023, -0.314654,
		0.681623, 0.420748, 0.598633,
		-0.262123, -0.623426, 0.736635,
		34.570042, 32.515369, 52.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382244, 32.630142, 52.706577>,  <34.753529, 32.951767, 52.445843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382244, 32.630142, 52.706577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067673, 32.395870, 52.785080>,  <34.878929, 32.255306, 52.832180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067673, 32.395870, 52.785080>,  <35.382244, 32.630142, 52.706577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067673, 32.395870, 52.785080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524701, -0.801073, -0.288046,
		0.325919, -0.123550, 0.937290,
		-0.786426, -0.585676, 0.196258,
		34.831745, 32.220169, 52.843956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606716, 32.061104, 53.152451>,  <35.382244, 32.630142, 52.706577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606716, 32.061104, 53.152451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.279106, 31.941355, 52.956665>,  <35.082539, 31.869505, 52.839195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.279106, 31.941355, 52.956665>,  <35.606716, 32.061104, 53.152451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279106, 31.941355, 52.956665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474857, -0.832499, -0.285407,
		-0.322033, -0.466180, 0.823997,
		-0.819027, -0.299370, -0.489461,
		35.033398, 31.851543, 52.809826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656822, 31.398306, 53.270981>,  <35.606716, 32.061104, 53.152451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656822, 31.398306, 53.270981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401833, 31.409735, 52.963005>,  <35.248840, 31.416592, 52.778217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401833, 31.409735, 52.963005>,  <35.656822, 31.398306, 53.270981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401833, 31.409735, 52.963005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348510, -0.880544, -0.321223,
		-0.687147, -0.473103, 0.551364,
		-0.637472, 0.028571, -0.769944,
		35.210590, 31.418306, 52.732021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241291, 30.831867, 53.252167>,  <35.656822, 31.398306, 53.270981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241291, 30.831867, 53.252167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160069, 30.943745, 52.876820>,  <35.111336, 31.010870, 52.651611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160069, 30.943745, 52.876820>,  <35.241291, 30.831867, 53.252167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160069, 30.943745, 52.876820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272818, -0.904226, -0.328551,
		-0.940393, -0.322719, 0.107303,
		-0.203055, 0.279693, -0.938371,
		35.099152, 31.027653, 52.595306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911934, 30.240128, 52.979782>,  <35.241291, 30.831867, 53.252167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911934, 30.240128, 52.979782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043095, 30.478180, 52.686306>,  <35.121792, 30.621012, 52.510220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043095, 30.478180, 52.686306>,  <34.911934, 30.240128, 52.979782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043095, 30.478180, 52.686306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352639, -0.797597, -0.489371,
		-0.876428, -0.098260, -0.471401,
		0.327903, 0.595133, -0.733687,
		35.141464, 30.656719, 52.466202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837093, 29.851921, 52.291870>,  <34.911934, 30.240128, 52.979782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837093, 29.851921, 52.291870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103325, 30.138939, 52.209770>,  <35.263065, 30.311150, 52.160511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103325, 30.138939, 52.209770>,  <34.837093, 29.851921, 52.291870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103325, 30.138939, 52.209770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602559, -0.678919, -0.419514,
		-0.440366, 0.155549, -0.884241,
		0.665583, 0.717547, -0.205245,
		35.303001, 30.354202, 52.148197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869556, 29.753927, 51.682541>,  <34.837093, 29.851921, 52.291870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869556, 29.753927, 51.682541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.203613, 29.941605, 51.797356>,  <35.404049, 30.054211, 51.866245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.203613, 29.941605, 51.797356>,  <34.869556, 29.753927, 51.682541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203613, 29.941605, 51.797356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546244, -0.646341, -0.532786,
		-0.064454, 0.601747, -0.796082,
		0.835143, 0.469195, 0.287041,
		35.454155, 30.082363, 51.883469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191952, 29.485529, 51.956345>,  <34.869556, 29.753927, 51.682541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191952, 29.485529, 51.956345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955570, 29.505854, 51.634304>,  <33.813744, 29.518047, 51.441078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955570, 29.505854, 51.634304>,  <34.191952, 29.485529, 51.956345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955570, 29.505854, 51.634304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588727, 0.655150, 0.473475,
		0.551523, 0.753788, -0.357248,
		-0.590951, 0.050811, -0.805106,
		33.778286, 29.521097, 51.392773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183552, 30.184805, 51.669788>,  <34.191952, 29.485529, 51.956345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183552, 30.184805, 51.669788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.843868, 29.996540, 51.574024>,  <33.640057, 29.883581, 51.516567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.843868, 29.996540, 51.574024>,  <34.183552, 30.184805, 51.669788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843868, 29.996540, 51.574024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521389, 0.675548, 0.521333,
		-0.083640, 0.567547, -0.819081,
		-0.849210, -0.470664, -0.239410,
		33.589104, 29.855341, 51.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702244, 30.699835, 51.363224>,  <34.183552, 30.184805, 51.669788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702244, 30.699835, 51.363224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.468876, 30.400839, 51.490269>,  <33.328854, 30.221441, 51.566494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.468876, 30.400839, 51.490269>,  <33.702244, 30.699835, 51.363224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468876, 30.400839, 51.490269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546878, 0.650688, 0.526811,
		-0.600451, 0.133660, -0.788412,
		-0.583424, -0.747489, 0.317610,
		33.293850, 30.176592, 51.585552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029606, 31.025433, 51.395218>,  <33.702244, 30.699835, 51.363224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029606, 31.025433, 51.395218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.010864, 30.673431, 51.584278>,  <32.999619, 30.462231, 51.697712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.010864, 30.673431, 51.584278>,  <33.029606, 31.025433, 51.395218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010864, 30.673431, 51.584278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633455, 0.392031, 0.667118,
		-0.772360, -0.268147, -0.575810,
		-0.046850, -0.880005, 0.472648,
		32.996811, 30.409430, 51.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282101, 30.974085, 51.402649>,  <33.029606, 31.025433, 51.395218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282101, 30.974085, 51.402649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.455135, 30.743282, 51.679760>,  <32.558956, 30.604801, 51.846027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.455135, 30.743282, 51.679760>,  <32.282101, 30.974085, 51.402649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455135, 30.743282, 51.679760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743673, 0.206062, 0.635995,
		-0.509726, -0.790319, -0.339964,
		0.432585, -0.577005, 0.692774,
		32.584911, 30.570181, 51.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727901, 30.514074, 51.580669>,  <32.282101, 30.974085, 51.402649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727901, 30.514074, 51.580669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.006912, 30.562819, 51.863117>,  <32.174320, 30.592066, 52.032585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.006912, 30.562819, 51.863117>,  <31.727901, 30.514074, 51.580669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006912, 30.562819, 51.863117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670090, 0.460017, 0.582549,
		-0.253837, -0.879508, 0.402533,
		0.697529, 0.121860, 0.706118,
		32.216171, 30.599377, 52.074951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429626, 30.281340, 52.265770>,  <31.727901, 30.514074, 51.580669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429626, 30.281340, 52.265770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729486, 30.528667, 52.360176>,  <31.909403, 30.677063, 52.416821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729486, 30.528667, 52.360176>,  <31.429626, 30.281340, 52.265770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729486, 30.528667, 52.360176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616231, 0.522029, 0.589700,
		0.241414, -0.587511, 0.772367,
		0.749653, 0.618318, 0.236017,
		31.954382, 30.714163, 52.430981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431437, 30.380615, 52.892673>,  <31.429626, 30.281340, 52.265770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431437, 30.380615, 52.892673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656990, 30.691515, 52.781017>,  <31.792322, 30.878056, 52.714024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656990, 30.691515, 52.781017>,  <31.431437, 30.380615, 52.892673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656990, 30.691515, 52.781017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502847, 0.591251, 0.630529,
		0.655121, -0.215180, 0.724234,
		0.563881, 0.777252, -0.279138,
		31.826155, 30.924690, 52.697277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555103, 30.766417, 53.555714>,  <31.431437, 30.380615, 52.892673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555103, 30.766417, 53.555714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.614632, 31.029528, 53.260368>,  <31.650349, 31.187393, 53.083160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.614632, 31.029528, 53.260368>,  <31.555103, 30.766417, 53.555714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614632, 31.029528, 53.260368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411078, 0.720257, 0.558789,
		0.899370, 0.220366, 0.377587,
		0.148822, 0.657776, -0.738365,
		31.659279, 31.226860, 53.038860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784891, 31.355865, 53.901417>,  <31.555103, 30.766417, 53.555714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784891, 31.355865, 53.901417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.663267, 31.507347, 53.551758>,  <31.590292, 31.598236, 53.341965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.663267, 31.507347, 53.551758>,  <31.784891, 31.355865, 53.901417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663267, 31.507347, 53.551758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562594, 0.669110, 0.485571,
		0.768788, 0.639432, 0.009607,
		-0.304062, 0.378706, -0.874144,
		31.572048, 31.620958, 53.289513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773819, 32.104382, 54.030750>,  <31.784891, 31.355865, 53.901417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773819, 32.104382, 54.030750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.540564, 32.040424, 53.712158>,  <31.400610, 32.002048, 53.521004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.540564, 32.040424, 53.712158>,  <31.773819, 32.104382, 54.030750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540564, 32.040424, 53.712158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571133, 0.777930, 0.261978,
		0.577718, 0.607667, -0.544961,
		-0.583137, -0.159896, -0.796483,
		31.365623, 31.992455, 53.473213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754152, 32.723385, 53.680019>,  <31.773819, 32.104382, 54.030750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754152, 32.723385, 53.680019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.430243, 32.511921, 53.578205>,  <31.235897, 32.385044, 53.517117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.430243, 32.511921, 53.578205>,  <31.754152, 32.723385, 53.680019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430243, 32.511921, 53.578205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563531, 0.821556, 0.086484,
		0.163394, 0.213471, -0.963189,
		-0.809775, -0.528655, -0.254535,
		31.187309, 32.353325, 53.501846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438087, 33.150265, 53.205040>,  <31.754152, 32.723385, 53.680019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438087, 33.150265, 53.205040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.161947, 32.893772, 53.339046>,  <30.996264, 32.739876, 53.419449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.161947, 32.893772, 53.339046>,  <31.438087, 33.150265, 53.205040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161947, 32.893772, 53.339046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617194, 0.763595, 0.189720,
		-0.377471, -0.075797, -0.922914,
		-0.690352, -0.641231, 0.335017,
		30.954842, 32.701405, 53.439552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835466, 33.469597, 53.027122>,  <31.438087, 33.150265, 53.205040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835466, 33.469597, 53.027122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.674173, 33.197056, 53.271469>,  <30.577398, 33.033531, 53.418076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.674173, 33.197056, 53.271469>,  <30.835466, 33.469597, 53.027122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674173, 33.197056, 53.271469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679174, 0.670213, 0.299228,
		-0.613291, -0.294226, -0.733011,
		-0.403233, -0.681356, 0.610866,
		30.553204, 32.992649, 53.454727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103142, 33.611618, 53.020351>,  <30.835466, 33.469597, 53.027122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103142, 33.611618, 53.020351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.141615, 33.382431, 53.345917>,  <30.164700, 33.244919, 53.541256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.141615, 33.382431, 53.345917>,  <30.103142, 33.611618, 53.020351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141615, 33.382431, 53.345917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790243, 0.453222, 0.412439,
		-0.605199, -0.682860, -0.409191,
		0.096184, -0.572968, 0.813915,
		30.170471, 33.210541, 53.590092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356056, 33.391808, 53.224621>,  <30.103142, 33.611618, 53.020351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356056, 33.391808, 53.224621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631716, 33.420265, 53.513069>,  <29.797112, 33.437340, 53.686138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631716, 33.420265, 53.513069>,  <29.356056, 33.391808, 53.224621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631716, 33.420265, 53.513069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585666, 0.640700, 0.496486,
		-0.426699, -0.764488, 0.483205,
		0.689147, 0.071147, 0.721121,
		29.838459, 33.441608, 53.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966454, 33.421120, 53.756279>,  <29.356056, 33.391808, 53.224621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966454, 33.421120, 53.756279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.318075, 33.542900, 53.903015>,  <29.529049, 33.615967, 53.991058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.318075, 33.542900, 53.903015>,  <28.966454, 33.421120, 53.756279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318075, 33.542900, 53.903015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463846, 0.723873, 0.510740,
		-0.110051, -0.619126, 0.777542,
		0.879053, 0.304452, 0.366842,
		29.581791, 33.634235, 54.013069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789038, 33.581188, 54.505997>,  <28.966454, 33.421120, 53.756279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789038, 33.581188, 54.505997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.141485, 33.752953, 54.426762>,  <29.352953, 33.856010, 54.379219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.141485, 33.752953, 54.426762>,  <28.789038, 33.581188, 54.505997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141485, 33.752953, 54.426762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272110, 0.802971, 0.530276,
		0.386767, -0.413333, 0.824358,
		0.881117, 0.429410, -0.198091,
		29.405821, 33.881775, 54.367332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.058022, 33.780949, 55.153889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224936, 33.993587, 54.859058>,  <29.325085, 34.121170, 54.682159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224936, 33.993587, 54.859058>,  <29.058022, 33.780949, 55.153889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224936, 33.993587, 54.859058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372752, 0.839818, 0.394667,
		0.828813, 0.110059, 0.548594,
		0.417282, 0.531595, -0.737077,
		29.350122, 34.153065, 54.637936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363291, 34.420986, 55.432968>,  <29.058022, 33.780949, 55.153889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363291, 34.420986, 55.432968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346951, 34.520348, 55.045849>,  <29.337147, 34.579964, 54.813580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346951, 34.520348, 55.045849>,  <29.363291, 34.420986, 55.432968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346951, 34.520348, 55.045849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361739, 0.899219, 0.246069,
		0.931384, 0.360141, 0.053125,
		-0.040849, 0.248402, -0.967795,
		29.334696, 34.594868, 54.755508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774853, 34.987694, 55.310173>,  <29.363291, 34.420986, 55.432968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774853, 34.987694, 55.310173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508146, 34.991425, 55.012089>,  <29.348122, 34.993664, 54.833241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508146, 34.991425, 55.012089>,  <29.774853, 34.987694, 55.310173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508146, 34.991425, 55.012089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312993, 0.903962, 0.291357,
		0.676355, 0.427512, -0.599815,
		-0.666768, 0.009323, -0.745207,
		29.308115, 34.994221, 54.788528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813173, 35.704082, 55.041302>,  <29.774853, 34.987694, 55.310173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813173, 35.704082, 55.041302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476299, 35.535179, 54.907185>,  <29.274176, 35.433838, 54.826714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476299, 35.535179, 54.907185>,  <29.813173, 35.704082, 55.041302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476299, 35.535179, 54.907185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478912, 0.871519, 0.105349,
		0.247730, 0.249300, -0.936205,
		-0.842184, -0.422261, -0.335294,
		29.223644, 35.408501, 54.806595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693356, 36.178993, 54.605564>,  <29.813173, 35.704082, 55.041302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693356, 36.178993, 54.605564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342272, 35.995956, 54.662472>,  <29.131622, 35.886135, 54.696617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342272, 35.995956, 54.662472>,  <29.693356, 36.178993, 54.605564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342272, 35.995956, 54.662472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454891, 0.888976, 0.052886,
		-0.150677, -0.018300, -0.988414,
		-0.877708, -0.457589, 0.142272,
		29.078959, 35.858681, 54.705154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116325, 36.534149, 54.110302>,  <29.693356, 36.178993, 54.605564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116325, 36.534149, 54.110302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928646, 36.352833, 54.413456>,  <28.816038, 36.244045, 54.595348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928646, 36.352833, 54.413456>,  <29.116325, 36.534149, 54.110302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928646, 36.352833, 54.413456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613034, 0.784921, 0.089934,
		-0.635642, -0.422410, -0.646165,
		-0.469200, -0.453286, 0.757880,
		28.787886, 36.216846, 54.640820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427469, 36.603111, 53.954987>,  <29.116325, 36.534149, 54.110302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427469, 36.603111, 53.954987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458723, 36.527470, 54.346523>,  <28.477474, 36.482086, 54.581448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458723, 36.527470, 54.346523>,  <28.427469, 36.603111, 53.954987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458723, 36.527470, 54.346523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471350, 0.858167, 0.203415,
		-0.878479, -0.477271, -0.022085,
		0.078132, -0.189106, 0.978843,
		28.482162, 36.470737, 54.640175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701498, 36.606556, 54.199059>,  <28.427469, 36.603111, 53.954987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701498, 36.606556, 54.199059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911308, 36.663052, 54.534897>,  <28.037195, 36.696949, 54.736401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911308, 36.663052, 54.534897>,  <27.701498, 36.606556, 54.199059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911308, 36.663052, 54.534897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501751, 0.847978, 0.170817,
		-0.687836, -0.510867, 0.515651,
		0.524525, 0.141234, 0.839599,
		28.068666, 36.705421, 54.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340830, 36.773815, 54.702293>,  <27.701498, 36.606556, 54.199059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340830, 36.773815, 54.702293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679565, 36.921200, 54.855705>,  <27.882807, 37.009632, 54.947754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679565, 36.921200, 54.855705>,  <27.340830, 36.773815, 54.702293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679565, 36.921200, 54.855705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501931, 0.792141, 0.347243,
		-0.175866, -0.486566, 0.855760,
		0.846839, 0.368464, 0.383534,
		27.933617, 37.031738, 54.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210266, 36.943924, 55.418839>,  <27.340830, 36.773815, 54.702293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210266, 36.943924, 55.418839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516876, 37.177883, 55.312759>,  <27.700842, 37.318260, 55.249111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516876, 37.177883, 55.312759>,  <27.210266, 36.943924, 55.418839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516876, 37.177883, 55.312759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521141, 0.807822, 0.275382,
		0.375305, -0.072882, 0.924032,
		0.766524, 0.584903, -0.265198,
		27.746834, 37.353355, 55.233200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221689, 37.391903, 56.002644>,  <27.210266, 36.943924, 55.418839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221689, 37.391903, 56.002644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460054, 37.556824, 55.726994>,  <27.603073, 37.655777, 55.561604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460054, 37.556824, 55.726994>,  <27.221689, 37.391903, 56.002644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460054, 37.556824, 55.726994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292899, 0.910613, 0.291538,
		0.747730, 0.028114, 0.663408,
		0.595911, 0.412303, -0.689127,
		27.638828, 37.680515, 55.520256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488314, 37.883442, 56.334129>,  <27.221689, 37.391903, 56.002644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488314, 37.883442, 56.334129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595520, 37.991737, 55.964294>,  <27.659843, 38.056717, 55.742393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595520, 37.991737, 55.964294>,  <27.488314, 37.883442, 56.334129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595520, 37.991737, 55.964294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187080, 0.956059, 0.225726,
		0.945076, 0.112474, 0.306891,
		0.268017, 0.270741, -0.924590,
		27.675924, 38.072960, 55.686916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053864, 38.401722, 56.364525>,  <27.488314, 37.883442, 56.334129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053864, 38.401722, 56.364525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892418, 38.447647, 56.001446>,  <27.795551, 38.475201, 55.783600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892418, 38.447647, 56.001446>,  <28.053864, 38.401722, 56.364525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892418, 38.447647, 56.001446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222165, 0.950105, 0.218960,
		0.887547, 0.290034, -0.357969,
		-0.403613, 0.114809, -0.907698,
		27.771334, 38.482090, 55.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236143, 39.045753, 56.033730>,  <28.053864, 38.401722, 56.364525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236143, 39.045753, 56.033730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895123, 38.939911, 55.853443>,  <27.690510, 38.876404, 55.745274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895123, 38.939911, 55.853443>,  <28.236143, 39.045753, 56.033730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895123, 38.939911, 55.853443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394444, 0.891524, 0.222710,
		0.342890, 0.367652, -0.864441,
		-0.852549, -0.264609, -0.450713,
		27.639359, 38.860527, 55.718231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064613, 39.574421, 55.636105>,  <28.236143, 39.045753, 56.033730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064613, 39.574421, 55.636105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708031, 39.393177, 55.635880>,  <27.494081, 39.284431, 55.635746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708031, 39.393177, 55.635880>,  <28.064613, 39.574421, 55.636105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708031, 39.393177, 55.635880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434655, 0.854807, 0.283514,
		-0.127984, 0.252984, -0.958968,
		-0.891457, -0.453106, -0.000559,
		27.440594, 39.257244, 55.635712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672821, 39.929943, 55.233967>,  <28.064613, 39.574421, 55.636105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672821, 39.929943, 55.233967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402657, 39.720589, 55.441769>,  <27.240557, 39.594975, 55.566448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402657, 39.720589, 55.441769>,  <27.672821, 39.929943, 55.233967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402657, 39.720589, 55.441769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483359, 0.846241, 0.224146,
		-0.556940, -0.099716, -0.824545,
		-0.675413, -0.523387, 0.519504,
		27.200033, 39.563572, 55.597618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045311, 40.138329, 54.956947>,  <27.672821, 39.929943, 55.233967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045311, 40.138329, 54.956947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949509, 39.972607, 55.308170>,  <26.892027, 39.873173, 55.518906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949509, 39.972607, 55.308170>,  <27.045311, 40.138329, 54.956947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949509, 39.972607, 55.308170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566390, 0.794167, 0.220230,
		-0.788568, -0.444577, -0.424867,
		-0.239507, -0.414307, 0.878058,
		26.877657, 39.848316, 55.571587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350389, 40.024593, 54.975883>,  <27.045311, 40.138329, 54.956947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350389, 40.024593, 54.975883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462189, 40.057781, 55.358505>,  <26.529268, 40.077694, 55.588078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462189, 40.057781, 55.358505>,  <26.350389, 40.024593, 54.975883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462189, 40.057781, 55.358505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721777, 0.675153, 0.152335,
		-0.633182, -0.732996, 0.248589,
		0.279497, 0.082970, 0.956555,
		26.546038, 40.082672, 55.645473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655455, 39.945541, 55.405460>,  <26.350389, 40.024593, 54.975883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655455, 39.945541, 55.405460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925871, 40.093651, 55.660294>,  <26.088121, 40.182514, 55.813194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925871, 40.093651, 55.660294>,  <25.655455, 39.945541, 55.405460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925871, 40.093651, 55.660294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665270, 0.678451, 0.311641,
		-0.316835, -0.634512, 0.704990,
		0.676041, 0.370270, 0.637079,
		26.128683, 40.204731, 55.851418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206293, 39.922333, 55.948193>,  <25.655455, 39.945541, 55.405460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206293, 39.922333, 55.948193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513039, 40.162781, 56.038147>,  <25.697086, 40.307049, 56.092121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513039, 40.162781, 56.038147>,  <25.206293, 39.922333, 55.948193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513039, 40.162781, 56.038147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641691, 0.711358, 0.286709,
		0.012369, -0.364176, 0.931248,
		0.766863, 0.601120, 0.224890,
		25.743097, 40.343117, 56.105614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172573, 40.067780, 56.706444>,  <25.206293, 39.922333, 55.948193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172573, 40.067780, 56.706444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366943, 40.374256, 56.538242>,  <25.483566, 40.558144, 56.437321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366943, 40.374256, 56.538242>,  <25.172573, 40.067780, 56.706444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366943, 40.374256, 56.538242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738917, 0.617102, 0.270530,
		0.466773, 0.179261, 0.866019,
		0.485926, 0.766192, -0.420506,
		25.512722, 40.604115, 56.412090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201868, 40.633194, 57.229271>,  <25.172573, 40.067780, 56.706444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201868, 40.633194, 57.229271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208382, 40.750683, 56.846970>,  <25.212290, 40.821175, 56.617588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208382, 40.750683, 56.846970>,  <25.201868, 40.633194, 57.229271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208382, 40.750683, 56.846970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866079, 0.481804, 0.133309,
		0.499641, 0.825587, 0.262230,
		0.016286, 0.293719, -0.955753,
		25.213268, 40.838799, 56.560246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585756, 40.113529, 57.501328>,  <25.201868, 40.633194, 57.229271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585756, 40.113529, 57.501328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292517, 39.886200, 57.650764>,  <25.116573, 39.749802, 57.740429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292517, 39.886200, 57.650764>,  <25.585756, 40.113529, 57.501328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292517, 39.886200, 57.650764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415598, 0.060485, 0.907535,
		-0.538371, 0.820579, 0.191853,
		-0.733099, -0.568324, 0.373595,
		25.072586, 39.715702, 57.762844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552294, 40.510403, 58.023037>,  <25.585756, 40.113529, 57.501328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552294, 40.510403, 58.023037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395855, 40.143929, 58.058002>,  <25.301991, 39.924042, 58.078983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395855, 40.143929, 58.058002>,  <25.552294, 40.510403, 58.023037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395855, 40.143929, 58.058002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431761, -0.098763, 0.896564,
		-0.812787, 0.388390, 0.434201,
		-0.391099, -0.916187, 0.087418,
		25.278524, 39.869072, 58.084229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695129, 40.156250, 58.732891>,  <25.552294, 40.510403, 58.023037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695129, 40.156250, 58.732891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878414, 40.389999, 59.000786>,  <25.988386, 40.530251, 59.161522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878414, 40.389999, 59.000786>,  <25.695129, 40.156250, 58.732891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878414, 40.389999, 59.000786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885826, -0.238212, -0.398204,
		-0.073160, 0.775735, -0.626804,
		0.458213, 0.584372, 0.669739,
		26.015879, 40.565311, 59.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237123, 40.525204, 58.404778>,  <25.695129, 40.156250, 58.732891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237123, 40.525204, 58.404778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349792, 40.483379, 58.786297>,  <26.417395, 40.458282, 59.015209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349792, 40.483379, 58.786297>,  <26.237123, 40.525204, 58.404778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349792, 40.483379, 58.786297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895901, -0.327247, -0.300451,
		0.343544, 0.939135, 0.001504,
		0.281672, -0.104565, 0.953796,
		26.434294, 40.452011, 59.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846186, 40.829586, 58.438354>,  <26.237123, 40.525204, 58.404778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846186, 40.829586, 58.438354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876348, 40.598682, 58.763584>,  <26.894445, 40.460140, 58.958721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876348, 40.598682, 58.763584>,  <26.846186, 40.829586, 58.438354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876348, 40.598682, 58.763584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914105, -0.285768, -0.287661,
		0.398404, 0.764926, 0.506125,
		0.075405, -0.577257, 0.813074,
		26.898970, 40.425507, 59.007507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410408, 41.110413, 58.719707>,  <26.846186, 40.829586, 58.438354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410408, 41.110413, 58.719707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345278, 40.752987, 58.887051>,  <27.306200, 40.538532, 58.987457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345278, 40.752987, 58.887051>,  <27.410408, 41.110413, 58.719707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345278, 40.752987, 58.887051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927281, -0.283459, -0.244544,
		0.337104, 0.348119, 0.874742,
		-0.162823, -0.893568, 0.418359,
		27.296431, 40.484917, 59.012558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031425, 40.918526, 59.171906>,  <27.410408, 41.110413, 58.719707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031425, 40.918526, 59.171906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840170, 40.584133, 59.064190>,  <27.725416, 40.383495, 58.999561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840170, 40.584133, 59.064190>,  <28.031425, 40.918526, 59.171906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840170, 40.584133, 59.064190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870907, -0.411634, -0.268473,
		0.113593, -0.362889, 0.924883,
		-0.478139, -0.835984, -0.269285,
		27.696728, 40.333340, 58.983406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412975, 40.402401, 59.411938>,  <28.031425, 40.918526, 59.171906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412975, 40.402401, 59.411938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181389, 40.233307, 59.133057>,  <28.042437, 40.131851, 58.965729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181389, 40.233307, 59.133057>,  <28.412975, 40.402401, 59.411938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181389, 40.233307, 59.133057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810878, -0.387988, -0.438113,
		-0.085302, -0.819000, 0.567418,
		-0.578965, -0.422735, -0.697204,
		28.007700, 40.106487, 58.923897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612181, 39.674446, 59.524754>,  <28.412975, 40.402401, 59.411938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612181, 39.674446, 59.524754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444954, 39.680374, 59.161434>,  <28.344618, 39.683929, 58.943443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444954, 39.680374, 59.161434>,  <28.612181, 39.674446, 59.524754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444954, 39.680374, 59.161434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788832, -0.489947, -0.371074,
		-0.450514, -0.871626, 0.193146,
		-0.418069, 0.014814, -0.908294,
		28.319534, 39.684818, 58.888947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755852, 38.967342, 59.227905>,  <28.612181, 39.674446, 59.524754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755852, 38.967342, 59.227905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660109, 39.182896, 58.904842>,  <28.602663, 39.312229, 58.711002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660109, 39.182896, 58.904842>,  <28.755852, 38.967342, 59.227905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660109, 39.182896, 58.904842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617632, -0.557330, -0.554900,
		-0.749159, -0.631655, -0.199431,
		-0.239356, 0.538884, -0.807659,
		28.588303, 39.344563, 58.662544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628477, 38.557594, 58.633770>,  <28.755852, 38.967342, 59.227905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628477, 38.557594, 58.633770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699337, 38.907364, 58.453102>,  <28.741854, 39.117226, 58.344704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699337, 38.907364, 58.453102>,  <28.628477, 38.557594, 58.633770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699337, 38.907364, 58.453102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328371, -0.485141, -0.810439,
		-0.927788, -0.004745, -0.373078,
		0.177150, 0.874423, -0.451666,
		28.752481, 39.169689, 58.317604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390142, 38.389381, 57.970818>,  <28.628477, 38.557594, 58.633770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390142, 38.389381, 57.970818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638359, 38.703011, 57.965866>,  <28.787289, 38.891190, 57.962894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638359, 38.703011, 57.965866>,  <28.390142, 38.389381, 57.970818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638359, 38.703011, 57.965866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360520, -0.299271, -0.883438,
		-0.696386, 0.543749, -0.468384,
		0.620542, 0.784075, -0.012376,
		28.824522, 38.938232, 57.962154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367931, 38.604645, 57.252357>,  <28.390142, 38.389381, 57.970818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367931, 38.604645, 57.252357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696005, 38.794956, 57.379433>,  <28.892849, 38.909145, 57.455677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696005, 38.794956, 57.379433>,  <28.367931, 38.604645, 57.252357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696005, 38.794956, 57.379433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521381, -0.393053, -0.757411,
		-0.235493, 0.786856, -0.570439,
		0.820186, 0.475781, 0.317690,
		28.942060, 38.937691, 57.474739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624744, 39.106087, 56.720791>,  <28.367931, 38.604645, 57.252357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624744, 39.106087, 56.720791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925037, 38.987251, 56.956802>,  <29.105213, 38.915951, 57.098412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925037, 38.987251, 56.956802>,  <28.624744, 39.106087, 56.720791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925037, 38.987251, 56.956802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494024, -0.340474, -0.800011,
		0.438564, 0.892085, -0.108838,
		0.750734, -0.297088, 0.590031,
		29.150257, 38.898125, 57.133812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105101, 38.904888, 56.287411>,  <28.624744, 39.106087, 56.720791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105101, 38.904888, 56.287411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280899, 38.749310, 56.611279>,  <29.386377, 38.655964, 56.805599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280899, 38.749310, 56.611279>,  <29.105101, 38.904888, 56.287411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280899, 38.749310, 56.611279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336867, -0.764234, -0.549971,
		0.832685, 0.514461, -0.204855,
		0.439496, -0.388943, 0.809671,
		29.412748, 38.632626, 56.854179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735750, 38.843262, 56.100258>,  <29.105101, 38.904888, 56.287411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735750, 38.843262, 56.100258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694593, 38.598026, 56.413574>,  <29.669899, 38.450886, 56.601562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694593, 38.598026, 56.413574>,  <29.735750, 38.843262, 56.100258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694593, 38.598026, 56.413574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346428, -0.760251, -0.549550,
		0.932417, 0.214809, 0.290613,
		-0.102891, -0.613086, 0.783287,
		29.663727, 38.414101, 56.648560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372400, 38.572964, 56.218132>,  <29.735750, 38.843262, 56.100258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372400, 38.572964, 56.218132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146780, 38.297928, 56.401028>,  <30.011408, 38.132908, 56.510765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146780, 38.297928, 56.401028>,  <30.372400, 38.572964, 56.218132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146780, 38.297928, 56.401028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536984, -0.726093, -0.429461,
		0.627294, 0.003296, 0.778775,
		-0.564048, -0.687588, 0.457244,
		29.977566, 38.091652, 56.538200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802910, 38.071430, 56.531559>,  <30.372400, 38.572964, 56.218132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802910, 38.071430, 56.531559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452526, 37.878510, 56.534988>,  <30.242296, 37.762756, 56.537045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452526, 37.878510, 56.534988>,  <30.802910, 38.071430, 56.531559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452526, 37.878510, 56.534988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462026, -0.843975, -0.272467,
		0.138647, -0.234710, 0.962127,
		-0.875962, -0.482305, 0.008572,
		30.189737, 37.733818, 56.537560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813488, 37.511307, 56.929192>,  <30.802910, 38.071430, 56.531559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813488, 37.511307, 56.929192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546507, 37.409187, 56.649384>,  <30.386318, 37.347916, 56.481499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546507, 37.409187, 56.649384>,  <30.813488, 37.511307, 56.929192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546507, 37.409187, 56.649384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534431, -0.818386, -0.211255,
		-0.518545, -0.514848, 0.682673,
		-0.667454, -0.255297, -0.699520,
		30.346272, 37.332600, 56.439526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625706, 36.836006, 57.021133>,  <30.813488, 37.511307, 56.929192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625706, 36.836006, 57.021133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561808, 36.886333, 56.629490>,  <30.523468, 36.916531, 56.394505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561808, 36.886333, 56.629490>,  <30.625706, 36.836006, 57.021133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561808, 36.886333, 56.629490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485721, -0.853454, -0.188923,
		-0.859393, -0.505752, 0.075222,
		-0.159747, 0.125822, -0.979106,
		30.513884, 36.924080, 56.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599110, 36.133797, 56.888390>,  <30.625706, 36.836006, 57.021133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599110, 36.133797, 56.888390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664038, 36.336540, 56.549744>,  <30.702993, 36.458187, 56.346558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664038, 36.336540, 56.549744>,  <30.599110, 36.133797, 56.888390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664038, 36.336540, 56.549744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406327, -0.816202, -0.410747,
		-0.899195, -0.277329, -0.338434,
		0.162318, 0.506856, -0.846610,
		30.712732, 36.488598, 56.295761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411953, 35.766418, 56.299763>,  <30.599110, 36.133797, 56.888390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411953, 35.766418, 56.299763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665863, 36.016415, 56.118019>,  <30.818209, 36.166412, 56.008972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665863, 36.016415, 56.118019>,  <30.411953, 35.766418, 56.299763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665863, 36.016415, 56.118019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414638, -0.771703, -0.482234,
		-0.652025, 0.117714, -0.749004,
		0.634774, 0.624994, -0.454361,
		30.856295, 36.203915, 55.981712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.259274, 36.012577, 50.932152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.408287, 35.756477, 51.200871>,  <47.497696, 35.602818, 51.362103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.408287, 35.756477, 51.200871>,  <47.259274, 36.012577, 50.932152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.408287, 35.756477, 51.200871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839758, -0.540689, -0.049626,
		0.395004, -0.545657, -0.739074,
		0.372531, -0.640246, 0.671794,
		47.520046, 35.564404, 51.402409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.140312, 35.370007, 50.666481>,  <47.259274, 36.012577, 50.932152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.140312, 35.370007, 50.666481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.172714, 35.337761, 51.063862>,  <47.192154, 35.318413, 51.302288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.172714, 35.337761, 51.063862>,  <47.140312, 35.370007, 50.666481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172714, 35.337761, 51.063862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892955, -0.448671, 0.036406,
		0.442797, -0.890054, -0.108325,
		0.081005, -0.080609, 0.993449,
		47.197018, 35.313576, 51.361897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133926, 34.675529, 50.906105>,  <47.140312, 35.370007, 50.666481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133926, 34.675529, 50.906105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.992985, 34.897385, 51.207630>,  <46.908421, 35.030495, 51.388546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.992985, 34.897385, 51.207630>,  <47.133926, 34.675529, 50.906105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992985, 34.897385, 51.207630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855250, -0.517878, -0.018725,
		0.379997, -0.651295, 0.656824,
		-0.352350, 0.554633, 0.753812,
		46.887280, 35.063774, 51.433773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788319, 34.176609, 51.229286>,  <47.133926, 34.675529, 50.906105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788319, 34.176609, 51.229286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.657242, 34.526928, 51.371048>,  <46.578594, 34.737118, 51.456104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.657242, 34.526928, 51.371048>,  <46.788319, 34.176609, 51.229286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657242, 34.526928, 51.371048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899155, -0.404259, 0.167615,
		0.290066, -0.263735, 0.919948,
		-0.327692, 0.875796, 0.354401,
		46.558933, 34.789665, 51.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357098, 34.016651, 51.828518>,  <46.788319, 34.176609, 51.229286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357098, 34.016651, 51.828518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.281006, 34.399860, 51.742714>,  <46.235352, 34.629784, 51.691231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.281006, 34.399860, 51.742714>,  <46.357098, 34.016651, 51.828518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281006, 34.399860, 51.742714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980565, -0.174725, 0.089242,
		0.048016, 0.227313, 0.972637,
		-0.190229, 0.958019, -0.214506,
		46.223938, 34.687267, 51.678364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875576, 34.287537, 52.322704>,  <46.357098, 34.016651, 51.828518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875576, 34.287537, 52.322704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.817665, 34.544540, 52.021713>,  <45.782917, 34.698742, 51.841118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.817665, 34.544540, 52.021713>,  <45.875576, 34.287537, 52.322704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817665, 34.544540, 52.021713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979587, -0.200258, 0.017484,
		-0.139455, 0.739646, 0.658389,
		-0.144780, 0.642511, -0.752475,
		45.774231, 34.737293, 51.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350567, 34.756584, 52.513741>,  <45.875576, 34.287537, 52.322704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350567, 34.756584, 52.513741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.350628, 34.788860, 52.115044>,  <45.350662, 34.808228, 51.875828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.350628, 34.788860, 52.115044>,  <45.350567, 34.756584, 52.513741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350628, 34.788860, 52.115044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997851, -0.065296, -0.005436,
		-0.065522, 0.994598, 0.080511,
		0.000150, 0.080695, -0.996739,
		45.350674, 34.813068, 51.816021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606277, 35.040585, 52.342300>,  <45.350567, 34.756584, 52.513741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606277, 35.040585, 52.342300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.748821, 34.901608, 51.995361>,  <44.834347, 34.818222, 51.787197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.748821, 34.901608, 51.995361>,  <44.606277, 35.040585, 52.342300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748821, 34.901608, 51.995361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934348, -0.133331, -0.330478,
		-0.000822, 0.928173, -0.372146,
		0.356360, -0.347443, -0.867347,
		44.855728, 34.797375, 51.735157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348328, 35.472031, 51.875275>,  <44.606277, 35.040585, 52.342300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348328, 35.472031, 51.875275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.429756, 35.133080, 51.679108>,  <44.478611, 34.929707, 51.561409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.429756, 35.133080, 51.679108>,  <44.348328, 35.472031, 51.875275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429756, 35.133080, 51.679108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942941, -0.034887, -0.331127,
		0.263481, 0.529838, -0.806132,
		0.203567, -0.847380, -0.490414,
		44.490826, 34.878864, 51.531982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940155, 35.501080, 51.311531>,  <44.348328, 35.472031, 51.875275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940155, 35.501080, 51.311531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.031384, 35.111649, 51.306877>,  <44.086121, 34.877991, 51.304085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.031384, 35.111649, 51.306877>,  <43.940155, 35.501080, 51.311531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031384, 35.111649, 51.306877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940196, -0.217117, -0.262472,
		0.253010, 0.070802, -0.964869,
		0.228073, -0.973574, -0.011635,
		44.099804, 34.819576, 51.303387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719143, 35.234455, 50.716774>,  <43.940155, 35.501080, 51.311531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719143, 35.234455, 50.716774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.745346, 34.922432, 50.965679>,  <43.761066, 34.735218, 51.115025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.745346, 34.922432, 50.965679>,  <43.719143, 35.234455, 50.716774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745346, 34.922432, 50.965679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927127, -0.278173, -0.251107,
		0.368976, -0.560472, -0.741437,
		0.065509, -0.780059, 0.622268,
		43.764999, 34.688416, 51.152359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316677, 34.840813, 50.412785>,  <43.719143, 35.234455, 50.716774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316677, 34.840813, 50.412785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363747, 34.656731, 50.764778>,  <43.391987, 34.546284, 50.975975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363747, 34.656731, 50.764778>,  <43.316677, 34.840813, 50.412785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363747, 34.656731, 50.764778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950575, -0.308599, -0.034273,
		0.287334, -0.832455, -0.473770,
		0.117674, -0.460201, 0.879981,
		43.399048, 34.518669, 51.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142700, 34.217190, 50.229900>,  <43.316677, 34.840813, 50.412785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142700, 34.217190, 50.229900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.077274, 34.258080, 50.622391>,  <43.038017, 34.282616, 50.857883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.077274, 34.258080, 50.622391>,  <43.142700, 34.217190, 50.229900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077274, 34.258080, 50.622391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901618, -0.419185, -0.106622,
		0.400414, -0.902127, 0.160734,
		-0.163564, 0.102228, 0.981222,
		43.028206, 34.288746, 50.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923542, 33.587067, 50.363346>,  <43.142700, 34.217190, 50.229900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923542, 33.587067, 50.363346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811188, 33.834320, 50.657017>,  <42.743774, 33.982670, 50.833221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811188, 33.834320, 50.657017>,  <42.923542, 33.587067, 50.363346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811188, 33.834320, 50.657017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936757, -0.342986, -0.069619,
		0.208779, -0.707302, 0.675378,
		-0.280887, 0.618130, 0.734179,
		42.726921, 34.019760, 50.877270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537235, 33.128922, 50.906281>,  <42.923542, 33.587067, 50.363346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537235, 33.128922, 50.906281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.433449, 33.514660, 50.927147>,  <42.371178, 33.746101, 50.939667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.433449, 33.514660, 50.927147>,  <42.537235, 33.128922, 50.906281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433449, 33.514660, 50.927147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963401, -0.254689, -0.083624,
		-0.067357, -0.071951, 0.995131,
		-0.259466, 0.964342, 0.052162,
		42.355610, 33.803963, 50.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824463, 32.991234, 51.079544>,  <42.537235, 33.128922, 50.906281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824463, 32.991234, 51.079544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849205, 33.386875, 51.026104>,  <41.864052, 33.624260, 50.994038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849205, 33.386875, 51.026104>,  <41.824463, 32.991234, 51.079544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849205, 33.386875, 51.026104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997840, 0.058322, -0.030234,
		-0.022112, 0.135184, 0.990574,
		0.061859, 0.989103, -0.133603,
		41.867764, 33.683605, 50.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446217, 33.290070, 51.628391>,  <41.824463, 32.991234, 51.079544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446217, 33.290070, 51.628391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455173, 33.539875, 51.316113>,  <41.460548, 33.689758, 51.128746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455173, 33.539875, 51.316113>,  <41.446217, 33.290070, 51.628391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455173, 33.539875, 51.316113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993979, 0.097690, 0.049632,
		0.107262, 0.774884, 0.622936,
		0.022396, 0.624509, -0.780697,
		41.461891, 33.727226, 51.081905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973572, 33.847481, 51.824566>,  <41.446217, 33.290070, 51.628391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973572, 33.847481, 51.824566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996212, 33.833267, 51.425461>,  <41.009796, 33.824738, 51.185997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996212, 33.833267, 51.425461>,  <40.973572, 33.847481, 51.824566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996212, 33.833267, 51.425461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998208, 0.017398, -0.057247,
		0.019394, 0.999217, -0.034490,
		0.056602, -0.035538, -0.997764,
		41.013191, 33.822605, 51.126133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633667, 34.405483, 51.521355>,  <40.973572, 33.847481, 51.824566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633667, 34.405483, 51.521355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.646118, 34.147976, 51.215519>,  <40.653591, 33.993469, 51.032017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.646118, 34.147976, 51.215519>,  <40.633667, 34.405483, 51.521355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646118, 34.147976, 51.215519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954809, 0.207065, -0.213223,
		0.295586, 0.736670, -0.608232,
		0.031131, -0.643771, -0.764585,
		40.655457, 33.954845, 50.986145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195187, 34.809101, 50.925232>,  <40.633667, 34.405483, 51.521355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195187, 34.809101, 50.925232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223549, 34.440861, 50.771629>,  <40.240566, 34.219917, 50.679470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223549, 34.440861, 50.771629>,  <40.195187, 34.809101, 50.925232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223549, 34.440861, 50.771629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900087, 0.106870, -0.422401,
		0.429903, 0.375587, -0.821047,
		0.070903, -0.920605, -0.384005,
		40.244820, 34.164680, 50.656429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993931, 34.822548, 50.169308>,  <40.195187, 34.809101, 50.925232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993931, 34.822548, 50.169308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905693, 34.458706, 50.310135>,  <39.852749, 34.240398, 50.394630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905693, 34.458706, 50.310135>,  <39.993931, 34.822548, 50.169308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905693, 34.458706, 50.310135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915384, 0.068445, -0.396721,
		0.336764, -0.409791, -0.847739,
		-0.220596, -0.909608, 0.352066,
		39.839516, 34.185825, 50.415756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584557, 34.677330, 49.638039>,  <39.993931, 34.822548, 50.169308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584557, 34.677330, 49.638039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517223, 34.413521, 49.931076>,  <39.476826, 34.255234, 50.106899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517223, 34.413521, 49.931076>,  <39.584557, 34.677330, 49.638039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517223, 34.413521, 49.931076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961983, -0.052240, -0.268065,
		0.215066, -0.749868, -0.625655,
		-0.168329, -0.659522, 0.732596,
		39.466724, 34.215664, 50.150856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343353, 34.012367, 49.306679>,  <39.584557, 34.677330, 49.638039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343353, 34.012367, 49.306679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 34.116756, 49.666138>,  <39.117680, 34.179390, 49.881813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 34.116756, 49.666138>,  <39.343353, 34.012367, 49.306679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202309, 34.116756, 49.666138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935664, -0.083933, -0.342766,
		-0.014026, -0.961691, 0.273775,
		-0.352614, 0.260969, 0.898643,
		39.096523, 34.195045, 49.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703533, 33.591293, 49.442596>,  <39.343353, 34.012367, 49.306679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703533, 33.591293, 49.442596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692734, 33.900951, 49.695568>,  <38.686253, 34.086746, 49.847351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692734, 33.900951, 49.695568>,  <38.703533, 33.591293, 49.442596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692734, 33.900951, 49.695568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988908, -0.113122, 0.096248,
		0.146052, -0.622819, 0.768613,
		-0.027002, 0.774145, 0.632433,
		38.684631, 34.133194, 49.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578480, 32.916843, 49.117546>,  <38.703533, 33.591293, 49.442596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578480, 32.916843, 49.117546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822086, 32.600178, 49.098049>,  <38.968250, 32.410179, 49.086353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822086, 32.600178, 49.098049>,  <38.578480, 32.916843, 49.117546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822086, 32.600178, 49.098049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717399, -0.523595, -0.459551,
		0.338288, 0.314839, -0.886813,
		0.609015, -0.791659, -0.048739,
		39.004791, 32.362679, 49.083427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584209, 32.624840, 48.355839>,  <38.578480, 32.916843, 49.117546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584209, 32.624840, 48.355839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677929, 32.309643, 48.583584>,  <38.734161, 32.120525, 48.720230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677929, 32.309643, 48.583584>,  <38.584209, 32.624840, 48.355839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677929, 32.309643, 48.583584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759198, -0.514122, -0.399120,
		0.607223, -0.338741, -0.718704,
		0.234303, -0.787993, 0.569358,
		38.748219, 32.073246, 48.754391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444862, 32.023109, 47.953953>,  <38.584209, 32.624840, 48.355839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444862, 32.023109, 47.953953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433525, 31.909002, 48.337166>,  <38.426723, 31.840538, 48.567093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433525, 31.909002, 48.337166>,  <38.444862, 32.023109, 47.953953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433525, 31.909002, 48.337166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876376, -0.453891, -0.161082,
		0.480792, -0.844161, -0.237133,
		-0.028347, -0.285265, 0.958029,
		38.425022, 31.823423, 48.624577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116825, 31.436239, 47.780415>,  <38.444862, 32.023109, 47.953953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116825, 31.436239, 47.780415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089664, 31.462070, 48.178654>,  <38.073368, 31.477570, 48.417599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089664, 31.462070, 48.178654>,  <38.116825, 31.436239, 47.780415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089664, 31.462070, 48.178654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766486, -0.642174, -0.010621,
		0.638662, -0.763834, 0.093104,
		-0.067902, 0.064579, 0.995600,
		38.069294, 31.481443, 48.477333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146225, 30.719610, 48.074902>,  <38.116825, 31.436239, 47.780415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146225, 30.719610, 48.074902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966137, 30.928797, 48.364403>,  <37.858086, 31.054308, 48.538101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966137, 30.928797, 48.364403>,  <38.146225, 30.719610, 48.074902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966137, 30.928797, 48.364403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705726, -0.704979, 0.070397,
		0.547044, -0.479075, 0.686462,
		-0.450215, 0.522965, 0.723750,
		37.831074, 31.085686, 48.581528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111607, 30.262104, 48.635326>,  <38.146225, 30.719610, 48.074902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111607, 30.262104, 48.635326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830887, 30.538370, 48.705128>,  <37.662453, 30.704130, 48.747009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830887, 30.538370, 48.705128>,  <38.111607, 30.262104, 48.635326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830887, 30.538370, 48.705128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710517, -0.696311, -0.101566,
		0.051362, -0.195268, 0.979404,
		-0.701803, 0.690667, 0.174506,
		37.620346, 30.745571, 48.757481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716640, 29.959774, 49.187458>,  <38.111607, 30.262104, 48.635326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716640, 29.959774, 49.187458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500919, 30.233551, 48.991219>,  <37.371487, 30.397818, 48.873474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500919, 30.233551, 48.991219>,  <37.716640, 29.959774, 49.187458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500919, 30.233551, 48.991219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732410, -0.668749, -0.127864,
		-0.415603, 0.290361, 0.861954,
		-0.539305, 0.684445, -0.490598,
		37.339127, 30.438885, 48.844040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994259, 29.816095, 49.396179>,  <37.716640, 29.959774, 49.187458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994259, 29.816095, 49.396179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959023, 30.054251, 49.076740>,  <36.937881, 30.197144, 48.885078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959023, 30.054251, 49.076740>,  <36.994259, 29.816095, 49.396179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959023, 30.054251, 49.076740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940392, -0.314088, -0.130430,
		-0.328485, 0.739503, 0.587565,
		-0.088094, 0.595386, -0.798596,
		36.932594, 30.232866, 48.837162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311649, 30.094944, 49.400047>,  <36.994259, 29.816095, 49.396179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311649, 30.094944, 49.400047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389061, 30.144548, 49.010757>,  <36.435509, 30.174311, 48.777184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389061, 30.144548, 49.010757>,  <36.311649, 30.094944, 49.400047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389061, 30.144548, 49.010757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926947, -0.301880, -0.222797,
		-0.321426, 0.945246, 0.056529,
		0.193533, 0.124012, -0.973225,
		36.447121, 30.181751, 48.718792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725109, 30.431572, 49.126236>,  <36.311649, 30.094944, 49.400047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725109, 30.431572, 49.126236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906128, 30.295649, 48.796452>,  <36.014740, 30.214094, 48.598579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906128, 30.295649, 48.796452>,  <35.725109, 30.431572, 49.126236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906128, 30.295649, 48.796452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890137, -0.227567, -0.394802,
		-0.053463, 0.912548, -0.405459,
		0.452545, -0.339807, -0.824460,
		36.041893, 30.193707, 48.549114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455891, 30.801641, 48.465080>,  <35.725109, 30.431572, 49.126236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455891, 30.801641, 48.465080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621845, 30.453074, 48.360394>,  <35.721420, 30.243933, 48.297581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621845, 30.453074, 48.360394>,  <35.455891, 30.801641, 48.465080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621845, 30.453074, 48.360394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877831, -0.307702, -0.367060,
		0.239333, 0.382031, -0.892621,
		0.414889, -0.871420, -0.261715,
		35.746311, 30.191648, 48.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.091951, 31.674601, 53.066730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418020, 31.869106, 53.192612>,  <30.613661, 31.985809, 53.268143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418020, 31.869106, 53.192612>,  <30.091951, 31.674601, 53.066730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418020, 31.869106, 53.192612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563744, -0.541316, -0.623835,
		-0.132992, 0.685947, -0.715395,
		0.815173, 0.486264, 0.314707,
		30.662573, 32.014984, 53.287025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508081, 31.877970, 52.512173>,  <30.091951, 31.674601, 53.066730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508081, 31.877970, 52.512173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763132, 31.893190, 52.819935>,  <30.916162, 31.902323, 53.004593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763132, 31.893190, 52.819935>,  <30.508081, 31.877970, 52.512173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763132, 31.893190, 52.819935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660507, -0.540998, -0.520626,
		0.396436, 0.840163, -0.370088,
		0.637628, 0.038050, 0.769404,
		30.954420, 31.904606, 53.050755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132309, 32.008717, 52.127590>,  <30.508081, 31.877970, 52.512173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132309, 32.008717, 52.127590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271749, 31.915413, 52.490704>,  <31.355413, 31.859430, 52.708572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271749, 31.915413, 52.490704>,  <31.132309, 32.008717, 52.127590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271749, 31.915413, 52.490704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661907, -0.624462, -0.414639,
		0.663593, 0.745411, -0.063293,
		0.348601, -0.233258, 0.907782,
		31.376329, 31.845436, 52.763039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874598, 32.151833, 52.166496>,  <31.132309, 32.008717, 52.127590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874598, 32.151833, 52.166496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791660, 31.858232, 52.425186>,  <31.741898, 31.682072, 52.580399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791660, 31.858232, 52.425186>,  <31.874598, 32.151833, 52.166496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791660, 31.858232, 52.425186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822602, -0.488615, -0.290830,
		0.529468, 0.471693, 0.705102,
		-0.207341, -0.734004, 0.646721,
		31.729458, 31.638031, 52.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575809, 31.956581, 52.413425>,  <31.874598, 32.151833, 52.166496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575809, 31.956581, 52.413425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352570, 31.638592, 52.508533>,  <32.218624, 31.447798, 52.565598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352570, 31.638592, 52.508533>,  <32.575809, 31.956581, 52.413425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352570, 31.638592, 52.508533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741381, -0.606434, -0.287390,
		0.372659, 0.015884, 0.927833,
		-0.558104, -0.794975, 0.237769,
		32.185139, 31.400099, 52.579865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010109, 31.423222, 52.722942>,  <32.575809, 31.956581, 52.413425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010109, 31.423222, 52.722942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687511, 31.208933, 52.622890>,  <32.493954, 31.080359, 52.562859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687511, 31.208933, 52.622890>,  <33.010109, 31.423222, 52.722942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687511, 31.208933, 52.622890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591186, -0.736486, -0.328768,
		-0.008091, -0.413025, 0.910684,
		-0.806495, -0.535723, -0.250133,
		32.445564, 31.048216, 52.547852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139587, 30.754906, 52.970428>,  <33.010109, 31.423222, 52.722942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139587, 30.754906, 52.970428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867996, 30.689543, 52.684132>,  <32.705040, 30.650326, 52.512352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867996, 30.689543, 52.684132>,  <33.139587, 30.754906, 52.970428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867996, 30.689543, 52.684132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613983, -0.660889, -0.431567,
		-0.402505, -0.732478, 0.549059,
		-0.678980, -0.163405, -0.715740,
		32.664303, 30.640522, 52.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292385, 30.049677, 52.836933>,  <33.139587, 30.754906, 52.970428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292385, 30.049677, 52.836933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055386, 30.176111, 52.540546>,  <32.913185, 30.251972, 52.362717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055386, 30.176111, 52.540546>,  <33.292385, 30.049677, 52.836933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055386, 30.176111, 52.540546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413477, -0.670070, -0.616476,
		-0.691362, -0.671634, 0.266320,
		-0.592499, 0.316092, -0.740966,
		32.877636, 30.270937, 52.318256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937687, 29.452736, 52.547100>,  <33.292385, 30.049677, 52.836933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937687, 29.452736, 52.547100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937061, 29.737015, 52.265701>,  <32.936687, 29.907583, 52.096863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937061, 29.737015, 52.265701>,  <32.937687, 29.452736, 52.547100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937061, 29.737015, 52.265701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356095, -0.656985, -0.664505,
		-0.934448, -0.251549, -0.252051,
		-0.001562, 0.710699, -0.703494,
		32.936592, 29.950224, 52.054653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590637, 29.157593, 52.026283>,  <32.937687, 29.452736, 52.547100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590637, 29.157593, 52.026283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796509, 29.469442, 51.883575>,  <32.920033, 29.656553, 51.797951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796509, 29.469442, 51.883575>,  <32.590637, 29.157593, 52.026283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796509, 29.469442, 51.883575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439236, -0.597123, -0.671205,
		-0.736325, 0.188751, -0.649768,
		0.514682, 0.779626, -0.356771,
		32.950912, 29.703331, 51.776543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479168, 29.253880, 51.278080>,  <32.590637, 29.157593, 52.026283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479168, 29.253880, 51.278080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834415, 29.412457, 51.371094>,  <33.047565, 29.507603, 51.426903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834415, 29.412457, 51.371094>,  <32.479168, 29.253880, 51.278080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834415, 29.412457, 51.371094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426617, -0.522860, -0.737981,
		-0.170987, 0.754619, -0.633493,
		0.888122, 0.396444, 0.232531,
		33.100853, 29.531389, 51.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795788, 29.542768, 50.673553>,  <32.479168, 29.253880, 51.278080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795788, 29.542768, 50.673553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087898, 29.446089, 50.929142>,  <33.263165, 29.388081, 51.082497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087898, 29.446089, 50.929142>,  <32.795788, 29.542768, 50.673553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087898, 29.446089, 50.929142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511292, -0.426955, -0.745849,
		0.453083, 0.871373, -0.188214,
		0.730272, -0.241699, 0.638972,
		33.306980, 29.373579, 51.120834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363319, 29.969299, 50.050159>,  <32.795788, 29.542768, 50.673553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363319, 29.969299, 50.050159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715084, 29.893017, 49.875679>,  <32.926144, 29.847246, 49.770992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715084, 29.893017, 49.875679>,  <32.363319, 29.969299, 50.050159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715084, 29.893017, 49.875679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274214, -0.546079, 0.791583,
		-0.389160, -0.815738, -0.427933,
		0.879410, -0.190707, -0.436199,
		32.978909, 29.835804, 49.744820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435249, 30.653105, 49.535389>,  <32.363319, 29.969299, 50.050159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435249, 30.653105, 49.535389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610744, 30.604267, 49.179276>,  <32.716042, 30.574965, 48.965607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610744, 30.604267, 49.179276>,  <32.435249, 30.653105, 49.535389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610744, 30.604267, 49.179276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397440, 0.862195, -0.314104,
		0.805948, 0.491643, 0.329750,
		0.438735, -0.122096, -0.890283,
		32.742367, 30.567638, 48.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820126, 31.323315, 49.337036>,  <32.435249, 30.653105, 49.535389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820126, 31.323315, 49.337036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702095, 31.134394, 49.004803>,  <32.631279, 31.021042, 48.805462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702095, 31.134394, 49.004803>,  <32.820126, 31.323315, 49.337036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702095, 31.134394, 49.004803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646603, 0.738698, -0.190340,
		0.703446, 0.480891, -0.523362,
		-0.295074, -0.472301, -0.830580,
		32.613571, 30.992702, 48.755630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938519, 31.743217, 48.801289>,  <32.820126, 31.323315, 49.337036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938519, 31.743217, 48.801289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.658165, 31.500156, 48.651878>,  <32.489952, 31.354319, 48.562233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.658165, 31.500156, 48.651878>,  <32.938519, 31.743217, 48.801289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658165, 31.500156, 48.651878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477913, 0.788812, -0.386491,
		0.529491, -0.092374, -0.843271,
		-0.700883, -0.607654, -0.373522,
		32.447899, 31.317860, 48.539822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786148, 31.995272, 48.245472>,  <32.938519, 31.743217, 48.801289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786148, 31.995272, 48.245472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458027, 31.776960, 48.313850>,  <32.261154, 31.645973, 48.354877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458027, 31.776960, 48.313850>,  <32.786148, 31.995272, 48.245472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458027, 31.776960, 48.313850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570177, 0.757075, -0.318959,
		0.044663, -0.359114, -0.932224,
		-0.820307, -0.545779, 0.170945,
		32.211933, 31.613226, 48.365135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447502, 32.179699, 47.707397>,  <32.786148, 31.995272, 48.245472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447502, 32.179699, 47.707397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213562, 32.032467, 47.996525>,  <32.073196, 31.944128, 48.170002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213562, 32.032467, 47.996525>,  <32.447502, 32.179699, 47.707397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213562, 32.032467, 47.996525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592328, 0.802601, -0.070568,
		-0.554159, -0.469417, -0.687427,
		-0.584855, -0.368076, 0.722817,
		32.038105, 31.922045, 48.213371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683868, 32.068520, 47.498020>,  <32.447502, 32.179699, 47.707397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683868, 32.068520, 47.498020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654503, 32.117592, 47.893909>,  <31.636883, 32.147038, 48.131443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654503, 32.117592, 47.893909>,  <31.683868, 32.068520, 47.498020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654503, 32.117592, 47.893909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731143, 0.668311, -0.137076,
		-0.678263, -0.733695, 0.040634,
		-0.073416, 0.122683, 0.989727,
		31.632479, 32.154396, 48.190826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049786, 32.436954, 47.539516>,  <31.683868, 32.068520, 47.498020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049786, 32.436954, 47.539516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.173481, 32.417599, 47.919418>,  <31.247698, 32.405983, 48.147358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.173481, 32.417599, 47.919418>,  <31.049786, 32.436954, 47.539516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173481, 32.417599, 47.919418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624405, 0.742941, 0.241160,
		-0.717281, -0.667605, 0.199527,
		0.309236, -0.048394, 0.949753,
		31.266253, 32.403080, 48.204346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413000, 32.351845, 47.877678>,  <31.049786, 32.436954, 47.539516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413000, 32.351845, 47.877678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678293, 32.518471, 48.126385>,  <30.837469, 32.618446, 48.275608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678293, 32.518471, 48.126385>,  <30.413000, 32.351845, 47.877678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678293, 32.518471, 48.126385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514028, 0.857376, -0.026105,
		-0.543965, -0.302292, 0.782766,
		0.663233, 0.416564, 0.621769,
		30.877264, 32.643440, 48.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110273, 32.554741, 48.522503>,  <30.413000, 32.351845, 47.877678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110273, 32.554741, 48.522503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436335, 32.778900, 48.463886>,  <30.631971, 32.913395, 48.428715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436335, 32.778900, 48.463886>,  <30.110273, 32.554741, 48.522503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436335, 32.778900, 48.463886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482361, 0.796802, 0.363915,
		0.320705, -0.225960, 0.919832,
		0.815154, 0.560400, -0.146544,
		30.680882, 32.947021, 48.419922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025446, 33.062035, 49.062153>,  <30.110273, 32.554741, 48.522503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025446, 33.062035, 49.062153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302864, 33.212780, 48.816563>,  <30.469315, 33.303226, 48.669209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302864, 33.212780, 48.816563>,  <30.025446, 33.062035, 49.062153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302864, 33.212780, 48.816563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354048, 0.920538, 0.165107,
		0.627411, 0.102868, 0.771864,
		0.693545, 0.376866, -0.613976,
		30.510927, 33.325840, 48.632370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253796, 33.608582, 49.405380>,  <30.025446, 33.062035, 49.062153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253796, 33.608582, 49.405380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342995, 33.657887, 49.018581>,  <30.396515, 33.687469, 48.786503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342995, 33.657887, 49.018581>,  <30.253796, 33.608582, 49.405380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342995, 33.657887, 49.018581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470951, 0.882151, 0.003837,
		0.853509, 0.454552, 0.254766,
		0.222998, 0.123258, -0.966995,
		30.409895, 33.694862, 48.728481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690084, 34.272560, 49.393002>,  <30.253796, 33.608582, 49.405380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690084, 34.272560, 49.393002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503429, 34.185844, 49.050014>,  <30.391436, 34.133816, 48.844223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503429, 34.185844, 49.050014>,  <30.690084, 34.272560, 49.393002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503429, 34.185844, 49.050014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323029, 0.944293, -0.062950,
		0.823348, 0.247612, -0.510673,
		-0.466638, -0.216792, -0.857467,
		30.363438, 34.120808, 48.792774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812147, 34.846264, 49.029373>,  <30.690084, 34.272560, 49.393002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812147, 34.846264, 49.029373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530479, 34.664295, 48.811310>,  <30.361479, 34.555115, 48.680473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530479, 34.664295, 48.811310>,  <30.812147, 34.846264, 49.029373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530479, 34.664295, 48.811310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619086, 0.769331, 0.157678,
		0.347675, 0.448530, -0.823373,
		-0.704169, -0.454919, -0.545156,
		30.319229, 34.527821, 48.647762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598909, 35.327972, 48.429035>,  <30.812147, 34.846264, 49.029373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598909, 35.327972, 48.429035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.315216, 35.067905, 48.538048>,  <30.145000, 34.911865, 48.603455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.315216, 35.067905, 48.538048>,  <30.598909, 35.327972, 48.429035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315216, 35.067905, 48.538048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648098, 0.753444, 0.110865,
		-0.277415, -0.097996, -0.955739,
		-0.709232, -0.650168, 0.272527,
		30.102446, 34.872856, 48.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055401, 35.683788, 48.185543>,  <30.598909, 35.327972, 48.429035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055401, 35.683788, 48.185543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898542, 35.411869, 48.433445>,  <29.804428, 35.248718, 48.582188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898542, 35.411869, 48.433445>,  <30.055401, 35.683788, 48.185543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898542, 35.411869, 48.433445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643531, 0.684147, 0.343235,
		-0.657335, -0.264235, -0.705755,
		-0.392145, -0.679796, 0.619758,
		29.780899, 35.207932, 48.619373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982651, 36.232372, 47.693413>,  <30.055401, 35.683788, 48.185543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982651, 36.232372, 47.693413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240351, 36.502884, 47.836292>,  <30.394970, 36.665192, 47.922020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240351, 36.502884, 47.836292>,  <29.982651, 36.232372, 47.693413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240351, 36.502884, 47.836292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764807, -0.567480, -0.305020,
		-0.003577, 0.469694, -0.882822,
		0.644250, 0.676279, 0.357195,
		30.433626, 36.705769, 47.943451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569170, 36.308376, 47.194012>,  <29.982651, 36.232372, 47.693413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569170, 36.308376, 47.194012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734867, 36.440662, 47.533195>,  <30.834286, 36.520035, 47.736706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734867, 36.440662, 47.533195>,  <30.569170, 36.308376, 47.194012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734867, 36.440662, 47.533195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796330, -0.582847, -0.161703,
		0.440752, 0.742238, -0.504797,
		0.414241, 0.330714, 0.847958,
		30.859140, 36.539875, 47.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201096, 36.488846, 46.962513>,  <30.569170, 36.308376, 47.194012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201096, 36.488846, 46.962513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239971, 36.471790, 47.360252>,  <31.263296, 36.461555, 47.598896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239971, 36.471790, 47.360252>,  <31.201096, 36.488846, 46.962513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239971, 36.471790, 47.360252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866863, -0.487228, -0.105624,
		0.488980, 0.872233, -0.010391,
		0.097191, -0.042640, 0.994352,
		31.269129, 36.459000, 47.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882027, 36.903126, 47.231388>,  <31.201096, 36.488846, 46.962513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882027, 36.903126, 47.231388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826178, 36.633472, 47.521503>,  <31.792669, 36.471680, 47.695572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826178, 36.633472, 47.521503>,  <31.882027, 36.903126, 47.231388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826178, 36.633472, 47.521503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895062, -0.399204, -0.198747,
		0.423522, 0.621430, 0.659131,
		-0.139620, -0.674137, 0.725290,
		31.784292, 36.431232, 47.739090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604370, 36.823051, 47.580860>,  <31.882027, 36.903126, 47.231388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604370, 36.823051, 47.580860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404324, 36.502941, 47.713184>,  <32.284294, 36.310875, 47.792580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404324, 36.502941, 47.713184>,  <32.604370, 36.823051, 47.580860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404324, 36.502941, 47.713184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781946, -0.581488, -0.224571,
		0.372083, 0.146365, 0.916587,
		-0.500115, -0.800280, 0.330812,
		32.254288, 36.262856, 47.812428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905392, 36.598213, 48.165077>,  <32.604370, 36.823051, 47.580860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905392, 36.598213, 48.165077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733112, 36.278015, 47.998363>,  <32.629745, 36.085896, 47.898335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733112, 36.278015, 47.998363>,  <32.905392, 36.598213, 48.165077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733112, 36.278015, 47.998363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896100, -0.434198, -0.092071,
		-0.107263, -0.413133, 0.904332,
		-0.430696, -0.800496, -0.416782,
		32.603905, 36.037865, 47.873329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223099, 36.046261, 48.362881>,  <32.905392, 36.598213, 48.165077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223099, 36.046261, 48.362881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052094, 35.890236, 48.036671>,  <32.949490, 35.796623, 47.840942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052094, 35.890236, 48.036671>,  <33.223099, 36.046261, 48.362881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052094, 35.890236, 48.036671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818344, -0.550300, -0.165784,
		-0.384120, -0.738257, 0.554462,
		-0.427512, -0.390060, -0.815529,
		32.923840, 35.773216, 47.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395798, 35.340088, 48.424938>,  <33.223099, 36.046261, 48.362881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395798, 35.340088, 48.424938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309872, 35.371326, 48.035526>,  <33.258316, 35.390068, 47.801880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309872, 35.371326, 48.035526>,  <33.395798, 35.340088, 48.424938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309872, 35.371326, 48.035526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781505, -0.584088, -0.219296,
		-0.585750, -0.807926, 0.064446,
		-0.214817, 0.078088, -0.973528,
		33.245426, 35.394756, 47.743469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381336, 34.688602, 48.093048>,  <33.395798, 35.340088, 48.424938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381336, 34.688602, 48.093048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441490, 34.956997, 47.802624>,  <33.477581, 35.118034, 47.628368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441490, 34.956997, 47.802624>,  <33.381336, 34.688602, 48.093048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441490, 34.956997, 47.802624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710858, -0.583788, -0.392265,
		-0.687070, -0.457138, -0.564765,
		0.150384, 0.670982, -0.726064,
		33.486607, 35.158291, 47.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712250, 34.319958, 47.606529>,  <33.381336, 34.688602, 48.093048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712250, 34.319958, 47.606529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.783539, 34.686546, 47.463242>,  <33.826313, 34.906498, 47.377270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.783539, 34.686546, 47.463242>,  <33.712250, 34.319958, 47.606529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783539, 34.686546, 47.463242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865499, -0.319200, -0.386036,
		-0.468133, -0.241236, -0.850092,
		0.178224, 0.916470, -0.358217,
		33.837006, 34.961487, 47.355778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930172, 34.278248, 46.855667>,  <33.712250, 34.319958, 47.606529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930172, 34.278248, 46.855667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090904, 34.595554, 47.038643>,  <34.187344, 34.785938, 47.148430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090904, 34.595554, 47.038643>,  <33.930172, 34.278248, 46.855667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090904, 34.595554, 47.038643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904140, -0.264536, -0.335486,
		-0.145121, 0.548401, -0.823526,
		0.401833, 0.793270, 0.457442,
		34.211452, 34.833534, 47.175877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514885, 34.502781, 46.375389>,  <33.930172, 34.278248, 46.855667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514885, 34.502781, 46.375389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581757, 34.687412, 46.723869>,  <34.621880, 34.798191, 46.932957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581757, 34.687412, 46.723869>,  <34.514885, 34.502781, 46.375389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581757, 34.687412, 46.723869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973652, -0.216291, -0.072244,
		0.155087, 0.860325, -0.485581,
		0.167180, 0.461583, 0.871202,
		34.631912, 34.825886, 46.985229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.335308, 40.300777, 52.032516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101168, 40.395817, 51.722443>,  <27.960684, 40.452843, 51.536400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101168, 40.395817, 51.722443>,  <28.335308, 40.300777, 52.032516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101168, 40.395817, 51.722443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440112, -0.709857, -0.549913,
		-0.680933, -0.663059, 0.310940,
		-0.585347, 0.237605, -0.775186,
		27.925564, 40.467098, 51.489887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072121, 39.676395, 51.687439>,  <28.335308, 40.300777, 52.032516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072121, 39.676395, 51.687439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060843, 39.942017, 51.388577>,  <28.054075, 40.101387, 51.209259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060843, 39.942017, 51.388577>,  <28.072121, 39.676395, 51.687439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060843, 39.942017, 51.388577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541855, -0.617955, -0.569671,
		-0.839999, -0.420912, -0.342395,
		-0.028196, 0.664051, -0.747155,
		28.052383, 40.141232, 51.164429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895252, 39.354538, 51.101269>,  <28.072121, 39.676395, 51.687439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895252, 39.354538, 51.101269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058157, 39.674404, 50.924782>,  <28.155901, 39.866322, 50.818890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058157, 39.674404, 50.924782>,  <27.895252, 39.354538, 51.101269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058157, 39.674404, 50.924782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479797, -0.598394, -0.641653,
		-0.777130, 0.049626, -0.627380,
		0.407263, 0.799664, -0.441220,
		28.180336, 39.914303, 50.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885393, 39.230042, 50.377316>,  <27.895252, 39.354538, 51.101269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885393, 39.230042, 50.377316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176172, 39.503632, 50.401730>,  <28.350639, 39.667786, 50.416378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176172, 39.503632, 50.401730>,  <27.885393, 39.230042, 50.377316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176172, 39.503632, 50.401730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537525, -0.511469, -0.670422,
		-0.427336, 0.520168, -0.739465,
		0.726946, 0.683977, 0.061034,
		28.394257, 39.708824, 50.420040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034714, 39.398651, 49.732193>,  <27.885393, 39.230042, 50.377316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034714, 39.398651, 49.732193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343235, 39.509510, 49.961376>,  <28.528347, 39.576027, 50.098888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343235, 39.509510, 49.961376>,  <28.034714, 39.398651, 49.732193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343235, 39.509510, 49.961376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635742, -0.292425, -0.714367,
		-0.030438, 0.915246, -0.401743,
		0.771301, 0.277149, 0.572960,
		28.574625, 39.592655, 50.133263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514879, 39.750431, 49.286079>,  <28.034714, 39.398651, 49.732193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514879, 39.750431, 49.286079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727348, 39.620537, 49.599106>,  <28.854830, 39.542603, 49.786922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727348, 39.620537, 49.599106>,  <28.514879, 39.750431, 49.286079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727348, 39.620537, 49.599106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624940, -0.473513, -0.620673,
		0.572107, 0.818739, -0.048578,
		0.531171, -0.324733, 0.782563,
		28.886700, 39.523117, 49.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147690, 39.563103, 48.908257>,  <28.514879, 39.750431, 49.286079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147690, 39.563103, 48.908257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204439, 39.417385, 49.276421>,  <29.238489, 39.329956, 49.497318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204439, 39.417385, 49.276421>,  <29.147690, 39.563103, 48.908257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204439, 39.417385, 49.276421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683488, -0.636542, -0.357293,
		0.716043, 0.679781, 0.158683,
		0.141873, -0.364295, 0.920414,
		29.247002, 39.308098, 49.552544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807602, 39.571060, 48.996674>,  <29.147690, 39.563103, 48.908257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807602, 39.571060, 48.996674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674389, 39.286728, 49.244480>,  <29.594461, 39.116127, 49.393166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674389, 39.286728, 49.244480>,  <29.807602, 39.571060, 48.996674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674389, 39.286728, 49.244480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543280, -0.681661, -0.490086,
		0.770672, 0.173359, 0.613197,
		-0.333032, -0.710833, 0.619520,
		29.574480, 39.073479, 49.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370241, 39.215725, 49.311214>,  <29.807602, 39.571060, 48.996674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370241, 39.215725, 49.311214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055176, 38.969444, 49.302250>,  <29.866137, 38.821678, 49.296871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055176, 38.969444, 49.302250>,  <30.370241, 39.215725, 49.311214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055176, 38.969444, 49.302250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559546, -0.699657, -0.444284,
		0.257864, -0.362487, 0.895606,
		-0.787664, -0.615697, -0.022412,
		29.818876, 38.784737, 49.295525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676102, 38.610748, 49.218102>,  <30.370241, 39.215725, 49.311214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676102, 38.610748, 49.218102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295315, 38.510635, 49.147537>,  <30.066843, 38.450569, 49.105198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295315, 38.510635, 49.147537>,  <30.676102, 38.610748, 49.218102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295315, 38.510635, 49.147537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302130, -0.861423, -0.408250,
		-0.049786, -0.441939, 0.895662,
		-0.951966, -0.250281, -0.176410,
		30.009726, 38.435551, 49.094616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544024, 37.945660, 49.429184>,  <30.676102, 38.610748, 49.218102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544024, 37.945660, 49.429184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254848, 37.982620, 49.155300>,  <30.081343, 38.004795, 48.990971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254848, 37.982620, 49.155300>,  <30.544024, 37.945660, 49.429184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254848, 37.982620, 49.155300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333716, -0.821051, -0.463152,
		-0.604973, -0.563328, 0.562734,
		-0.722939, 0.092401, -0.684705,
		30.037966, 38.010342, 48.949890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643667, 37.320816, 49.169483>,  <30.544024, 37.945660, 49.429184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643667, 37.320816, 49.169483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343950, 37.462124, 48.945427>,  <30.164120, 37.546909, 48.810993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343950, 37.462124, 48.945427>,  <30.643667, 37.320816, 49.169483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343950, 37.462124, 48.945427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071038, -0.798074, -0.598358,
		-0.658419, -0.488136, 0.572894,
		-0.749292, 0.353273, -0.560143,
		30.119164, 37.568108, 48.777386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065575, 36.857338, 49.090729>,  <30.643667, 37.320816, 49.169483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065575, 36.857338, 49.090729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101234, 37.112141, 48.784454>,  <30.122631, 37.265022, 48.600689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101234, 37.112141, 48.784454>,  <30.065575, 36.857338, 49.090729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101234, 37.112141, 48.784454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288533, -0.752304, -0.592273,
		-0.953311, -0.168125, -0.250864,
		0.089149, 0.637003, -0.765689,
		30.127979, 37.303242, 48.554749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775995, 36.430382, 48.568523>,  <30.065575, 36.857338, 49.090729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775995, 36.430382, 48.568523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985441, 36.728180, 48.402843>,  <30.111109, 36.906857, 48.303436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985441, 36.728180, 48.402843>,  <29.775995, 36.430382, 48.568523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985441, 36.728180, 48.402843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568693, -0.667434, -0.480750,
		-0.634363, 0.016177, -0.772866,
		0.523614, 0.744493, -0.414196,
		30.142525, 36.951527, 48.278584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333134, 35.842129, 48.210300>,  <29.775995, 36.430382, 48.568523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333134, 35.842129, 48.210300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385807, 35.615898, 48.535946>,  <29.417410, 35.480160, 48.731331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385807, 35.615898, 48.535946>,  <29.333134, 35.842129, 48.210300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385807, 35.615898, 48.535946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588126, 0.616532, 0.523447,
		-0.797977, -0.547728, -0.251447,
		0.131681, -0.565581, 0.814112,
		29.425312, 35.446224, 48.780178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672699, 35.530247, 48.492062>,  <29.333134, 35.842129, 48.210300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672699, 35.530247, 48.492062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918455, 35.547077, 48.807213>,  <29.065908, 35.557175, 48.996304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918455, 35.547077, 48.807213>,  <28.672699, 35.530247, 48.492062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918455, 35.547077, 48.807213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728399, 0.414044, 0.545895,
		-0.303250, -0.909284, 0.285031,
		0.614389, 0.042073, 0.787880,
		29.102772, 35.559700, 49.043575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084957, 35.408810, 49.027885>,  <28.672699, 35.530247, 48.492062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084957, 35.408810, 49.027885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417398, 35.552910, 49.197350>,  <28.616863, 35.639370, 49.299026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417398, 35.552910, 49.197350>,  <28.084957, 35.408810, 49.027885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417398, 35.552910, 49.197350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556095, 0.545228, 0.627284,
		-0.005010, -0.756932, 0.653474,
		0.831104, 0.360251, 0.423658,
		28.666729, 35.660984, 49.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953369, 35.251572, 49.744072>,  <28.084957, 35.408810, 49.027885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953369, 35.251572, 49.744072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224255, 35.545872, 49.741173>,  <28.386786, 35.722450, 49.739433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224255, 35.545872, 49.741173>,  <27.953369, 35.251572, 49.744072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224255, 35.545872, 49.741173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544598, 0.507839, 0.667467,
		0.494766, -0.448075, 0.744604,
		0.677215, 0.735750, -0.007241,
		28.427418, 35.766598, 49.738998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945705, 35.461472, 50.325142>,  <27.953369, 35.251572, 49.744072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945705, 35.461472, 50.325142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100790, 35.780872, 50.140938>,  <28.193842, 35.972515, 50.030415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100790, 35.780872, 50.140938>,  <27.945705, 35.461472, 50.325142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100790, 35.780872, 50.140938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362323, 0.591389, 0.720404,
		0.847586, -0.112457, 0.518606,
		0.387712, 0.798507, -0.460507,
		28.217104, 36.020424, 50.002785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343946, 35.872177, 50.833275>,  <27.945705, 35.461472, 50.325142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343946, 35.872177, 50.833275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256447, 36.124401, 50.535404>,  <28.203947, 36.275734, 50.356682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256447, 36.124401, 50.535404>,  <28.343946, 35.872177, 50.833275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256447, 36.124401, 50.535404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377669, 0.648970, 0.660458,
		0.899731, 0.425715, 0.096183,
		-0.218747, 0.630560, -0.744677,
		28.190823, 36.313568, 50.312000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580347, 36.504807, 51.078144>,  <28.343946, 35.872177, 50.833275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580347, 36.504807, 51.078144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294901, 36.576336, 50.807213>,  <28.123632, 36.619255, 50.644653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294901, 36.576336, 50.807213>,  <28.580347, 36.504807, 51.078144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294901, 36.576336, 50.807213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381232, 0.712029, 0.589642,
		0.587720, 0.678997, -0.439942,
		-0.713616, 0.178824, -0.677329,
		28.080816, 36.629982, 50.604015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397911, 37.276039, 51.111595>,  <28.580347, 36.504807, 51.078144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397911, 37.276039, 51.111595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081499, 37.138741, 50.909027>,  <27.891653, 37.056362, 50.787487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081499, 37.138741, 50.909027>,  <28.397911, 37.276039, 51.111595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081499, 37.138741, 50.909027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574755, 0.700553, 0.422945,
		0.209597, 0.625626, -0.751439,
		-0.791028, -0.343246, -0.506415,
		27.844191, 37.035767, 50.757103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022438, 37.924534, 50.682495>,  <28.397911, 37.276039, 51.111595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022438, 37.924534, 50.682495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744038, 37.637985, 50.702042>,  <27.576998, 37.466057, 50.713768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744038, 37.637985, 50.702042>,  <28.022438, 37.924534, 50.682495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744038, 37.637985, 50.702042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613885, 0.628967, 0.477017,
		-0.372458, 0.302006, -0.877535,
		-0.696003, -0.716374, 0.048867,
		27.535236, 37.423073, 50.716702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441814, 38.298721, 50.452866>,  <28.022438, 37.924534, 50.682495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441814, 38.298721, 50.452866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291245, 37.973572, 50.630646>,  <27.200903, 37.778481, 50.737312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291245, 37.973572, 50.630646>,  <27.441814, 38.298721, 50.452866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291245, 37.973572, 50.630646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714722, 0.560043, 0.418956,
		-0.589471, -0.159954, -0.791795,
		-0.376426, -0.812875, 0.444452,
		27.178316, 37.729710, 50.763981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812851, 38.259544, 50.238224>,  <27.441814, 38.298721, 50.452866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812851, 38.259544, 50.238224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820084, 38.063660, 50.586903>,  <26.824423, 37.946129, 50.796108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820084, 38.063660, 50.586903>,  <26.812851, 38.259544, 50.238224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820084, 38.063660, 50.586903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773162, 0.545944, 0.322748,
		-0.633951, -0.679798, -0.368755,
		0.018084, -0.489714, 0.871696,
		26.825508, 37.916744, 50.848412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117098, 38.093533, 50.461235>,  <26.812851, 38.259544, 50.238224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117098, 38.093533, 50.461235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344059, 38.082165, 50.790417>,  <26.480236, 38.075344, 50.987926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344059, 38.082165, 50.790417>,  <26.117098, 38.093533, 50.461235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344059, 38.082165, 50.790417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693062, 0.523198, 0.495913,
		-0.444658, -0.851737, 0.277169,
		0.567402, -0.028416, 0.822951,
		26.514280, 38.073639, 51.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652632, 37.850864, 50.989887>,  <26.117098, 38.093533, 50.461235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652632, 37.850864, 50.989887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944098, 38.037136, 51.190762>,  <26.118977, 38.148899, 51.311287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944098, 38.037136, 51.190762>,  <25.652632, 37.850864, 50.989887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944098, 38.037136, 51.190762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680394, 0.408499, 0.608435,
		0.078188, -0.785032, 0.614501,
		0.728664, 0.465675, 0.502191,
		26.162697, 38.176838, 51.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456488, 37.878895, 51.712940>,  <25.652632, 37.850864, 50.989887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456488, 37.878895, 51.712940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753540, 38.146107, 51.694012>,  <25.931772, 38.306435, 51.682655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753540, 38.146107, 51.694012>,  <25.456488, 37.878895, 51.712940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753540, 38.146107, 51.694012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397932, 0.497002, 0.771128,
		0.538656, -0.553830, 0.634918,
		0.742630, 0.668028, -0.047326,
		25.976330, 38.346516, 51.679813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.186661, 39.665932, 56.303871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951618, 39.675617, 55.980358>,  <31.810593, 39.681427, 55.786251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951618, 39.675617, 55.980358>,  <32.186661, 39.665932, 56.303871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951618, 39.675617, 55.980358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552354, -0.718426, -0.422812,
		-0.591288, -0.695182, 0.408780,
		-0.587609, 0.024213, -0.808783,
		31.775335, 39.682880, 55.737724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021275, 38.994785, 56.194782>,  <32.186661, 39.665932, 56.303871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021275, 38.994785, 56.194782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909897, 39.128471, 55.834610>,  <31.843069, 39.208683, 55.618507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909897, 39.128471, 55.834610>,  <32.021275, 38.994785, 56.194782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909897, 39.128471, 55.834610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400215, -0.811861, -0.425099,
		-0.873096, -0.478732, 0.092302,
		-0.278445, 0.334212, -0.900429,
		31.826363, 39.228733, 55.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855648, 38.429173, 55.851189>,  <32.021275, 38.994785, 56.194782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855648, 38.429173, 55.851189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899895, 38.679176, 55.542091>,  <31.926443, 38.829178, 55.356632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899895, 38.679176, 55.542091>,  <31.855648, 38.429173, 55.851189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899895, 38.679176, 55.542091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396021, -0.740840, -0.542516,
		-0.911554, -0.246009, -0.329466,
		0.110618, 0.625008, -0.772741,
		31.933081, 38.866680, 55.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815783, 37.926105, 55.262623>,  <31.855648, 38.429173, 55.851189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815783, 37.926105, 55.262623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.936712, 38.250248, 55.061859>,  <32.009270, 38.444733, 54.941399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.936712, 38.250248, 55.061859>,  <31.815783, 37.926105, 55.262623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936712, 38.250248, 55.061859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566074, -0.576280, -0.589458,
		-0.766915, -0.105910, -0.632949,
		0.302327, 0.810360, -0.501911,
		32.027409, 38.493355, 54.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653988, 37.816769, 54.465084>,  <31.815783, 37.926105, 55.262623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653988, 37.816769, 54.465084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946274, 38.070881, 54.565056>,  <32.121647, 38.223351, 54.625038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946274, 38.070881, 54.565056>,  <31.653988, 37.816769, 54.465084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946274, 38.070881, 54.565056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672362, -0.606293, -0.424662,
		-0.118249, 0.478353, -0.870170,
		0.730716, 0.635285, 0.249933,
		32.165489, 38.261467, 54.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951773, 37.888420, 53.794601>,  <31.653988, 37.816769, 54.465084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951773, 37.888420, 53.794601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213593, 38.010197, 54.071407>,  <32.370686, 38.083263, 54.237492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213593, 38.010197, 54.071407>,  <31.951773, 37.888420, 53.794601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213593, 38.010197, 54.071407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729908, -0.492957, -0.473528,
		0.196973, 0.815053, -0.544876,
		0.654551, 0.304437, 0.692013,
		32.409958, 38.101528, 54.279011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462803, 38.074928, 53.487106>,  <31.951773, 37.888420, 53.794601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462803, 38.074928, 53.487106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630512, 38.016518, 53.845520>,  <32.731140, 37.981472, 54.060570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630512, 38.016518, 53.845520>,  <32.462803, 38.074928, 53.487106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630512, 38.016518, 53.845520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639779, -0.652727, -0.405746,
		0.644119, 0.743386, -0.180247,
		0.419278, -0.146030, 0.896036,
		32.756294, 37.972710, 54.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152374, 38.230522, 53.392021>,  <32.462803, 38.074928, 53.487106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152374, 38.230522, 53.392021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107338, 37.974697, 53.696201>,  <33.080318, 37.821201, 53.878708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107338, 37.974697, 53.696201>,  <33.152374, 38.230522, 53.392021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107338, 37.974697, 53.696201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669466, -0.614360, -0.417585,
		0.734261, 0.462077, 0.497338,
		-0.112588, -0.639567, 0.760446,
		33.073563, 37.782825, 53.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797989, 37.932709, 53.511883>,  <33.152374, 38.230522, 53.392021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797989, 37.932709, 53.511883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548347, 37.676479, 53.690845>,  <33.398563, 37.522743, 53.798222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548347, 37.676479, 53.690845>,  <33.797989, 37.932709, 53.511883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548347, 37.676479, 53.690845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642058, -0.746756, -0.173539,
		0.445265, 0.178953, 0.877334,
		-0.624099, -0.640571, 0.447403,
		33.361118, 37.484306, 53.825066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261322, 37.630077, 53.853786>,  <33.797989, 37.932709, 53.511883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261322, 37.630077, 53.853786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959126, 37.368645, 53.871994>,  <33.777809, 37.211784, 53.882919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959126, 37.368645, 53.871994>,  <34.261322, 37.630077, 53.853786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959126, 37.368645, 53.871994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607990, -0.725283, -0.322976,
		0.244105, -0.216329, 0.945312,
		-0.755488, -0.653580, 0.045520,
		33.732479, 37.172569, 53.885651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433887, 37.063416, 54.255333>,  <34.261322, 37.630077, 53.853786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433887, 37.063416, 54.255333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142269, 36.933861, 54.014141>,  <33.967297, 36.856129, 53.869427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142269, 36.933861, 54.014141>,  <34.433887, 37.063416, 54.255333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142269, 36.933861, 54.014141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617102, -0.692133, -0.374348,
		-0.296094, -0.645017, 0.704472,
		-0.729050, -0.323889, -0.602978,
		33.923553, 36.836693, 53.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440571, 36.423931, 54.463554>,  <34.433887, 37.063416, 54.255333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440571, 36.423931, 54.463554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247314, 36.407066, 54.113743>,  <34.131359, 36.396946, 53.903858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247314, 36.407066, 54.113743>,  <34.440571, 36.423931, 54.463554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247314, 36.407066, 54.113743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473774, -0.852559, -0.220640,
		-0.736281, -0.520928, 0.431885,
		-0.483145, -0.042163, -0.874524,
		34.102371, 36.394417, 53.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357182, 35.737663, 54.451797>,  <34.440571, 36.423931, 54.463554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357182, 35.737663, 54.451797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265781, 35.850330, 54.079037>,  <34.210941, 35.917931, 53.855381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265781, 35.850330, 54.079037>,  <34.357182, 35.737663, 54.451797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265781, 35.850330, 54.079037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399272, -0.845909, -0.353581,
		-0.887901, -0.452877, 0.080829,
		-0.228503, 0.281672, -0.931905,
		34.197231, 35.934834, 53.799465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093094, 35.128033, 54.055744>,  <34.357182, 35.737663, 54.451797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093094, 35.128033, 54.055744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220993, 35.401764, 53.793613>,  <34.297733, 35.566002, 53.636333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220993, 35.401764, 53.793613>,  <34.093094, 35.128033, 54.055744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220993, 35.401764, 53.793613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565062, -0.692907, -0.447866,
		-0.760570, -0.227098, -0.608243,
		0.319747, 0.684329, -0.655329,
		34.316917, 35.607063, 53.597015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492691, 34.618893, 53.869190>,  <34.093094, 35.128033, 54.055744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492691, 34.618893, 53.869190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481503, 34.255291, 54.035530>,  <33.474789, 34.037128, 54.135334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481503, 34.255291, 54.035530>,  <33.492691, 34.618893, 53.869190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481503, 34.255291, 54.035530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692561, 0.317605, 0.647677,
		-0.720817, -0.269887, -0.638424,
		-0.027967, -0.909004, 0.415848,
		33.473114, 33.982590, 54.160286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863033, 34.382698, 53.762211>,  <33.492691, 34.618893, 53.869190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863033, 34.382698, 53.762211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975677, 34.166279, 54.079189>,  <33.043262, 34.036427, 54.269375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975677, 34.166279, 54.079189>,  <32.863033, 34.382698, 53.762211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975677, 34.166279, 54.079189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742694, 0.400003, 0.537032,
		-0.607539, -0.739774, -0.289189,
		0.281607, -0.541047, 0.792443,
		33.060158, 34.003963, 54.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353130, 33.978882, 53.946938>,  <32.863033, 34.382698, 53.762211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353130, 33.978882, 53.946938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560722, 33.997375, 54.288349>,  <32.685280, 34.008472, 54.493198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560722, 33.997375, 54.288349>,  <32.353130, 33.978882, 53.946938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560722, 33.997375, 54.288349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834270, 0.244851, 0.494006,
		-0.186149, -0.968458, 0.165644,
		0.518982, 0.046233, 0.853534,
		32.716415, 34.011246, 54.544411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945463, 33.653469, 54.546036>,  <32.353130, 33.978882, 53.946938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945463, 33.653469, 54.546036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204483, 33.908772, 54.712559>,  <32.359894, 34.061951, 54.812473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204483, 33.908772, 54.712559>,  <31.945463, 33.653469, 54.546036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204483, 33.908772, 54.712559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747556, 0.426128, 0.509485,
		0.147780, -0.641130, 0.753069,
		0.647550, 0.638253, 0.416307,
		32.398746, 34.100246, 54.837452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679565, 33.747780, 55.177273>,  <31.945463, 33.653469, 54.546036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679565, 33.747780, 55.177273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916718, 34.065414, 55.123734>,  <32.059010, 34.255997, 55.091610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916718, 34.065414, 55.123734>,  <31.679565, 33.747780, 55.177273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916718, 34.065414, 55.123734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651521, 0.570688, 0.499836,
		0.473301, -0.209136, 0.855715,
		0.592879, 0.794089, -0.133851,
		32.094582, 34.303642, 55.083576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529963, 34.147697, 55.752792>,  <31.679565, 33.747780, 55.177273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529963, 34.147697, 55.752792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.728678, 34.421795, 55.539757>,  <31.847906, 34.586254, 55.411938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.728678, 34.421795, 55.539757>,  <31.529963, 34.147697, 55.752792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728678, 34.421795, 55.539757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478145, 0.728235, 0.490970,
		0.724289, 0.010758, 0.689412,
		0.496772, 0.685243, -0.532597,
		31.877714, 34.627369, 55.379982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734537, 34.662655, 56.178272>,  <31.529963, 34.147697, 55.752792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734537, 34.662655, 56.178272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758371, 34.840542, 55.820797>,  <31.772671, 34.947273, 55.606312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758371, 34.840542, 55.820797>,  <31.734537, 34.662655, 56.178272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758371, 34.840542, 55.820797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433839, 0.817842, 0.378046,
		0.899018, 0.365192, 0.241665,
		0.059584, 0.444714, -0.893689,
		31.776247, 34.973957, 55.552689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001812, 35.288971, 56.275356>,  <31.734537, 34.662655, 56.178272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001812, 35.288971, 56.275356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811100, 35.337776, 55.927151>,  <31.696672, 35.367058, 55.718227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811100, 35.337776, 55.927151>,  <32.001812, 35.288971, 56.275356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811100, 35.337776, 55.927151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377527, 0.865909, 0.328137,
		0.793822, 0.485092, -0.366787,
		-0.476781, 0.122010, -0.870513,
		31.668066, 35.374378, 55.665997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189892, 35.953411, 56.069920>,  <32.001812, 35.288971, 56.275356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189892, 35.953411, 56.069920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861328, 35.895416, 55.849277>,  <31.664190, 35.860619, 55.716892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861328, 35.895416, 55.849277>,  <32.189892, 35.953411, 56.069920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861328, 35.895416, 55.849277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317160, 0.919936, 0.230492,
		0.474026, 0.364276, -0.801624,
		-0.821406, -0.144984, -0.551608,
		31.614906, 35.851921, 55.683796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072212, 36.578003, 55.760242>,  <32.189892, 35.953411, 56.069920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072212, 36.578003, 55.760242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724344, 36.382828, 55.730320>,  <31.515625, 36.265724, 55.712364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724344, 36.382828, 55.730320>,  <32.072212, 36.578003, 55.760242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724344, 36.382828, 55.730320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482146, 0.807095, 0.340784,
		-0.105902, 0.332438, -0.937160,
		-0.869667, -0.487938, -0.074811,
		31.463444, 36.236446, 55.707878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575403, 37.030773, 55.374638>,  <32.072212, 36.578003, 55.760242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575403, 37.030773, 55.374638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352259, 36.773205, 55.584076>,  <31.218372, 36.618664, 55.709740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352259, 36.773205, 55.584076>,  <31.575403, 37.030773, 55.374638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352259, 36.773205, 55.584076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620384, 0.742612, 0.252291,
		-0.551285, -0.184087, -0.813755,
		-0.557861, -0.643925, 0.523595,
		31.184900, 36.580029, 55.741154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909058, 37.169189, 55.101479>,  <31.575403, 37.030773, 55.374638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909058, 37.169189, 55.101479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844759, 36.972752, 55.443935>,  <30.806179, 36.854889, 55.649410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844759, 36.972752, 55.443935>,  <30.909058, 37.169189, 55.101479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844759, 36.972752, 55.443935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729882, 0.643061, 0.231830,
		-0.664404, -0.587618, -0.461814,
		-0.160747, -0.491098, 0.856144,
		30.796535, 36.825420, 55.700779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180653, 37.141968, 55.126732>,  <30.909058, 37.169189, 55.101479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180653, 37.141968, 55.126732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.308590, 37.077854, 55.500259>,  <30.385351, 37.039387, 55.724377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.308590, 37.077854, 55.500259>,  <30.180653, 37.141968, 55.126732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308590, 37.077854, 55.500259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666614, 0.662314, 0.342004,
		-0.673297, -0.731881, 0.104987,
		0.319841, -0.160284, 0.933815,
		30.404543, 37.029770, 55.780403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532854, 36.968788, 55.510246>,  <30.180653, 37.141968, 55.126732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532854, 36.968788, 55.510246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.788853, 37.105293, 55.785622>,  <29.942451, 37.187195, 55.950848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.788853, 37.105293, 55.785622>,  <29.532854, 36.968788, 55.510246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788853, 37.105293, 55.785622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697995, 0.632806, 0.335201,
		-0.321256, -0.695053, 0.643192,
		0.639998, 0.341260, 0.688436,
		29.980852, 37.207672, 55.992153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910549, 36.715408, 55.767414>,  <29.532854, 36.968788, 55.510246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910549, 36.715408, 55.767414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628418, 36.729362, 55.484203>,  <28.459139, 36.737736, 55.314278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628418, 36.729362, 55.484203>,  <28.910549, 36.715408, 55.767414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628418, 36.729362, 55.484203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060256, -0.992223, -0.108919,
		-0.706317, -0.119486, 0.697739,
		-0.705327, 0.034889, -0.708023,
		28.416821, 36.739830, 55.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507109, 36.208118, 55.968338>,  <28.910549, 36.715408, 55.767414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507109, 36.208118, 55.968338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483070, 36.285213, 55.576576>,  <28.468647, 36.331470, 55.341518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483070, 36.285213, 55.576576>,  <28.507109, 36.208118, 55.968338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483070, 36.285213, 55.576576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151916, -0.967986, -0.199814,
		-0.986565, -0.160796, 0.028890,
		-0.060095, 0.192741, -0.979408,
		28.465042, 36.343037, 55.282753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131687, 35.681599, 55.638165>,  <28.507109, 36.208118, 55.968338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131687, 35.681599, 55.638165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.324472, 35.844383, 55.327785>,  <28.440144, 35.942055, 55.141560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.324472, 35.844383, 55.327785>,  <28.131687, 35.681599, 55.638165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324472, 35.844383, 55.327785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130792, -0.909084, -0.395551,
		-0.866373, 0.089155, -0.491374,
		0.481966, 0.406962, -0.775945,
		28.469063, 35.966473, 55.095001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963623, 35.309612, 54.959133>,  <28.131687, 35.681599, 55.638165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963623, 35.309612, 54.959133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.314009, 35.490795, 54.892784>,  <28.524240, 35.599506, 54.852974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.314009, 35.490795, 54.892784>,  <27.963623, 35.309612, 54.959133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314009, 35.490795, 54.892784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392980, -0.869523, -0.299160,
		-0.279734, 0.196870, -0.939676,
		0.875965, 0.452959, -0.165870,
		28.576797, 35.626682, 54.843021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122768, 34.976147, 54.363106>,  <27.963623, 35.309612, 54.959133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122768, 34.976147, 54.363106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.467756, 35.144409, 54.475670>,  <28.674749, 35.245369, 54.543209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.467756, 35.144409, 54.475670>,  <28.122768, 34.976147, 54.363106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467756, 35.144409, 54.475670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504896, -0.753627, -0.420865,
		0.035040, 0.505067, -0.862369,
		0.862469, 0.420659, 0.281413,
		28.726498, 35.270607, 54.560093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517580, 35.017143, 53.776356>,  <28.122768, 34.976147, 54.363106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517580, 35.017143, 53.776356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.761446, 35.007877, 54.093285>,  <28.907764, 35.002319, 54.283443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.761446, 35.007877, 54.093285>,  <28.517580, 35.017143, 53.776356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761446, 35.007877, 54.093285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562246, -0.691954, -0.452857,
		0.558740, 0.721570, -0.408835,
		0.609663, -0.023164, 0.792322,
		28.944345, 35.000927, 54.330982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227152, 34.750435, 53.487797>,  <28.517580, 35.017143, 53.776356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227152, 34.750435, 53.487797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.278032, 34.724388, 53.883694>,  <29.308559, 34.708759, 54.121231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.278032, 34.724388, 53.883694>,  <29.227152, 34.750435, 53.487797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278032, 34.724388, 53.883694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756118, -0.639450, -0.139244,
		0.641955, 0.766070, -0.032104,
		0.127200, -0.065114, 0.989738,
		29.316193, 34.704853, 54.180614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940792, 34.709236, 53.589291>,  <29.227152, 34.750435, 53.487797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940792, 34.709236, 53.589291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754078, 34.553070, 53.906704>,  <29.642050, 34.459370, 54.097153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754078, 34.553070, 53.906704>,  <29.940792, 34.709236, 53.589291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754078, 34.553070, 53.906704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554987, -0.827919, -0.080865,
		0.688549, 0.402652, 0.603135,
		-0.466787, -0.390412, 0.793529,
		29.614042, 34.435947, 54.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501869, 34.501431, 54.093830>,  <29.940792, 34.709236, 53.589291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501869, 34.501431, 54.093830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172483, 34.299992, 54.198360>,  <29.974852, 34.179127, 54.261078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172483, 34.299992, 54.198360>,  <30.501869, 34.501431, 54.093830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172483, 34.299992, 54.198360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511939, -0.858071, -0.040415,
		0.244592, 0.100504, 0.964403,
		-0.823464, -0.503601, 0.261330,
		29.925444, 34.148911, 54.276760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667458, 34.120296, 54.563091>,  <30.501869, 34.501431, 54.093830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667458, 34.120296, 54.563091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344700, 33.950008, 54.399296>,  <30.151045, 33.847836, 54.301018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344700, 33.950008, 54.399296>,  <30.667458, 34.120296, 54.563091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344700, 33.950008, 54.399296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527657, -0.831086, -0.175708,
		-0.265516, -0.357846, 0.895236,
		-0.806895, -0.425724, -0.409487,
		30.102631, 33.822292, 54.276451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505224, 33.388683, 54.833561>,  <30.667458, 34.120296, 54.563091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505224, 33.388683, 54.833561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324409, 33.394524, 54.476810>,  <30.215921, 33.398026, 54.262760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324409, 33.394524, 54.476810>,  <30.505224, 33.388683, 54.833561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324409, 33.394524, 54.476810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501310, -0.822864, -0.267549,
		-0.737802, -0.568050, 0.364645,
		-0.452035, 0.014598, -0.891881,
		30.188799, 33.398903, 54.209248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326637, 32.645191, 54.727028>,  <30.505224, 33.388683, 54.833561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326637, 32.645191, 54.727028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.290714, 32.830719, 54.374481>,  <30.269161, 32.942036, 54.162952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.290714, 32.830719, 54.374481>,  <30.326637, 32.645191, 54.727028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290714, 32.830719, 54.374481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548240, -0.715779, -0.432543,
		-0.831485, -0.522046, -0.190003,
		-0.089807, 0.463820, -0.881366,
		30.263773, 32.969864, 54.110073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197508, 32.095898, 54.344215>,  <30.326637, 32.645191, 54.727028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197508, 32.095898, 54.344215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301729, 32.379749, 54.082367>,  <30.364262, 32.550060, 53.925259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301729, 32.379749, 54.082367>,  <30.197508, 32.095898, 54.344215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301729, 32.379749, 54.082367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486966, -0.682072, -0.545566,
		-0.833653, -0.176632, -0.523282,
		0.260551, 0.709633, -0.654625,
		30.379894, 32.592640, 53.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884899, 31.958597, 53.717655>,  <30.197508, 32.095898, 54.344215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884899, 31.958597, 53.717655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218275, 32.162891, 53.633247>,  <30.418301, 32.285469, 53.582603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218275, 32.162891, 53.633247>,  <29.884899, 31.958597, 53.717655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218275, 32.162891, 53.633247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321891, -0.759071, -0.565859,
		-0.449181, 0.403685, -0.797041,
		0.833440, 0.510734, -0.211018,
		30.468307, 32.316113, 53.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.832769, 38.106426, 52.567520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.910770, 38.409866, 52.318844>,  <25.957571, 38.591930, 52.169640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.910770, 38.409866, 52.318844>,  <25.832769, 38.106426, 52.567520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910770, 38.409866, 52.318844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023116, 0.637239, 0.770320,
		0.980530, -0.135843, 0.141799,
		0.195003, 0.758600, -0.621692,
		25.969271, 38.637447, 52.132336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151781, 38.578224, 53.002151>,  <25.832769, 38.106426, 52.567520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151781, 38.578224, 53.002151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.053566, 38.805363, 52.687885>,  <25.994637, 38.941647, 52.499325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.053566, 38.805363, 52.687885>,  <26.151781, 38.578224, 53.002151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053566, 38.805363, 52.687885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320118, 0.717510, 0.618630,
		0.915005, 0.403403, 0.005599,
		-0.245540, 0.567842, -0.785662,
		25.979904, 38.975716, 52.452187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578121, 39.211697, 52.989105>,  <26.151781, 38.578224, 53.002151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578121, 39.211697, 52.989105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.246222, 39.297268, 52.782902>,  <26.047081, 39.348610, 52.659180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.246222, 39.297268, 52.782902>,  <26.578121, 39.211697, 52.989105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246222, 39.297268, 52.782902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171504, 0.781218, 0.600238,
		0.531131, 0.586460, -0.611527,
		-0.829751, 0.213925, -0.515509,
		25.997295, 39.361446, 52.628250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714483, 39.923737, 52.907829>,  <26.578121, 39.211697, 52.989105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714483, 39.923737, 52.907829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.335691, 39.828449, 52.821590>,  <26.108416, 39.771278, 52.769848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.335691, 39.828449, 52.821590>,  <26.714483, 39.923737, 52.907829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335691, 39.828449, 52.821590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319728, 0.764880, 0.559225,
		0.031687, 0.598507, -0.800491,
		-0.946980, -0.238219, -0.215596,
		26.051598, 39.756985, 52.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464979, 40.585068, 53.015621>,  <26.714483, 39.923737, 52.907829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464979, 40.585068, 53.015621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.142305, 40.348759, 53.009411>,  <25.948700, 40.206974, 53.005684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.142305, 40.348759, 53.009411>,  <26.464979, 40.585068, 53.015621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142305, 40.348759, 53.009411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492302, 0.657227, 0.570694,
		-0.326948, 0.468014, -0.821016,
		-0.806687, -0.590775, -0.015525,
		25.900299, 40.171528, 53.004753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938688, 40.976650, 52.827084>,  <26.464979, 40.585068, 53.015621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938688, 40.976650, 52.827084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.770699, 40.675339, 53.029541>,  <25.669905, 40.494553, 53.151016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.770699, 40.675339, 53.029541>,  <25.938688, 40.976650, 52.827084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770699, 40.675339, 53.029541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538276, 0.655783, 0.529346,
		-0.730671, -0.050135, -0.680887,
		-0.419975, -0.753283, 0.506148,
		25.644707, 40.449352, 53.181385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165728, 41.091972, 52.819916>,  <25.938688, 40.976650, 52.827084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165728, 41.091972, 52.819916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.253328, 40.857983, 53.132286>,  <25.305889, 40.717587, 53.319706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.253328, 40.857983, 53.132286>,  <25.165728, 41.091972, 52.819916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253328, 40.857983, 53.132286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632398, 0.524392, 0.570163,
		-0.743042, -0.618720, -0.255097,
		0.219001, -0.584978, 0.780923,
		25.319029, 40.682487, 53.366562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551186, 41.099216, 53.182980>,  <25.165728, 41.091972, 52.819916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551186, 41.099216, 53.182980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.806074, 40.944408, 53.449562>,  <24.959007, 40.851524, 53.609512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.806074, 40.944408, 53.449562>,  <24.551186, 41.099216, 53.182980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806074, 40.944408, 53.449562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598416, 0.296460, 0.744318,
		-0.485644, -0.873114, -0.042688,
		0.637219, -0.387019, 0.666459,
		24.997240, 40.828304, 53.649498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193363, 40.782917, 53.640480>,  <24.551186, 41.099216, 53.182980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193363, 40.782917, 53.640480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.524210, 40.842472, 53.857258>,  <24.722719, 40.878204, 53.987324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.524210, 40.842472, 53.857258>,  <24.193363, 40.782917, 53.640480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524210, 40.842472, 53.857258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549206, 0.418896, 0.723117,
		-0.119359, -0.895745, 0.428245,
		0.827119, 0.148884, 0.541948,
		24.772346, 40.887138, 54.019844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.067604, 40.325237, 54.215614>,  <24.193363, 40.782917, 53.640480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.067604, 40.325237, 54.215614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.324020, 40.627197, 54.271038>,  <24.477869, 40.808372, 54.304295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.324020, 40.627197, 54.271038>,  <24.067604, 40.325237, 54.215614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324020, 40.627197, 54.271038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616617, 0.399052, 0.678632,
		0.457005, -0.520467, 0.721290,
		0.641038, 0.754898, 0.138560,
		24.516333, 40.853664, 54.312607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.973530, 40.575977, 54.940582>,  <24.067604, 40.325237, 54.215614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.973530, 40.575977, 54.940582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.197639, 40.874268, 54.796371>,  <24.332106, 41.053242, 54.709843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.197639, 40.874268, 54.796371>,  <23.973530, 40.575977, 54.940582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197639, 40.874268, 54.796371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401317, 0.625153, 0.669424,
		0.724597, -0.230372, 0.649529,
		0.560272, 0.745730, -0.360531,
		24.365721, 41.097988, 54.688213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533985, 40.887245, 55.539715>,  <23.973530, 40.575977, 54.940582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533985, 40.887245, 55.539715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.413403, 41.147522, 55.260937>,  <24.341053, 41.303688, 55.093670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.413403, 41.147522, 55.260937>,  <24.533985, 40.887245, 55.539715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413403, 41.147522, 55.260937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192936, 0.674198, 0.712905,
		0.933756, 0.349374, -0.077699,
		-0.301455, 0.650688, -0.696943,
		24.322966, 41.342728, 55.051853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914127, 41.509277, 55.389317>,  <24.533985, 40.887245, 55.539715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914127, 41.509277, 55.389317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.516212, 41.531418, 55.355049>,  <24.277464, 41.544701, 55.334488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.516212, 41.531418, 55.355049>,  <24.914127, 41.509277, 55.389317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516212, 41.531418, 55.355049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032364, 0.625257, 0.779747,
		0.096722, 0.778453, -0.620205,
		-0.994785, 0.055347, -0.085670,
		24.217777, 41.548023, 55.329350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983175, 41.581921, 56.043407>,  <24.914127, 41.509277, 55.389317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983175, 41.581921, 56.043407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.267113, 41.587509, 56.325096>,  <25.437475, 41.590862, 56.494110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.267113, 41.587509, 56.325096>,  <24.983175, 41.581921, 56.043407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267113, 41.587509, 56.325096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487326, -0.731622, -0.476700,
		0.508562, 0.681567, -0.526148,
		0.709844, 0.013974, 0.704220,
		25.480066, 41.591702, 56.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614647, 41.710552, 55.775951>,  <24.983175, 41.581921, 56.043407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614647, 41.710552, 55.775951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.616331, 41.481438, 56.103828>,  <25.617342, 41.343967, 56.300556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.616331, 41.481438, 56.103828>,  <25.614647, 41.710552, 55.775951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616331, 41.481438, 56.103828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553637, -0.681273, -0.478908,
		0.832747, 0.455828, 0.314248,
		0.004211, -0.572789, 0.819692,
		25.617594, 41.309601, 56.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265368, 41.495014, 55.901180>,  <25.614647, 41.710552, 55.775951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265368, 41.495014, 55.901180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.016937, 41.226330, 56.062710>,  <25.867880, 41.065121, 56.159626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.016937, 41.226330, 56.062710>,  <26.265368, 41.495014, 55.901180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016937, 41.226330, 56.062710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601961, -0.738778, -0.303067,
		0.501908, 0.054857, 0.863180,
		-0.621073, -0.671712, 0.403820,
		25.830616, 41.024815, 56.183857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647348, 41.200634, 56.429340>,  <26.265368, 41.495014, 55.901180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647348, 41.200634, 56.429340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.367498, 40.926540, 56.348366>,  <26.199589, 40.762085, 56.299782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.367498, 40.926540, 56.348366>,  <26.647348, 41.200634, 56.429340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367498, 40.926540, 56.348366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714138, -0.679770, -0.167095,
		-0.023112, -0.261472, 0.964935,
		-0.699624, -0.685234, -0.202438,
		26.157612, 40.720970, 56.287636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928837, 40.535240, 56.750217>,  <26.647348, 41.200634, 56.429340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928837, 40.535240, 56.750217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.672182, 40.439457, 56.458748>,  <26.518190, 40.381985, 56.283867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.672182, 40.439457, 56.458748>,  <26.928837, 40.535240, 56.750217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672182, 40.439457, 56.458748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537538, -0.818069, -0.204490,
		-0.547136, -0.522896, 0.653621,
		-0.641635, -0.239463, -0.728672,
		26.479692, 40.367619, 56.240147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732702, 39.929031, 56.925232>,  <26.928837, 40.535240, 56.750217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732702, 39.929031, 56.925232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.643196, 39.968037, 56.537331>,  <26.589493, 39.991440, 56.304588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.643196, 39.968037, 56.537331>,  <26.732702, 39.929031, 56.925232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643196, 39.968037, 56.537331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451788, -0.871251, -0.191859,
		-0.863606, -0.481054, 0.150903,
		-0.223769, 0.097515, -0.969752,
		26.576065, 39.997292, 56.246407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457827, 39.376602, 56.718586>,  <26.732702, 39.929031, 56.925232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457827, 39.376602, 56.718586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590622, 39.516010, 56.367970>,  <26.670300, 39.599655, 56.157600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590622, 39.516010, 56.367970>,  <26.457827, 39.376602, 56.718586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590622, 39.516010, 56.367970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301699, -0.919661, -0.251400,
		-0.893735, -0.180989, -0.410465,
		0.331988, 0.348522, -0.876537,
		26.690218, 39.620567, 56.105007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222231, 38.954487, 56.234631>,  <26.457827, 39.376602, 56.718586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222231, 38.954487, 56.234631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.520761, 39.130512, 56.034893>,  <26.699881, 39.236126, 55.915051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.520761, 39.130512, 56.034893>,  <26.222231, 38.954487, 56.234631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520761, 39.130512, 56.034893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212964, -0.868683, -0.447253,
		-0.630588, 0.227455, -0.742039,
		0.746327, 0.440060, -0.499342,
		26.744659, 39.262531, 55.885090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283745, 38.706451, 55.593758>,  <26.222231, 38.954487, 56.234631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283745, 38.706451, 55.593758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.639248, 38.889633, 55.585930>,  <26.852551, 38.999542, 55.581234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.639248, 38.889633, 55.585930>,  <26.283745, 38.706451, 55.593758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639248, 38.889633, 55.585930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361017, -0.725655, -0.585741,
		-0.282441, 0.513520, -0.810262,
		0.888760, 0.457955, -0.019565,
		26.905876, 39.027020, 55.580059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599140, 38.493427, 55.002640>,  <26.283745, 38.706451, 55.593758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599140, 38.493427, 55.002640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913363, 38.617920, 55.216572>,  <27.101896, 38.692616, 55.344933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913363, 38.617920, 55.216572>,  <26.599140, 38.493427, 55.002640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913363, 38.617920, 55.216572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575311, -0.685614, -0.446039,
		0.227866, 0.658080, -0.717640,
		0.785553, 0.311229, 0.534829,
		27.149029, 38.711288, 55.377022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155083, 38.519218, 54.585575>,  <26.599140, 38.493427, 55.002640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155083, 38.519218, 54.585575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.321903, 38.492519, 54.948147>,  <27.421995, 38.476501, 55.165691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.321903, 38.492519, 54.948147>,  <27.155083, 38.519218, 54.585575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321903, 38.492519, 54.948147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619099, -0.709290, -0.337081,
		0.665420, 0.701749, -0.254488,
		0.417052, -0.066748, 0.906428,
		27.447020, 38.472496, 55.220074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842121, 38.570690, 54.492016>,  <27.155083, 38.519218, 54.585575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842121, 38.570690, 54.492016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.770817, 38.375210, 54.833633>,  <27.728035, 38.257923, 55.038605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.770817, 38.375210, 54.833633>,  <27.842121, 38.570690, 54.492016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770817, 38.375210, 54.833633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672097, -0.694406, -0.257070,
		0.718685, 0.528176, 0.452240,
		-0.178260, -0.488702, 0.854046,
		27.717339, 38.228600, 55.089848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463379, 38.211361, 54.571556>,  <27.842121, 38.570690, 54.492016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463379, 38.211361, 54.571556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221613, 38.089455, 54.865986>,  <28.076553, 38.016312, 55.042645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221613, 38.089455, 54.865986>,  <28.463379, 38.211361, 54.571556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221613, 38.089455, 54.865986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449510, -0.893275, -0.000743,
		0.657742, 0.330423, 0.676902,
		-0.604414, -0.304763, 0.736073,
		28.040289, 37.998024, 55.086807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933996, 37.998913, 55.028526>,  <28.463379, 38.211361, 54.571556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933996, 37.998913, 55.028526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.585920, 37.808598, 55.079742>,  <28.377075, 37.694408, 55.110474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.585920, 37.808598, 55.079742>,  <28.933996, 37.998913, 55.028526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585920, 37.808598, 55.079742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486287, -0.871176, 0.067656,
		0.079354, 0.121138, 0.989459,
		-0.870188, -0.475792, 0.128039,
		28.324863, 37.665859, 55.118153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929598, 37.518749, 55.612053>,  <28.933996, 37.998913, 55.028526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929598, 37.518749, 55.612053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649548, 37.378815, 55.363075>,  <28.481518, 37.294853, 55.213688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649548, 37.378815, 55.363075>,  <28.929598, 37.518749, 55.612053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649548, 37.378815, 55.363075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321494, -0.932834, 0.162672,
		-0.637545, -0.086221, 0.765573,
		-0.700127, -0.349838, -0.622444,
		28.439510, 37.273865, 55.176342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001129, 37.134884, 56.328312>,  <28.929598, 37.518749, 55.612053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001129, 37.134884, 56.328312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.366348, 37.273113, 56.414963>,  <29.585480, 37.356052, 56.466953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.366348, 37.273113, 56.414963>,  <29.001129, 37.134884, 56.328312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366348, 37.273113, 56.414963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403484, 0.687744, 0.603498,
		0.059572, -0.638425, 0.767375,
		0.913046, 0.345575, 0.216624,
		29.640263, 37.376785, 56.479950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081717, 37.344486, 57.108162>,  <29.001129, 37.134884, 56.328312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081717, 37.344486, 57.108162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.355549, 37.565365, 56.917828>,  <29.519848, 37.697891, 56.803627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.355549, 37.565365, 56.917828>,  <29.081717, 37.344486, 57.108162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355549, 37.565365, 56.917828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220475, 0.779065, 0.586897,
		0.694793, -0.296869, 0.655081,
		0.684583, 0.552201, -0.475837,
		29.560923, 37.731026, 56.775078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346743, 37.599178, 57.643551>,  <29.081717, 37.344486, 57.108162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346743, 37.599178, 57.643551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.440292, 37.854427, 57.350132>,  <29.496422, 38.007576, 57.174080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.440292, 37.854427, 57.350132>,  <29.346743, 37.599178, 57.643551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440292, 37.854427, 57.350132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186610, 0.769910, 0.610259,
		0.954191, -0.005835, 0.299142,
		0.233873, 0.638126, -0.733552,
		29.510454, 38.045864, 57.130066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913225, 38.047852, 57.865856>,  <29.346743, 37.599178, 57.643551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913225, 38.047852, 57.865856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752148, 38.236298, 57.551941>,  <29.655500, 38.349365, 57.363594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752148, 38.236298, 57.551941>,  <29.913225, 38.047852, 57.865856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752148, 38.236298, 57.551941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177061, 0.801090, 0.571755,
		0.898046, 0.369198, -0.239179,
		-0.402695, 0.471113, -0.784786,
		29.631340, 38.377632, 57.316505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044750, 38.734123, 58.037151>,  <29.913225, 38.047852, 57.865856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044750, 38.734123, 58.037151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.778971, 38.756329, 57.739044>,  <29.619503, 38.769653, 57.560181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.778971, 38.756329, 57.739044>,  <30.044750, 38.734123, 58.037151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778971, 38.756329, 57.739044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444635, 0.772167, 0.453935,
		0.600675, 0.632989, -0.488379,
		-0.664447, 0.055516, -0.745271,
		29.579638, 38.772984, 57.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933884, 39.361897, 58.094158>,  <30.044750, 38.734123, 58.037151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933884, 39.361897, 58.094158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630375, 39.259346, 57.854645>,  <29.448271, 39.197815, 57.710938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630375, 39.259346, 57.854645>,  <29.933884, 39.361897, 58.094158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630375, 39.259346, 57.854645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596057, 0.643981, 0.479588,
		0.262648, 0.720804, -0.641449,
		-0.758770, -0.256378, -0.598781,
		29.402744, 39.182434, 57.675011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588127, 40.040184, 57.747227>,  <29.933884, 39.361897, 58.094158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588127, 40.040184, 57.747227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.353483, 39.724285, 57.818985>,  <29.212698, 39.534744, 57.862041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.353483, 39.724285, 57.818985>,  <29.588127, 40.040184, 57.747227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353483, 39.724285, 57.818985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656245, 0.593332, 0.466154,
		-0.474587, 0.155722, -0.866324,
		-0.586608, -0.789752, 0.179396,
		29.177502, 39.487358, 57.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666534, 40.563778, 57.212486>,  <29.588127, 40.040184, 57.747227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666534, 40.563778, 57.212486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.880018, 40.899830, 57.251152>,  <30.008108, 41.101460, 57.274353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.880018, 40.899830, 57.251152>,  <29.666534, 40.563778, 57.212486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880018, 40.899830, 57.251152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601185, -0.296532, -0.742055,
		-0.594755, 0.454155, -0.663333,
		0.533707, 0.840126, 0.096667,
		30.040131, 41.151867, 57.280151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653450, 40.850338, 56.575790>,  <29.666534, 40.563778, 57.212486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653450, 40.850338, 56.575790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970043, 40.991112, 56.775669>,  <30.159998, 41.075577, 56.895596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970043, 40.991112, 56.775669>,  <29.653450, 40.850338, 56.575790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970043, 40.991112, 56.775669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600386, -0.294616, -0.743464,
		-0.114433, 0.888449, -0.444480,
		0.791481, 0.351936, 0.499699,
		30.207487, 41.096691, 56.925579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084642, 41.160446, 56.069248>,  <29.653450, 40.850338, 56.575790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084642, 41.160446, 56.069248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.312050, 41.061890, 56.383209>,  <30.448494, 41.002754, 56.571587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.312050, 41.061890, 56.383209>,  <30.084642, 41.160446, 56.069248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312050, 41.061890, 56.383209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725506, -0.299650, -0.619557,
		0.387852, 0.921683, 0.008403,
		0.568518, -0.246392, 0.784906,
		30.482605, 40.987972, 56.618683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660732, 41.288910, 55.843117>,  <30.084642, 41.160446, 56.069248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660732, 41.288910, 55.843117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.758074, 41.050819, 56.149445>,  <30.816479, 40.907963, 56.333241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.758074, 41.050819, 56.149445>,  <30.660732, 41.288910, 55.843117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758074, 41.050819, 56.149445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789008, -0.337737, -0.513225,
		0.564133, 0.729134, 0.387451,
		0.243354, -0.595229, 0.765821,
		30.831079, 40.872250, 56.379192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284071, 41.261898, 55.885811>,  <30.660732, 41.288910, 55.843117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284071, 41.261898, 55.885811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.191832, 40.916042, 56.064346>,  <31.136488, 40.708527, 56.171467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.191832, 40.916042, 56.064346>,  <31.284071, 41.261898, 55.885811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191832, 40.916042, 56.064346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637074, -0.480877, -0.602407,
		0.735501, 0.145439, 0.661729,
		-0.230597, -0.864641, 0.446341,
		31.122652, 40.656651, 56.198250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949837, 40.952515, 55.988083>,  <31.284071, 41.261898, 55.885811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949837, 40.952515, 55.988083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694746, 40.644547, 55.997356>,  <31.541693, 40.459766, 56.002922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694746, 40.644547, 55.997356>,  <31.949837, 40.952515, 55.988083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694746, 40.644547, 55.997356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676363, -0.574129, -0.461420,
		0.368565, -0.278578, 0.886879,
		-0.637724, -0.769916, 0.023184,
		31.503429, 40.413570, 56.004311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426529, 40.309563, 56.041431>,  <31.949837, 40.952515, 55.988083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426529, 40.309563, 56.041431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067440, 40.168766, 55.935455>,  <31.851986, 40.084290, 55.871868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067440, 40.168766, 55.935455>,  <32.426529, 40.309563, 56.041431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067440, 40.168766, 55.935455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439375, -0.671306, -0.596906,
		0.032246, -0.652267, 0.757303,
		-0.897725, -0.351989, -0.264943,
		31.798122, 40.063171, 55.855972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.091454, 43.322060, 54.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131308, 43.716587, 54.904152>,  <26.155220, 43.953304, 54.872635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131308, 43.716587, 54.904152>,  <26.091454, 43.322060, 54.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131308, 43.716587, 54.904152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027321, 0.129224, 0.991239,
		0.994649, -0.102352, -0.014072,
		0.099637, 0.986319, -0.131328,
		26.161198, 44.012482, 54.864754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783346, 43.357609, 54.282516>,  <26.091454, 43.322060, 54.956684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783346, 43.357609, 54.282516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564119, 43.245323, 53.967346>,  <25.432583, 43.177952, 53.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564119, 43.245323, 53.967346>,  <25.783346, 43.357609, 54.282516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564119, 43.245323, 53.967346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769836, -0.537641, -0.343939,
		-0.327069, -0.795072, 0.510770,
		-0.548068, -0.280717, -0.787921,
		25.399698, 43.161110, 53.730968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901814, 42.743137, 54.131241>,  <25.783346, 43.357609, 54.282516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901814, 42.743137, 54.131241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736717, 42.815407, 53.774139>,  <25.637659, 42.858768, 53.559879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736717, 42.815407, 53.774139>,  <25.901814, 42.743137, 54.131241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736717, 42.815407, 53.774139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725344, -0.527638, -0.442125,
		-0.550929, -0.830033, 0.086726,
		-0.412739, 0.180673, -0.892751,
		25.612896, 42.869610, 53.506313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040134, 42.203396, 53.722214>,  <25.901814, 42.743137, 54.131241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040134, 42.203396, 53.722214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949888, 42.476597, 53.444336>,  <25.895741, 42.640518, 53.277611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949888, 42.476597, 53.444336>,  <26.040134, 42.203396, 53.722214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949888, 42.476597, 53.444336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652361, -0.423684, -0.628425,
		-0.723548, -0.594974, -0.349977,
		-0.225617, 0.683007, -0.694693,
		25.882204, 42.681499, 53.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800615, 41.800461, 53.158657>,  <26.040134, 42.203396, 53.722214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800615, 41.800461, 53.158657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915937, 42.158234, 53.021912>,  <25.985130, 42.372898, 52.939865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915937, 42.158234, 53.021912>,  <25.800615, 41.800461, 53.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915937, 42.158234, 53.021912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606346, -0.446855, -0.657773,
		-0.741098, -0.017650, -0.671165,
		0.288303, 0.894432, -0.341865,
		26.002428, 42.426563, 52.919353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672718, 41.776508, 52.426201>,  <25.800615, 41.800461, 53.158657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672718, 41.776508, 52.426201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939333, 42.066277, 52.496559>,  <26.099302, 42.240139, 52.538776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939333, 42.066277, 52.496559>,  <25.672718, 41.776508, 52.426201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939333, 42.066277, 52.496559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522962, -0.286234, -0.802858,
		-0.531259, 0.627125, -0.569630,
		0.666539, 0.724420, 0.175898,
		26.139296, 42.283604, 52.549328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873455, 42.100281, 51.730808>,  <25.672718, 41.776508, 52.426201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873455, 42.100281, 51.730808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168774, 42.171463, 51.991039>,  <26.345964, 42.214172, 52.147179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168774, 42.171463, 51.991039>,  <25.873455, 42.100281, 51.730808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168774, 42.171463, 51.991039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671410, -0.285773, -0.683771,
		0.064236, 0.941629, -0.330467,
		0.738297, 0.177956, 0.650576,
		26.390263, 42.224850, 52.186211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374920, 42.270744, 51.306190>,  <25.873455, 42.100281, 51.730808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374920, 42.270744, 51.306190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567259, 42.189880, 51.647465>,  <26.682661, 42.141361, 51.852230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567259, 42.189880, 51.647465>,  <26.374920, 42.270744, 51.306190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567259, 42.189880, 51.647465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766916, -0.374687, -0.521007,
		0.425002, 0.904844, -0.025130,
		0.480846, -0.202157, 0.853182,
		26.711514, 42.129234, 51.903419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050512, 42.477261, 51.142757>,  <26.374920, 42.270744, 51.306190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050512, 42.477261, 51.142757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095783, 42.247017, 51.466698>,  <27.122946, 42.108871, 51.661064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095783, 42.247017, 51.466698>,  <27.050512, 42.477261, 51.142757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095783, 42.247017, 51.466698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766225, -0.468339, -0.439953,
		0.632528, 0.670323, 0.388042,
		0.113176, -0.575610, 0.809855,
		27.129736, 42.074333, 51.709656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800388, 42.469894, 51.333214>,  <27.050512, 42.477261, 51.142757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800388, 42.469894, 51.333214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642147, 42.132458, 51.478458>,  <27.547203, 41.929996, 51.565605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642147, 42.132458, 51.478458>,  <27.800388, 42.469894, 51.333214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642147, 42.132458, 51.478458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724664, -0.529606, -0.440884,
		0.564234, 0.088721, 0.820834,
		-0.395603, -0.843591, 0.363115,
		27.523466, 41.879379, 51.587395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355173, 42.049965, 51.351402>,  <27.800388, 42.469894, 51.333214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355173, 42.049965, 51.351402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093620, 41.769741, 51.465698>,  <27.936687, 41.601604, 51.534275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093620, 41.769741, 51.465698>,  <28.355173, 42.049965, 51.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093620, 41.769741, 51.465698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562164, -0.702629, -0.436215,
		0.506368, -0.124600, 0.853268,
		-0.653884, -0.700562, 0.285744,
		27.897455, 41.559574, 51.551422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683380, 41.423088, 51.683563>,  <28.355173, 42.049965, 51.351402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683380, 41.423088, 51.683563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340445, 41.321659, 51.504379>,  <28.134684, 41.260803, 51.396870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340445, 41.321659, 51.504379>,  <28.683380, 41.423088, 51.683563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340445, 41.321659, 51.504379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493723, -0.651284, -0.576253,
		-0.145630, -0.715214, 0.683565,
		-0.857339, -0.253572, -0.447964,
		28.083242, 41.245586, 51.369991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875261, 41.098686, 52.297157>,  <28.683380, 41.423088, 51.683563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875261, 41.098686, 52.297157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160763, 41.378407, 52.312801>,  <29.332064, 41.546238, 52.322189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160763, 41.378407, 52.312801>,  <28.875261, 41.098686, 52.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160763, 41.378407, 52.312801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471584, 0.438541, 0.765043,
		0.517845, -0.564497, 0.642790,
		0.713754, 0.699303, 0.039111,
		29.374889, 41.588196, 52.324535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748533, 41.275055, 52.875614>,  <28.875261, 41.098686, 52.297157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748533, 41.275055, 52.875614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025337, 41.549530, 52.785934>,  <29.191420, 41.714214, 52.732124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025337, 41.549530, 52.785934>,  <28.748533, 41.275055, 52.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025337, 41.549530, 52.785934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275792, 0.538322, 0.796334,
		0.667130, -0.489237, 0.561769,
		0.692009, 0.686190, -0.224202,
		29.232941, 41.755386, 52.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128656, 41.364227, 53.459297>,  <28.748533, 41.275055, 52.875614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128656, 41.364227, 53.459297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188923, 41.713871, 53.274590>,  <29.225082, 41.923656, 53.163765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188923, 41.713871, 53.274590>,  <29.128656, 41.364227, 53.459297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188923, 41.713871, 53.274590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388216, 0.481891, 0.785537,
		0.909169, 0.060913, 0.411949,
		0.150665, 0.874111, -0.461768,
		29.234123, 41.976105, 53.136059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252506, 41.819359, 53.984612>,  <29.128656, 41.364227, 53.459297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252506, 41.819359, 53.984612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206575, 42.108253, 53.711792>,  <29.179018, 42.281590, 53.548100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206575, 42.108253, 53.711792>,  <29.252506, 41.819359, 53.984612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206575, 42.108253, 53.711792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127846, 0.670137, 0.731144,
		0.985124, 0.171152, 0.015386,
		-0.114826, 0.722235, -0.682050,
		29.172127, 42.324924, 53.507175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751217, 42.393791, 54.112301>,  <29.252506, 41.819359, 53.984612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751217, 42.393791, 54.112301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431433, 42.527489, 53.912643>,  <29.239563, 42.607708, 53.792850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431433, 42.527489, 53.912643>,  <29.751217, 42.393791, 54.112301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431433, 42.527489, 53.912643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138782, 0.705662, 0.694824,
		0.584470, 0.624755, -0.517760,
		-0.799458, 0.334248, -0.499143,
		29.191595, 42.627762, 53.762901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797295, 43.140160, 54.156277>,  <29.751217, 42.393791, 54.112301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797295, 43.140160, 54.156277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420164, 43.052731, 54.055634>,  <29.193886, 43.000275, 53.995247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420164, 43.052731, 54.055634>,  <29.797295, 43.140160, 54.156277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420164, 43.052731, 54.055634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332503, 0.668695, 0.665048,
		0.022888, 0.710684, -0.703139,
		-0.942825, -0.218574, -0.251609,
		29.137318, 42.987160, 53.980152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412750, 43.779011, 53.996193>,  <29.797295, 43.140160, 54.156277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412750, 43.779011, 53.996193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123518, 43.513199, 54.071621>,  <28.949978, 43.353714, 54.116879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123518, 43.513199, 54.071621>,  <29.412750, 43.779011, 53.996193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123518, 43.513199, 54.071621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425554, 0.643572, 0.636175,
		-0.544113, 0.379760, -0.748147,
		-0.723080, -0.664528, 0.188567,
		28.906593, 43.313839, 54.128193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893515, 44.172165, 54.224438>,  <29.412750, 43.779011, 53.996193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893515, 44.172165, 54.224438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746536, 43.821781, 54.349449>,  <28.658348, 43.611549, 54.424454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746536, 43.821781, 54.349449>,  <28.893515, 44.172165, 54.224438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746536, 43.821781, 54.349449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550443, 0.475687, 0.686101,
		-0.749663, 0.080078, -0.656957,
		-0.367447, -0.875962, 0.312526,
		28.636303, 43.558994, 54.443207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221880, 44.249710, 54.312557>,  <28.893515, 44.172165, 54.224438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221880, 44.249710, 54.312557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287374, 43.918804, 54.527531>,  <28.326672, 43.720261, 54.656513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287374, 43.918804, 54.527531>,  <28.221880, 44.249710, 54.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287374, 43.918804, 54.527531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518450, 0.391324, 0.760313,
		-0.839286, -0.403120, -0.364820,
		0.163735, -0.827260, 0.537430,
		28.336494, 43.670628, 54.688759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673225, 44.122799, 54.673359>,  <28.221880, 44.249710, 54.312557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673225, 44.122799, 54.673359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970072, 43.944286, 54.873398>,  <28.148180, 43.837177, 54.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970072, 43.944286, 54.873398>,  <27.673225, 44.122799, 54.673359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970072, 43.944286, 54.873398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359610, 0.364528, 0.858953,
		-0.565636, -0.817281, 0.110034,
		0.742117, -0.446285, 0.500093,
		28.192707, 43.810402, 55.023426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464144, 44.227757, 55.227528>,  <27.673225, 44.122799, 54.673359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464144, 44.227757, 55.227528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806742, 44.060028, 55.347919>,  <28.012300, 43.959393, 55.420155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806742, 44.060028, 55.347919>,  <27.464144, 44.227757, 55.227528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806742, 44.060028, 55.347919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169352, 0.322540, 0.931283,
		-0.487581, -0.848611, 0.205242,
		0.856496, -0.419317, 0.300978,
		28.063690, 43.934235, 55.438213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359497, 43.700291, 55.813026>,  <27.464144, 44.227757, 55.227528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359497, 43.700291, 55.813026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726679, 43.858093, 55.829636>,  <27.946989, 43.952774, 55.839603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726679, 43.858093, 55.829636>,  <27.359497, 43.700291, 55.813026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726679, 43.858093, 55.829636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173132, 0.304254, 0.936726,
		0.356910, -0.867061, 0.347593,
		0.917954, 0.394507, 0.041525,
		28.002066, 43.976444, 55.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679775, 43.428040, 56.502529>,  <27.359497, 43.700291, 55.813026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679775, 43.428040, 56.502529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838034, 43.778015, 56.390858>,  <27.932989, 43.988003, 56.323856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838034, 43.778015, 56.390858>,  <27.679775, 43.428040, 56.502529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838034, 43.778015, 56.390858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379125, 0.432470, 0.818067,
		0.836498, -0.217820, 0.502817,
		0.395644, 0.874943, -0.279179,
		27.956728, 44.040497, 56.307102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841379, 43.788410, 57.132092>,  <27.679775, 43.428040, 56.502529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841379, 43.788410, 57.132092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827497, 44.078224, 56.856747>,  <27.819168, 44.252113, 56.691540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827497, 44.078224, 56.856747>,  <27.841379, 43.788410, 57.132092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827497, 44.078224, 56.856747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323130, 0.643647, 0.693762,
		0.945718, 0.246507, 0.211781,
		-0.034705, 0.724536, -0.688363,
		27.817085, 44.295586, 56.650238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341753, 43.466015, 57.527649>,  <27.841379, 43.788410, 57.132092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341753, 43.466015, 57.527649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423197, 43.370350, 57.907406>,  <28.472063, 43.312950, 58.135262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423197, 43.370350, 57.907406>,  <28.341753, 43.466015, 57.527649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423197, 43.370350, 57.907406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560978, -0.766241, -0.313335,
		0.802400, 0.596386, -0.021849,
		0.203610, -0.239163, 0.949391,
		28.484280, 43.298599, 58.192223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166483, 43.335495, 57.676300>,  <28.341753, 43.466015, 57.527649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166483, 43.335495, 57.676300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924400, 43.119091, 57.909893>,  <28.779150, 42.989250, 58.050049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924400, 43.119091, 57.909893>,  <29.166483, 43.335495, 57.676300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924400, 43.119091, 57.909893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619452, -0.780805, -0.081382,
		0.500002, 0.312493, 0.807679,
		-0.605209, -0.541010, 0.583978,
		28.742838, 42.956787, 58.085087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551945, 43.133911, 58.239777>,  <29.166483, 43.335495, 57.676300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551945, 43.133911, 58.239777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254745, 42.870625, 58.191277>,  <29.076426, 42.712650, 58.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254745, 42.870625, 58.191277>,  <29.551945, 43.133911, 58.239777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254745, 42.870625, 58.191277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663015, -0.748605, 0.001055,
		-0.091464, -0.079608, 0.992621,
		-0.742998, -0.658219, -0.121252,
		29.031847, 42.673161, 58.154900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753029, 42.572117, 58.618908>,  <29.551945, 43.133911, 58.239777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753029, 42.572117, 58.618908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492027, 42.445019, 58.343727>,  <29.335426, 42.368759, 58.178619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492027, 42.445019, 58.343727>,  <29.753029, 42.572117, 58.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492027, 42.445019, 58.343727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576439, -0.797422, -0.178428,
		-0.491892, -0.512987, 0.703482,
		-0.652503, -0.317747, -0.687951,
		29.296276, 42.349693, 58.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618895, 41.806370, 58.756447>,  <29.753029, 42.572117, 58.618908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618895, 41.806370, 58.756447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537357, 41.895424, 58.375107>,  <29.488436, 41.948856, 58.146301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537357, 41.895424, 58.375107>,  <29.618895, 41.806370, 58.756447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537357, 41.895424, 58.375107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588076, -0.750690, -0.301048,
		-0.782697, -0.622010, 0.022095,
		-0.203842, 0.222636, -0.953353,
		29.476204, 41.962215, 58.089100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659941, 41.266850, 58.439625>,  <29.618895, 41.806370, 58.756447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659941, 41.266850, 58.439625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660843, 41.501301, 58.115540>,  <29.661385, 41.641972, 57.921089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660843, 41.501301, 58.115540>,  <29.659941, 41.266850, 58.439625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660843, 41.501301, 58.115540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601792, -0.647875, -0.467017,
		-0.798650, -0.486527, -0.354190,
		0.002255, 0.586131, -0.810213,
		29.661520, 41.677139, 57.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385006, 40.847557, 57.806671>,  <29.659941, 41.266850, 58.439625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385006, 40.847557, 57.806671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642635, 41.137451, 57.708748>,  <29.797213, 41.311386, 57.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642635, 41.137451, 57.708748>,  <29.385006, 40.847557, 57.806671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642635, 41.137451, 57.708748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484903, -0.634316, -0.602090,
		-0.591640, 0.269083, -0.759971,
		0.644074, 0.724733, -0.244808,
		29.835857, 41.354870, 57.635307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900652, 40.252934, 57.779957>,  <29.385006, 40.847557, 57.806671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900652, 40.252934, 57.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830240, 39.875767, 57.893036>,  <28.787992, 39.649467, 57.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830240, 39.875767, 57.893036>,  <28.900652, 40.252934, 57.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830240, 39.875767, 57.893036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806113, 0.302902, 0.508362,
		-0.564973, -0.138400, -0.813419,
		-0.176029, -0.942919, 0.282697,
		28.777431, 39.592892, 57.977844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287865, 40.067196, 57.613380>,  <28.900652, 40.252934, 57.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287865, 40.067196, 57.613380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350870, 39.817829, 57.919724>,  <28.388674, 39.668209, 58.103531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350870, 39.817829, 57.919724>,  <28.287865, 40.067196, 57.613380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350870, 39.817829, 57.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897260, 0.233567, 0.374662,
		-0.412449, -0.746191, -0.522575,
		0.157513, -0.623414, 0.765862,
		28.398125, 39.630806, 58.149483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631914, 39.944519, 57.795692>,  <28.287865, 40.067196, 57.613380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631914, 39.944519, 57.795692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860432, 39.861122, 58.113224>,  <27.997541, 39.811085, 58.303741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860432, 39.861122, 58.113224>,  <27.631914, 39.944519, 57.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860432, 39.861122, 58.113224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718651, 0.340111, 0.606519,
		-0.396441, -0.916983, 0.044473,
		0.571293, -0.208488, 0.793824,
		28.031820, 39.798576, 58.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198328, 39.472542, 58.141075>,  <27.631914, 39.944519, 57.795692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198328, 39.472542, 58.141075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469927, 39.637001, 58.384357>,  <27.632887, 39.735676, 58.530327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469927, 39.637001, 58.384357>,  <27.198328, 39.472542, 58.141075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469927, 39.637001, 58.384357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721912, 0.223351, 0.654948,
		0.133439, -0.883781, 0.448470,
		0.678997, 0.411152, 0.608209,
		27.673626, 39.760345, 58.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014418, 39.257103, 58.751556>,  <27.198328, 39.472542, 58.141075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014418, 39.257103, 58.751556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223742, 39.593914, 58.803921>,  <27.349335, 39.796001, 58.835339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223742, 39.593914, 58.803921>,  <27.014418, 39.257103, 58.751556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223742, 39.593914, 58.803921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674029, 0.315022, 0.668167,
		0.521376, -0.437893, 0.732405,
		0.523309, 0.842028, 0.130907,
		27.380733, 39.846523, 58.843193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083258, 39.284111, 59.539131>,  <27.014418, 39.257103, 58.751556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083258, 39.284111, 59.539131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129217, 39.649586, 59.383198>,  <27.156794, 39.868870, 59.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129217, 39.649586, 59.383198>,  <27.083258, 39.284111, 59.539131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129217, 39.649586, 59.383198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761871, 0.332880, 0.555646,
		0.637456, 0.233160, 0.734361,
		0.114900, 0.913689, -0.389834,
		27.163687, 39.923691, 59.266247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030067, 39.722370, 60.115932>,  <27.083258, 39.284111, 59.539131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030067, 39.722370, 60.115932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966249, 39.937794, 59.784996>,  <26.927959, 40.067047, 59.586433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966249, 39.937794, 59.784996>,  <27.030067, 39.722370, 60.115932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966249, 39.937794, 59.784996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641099, 0.580778, 0.501687,
		0.750691, 0.610452, 0.252610,
		-0.159545, 0.538559, -0.827345,
		26.918386, 40.099361, 59.536793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948107, 40.418495, 60.287182>,  <27.030067, 39.722370, 60.115932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948107, 40.418495, 60.287182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745197, 40.387814, 59.943836>,  <26.623451, 40.369404, 59.737827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745197, 40.387814, 59.943836>,  <26.948107, 40.418495, 60.287182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745197, 40.387814, 59.943836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735834, 0.557008, 0.385085,
		0.448579, 0.826957, -0.338996,
		-0.507273, -0.076704, -0.858365,
		26.593016, 40.364803, 59.686325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292299, 40.960506, 60.726875>,  <26.948107, 40.418495, 60.287182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292299, 40.960506, 60.726875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392189, 41.099064, 61.088573>,  <27.452122, 41.182198, 61.305592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392189, 41.099064, 61.088573>,  <27.292299, 40.960506, 60.726875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392189, 41.099064, 61.088573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963444, 0.182454, 0.196180,
		-0.097027, -0.920176, 0.379291,
		0.249723, 0.346391, 0.904241,
		27.467106, 41.202980, 61.359844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.939240, 33.484356, 47.190948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037144, 33.625340, 47.552250>,  <37.095886, 33.709930, 47.769032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037144, 33.625340, 47.552250>,  <36.939240, 33.484356, 47.190948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037144, 33.625340, 47.552250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828966, -0.407123, 0.383493,
		0.502901, -0.842627, 0.192534,
		0.244757, 0.352463, 0.903252,
		37.110569, 33.731079, 47.823227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697414, 32.946362, 47.622177>,  <36.939240, 33.484356, 47.190948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697414, 32.946362, 47.622177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759586, 33.242043, 47.884296>,  <36.796890, 33.419453, 48.041569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759586, 33.242043, 47.884296>,  <36.697414, 32.946362, 47.622177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759586, 33.242043, 47.884296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829041, -0.263104, 0.493424,
		0.537153, -0.619963, 0.571938,
		0.155425, 0.739204, 0.655302,
		36.806213, 33.463802, 48.080887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641434, 32.692608, 48.464104>,  <36.697414, 32.946362, 47.622177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641434, 32.692608, 48.464104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562035, 33.083065, 48.428905>,  <36.514393, 33.317341, 48.407787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562035, 33.083065, 48.428905>,  <36.641434, 32.692608, 48.464104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562035, 33.083065, 48.428905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853105, -0.127880, 0.505824,
		0.482503, 0.175479, 0.858136,
		-0.198500, 0.976142, -0.088000,
		36.502483, 33.375908, 48.402504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412907, 32.806313, 49.150864>,  <36.641434, 32.692608, 48.464104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412907, 32.806313, 49.150864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256222, 33.094131, 48.921494>,  <36.162212, 33.266823, 48.783871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256222, 33.094131, 48.921494>,  <36.412907, 32.806313, 49.150864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256222, 33.094131, 48.921494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865440, -0.076553, 0.495129,
		0.312370, 0.690213, 0.652710,
		-0.391711, 0.719545, -0.573426,
		36.138710, 33.309994, 48.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148911, 33.302307, 49.633007>,  <36.412907, 32.806313, 49.150864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148911, 33.302307, 49.633007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964603, 33.357273, 49.282280>,  <35.854019, 33.390255, 49.071842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964603, 33.357273, 49.282280>,  <36.148911, 33.302307, 49.633007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964603, 33.357273, 49.282280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867360, 0.139659, 0.477685,
		0.188098, 0.980618, 0.054840,
		-0.460767, 0.137417, -0.876818,
		35.826374, 33.398499, 49.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669163, 33.725407, 49.836575>,  <36.148911, 33.302307, 49.633007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669163, 33.725407, 49.836575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533978, 33.592876, 49.484211>,  <35.452866, 33.513359, 49.272793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533978, 33.592876, 49.484211>,  <35.669163, 33.725407, 49.836575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533978, 33.592876, 49.484211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935040, 0.011645, 0.354350,
		-0.107146, 0.943446, -0.313735,
		-0.337963, -0.331322, -0.880912,
		35.432587, 33.493481, 49.219936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274334, 34.294567, 49.579330>,  <35.669163, 33.725407, 49.836575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274334, 34.294567, 49.579330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136658, 33.944332, 49.443752>,  <35.054054, 33.734192, 49.362404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136658, 33.944332, 49.443752>,  <35.274334, 34.294567, 49.579330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136658, 33.944332, 49.443752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934052, 0.282674, 0.218269,
		-0.095301, 0.391722, -0.915135,
		-0.344186, -0.875585, -0.338950,
		35.033401, 33.681656, 49.342068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565811, 34.371868, 49.296329>,  <35.274334, 34.294567, 49.579330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565811, 34.371868, 49.296329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.557522, 33.972012, 49.303101>,  <34.552547, 33.732098, 49.307163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.557522, 33.972012, 49.303101>,  <34.565811, 34.371868, 49.296329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557522, 33.972012, 49.303101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986492, 0.023198, 0.162162,
		-0.162496, -0.013342, -0.986619,
		-0.020724, -0.999642, 0.016931,
		34.551304, 33.672119, 49.308182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005955, 34.266342, 48.970295>,  <34.565811, 34.371868, 49.296329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005955, 34.266342, 48.970295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106514, 33.927284, 49.157185>,  <34.166847, 33.723850, 49.269318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106514, 33.927284, 49.157185>,  <34.005955, 34.266342, 48.970295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106514, 33.927284, 49.157185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937787, -0.093872, 0.334282,
		-0.239494, -0.522191, -0.818510,
		0.251394, -0.847647, 0.467222,
		34.181931, 33.672989, 49.297352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593628, 33.805027, 48.695950>,  <34.005955, 34.266342, 48.970295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593628, 33.805027, 48.695950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.704762, 33.626278, 49.036095>,  <33.771442, 33.519028, 49.240181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.704762, 33.626278, 49.036095>,  <33.593628, 33.805027, 48.695950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704762, 33.626278, 49.036095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958284, -0.190755, 0.212849,
		0.067096, -0.874025, -0.481226,
		0.277832, -0.446870, 0.850363,
		33.788113, 33.492218, 49.291203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223331, 33.078503, 48.778511>,  <33.593628, 33.805027, 48.695950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223331, 33.078503, 48.778511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316917, 33.229473, 49.136909>,  <33.373070, 33.320057, 49.351948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316917, 33.229473, 49.136909>,  <33.223331, 33.078503, 48.778511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316917, 33.229473, 49.136909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964391, -0.026803, 0.263120,
		0.123324, -0.925651, 0.357716,
		0.233970, 0.377427, 0.895995,
		33.387108, 33.342701, 49.405708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772526, 32.770031, 49.282909>,  <33.223331, 33.078503, 48.778511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772526, 32.770031, 49.282909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.911396, 33.070347, 49.507687>,  <32.994717, 33.250538, 49.642555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.911396, 33.070347, 49.507687>,  <32.772526, 32.770031, 49.282909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911396, 33.070347, 49.507687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920751, 0.159146, 0.356217,
		0.178015, -0.641077, 0.746546,
		0.347173, 0.750795, 0.561942,
		33.015549, 33.295586, 49.676270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699642, 32.572933, 49.952309>,  <32.772526, 32.770031, 49.282909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699642, 32.572933, 49.952309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720745, 32.972374, 49.950752>,  <32.733406, 33.212036, 49.949818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720745, 32.972374, 49.950752>,  <32.699642, 32.572933, 49.952309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720745, 32.972374, 49.950752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807449, 0.044953, 0.588223,
		0.587574, -0.027890, 0.808690,
		0.052759, 0.998600, -0.003894,
		32.736572, 33.271954, 49.949585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427853, 32.873947, 50.647854>,  <32.699642, 32.572933, 49.952309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427853, 32.873947, 50.647854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416523, 33.178936, 50.389294>,  <32.409725, 33.361931, 50.234158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.416523, 33.178936, 50.389294>,  <32.427853, 32.873947, 50.647854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416523, 33.178936, 50.389294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737466, 0.420598, 0.528433,
		0.674790, 0.491665, 0.550385,
		-0.028321, 0.762472, -0.646402,
		32.408028, 33.407677, 50.195374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443020, 33.546459, 51.011219>,  <32.427853, 32.873947, 50.647854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443020, 33.546459, 51.011219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284122, 33.627403, 50.653168>,  <32.188786, 33.675968, 50.438339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284122, 33.627403, 50.653168>,  <32.443020, 33.546459, 51.011219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284122, 33.627403, 50.653168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769951, 0.457267, 0.445064,
		0.499376, 0.866000, -0.025837,
		-0.397239, 0.202361, -0.895126,
		32.164951, 33.688110, 50.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302395, 34.174320, 51.091629>,  <32.443020, 33.546459, 51.011219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302395, 34.174320, 51.091629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057941, 34.055004, 50.798359>,  <31.911270, 33.983414, 50.622398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057941, 34.055004, 50.798359>,  <32.302395, 34.174320, 51.091629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057941, 34.055004, 50.798359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771627, 0.430929, 0.467860,
		0.176385, 0.851658, -0.493525,
		-0.611131, -0.298294, -0.733171,
		31.874601, 33.965515, 50.578407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809584, 34.736820, 51.098473>,  <32.302395, 34.174320, 51.091629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809584, 34.736820, 51.098473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634642, 34.433376, 50.905293>,  <31.529676, 34.251312, 50.789387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634642, 34.433376, 50.905293>,  <31.809584, 34.736820, 51.098473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634642, 34.433376, 50.905293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880366, 0.251586, 0.402071,
		-0.183510, 0.601017, -0.777883,
		-0.437356, -0.758606, -0.482946,
		31.503435, 34.205795, 50.760410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159649, 34.950176, 50.761044>,  <31.809584, 34.736820, 51.098473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159649, 34.950176, 50.761044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122351, 34.556557, 50.821636>,  <31.099972, 34.320385, 50.857990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122351, 34.556557, 50.821636>,  <31.159649, 34.950176, 50.761044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122351, 34.556557, 50.821636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921470, 0.142918, 0.361203,
		-0.377091, -0.105901, -0.920102,
		-0.093247, -0.984052, 0.151478,
		31.094376, 34.261341, 50.867081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494547, 34.644947, 50.405731>,  <31.159649, 34.950176, 50.761044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494547, 34.644947, 50.405731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584625, 34.396236, 50.705780>,  <30.638672, 34.247009, 50.885807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584625, 34.396236, 50.705780>,  <30.494547, 34.644947, 50.405731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584625, 34.396236, 50.705780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969398, -0.065747, 0.236526,
		-0.097749, -0.780427, -0.617558,
		0.225194, -0.621780, 0.750118,
		30.652184, 34.209702, 50.930817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948038, 34.256748, 50.479782>,  <30.494547, 34.644947, 50.405731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948038, 34.256748, 50.479782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.124807, 34.174316, 50.829006>,  <30.230869, 34.124855, 51.038540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.124807, 34.174316, 50.829006>,  <29.948038, 34.256748, 50.479782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124807, 34.174316, 50.829006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883862, -0.266320, 0.384527,
		0.153270, -0.941597, -0.299839,
		0.441922, -0.206080, 0.873061,
		30.257383, 34.112492, 51.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720499, 33.651276, 50.694115>,  <29.948038, 34.256748, 50.479782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720499, 33.651276, 50.694115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.827925, 33.842857, 51.028416>,  <29.892380, 33.957806, 51.228996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.827925, 33.842857, 51.028416>,  <29.720499, 33.651276, 50.694115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827925, 33.842857, 51.028416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872590, -0.246521, 0.421680,
		0.407995, -0.842515, 0.351723,
		0.268565, 0.478953, 0.835749,
		29.908495, 33.986542, 51.279140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446442, 33.255062, 51.255379>,  <29.720499, 33.651276, 50.694115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446442, 33.255062, 51.255379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497263, 33.615047, 51.422195>,  <29.527756, 33.831039, 51.522285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497263, 33.615047, 51.422195>,  <29.446442, 33.255062, 51.255379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497263, 33.615047, 51.422195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833039, -0.131417, 0.537379,
		0.538427, -0.415691, 0.733006,
		0.127054, 0.899961, 0.417045,
		29.535379, 33.885036, 51.547310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271822, 33.150658, 51.958645>,  <29.446442, 33.255062, 51.255379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271822, 33.150658, 51.958645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.235796, 33.547813, 51.927528>,  <29.214180, 33.786106, 51.908859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.235796, 33.547813, 51.927528>,  <29.271822, 33.150658, 51.958645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235796, 33.547813, 51.927528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727005, -0.012156, 0.686525,
		0.680700, 0.118388, 0.722933,
		-0.090064, 0.992893, -0.077794,
		29.208776, 33.845680, 51.904190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978933, 33.304554, 52.590706>,  <29.271822, 33.150658, 51.958645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978933, 33.304554, 52.590706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898590, 33.614368, 52.350792>,  <28.850384, 33.800259, 52.206844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898590, 33.614368, 52.350792>,  <28.978933, 33.304554, 52.590706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898590, 33.614368, 52.350792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818810, 0.203375, 0.536832,
		0.537779, 0.598940, 0.593351,
		-0.200858, 0.774538, -0.599789,
		28.838333, 33.846729, 52.170856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726721, 33.911259, 52.964783>,  <28.978933, 33.304554, 52.590706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726721, 33.911259, 52.964783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604574, 34.045986, 52.608513>,  <28.531286, 34.126823, 52.394753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604574, 34.045986, 52.608513>,  <28.726721, 33.911259, 52.964783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604574, 34.045986, 52.608513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866880, 0.288724, 0.406396,
		0.394042, 0.896208, 0.203818,
		-0.305368, 0.336823, -0.890674,
		28.512964, 34.147034, 52.341312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295290, 34.559013, 53.152992>,  <28.726721, 33.911259, 52.964783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295290, 34.559013, 53.152992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194529, 34.494709, 52.771271>,  <28.134071, 34.456127, 52.542236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194529, 34.494709, 52.771271>,  <28.295290, 34.559013, 53.152992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194529, 34.494709, 52.771271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920331, 0.344695, 0.184867,
		0.299225, 0.924846, -0.234786,
		-0.251903, -0.160764, -0.954306,
		28.118958, 34.446480, 52.484978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851782, 35.157021, 53.011562>,  <28.295290, 34.559013, 53.152992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851782, 35.157021, 53.011562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.749031, 34.898132, 52.724476>,  <27.687382, 34.742798, 52.552223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.749031, 34.898132, 52.724476>,  <27.851782, 35.157021, 53.011562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749031, 34.898132, 52.724476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951631, 0.298917, 0.071037,
		0.168561, 0.701250, -0.692702,
		-0.256875, -0.647223, -0.717717,
		27.671968, 34.703964, 52.509159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401962, 35.523666, 52.511162>,  <27.851782, 35.157021, 53.011562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401962, 35.523666, 52.511162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.333664, 35.132187, 52.465553>,  <27.292685, 34.897301, 52.438187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.333664, 35.132187, 52.465553>,  <27.401962, 35.523666, 52.511162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333664, 35.132187, 52.465553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982975, 0.177167, -0.048704,
		0.067867, 0.103763, -0.992284,
		-0.170746, -0.978696, -0.114020,
		27.282440, 34.838577, 52.431347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773512, 35.541576, 52.261047>,  <27.401962, 35.523666, 52.511162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773512, 35.541576, 52.261047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.793135, 35.147079, 52.324192>,  <26.804909, 34.910381, 52.362080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.793135, 35.147079, 52.324192>,  <26.773512, 35.541576, 52.261047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793135, 35.147079, 52.324192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979752, -0.078235, -0.184297,
		0.194111, -0.145627, -0.970110,
		0.049058, -0.986241, 0.157864,
		26.807852, 34.851208, 52.371552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526600, 35.299744, 51.628101>,  <26.773512, 35.541576, 52.261047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526600, 35.299744, 51.628101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.494537, 35.053329, 51.941551>,  <26.475300, 34.905479, 52.129623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.494537, 35.053329, 51.941551>,  <26.526600, 35.299744, 51.628101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494537, 35.053329, 51.941551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995768, 0.014026, -0.090831,
		0.044964, -0.787591, -0.614555,
		-0.080157, -0.616038, 0.783627,
		26.470490, 34.868519, 52.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193575, 34.666172, 51.466560>,  <26.526600, 35.299744, 51.628101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193575, 34.666172, 51.466560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.149906, 34.682186, 51.863846>,  <26.123705, 34.691795, 52.102219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.149906, 34.682186, 51.863846>,  <26.193575, 34.666172, 51.466560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149906, 34.682186, 51.863846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993629, 0.023747, -0.110174,
		-0.027998, -0.998916, 0.037201,
		-0.109172, 0.040049, 0.993216,
		26.117155, 34.694199, 52.161812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692312, 34.216721, 51.549992>,  <26.193575, 34.666172, 51.466560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692312, 34.216721, 51.549992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.693474, 34.423069, 51.892658>,  <25.694170, 34.546879, 52.098259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.693474, 34.423069, 51.892658>,  <25.692312, 34.216721, 51.549992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693474, 34.423069, 51.892658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994783, -0.085867, 0.055080,
		0.101973, -0.852354, 0.512927,
		0.002904, 0.515867, 0.856663,
		25.694345, 34.577827, 52.149658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376926, 33.712627, 52.105907>,  <25.692312, 34.216721, 51.549992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376926, 33.712627, 52.105907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.339241, 34.089230, 52.235329>,  <25.316629, 34.315193, 52.312981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.339241, 34.089230, 52.235329>,  <25.376926, 33.712627, 52.105907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339241, 34.089230, 52.235329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995551, -0.088669, -0.031867,
		-0.001314, -0.325118, 0.945673,
		-0.094213, 0.941508, 0.323555,
		25.310978, 34.371681, 52.332394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820972, 33.596325, 52.691158>,  <25.376926, 33.712627, 52.105907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820972, 33.596325, 52.691158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.832491, 33.987297, 52.607445>,  <24.839401, 34.221882, 52.557217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.832491, 33.987297, 52.607445>,  <24.820972, 33.596325, 52.691158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832491, 33.987297, 52.607445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992811, 0.052303, 0.107666,
		0.116182, 0.204681, 0.971909,
		0.028796, 0.977431, -0.209286,
		24.841129, 34.280525, 52.544659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336960, 33.834572, 53.142727>,  <24.820972, 33.596325, 52.691158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336960, 33.834572, 53.142727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.367834, 34.101891, 52.846775>,  <24.386358, 34.262283, 52.669205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.367834, 34.101891, 52.846775>,  <24.336960, 33.834572, 53.142727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367834, 34.101891, 52.846775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992460, -0.019370, -0.121031,
		-0.095216, 0.743641, 0.661765,
		0.077185, 0.668299, -0.739878,
		24.390989, 34.302380, 52.624813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.481819, 30.911400, 52.304733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222843, 30.720140, 52.067348>,  <36.067459, 30.605385, 51.924915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222843, 30.720140, 52.067348>,  <36.481819, 30.911400, 52.304733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222843, 30.720140, 52.067348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731426, 0.608605, 0.307599,
		0.214107, 0.633226, -0.743763,
		-0.647437, -0.478148, -0.593464,
		36.028610, 30.576696, 51.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077644, 31.292009, 51.844616>,  <36.481819, 30.911400, 52.304733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077644, 31.292009, 51.844616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842113, 30.981209, 51.933659>,  <35.700794, 30.794727, 51.987083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842113, 30.981209, 51.933659>,  <36.077644, 31.292009, 51.844616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842113, 30.981209, 51.933659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714003, 0.629114, 0.307273,
		-0.378796, 0.021989, -0.925219,
		-0.588825, -0.777003, 0.222605,
		35.665466, 30.748108, 52.000439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568554, 31.300209, 51.337036>,  <36.077644, 31.292009, 51.844616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568554, 31.300209, 51.337036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435341, 31.123894, 51.670452>,  <35.355412, 31.018105, 51.870502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435341, 31.123894, 51.670452>,  <35.568554, 31.300209, 51.337036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435341, 31.123894, 51.670452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694491, 0.712608, 0.099359,
		-0.637785, -0.545798, -0.543447,
		-0.333035, -0.440788, 0.833542,
		35.335430, 30.991657, 51.920513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826309, 31.441566, 51.392185>,  <35.568554, 31.300209, 51.337036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826309, 31.441566, 51.392185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916950, 31.305744, 51.757339>,  <34.971333, 31.224251, 51.976433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916950, 31.305744, 51.757339>,  <34.826309, 31.441566, 51.392185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916950, 31.305744, 51.757339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720838, 0.571851, 0.391637,
		-0.655016, -0.746784, -0.115185,
		0.226599, -0.339558, 0.912882,
		34.984932, 31.203876, 52.031204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294697, 31.224874, 51.835209>,  <34.826309, 31.441566, 51.392185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294697, 31.224874, 51.835209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564156, 31.315653, 52.116547>,  <34.725830, 31.370119, 52.285351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564156, 31.315653, 52.116547>,  <34.294697, 31.224874, 51.835209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564156, 31.315653, 52.116547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697171, 0.510956, 0.502868,
		-0.245255, -0.829108, 0.502424,
		0.673649, 0.226945, 0.703344,
		34.766251, 31.383736, 52.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922203, 31.448414, 52.387859>,  <34.294697, 31.224874, 51.835209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922203, 31.448414, 52.387859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282166, 31.550049, 52.529625>,  <34.498142, 31.611031, 52.614685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282166, 31.550049, 52.529625>,  <33.922203, 31.448414, 52.387859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282166, 31.550049, 52.529625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434326, 0.595123, 0.676158,
		-0.039116, -0.762409, 0.645912,
		0.899906, 0.254088, 0.354413,
		34.552135, 31.626276, 52.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911171, 31.347437, 53.103455>,  <33.922203, 31.448414, 52.387859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911171, 31.347437, 53.103455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175232, 31.636740, 53.022366>,  <34.333668, 31.810322, 52.973713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175232, 31.636740, 53.022366>,  <33.911171, 31.347437, 53.103455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175232, 31.636740, 53.022366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426915, 0.583342, 0.690982,
		0.618012, -0.369610, 0.693865,
		0.660154, 0.723257, -0.202721,
		34.373280, 31.853716, 52.961552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032974, 31.685589, 53.745438>,  <33.911171, 31.347437, 53.103455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032974, 31.685589, 53.745438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190094, 31.936178, 53.476147>,  <34.284367, 32.086533, 53.314571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190094, 31.936178, 53.476147>,  <34.032974, 31.685589, 53.745438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190094, 31.936178, 53.476147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295787, 0.779239, 0.552537,
		0.870757, -0.017903, 0.491388,
		0.392800, 0.626471, -0.673232,
		34.307934, 32.124119, 53.274178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549854, 32.081127, 54.090530>,  <34.032974, 31.685589, 53.745438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549854, 32.081127, 54.090530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413502, 32.286633, 53.775608>,  <34.331692, 32.409935, 53.586655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413502, 32.286633, 53.775608>,  <34.549854, 32.081127, 54.090530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413502, 32.286633, 53.775608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227661, 0.767426, 0.599355,
		0.912126, 0.383545, -0.144636,
		-0.340877, 0.513760, -0.787308,
		34.311237, 32.440762, 53.539417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785942, 32.746429, 54.231174>,  <34.549854, 32.081127, 54.090530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785942, 32.746429, 54.231174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491486, 32.784969, 53.963200>,  <34.314812, 32.808094, 53.802414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491486, 32.784969, 53.963200>,  <34.785942, 32.746429, 54.231174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491486, 32.784969, 53.963200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331948, 0.811200, 0.481420,
		0.589836, 0.576777, -0.565174,
		-0.736141, 0.096351, -0.669935,
		34.270641, 32.813873, 53.762218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738335, 33.537045, 53.998726>,  <34.785942, 32.746429, 54.231174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738335, 33.537045, 53.998726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388489, 33.347988, 53.955521>,  <34.178581, 33.234554, 53.929596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388489, 33.347988, 53.955521>,  <34.738335, 33.537045, 53.998726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388489, 33.347988, 53.955521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473325, 0.784161, 0.401317,
		-0.104980, 0.402120, -0.909548,
		-0.874610, -0.472642, -0.108012,
		34.126106, 33.206196, 53.923119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392895, 34.153961, 53.826649>,  <34.738335, 33.537045, 53.998726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392895, 34.153961, 53.826649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129414, 33.880257, 53.951797>,  <33.971325, 33.716034, 54.026886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129414, 33.880257, 53.951797>,  <34.392895, 34.153961, 53.826649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129414, 33.880257, 53.951797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392717, 0.667372, 0.632762,
		-0.641777, 0.293935, -0.708325,
		-0.658707, -0.684263, 0.312871,
		33.931801, 33.674976, 54.045658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141212, 34.779831, 53.426327>,  <34.392895, 34.153961, 53.826649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141212, 34.779831, 53.426327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370361, 35.097084, 53.343620>,  <34.507851, 35.287437, 53.293999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370361, 35.097084, 53.343620>,  <34.141212, 34.779831, 53.426327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370361, 35.097084, 53.343620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666734, -0.597654, -0.445281,
		-0.476741, 0.117235, -0.871191,
		0.572874, 0.793136, -0.206762,
		34.542225, 35.335026, 53.281593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296722, 34.714096, 52.775772>,  <34.141212, 34.779831, 53.426327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296722, 34.714096, 52.775772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580002, 34.949009, 52.932510>,  <34.749969, 35.089958, 53.026554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580002, 34.949009, 52.932510>,  <34.296722, 34.714096, 52.775772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580002, 34.949009, 52.932510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696946, -0.492886, -0.520893,
		-0.112776, 0.641995, -0.758369,
		0.708201, 0.587287, 0.391850,
		34.792461, 35.125195, 53.050064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754368, 35.059757, 52.164356>,  <34.296722, 34.714096, 52.775772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754368, 35.059757, 52.164356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959213, 35.076420, 52.507519>,  <35.082119, 35.086418, 52.713417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959213, 35.076420, 52.507519>,  <34.754368, 35.059757, 52.164356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959213, 35.076420, 52.507519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838648, -0.239971, -0.488961,
		0.185506, 0.969886, -0.157826,
		0.512110, 0.041656, 0.857909,
		35.112846, 35.088917, 52.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110756, 35.587181, 52.047535>,  <34.754368, 35.059757, 52.164356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110756, 35.587181, 52.047535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292530, 35.413887, 52.358868>,  <35.401592, 35.309910, 52.545666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292530, 35.413887, 52.358868>,  <35.110756, 35.587181, 52.047535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292530, 35.413887, 52.358868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856953, -0.025881, -0.514744,
		0.243151, 0.900907, 0.359504,
		0.454433, -0.433239, 0.778328,
		35.428860, 35.283916, 52.592365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768627, 36.021233, 52.324638>,  <35.110756, 35.587181, 52.047535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768627, 36.021233, 52.324638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804379, 35.628571, 52.392002>,  <35.825829, 35.392971, 52.432419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804379, 35.628571, 52.392002>,  <35.768627, 36.021233, 52.324638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804379, 35.628571, 52.392002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903569, 0.008783, -0.428353,
		0.419017, 0.190452, 0.887780,
		0.089378, -0.981657, 0.168406,
		35.831192, 35.334072, 52.442524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461651, 36.016346, 52.436485>,  <35.768627, 36.021233, 52.324638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461651, 36.016346, 52.436485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395878, 35.623558, 52.473793>,  <36.356415, 35.387886, 52.496178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395878, 35.623558, 52.473793>,  <36.461651, 36.016346, 52.436485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395878, 35.623558, 52.473793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910470, -0.187476, -0.368643,
		0.379482, 0.024299, 0.924880,
		-0.164435, -0.981968, 0.093268,
		36.346546, 35.328968, 52.501774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119793, 35.648613, 52.716702>,  <36.461651, 36.016346, 52.436485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119793, 35.648613, 52.716702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892265, 35.385387, 52.519360>,  <36.755749, 35.227451, 52.400955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892265, 35.385387, 52.519360>,  <37.119793, 35.648613, 52.716702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892265, 35.385387, 52.519360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814631, -0.368185, -0.448124,
		0.113251, -0.656800, 0.745512,
		-0.568814, -0.658068, -0.493353,
		36.721622, 35.187965, 52.371353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477703, 34.967426, 52.733459>,  <37.119793, 35.648613, 52.716702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477703, 34.967426, 52.733459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217632, 34.930248, 52.431828>,  <37.061592, 34.907940, 52.250847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217632, 34.930248, 52.431828>,  <37.477703, 34.967426, 52.733459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217632, 34.930248, 52.431828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697539, -0.466454, -0.543930,
		-0.301188, -0.879649, 0.368108,
		-0.650173, -0.092945, -0.754080,
		37.022579, 34.902363, 52.205605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796394, 34.434002, 52.447784>,  <37.477703, 34.967426, 52.733459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796394, 34.434002, 52.447784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533508, 34.525837, 52.160629>,  <37.375778, 34.580936, 51.988338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533508, 34.525837, 52.160629>,  <37.796394, 34.434002, 52.447784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533508, 34.525837, 52.160629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475319, -0.612935, -0.631176,
		-0.584924, -0.756043, 0.293705,
		-0.657218, 0.229586, -0.717882,
		37.336342, 34.594715, 51.945263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581532, 33.849464, 52.218159>,  <37.796394, 34.434002, 52.447784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581532, 33.849464, 52.218159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535355, 34.116104, 51.923592>,  <37.507648, 34.276089, 51.746849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535355, 34.116104, 51.923592>,  <37.581532, 33.849464, 52.218159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535355, 34.116104, 51.923592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460318, -0.621063, -0.634340,
		-0.880215, -0.412220, -0.235149,
		-0.115445, 0.666600, -0.736422,
		37.500721, 34.316086, 51.702663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482174, 33.508247, 51.588200>,  <37.581532, 33.849464, 52.218159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482174, 33.508247, 51.588200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593105, 33.862904, 51.440166>,  <37.659664, 34.075699, 51.351349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593105, 33.862904, 51.440166>,  <37.482174, 33.508247, 51.588200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593105, 33.862904, 51.440166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495417, -0.462000, -0.735607,
		-0.823194, 0.020664, -0.567384,
		0.277332, 0.886639, -0.370078,
		37.676304, 34.128895, 51.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458389, 33.368477, 50.903423>,  <37.482174, 33.508247, 51.588200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458389, 33.368477, 50.903423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674831, 33.702114, 50.946289>,  <37.804699, 33.902298, 50.972008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674831, 33.702114, 50.946289>,  <37.458389, 33.368477, 50.903423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674831, 33.702114, 50.946289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701580, -0.377492, -0.604388,
		-0.463666, 0.402222, -0.789450,
		0.541109, 0.834097, 0.107161,
		37.837166, 33.952343, 50.978436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503174, 33.608093, 50.225010>,  <37.458389, 33.368477, 50.903423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503174, 33.608093, 50.225010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805214, 33.745789, 50.448196>,  <37.986439, 33.828407, 50.582108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805214, 33.745789, 50.448196>,  <37.503174, 33.608093, 50.225010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805214, 33.745789, 50.448196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624025, -0.116402, -0.772685,
		-0.201041, 0.931638, -0.302709,
		0.755099, 0.344240, 0.557964,
		38.031742, 33.849060, 50.615585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010262, 34.015808, 49.750504>,  <37.503174, 33.608093, 50.225010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010262, 34.015808, 49.750504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227093, 33.909203, 50.069283>,  <38.357193, 33.845242, 50.260551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227093, 33.909203, 50.069283>,  <38.010262, 34.015808, 49.750504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227093, 33.909203, 50.069283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787522, -0.169775, -0.592441,
		0.293193, 0.948762, 0.117852,
		0.542077, -0.266510, 0.796947,
		38.389717, 33.829250, 50.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889393, 34.707600, 49.989319>,  <38.010262, 34.015808, 49.750504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889393, 34.707600, 49.989319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227150, 34.794121, 50.185364>,  <38.429806, 34.846035, 50.302990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227150, 34.794121, 50.185364>,  <37.889393, 34.707600, 49.989319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227150, 34.794121, 50.185364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482034, 0.092409, -0.871265,
		-0.233749, 0.971943, -0.026237,
		0.844396, 0.216304, 0.490110,
		38.480469, 34.859013, 50.332397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276249, 35.341290, 49.764141>,  <37.889393, 34.707600, 49.989319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276249, 35.341290, 49.764141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507660, 35.040260, 49.889957>,  <38.646507, 34.859642, 49.965446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507660, 35.040260, 49.889957>,  <38.276249, 35.341290, 49.764141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507660, 35.040260, 49.889957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489956, 0.012331, -0.871660,
		0.652112, 0.658390, 0.375863,
		0.578527, -0.752576, 0.314541,
		38.681217, 34.814487, 49.984322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783154, 35.861069, 49.609417>,  <38.276249, 35.341290, 49.764141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783154, 35.861069, 49.609417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582794, 36.201637, 49.671619>,  <37.462578, 36.405979, 49.708942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582794, 36.201637, 49.671619>,  <37.783154, 35.861069, 49.609417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582794, 36.201637, 49.671619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861628, 0.473559, 0.182592,
		0.081819, 0.225453, -0.970812,
		-0.500903, 0.851418, 0.155510,
		37.432522, 36.457062, 49.718273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303909, 36.192680, 49.132389>,  <37.783154, 35.861069, 49.609417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303909, 36.192680, 49.132389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978672, 35.972961, 49.055286>,  <36.783531, 35.841129, 49.009026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978672, 35.972961, 49.055286>,  <37.303909, 36.192680, 49.132389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978672, 35.972961, 49.055286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581819, 0.777758, 0.237866,
		0.019256, 0.305554, -0.951980,
		-0.813090, -0.549299, -0.192754,
		36.734745, 35.808170, 48.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082069, 36.630962, 48.693851>,  <37.303909, 36.192680, 49.132389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082069, 36.630962, 48.693851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788059, 36.398354, 48.833324>,  <36.611652, 36.258789, 48.917007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788059, 36.398354, 48.833324>,  <37.082069, 36.630962, 48.693851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788059, 36.398354, 48.833324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574238, 0.807325, 0.135929,
		-0.360542, -0.100313, -0.927333,
		-0.735024, -0.581518, 0.348678,
		36.567551, 36.223900, 48.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454109, 36.968987, 48.359310>,  <37.082069, 36.630962, 48.693851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454109, 36.968987, 48.359310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342777, 36.760563, 48.682056>,  <36.275978, 36.635509, 48.875702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342777, 36.760563, 48.682056>,  <36.454109, 36.968987, 48.359310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342777, 36.760563, 48.682056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670425, 0.706953, 0.225271,
		-0.687794, -0.478242, -0.546098,
		-0.278332, -0.521058, 0.806864,
		36.259277, 36.604244, 48.924114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756092, 37.093708, 48.393211>,  <36.454109, 36.968987, 48.359310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756092, 37.093708, 48.393211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833992, 36.946430, 48.756859>,  <35.880733, 36.858063, 48.975048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833992, 36.946430, 48.756859>,  <35.756092, 37.093708, 48.393211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833992, 36.946430, 48.756859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629342, 0.664016, 0.403747,
		-0.752330, -0.650779, -0.102404,
		0.194752, -0.368198, 0.909121,
		35.892418, 36.835972, 49.029594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166023, 36.881916, 48.675838>,  <35.756092, 37.093708, 48.393211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166023, 36.881916, 48.675838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395947, 36.958282, 48.994122>,  <35.533901, 37.004101, 49.185089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395947, 36.958282, 48.994122>,  <35.166023, 36.881916, 48.675838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395947, 36.958282, 48.994122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706180, 0.606998, 0.364504,
		-0.413403, -0.771431, 0.483727,
		0.574811, 0.190912, 0.795704,
		35.568390, 37.015556, 49.232834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734112, 36.702477, 49.242264>,  <35.166023, 36.881916, 48.675838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734112, 36.702477, 49.242264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034542, 36.926659, 49.381851>,  <35.214798, 37.061169, 49.465603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034542, 36.926659, 49.381851>,  <34.734112, 36.702477, 49.242264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034542, 36.926659, 49.381851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660002, 0.623741, 0.418742,
		0.017018, -0.544827, 0.838376,
		0.751071, 0.560455, 0.348972,
		35.259865, 37.094795, 49.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367554, 37.010513, 49.673080>,  <34.734112, 36.702477, 49.242264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367554, 37.010513, 49.673080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714130, 37.209846, 49.685406>,  <34.922077, 37.329445, 49.692802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714130, 37.209846, 49.685406>,  <34.367554, 37.010513, 49.673080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714130, 37.209846, 49.685406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460276, 0.773314, 0.436041,
		0.193463, -0.391987, 0.899399,
		0.866440, 0.498329, 0.030814,
		34.974064, 37.359344, 49.694649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379787, 37.135426, 50.294868>,  <34.367554, 37.010513, 49.673080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379787, 37.135426, 50.294868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601097, 37.408527, 50.103985>,  <34.733883, 37.572388, 49.989452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601097, 37.408527, 50.103985>,  <34.379787, 37.135426, 50.294868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601097, 37.408527, 50.103985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622224, 0.719628, 0.308177,
		0.553823, 0.126424, 0.822981,
		0.553279, 0.682754, -0.477210,
		34.767082, 37.613354, 49.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629566, 37.680161, 50.716797>,  <34.379787, 37.135426, 50.294868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629566, 37.680161, 50.716797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651588, 37.854046, 50.357243>,  <34.664803, 37.958378, 50.141510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651588, 37.854046, 50.357243>,  <34.629566, 37.680161, 50.716797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651588, 37.854046, 50.357243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590158, 0.740336, 0.321893,
		0.805408, 0.512760, 0.297313,
		0.055058, 0.434717, -0.898882,
		34.668106, 37.984463, 50.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691227, 38.392776, 50.869385>,  <34.629566, 37.680161, 50.716797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691227, 38.392776, 50.869385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583298, 38.383400, 50.484333>,  <34.518539, 38.377773, 50.253304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583298, 38.383400, 50.484333>,  <34.691227, 38.392776, 50.869385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583298, 38.383400, 50.484333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484513, 0.867233, 0.114690,
		0.832132, 0.497350, -0.245356,
		-0.269822, -0.023441, -0.962625,
		34.502350, 38.376366, 50.195545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761112, 39.080864, 50.592220>,  <34.691227, 38.392776, 50.869385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761112, 39.080864, 50.592220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501770, 38.917839, 50.334995>,  <34.346165, 38.820026, 50.180660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501770, 38.917839, 50.334995>,  <34.761112, 39.080864, 50.592220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501770, 38.917839, 50.334995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568577, 0.820922, 0.052975,
		0.506315, 0.399978, -0.763978,
		-0.648356, -0.407558, -0.643064,
		34.307262, 38.795570, 50.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528759, 39.651382, 50.256958>,  <34.761112, 39.080864, 50.592220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528759, 39.651382, 50.256958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255486, 39.370579, 50.176517>,  <34.091522, 39.202099, 50.128254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255486, 39.370579, 50.176517>,  <34.528759, 39.651382, 50.256958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255486, 39.370579, 50.176517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727085, 0.679514, 0.098019,
		0.067841, 0.213183, -0.974654,
		-0.683187, -0.702007, -0.201100,
		34.050529, 39.159977, 50.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093998, 39.942287, 49.874588>,  <34.528759, 39.651382, 50.256958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093998, 39.942287, 49.874588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900314, 39.619789, 50.010536>,  <33.784103, 39.426289, 50.092106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900314, 39.619789, 50.010536>,  <34.093998, 39.942287, 49.874588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900314, 39.619789, 50.010536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762312, 0.579398, 0.288407,
		-0.429446, -0.119437, -0.895160,
		-0.484207, -0.806246, 0.339868,
		33.755051, 39.377914, 50.112495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441597, 39.982021, 49.618767>,  <34.093998, 39.942287, 49.874588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441597, 39.982021, 49.618767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424908, 39.747730, 49.942539>,  <33.414894, 39.607155, 50.136803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424908, 39.747730, 49.942539>,  <33.441597, 39.982021, 49.618767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424908, 39.747730, 49.942539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746859, 0.556422, 0.364138,
		-0.663672, -0.589340, -0.460671,
		-0.041726, -0.585725, 0.809435,
		33.412392, 39.572014, 50.185371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674648, 39.896111, 49.720165>,  <33.441597, 39.982021, 49.618767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674648, 39.896111, 49.720165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864674, 39.813511, 50.062317>,  <32.978687, 39.763950, 50.267609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864674, 39.813511, 50.062317>,  <32.674648, 39.896111, 49.720165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864674, 39.813511, 50.062317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785047, 0.339675, 0.517999,
		-0.397517, -0.917594, -0.000745,
		0.475059, -0.206499, 0.855381,
		33.007191, 39.751560, 50.318932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326366, 39.514194, 50.141399>,  <32.674648, 39.896111, 49.720165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326366, 39.514194, 50.141399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564663, 39.681931, 50.415405>,  <32.707642, 39.782574, 50.579811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564663, 39.681931, 50.415405>,  <32.326366, 39.514194, 50.141399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564663, 39.681931, 50.415405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803126, 0.301108, 0.514124,
		0.009328, -0.856439, 0.516164,
		0.595737, 0.419340, 0.685019,
		32.743385, 39.807732, 50.620911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002956, 39.372078, 50.795818>,  <32.326366, 39.514194, 50.141399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002956, 39.372078, 50.795818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265846, 39.659706, 50.886147>,  <32.423580, 39.832283, 50.940342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265846, 39.659706, 50.886147>,  <32.002956, 39.372078, 50.795818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265846, 39.659706, 50.886147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660831, 0.405691, 0.631441,
		0.362437, -0.564227, 0.741813,
		0.657223, 0.719070, 0.225821,
		32.463013, 39.875427, 50.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041584, 39.439827, 51.563683>,  <32.002956, 39.372078, 50.795818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041584, 39.439827, 51.563683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178127, 39.783909, 51.412148>,  <32.260052, 39.990360, 51.321224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178127, 39.783909, 51.412148>,  <32.041584, 39.439827, 51.563683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178127, 39.783909, 51.412148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597389, 0.509725, 0.619117,
		0.725674, 0.014975, 0.687876,
		0.341356, 0.860207, -0.378840,
		32.280533, 40.041969, 51.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821823, 39.922222, 52.085995>,  <32.041584, 39.439827, 51.563683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821823, 39.922222, 52.085995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900539, 40.175549, 51.786613>,  <31.947769, 40.327545, 51.606983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900539, 40.175549, 51.786613>,  <31.821823, 39.922222, 52.085995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900539, 40.175549, 51.786613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687334, 0.633496, 0.355323,
		0.699175, 0.444515, 0.559965,
		0.196788, 0.633316, -0.748455,
		31.959576, 40.365543, 51.562077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930574, 40.588905, 52.419014>,  <31.821823, 39.922222, 52.085995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930574, 40.588905, 52.419014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849314, 40.650570, 52.032238>,  <31.800558, 40.687569, 51.800175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849314, 40.650570, 52.032238>,  <31.930574, 40.588905, 52.419014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849314, 40.650570, 52.032238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618042, 0.745755, 0.248745,
		0.759443, 0.648140, -0.056222,
		-0.203150, 0.154160, -0.966936,
		31.788368, 40.696819, 51.742157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746218, 41.336044, 52.410683>,  <31.930574, 40.588905, 52.419014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746218, 41.336044, 52.410683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599134, 41.174374, 52.075676>,  <31.510883, 41.077370, 51.874672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599134, 41.174374, 52.075676>,  <31.746218, 41.336044, 52.410683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599134, 41.174374, 52.075676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802897, 0.592382, 0.066630,
		0.469197, 0.696937, -0.542340,
		-0.367710, -0.404181, -0.837513,
		31.488821, 41.053120, 51.824421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438072, 41.960434, 52.067673>,  <31.746218, 41.336044, 52.410683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438072, 41.960434, 52.067673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265577, 41.631710, 51.918720>,  <31.162081, 41.434475, 51.829350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265577, 41.631710, 51.918720>,  <31.438072, 41.960434, 52.067673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265577, 41.631710, 51.918720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856499, 0.502626, -0.117372,
		0.283627, 0.268330, -0.920627,
		-0.431236, -0.821807, -0.372383,
		31.136206, 41.385166, 51.807007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058292, 42.164593, 51.525593>,  <31.438072, 41.960434, 52.067673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058292, 42.164593, 51.525593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892467, 41.812668, 51.618599>,  <30.792973, 41.601513, 51.674404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892467, 41.812668, 51.618599>,  <31.058292, 42.164593, 51.525593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892467, 41.812668, 51.618599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902365, 0.430502, 0.020118,
		-0.117800, -0.201475, -0.972384,
		-0.414560, -0.879816, 0.232517,
		30.768099, 41.548721, 51.688354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358381, 42.108292, 51.136032>,  <31.058292, 42.164593, 51.525593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358381, 42.108292, 51.136032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313757, 41.846359, 51.435028>,  <30.286982, 41.689198, 51.614426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313757, 41.846359, 51.435028>,  <30.358381, 42.108292, 51.136032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313757, 41.846359, 51.435028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833658, 0.471081, 0.288265,
		-0.540896, -0.590995, -0.598463,
		-0.111561, -0.654835, 0.747493,
		30.280289, 41.649910, 51.659275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797655, 41.703876, 51.089314>,  <30.358381, 42.108292, 51.136032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797655, 41.703876, 51.089314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926661, 41.782120, 51.459766>,  <30.004065, 41.829063, 51.682037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926661, 41.782120, 51.459766>,  <29.797655, 41.703876, 51.089314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926661, 41.782120, 51.459766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600876, 0.798308, 0.040639,
		-0.731391, -0.569598, 0.375002,
		0.322515, 0.195606, 0.926133,
		30.023415, 41.840801, 51.737606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
