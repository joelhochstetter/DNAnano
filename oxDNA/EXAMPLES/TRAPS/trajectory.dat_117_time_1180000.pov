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
	<36.532192, 53.426609, 50.294327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544884, 53.043644, 50.179535>,  <36.552498, 52.813866, 50.110661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544884, 53.043644, 50.179535>,  <36.532192, 53.426609, 50.294327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544884, 53.043644, 50.179535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502386, 0.263492, -0.823517,
		0.864061, -0.118046, 0.489350,
		0.031727, -0.957412, -0.286978,
		36.554401, 52.756420, 50.093441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223358, 53.119518, 50.475452>,  <36.532192, 53.426609, 50.294327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223358, 53.119518, 50.475452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358459, 52.766647, 50.606712>,  <37.439522, 52.554924, 50.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358459, 52.766647, 50.606712>,  <37.223358, 53.119518, 50.475452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358459, 52.766647, 50.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849128, 0.436000, 0.298137,
		-0.406083, 0.177943, 0.896344,
		0.337754, -0.882180, 0.328149,
		37.459785, 52.501995, 50.705158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216110, 52.958813, 51.212849>,  <37.223358, 53.119518, 50.475452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216110, 52.958813, 51.212849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519108, 52.796097, 51.008606>,  <37.700909, 52.698467, 50.886059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519108, 52.796097, 51.008606>,  <37.216110, 52.958813, 51.212849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519108, 52.796097, 51.008606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645212, 0.585679, 0.490593,
		0.099486, -0.701074, 0.706114,
		0.757498, -0.406787, -0.510609,
		37.746357, 52.674061, 50.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758659, 52.487633, 51.573421>,  <37.216110, 52.958813, 51.212849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758659, 52.487633, 51.573421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876209, 52.733368, 51.280510>,  <37.946739, 52.880810, 51.104763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876209, 52.733368, 51.280510>,  <37.758659, 52.487633, 51.573421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876209, 52.733368, 51.280510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376118, 0.629980, 0.679457,
		0.878734, -0.475097, -0.045927,
		0.293875, 0.614336, -0.732277,
		37.964371, 52.917667, 51.060825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545349, 52.653820, 51.490593>,  <37.758659, 52.487633, 51.573421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545349, 52.653820, 51.490593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316612, 52.960701, 51.374386>,  <38.179371, 53.144829, 51.304661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316612, 52.960701, 51.374386>,  <38.545349, 52.653820, 51.490593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316612, 52.960701, 51.374386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220854, 0.485025, 0.846153,
		0.790077, 0.419703, -0.446796,
		-0.571840, 0.767203, -0.290514,
		38.145061, 53.190861, 51.287231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632168, 52.012344, 51.849827>,  <38.545349, 52.653820, 51.490593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632168, 52.012344, 51.849827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741737, 52.085739, 51.472191>,  <38.807480, 52.129776, 51.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741737, 52.085739, 51.472191>,  <38.632168, 52.012344, 51.849827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741737, 52.085739, 51.472191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938082, -0.267414, 0.220208,
		-0.212057, -0.945950, -0.245378,
		0.273923, 0.183488, -0.944086,
		38.823914, 52.140785, 51.188965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940975, 51.320553, 51.620373>,  <38.632168, 52.012344, 51.849827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940975, 51.320553, 51.620373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074619, 51.675697, 51.493835>,  <39.154808, 51.888783, 51.417912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074619, 51.675697, 51.493835>,  <38.940975, 51.320553, 51.620373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074619, 51.675697, 51.493835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933424, -0.265143, 0.241700,
		0.130720, -0.376038, -0.917337,
		0.334114, 0.887860, -0.316344,
		39.174854, 51.942055, 51.398933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419857, 51.244976, 51.117718>,  <38.940975, 51.320553, 51.620373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419857, 51.244976, 51.117718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509659, 51.574028, 51.326668>,  <39.563541, 51.771458, 51.452038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509659, 51.574028, 51.326668>,  <39.419857, 51.244976, 51.117718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509659, 51.574028, 51.326668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895978, -0.385042, 0.221282,
		0.383170, 0.418358, -0.823503,
		0.224508, 0.822629, 0.522376,
		39.577011, 51.820816, 51.483379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141640, 51.434189, 50.865643>,  <39.419857, 51.244976, 51.117718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141640, 51.434189, 50.865643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068127, 51.565285, 51.236328>,  <40.024017, 51.643944, 51.458740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068127, 51.565285, 51.236328>,  <40.141640, 51.434189, 50.865643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068127, 51.565285, 51.236328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942093, -0.210306, 0.261212,
		0.280505, 0.921062, -0.270114,
		-0.183786, 0.327744, 0.926718,
		40.012989, 51.663609, 51.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559322, 52.036957, 51.133659>,  <40.141640, 51.434189, 50.865643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559322, 52.036957, 51.133659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470123, 51.777485, 51.424721>,  <40.416603, 51.621803, 51.599358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470123, 51.777485, 51.424721>,  <40.559322, 52.036957, 51.133659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470123, 51.777485, 51.424721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964888, -0.040608, 0.259504,
		-0.138786, 0.759978, 0.634959,
		-0.223001, -0.648680, 0.727657,
		40.403221, 51.582882, 51.643017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237095, 51.481579, 51.247826>,  <40.559322, 52.036957, 51.133659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237095, 51.481579, 51.247826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560051, 51.704834, 51.324356>,  <41.753822, 51.838787, 51.370274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560051, 51.704834, 51.324356>,  <41.237095, 51.481579, 51.247826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560051, 51.704834, 51.324356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493217, -0.816421, 0.300323,
		0.323822, -0.148113, -0.934453,
		0.807388, 0.558139, 0.191324,
		41.802269, 51.872276, 51.381752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789120, 50.946159, 51.387684>,  <41.237095, 51.481579, 51.247826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789120, 50.946159, 51.387684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014420, 51.266811, 51.467812>,  <42.149601, 51.459202, 51.515888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014420, 51.266811, 51.467812>,  <41.789120, 50.946159, 51.387684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014420, 51.266811, 51.467812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739991, -0.597249, 0.309365,
		0.367638, -0.026016, -0.929605,
		0.563254, 0.801634, 0.200320,
		42.183395, 51.507301, 51.527908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555164, 50.883938, 51.127541>,  <41.789120, 50.946159, 51.387684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555164, 50.883938, 51.127541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533909, 51.154652, 51.421242>,  <42.521156, 51.317081, 51.597466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533909, 51.154652, 51.421242>,  <42.555164, 50.883938, 51.127541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533909, 51.154652, 51.421242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847826, -0.357918, 0.391263,
		0.527606, 0.643314, -0.554779,
		-0.053140, 0.676788, 0.734258,
		42.517967, 51.357689, 51.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193745, 51.183224, 51.118885>,  <42.555164, 50.883938, 51.127541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193745, 51.183224, 51.118885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017048, 51.182251, 51.477741>,  <42.911030, 51.181667, 51.693054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017048, 51.182251, 51.477741>,  <43.193745, 51.183224, 51.118885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017048, 51.182251, 51.477741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749648, -0.550346, 0.367624,
		0.492844, 0.834933, 0.244932,
		-0.441739, -0.002431, 0.897141,
		42.884525, 51.181522, 51.746883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486179, 51.522038, 51.775211>,  <43.193745, 51.183224, 51.118885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486179, 51.522038, 51.775211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710564, 51.524822, 52.106339>,  <43.845192, 51.526493, 52.305016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710564, 51.524822, 52.106339>,  <43.486179, 51.522038, 51.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710564, 51.524822, 52.106339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285479, -0.940252, -0.185548,
		0.777065, 0.340409, -0.529426,
		0.560956, 0.006957, 0.827816,
		43.878849, 51.526909, 52.354683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202900, 51.270481, 51.688236>,  <43.486179, 51.522038, 51.775211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202900, 51.270481, 51.688236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084625, 51.212856, 52.065979>,  <44.013660, 51.178284, 52.292625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084625, 51.212856, 52.065979>,  <44.202900, 51.270481, 51.688236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084625, 51.212856, 52.065979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188160, -0.977981, -0.090273,
		0.936571, 0.150998, 0.316284,
		-0.295689, -0.144059, 0.944360,
		43.995918, 51.169640, 52.349285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666664, 50.852551, 52.124569>,  <44.202900, 51.270481, 51.688236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666664, 50.852551, 52.124569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286087, 50.794762, 52.233299>,  <44.057743, 50.760090, 52.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286087, 50.794762, 52.233299>,  <44.666664, 50.852551, 52.124569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286087, 50.794762, 52.233299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096621, -0.978558, -0.181906,
		0.292281, -0.146808, 0.944997,
		-0.951439, -0.144474, 0.271829,
		44.000656, 50.751419, 52.314846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073444, 51.346878, 52.501881>,  <44.666664, 50.852551, 52.124569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073444, 51.346878, 52.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263653, 51.670570, 52.639885>,  <45.377777, 51.864784, 52.722687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263653, 51.670570, 52.639885>,  <45.073444, 51.346878, 52.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263653, 51.670570, 52.639885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317444, -0.523607, 0.790610,
		0.820434, -0.266429, -0.505870,
		0.475519, 0.809228, 0.345009,
		45.406307, 51.913338, 52.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653702, 51.386303, 52.994068>,  <45.073444, 51.346878, 52.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653702, 51.386303, 52.994068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970085, 51.296284, 53.221657>,  <46.159916, 51.242271, 53.358212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970085, 51.296284, 53.221657>,  <45.653702, 51.386303, 52.994068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970085, 51.296284, 53.221657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483972, -0.338844, -0.806818,
		0.374368, 0.913530, -0.159094,
		0.790961, -0.225050, 0.568976,
		46.207375, 51.228767, 53.392349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291893, 51.745380, 52.756214>,  <45.653702, 51.386303, 52.994068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291893, 51.745380, 52.756214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315491, 51.380295, 52.917946>,  <46.329651, 51.161243, 53.014984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315491, 51.380295, 52.917946>,  <46.291893, 51.745380, 52.756214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315491, 51.380295, 52.917946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469046, -0.332193, -0.818318,
		0.881201, 0.237922, 0.408506,
		0.058993, -0.912711, 0.404325,
		46.333187, 51.106483, 53.039242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986126, 51.463314, 52.866726>,  <46.291893, 51.745380, 52.756214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986126, 51.463314, 52.866726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736336, 51.158966, 52.796188>,  <46.586460, 50.976357, 52.753864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736336, 51.158966, 52.796188>,  <46.986126, 51.463314, 52.866726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736336, 51.158966, 52.796188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627129, -0.353888, -0.693882,
		0.465549, -0.543908, 0.698161,
		-0.624478, -0.760873, -0.176348,
		46.548992, 50.930702, 52.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.611389, 51.704891, 53.029545>,  <46.986126, 51.463314, 52.866726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.611389, 51.704891, 53.029545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505936, 51.505363, 52.699287>,  <47.442665, 51.385647, 52.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505936, 51.505363, 52.699287>,  <47.611389, 51.704891, 53.029545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.505936, 51.505363, 52.699287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936331, -0.338105, -0.094709,
		-0.231911, -0.798040, 0.556192,
		-0.263633, -0.498816, -0.825639,
		47.426846, 51.355721, 52.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751125, 51.010529, 52.861530>,  <47.611389, 51.704891, 53.029545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751125, 51.010529, 52.861530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753498, 51.084145, 52.468369>,  <47.754921, 51.128315, 52.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753498, 51.084145, 52.468369>,  <47.751125, 51.010529, 52.861530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753498, 51.084145, 52.468369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645347, 0.750127, 0.144353,
		0.763867, -0.635168, -0.114322,
		0.005933, 0.184044, -0.982900,
		47.755280, 51.139359, 52.173500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.424679, 50.846649, 52.461937>,  <47.751125, 51.010529, 52.861530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.424679, 50.846649, 52.461937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.198288, 51.160564, 52.360916>,  <48.062454, 51.348911, 52.300304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.198288, 51.160564, 52.360916>,  <48.424679, 50.846649, 52.461937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.198288, 51.160564, 52.360916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563217, 0.591774, 0.576707,
		0.602044, 0.184162, -0.776934,
		-0.565977, 0.784786, -0.252551,
		48.028496, 51.396000, 52.285152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.856304, 51.369991, 52.347202>,  <48.424679, 50.846649, 52.461937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.856304, 51.369991, 52.347202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524704, 51.576015, 52.434349>,  <48.325745, 51.699631, 52.486637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524704, 51.576015, 52.434349>,  <48.856304, 51.369991, 52.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.524704, 51.576015, 52.434349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539700, 0.634723, 0.553038,
		0.146562, 0.576053, -0.804166,
		-0.829001, 0.515063, 0.217869,
		48.276005, 51.730534, 52.499710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.901127, 52.117550, 52.196270>,  <48.856304, 51.369991, 52.347202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.901127, 52.117550, 52.196270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.660034, 52.030285, 52.503284>,  <48.515377, 51.977924, 52.687492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.660034, 52.030285, 52.503284>,  <48.901127, 52.117550, 52.196270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.660034, 52.030285, 52.503284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580022, 0.540791, 0.609196,
		-0.547983, 0.812373, -0.199413,
		-0.602735, -0.218165, 0.767538,
		48.479214, 51.964836, 52.733547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.639908, 52.790642, 52.493652>,  <48.901127, 52.117550, 52.196270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.639908, 52.790642, 52.493652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.708572, 52.482681, 52.739510>,  <48.749771, 52.297905, 52.887024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.708572, 52.482681, 52.739510>,  <48.639908, 52.790642, 52.493652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.708572, 52.482681, 52.739510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709837, 0.529286, 0.464744,
		-0.683128, 0.356516, 0.637364,
		0.171659, -0.769904, 0.614639,
		48.760071, 52.251709, 52.923901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.517105, 52.821938, 53.278744>,  <48.639908, 52.790642, 52.493652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.517105, 52.821938, 53.278744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.821087, 52.588417, 53.164452>,  <49.003475, 52.448303, 53.095875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.821087, 52.588417, 53.164452>,  <48.517105, 52.821938, 53.278744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.821087, 52.588417, 53.164452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647362, 0.640467, 0.413188,
		-0.058220, -0.498975, 0.864659,
		0.759956, -0.583803, -0.285729,
		49.049072, 52.413277, 53.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.870396, 52.671825, 54.016441>,  <48.517105, 52.821938, 53.278744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.870396, 52.671825, 54.016441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.056465, 52.613243, 53.667233>,  <49.168106, 52.578094, 53.457706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.056465, 52.613243, 53.667233>,  <48.870396, 52.671825, 54.016441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.056465, 52.613243, 53.667233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753476, 0.583156, 0.303649,
		0.464636, -0.799049, 0.381620,
		0.465174, -0.146456, -0.873020,
		49.196018, 52.569305, 53.405327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.429981, 52.683212, 54.233509>,  <48.870396, 52.671825, 54.016441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.429981, 52.683212, 54.233509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.484959, 52.785515, 53.850739>,  <49.517944, 52.846897, 53.621078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.484959, 52.785515, 53.850739>,  <49.429981, 52.683212, 54.233509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.484959, 52.785515, 53.850739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776810, 0.571571, 0.264335,
		0.614554, -0.779676, -0.120117,
		0.137441, 0.255756, -0.956921,
		49.526192, 52.862240, 53.563663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.932182, 52.424229, 53.780544>,  <49.429981, 52.683212, 54.233509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.932182, 52.424229, 53.780544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.832016, 52.566463, 53.420357>,  <49.771915, 52.651806, 53.204243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.832016, 52.566463, 53.420357>,  <49.932182, 52.424229, 53.780544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.832016, 52.566463, 53.420357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661378, 0.742074, 0.109113,
		0.707015, -0.568227, -0.421008,
		-0.250418, 0.355590, -0.900470,
		49.756889, 52.673141, 53.150215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.448135, 52.492165, 53.308636>,  <49.932182, 52.424229, 53.780544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.448135, 52.492165, 53.308636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.199589, 52.774902, 53.173416>,  <50.050461, 52.944546, 53.092285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.199589, 52.774902, 53.173416>,  <50.448135, 52.492165, 53.308636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.199589, 52.774902, 53.173416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679664, 0.700912, 0.216284,
		0.389821, -0.095367, -0.915939,
		-0.621367, 0.706843, -0.338048,
		50.013180, 52.986954, 53.072002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.886803, 53.016697, 53.008904>,  <50.448135, 52.492165, 53.308636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.886803, 53.016697, 53.008904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.536427, 53.193218, 53.086853>,  <50.326199, 53.299129, 53.133621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.536427, 53.193218, 53.086853>,  <50.886803, 53.016697, 53.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.536427, 53.193218, 53.086853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452467, 0.891662, 0.014595,
		-0.167320, 0.100958, -0.980720,
		-0.875944, 0.441302, 0.194873,
		50.273643, 53.325607, 53.145313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.369518, 53.603577, 53.259171>,  <50.886803, 53.016697, 53.008904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.369518, 53.603577, 53.259171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.092999, 53.479572, 53.520245>,  <50.927086, 53.405170, 53.676888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.092999, 53.479572, 53.520245>,  <51.369518, 53.603577, 53.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.092999, 53.479572, 53.520245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722266, -0.322673, 0.611730,
		0.020960, 0.894301, 0.446974,
		-0.691298, -0.310013, 0.652687,
		50.885609, 53.386570, 53.716049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.505875, 53.899040, 54.037540>,  <51.369518, 53.603577, 53.259171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.505875, 53.899040, 54.037540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322147, 53.544495, 54.014282>,  <51.211910, 53.331768, 54.000328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322147, 53.544495, 54.014282>,  <51.505875, 53.899040, 54.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.322147, 53.544495, 54.014282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711560, -0.406334, 0.573215,
		-0.531703, 0.221918, 0.817340,
		-0.459320, -0.886366, -0.058141,
		51.184353, 53.278584, 53.996841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.291683, 53.663345, 54.682251>,  <51.505875, 53.899040, 54.037540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.291683, 53.663345, 54.682251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.378567, 53.360607, 54.435677>,  <51.430698, 53.178963, 54.287731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.378567, 53.360607, 54.435677>,  <51.291683, 53.663345, 54.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.378567, 53.360607, 54.435677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728092, -0.295006, 0.618752,
		-0.650156, -0.583223, 0.486979,
		0.217209, -0.756850, -0.616440,
		51.443729, 53.133553, 54.250744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.323994, 53.085632, 55.068741>,  <51.291683, 53.663345, 54.682251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.323994, 53.085632, 55.068741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.570393, 53.042892, 54.756554>,  <51.718231, 53.017250, 54.569241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.570393, 53.042892, 54.756554>,  <51.323994, 53.085632, 55.068741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.570393, 53.042892, 54.756554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781521, -0.041442, 0.622501,
		-0.098858, -0.993411, 0.057976,
		0.615997, -0.106849, -0.780468,
		51.755192, 53.010838, 54.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.884155, 52.443119, 55.147804>,  <51.323994, 53.085632, 55.068741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.884155, 52.443119, 55.147804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026653, 52.737190, 54.917114>,  <52.112152, 52.913631, 54.778702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026653, 52.737190, 54.917114>,  <51.884155, 52.443119, 55.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.026653, 52.737190, 54.917114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885513, -0.068613, 0.459520,
		0.298257, -0.674395, -0.675451,
		0.356243, 0.735176, -0.576721,
		52.133526, 52.957745, 54.744099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.653625, 52.427586, 55.013481>,  <51.884155, 52.443119, 55.147804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.653625, 52.427586, 55.013481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.608891, 52.810844, 54.908066>,  <52.582050, 53.040798, 54.844818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.608891, 52.810844, 54.908066>,  <52.653625, 52.427586, 55.013481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.608891, 52.810844, 54.908066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914168, 0.203171, 0.350740,
		0.389602, -0.201692, -0.898627,
		-0.111834, 0.958145, -0.263536,
		52.575340, 53.098289, 54.829006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.219078, 52.665131, 54.664391>,  <52.653625, 52.427586, 55.013481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.219078, 52.665131, 54.664391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.100903, 53.005451, 54.838219>,  <53.029995, 53.209644, 54.942516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.100903, 53.005451, 54.838219>,  <53.219078, 52.665131, 54.664391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.100903, 53.005451, 54.838219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948137, 0.205287, 0.242680,
		0.117260, 0.483732, -0.867325,
		-0.295443, 0.850800, 0.434572,
		53.012268, 53.260693, 54.968590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.608463, 53.135490, 54.391697>,  <53.219078, 52.665131, 54.664391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.608463, 53.135490, 54.391697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.500835, 53.309914, 54.735199>,  <53.436256, 53.414566, 54.941299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.500835, 53.309914, 54.735199>,  <53.608463, 53.135490, 54.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.500835, 53.309914, 54.735199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956735, 0.223518, 0.186275,
		-0.110719, 0.871718, -0.477335,
		-0.269072, 0.436059, 0.858751,
		53.420113, 53.440731, 54.992825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.191517, 53.687988, 54.245972>,  <53.608463, 53.135490, 54.391697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.191517, 53.687988, 54.245972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.167419, 53.592102, 54.633560>,  <54.152962, 53.534569, 54.866112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.167419, 53.592102, 54.633560>,  <54.191517, 53.687988, 54.245972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.167419, 53.592102, 54.633560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988575, 0.120044, 0.091158,
		-0.138172, 0.963392, 0.229747,
		-0.060241, -0.239718, 0.968972,
		54.149345, 53.520187, 54.924252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.537441, 54.251865, 54.728134>,  <54.191517, 53.687988, 54.245972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.537441, 54.251865, 54.728134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549065, 53.871902, 54.852608>,  <54.556038, 53.643925, 54.927292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549065, 53.871902, 54.852608>,  <54.537441, 54.251865, 54.728134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.549065, 53.871902, 54.852608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964943, 0.107895, 0.239256,
		-0.260846, 0.293327, 0.919738,
		0.029055, -0.949904, 0.311188,
		54.557781, 53.586929, 54.945965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.917751, 54.245113, 55.409168>,  <54.537441, 54.251865, 54.728134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.917751, 54.245113, 55.409168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.934387, 53.878624, 55.249763>,  <54.944370, 53.658730, 55.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.934387, 53.878624, 55.249763>,  <54.917751, 54.245113, 55.409168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.934387, 53.878624, 55.249763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957885, -0.076860, 0.276675,
		-0.284125, -0.393237, 0.874436,
		0.041589, -0.916219, -0.398513,
		54.946865, 53.603760, 55.130211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.175457, 53.744026, 55.926552>,  <54.917751, 54.245113, 55.409168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.175457, 53.744026, 55.926552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.281723, 53.638321, 55.555695>,  <55.345482, 53.574898, 55.333179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.281723, 53.638321, 55.555695>,  <55.175457, 53.744026, 55.926552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.281723, 53.638321, 55.555695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958324, -0.032411, 0.283841,
		-0.105058, -0.963906, 0.244638,
		0.265667, -0.264262, -0.927139,
		55.361423, 53.559044, 55.277554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.805977, 53.787769, 56.425659>,  <55.175457, 53.744026, 55.926552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.805977, 53.787769, 56.425659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.171898, 53.827690, 56.582214>,  <56.391449, 53.851643, 56.676147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.171898, 53.827690, 56.582214>,  <55.805977, 53.787769, 56.425659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.171898, 53.827690, 56.582214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403027, -0.289551, -0.868176,
		0.026681, 0.951945, -0.305104,
		0.914799, 0.099801, 0.391385,
		56.446339, 53.857632, 56.699631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.265965, 54.416805, 56.129589>,  <55.805977, 53.787769, 56.425659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.265965, 54.416805, 56.129589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.454788, 54.086922, 56.254173>,  <56.568081, 53.888992, 56.328922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.454788, 54.086922, 56.254173>,  <56.265965, 54.416805, 56.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.454788, 54.086922, 56.254173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357284, -0.144009, -0.922827,
		0.805921, 0.546910, 0.226675,
		0.472060, -0.824713, 0.311462,
		56.596405, 53.839508, 56.347610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.936390, 54.436176, 56.069889>,  <56.265965, 54.416805, 56.129589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.936390, 54.436176, 56.069889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.793961, 54.064644, 56.028946>,  <56.708504, 53.841724, 56.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.793961, 54.064644, 56.028946>,  <56.936390, 54.436176, 56.069889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.793961, 54.064644, 56.028946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385809, -0.046365, -0.921413,
		0.851095, -0.367581, 0.374862,
		-0.356074, -0.928835, -0.102355,
		56.687138, 53.785992, 55.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.453697, 53.843468, 55.952908>,  <56.936390, 54.436176, 56.069889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.453697, 53.843468, 55.952908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095131, 53.869572, 55.777550>,  <56.879993, 53.885235, 55.672337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095131, 53.869572, 55.777550>,  <57.453697, 53.843468, 55.952908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.095131, 53.869572, 55.777550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440809, 0.234317, -0.866478,
		0.046179, -0.969968, -0.238810,
		-0.896412, 0.065256, -0.438391,
		56.826206, 53.889149, 55.646034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.276493, 53.337299, 55.365658>,  <57.453697, 53.843468, 55.952908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.276493, 53.337299, 55.365658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159081, 53.711227, 55.285706>,  <57.088634, 53.935585, 55.237732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159081, 53.711227, 55.285706>,  <57.276493, 53.337299, 55.365658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.159081, 53.711227, 55.285706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640838, 0.037269, -0.766771,
		-0.709343, -0.353163, -0.610007,
		-0.293529, 0.934819, -0.199884,
		57.071022, 53.991673, 55.225739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.914951, 53.335777, 54.698936>,  <57.276493, 53.337299, 55.365658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.914951, 53.335777, 54.698936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.109299, 53.673794, 54.788231>,  <57.225906, 53.876606, 54.841808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.109299, 53.673794, 54.788231>,  <56.914951, 53.335777, 54.698936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.109299, 53.673794, 54.788231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585256, -0.124854, -0.801178,
		-0.649160, 0.519914, -0.555230,
		0.485867, 0.845045, 0.223233,
		57.255058, 53.927307, 54.855202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.907181, 53.904900, 54.130238>,  <56.914951, 53.335777, 54.698936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.907181, 53.904900, 54.130238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.258331, 53.913754, 54.321587>,  <57.469021, 53.919064, 54.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.258331, 53.913754, 54.321587>,  <56.907181, 53.904900, 54.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.258331, 53.913754, 54.321587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474517, -0.174822, -0.862711,
		0.064538, 0.984351, -0.163974,
		0.877877, 0.022131, 0.478374,
		57.521694, 53.920391, 54.465099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.217274, 54.442898, 53.823376>,  <56.907181, 53.904900, 54.130238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.217274, 54.442898, 53.823376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.461266, 54.150650, 53.946098>,  <57.607658, 53.975304, 54.019730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.461266, 54.150650, 53.946098>,  <57.217274, 54.442898, 53.823376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.461266, 54.150650, 53.946098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202697, -0.230432, -0.951743,
		0.766057, 0.642728, 0.007536,
		0.609976, -0.730617, 0.306803,
		57.644257, 53.931465, 54.038139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.102169, 54.492104, 53.103508>,  <57.217274, 54.442898, 53.823376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.102169, 54.492104, 53.103508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.178970, 54.101902, 53.060566>,  <57.225052, 53.867779, 53.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.178970, 54.101902, 53.060566>,  <57.102169, 54.492104, 53.103508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.178970, 54.101902, 53.060566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066010, -0.121976, 0.990335,
		-0.979172, -0.183058, -0.087813,
		0.192000, -0.975506, -0.107352,
		57.236572, 53.809250, 53.028358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.348019, 55.267010, 53.095844>,  <57.102169, 54.492104, 53.103508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.348019, 55.267010, 53.095844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709381, 55.166164, 52.957111>,  <57.926197, 55.105656, 52.873871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709381, 55.166164, 52.957111>,  <57.348019, 55.267010, 53.095844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.709381, 55.166164, 52.957111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098511, 0.909275, -0.404369,
		0.417315, 0.331143, 0.846282,
		0.903407, -0.252117, -0.346832,
		57.980404, 55.090530, 52.853062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.029037, 55.603092, 53.316555>,  <57.348019, 55.267010, 53.095844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.029037, 55.603092, 53.316555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.857773, 55.947483, 53.426395>,  <57.755016, 56.154118, 53.492298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.857773, 55.947483, 53.426395>,  <58.029037, 55.603092, 53.316555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.857773, 55.947483, 53.426395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755443, 0.174228, 0.631626,
		0.495971, 0.477879, -0.725014,
		-0.428158, 0.860974, 0.274599,
		57.729324, 56.205776, 53.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.598824, 56.007011, 53.529705>,  <58.029037, 55.603092, 53.316555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.598824, 56.007011, 53.529705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.301918, 56.240112, 53.662041>,  <58.123775, 56.379971, 53.741444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.301918, 56.240112, 53.662041>,  <58.598824, 56.007011, 53.529705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.301918, 56.240112, 53.662041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612110, 0.388700, 0.688646,
		0.272711, 0.713664, -0.645223,
		-0.742260, 0.582749, 0.330838,
		58.079239, 56.414936, 53.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.783947, 56.799500, 53.602070>,  <58.598824, 56.007011, 53.529705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.783947, 56.799500, 53.602070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479057, 56.734100, 53.852600>,  <58.296124, 56.694862, 54.002918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479057, 56.734100, 53.852600>,  <58.783947, 56.799500, 53.602070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.479057, 56.734100, 53.852600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442882, 0.573950, 0.688794,
		-0.472097, 0.802403, -0.365066,
		-0.762220, -0.163497, 0.626330,
		58.250393, 56.685051, 54.040501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.361038, 57.456596, 53.906399>,  <58.783947, 56.799500, 53.602070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.361038, 57.456596, 53.906399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.338875, 57.152069, 54.164803>,  <58.325577, 56.969353, 54.319843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.338875, 57.152069, 54.164803>,  <58.361038, 57.456596, 53.906399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.338875, 57.152069, 54.164803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385451, 0.580538, 0.717218,
		-0.921063, 0.288746, 0.261283,
		-0.055409, -0.761315, 0.646010,
		58.322250, 56.923676, 54.358604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.998470, 57.307915, 54.160793>,  <58.361038, 57.456596, 53.906399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.998470, 57.307915, 54.160793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.997002, 57.442101, 54.537613>,  <58.996120, 57.522614, 54.763702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.997002, 57.442101, 54.537613>,  <58.998470, 57.307915, 54.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.997002, 57.442101, 54.537613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518423, -0.804930, 0.288663,
		0.855117, 0.489438, -0.170956,
		-0.003675, 0.335468, 0.942044,
		58.995899, 57.542740, 54.820225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.678143, 57.205364, 54.502209>,  <58.998470, 57.307915, 54.160793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.678143, 57.205364, 54.502209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.413071, 57.210304, 54.801727>,  <59.254028, 57.213268, 54.981438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.413071, 57.210304, 54.801727>,  <59.678143, 57.205364, 54.502209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.413071, 57.210304, 54.801727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469844, -0.771749, 0.428544,
		0.583178, 0.635807, 0.505621,
		-0.662684, 0.012355, 0.748797,
		59.214264, 57.214012, 55.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.026188, 57.197166, 55.206833>,  <59.678143, 57.205364, 54.502209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.026188, 57.197166, 55.206833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.652649, 57.073071, 55.278030>,  <59.428528, 56.998611, 55.320751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.652649, 57.073071, 55.278030>,  <60.026188, 57.197166, 55.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.652649, 57.073071, 55.278030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357062, -0.779452, 0.514744,
		-0.020955, 0.544247, 0.838663,
		-0.933846, -0.310241, 0.177996,
		59.372494, 56.980000, 55.331429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.753742, 57.319473, 55.918514>,  <60.026188, 57.197166, 55.206833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.753742, 57.319473, 55.918514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.664085, 57.007084, 55.685333>,  <59.610291, 56.819649, 55.545425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.664085, 57.007084, 55.685333>,  <59.753742, 57.319473, 55.918514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.664085, 57.007084, 55.685333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521699, -0.601406, 0.605097,
		-0.823158, -0.168497, 0.542236,
		-0.224147, -0.780974, -0.582956,
		59.596840, 56.772793, 55.510445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.216572, 58.032833, 55.791309>,  <59.753742, 57.319473, 55.918514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.216572, 58.032833, 55.791309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.048653, 58.001450, 56.153000>,  <59.947903, 57.982620, 56.370014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.048653, 58.001450, 56.153000>,  <60.216572, 58.032833, 55.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.048653, 58.001450, 56.153000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339672, -0.937439, 0.076355,
		0.841662, 0.339192, 0.420182,
		-0.419794, -0.078459, 0.904222,
		59.922714, 57.977913, 56.424267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.465710, 57.925121, 56.608589>,  <60.216572, 58.032833, 55.791309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.465710, 57.925121, 56.608589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.397377, 57.969345, 57.000221>,  <60.356377, 57.995880, 57.235199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.397377, 57.969345, 57.000221>,  <60.465710, 57.925121, 56.608589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.397377, 57.969345, 57.000221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343363, -0.924715, 0.164328,
		0.923536, 0.364252, 0.120010,
		-0.170832, 0.110556, 0.979078,
		60.346127, 58.002514, 57.293945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.057583, 57.775070, 56.966999>,  <60.465710, 57.925121, 56.608589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.057583, 57.775070, 56.966999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.738983, 57.690010, 57.193405>,  <60.547825, 57.638973, 57.329250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.738983, 57.690010, 57.193405>,  <61.057583, 57.775070, 56.966999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.738983, 57.690010, 57.193405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348738, -0.926287, 0.142737,
		0.493941, 0.311081, 0.811943,
		-0.796495, -0.212652, 0.566017,
		60.500034, 57.626213, 57.363209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.330902, 57.473869, 57.622108>,  <61.057583, 57.775070, 56.966999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.330902, 57.473869, 57.622108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.952393, 57.361664, 57.557755>,  <60.725288, 57.294342, 57.519142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.952393, 57.361664, 57.557755>,  <61.330902, 57.473869, 57.622108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.952393, 57.361664, 57.557755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234390, -0.937725, 0.256384,
		-0.222784, 0.204899, 0.953092,
		-0.946271, -0.280513, -0.160884,
		60.668510, 57.277512, 57.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.001156, 57.215565, 58.041611>,  <61.330902, 57.473869, 57.622108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.001156, 57.215565, 58.041611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.028084, 57.113979, 57.655663>,  <62.044239, 57.053028, 57.424095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.028084, 57.113979, 57.655663>,  <62.001156, 57.215565, 58.041611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.028084, 57.113979, 57.655663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994391, 0.096139, 0.044072,
		0.081569, -0.962425, 0.259007,
		0.067316, -0.253960, -0.964869,
		62.048279, 57.037792, 57.366203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.632839, 56.747189, 57.950359>,  <62.001156, 57.215565, 58.041611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.632839, 56.747189, 57.950359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.533401, 56.922043, 57.604614>,  <62.473740, 57.026955, 57.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.533401, 56.922043, 57.604614>,  <62.632839, 56.747189, 57.950359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.533401, 56.922043, 57.604614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968122, 0.140377, -0.207447,
		0.030655, -0.888375, -0.458094,
		-0.248596, 0.437131, -0.864359,
		62.458824, 57.053181, 57.345306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.963852, 56.340099, 57.473698>,  <62.632839, 56.747189, 57.950359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.963852, 56.340099, 57.473698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.898651, 56.723633, 57.380684>,  <62.859531, 56.953751, 57.324875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.898651, 56.723633, 57.380684>,  <62.963852, 56.340099, 57.473698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.898651, 56.723633, 57.380684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982118, 0.135188, -0.131025,
		-0.094195, -0.249735, -0.963722,
		-0.163006, 0.958831, -0.232535,
		62.849751, 57.011284, 57.310925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.000034, 56.555454, 56.747910>,  <62.963852, 56.340099, 57.473698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.000034, 56.555454, 56.747910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.129082, 56.827316, 57.011421>,  <63.206509, 56.990433, 57.169529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.129082, 56.827316, 57.011421>,  <63.000034, 56.555454, 56.747910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.129082, 56.827316, 57.011421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924322, -0.076345, -0.373899,
		-0.203827, 0.729549, -0.652850,
		0.322619, 0.679654, 0.658777,
		63.225868, 57.031212, 57.209053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.650665, 56.488869, 56.736973>,  <63.000034, 56.555454, 56.747910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.650665, 56.488869, 56.736973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.667984, 56.829174, 56.946480>,  <63.678375, 57.033356, 57.072182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.667984, 56.829174, 56.946480>,  <63.650665, 56.488869, 56.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.667984, 56.829174, 56.946480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997565, -0.065501, 0.023941,
		0.054675, 0.521451, -0.851528,
		0.043292, 0.850763, 0.523763,
		63.680973, 57.084404, 57.103607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.889645, 57.083138, 56.312149>,  <63.650665, 56.488869, 56.736973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.889645, 57.083138, 56.312149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.982956, 57.101112, 56.700699>,  <64.038940, 57.111897, 56.933826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.982956, 57.101112, 56.700699>,  <63.889645, 57.083138, 56.312149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.982956, 57.101112, 56.700699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949262, -0.227189, -0.217455,
		0.210913, 0.972813, -0.095655,
		0.233275, 0.044937, 0.971372,
		64.052940, 57.114594, 56.992111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.449341, 57.527916, 56.481956>,  <63.889645, 57.083138, 56.312149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.449341, 57.527916, 56.481956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.454605, 57.215870, 56.732155>,  <64.457764, 57.028645, 56.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.454605, 57.215870, 56.732155>,  <64.449341, 57.527916, 56.481956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.454605, 57.215870, 56.732155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839786, -0.330925, -0.430405,
		0.542758, 0.530955, 0.650769,
		0.013169, -0.780113, 0.625501,
		64.458557, 56.981834, 56.919804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.996590, 57.417316, 57.074394>,  <64.449341, 57.527916, 56.481956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.996590, 57.417316, 57.074394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.851662, 57.074638, 56.927536>,  <64.764702, 56.869034, 56.839420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.851662, 57.074638, 56.927536>,  <64.996590, 57.417316, 57.074394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.851662, 57.074638, 56.927536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872734, -0.173550, -0.456308,
		0.327197, -0.485754, 0.810547,
		-0.362323, -0.856694, -0.367148,
		64.742966, 56.817631, 56.817390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.331146, 57.205330, 56.445465>,  <64.996590, 57.417316, 57.074394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.331146, 57.205330, 56.445465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.545204, 57.243908, 56.109772>,  <65.673637, 57.267056, 55.908356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.545204, 57.243908, 56.109772>,  <65.331146, 57.205330, 56.445465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.545204, 57.243908, 56.109772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774024, -0.453931, 0.441401,
		-0.338386, -0.885802, -0.317567,
		0.535147, 0.096441, -0.839236,
		65.705750, 57.272839, 55.858002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.549736, 56.531719, 56.108120>,  <65.331146, 57.205330, 56.445465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.549736, 56.531719, 56.108120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.794876, 56.846848, 56.083633>,  <65.941963, 57.035927, 56.068943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.794876, 56.846848, 56.083633>,  <65.549736, 56.531719, 56.108120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.794876, 56.846848, 56.083633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712692, -0.517619, 0.473436,
		0.341298, -0.333773, -0.878699,
		0.612851, 0.787824, -0.061215,
		65.978729, 57.083195, 56.065269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.175407, 56.315460, 55.814297>,  <65.549736, 56.531719, 56.108120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.175407, 56.315460, 55.814297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.252647, 56.628395, 56.051163>,  <66.298996, 56.816158, 56.193283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.252647, 56.628395, 56.051163>,  <66.175407, 56.315460, 55.814297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.252647, 56.628395, 56.051163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551697, -0.585656, 0.593833,
		0.811381, 0.212018, -0.544710,
		0.193109, 0.782340, 0.592160,
		66.310577, 56.863098, 56.228809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.796982, 56.175594, 56.108871>,  <66.175407, 56.315460, 55.814297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.796982, 56.175594, 56.108871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.676041, 56.448860, 56.374763>,  <66.603477, 56.612820, 56.534298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.676041, 56.448860, 56.374763>,  <66.796982, 56.175594, 56.108871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.676041, 56.448860, 56.374763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532307, -0.457476, 0.712296,
		0.790713, 0.569209, -0.225332,
		-0.302361, 0.683167, 0.664726,
		66.585335, 56.653809, 56.574181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.343864, 56.453232, 56.619743>,  <66.796982, 56.175594, 56.108871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.343864, 56.453232, 56.619743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.970360, 56.417931, 56.758484>,  <66.746262, 56.396751, 56.841728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.970360, 56.417931, 56.758484>,  <67.343864, 56.453232, 56.619743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.970360, 56.417931, 56.758484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320810, -0.636038, 0.701810,
		0.158677, 0.766595, 0.622217,
		-0.933757, -0.088253, 0.346855,
		66.690231, 56.391457, 56.862541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.449532, 55.690979, 56.768707>,  <67.343864, 56.453232, 56.619743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.449532, 55.690979, 56.768707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242134, 55.425079, 56.553574>,  <67.117691, 55.265541, 56.424492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242134, 55.425079, 56.553574>,  <67.449532, 55.690979, 56.768707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.242134, 55.425079, 56.553574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377931, 0.386058, -0.841503,
		0.767024, -0.639583, 0.051058,
		-0.518500, -0.664750, -0.537834,
		67.086586, 55.225655, 56.392223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.122780, 55.971992, 56.728401>,  <67.449532, 55.690979, 56.768707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.122780, 55.971992, 56.728401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.276558, 55.986191, 57.097389>,  <68.368828, 55.994709, 57.318783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.276558, 55.986191, 57.097389>,  <68.122780, 55.971992, 56.728401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.276558, 55.986191, 57.097389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829285, 0.425734, -0.361990,
		-0.405574, 0.904152, 0.134236,
		0.384443, 0.035494, 0.922466,
		68.391891, 55.996838, 57.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.572609, 56.187637, 57.311298>,  <68.122780, 55.971992, 56.728401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.572609, 56.187637, 57.311298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.184921, 56.100662, 57.265083>,  <66.952309, 56.048477, 57.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.184921, 56.100662, 57.265083>,  <67.572609, 56.187637, 57.311298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.184921, 56.100662, 57.265083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131713, -0.854278, 0.502852,
		-0.208041, 0.472152, 0.856616,
		-0.969211, -0.217441, -0.115536,
		66.894157, 56.035431, 57.230423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.212257, 56.112335, 58.025421>,  <67.572609, 56.187637, 57.311298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.212257, 56.112335, 58.025421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.067436, 55.900143, 57.718826>,  <66.980545, 55.772827, 57.534870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.067436, 55.900143, 57.718826>,  <67.212257, 56.112335, 58.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.067436, 55.900143, 57.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266279, -0.846867, 0.460339,
		-0.893319, -0.037437, 0.447860,
		-0.362044, -0.530486, -0.766491,
		66.958824, 55.740997, 57.488880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.616951, 56.581459, 58.431812>,  <67.212257, 56.112335, 58.025421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.616951, 56.581459, 58.431812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.868919, 56.290138, 58.323898>,  <68.020096, 56.115345, 58.259151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.868919, 56.290138, 58.323898>,  <67.616951, 56.581459, 58.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.868919, 56.290138, 58.323898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705881, 0.391978, 0.589988,
		-0.323941, -0.562076, 0.761008,
		0.629917, -0.728302, -0.269781,
		68.057892, 56.071648, 58.242966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.912796, 56.359165, 59.053520>,  <67.616951, 56.581459, 58.431812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.912796, 56.359165, 59.053520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.178810, 56.266624, 58.769493>,  <68.338417, 56.211102, 58.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.178810, 56.266624, 58.769493>,  <67.912796, 56.359165, 59.053520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.178810, 56.266624, 58.769493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743706, 0.291744, 0.601487,
		0.068005, -0.928096, 0.366077,
		0.665039, -0.231350, -0.710070,
		68.378319, 56.197220, 58.556473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.471504, 56.412792, 59.685303>,  <67.912796, 56.359165, 59.053520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.471504, 56.412792, 59.685303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.555626, 56.146080, 59.399315>,  <68.606102, 55.986053, 59.227722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.555626, 56.146080, 59.399315>,  <68.471504, 56.412792, 59.685303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.555626, 56.146080, 59.399315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977619, 0.147597, 0.149922,
		0.005562, -0.730494, 0.682896,
		0.210311, -0.666778, -0.714966,
		68.618721, 55.946045, 59.184826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.930885, 55.891048, 59.984573>,  <68.471504, 56.412792, 59.685303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.930885, 55.891048, 59.984573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.952934, 55.919312, 59.586182>,  <68.966164, 55.936268, 59.347149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.952934, 55.919312, 59.586182>,  <68.930885, 55.891048, 59.984573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.952934, 55.919312, 59.586182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929737, 0.360083, 0.077003,
		0.364075, -0.930241, -0.045842,
		0.055124, 0.070656, -0.995977,
		68.969475, 55.940510, 59.287388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.392014, 55.369572, 59.692604>,  <68.930885, 55.891048, 59.984573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.392014, 55.369572, 59.692604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.371445, 55.720554, 59.501846>,  <69.359100, 55.931145, 59.387394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.371445, 55.720554, 59.501846>,  <69.392014, 55.369572, 59.692604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.371445, 55.720554, 59.501846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948392, 0.192527, 0.251965,
		0.312903, -0.439321, -0.842074,
		-0.051429, 0.877457, -0.476890,
		69.356018, 55.983791, 59.358780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.882500, 55.566944, 59.096912>,  <69.392014, 55.369572, 59.692604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.882500, 55.566944, 59.096912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.795364, 55.917557, 59.268600>,  <69.743080, 56.127926, 59.371613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.795364, 55.917557, 59.268600>,  <69.882500, 55.566944, 59.096912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.795364, 55.917557, 59.268600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968975, 0.141626, 0.202555,
		0.116757, 0.460032, -0.880192,
		-0.217840, 0.876535, 0.429223,
		69.730011, 56.180515, 59.397369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.443367, 55.927601, 58.841976>,  <69.882500, 55.566944, 59.096912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.443367, 55.927601, 58.841976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.269905, 56.074108, 59.171288>,  <70.165825, 56.162014, 59.368874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.269905, 56.074108, 59.171288>,  <70.443367, 55.927601, 58.841976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.269905, 56.074108, 59.171288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900994, 0.188750, 0.390618,
		-0.012322, 0.911164, -0.411860,
		-0.433656, 0.366270, 0.823279,
		70.139809, 56.183990, 59.418270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.536163, 56.584019, 58.848763>,  <70.443367, 55.927601, 58.841976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.536163, 56.584019, 58.848763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.448822, 56.530575, 59.235435>,  <70.396416, 56.498508, 59.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.448822, 56.530575, 59.235435>,  <70.536163, 56.584019, 58.848763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.448822, 56.530575, 59.235435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864402, 0.433265, 0.255129,
		-0.452918, 0.891307, 0.020895,
		-0.218345, -0.133614, 0.966681,
		70.383316, 56.490490, 59.525440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.663895, 57.271671, 59.024246>,  <70.536163, 56.584019, 58.848763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.663895, 57.271671, 59.024246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.670738, 57.046867, 59.355026>,  <70.674843, 56.911983, 59.553493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.670738, 57.046867, 59.355026>,  <70.663895, 57.271671, 59.024246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.670738, 57.046867, 59.355026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771630, 0.533390, 0.346529,
		-0.635841, 0.632169, 0.442796,
		0.017118, -0.562012, 0.826952,
		70.675873, 56.878265, 59.603111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.506859, 57.672611, 59.588730>,  <70.663895, 57.271671, 59.024246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.506859, 57.672611, 59.588730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.750961, 57.364979, 59.664734>,  <70.897423, 57.180401, 59.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.750961, 57.364979, 59.664734>,  <70.506859, 57.672611, 59.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.750961, 57.364979, 59.664734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740499, 0.639006, 0.208164,
		-0.281512, 0.013669, 0.959460,
		0.610255, -0.769080, 0.190010,
		70.934036, 57.134254, 59.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.909729, 57.666451, 60.218693>,  <70.506859, 57.672611, 59.588730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.909729, 57.666451, 60.218693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.118332, 57.414879, 59.988052>,  <71.243492, 57.263935, 59.849667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.118332, 57.414879, 59.988052>,  <70.909729, 57.666451, 60.218693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.118332, 57.414879, 59.988052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845598, 0.471240, 0.250793,
		0.113987, -0.618366, 0.777580,
		0.521508, -0.628933, -0.576605,
		71.274788, 57.226200, 59.815071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.444557, 57.498516, 60.634094>,  <70.909729, 57.666451, 60.218693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.444557, 57.498516, 60.634094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.557159, 57.454525, 60.252800>,  <71.624718, 57.428131, 60.024021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.557159, 57.454525, 60.252800>,  <71.444557, 57.498516, 60.634094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.557159, 57.454525, 60.252800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957115, 0.103081, 0.270749,
		0.068484, -0.988574, 0.134279,
		0.281498, -0.109978, -0.953239,
		71.641609, 57.421532, 59.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.835648, 56.801338, 60.464478>,  <71.444557, 57.498516, 60.634094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.835648, 56.801338, 60.464478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.934479, 57.114651, 60.236298>,  <71.993782, 57.302639, 60.099388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.934479, 57.114651, 60.236298>,  <71.835648, 56.801338, 60.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.934479, 57.114651, 60.236298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874659, 0.073085, 0.479198,
		0.417040, -0.617353, -0.667048,
		0.247083, 0.783284, -0.570453,
		72.008606, 57.349636, 60.065163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.500916, 56.675144, 60.211040>,  <71.835648, 56.801338, 60.464478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.500916, 56.675144, 60.211040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.378197, 57.049335, 60.281189>,  <72.304565, 57.273849, 60.323280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.378197, 57.049335, 60.281189>,  <72.500916, 56.675144, 60.211040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.378197, 57.049335, 60.281189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814483, 0.162712, 0.556905,
		0.492437, 0.313694, -0.811851,
		-0.306795, 0.935479, 0.175373,
		72.286156, 57.329979, 60.333801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.060257, 57.059113, 60.400753>,  <72.500916, 56.675144, 60.211040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.060257, 57.059113, 60.400753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.795586, 57.340580, 60.504318>,  <72.636780, 57.509460, 60.566460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.795586, 57.340580, 60.504318>,  <73.060257, 57.059113, 60.400753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.795586, 57.340580, 60.504318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671951, 0.403296, 0.621156,
		0.332667, 0.584983, -0.739681,
		-0.661676, 0.703667, 0.258917,
		72.597084, 57.551682, 60.581993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.278503, 57.793427, 60.150303>,  <73.060257, 57.059113, 60.400753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.278503, 57.793427, 60.150303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.039581, 57.801102, 60.471016>,  <72.896225, 57.805706, 60.663445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.039581, 57.801102, 60.471016>,  <73.278503, 57.793427, 60.150303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.039581, 57.801102, 60.471016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774344, 0.274102, 0.570315,
		-0.208827, 0.961509, -0.178582,
		-0.597313, 0.019187, 0.801779,
		72.860390, 57.806858, 60.711548>
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
