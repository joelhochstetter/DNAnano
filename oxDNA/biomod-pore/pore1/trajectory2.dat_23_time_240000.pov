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
	<46.539474, 40.504578, 43.670738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696884, 40.719627, 43.969028>,  <46.791328, 40.848656, 44.148003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696884, 40.719627, 43.969028>,  <46.539474, 40.504578, 43.670738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696884, 40.719627, 43.969028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693853, -0.358445, 0.624568,
		0.603084, -0.763202, 0.231977,
		0.393521, 0.537625, 0.745722,
		46.814941, 40.880917, 44.192745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.415241, 40.072323, 44.203205>,  <46.539474, 40.504578, 43.670738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.415241, 40.072323, 44.203205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510696, 40.412216, 44.391247>,  <46.567970, 40.616154, 44.504070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510696, 40.412216, 44.391247>,  <46.415241, 40.072323, 44.203205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510696, 40.412216, 44.391247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611821, -0.244375, 0.752300,
		0.754139, -0.467149, 0.461569,
		0.238641, 0.849737, 0.470104,
		46.582287, 40.667137, 44.532280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561985, 39.920776, 44.871944>,  <46.415241, 40.072323, 44.203205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561985, 39.920776, 44.871944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432930, 40.299385, 44.871304>,  <46.355499, 40.526550, 44.870918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432930, 40.299385, 44.871304>,  <46.561985, 39.920776, 44.871944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432930, 40.299385, 44.871304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585629, -0.198289, 0.785951,
		0.743602, 0.254515, 0.618286,
		-0.322636, 0.946522, -0.001603,
		46.336140, 40.583344, 44.870823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719398, 40.113167, 45.597569>,  <46.561985, 39.920776, 44.871944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719398, 40.113167, 45.597569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433838, 40.366287, 45.477631>,  <46.262501, 40.518158, 45.405666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433838, 40.366287, 45.477631>,  <46.719398, 40.113167, 45.597569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433838, 40.366287, 45.477631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542062, -0.228325, 0.808725,
		0.443297, 0.739888, 0.506018,
		-0.713903, 0.632798, -0.299849,
		46.219666, 40.556126, 45.387676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429115, 40.345436, 46.182476>,  <46.719398, 40.113167, 45.597569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429115, 40.345436, 46.182476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157944, 40.468262, 45.915306>,  <45.995239, 40.541958, 45.755005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157944, 40.468262, 45.915306>,  <46.429115, 40.345436, 46.182476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157944, 40.468262, 45.915306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734970, -0.264405, 0.624427,
		0.015140, 0.914220, 0.404934,
		-0.677931, 0.307068, -0.667921,
		45.954563, 40.560383, 45.714931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064121, 40.872108, 46.501606>,  <46.429115, 40.345436, 46.182476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064121, 40.872108, 46.501606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836014, 40.716248, 46.212341>,  <45.699150, 40.622730, 46.038780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836014, 40.716248, 46.212341>,  <46.064121, 40.872108, 46.501606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836014, 40.716248, 46.212341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740875, -0.136288, 0.657670,
		-0.354818, 0.910824, -0.210959,
		-0.570270, -0.389647, -0.723164,
		45.664932, 40.599354, 45.995392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546108, 41.203289, 46.681248>,  <46.064121, 40.872108, 46.501606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546108, 41.203289, 46.681248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422409, 40.908752, 46.440525>,  <45.348190, 40.732029, 46.296093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422409, 40.908752, 46.440525>,  <45.546108, 41.203289, 46.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422409, 40.908752, 46.440525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778475, -0.167459, 0.604926,
		-0.546209, 0.655560, -0.521437,
		-0.309246, -0.736342, -0.601804,
		45.329636, 40.687851, 46.259983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840649, 41.313084, 46.602650>,  <45.546108, 41.203289, 46.681248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840649, 41.313084, 46.602650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905163, 40.923630, 46.538120>,  <44.943871, 40.689957, 46.499401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905163, 40.923630, 46.538120>,  <44.840649, 41.313084, 46.602650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905163, 40.923630, 46.538120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777811, -0.226020, 0.586451,
		-0.607451, 0.030897, -0.793756,
		0.161286, -0.973633, -0.161328,
		44.953548, 40.631538, 46.489723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149612, 41.121891, 46.672970>,  <44.840649, 41.313084, 46.602650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149612, 41.121891, 46.672970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362011, 40.783913, 46.698631>,  <44.489449, 40.581127, 46.714027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362011, 40.783913, 46.698631>,  <44.149612, 41.121891, 46.672970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362011, 40.783913, 46.698631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621527, -0.336894, 0.707253,
		-0.575977, -0.415418, -0.704044,
		0.530994, -0.844944, 0.064151,
		44.521309, 40.530430, 46.717876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672279, 40.507034, 46.897900>,  <44.149612, 41.121891, 46.672970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672279, 40.507034, 46.897900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035500, 40.353653, 46.965328>,  <44.253429, 40.261623, 47.005787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035500, 40.353653, 46.965328>,  <43.672279, 40.507034, 46.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035500, 40.353653, 46.965328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325383, -0.392306, 0.860361,
		-0.263773, -0.836099, -0.481001,
		0.908047, -0.383450, 0.168573,
		44.307915, 40.238617, 47.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513393, 39.763988, 46.926800>,  <43.672279, 40.507034, 46.897900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513393, 39.763988, 46.926800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867714, 39.861603, 47.084690>,  <44.080307, 39.920170, 47.179424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867714, 39.861603, 47.084690>,  <43.513393, 39.763988, 46.926800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867714, 39.861603, 47.084690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264720, -0.432906, 0.861694,
		0.381163, -0.867778, -0.318866,
		0.885798, 0.244035, 0.394726,
		44.133453, 39.934814, 47.203110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650703, 39.171940, 47.291737>,  <43.513393, 39.763988, 46.926800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650703, 39.171940, 47.291737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844734, 39.483543, 47.450657>,  <43.961155, 39.670506, 47.546009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844734, 39.483543, 47.450657>,  <43.650703, 39.171940, 47.291737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844734, 39.483543, 47.450657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420879, -0.190274, 0.886937,
		0.766525, -0.597451, 0.235569,
		0.485078, 0.779005, 0.397304,
		43.990257, 39.717243, 47.569847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962055, 38.897381, 47.808350>,  <43.650703, 39.171940, 47.291737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962055, 38.897381, 47.808350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915901, 39.288689, 47.877251>,  <43.888206, 39.523476, 47.918591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915901, 39.288689, 47.877251>,  <43.962055, 38.897381, 47.808350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915901, 39.288689, 47.877251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343974, -0.202033, 0.916987,
		0.931862, 0.046560, 0.359812,
		-0.115389, 0.978271, 0.172252,
		43.881283, 39.582169, 47.928925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268852, 38.963730, 48.443611>,  <43.962055, 38.897381, 47.808350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268852, 38.963730, 48.443611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049515, 39.295647, 48.402115>,  <43.917912, 39.494797, 48.377216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049515, 39.295647, 48.402115>,  <44.268852, 38.963730, 48.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049515, 39.295647, 48.402115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392304, -0.145692, 0.908225,
		0.738527, 0.538714, 0.405421,
		-0.548339, 0.829796, -0.103742,
		43.885014, 39.544586, 48.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443619, 39.401310, 49.069244>,  <44.268852, 38.963730, 48.443611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443619, 39.401310, 49.069244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097233, 39.547966, 48.933201>,  <43.889400, 39.635960, 48.851574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097233, 39.547966, 48.933201>,  <44.443619, 39.401310, 49.069244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097233, 39.547966, 48.933201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389032, -0.066533, 0.918819,
		0.314249, 0.927980, 0.200251,
		-0.865969, 0.366642, -0.340106,
		43.837440, 39.657959, 48.831169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340252, 40.099117, 49.490082>,  <44.443619, 39.401310, 49.069244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340252, 40.099117, 49.490082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002605, 39.931076, 49.356827>,  <43.800018, 39.830254, 49.276875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002605, 39.931076, 49.356827>,  <44.340252, 40.099117, 49.490082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002605, 39.931076, 49.356827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364902, -0.005106, 0.931032,
		-0.392829, 0.907463, -0.148985,
		-0.844116, -0.420101, -0.333141,
		43.749371, 39.805046, 49.256886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912846, 40.249928, 50.043087>,  <44.340252, 40.099117, 49.490082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912846, 40.249928, 50.043087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690811, 39.982979, 49.844498>,  <43.557590, 39.822807, 49.725346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690811, 39.982979, 49.844498>,  <43.912846, 40.249928, 50.043087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690811, 39.982979, 49.844498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451920, -0.259122, 0.853594,
		-0.698315, 0.698188, -0.157764,
		-0.555089, -0.667375, -0.496474,
		43.524284, 39.782768, 49.695557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187641, 40.308380, 50.259754>,  <43.912846, 40.249928, 50.043087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187641, 40.308380, 50.259754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204716, 39.933800, 50.120472>,  <43.214958, 39.709053, 50.036903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204716, 39.933800, 50.120472>,  <43.187641, 40.308380, 50.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204716, 39.933800, 50.120472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476164, -0.325460, 0.816912,
		-0.878320, 0.130934, -0.459793,
		0.042683, -0.936447, -0.348204,
		43.217522, 39.652866, 50.016010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562466, 39.981510, 50.542728>,  <43.187641, 40.308380, 50.259754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562466, 39.981510, 50.542728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806572, 39.679245, 50.447601>,  <42.953037, 39.497887, 50.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806572, 39.679245, 50.447601>,  <42.562466, 39.981510, 50.542728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806572, 39.679245, 50.447601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365902, -0.535129, 0.761415,
		-0.702633, -0.377647, -0.603067,
		0.610265, -0.755659, -0.237818,
		42.989651, 39.452549, 50.376255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185963, 39.296185, 50.487442>,  <42.562466, 39.981510, 50.542728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185963, 39.296185, 50.487442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574619, 39.233604, 50.558365>,  <42.807812, 39.196056, 50.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574619, 39.233604, 50.558365>,  <42.185963, 39.296185, 50.487442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574619, 39.233604, 50.558365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236462, -0.644593, 0.727039,
		0.000551, -0.748348, -0.663306,
		0.971640, -0.156446, 0.177311,
		42.866112, 39.186672, 50.611557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153149, 38.623573, 50.668110>,  <42.185963, 39.296185, 50.487442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153149, 38.623573, 50.668110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509666, 38.751907, 50.796272>,  <42.723576, 38.828907, 50.873169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509666, 38.751907, 50.796272>,  <42.153149, 38.623573, 50.668110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509666, 38.751907, 50.796272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166835, -0.425022, 0.889675,
		0.421618, -0.846418, -0.325293,
		0.891294, 0.320833, 0.320409,
		42.777054, 38.848156, 50.892395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415733, 38.060242, 51.033951>,  <42.153149, 38.623573, 50.668110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415733, 38.060242, 51.033951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609276, 38.372444, 51.192287>,  <42.725403, 38.559765, 51.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609276, 38.372444, 51.192287>,  <42.415733, 38.060242, 51.033951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609276, 38.372444, 51.192287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176328, -0.356086, 0.917666,
		0.857200, -0.513816, -0.034668,
		0.483856, 0.780510, 0.395837,
		42.754433, 38.606598, 51.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809017, 37.748470, 51.629032>,  <42.415733, 38.060242, 51.033951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809017, 37.748470, 51.629032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804260, 38.142250, 51.699142>,  <42.801407, 38.378517, 51.741211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804260, 38.142250, 51.699142>,  <42.809017, 37.748470, 51.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804260, 38.142250, 51.699142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137477, -0.175236, 0.974881,
		0.990434, -0.012500, 0.137423,
		-0.011895, 0.984447, 0.175278,
		42.800694, 38.437584, 51.751724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204807, 37.760574, 52.201160>,  <42.809017, 37.748470, 51.629032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204807, 37.760574, 52.201160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009392, 38.109535, 52.207443>,  <42.892143, 38.318913, 52.211212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009392, 38.109535, 52.207443>,  <43.204807, 37.760574, 52.201160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009392, 38.109535, 52.207443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026354, -0.032750, 0.999116,
		0.872142, 0.487697, 0.038991,
		-0.488543, 0.872398, 0.015710,
		42.862827, 38.371254, 52.212154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691692, 38.208988, 52.600872>,  <43.204807, 37.760574, 52.201160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691692, 38.208988, 52.600872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313049, 38.337532, 52.590630>,  <43.085861, 38.414658, 52.584484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313049, 38.337532, 52.590630>,  <43.691692, 38.208988, 52.600872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313049, 38.337532, 52.590630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003819, 0.090606, 0.995879,
		0.322359, 0.942611, -0.086996,
		-0.946610, 0.321363, -0.025608,
		43.029068, 38.433941, 52.582947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796383, 38.766140, 52.970612>,  <43.691692, 38.208988, 52.600872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796383, 38.766140, 52.970612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409309, 38.665314, 52.967613>,  <43.177067, 38.604820, 52.965816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409309, 38.665314, 52.967613>,  <43.796383, 38.766140, 52.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409309, 38.665314, 52.967613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060622, 0.203685, 0.977158,
		-0.244780, 0.946032, -0.212383,
		-0.967682, -0.252064, -0.007492,
		43.119003, 38.589695, 52.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402763, 39.317768, 53.212406>,  <43.796383, 38.766140, 52.970612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402763, 39.317768, 53.212406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156055, 39.006912, 53.262447>,  <43.008030, 38.820400, 53.292473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156055, 39.006912, 53.262447>,  <43.402763, 39.317768, 53.212406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156055, 39.006912, 53.262447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156597, 0.276903, 0.948052,
		-0.771408, 0.565140, -0.292483,
		-0.616771, -0.777137, 0.125106,
		42.971024, 38.773769, 53.299980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881630, 39.562317, 53.767574>,  <43.402763, 39.317768, 53.212406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881630, 39.562317, 53.767574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788647, 39.173927, 53.745049>,  <42.732857, 38.940891, 53.731533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788647, 39.173927, 53.745049>,  <42.881630, 39.562317, 53.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788647, 39.173927, 53.745049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160471, -0.018817, 0.986861,
		-0.959278, 0.238437, -0.151440,
		-0.232455, -0.970976, -0.056313,
		42.718910, 38.882633, 53.728153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178761, 39.375343, 53.932281>,  <42.881630, 39.562317, 53.767574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178761, 39.375343, 53.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366142, 39.028908, 54.002064>,  <42.478569, 38.821045, 54.043934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366142, 39.028908, 54.002064>,  <42.178761, 39.375343, 53.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366142, 39.028908, 54.002064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211016, 0.082067, 0.974031,
		-0.857919, -0.493101, -0.144315,
		0.468452, -0.866093, 0.174459,
		42.506680, 38.769081, 54.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781235, 38.974339, 54.391815>,  <42.178761, 39.375343, 53.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781235, 38.974339, 54.391815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133324, 38.788086, 54.428474>,  <42.344578, 38.676334, 54.450470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133324, 38.788086, 54.428474>,  <41.781235, 38.974339, 54.391815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133324, 38.788086, 54.428474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170383, -0.129830, 0.976788,
		-0.442926, -0.875403, -0.193615,
		0.880220, -0.465633, 0.091648,
		42.397388, 38.648396, 54.455971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583538, 38.354351, 54.779030>,  <41.781235, 38.974339, 54.391815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583538, 38.354351, 54.779030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973648, 38.438560, 54.805943>,  <42.207714, 38.489086, 54.822090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973648, 38.438560, 54.805943>,  <41.583538, 38.354351, 54.779030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973648, 38.438560, 54.805943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046734, -0.101118, 0.993776,
		0.216018, -0.972345, -0.088779,
		0.975271, 0.210525, 0.067285,
		42.266228, 38.501717, 54.826130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854042, 37.866871, 55.199707>,  <41.583538, 38.354351, 54.779030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854042, 37.866871, 55.199707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122971, 38.162071, 55.222805>,  <42.284328, 38.339191, 55.236664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122971, 38.162071, 55.222805>,  <41.854042, 37.866871, 55.199707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122971, 38.162071, 55.222805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044650, -0.037431, 0.998301,
		0.738910, -0.673759, 0.007786,
		0.672323, 0.738002, 0.057741,
		42.324669, 38.383472, 55.240128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286400, 37.617691, 55.812904>,  <41.854042, 37.866871, 55.199707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286400, 37.617691, 55.812904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342422, 38.011536, 55.771088>,  <42.376038, 38.247841, 55.745998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342422, 38.011536, 55.771088>,  <42.286400, 37.617691, 55.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342422, 38.011536, 55.771088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086902, 0.117401, 0.989275,
		0.986323, -0.129469, 0.102007,
		0.140056, 0.984609, -0.104544,
		42.384438, 38.306919, 55.739723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654736, 37.756287, 56.333458>,  <42.286400, 37.617691, 55.812904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654736, 37.756287, 56.333458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528419, 38.125366, 56.244999>,  <42.452629, 38.346813, 56.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528419, 38.125366, 56.244999>,  <42.654736, 37.756287, 56.333458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528419, 38.125366, 56.244999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061322, 0.212737, 0.975183,
		0.946844, 0.321519, -0.010599,
		-0.315795, 0.922696, -0.221145,
		42.433681, 38.402176, 56.178654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039558, 38.231972, 56.804859>,  <42.654736, 37.756287, 56.333458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039558, 38.231972, 56.804859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715717, 38.433762, 56.684830>,  <42.521412, 38.554836, 56.612812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715717, 38.433762, 56.684830>,  <43.039558, 38.231972, 56.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715717, 38.433762, 56.684830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100423, 0.384640, 0.917588,
		0.578320, 0.773018, -0.260746,
		-0.809605, 0.504475, -0.300074,
		42.472836, 38.585106, 56.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086491, 38.919113, 56.989658>,  <43.039558, 38.231972, 56.804859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086491, 38.919113, 56.989658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696053, 38.837334, 56.960171>,  <42.461788, 38.788265, 56.942478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696053, 38.837334, 56.960171>,  <43.086491, 38.919113, 56.989658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696053, 38.837334, 56.960171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150096, 0.388849, 0.908993,
		-0.157174, 0.898331, -0.410241,
		-0.976098, -0.204445, -0.073719,
		42.403225, 38.776001, 56.938057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791271, 39.471928, 57.312214>,  <43.086491, 38.919113, 56.989658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791271, 39.471928, 57.312214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491974, 39.206978, 57.297256>,  <42.312397, 39.048008, 57.288284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491974, 39.206978, 57.297256>,  <42.791271, 39.471928, 57.312214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491974, 39.206978, 57.297256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352749, 0.349476, 0.868006,
		-0.561877, 0.662666, -0.495144,
		-0.748239, -0.662375, -0.037392,
		42.267502, 39.008266, 57.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145493, 39.869038, 57.333687>,  <42.791271, 39.471928, 57.312214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145493, 39.869038, 57.333687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077351, 39.498222, 57.467297>,  <42.036465, 39.275734, 57.547462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077351, 39.498222, 57.467297>,  <42.145493, 39.869038, 57.333687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077351, 39.498222, 57.467297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211872, 0.365512, 0.906373,
		-0.962336, 0.083631, -0.258679,
		-0.170351, -0.927042, 0.334027,
		42.026245, 39.220108, 57.567505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502045, 39.906548, 57.764133>,  <42.145493, 39.869038, 57.333687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502045, 39.906548, 57.764133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647251, 39.547050, 57.862503>,  <41.734375, 39.331352, 57.921524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647251, 39.547050, 57.862503>,  <41.502045, 39.906548, 57.764133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647251, 39.547050, 57.862503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202272, 0.181627, 0.962340,
		-0.909562, -0.399093, -0.115856,
		0.363020, -0.898741, 0.245926,
		41.756157, 39.277428, 57.936279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984940, 39.620338, 58.188114>,  <41.502045, 39.906548, 57.764133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984940, 39.620338, 58.188114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312401, 39.414421, 58.289932>,  <41.508877, 39.290871, 58.351025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312401, 39.414421, 58.289932>,  <40.984940, 39.620338, 58.188114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312401, 39.414421, 58.289932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173572, 0.200715, 0.964151,
		-0.547430, -0.833487, 0.074962,
		0.818654, -0.514794, 0.254547,
		41.557999, 39.259983, 58.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861877, 39.152191, 58.723999>,  <40.984940, 39.620338, 58.188114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861877, 39.152191, 58.723999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259117, 39.170799, 58.767044>,  <41.497463, 39.181965, 58.792873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259117, 39.170799, 58.767044>,  <40.861877, 39.152191, 58.723999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259117, 39.170799, 58.767044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112160, 0.109694, 0.987617,
		0.034138, -0.992876, 0.114155,
		0.993104, 0.046518, 0.107616,
		41.557049, 39.184757, 58.799328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002468, 38.825500, 59.478519>,  <40.861877, 39.152191, 58.723999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002468, 38.825500, 59.478519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321716, 39.046562, 59.382545>,  <41.513268, 39.179199, 59.324959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321716, 39.046562, 59.382545>,  <41.002468, 38.825500, 59.478519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321716, 39.046562, 59.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042364, 0.345779, 0.937359,
		0.601004, -0.758292, 0.252561,
		0.798122, 0.552657, -0.239938,
		41.561153, 39.212360, 59.310562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613205, 38.710361, 59.904202>,  <41.002468, 38.825500, 59.478519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613205, 38.710361, 59.904202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649101, 39.088745, 59.779549>,  <41.670639, 39.315773, 59.704758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649101, 39.088745, 59.779549>,  <41.613205, 38.710361, 59.904202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649101, 39.088745, 59.779549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228018, 0.285069, 0.930991,
		0.969512, -0.154606, -0.190113,
		0.089741, 0.945956, -0.311630,
		41.676025, 39.372532, 59.686058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205082, 39.068787, 59.877556>,  <41.613205, 38.710361, 59.904202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205082, 39.068787, 59.877556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931793, 39.342072, 59.980644>,  <41.767818, 39.506042, 60.042496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931793, 39.342072, 59.980644>,  <42.205082, 39.068787, 59.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931793, 39.342072, 59.980644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581148, 0.295072, 0.758419,
		0.442119, 0.667943, -0.598651,
		-0.683226, 0.683216, 0.257717,
		41.726826, 39.547035, 60.057961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499260, 39.672073, 59.997856>,  <42.205082, 39.068787, 59.877556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499260, 39.672073, 59.997856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159538, 39.641197, 60.206745>,  <41.955704, 39.622669, 60.332077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159538, 39.641197, 60.206745>,  <42.499260, 39.672073, 59.997856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159538, 39.641197, 60.206745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476720, 0.312752, 0.821538,
		-0.226743, 0.946693, -0.228824,
		-0.849309, -0.077193, 0.522222,
		41.904747, 39.618038, 60.363411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626266, 40.151459, 60.464756>,  <42.499260, 39.672073, 59.997856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626266, 40.151459, 60.464756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343231, 39.901970, 60.597595>,  <42.173409, 39.752277, 60.677299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343231, 39.901970, 60.597595>,  <42.626266, 40.151459, 60.464756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343231, 39.901970, 60.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383345, 0.055968, 0.921908,
		-0.593601, 0.779640, 0.199499,
		-0.707591, -0.623722, 0.332094,
		42.130955, 39.714851, 60.697224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225067, 40.427811, 60.988350>,  <42.626266, 40.151459, 60.464756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225067, 40.427811, 60.988350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218781, 40.034538, 61.061127>,  <42.215008, 39.798573, 61.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218781, 40.034538, 61.061127>,  <42.225067, 40.427811, 60.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218781, 40.034538, 61.061127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308131, 0.168347, 0.936331,
		-0.951214, 0.070778, 0.300304,
		-0.015716, -0.983184, 0.181943,
		42.214066, 39.739582, 61.115711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728653, 40.893730, 61.381516>,  <42.225067, 40.427811, 60.988350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728653, 40.893730, 61.381516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900314, 41.228027, 61.518551>,  <42.003311, 41.428604, 61.600773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900314, 41.228027, 61.518551>,  <41.728653, 40.893730, 61.381516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900314, 41.228027, 61.518551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612064, 0.009846, -0.790747,
		-0.664233, 0.549035, -0.507302,
		0.429152, 0.835742, 0.342585,
		42.029060, 41.478748, 61.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794128, 41.287182, 60.845806>,  <41.728653, 40.893730, 61.381516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794128, 41.287182, 60.845806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082436, 41.408295, 61.095222>,  <42.255421, 41.480965, 61.244873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082436, 41.408295, 61.095222>,  <41.794128, 41.287182, 60.845806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082436, 41.408295, 61.095222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641312, 0.050110, -0.765642,
		-0.263071, 0.951740, -0.158062,
		0.720772, 0.302786, 0.623545,
		42.298668, 41.499130, 61.282288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038647, 41.943630, 60.578995>,  <41.794128, 41.287182, 60.845806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038647, 41.943630, 60.578995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329308, 41.759666, 60.783134>,  <42.503704, 41.649288, 60.905617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329308, 41.759666, 60.783134>,  <42.038647, 41.943630, 60.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329308, 41.759666, 60.783134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520422, -0.116445, -0.845932,
		0.448477, 0.880299, 0.154730,
		0.726656, -0.459906, 0.510350,
		42.547306, 41.621696, 60.936241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470924, 42.091942, 60.159172>,  <42.038647, 41.943630, 60.578995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470924, 42.091942, 60.159172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651707, 41.813232, 60.381973>,  <42.760174, 41.646008, 60.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651707, 41.813232, 60.381973>,  <42.470924, 42.091942, 60.159172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651707, 41.813232, 60.381973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631395, -0.191219, -0.751515,
		0.630143, 0.691338, 0.353515,
		0.451952, -0.696769, 0.557003,
		42.787292, 41.604202, 60.549072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121639, 42.185829, 60.021412>,  <42.470924, 42.091942, 60.159172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121639, 42.185829, 60.021412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097351, 41.815788, 60.171341>,  <43.082779, 41.593761, 60.261299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097351, 41.815788, 60.171341>,  <43.121639, 42.185829, 60.021412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097351, 41.815788, 60.171341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733045, -0.296202, -0.612299,
		0.677465, 0.237585, 0.696128,
		-0.060721, -0.925104, 0.374827,
		43.079136, 41.538258, 60.283791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833984, 42.006554, 60.154697>,  <43.121639, 42.185829, 60.021412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833984, 42.006554, 60.154697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586002, 41.699181, 60.091244>,  <43.437214, 41.514755, 60.053173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586002, 41.699181, 60.091244>,  <43.833984, 42.006554, 60.154697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586002, 41.699181, 60.091244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564309, -0.296192, -0.770602,
		0.545169, -0.567259, 0.617259,
		-0.619957, -0.768432, -0.158634,
		43.400017, 41.468651, 60.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157703, 41.368671, 60.147598>,  <43.833984, 42.006554, 60.154697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157703, 41.368671, 60.147598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816299, 41.294144, 59.952946>,  <43.611458, 41.249428, 59.836155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816299, 41.294144, 59.952946>,  <44.157703, 41.368671, 60.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816299, 41.294144, 59.952946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520815, -0.275043, -0.808148,
		0.016730, -0.943205, 0.331790,
		-0.853505, -0.186322, -0.486634,
		43.560249, 41.238247, 59.806957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265156, 40.744198, 59.825027>,  <44.157703, 41.368671, 60.147598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265156, 40.744198, 59.825027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972580, 40.905746, 59.605255>,  <43.797035, 41.002674, 59.473392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972580, 40.905746, 59.605255>,  <44.265156, 40.744198, 59.825027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972580, 40.905746, 59.605255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492562, -0.244279, -0.835291,
		-0.471567, -0.881598, -0.020257,
		-0.731441, 0.403874, -0.549435,
		43.753147, 41.026909, 59.440426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079670, 40.206406, 59.322807>,  <44.265156, 40.744198, 59.825027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079670, 40.206406, 59.322807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968620, 40.555161, 59.161446>,  <43.901989, 40.764412, 59.064629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968620, 40.555161, 59.161446>,  <44.079670, 40.206406, 59.322807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968620, 40.555161, 59.161446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347251, -0.300448, -0.888340,
		-0.895735, -0.386707, -0.219353,
		-0.277623, 0.871888, -0.403406,
		43.885334, 40.816727, 59.040424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822590, 40.096886, 58.682522>,  <44.079670, 40.206406, 59.322807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822590, 40.096886, 58.682522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898445, 40.488640, 58.654690>,  <43.943958, 40.723694, 58.637989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898445, 40.488640, 58.654690>,  <43.822590, 40.096886, 58.682522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898445, 40.488640, 58.654690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275117, -0.121030, -0.953762,
		-0.942522, 0.161729, -0.292398,
		0.189640, 0.979385, -0.069579,
		43.955338, 40.782455, 58.633816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659698, 40.166328, 58.048271>,  <43.822590, 40.096886, 58.682522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659698, 40.166328, 58.048271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832935, 40.522308, 58.105438>,  <43.936878, 40.735897, 58.139736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832935, 40.522308, 58.105438>,  <43.659698, 40.166328, 58.048271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832935, 40.522308, 58.105438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131440, 0.094504, -0.986809,
		-0.891716, 0.446161, -0.076046,
		0.433089, 0.889949, 0.142914,
		43.962864, 40.789291, 58.148312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464291, 40.674469, 57.523239>,  <43.659698, 40.166328, 58.048271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464291, 40.674469, 57.523239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801102, 40.840668, 57.660847>,  <44.003189, 40.940388, 57.743412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801102, 40.840668, 57.660847>,  <43.464291, 40.674469, 57.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801102, 40.840668, 57.660847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310217, 0.148747, -0.938957,
		-0.441303, 0.897351, -0.003643,
		0.842031, 0.415495, 0.344016,
		44.053711, 40.965317, 57.764053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537682, 41.232723, 57.143364>,  <43.464291, 40.674469, 57.523239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537682, 41.232723, 57.143364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905598, 41.158539, 57.281693>,  <44.126347, 41.114029, 57.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905598, 41.158539, 57.281693>,  <43.537682, 41.232723, 57.143364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905598, 41.158539, 57.281693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381240, 0.213525, -0.899480,
		0.092977, 0.959172, 0.267103,
		0.919789, -0.185461, 0.345822,
		44.181534, 41.102901, 57.385441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921188, 41.706654, 56.760345>,  <43.537682, 41.232723, 57.143364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921188, 41.706654, 56.760345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174297, 41.425652, 56.890633>,  <44.326164, 41.257050, 56.968803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174297, 41.425652, 56.890633>,  <43.921188, 41.706654, 56.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174297, 41.425652, 56.890633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524220, 0.079056, -0.847906,
		0.569904, 0.707279, 0.418289,
		0.632774, -0.702500, 0.325715,
		44.364128, 41.214901, 56.988346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601902, 42.000412, 56.661701>,  <43.921188, 41.706654, 56.760345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601902, 42.000412, 56.661701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629883, 41.601601, 56.674595>,  <44.646671, 41.362312, 56.682331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629883, 41.601601, 56.674595>,  <44.601902, 42.000412, 56.661701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629883, 41.601601, 56.674595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601091, 0.016339, -0.799014,
		0.796114, 0.075264, 0.600448,
		0.069948, -0.997030, 0.032233,
		44.650867, 41.302490, 56.684265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312428, 41.855518, 56.385929>,  <44.601902, 42.000412, 56.661701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312428, 41.855518, 56.385929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097290, 41.518394, 56.377979>,  <44.968208, 41.316120, 56.373211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097290, 41.518394, 56.377979>,  <45.312428, 41.855518, 56.385929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097290, 41.518394, 56.377979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427062, -0.252058, -0.868380,
		0.726871, -0.475539, 0.495500,
		-0.537843, -0.842810, -0.019871,
		44.935936, 41.265553, 56.372017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728931, 41.499134, 56.056404>,  <45.312428, 41.855518, 56.385929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728931, 41.499134, 56.056404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420082, 41.247223, 56.022461>,  <45.234772, 41.096077, 56.002094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420082, 41.247223, 56.022461>,  <45.728931, 41.499134, 56.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420082, 41.247223, 56.022461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185760, -0.095979, -0.977896,
		0.607717, -0.770819, 0.191096,
		-0.772122, -0.629783, -0.084859,
		45.188446, 41.058289, 55.997002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983631, 40.822334, 55.789864>,  <45.728931, 41.499134, 56.056404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983631, 40.822334, 55.789864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594269, 40.842918, 55.700562>,  <45.360653, 40.855270, 55.646980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594269, 40.842918, 55.700562>,  <45.983631, 40.822334, 55.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594269, 40.842918, 55.700562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214228, -0.140980, -0.966556,
		-0.081211, -0.988674, 0.126207,
		-0.973401, 0.051458, -0.223251,
		45.302250, 40.858356, 55.633587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901161, 40.211403, 55.421974>,  <45.983631, 40.822334, 55.789864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901161, 40.211403, 55.421974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605682, 40.467178, 55.336697>,  <45.428394, 40.620644, 55.285530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605682, 40.467178, 55.336697>,  <45.901161, 40.211403, 55.421974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605682, 40.467178, 55.336697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137697, -0.166464, -0.976386,
		-0.659828, -0.750604, 0.034917,
		-0.738692, 0.639439, -0.213194,
		45.384075, 40.659012, 55.272739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700161, 39.933384, 54.905693>,  <45.901161, 40.211403, 55.421974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700161, 39.933384, 54.905693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563988, 40.305290, 54.849636>,  <45.482285, 40.528435, 54.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563988, 40.305290, 54.849636>,  <45.700161, 39.933384, 54.905693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563988, 40.305290, 54.849636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107481, -0.109585, -0.988150,
		-0.934107, -0.351456, -0.062627,
		-0.340428, 0.929769, -0.140139,
		45.461861, 40.584221, 54.807594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099911, 39.929611, 54.339661>,  <45.700161, 39.933384, 54.905693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099911, 39.929611, 54.339661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254517, 40.296021, 54.382561>,  <45.347282, 40.515865, 54.408302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254517, 40.296021, 54.382561>,  <45.099911, 39.929611, 54.339661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254517, 40.296021, 54.382561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180136, 0.039071, -0.982865,
		-0.904519, 0.399216, -0.149908,
		0.386518, 0.916024, 0.107254,
		45.370472, 40.570827, 54.414738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840286, 40.331074, 53.803932>,  <45.099911, 39.929611, 54.339661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840286, 40.331074, 53.803932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153309, 40.552490, 53.917908>,  <45.341122, 40.685341, 53.986294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153309, 40.552490, 53.917908>,  <44.840286, 40.331074, 53.803932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153309, 40.552490, 53.917908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204219, 0.204127, -0.957406,
		-0.588133, 0.807415, 0.046696,
		0.782556, 0.553546, 0.284943,
		45.388077, 40.718555, 54.003391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884888, 40.818855, 53.234787>,  <44.840286, 40.331074, 53.803932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884888, 40.818855, 53.234787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228569, 40.840645, 53.438278>,  <45.434776, 40.853718, 53.560371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228569, 40.840645, 53.438278>,  <44.884888, 40.818855, 53.234787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228569, 40.840645, 53.438278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506660, 0.047766, -0.860822,
		-0.071190, 0.997372, 0.013442,
		0.859202, 0.054472, 0.508729,
		45.486328, 40.856987, 53.590897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186432, 41.449528, 52.939926>,  <44.884888, 40.818855, 53.234787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186432, 41.449528, 52.939926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462578, 41.213463, 53.107307>,  <45.628265, 41.071823, 53.207737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462578, 41.213463, 53.107307>,  <45.186432, 41.449528, 52.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462578, 41.213463, 53.107307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529751, 0.018453, -0.847952,
		0.492708, 0.807073, 0.325378,
		0.690364, -0.590163, 0.418456,
		45.669685, 41.036415, 53.232845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804302, 41.818516, 52.913662>,  <45.186432, 41.449528, 52.939926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804302, 41.818516, 52.913662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914207, 41.434349, 52.932018>,  <45.980152, 41.203850, 52.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914207, 41.434349, 52.932018>,  <45.804302, 41.818516, 52.913662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914207, 41.434349, 52.932018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481169, 0.096025, -0.871353,
		0.832454, 0.261500, 0.488506,
		0.274767, -0.960415, 0.045889,
		45.996639, 41.146225, 52.945786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444023, 41.899837, 52.632164>,  <45.804302, 41.818516, 52.913662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444023, 41.899837, 52.632164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325073, 41.517967, 52.627190>,  <46.253704, 41.288845, 52.624203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325073, 41.517967, 52.627190>,  <46.444023, 41.899837, 52.632164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325073, 41.517967, 52.627190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043336, -0.000480, -0.999061,
		0.953776, -0.297638, 0.041515,
		-0.297378, -0.954679, -0.012440,
		46.235859, 41.231564, 52.623459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956837, 41.522602, 52.235352>,  <46.444023, 41.899837, 52.632164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956837, 41.522602, 52.235352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655128, 41.260246, 52.247269>,  <46.474102, 41.102833, 52.254421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655128, 41.260246, 52.247269>,  <46.956837, 41.522602, 52.235352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655128, 41.260246, 52.247269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140682, -0.205782, -0.968433,
		0.641314, -0.726269, 0.247487,
		-0.754271, -0.655887, 0.029798,
		46.428848, 41.063480, 52.256207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207424, 40.953644, 52.050198>,  <46.956837, 41.522602, 52.235352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207424, 40.953644, 52.050198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818558, 40.910683, 51.966911>,  <46.585239, 40.884907, 51.916939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818558, 40.910683, 51.966911>,  <47.207424, 40.953644, 52.050198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818558, 40.910683, 51.966911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229103, -0.249852, -0.940790,
		0.049020, -0.962309, 0.267505,
		-0.972167, -0.107404, -0.208220,
		46.526909, 40.878460, 51.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187103, 40.263802, 51.636494>,  <47.207424, 40.953644, 52.050198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187103, 40.263802, 51.636494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868729, 40.496628, 51.569931>,  <46.677704, 40.636322, 51.529995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868729, 40.496628, 51.569931>,  <47.187103, 40.263802, 51.636494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868729, 40.496628, 51.569931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112984, -0.127218, -0.985419,
		-0.594743, -0.803132, 0.035494,
		-0.795936, 0.582061, -0.166403,
		46.629948, 40.671246, 51.520012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708622, 39.908318, 51.141788>,  <47.187103, 40.263802, 51.636494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708622, 39.908318, 51.141788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639168, 40.301842, 51.124084>,  <46.597496, 40.537956, 51.113464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639168, 40.301842, 51.124084>,  <46.708622, 39.908318, 51.141788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639168, 40.301842, 51.124084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161961, -0.072856, -0.984104,
		-0.971400, -0.163709, 0.171990,
		-0.173638, 0.983815, -0.044258,
		46.587078, 40.596985, 51.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156544, 39.955898, 50.723663>,  <46.708622, 39.908318, 51.141788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156544, 39.955898, 50.723663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322495, 40.319847, 50.724606>,  <46.422066, 40.538216, 50.725170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322495, 40.319847, 50.724606>,  <46.156544, 39.955898, 50.723663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322495, 40.319847, 50.724606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073281, -0.030832, -0.996835,
		-0.906922, 0.413736, -0.079468,
		0.414876, 0.909875, 0.002357,
		46.446957, 40.592808, 50.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844547, 40.312817, 50.152451>,  <46.156544, 39.955898, 50.723663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844547, 40.312817, 50.152451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155762, 40.559601, 50.199806>,  <46.342491, 40.707672, 50.228222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155762, 40.559601, 50.199806>,  <45.844547, 40.312817, 50.152451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155762, 40.559601, 50.199806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095339, 0.070316, -0.992958,
		-0.620944, 0.783844, -0.004113,
		0.778035, 0.616964, 0.118393,
		46.389172, 40.744690, 50.235325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961155, 40.749065, 49.560841>,  <45.844547, 40.312817, 50.152451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961155, 40.749065, 49.560841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329216, 40.831131, 49.694244>,  <46.550053, 40.880371, 49.774288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329216, 40.831131, 49.694244>,  <45.961155, 40.749065, 49.560841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329216, 40.831131, 49.694244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270532, 0.282660, -0.920280,
		-0.283076, 0.937023, 0.204587,
		0.920152, 0.205162, 0.333509,
		46.605263, 40.892681, 49.794296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191055, 41.481537, 49.374607>,  <45.961155, 40.749065, 49.560841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191055, 41.481537, 49.374607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523827, 41.267044, 49.431675>,  <46.723488, 41.138348, 49.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523827, 41.267044, 49.431675>,  <46.191055, 41.481537, 49.374607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523827, 41.267044, 49.431675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325513, 0.263404, -0.908108,
		0.449376, 0.801919, 0.393683,
		0.831927, -0.536231, 0.142668,
		46.773403, 41.106174, 49.474476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688320, 41.953373, 49.299229>,  <46.191055, 41.481537, 49.374607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688320, 41.953373, 49.299229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875816, 41.601212, 49.270470>,  <46.988316, 41.389915, 49.253216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875816, 41.601212, 49.270470>,  <46.688320, 41.953373, 49.299229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875816, 41.601212, 49.270470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401467, 0.284836, -0.870455,
		0.786830, 0.379157, 0.486968,
		0.468745, -0.880403, -0.071898,
		47.016441, 41.337090, 49.248901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326694, 42.095329, 49.096130>,  <46.688320, 41.953373, 49.299229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326694, 42.095329, 49.096130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305061, 41.708298, 48.997448>,  <47.292080, 41.476078, 48.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305061, 41.708298, 48.997448>,  <47.326694, 42.095329, 49.096130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305061, 41.708298, 48.997448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367011, 0.210517, -0.906082,
		0.928643, -0.139548, 0.343728,
		-0.054081, -0.967579, -0.246710,
		47.288837, 41.418022, 48.923435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.943760, 41.968094, 48.791172>,  <47.326694, 42.095329, 49.096130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.943760, 41.968094, 48.791172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704987, 41.674477, 48.661655>,  <47.561722, 41.498306, 48.583946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704987, 41.674477, 48.661655>,  <47.943760, 41.968094, 48.791172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.704987, 41.674477, 48.661655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384430, 0.092532, -0.918505,
		0.704187, -0.672765, 0.226954,
		-0.596937, -0.734047, -0.323791,
		47.525906, 41.454262, 48.564518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.388428, 41.553757, 48.430859>,  <47.943760, 41.968094, 48.791172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.388428, 41.553757, 48.430859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.018402, 41.505310, 48.286865>,  <47.796387, 41.476242, 48.200470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.018402, 41.505310, 48.286865>,  <48.388428, 41.553757, 48.430859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.018402, 41.505310, 48.286865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308303, 0.314118, -0.897931,
		0.221828, -0.941627, -0.253240,
		-0.925063, -0.121111, -0.359986,
		47.740883, 41.468975, 48.178871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.449520, 41.310078, 47.722656>,  <48.388428, 41.553757, 48.430859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.449520, 41.310078, 47.722656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.068993, 41.431923, 47.741459>,  <47.840675, 41.505032, 47.752739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.068993, 41.431923, 47.741459>,  <48.449520, 41.310078, 47.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.068993, 41.431923, 47.741459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074934, 0.376506, -0.923379,
		-0.298975, -0.874901, -0.381002,
		-0.951314, 0.304618, 0.047006,
		47.783600, 41.523308, 47.755562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.199417, 41.094105, 47.196651>,  <48.449520, 41.310078, 47.722656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.199417, 41.094105, 47.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.950821, 41.392891, 47.291134>,  <47.801662, 41.572163, 47.347824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.950821, 41.392891, 47.291134>,  <48.199417, 41.094105, 47.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.950821, 41.392891, 47.291134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094551, 0.370821, -0.923879,
		-0.777699, -0.551844, -0.301087,
		-0.621486, 0.746967, 0.236210,
		47.764374, 41.616982, 47.361996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.729748, 41.026653, 46.785706>,  <48.199417, 41.094105, 47.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.729748, 41.026653, 46.785706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682480, 41.414192, 46.872761>,  <47.654118, 41.646717, 46.924995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682480, 41.414192, 46.872761>,  <47.729748, 41.026653, 46.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682480, 41.414192, 46.872761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006365, 0.218433, -0.975831,
		-0.992973, -0.116700, -0.019646,
		-0.118171, 0.968849, 0.217641,
		47.647030, 41.704845, 46.938053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.473412, 41.291771, 46.181282>,  <47.729748, 41.026653, 46.785706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.473412, 41.291771, 46.181282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567436, 41.632538, 46.368462>,  <47.623852, 41.836998, 46.480770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567436, 41.632538, 46.368462>,  <47.473412, 41.291771, 46.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567436, 41.632538, 46.368462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030781, 0.474674, -0.879623,
		-0.971492, 0.221171, 0.085356,
		0.235063, 0.851920, 0.467950,
		47.637955, 41.888115, 46.508846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980377, 41.829613, 45.994667>,  <47.473412, 41.291771, 46.181282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980377, 41.829613, 45.994667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298347, 42.032043, 46.128525>,  <47.489128, 42.153503, 46.208839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298347, 42.032043, 46.128525>,  <46.980377, 41.829613, 45.994667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298347, 42.032043, 46.128525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053695, 0.490716, -0.869663,
		-0.604330, 0.709283, 0.362907,
		0.794922, 0.506078, 0.334640,
		47.536823, 42.183868, 46.228916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944679, 42.424713, 45.735867>,  <46.980377, 41.829613, 45.994667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944679, 42.424713, 45.735867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330139, 42.444626, 45.840855>,  <47.561417, 42.456573, 45.903847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330139, 42.444626, 45.840855>,  <46.944679, 42.424713, 45.735867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330139, 42.444626, 45.840855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213354, 0.447894, -0.868258,
		-0.160781, 0.892700, 0.420994,
		0.963654, 0.049779, 0.262474,
		47.619236, 42.459560, 45.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126442, 43.096420, 45.697815>,  <46.944679, 42.424713, 45.735867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126442, 43.096420, 45.697815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454063, 42.869522, 45.663441>,  <47.650635, 42.733383, 45.642815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454063, 42.869522, 45.663441>,  <47.126442, 43.096420, 45.697815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.454063, 42.869522, 45.663441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162665, 0.373247, -0.913360,
		0.550172, 0.734114, 0.397980,
		0.819055, -0.567243, -0.085935,
		47.699780, 42.699348, 45.637661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.712318, 43.143509, 46.276783>,  <47.126442, 43.096420, 45.697815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.712318, 43.143509, 46.276783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539490, 43.479317, 46.145012>,  <47.435791, 43.680801, 46.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539490, 43.479317, 46.145012>,  <47.712318, 43.143509, 46.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539490, 43.479317, 46.145012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131425, 0.302769, 0.943959,
		0.892210, 0.451156, -0.020486,
		-0.432075, 0.839517, -0.329426,
		47.409866, 43.731171, 46.046185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.982723, 43.615234, 46.713963>,  <47.712318, 43.143509, 46.276783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.982723, 43.615234, 46.713963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666534, 43.809563, 46.564762>,  <47.476822, 43.926159, 46.475243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666534, 43.809563, 46.564762>,  <47.982723, 43.615234, 46.713963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666534, 43.809563, 46.564762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234792, 0.322120, 0.917121,
		0.565709, 0.812537, -0.140560,
		-0.790472, 0.485821, -0.373003,
		47.429394, 43.955311, 46.452862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.040554, 44.402107, 46.790024>,  <47.982723, 43.615234, 46.713963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.040554, 44.402107, 46.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650681, 44.357826, 46.712322>,  <47.416756, 44.331257, 46.665703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650681, 44.357826, 46.712322>,  <48.040554, 44.402107, 46.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650681, 44.357826, 46.712322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222720, 0.404593, 0.886961,
		-0.019594, 0.907772, -0.419006,
		-0.974686, -0.110700, -0.194251,
		47.358276, 44.324615, 46.654045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732738, 45.029202, 46.973190>,  <48.040554, 44.402107, 46.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732738, 45.029202, 46.973190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421219, 44.778313, 46.969944>,  <47.234306, 44.627781, 46.967995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421219, 44.778313, 46.969944>,  <47.732738, 45.029202, 46.973190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421219, 44.778313, 46.969944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294308, 0.353940, 0.887755,
		-0.553947, 0.693770, -0.460245,
		-0.778797, -0.627223, -0.008118,
		47.187580, 44.590145, 46.967510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051117, 45.416012, 46.970695>,  <47.732738, 45.029202, 46.973190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051117, 45.416012, 46.970695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000793, 45.047844, 47.118752>,  <46.970600, 44.826942, 47.207584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000793, 45.047844, 47.118752>,  <47.051117, 45.416012, 46.970695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000793, 45.047844, 47.118752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277864, 0.390863, 0.877506,
		-0.952347, 0.007547, -0.304925,
		-0.125807, -0.920418, 0.370140,
		46.963051, 44.771717, 47.229794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512848, 45.479061, 47.418575>,  <47.051117, 45.416012, 46.970695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512848, 45.479061, 47.418575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688683, 45.138382, 47.532677>,  <46.794182, 44.933975, 47.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688683, 45.138382, 47.532677>,  <46.512848, 45.479061, 47.418575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688683, 45.138382, 47.532677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315884, 0.150704, 0.936753,
		-0.840824, -0.501888, -0.202792,
		0.439583, -0.851702, 0.285253,
		46.820557, 44.882870, 47.618252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996647, 45.216274, 47.811749>,  <46.512848, 45.479061, 47.418575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996647, 45.216274, 47.811749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313583, 44.999123, 47.923088>,  <46.503746, 44.868832, 47.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313583, 44.999123, 47.923088>,  <45.996647, 45.216274, 47.811749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313583, 44.999123, 47.923088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317653, 0.022411, 0.947942,
		-0.520855, -0.839513, -0.154690,
		0.792342, -0.542878, 0.278347,
		46.551285, 44.836258, 48.006592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726692, 44.770832, 48.340767>,  <45.996647, 45.216274, 47.811749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726692, 44.770832, 48.340767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119240, 44.748856, 48.414406>,  <46.354771, 44.735668, 48.458588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119240, 44.748856, 48.414406>,  <45.726692, 44.770832, 48.340767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119240, 44.748856, 48.414406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180802, 0.059887, 0.981695,
		-0.064963, -0.996692, 0.048837,
		0.981372, -0.054944, 0.184094,
		46.413651, 44.732372, 48.469635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804878, 44.363510, 48.935730>,  <45.726692, 44.770832, 48.340767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804878, 44.363510, 48.935730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144478, 44.573189, 48.909149>,  <46.348236, 44.698997, 48.893200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144478, 44.573189, 48.909149>,  <45.804878, 44.363510, 48.935730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144478, 44.573189, 48.909149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034053, 0.179773, 0.983119,
		0.527295, -0.832405, 0.170478,
		0.849000, 0.524199, -0.066448,
		46.399178, 44.730450, 48.889214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378056, 43.965176, 49.226311>,  <45.804878, 44.363510, 48.935730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378056, 43.965176, 49.226311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450874, 44.358490, 49.227852>,  <46.494564, 44.594479, 49.228779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450874, 44.358490, 49.227852>,  <46.378056, 43.965176, 49.226311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450874, 44.358490, 49.227852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074162, 0.009820, 0.997198,
		0.980489, -0.181822, 0.074709,
		0.182047, 0.983283, 0.003856,
		46.505489, 44.653473, 49.229008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759171, 44.041607, 49.907974>,  <46.378056, 43.965176, 49.226311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759171, 44.041607, 49.907974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647705, 44.402321, 49.775833>,  <46.580826, 44.618748, 49.696548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647705, 44.402321, 49.775833>,  <46.759171, 44.041607, 49.907974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647705, 44.402321, 49.775833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131092, 0.305039, 0.943274,
		0.951400, 0.306163, 0.033213,
		-0.278664, 0.901784, -0.330350,
		46.564106, 44.672855, 49.676727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160141, 44.569962, 50.250053>,  <46.759171, 44.041607, 49.907974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160141, 44.569962, 50.250053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821594, 44.744453, 50.127827>,  <46.618465, 44.849148, 50.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821594, 44.744453, 50.127827>,  <47.160141, 44.569962, 50.250053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821594, 44.744453, 50.127827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228101, 0.221553, 0.948095,
		0.481282, 0.872136, -0.088012,
		-0.846367, 0.436225, -0.305565,
		46.567684, 44.875320, 50.036156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104713, 45.140205, 50.660870>,  <47.160141, 44.569962, 50.250053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104713, 45.140205, 50.660870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728119, 45.097435, 50.533012>,  <46.502163, 45.071774, 50.456299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728119, 45.097435, 50.533012>,  <47.104713, 45.140205, 50.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728119, 45.097435, 50.533012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329314, 0.089772, 0.939943,
		-0.071811, 0.990206, -0.119732,
		-0.941486, -0.106928, -0.319642,
		46.445675, 45.065357, 50.437119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696491, 45.497097, 51.158428>,  <47.104713, 45.140205, 50.660870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696491, 45.497097, 51.158428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456047, 45.231361, 50.980747>,  <46.311779, 45.071922, 50.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456047, 45.231361, 50.980747>,  <46.696491, 45.497097, 51.158428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456047, 45.231361, 50.980747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537288, -0.075515, 0.840012,
		-0.591594, 0.743610, -0.311546,
		-0.601115, -0.664336, -0.444207,
		46.275711, 45.032063, 50.847485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069401, 45.612984, 51.423607>,  <46.696491, 45.497097, 51.158428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069401, 45.612984, 51.423607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998032, 45.256332, 51.257156>,  <45.955208, 45.042339, 51.157288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998032, 45.256332, 51.257156>,  <46.069401, 45.612984, 51.423607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998032, 45.256332, 51.257156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680198, -0.193811, 0.706942,
		-0.710981, 0.409183, -0.571905,
		-0.178427, -0.891631, -0.416122,
		45.944504, 44.988842, 51.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295986, 45.480873, 51.505482>,  <46.069401, 45.612984, 51.423607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295986, 45.480873, 51.505482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482697, 45.128487, 51.474457>,  <45.594723, 44.917053, 51.455841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482697, 45.128487, 51.474457>,  <45.295986, 45.480873, 51.505482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482697, 45.128487, 51.474457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523216, -0.345796, 0.778890,
		-0.712998, -0.322985, -0.622346,
		0.466775, -0.880969, -0.077561,
		45.622730, 44.864197, 51.451187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725060, 44.986008, 51.463078>,  <45.295986, 45.480873, 51.505482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725060, 44.986008, 51.463078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060890, 44.812607, 51.594040>,  <45.262386, 44.708569, 51.672619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060890, 44.812607, 51.594040>,  <44.725060, 44.986008, 51.463078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060890, 44.812607, 51.594040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500934, -0.384584, 0.775345,
		-0.210194, -0.814969, -0.540040,
		0.839574, -0.433497, 0.327409,
		45.312763, 44.682556, 51.692261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540562, 44.301006, 51.585285>,  <44.725060, 44.986008, 51.463078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540562, 44.301006, 51.585285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881493, 44.366943, 51.783821>,  <45.086052, 44.406506, 51.902943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881493, 44.366943, 51.783821>,  <44.540562, 44.301006, 51.585285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881493, 44.366943, 51.783821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400323, -0.405083, 0.821979,
		0.336562, -0.899296, -0.279273,
		0.852331, 0.164847, 0.496345,
		45.137192, 44.416397, 51.932724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705040, 43.669689, 52.031368>,  <44.540562, 44.301006, 51.585285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705040, 43.669689, 52.031368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951866, 43.932907, 52.203972>,  <45.099964, 44.090839, 52.307533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951866, 43.932907, 52.203972>,  <44.705040, 43.669689, 52.031368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951866, 43.932907, 52.203972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284290, -0.324895, 0.902010,
		0.733761, -0.679276, -0.013406,
		0.617069, 0.658049, 0.431507,
		45.136986, 44.130322, 52.333424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966724, 43.234970, 52.544945>,  <44.705040, 43.669689, 52.031368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966724, 43.234970, 52.544945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014355, 43.622276, 52.632832>,  <45.042934, 43.854660, 52.685566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014355, 43.622276, 52.632832>,  <44.966724, 43.234970, 52.544945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014355, 43.622276, 52.632832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195018, -0.194176, 0.961386,
		0.973544, -0.157331, 0.165708,
		0.119079, 0.968268, 0.219722,
		45.050079, 43.912758, 52.698750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506462, 43.075821, 52.993805>,  <44.966724, 43.234970, 52.544945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506462, 43.075821, 52.993805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303352, 43.413155, 53.064186>,  <45.181488, 43.615555, 53.106415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303352, 43.413155, 53.064186>,  <45.506462, 43.075821, 52.993805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303352, 43.413155, 53.064186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191754, -0.309754, 0.931280,
		0.839878, 0.439141, 0.318997,
		-0.507774, 0.843331, 0.175949,
		45.151020, 43.666153, 53.116970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827435, 43.434898, 53.604259>,  <45.506462, 43.075821, 52.993805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827435, 43.434898, 53.604259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451530, 43.562119, 53.554138>,  <45.225990, 43.638451, 53.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451530, 43.562119, 53.554138>,  <45.827435, 43.434898, 53.604259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451530, 43.562119, 53.554138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209287, -0.245480, 0.946540,
		0.270285, 0.915743, 0.297255,
		-0.939758, 0.318048, -0.125304,
		45.169601, 43.657532, 53.516548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631367, 43.702335, 54.262463>,  <45.827435, 43.434898, 53.604259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631367, 43.702335, 54.262463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276981, 43.672554, 54.079369>,  <45.064350, 43.654686, 53.969513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276981, 43.672554, 54.079369>,  <45.631367, 43.702335, 54.262463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276981, 43.672554, 54.079369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403667, -0.362070, 0.840214,
		-0.228288, 0.929173, 0.290727,
		-0.885967, -0.074454, -0.457732,
		45.011192, 43.650219, 53.942047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104816, 43.853851, 54.834827>,  <45.631367, 43.702335, 54.262463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104816, 43.853851, 54.834827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872391, 43.693100, 54.551743>,  <44.732937, 43.596649, 54.381893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872391, 43.693100, 54.551743>,  <45.104816, 43.853851, 54.834827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872391, 43.693100, 54.551743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614847, -0.352966, 0.705250,
		-0.533225, 0.844930, -0.041999,
		-0.581063, -0.401880, -0.707713,
		44.698071, 43.572536, 54.339428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435112, 44.046703, 54.980335>,  <45.104816, 43.853851, 54.834827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435112, 44.046703, 54.980335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377087, 43.730026, 54.742954>,  <44.342270, 43.540020, 54.600525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377087, 43.730026, 54.742954>,  <44.435112, 44.046703, 54.980335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377087, 43.730026, 54.742954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673806, -0.360169, 0.645185,
		-0.724529, 0.493464, -0.481198,
		-0.145063, -0.791689, -0.593452,
		44.333569, 43.492519, 54.564919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778679, 43.928909, 55.065304>,  <44.435112, 44.046703, 54.980335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778679, 43.928909, 55.065304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883858, 43.592285, 54.876564>,  <43.946964, 43.390312, 54.763321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883858, 43.592285, 54.876564>,  <43.778679, 43.928909, 55.065304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883858, 43.592285, 54.876564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819614, -0.452853, 0.350936,
		-0.509010, 0.294453, -0.808830,
		0.262947, -0.841559, -0.471845,
		43.962742, 43.339817, 54.735012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239216, 43.651150, 54.646603>,  <43.778679, 43.928909, 55.065304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239216, 43.651150, 54.646603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481449, 43.341835, 54.721748>,  <43.626789, 43.156246, 54.766834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481449, 43.341835, 54.721748>,  <43.239216, 43.651150, 54.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481449, 43.341835, 54.721748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739546, -0.459717, 0.491662,
		-0.293831, -0.436678, -0.850280,
		0.605586, -0.773286, 0.187864,
		43.663124, 43.109848, 54.778107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965252, 43.086105, 54.360657>,  <43.239216, 43.651150, 54.646603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965252, 43.086105, 54.360657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211498, 42.927338, 54.632973>,  <43.359245, 42.832077, 54.796364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211498, 42.927338, 54.632973>,  <42.965252, 43.086105, 54.360657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211498, 42.927338, 54.632973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786160, -0.369077, 0.495716,
		0.054505, -0.840379, -0.539251,
		0.615615, -0.396919, 0.680789,
		43.396183, 42.808262, 54.837208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761150, 42.361542, 54.368034>,  <42.965252, 43.086105, 54.360657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761150, 42.361542, 54.368034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939217, 42.479462, 54.706245>,  <43.046055, 42.550213, 54.909172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939217, 42.479462, 54.706245>,  <42.761150, 42.361542, 54.368034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939217, 42.479462, 54.706245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744791, -0.402300, 0.532392,
		0.497108, -0.866744, 0.040478,
		0.445163, 0.294804, 0.845529,
		43.072765, 42.567902, 54.959904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723507, 41.817120, 54.780411>,  <42.761150, 42.361542, 54.368034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723507, 41.817120, 54.780411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775337, 42.104996, 55.053249>,  <42.806435, 42.277721, 55.216953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775337, 42.104996, 55.053249>,  <42.723507, 41.817120, 54.780411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775337, 42.104996, 55.053249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773380, -0.357158, 0.523757,
		0.620559, -0.595386, 0.510316,
		0.129574, 0.719690, 0.682097,
		42.814209, 42.320904, 55.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596077, 41.468174, 55.272560>,  <42.723507, 41.817120, 54.780411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596077, 41.468174, 55.272560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571785, 41.843895, 55.407631>,  <42.557209, 42.069328, 55.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571785, 41.843895, 55.407631>,  <42.596077, 41.468174, 55.272560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571785, 41.843895, 55.407631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660892, -0.291369, 0.691611,
		0.748020, -0.181166, 0.638471,
		-0.060734, 0.939299, 0.337681,
		42.553566, 42.125683, 55.508934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781757, 41.413742, 55.973560>,  <42.596077, 41.468174, 55.272560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781757, 41.413742, 55.973560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581718, 41.753258, 55.904900>,  <42.461697, 41.956966, 55.863705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581718, 41.753258, 55.904900>,  <42.781757, 41.413742, 55.973560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581718, 41.753258, 55.904900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630119, -0.220700, 0.744474,
		0.594017, 0.480469, 0.645208,
		-0.500094, 0.848788, -0.171653,
		42.431690, 42.007893, 55.853405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609264, 41.718365, 56.664021>,  <42.781757, 41.413742, 55.973560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609264, 41.718365, 56.664021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347607, 41.896271, 56.419308>,  <42.190613, 42.003014, 56.272480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347607, 41.896271, 56.419308>,  <42.609264, 41.718365, 56.664021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347607, 41.896271, 56.419308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752032, -0.295951, 0.588949,
		0.080888, 0.845337, 0.528074,
		-0.654145, 0.444768, -0.611781,
		42.151363, 42.029701, 56.235775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271866, 42.084743, 57.078785>,  <42.609264, 41.718365, 56.664021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271866, 42.084743, 57.078785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020512, 42.091843, 56.767704>,  <41.869698, 42.096104, 56.581055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020512, 42.091843, 56.767704>,  <42.271866, 42.084743, 57.078785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020512, 42.091843, 56.767704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770871, -0.148310, 0.619486,
		-0.104344, 0.988782, 0.106880,
		-0.628387, 0.017751, -0.777698,
		41.831997, 42.097168, 56.534393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791271, 42.469555, 57.349380>,  <42.271866, 42.084743, 57.078785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791271, 42.469555, 57.349380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607784, 42.287415, 57.044163>,  <41.497692, 42.178131, 56.861031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607784, 42.287415, 57.044163>,  <41.791271, 42.469555, 57.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607784, 42.287415, 57.044163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755652, -0.251903, 0.604595,
		-0.467518, 0.853930, -0.228539,
		-0.458713, -0.455355, -0.763043,
		41.470169, 42.150806, 56.815250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013290, 42.598106, 57.496933>,  <41.791271, 42.469555, 57.349380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013290, 42.598106, 57.496933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020294, 42.297256, 57.233418>,  <41.024498, 42.116749, 57.075306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020294, 42.297256, 57.233418>,  <41.013290, 42.598106, 57.496933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020294, 42.297256, 57.233418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895101, -0.305387, 0.324857,
		-0.445518, 0.583995, -0.678574,
		0.017513, -0.752123, -0.658791,
		41.025547, 42.071621, 57.035782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289143, 42.575855, 57.189453>,  <41.013290, 42.598106, 57.496933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289143, 42.575855, 57.189453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479160, 42.226250, 57.148605>,  <40.593170, 42.016487, 57.124096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479160, 42.226250, 57.148605>,  <40.289143, 42.575855, 57.189453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479160, 42.226250, 57.148605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652616, -0.427776, 0.625380,
		-0.590276, -0.230440, -0.773610,
		0.475044, -0.874017, -0.102117,
		40.621674, 41.964046, 57.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704956, 42.146576, 57.037441>,  <40.289143, 42.575855, 57.189453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704956, 42.146576, 57.037441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001995, 41.903740, 57.150574>,  <40.180218, 41.758038, 57.218452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001995, 41.903740, 57.150574>,  <39.704956, 42.146576, 57.037441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001995, 41.903740, 57.150574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641800, -0.524352, 0.559596,
		-0.191423, -0.597074, -0.779012,
		0.742597, -0.607090, 0.282829,
		40.224773, 41.721611, 57.235420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982567, 42.368206, 57.207962>,  <39.704956, 42.146576, 57.037441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982567, 42.368206, 57.207962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893585, 42.673988, 57.449997>,  <38.840199, 42.857456, 57.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893585, 42.673988, 57.449997>,  <38.982567, 42.368206, 57.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893585, 42.673988, 57.449997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491351, 0.623960, -0.607658,
		-0.842075, 0.162136, -0.514414,
		-0.222450, 0.764451, 0.605087,
		38.826851, 42.903324, 57.631523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754887, 42.860203, 56.740292>,  <38.982567, 42.368206, 57.207962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754887, 42.860203, 56.740292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827477, 43.084351, 57.063538>,  <38.871029, 43.218842, 57.257484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827477, 43.084351, 57.063538>,  <38.754887, 42.860203, 56.740292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827477, 43.084351, 57.063538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353667, 0.729587, -0.585339,
		-0.917599, 0.392027, -0.065785,
		0.181473, 0.560372, 0.808115,
		38.881920, 43.252460, 57.305973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411434, 43.533268, 56.588402>,  <38.754887, 42.860203, 56.740292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411434, 43.533268, 56.588402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692078, 43.574776, 56.870388>,  <38.860466, 43.599678, 57.039577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692078, 43.574776, 56.870388>,  <38.411434, 43.533268, 56.588402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692078, 43.574776, 56.870388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447777, 0.705387, -0.549477,
		-0.554289, 0.701186, 0.448444,
		0.701612, 0.103766, 0.704963,
		38.902561, 43.605907, 57.081879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502197, 44.229080, 56.663727>,  <38.411434, 43.533268, 56.588402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502197, 44.229080, 56.663727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842113, 44.044952, 56.766460>,  <39.046062, 43.934475, 56.828102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842113, 44.044952, 56.766460>,  <38.502197, 44.229080, 56.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842113, 44.044952, 56.766460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512400, 0.607019, -0.607432,
		0.123708, 0.647792, 0.751706,
		0.849789, -0.460319, 0.256835,
		39.097050, 43.906857, 56.843510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956985, 44.808430, 56.729065>,  <38.502197, 44.229080, 56.663727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956985, 44.808430, 56.729065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192741, 44.489143, 56.679329>,  <39.334194, 44.297569, 56.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192741, 44.489143, 56.679329>,  <38.956985, 44.808430, 56.729065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192741, 44.489143, 56.679329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683367, 0.574722, -0.450226,
		0.430841, 0.180390, 0.884215,
		0.589394, -0.798219, -0.124341,
		39.369560, 44.249676, 56.642025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588730, 45.051220, 56.736622>,  <38.956985, 44.808430, 56.729065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588730, 45.051220, 56.736622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710781, 44.698029, 56.593929>,  <39.784012, 44.486115, 56.508316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710781, 44.698029, 56.593929>,  <39.588730, 45.051220, 56.736622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710781, 44.698029, 56.593929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759373, 0.451639, -0.468375,
		0.574676, -0.127978, 0.808312,
		0.305124, -0.882974, -0.356730,
		39.802319, 44.433136, 56.486912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357822, 45.093544, 56.822075>,  <39.588730, 45.051220, 56.736622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357822, 45.093544, 56.822075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293030, 44.798103, 56.560318>,  <40.254154, 44.620838, 56.403263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293030, 44.798103, 56.560318>,  <40.357822, 45.093544, 56.822075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293030, 44.798103, 56.560318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780785, 0.309595, -0.542703,
		0.603438, -0.598846, 0.526541,
		-0.161981, -0.738603, -0.654391,
		40.244434, 44.576523, 56.364002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042545, 44.919109, 56.592422>,  <40.357822, 45.093544, 56.822075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042545, 44.919109, 56.592422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812016, 44.750046, 56.312653>,  <40.673698, 44.648605, 56.144791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812016, 44.750046, 56.312653>,  <41.042545, 44.919109, 56.592422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812016, 44.750046, 56.312653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721515, 0.138727, -0.678359,
		0.383747, -0.895607, 0.225005,
		-0.576329, -0.422663, -0.699429,
		40.639118, 44.623245, 56.102825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498920, 44.447887, 56.324333>,  <41.042545, 44.919109, 56.592422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498920, 44.447887, 56.324333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194027, 44.501511, 56.071026>,  <41.011093, 44.533684, 55.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194027, 44.501511, 56.071026>,  <41.498920, 44.447887, 56.324333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194027, 44.501511, 56.071026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646143, 0.098945, -0.756776,
		-0.038794, -0.986021, -0.162041,
		-0.762230, 0.134060, -0.633272,
		40.965359, 44.541729, 55.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638863, 44.030899, 55.675304>,  <41.498920, 44.447887, 56.324333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638863, 44.030899, 55.675304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362000, 44.292343, 55.552856>,  <41.195881, 44.449211, 55.479385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362000, 44.292343, 55.552856>,  <41.638863, 44.030899, 55.675304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362000, 44.292343, 55.552856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533856, 0.178204, -0.826584,
		-0.485713, -0.735551, -0.472279,
		-0.692157, 0.653611, -0.306122,
		41.154354, 44.488426, 55.461021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688271, 43.967499, 55.001995>,  <41.638863, 44.030899, 55.675304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688271, 43.967499, 55.001995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515755, 44.326859, 55.035122>,  <41.412243, 44.542477, 55.055000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515755, 44.326859, 55.035122>,  <41.688271, 43.967499, 55.001995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515755, 44.326859, 55.035122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415690, 0.279348, -0.865544,
		-0.800743, -0.338875, -0.493938,
		-0.431292, 0.898403, 0.082819,
		41.386368, 44.596378, 55.059967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332039, 44.010281, 54.380760>,  <41.688271, 43.967499, 55.001995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332039, 44.010281, 54.380760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357033, 44.383392, 54.522751>,  <41.372028, 44.607262, 54.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357033, 44.383392, 54.522751>,  <41.332039, 44.010281, 54.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357033, 44.383392, 54.522751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398434, 0.302791, -0.865776,
		-0.915066, 0.195533, -0.352732,
		0.062484, 0.932783, 0.354981,
		41.375778, 44.663227, 54.629246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991325, 44.468254, 53.929768>,  <41.332039, 44.010281, 54.380760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991325, 44.468254, 53.929768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246414, 44.703979, 54.128166>,  <41.399467, 44.845417, 54.247204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246414, 44.703979, 54.128166>,  <40.991325, 44.468254, 53.929768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246414, 44.703979, 54.128166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411987, 0.283112, -0.866091,
		-0.650825, 0.756672, -0.062243,
		0.637725, 0.589317, 0.495996,
		41.437733, 44.880775, 54.276966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961704, 45.156895, 53.632484>,  <40.991325, 44.468254, 53.929768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961704, 45.156895, 53.632484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319023, 45.162285, 53.812191>,  <41.533413, 45.165520, 53.920017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319023, 45.162285, 53.812191>,  <40.961704, 45.156895, 53.632484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319023, 45.162285, 53.812191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404910, 0.409796, -0.817383,
		-0.195122, 0.912078, 0.360613,
		0.893295, 0.013474, 0.449270,
		41.587013, 45.166328, 53.946972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330486, 45.821598, 53.531441>,  <40.961704, 45.156895, 53.632484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330486, 45.821598, 53.531441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620850, 45.560585, 53.618397>,  <41.795067, 45.403976, 53.670570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620850, 45.560585, 53.618397>,  <41.330486, 45.821598, 53.531441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620850, 45.560585, 53.618397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557750, 0.373531, -0.741208,
		0.402461, 0.659298, 0.635099,
		0.725906, -0.652534, 0.217391,
		41.838623, 45.364826, 53.683613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870270, 46.280746, 53.457458>,  <41.330486, 45.821598, 53.531441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870270, 46.280746, 53.457458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014557, 45.909744, 53.418236>,  <42.101131, 45.687141, 53.394703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014557, 45.909744, 53.418236>,  <41.870270, 46.280746, 53.457458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014557, 45.909744, 53.418236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701543, 0.339104, -0.626774,
		0.614587, 0.157299, 0.773007,
		0.360721, -0.927505, -0.098057,
		42.122772, 45.631493, 53.388817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521458, 46.472580, 53.386818>,  <41.870270, 46.280746, 53.457458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521458, 46.472580, 53.386818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515869, 46.084808, 53.288826>,  <42.512516, 45.852146, 53.230030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515869, 46.084808, 53.288826>,  <42.521458, 46.472580, 53.386818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515869, 46.084808, 53.288826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727406, 0.158256, -0.667709,
		0.686065, -0.187529, 0.702956,
		-0.013967, -0.969427, -0.244984,
		42.511681, 45.793980, 53.215332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292351, 46.311298, 53.333179>,  <42.521458, 46.472580, 53.386818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292351, 46.311298, 53.333179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094341, 46.020393, 53.143002>,  <42.975536, 45.845852, 53.028896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094341, 46.020393, 53.143002>,  <43.292351, 46.311298, 53.333179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094341, 46.020393, 53.143002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634665, 0.071070, -0.769512,
		0.593427, -0.682670, 0.426386,
		-0.495020, -0.727262, -0.475442,
		42.945835, 45.802216, 53.000370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836407, 45.829163, 53.155407>,  <43.292351, 46.311298, 53.333179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836407, 45.829163, 53.155407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534386, 45.793533, 52.895576>,  <43.353172, 45.772156, 52.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534386, 45.793533, 52.895576>,  <43.836407, 45.829163, 53.155407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534386, 45.793533, 52.895576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637406, 0.132422, -0.759064,
		0.153640, -0.987182, -0.043203,
		-0.755055, -0.089085, -0.649581,
		43.307869, 45.766811, 52.700703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974129, 45.434910, 52.628410>,  <43.836407, 45.829163, 53.155407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974129, 45.434910, 52.628410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682972, 45.619461, 52.425510>,  <43.508278, 45.730194, 52.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682972, 45.619461, 52.425510>,  <43.974129, 45.434910, 52.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682972, 45.619461, 52.425510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588411, 0.040472, -0.807549,
		-0.352059, -0.886278, -0.300941,
		-0.727892, 0.461382, -0.507247,
		43.464603, 45.757877, 52.273335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907169, 45.102406, 51.869453>,  <43.974129, 45.434910, 52.628410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907169, 45.102406, 51.869453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752342, 45.471085, 51.859215>,  <43.659447, 45.692291, 51.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752342, 45.471085, 51.859215>,  <43.907169, 45.102406, 51.869453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752342, 45.471085, 51.859215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334497, 0.114497, -0.935416,
		-0.859238, -0.370630, -0.352623,
		-0.387068, 0.921696, -0.025594,
		43.636223, 45.747593, 51.851536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844685, 45.154720, 51.220573>,  <43.907169, 45.102406, 51.869453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844685, 45.154720, 51.220573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793388, 45.527649, 51.355827>,  <43.762611, 45.751408, 51.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793388, 45.527649, 51.355827>,  <43.844685, 45.154720, 51.220573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793388, 45.527649, 51.355827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317861, 0.361600, -0.876475,
		-0.939424, -0.004924, -0.342721,
		-0.128244, 0.932320, 0.338131,
		43.754913, 45.807346, 51.457268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403156, 45.431736, 50.778179>,  <43.844685, 45.154720, 51.220573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403156, 45.431736, 50.778179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591854, 45.739815, 50.949879>,  <43.705074, 45.924664, 51.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591854, 45.739815, 50.949879>,  <43.403156, 45.431736, 50.778179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591854, 45.739815, 50.949879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187797, 0.387886, -0.902373,
		-0.861503, 0.506303, 0.038343,
		0.471747, 0.770196, 0.429247,
		43.733379, 45.970875, 51.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137753, 45.947453, 50.483727>,  <43.403156, 45.431736, 50.778179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137753, 45.947453, 50.483727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502251, 46.054955, 50.608570>,  <43.720947, 46.119457, 50.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502251, 46.054955, 50.608570>,  <43.137753, 45.947453, 50.483727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502251, 46.054955, 50.608570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244678, 0.256334, -0.935107,
		-0.331318, 0.928474, 0.167824,
		0.911242, 0.268755, 0.312105,
		43.775623, 46.135582, 50.702202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233250, 46.439808, 50.120770>,  <43.137753, 45.947453, 50.483727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233250, 46.439808, 50.120770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605461, 46.370239, 50.249680>,  <43.828789, 46.328499, 50.327026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605461, 46.370239, 50.249680>,  <43.233250, 46.439808, 50.120770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605461, 46.370239, 50.249680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365071, 0.371266, -0.853747,
		0.028834, 0.912093, 0.408968,
		0.930533, -0.173920, 0.322274,
		43.884621, 46.318062, 50.346363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610493, 46.966721, 49.972370>,  <43.233250, 46.439808, 50.120770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610493, 46.966721, 49.972370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890827, 46.685783, 50.022243>,  <44.059029, 46.517223, 50.052170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890827, 46.685783, 50.022243>,  <43.610493, 46.966721, 49.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890827, 46.685783, 50.022243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423174, 0.268652, -0.865303,
		0.574238, 0.659202, 0.485493,
		0.700838, -0.702339, 0.124687,
		44.101078, 46.475082, 50.059650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143528, 47.282974, 49.864719>,  <43.610493, 46.966721, 49.972370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143528, 47.282974, 49.864719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257042, 46.903221, 49.810841>,  <44.325150, 46.675369, 49.778515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257042, 46.903221, 49.810841>,  <44.143528, 47.282974, 49.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257042, 46.903221, 49.810841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349894, 0.233307, -0.907272,
		0.892771, 0.210341, 0.398392,
		0.283784, -0.949381, -0.134693,
		44.342178, 46.618408, 49.770432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628204, 47.420639, 49.588844>,  <44.143528, 47.282974, 49.864719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628204, 47.420639, 49.588844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604347, 47.029602, 49.508102>,  <44.590034, 46.794979, 49.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604347, 47.029602, 49.508102>,  <44.628204, 47.420639, 49.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604347, 47.029602, 49.508102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434226, 0.156675, -0.887075,
		0.898828, -0.140559, 0.415153,
		-0.059642, -0.977597, -0.201858,
		44.586456, 46.736324, 49.447544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204933, 47.377571, 49.216423>,  <44.628204, 47.420639, 49.588844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204933, 47.377571, 49.216423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942184, 47.090805, 49.123005>,  <44.784534, 46.918743, 49.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942184, 47.090805, 49.123005>,  <45.204933, 47.377571, 49.216423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942184, 47.090805, 49.123005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290723, 0.044972, -0.955750,
		0.695696, -0.695707, 0.178883,
		-0.656877, -0.716917, -0.233545,
		44.745121, 46.875729, 49.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573238, 46.877270, 48.869839>,  <45.204933, 47.377571, 49.216423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573238, 46.877270, 48.869839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187683, 46.847794, 48.767471>,  <44.956352, 46.830109, 48.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187683, 46.847794, 48.767471>,  <45.573238, 46.877270, 48.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187683, 46.847794, 48.767471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252887, 0.048068, -0.966301,
		0.083511, -0.996122, -0.027696,
		-0.963885, -0.073692, -0.255921,
		44.898518, 46.825687, 48.690697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569126, 46.607170, 48.194500>,  <45.573238, 46.877270, 48.869839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569126, 46.607170, 48.194500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193306, 46.743912, 48.202278>,  <44.967815, 46.825958, 48.206947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193306, 46.743912, 48.202278>,  <45.569126, 46.607170, 48.194500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193306, 46.743912, 48.202278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016124, 0.100907, -0.994765,
		-0.342030, -0.934319, -0.100320,
		-0.939551, 0.341857, 0.019449,
		44.911442, 46.846470, 48.208115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237968, 46.291149, 47.623966>,  <45.569126, 46.607170, 48.194500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237968, 46.291149, 47.623966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002850, 46.606216, 47.697800>,  <44.861778, 46.795258, 47.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002850, 46.606216, 47.697800>,  <45.237968, 46.291149, 47.623966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002850, 46.606216, 47.697800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032527, 0.204961, -0.978229,
		-0.808355, -0.581004, -0.094855,
		-0.587796, 0.787671, 0.184580,
		44.826511, 46.842518, 47.753174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767548, 46.239521, 47.133472>,  <45.237968, 46.291149, 47.623966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767548, 46.239521, 47.133472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745953, 46.625946, 47.234509>,  <44.732994, 46.857803, 47.295132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745953, 46.625946, 47.234509>,  <44.767548, 46.239521, 47.133472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745953, 46.625946, 47.234509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108365, 0.245795, -0.963246,
		-0.992644, -0.079375, 0.091418,
		-0.053988, 0.966066, 0.252589,
		44.729755, 46.915768, 47.310284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189396, 46.465294, 46.730320>,  <44.767548, 46.239521, 47.133472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189396, 46.465294, 46.730320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428864, 46.772804, 46.820282>,  <44.572544, 46.957310, 46.874260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428864, 46.772804, 46.820282>,  <44.189396, 46.465294, 46.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428864, 46.772804, 46.820282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067752, 0.328377, -0.942114,
		-0.798124, 0.548779, 0.248676,
		0.598671, 0.768772, 0.224905,
		44.608463, 47.003437, 46.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933491, 46.968117, 46.343933>,  <44.189396, 46.465294, 46.730320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933491, 46.968117, 46.343933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306442, 47.081734, 46.433369>,  <44.530212, 47.149906, 46.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306442, 47.081734, 46.433369>,  <43.933491, 46.968117, 46.343933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306442, 47.081734, 46.433369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071773, 0.460749, -0.884624,
		-0.354292, 0.840850, 0.409205,
		0.932377, 0.284045, 0.223590,
		44.586155, 47.166946, 46.500446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045135, 47.612591, 46.063789>,  <43.933491, 46.968117, 46.343933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045135, 47.612591, 46.063789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422493, 47.489296, 46.112770>,  <44.648907, 47.415321, 46.142159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422493, 47.489296, 46.112770>,  <44.045135, 47.612591, 46.063789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422493, 47.489296, 46.112770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205376, 0.252996, -0.945417,
		0.260430, 0.917052, 0.301980,
		0.943396, -0.308235, 0.122453,
		44.705513, 47.396824, 46.149506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404186, 48.118916, 45.737518>,  <44.045135, 47.612591, 46.063789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404186, 48.118916, 45.737518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679989, 47.833809, 45.788960>,  <44.845470, 47.662746, 45.819824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679989, 47.833809, 45.788960>,  <44.404186, 48.118916, 45.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679989, 47.833809, 45.788960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405742, 0.233050, -0.883776,
		0.599956, 0.661552, 0.449891,
		0.689511, -0.712767, 0.128599,
		44.886841, 47.619980, 45.827538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913132, 48.411438, 45.396168>,  <44.404186, 48.118916, 45.737518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913132, 48.411438, 45.396168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986702, 48.018265, 45.397999>,  <45.030846, 47.782360, 45.399097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986702, 48.018265, 45.397999>,  <44.913132, 48.411438, 45.396168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986702, 48.018265, 45.397999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398553, 0.070319, -0.914446,
		0.898513, 0.170018, 0.404683,
		0.183929, -0.982929, 0.004579,
		45.041882, 47.723385, 45.399372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555847, 48.361027, 45.149399>,  <44.913132, 48.411438, 45.396168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555847, 48.361027, 45.149399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410240, 47.993530, 45.088207>,  <45.322876, 47.773033, 45.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410240, 47.993530, 45.088207>,  <45.555847, 48.361027, 45.149399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410240, 47.993530, 45.088207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302319, 0.038801, -0.952417,
		0.880962, -0.392944, 0.263629,
		-0.364017, -0.918743, -0.152976,
		45.301033, 47.717907, 45.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898182, 48.561432, 45.830971>,  <45.555847, 48.361027, 45.149399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898182, 48.561432, 45.830971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074196, 48.453400, 46.173531>,  <46.179806, 48.388580, 46.379066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074196, 48.453400, 46.173531>,  <45.898182, 48.561432, 45.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074196, 48.453400, 46.173531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708709, 0.481217, 0.515909,
		-0.551453, -0.833958, 0.020343,
		0.440035, -0.270082, 0.856402,
		46.206207, 48.372375, 46.430450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.385853, 41.688183, 52.000488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542076, 41.323303, 51.950916>,  <40.635811, 41.104374, 51.921173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542076, 41.323303, 51.950916>,  <40.385853, 41.688183, 52.000488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542076, 41.323303, 51.950916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365167, 0.277093, -0.888748,
		0.845056, 0.301848, 0.441325,
		0.390555, -0.912199, -0.123934,
		40.659241, 41.049644, 51.913734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060276, 41.816353, 51.754967>,  <40.385853, 41.688183, 52.000488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060276, 41.816353, 51.754967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 41.436485, 51.660141>,  <40.929214, 41.208565, 51.603245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 41.436485, 51.660141>,  <41.060276, 41.816353, 51.754967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978363, 41.436485, 51.660141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335414, 0.159445, -0.928480,
		0.919545, -0.269646, 0.285881,
		-0.204779, -0.949667, -0.237060,
		40.916931, 41.151585, 51.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632156, 41.577770, 51.427837>,  <41.060276, 41.816353, 51.754967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632156, 41.577770, 51.427837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374512, 41.301651, 51.296009>,  <41.219925, 41.135979, 51.216911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374512, 41.301651, 51.296009>,  <41.632156, 41.577770, 51.427837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374512, 41.301651, 51.296009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369593, 0.096373, -0.924182,
		0.669721, -0.717080, 0.193054,
		-0.644107, -0.690296, -0.329571,
		41.181278, 41.094563, 51.197136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980110, 41.064087, 51.016983>,  <41.632156, 41.577770, 51.427837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980110, 41.064087, 51.016983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.601131, 41.009102, 50.901428>,  <41.373745, 40.976112, 50.832096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.601131, 41.009102, 50.901428>,  <41.980110, 41.064087, 51.016983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601131, 41.009102, 50.901428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279021, 0.086762, -0.956357,
		0.156527, -0.986700, -0.043848,
		-0.947442, -0.137461, -0.288891,
		41.316898, 40.967865, 50.814762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037071, 40.517040, 50.549141>,  <41.980110, 41.064087, 51.016983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037071, 40.517040, 50.549141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.687637, 40.691849, 50.463474>,  <41.477978, 40.796734, 50.412075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.687637, 40.691849, 50.463474>,  <42.037071, 40.517040, 50.549141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687637, 40.691849, 50.463474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211569, -0.055286, -0.975798,
		-0.438284, -0.897751, -0.044163,
		-0.873582, 0.437020, -0.214168,
		41.425564, 40.822956, 50.399223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690598, 40.087742, 50.146179>,  <42.037071, 40.517040, 50.549141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690598, 40.087742, 50.146179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560150, 40.457207, 50.065678>,  <41.481884, 40.678886, 50.017376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560150, 40.457207, 50.065678>,  <41.690598, 40.087742, 50.146179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560150, 40.457207, 50.065678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084001, -0.183739, -0.979379,
		-0.941591, -0.336295, -0.017669,
		-0.326114, 0.923659, -0.201257,
		41.462315, 40.734303, 50.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317558, 40.031872, 49.541550>,  <41.690598, 40.087742, 50.146179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317558, 40.031872, 49.541550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.401581, 40.422089, 49.567444>,  <41.451996, 40.656219, 49.582981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.401581, 40.422089, 49.567444>,  <41.317558, 40.031872, 49.541550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401581, 40.422089, 49.567444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197119, 0.022592, -0.980119,
		-0.957611, 0.218643, -0.187553,
		0.210059, 0.975543, 0.064733,
		41.464600, 40.714752, 49.586864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092896, 40.149246, 48.897797>,  <41.317558, 40.031872, 49.541550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092896, 40.149246, 48.897797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297752, 40.470818, 49.018734>,  <41.420666, 40.663761, 49.091297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297752, 40.470818, 49.018734>,  <41.092896, 40.149246, 48.897797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297752, 40.470818, 49.018734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156133, 0.259002, -0.953174,
		-0.844589, 0.535368, 0.007127,
		0.512144, 0.803927, 0.302339,
		41.451397, 40.711994, 49.109436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796585, 40.787605, 48.674839>,  <41.092896, 40.149246, 48.897797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796585, 40.787605, 48.674839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179207, 40.885078, 48.738869>,  <41.408779, 40.943562, 48.777287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179207, 40.885078, 48.738869>,  <40.796585, 40.787605, 48.674839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179207, 40.885078, 48.738869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089178, 0.278179, -0.956381,
		-0.277579, 0.929105, 0.244363,
		0.956555, 0.243679, 0.160072,
		41.466175, 40.958183, 48.786892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869385, 41.461449, 48.363686>,  <40.796585, 40.787605, 48.674839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869385, 41.461449, 48.363686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.249561, 41.340637, 48.393211>,  <41.477665, 41.268150, 48.410927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.249561, 41.340637, 48.393211>,  <40.869385, 41.461449, 48.363686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249561, 41.340637, 48.393211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224886, 0.503875, -0.833988,
		0.214695, 0.809253, 0.546823,
		0.950438, -0.302026, 0.073810,
		41.534691, 41.250031, 48.415356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278927, 42.028446, 48.282482>,  <40.869385, 41.461449, 48.363686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278927, 42.028446, 48.282482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525375, 41.723351, 48.203865>,  <41.673244, 41.540295, 48.156693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525375, 41.723351, 48.203865>,  <41.278927, 42.028446, 48.282482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525375, 41.723351, 48.203865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309376, 0.463823, -0.830153,
		0.724350, 0.450667, 0.521743,
		0.616119, -0.762737, -0.196544,
		41.710213, 41.494530, 48.144901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005394, 42.292099, 48.237873>,  <41.278927, 42.028446, 48.282482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005394, 42.292099, 48.237873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.968243, 41.960030, 48.017990>,  <41.945953, 41.760788, 47.886059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.968243, 41.960030, 48.017990>,  <42.005394, 42.292099, 48.237873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968243, 41.960030, 48.017990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513277, 0.433161, -0.740890,
		0.853182, -0.350966, 0.385879,
		-0.092879, -0.830178, -0.549708,
		41.940380, 41.710976, 47.853077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538807, 42.352779, 47.777233>,  <42.005394, 42.292099, 48.237873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538807, 42.352779, 47.777233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329193, 42.067680, 47.590736>,  <42.203426, 41.896622, 47.478836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329193, 42.067680, 47.590736>,  <42.538807, 42.352779, 47.777233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329193, 42.067680, 47.590736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378286, 0.295690, -0.877193,
		0.763080, -0.636049, 0.114672,
		-0.524030, -0.712748, -0.466243,
		42.171986, 41.853855, 47.450863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005436, 41.936047, 47.325794>,  <42.538807, 42.352779, 47.777233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005436, 41.936047, 47.325794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.628292, 41.912888, 47.194542>,  <42.402008, 41.898994, 47.115791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.628292, 41.912888, 47.194542>,  <43.005436, 41.936047, 47.325794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628292, 41.912888, 47.194542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315439, 0.162091, -0.935000,
		0.107317, -0.985076, -0.134567,
		-0.942858, -0.057894, -0.328126,
		42.345436, 41.895519, 47.096104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090416, 41.808048, 46.508472>,  <43.005436, 41.936047, 47.325794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090416, 41.808048, 46.508472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.700970, 41.895485, 46.534691>,  <42.467304, 41.947948, 46.550423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.700970, 41.895485, 46.534691>,  <43.090416, 41.808048, 46.508472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700970, 41.895485, 46.534691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050525, 0.486570, -0.872179,
		-0.222546, -0.845852, -0.484775,
		-0.973612, 0.218593, 0.065548,
		42.408886, 41.961063, 46.554356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743744, 41.637280, 45.837864>,  <43.090416, 41.808048, 46.508472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743744, 41.637280, 45.837864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.490238, 41.900887, 45.999870>,  <42.338135, 42.059052, 46.097073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.490238, 41.900887, 45.999870>,  <42.743744, 41.637280, 45.837864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490238, 41.900887, 45.999870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058547, 0.481225, -0.874640,
		-0.771306, -0.578029, -0.266400,
		-0.633765, 0.659018, 0.405014,
		42.300110, 42.098591, 46.121376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266254, 41.785252, 45.253662>,  <42.743744, 41.637280, 45.837864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266254, 41.785252, 45.253662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.245880, 42.088272, 45.513977>,  <42.233658, 42.270084, 45.670166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.245880, 42.088272, 45.513977>,  <42.266254, 41.785252, 45.253662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245880, 42.088272, 45.513977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152399, 0.638107, -0.754714,
		-0.987006, -0.137619, 0.082950,
		-0.050932, 0.757549, 0.650789,
		42.230602, 42.315536, 45.709213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636055, 42.087368, 45.099770>,  <42.266254, 41.785252, 45.253662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636055, 42.087368, 45.099770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.853474, 42.367371, 45.285046>,  <41.983925, 42.535374, 45.396214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.853474, 42.367371, 45.285046>,  <41.636055, 42.087368, 45.099770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853474, 42.367371, 45.285046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123605, 0.612562, -0.780698,
		-0.830231, 0.367090, 0.419478,
		0.543543, 0.700009, 0.463194,
		42.016537, 42.577374, 45.424004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261581, 42.754425, 45.075008>,  <41.636055, 42.087368, 45.099770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261581, 42.754425, 45.075008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635696, 42.866425, 45.161583>,  <41.860165, 42.933624, 45.213528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635696, 42.866425, 45.161583>,  <41.261581, 42.754425, 45.075008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635696, 42.866425, 45.161583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099593, 0.795097, -0.598249,
		-0.339595, 0.537978, 0.771528,
		0.935284, 0.280001, 0.216432,
		41.916283, 42.950424, 45.226513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252724, 43.466347, 45.181461>,  <41.261581, 42.754425, 45.075008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252724, 43.466347, 45.181461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.627190, 43.369972, 45.079056>,  <41.851868, 43.312149, 45.017612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.627190, 43.369972, 45.079056>,  <41.252724, 43.466347, 45.181461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627190, 43.369972, 45.079056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008712, 0.712105, -0.702019,
		0.351450, 0.659437, 0.664549,
		0.936166, -0.240935, -0.256015,
		41.908039, 43.297691, 45.002251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658226, 44.108688, 45.087280>,  <41.252724, 43.466347, 45.181461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658226, 44.108688, 45.087280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891289, 43.841843, 44.901604>,  <42.031124, 43.681736, 44.790199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891289, 43.841843, 44.901604>,  <41.658226, 44.108688, 45.087280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891289, 43.841843, 44.901604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020300, 0.559029, -0.828899,
		0.812466, 0.492385, 0.312178,
		0.582655, -0.667115, -0.464188,
		42.066086, 43.641708, 44.762348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269283, 44.390579, 44.691265>,  <41.658226, 44.108688, 45.087280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269283, 44.390579, 44.691265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239906, 44.041412, 44.498344>,  <42.222279, 43.831913, 44.382591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239906, 44.041412, 44.498344>,  <42.269283, 44.390579, 44.691265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239906, 44.041412, 44.498344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174767, 0.464862, -0.867963,
		0.981867, -0.148039, 0.118415,
		-0.073446, -0.872919, -0.482304,
		42.217873, 43.779537, 44.353653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696186, 44.897961, 45.143017>,  <42.269283, 44.390579, 44.691265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696186, 44.897961, 45.143017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.681404, 45.297096, 45.121273>,  <42.672535, 45.536575, 45.108227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.681404, 45.297096, 45.121273>,  <42.696186, 44.897961, 45.143017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681404, 45.297096, 45.121273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339477, 0.063700, 0.938455,
		0.939888, 0.016227, -0.341097,
		-0.036956, 0.997837, -0.054362,
		42.670319, 45.596447, 45.104965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371346, 45.085155, 45.358521>,  <42.696186, 44.897961, 45.143017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371346, 45.085155, 45.358521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.118385, 45.382408, 45.445995>,  <42.966610, 45.560760, 45.498482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.118385, 45.382408, 45.445995>,  <43.371346, 45.085155, 45.358521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118385, 45.382408, 45.445995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308717, -0.017140, 0.950999,
		0.710463, 0.668929, -0.218577,
		-0.632405, 0.743128, 0.218688,
		42.928665, 45.605347, 45.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753899, 45.395660, 45.951645>,  <43.371346, 45.085155, 45.358521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753899, 45.395660, 45.951645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384773, 45.548996, 45.966972>,  <43.163300, 45.640995, 45.976170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384773, 45.548996, 45.966972>,  <43.753899, 45.395660, 45.951645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384773, 45.548996, 45.966972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032944, -0.177635, 0.983545,
		0.383836, 0.906366, 0.176553,
		-0.922813, 0.383336, 0.038323,
		43.107929, 45.663998, 45.978470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726604, 45.912300, 46.465725>,  <43.753899, 45.395660, 45.951645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726604, 45.912300, 46.465725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.349377, 45.783539, 46.432255>,  <43.123039, 45.706280, 46.412170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.349377, 45.783539, 46.432255>,  <43.726604, 45.912300, 46.465725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349377, 45.783539, 46.432255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051274, -0.107871, 0.992842,
		-0.328628, 0.940606, 0.085225,
		-0.943066, -0.321906, -0.083678,
		43.066456, 45.686966, 46.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350277, 46.264408, 46.965752>,  <43.726604, 45.912300, 46.465725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350277, 46.264408, 46.965752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.102379, 45.969917, 46.857021>,  <42.953640, 45.793224, 46.791782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.102379, 45.969917, 46.857021>,  <43.350277, 46.264408, 46.965752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102379, 45.969917, 46.857021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285394, -0.111225, 0.951934,
		-0.731073, 0.667533, -0.141184,
		-0.619744, -0.736226, -0.271824,
		42.916454, 45.749050, 46.775475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721134, 46.292454, 47.456245>,  <43.350277, 46.264408, 46.965752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721134, 46.292454, 47.456245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.669231, 45.927444, 47.301086>,  <42.638088, 45.708439, 47.207989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.669231, 45.927444, 47.301086>,  <42.721134, 46.292454, 47.456245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669231, 45.927444, 47.301086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328107, -0.329653, 0.885254,
		-0.935686, 0.242142, -0.256630,
		-0.129758, -0.912522, -0.387901,
		42.630302, 45.653687, 47.184715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003548, 45.951530, 47.611881>,  <42.721134, 46.292454, 47.456245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003548, 45.951530, 47.611881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.222733, 45.631371, 47.514645>,  <42.354244, 45.439274, 47.456303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.222733, 45.631371, 47.514645>,  <42.003548, 45.951530, 47.611881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222733, 45.631371, 47.514645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367714, -0.491508, 0.789434,
		-0.751347, -0.343192, -0.563646,
		0.547964, -0.800399, -0.243097,
		42.387123, 45.391251, 47.441715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472561, 45.380211, 47.597725>,  <42.003548, 45.951530, 47.611881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472561, 45.380211, 47.597725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850723, 45.264885, 47.658497>,  <42.077621, 45.195690, 47.694962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850723, 45.264885, 47.658497>,  <41.472561, 45.380211, 47.597725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850723, 45.264885, 47.658497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303720, -0.610420, 0.731534,
		-0.118169, -0.737741, -0.664661,
		0.945405, -0.288316, 0.151934,
		42.134346, 45.178391, 47.704079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455994, 44.608810, 47.595215>,  <41.472561, 45.380211, 47.597725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455994, 44.608810, 47.595215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.788139, 44.757149, 47.761574>,  <41.987427, 44.846153, 47.861389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.788139, 44.757149, 47.761574>,  <41.455994, 44.608810, 47.595215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788139, 44.757149, 47.761574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266456, -0.391245, 0.880868,
		0.489382, -0.842259, -0.226063,
		0.830365, 0.370846, 0.415893,
		42.037251, 44.868401, 47.886341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684345, 44.011024, 47.961292>,  <41.455994, 44.608810, 47.595215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684345, 44.011024, 47.961292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.879189, 44.325752, 48.112892>,  <41.996094, 44.514587, 48.203850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.879189, 44.325752, 48.112892>,  <41.684345, 44.011024, 47.961292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879189, 44.325752, 48.112892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243221, -0.294576, 0.924158,
		0.838788, -0.542349, 0.047879,
		0.487112, 0.786818, 0.378997,
		42.025322, 44.561798, 48.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032558, 43.752430, 48.537617>,  <41.684345, 44.011024, 47.961292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032558, 43.752430, 48.537617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068264, 44.141808, 48.621937>,  <42.089687, 44.375435, 48.672527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068264, 44.141808, 48.621937>,  <42.032558, 43.752430, 48.537617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068264, 44.141808, 48.621937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246794, -0.183425, 0.951550,
		0.964948, -0.136963, 0.223867,
		0.089265, 0.973445, 0.210798,
		42.095043, 44.433842, 48.685177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543209, 43.811634, 49.133457>,  <42.032558, 43.752430, 48.537617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543209, 43.811634, 49.133457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299522, 44.128448, 49.117764>,  <42.153309, 44.318535, 49.108349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299522, 44.128448, 49.117764>,  <42.543209, 43.811634, 49.133457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299522, 44.128448, 49.117764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317599, -0.198361, 0.927245,
		0.726626, 0.577353, 0.372394,
		-0.609216, 0.792033, -0.039233,
		42.116756, 44.366058, 49.105995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734497, 44.274254, 49.723885>,  <42.543209, 43.811634, 49.133457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734497, 44.274254, 49.723885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359085, 44.357597, 49.613796>,  <42.133839, 44.407604, 49.547741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359085, 44.357597, 49.613796>,  <42.734497, 44.274254, 49.723885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359085, 44.357597, 49.613796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291195, -0.049683, 0.955373,
		0.185388, 0.976789, 0.107302,
		-0.938529, 0.208361, -0.275225,
		42.077526, 44.420105, 49.531227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499020, 44.674229, 50.288914>,  <42.734497, 44.274254, 49.723885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499020, 44.674229, 50.288914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.159637, 44.533188, 50.131031>,  <41.956009, 44.448563, 50.036301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.159637, 44.533188, 50.131031>,  <42.499020, 44.674229, 50.288914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159637, 44.533188, 50.131031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412722, -0.026074, 0.910484,
		-0.331331, 0.935409, -0.123405,
		-0.848458, -0.352604, -0.394703,
		41.905102, 44.427406, 50.012619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954765, 44.851372, 50.732170>,  <42.499020, 44.674229, 50.288914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954765, 44.851372, 50.732170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754875, 44.594749, 50.499382>,  <41.634941, 44.440777, 50.359711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754875, 44.594749, 50.499382>,  <41.954765, 44.851372, 50.732170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754875, 44.594749, 50.499382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612868, -0.212906, 0.760963,
		-0.612103, 0.736939, -0.286794,
		-0.499723, -0.641554, -0.581967,
		41.604958, 44.402283, 50.324791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202095, 44.946346, 50.924122>,  <41.954765, 44.851372, 50.732170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202095, 44.946346, 50.924122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211319, 44.583260, 50.756538>,  <41.216854, 44.365410, 50.655987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211319, 44.583260, 50.756538>,  <41.202095, 44.946346, 50.924122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211319, 44.583260, 50.756538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546270, -0.362421, 0.755143,
		-0.837292, 0.211448, -0.504214,
		0.023064, -0.907712, -0.418959,
		41.218239, 44.310947, 50.630852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481167, 44.720966, 50.840298>,  <41.202095, 44.946346, 50.924122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481167, 44.720966, 50.840298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722832, 44.402924, 50.819149>,  <40.867828, 44.212097, 50.806461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722832, 44.402924, 50.819149>,  <40.481167, 44.720966, 50.840298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722832, 44.402924, 50.819149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478998, -0.415386, 0.773314,
		-0.636829, -0.441880, -0.631815,
		0.604160, -0.795108, -0.052870,
		40.904079, 44.164391, 50.803288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938431, 44.172031, 50.821064>,  <40.481167, 44.720966, 50.840298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938431, 44.172031, 50.821064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289001, 44.014183, 50.931446>,  <40.499344, 43.919476, 50.997677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289001, 44.014183, 50.931446>,  <39.938431, 44.172031, 50.821064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289001, 44.014183, 50.931446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461409, -0.524261, 0.715718,
		-0.137759, -0.754605, -0.641556,
		0.876427, -0.394616, 0.275959,
		40.551929, 43.895798, 51.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.840866, 43.436039, 50.963902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180393, 43.516563, 51.159447>,  <40.384109, 43.564877, 51.276772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180393, 43.516563, 51.159447>,  <39.840866, 43.436039, 50.963902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180393, 43.516563, 51.159447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329874, -0.520929, 0.787284,
		0.413151, -0.829522, -0.375766,
		0.848817, 0.201312, 0.488860,
		40.435040, 43.576958, 51.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977531, 42.801319, 51.162762>,  <39.840866, 43.436039, 50.963902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977531, 42.801319, 51.162762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126465, 43.090881, 51.395081>,  <40.215824, 43.264618, 51.534473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126465, 43.090881, 51.395081>,  <39.977531, 42.801319, 51.162762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126465, 43.090881, 51.395081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219728, -0.539249, 0.812976,
		0.901712, -0.430319, -0.041720,
		0.372337, 0.723903, 0.580800,
		40.238167, 43.308052, 51.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403175, 42.348446, 51.662544>,  <39.977531, 42.801319, 51.162762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403175, 42.348446, 51.662544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.340435, 42.717438, 51.803638>,  <40.302792, 42.938835, 51.888294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.340435, 42.717438, 51.803638>,  <40.403175, 42.348446, 51.662544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340435, 42.717438, 51.803638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214237, -0.380436, 0.899650,
		0.964105, 0.065545, 0.257303,
		-0.156855, 0.922481, 0.352739,
		40.293377, 42.994183, 51.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733181, 42.301907, 52.329998>,  <40.403175, 42.348446, 51.662544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733181, 42.301907, 52.329998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504333, 42.627907, 52.366783>,  <40.367023, 42.823505, 52.388855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504333, 42.627907, 52.366783>,  <40.733181, 42.301907, 52.329998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504333, 42.627907, 52.366783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310103, -0.318751, 0.895675,
		0.759286, 0.483916, 0.435098,
		-0.572119, 0.814999, 0.091959,
		40.332699, 42.872406, 52.394371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812939, 42.648724, 53.046124>,  <40.733181, 42.301907, 52.329998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812939, 42.648724, 53.046124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461601, 42.763474, 52.893169>,  <40.250801, 42.832321, 52.801395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461601, 42.763474, 52.893169>,  <40.812939, 42.648724, 53.046124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461601, 42.763474, 52.893169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447555, -0.212426, 0.868660,
		0.167964, 0.934120, 0.314973,
		-0.878341, 0.286872, -0.382390,
		40.198097, 42.849533, 52.778454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575237, 43.003117, 53.524357>,  <40.812939, 42.648724, 53.046124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575237, 43.003117, 53.524357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247398, 42.911148, 53.314445>,  <40.050694, 42.855968, 53.188499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247398, 42.911148, 53.314445>,  <40.575237, 43.003117, 53.524357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247398, 42.911148, 53.314445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499715, -0.161161, 0.851065,
		-0.280249, 0.959773, 0.017194,
		-0.819600, -0.229918, -0.524779,
		40.001518, 42.842171, 53.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975525, 43.374763, 53.866283>,  <40.575237, 43.003117, 53.524357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975525, 43.374763, 53.866283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824310, 43.077209, 53.645840>,  <39.733582, 42.898678, 53.513573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824310, 43.077209, 53.645840>,  <39.975525, 43.374763, 53.866283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824310, 43.077209, 53.645840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699238, -0.160724, 0.696588,
		-0.606760, 0.648690, -0.459396,
		-0.378034, -0.743888, -0.551109,
		39.710899, 42.854042, 53.480507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228828, 43.381748, 53.830818>,  <39.975525, 43.374763, 53.866283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228828, 43.381748, 53.830818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322639, 42.994713, 53.793346>,  <39.378925, 42.762493, 53.770863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322639, 42.994713, 53.793346>,  <39.228828, 43.381748, 53.830818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322639, 42.994713, 53.793346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676625, -0.231667, 0.698934,
		-0.697981, -0.100533, -0.709024,
		0.234523, -0.967586, -0.093676,
		39.392998, 42.704437, 53.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528503, 42.959976, 53.752281>,  <39.228828, 43.381748, 53.830818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528503, 42.959976, 53.752281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819939, 42.737518, 53.912212>,  <38.994801, 42.604042, 54.008171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819939, 42.737518, 53.912212>,  <38.528503, 42.959976, 53.752281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819939, 42.737518, 53.912212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632329, -0.321735, 0.704731,
		-0.263294, -0.766281, -0.586079,
		0.728585, -0.556147, 0.399831,
		39.038513, 42.570675, 54.032162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304703, 42.291481, 53.697262>,  <38.528503, 42.959976, 53.752281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304703, 42.291481, 53.697262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560165, 42.274368, 54.004585>,  <38.713444, 42.264099, 54.188980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560165, 42.274368, 54.004585>,  <38.304703, 42.291481, 53.697262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560165, 42.274368, 54.004585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698849, -0.450153, 0.555852,
		0.322073, -0.891926, -0.317391,
		0.638654, -0.042784, 0.768304,
		38.751762, 42.261532, 54.235077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363438, 41.558075, 53.877590>,  <38.304703, 42.291481, 53.697262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363438, 41.558075, 53.877590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480835, 41.798203, 54.175175>,  <38.551273, 41.942280, 54.353725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480835, 41.798203, 54.175175>,  <38.363438, 41.558075, 53.877590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480835, 41.798203, 54.175175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614696, -0.477504, 0.627805,
		0.732127, -0.641569, 0.228866,
		0.293495, 0.600316, 0.743963,
		38.568882, 41.978298, 54.398365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473412, 41.069897, 54.440655>,  <38.363438, 41.558075, 53.877590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473412, 41.069897, 54.440655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 41.426674, 54.621300>,  <38.459202, 41.640739, 54.729687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 41.426674, 54.621300>,  <38.473412, 41.069897, 54.440655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464531, 41.426674, 54.621300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655031, -0.354238, 0.667420,
		0.755275, -0.280998, 0.592115,
		-0.022206, 0.891939, 0.451609,
		38.457870, 41.694256, 54.756783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590858, 41.013424, 55.158474>,  <38.473412, 41.069897, 54.440655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590858, 41.013424, 55.158474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403389, 41.364410, 55.117676>,  <38.290909, 41.575001, 55.093197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403389, 41.364410, 55.117676>,  <38.590858, 41.013424, 55.158474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403389, 41.364410, 55.117676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417696, -0.118386, 0.900841,
		0.778381, 0.464801, 0.421998,
		-0.468671, 0.877465, -0.101996,
		38.262787, 41.627651, 55.087078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643238, 41.408737, 55.784409>,  <38.590858, 41.013424, 55.158474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643238, 41.408737, 55.784409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339508, 41.590805, 55.598400>,  <38.157269, 41.700047, 55.486797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339508, 41.590805, 55.598400>,  <38.643238, 41.408737, 55.784409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339508, 41.590805, 55.598400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492456, 0.065147, 0.867896,
		0.425336, 0.888017, 0.174684,
		-0.759326, 0.455172, -0.465018,
		38.111710, 41.727356, 55.458893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520908, 41.957359, 56.179264>,  <38.643238, 41.408737, 55.784409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520908, 41.957359, 56.179264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167206, 41.917137, 55.996841>,  <37.954987, 41.893005, 55.887386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167206, 41.917137, 55.996841>,  <38.520908, 41.957359, 56.179264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167206, 41.917137, 55.996841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437468, -0.163459, 0.884253,
		-0.163459, 0.981412, 0.100551,
		-0.884253, -0.100551, -0.456056,
		37.901932, 41.886971, 55.860023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074619, 42.361237, 56.507797>,  <38.520908, 41.957359, 56.179264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074619, 42.361237, 56.507797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845268, 42.103279, 56.305672>,  <37.707657, 41.948505, 56.184395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845268, 42.103279, 56.305672>,  <38.074619, 42.361237, 56.507797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845268, 42.103279, 56.305672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486198, -0.228590, 0.843421,
		-0.659430, 0.729283, -0.182479,
		-0.573379, -0.644898, -0.505315,
		37.673256, 41.909809, 56.154076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307140, 42.429970, 56.704136>,  <38.074619, 42.361237, 56.507797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307140, 42.429970, 56.704136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324104, 42.067558, 56.535706>,  <37.334282, 41.850109, 56.434647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324104, 42.067558, 56.535706>,  <37.307140, 42.429970, 56.704136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324104, 42.067558, 56.535706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645951, -0.346386, 0.680268,
		-0.762200, 0.243147, -0.599942,
		0.042406, -0.906033, -0.421077,
		37.336826, 41.795750, 56.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665722, 42.325382, 56.773418>,  <37.307140, 42.429970, 56.704136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665722, 42.325382, 56.773418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849625, 41.973885, 56.722153>,  <36.959965, 41.762985, 56.691395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849625, 41.973885, 56.722153>,  <36.665722, 42.325382, 56.773418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849625, 41.973885, 56.722153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530186, -0.387392, 0.754208,
		-0.712409, -0.278801, -0.644006,
		0.459757, -0.878748, -0.128165,
		36.987553, 41.710258, 56.683704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153778, 41.752357, 56.915783>,  <36.665722, 42.325382, 56.773418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153778, 41.752357, 56.915783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517380, 41.589790, 56.952747>,  <36.735538, 41.492249, 56.974926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517380, 41.589790, 56.952747>,  <36.153778, 41.752357, 56.915783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517380, 41.589790, 56.952747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280305, -0.432016, 0.857200,
		-0.308458, -0.805100, -0.506624,
		0.909001, -0.406419, 0.092415,
		36.790081, 41.467865, 56.980473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089046, 41.232407, 57.399345>,  <36.153778, 41.752357, 56.915783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089046, 41.232407, 57.399345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.488892, 41.233780, 57.410324>,  <36.728798, 41.234604, 57.416912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.488892, 41.233780, 57.410324>,  <36.089046, 41.232407, 57.399345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488892, 41.233780, 57.410324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025595, -0.261589, 0.964840,
		0.010497, -0.965173, -0.261401,
		0.999617, 0.003437, 0.027449,
		36.788776, 41.234810, 57.418560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357643, 40.638233, 57.750767>,  <36.089046, 41.232407, 57.399345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357643, 40.638233, 57.750767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651749, 40.906891, 57.787167>,  <36.828213, 41.068085, 57.809006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651749, 40.906891, 57.787167>,  <36.357643, 40.638233, 57.750767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651749, 40.906891, 57.787167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050816, -0.188513, 0.980755,
		0.675877, -0.716486, -0.172737,
		0.735261, 0.671648, 0.091002,
		36.872326, 41.108387, 57.814468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940449, 40.264080, 58.000916>,  <36.357643, 40.638233, 57.750767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940449, 40.264080, 58.000916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919216, 40.656250, 58.076759>,  <36.906479, 40.891552, 58.122265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919216, 40.656250, 58.076759>,  <36.940449, 40.264080, 58.000916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919216, 40.656250, 58.076759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090106, -0.193804, 0.976893,
		0.994517, 0.034766, 0.098628,
		-0.053077, 0.980424, 0.189609,
		36.903294, 40.950378, 58.133640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418159, 40.372204, 58.543011>,  <36.940449, 40.264080, 58.000916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418159, 40.372204, 58.543011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155121, 40.673248, 58.556580>,  <36.997299, 40.853874, 58.564720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155121, 40.673248, 58.556580>,  <37.418159, 40.372204, 58.543011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155121, 40.673248, 58.556580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082216, 0.026931, 0.996251,
		0.748872, 0.657919, -0.079586,
		-0.657595, 0.752607, 0.033924,
		36.957844, 40.899029, 58.566757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740475, 39.974815, 59.066467>,  <37.418159, 40.372204, 58.543011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740475, 39.974815, 59.066467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898510, 39.690208, 59.298897>,  <37.993332, 39.519444, 59.438354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898510, 39.690208, 59.298897>,  <37.740475, 39.974815, 59.066467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898510, 39.690208, 59.298897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785099, -0.066919, -0.615745,
		0.476999, 0.699474, 0.532173,
		0.395085, -0.711518, 0.581077,
		38.017036, 39.476753, 59.473221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397739, 40.064880, 59.158241>,  <37.740475, 39.974815, 59.066467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397739, 40.064880, 59.158241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400772, 39.669456, 59.218506>,  <38.402592, 39.432201, 59.254665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400772, 39.669456, 59.218506>,  <38.397739, 40.064880, 59.158241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400772, 39.669456, 59.218506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507661, -0.126004, -0.852293,
		0.861523, 0.082945, 0.500897,
		0.007578, -0.988556, 0.150664,
		38.403046, 39.372890, 59.263706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164738, 39.807400, 59.131615>,  <38.397739, 40.064880, 59.158241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164738, 39.807400, 59.131615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902153, 39.522293, 59.032806>,  <38.744602, 39.351227, 58.973522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902153, 39.522293, 59.032806>,  <39.164738, 39.807400, 59.131615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902153, 39.522293, 59.032806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473847, -0.134825, -0.870225,
		0.586964, -0.688319, 0.426251,
		-0.656461, -0.712769, -0.247020,
		38.705215, 39.308464, 58.958702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488865, 39.312157, 58.896812>,  <39.164738, 39.807400, 59.131615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488865, 39.312157, 58.896812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126087, 39.260651, 58.736382>,  <38.908421, 39.229748, 58.640121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126087, 39.260651, 58.736382>,  <39.488865, 39.312157, 58.896812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126087, 39.260651, 58.736382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411311, -0.065191, -0.909161,
		0.090921, -0.989530, 0.112087,
		-0.906950, -0.128765, -0.401078,
		38.854004, 39.222023, 58.616058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688335, 38.781246, 58.491470>,  <39.488865, 39.312157, 58.896812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688335, 38.781246, 58.491470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341805, 38.916008, 58.343971>,  <39.133884, 38.996864, 58.255470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341805, 38.916008, 58.343971>,  <39.688335, 38.781246, 58.491470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341805, 38.916008, 58.343971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371913, -0.057690, -0.926473,
		-0.333407, -0.939769, -0.075321,
		-0.866326, 0.336906, -0.368747,
		39.081905, 39.017078, 58.233349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591171, 38.367863, 57.891331>,  <39.688335, 38.781246, 58.491470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591171, 38.367863, 57.891331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353470, 38.688385, 57.863716>,  <39.210850, 38.880699, 57.847149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353470, 38.688385, 57.863716>,  <39.591171, 38.367863, 57.891331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353470, 38.688385, 57.863716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319055, 0.156075, -0.934797,
		-0.738284, -0.577536, -0.348409,
		-0.594257, 0.801307, -0.069038,
		39.175194, 38.928776, 57.843006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377155, 38.317715, 57.226490>,  <39.591171, 38.367863, 57.891331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377155, 38.317715, 57.226490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322853, 38.701965, 57.323460>,  <39.290272, 38.932514, 57.381641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322853, 38.701965, 57.323460>,  <39.377155, 38.317715, 57.226490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322853, 38.701965, 57.323460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297581, 0.272926, -0.914853,
		-0.944995, -0.052057, -0.322916,
		-0.135757, 0.960625, 0.242423,
		39.282127, 38.990154, 57.396187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137989, 38.544579, 56.623856>,  <39.377155, 38.317715, 57.226490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137989, 38.544579, 56.623856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271355, 38.875916, 56.803940>,  <39.351376, 39.074718, 56.911991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271355, 38.875916, 56.803940>,  <39.137989, 38.544579, 56.623856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271355, 38.875916, 56.803940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257608, 0.379315, -0.888683,
		-0.906903, 0.412277, -0.086918,
		0.333415, 0.828340, 0.450208,
		39.371380, 39.124416, 56.939003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786148, 39.124130, 56.257019>,  <39.137989, 38.544579, 56.623856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786148, 39.124130, 56.257019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.115227, 39.276787, 56.425552>,  <39.312672, 39.368382, 56.526672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.115227, 39.276787, 56.425552>,  <38.786148, 39.124130, 56.257019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115227, 39.276787, 56.425552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261839, 0.403476, -0.876725,
		-0.504594, 0.831599, 0.232009,
		0.822694, 0.381642, 0.421337,
		39.362034, 39.391281, 56.551952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823132, 39.796940, 56.048653>,  <38.786148, 39.124130, 56.257019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823132, 39.796940, 56.048653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198170, 39.715721, 56.161564>,  <39.423195, 39.666992, 56.229313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198170, 39.715721, 56.161564>,  <38.823132, 39.796940, 56.048653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198170, 39.715721, 56.161564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334922, 0.309103, -0.890103,
		0.093476, 0.929101, 0.357819,
		0.937598, -0.203044, 0.282282,
		39.479450, 39.654808, 56.246250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177357, 40.418335, 55.839954>,  <38.823132, 39.796940, 56.048653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177357, 40.418335, 55.839954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477093, 40.163208, 55.911160>,  <39.656933, 40.010132, 55.953880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477093, 40.163208, 55.911160>,  <39.177357, 40.418335, 55.839954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477093, 40.163208, 55.911160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525597, 0.409362, -0.745768,
		0.402791, 0.652393, 0.641983,
		0.749338, -0.637813, 0.178009,
		39.701893, 39.971863, 55.964561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791824, 40.879482, 55.805828>,  <39.177357, 40.418335, 55.839954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791824, 40.879482, 55.805828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887184, 40.496910, 55.738419>,  <39.944401, 40.267365, 55.697971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887184, 40.496910, 55.738419>,  <39.791824, 40.879482, 55.805828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887184, 40.496910, 55.738419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567780, 0.278047, -0.774800,
		0.787903, 0.089027, 0.609330,
		0.238401, -0.956433, -0.168526,
		39.958706, 40.209980, 55.687862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451092, 40.936836, 55.757149>,  <39.791824, 40.879482, 55.805828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451092, 40.936836, 55.757149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310242, 40.612709, 55.569794>,  <40.225731, 40.418232, 55.457382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310242, 40.612709, 55.569794>,  <40.451092, 40.936836, 55.757149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310242, 40.612709, 55.569794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354945, 0.347441, -0.867928,
		0.866038, -0.471871, 0.165277,
		-0.352127, -0.810322, -0.468385,
		40.204605, 40.369614, 55.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903156, 40.844570, 55.185749>,  <40.451092, 40.936836, 55.757149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903156, 40.844570, 55.185749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590485, 40.615562, 55.086800>,  <40.402882, 40.478157, 55.027428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590485, 40.615562, 55.086800>,  <40.903156, 40.844570, 55.185749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590485, 40.615562, 55.086800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157704, 0.202308, -0.966541,
		0.603413, -0.794537, -0.067851,
		-0.781679, -0.572523, -0.247377,
		40.355980, 40.443806, 55.012585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227554, 40.405167, 54.716755>,  <40.903156, 40.844570, 55.185749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227554, 40.405167, 54.716755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832489, 40.382896, 54.658211>,  <40.595451, 40.369534, 54.623085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832489, 40.382896, 54.658211>,  <41.227554, 40.405167, 54.716755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832489, 40.382896, 54.658211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136258, 0.155039, -0.978466,
		0.077170, -0.986338, -0.145540,
		-0.987663, -0.055677, -0.146361,
		40.536190, 40.366192, 54.614304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178299, 40.087669, 54.189640>,  <41.227554, 40.405167, 54.716755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178299, 40.087669, 54.189640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.806755, 40.235771, 54.194286>,  <40.583828, 40.324631, 54.197075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.806755, 40.235771, 54.194286>,  <41.178299, 40.087669, 54.189640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806755, 40.235771, 54.194286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004771, 0.019406, -0.999800,
		-0.370407, -0.928728, -0.016259,
		-0.928858, 0.370255, 0.011619,
		40.528099, 40.346848, 54.197773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723621, 39.674614, 53.772923>,  <41.178299, 40.087669, 54.189640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723621, 39.674614, 53.772923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538330, 40.029076, 53.767998>,  <40.427155, 40.241753, 53.765041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538330, 40.029076, 53.767998>,  <40.723621, 39.674614, 53.772923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538330, 40.029076, 53.767998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090534, 0.033494, -0.995330,
		-0.881605, -0.462175, -0.095743,
		-0.463224, 0.886156, -0.012314,
		40.399364, 40.294922, 53.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257725, 39.616417, 53.211636>,  <40.723621, 39.674614, 53.772923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257725, 39.616417, 53.211636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.274101, 40.009209, 53.285439>,  <40.283928, 40.244884, 53.329720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.274101, 40.009209, 53.285439>,  <40.257725, 39.616417, 53.211636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274101, 40.009209, 53.285439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087270, 0.180441, -0.979706,
		-0.995343, 0.056215, -0.078309,
		0.040944, 0.981978, 0.184507,
		40.286385, 40.303802, 53.340790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666672, 39.976055, 52.794651>,  <40.257725, 39.616417, 53.211636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666672, 39.976055, 52.794651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964222, 40.227638, 52.885036>,  <40.142754, 40.378590, 52.939266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964222, 40.227638, 52.885036>,  <39.666672, 39.976055, 52.794651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964222, 40.227638, 52.885036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176560, 0.141146, -0.974117,
		-0.644571, 0.764520, -0.006053,
		0.743878, 0.628956, 0.225962,
		40.187386, 40.416325, 52.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630783, 40.428604, 52.245140>,  <39.666672, 39.976055, 52.794651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630783, 40.428604, 52.245140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978497, 40.548630, 52.402271>,  <40.187126, 40.620644, 52.496548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978497, 40.548630, 52.402271>,  <39.630783, 40.428604, 52.245140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978497, 40.548630, 52.402271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285352, 0.344291, -0.894448,
		-0.403634, 0.889622, 0.213663,
		0.869283, 0.300061, 0.392824,
		40.239281, 40.638649, 52.520119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783535, 41.227036, 52.158363>,  <39.630783, 40.428604, 52.245140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783535, 41.227036, 52.158363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139614, 41.046059, 52.179733>,  <40.353260, 40.937473, 52.192554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139614, 41.046059, 52.179733>,  <39.783535, 41.227036, 52.158363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139614, 41.046059, 52.179733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240559, 0.367221, -0.898488,
		0.386894, 0.812679, 0.435737,
		0.890193, -0.452440, 0.053422,
		40.406673, 40.910328, 52.195759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.297680, 45.414452, 49.011505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563644, 45.119972, 49.061954>,  <41.723225, 44.943283, 49.092224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563644, 45.119972, 49.061954>,  <41.297680, 45.414452, 49.011505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563644, 45.119972, 49.061954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463546, 0.274321, -0.842540,
		0.585678, 0.618677, 0.523661,
		0.664911, -0.736198, 0.126122,
		41.763119, 44.899113, 49.099792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048489, 45.758717, 48.873119>,  <41.297680, 45.414452, 49.011505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048489, 45.758717, 48.873119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069321, 45.361176, 48.834045>,  <42.081821, 45.122650, 48.810600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069321, 45.361176, 48.834045>,  <42.048489, 45.758717, 48.873119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069321, 45.361176, 48.834045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327841, 0.109413, -0.938375,
		0.943296, 0.016845, 0.331525,
		0.052080, -0.993854, -0.097687,
		42.084946, 45.063019, 48.804741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700089, 45.658588, 48.665028>,  <42.048489, 45.758717, 48.873119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700089, 45.658588, 48.665028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.484894, 45.344315, 48.542873>,  <42.355778, 45.155750, 48.469582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.484894, 45.344315, 48.542873>,  <42.700089, 45.658588, 48.665028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484894, 45.344315, 48.542873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435868, 0.050809, -0.898576,
		0.721516, -0.616533, 0.315121,
		-0.537991, -0.785688, -0.305386,
		42.323498, 45.108608, 48.451256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174038, 45.219296, 48.406914>,  <42.700089, 45.658588, 48.665028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174038, 45.219296, 48.406914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821930, 45.107079, 48.253853>,  <42.610664, 45.039749, 48.162018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821930, 45.107079, 48.253853>,  <43.174038, 45.219296, 48.406914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821930, 45.107079, 48.253853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416079, -0.068812, -0.906721,
		0.228046, -0.957371, 0.177302,
		-0.880269, -0.280546, -0.382650,
		42.557850, 45.022915, 48.139057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309460, 44.668934, 47.885944>,  <43.174038, 45.219296, 48.406914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309460, 44.668934, 47.885944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947594, 44.816696, 47.800972>,  <42.730476, 44.905354, 47.749989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947594, 44.816696, 47.800972>,  <43.309460, 44.668934, 47.885944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947594, 44.816696, 47.800972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293270, 0.178049, -0.939304,
		-0.309164, -0.912050, -0.269410,
		-0.904660, 0.369409, -0.212430,
		42.676197, 44.927517, 47.737244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122841, 44.421848, 47.165886>,  <43.309460, 44.668934, 47.885944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122841, 44.421848, 47.165886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901104, 44.738609, 47.268326>,  <42.768063, 44.928665, 47.329788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901104, 44.738609, 47.268326>,  <43.122841, 44.421848, 47.165886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901104, 44.738609, 47.268326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163128, 0.405113, -0.899596,
		-0.816144, -0.456910, -0.353755,
		-0.554345, 0.791907, 0.256096,
		42.734802, 44.976181, 47.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649166, 44.463554, 46.710312>,  <43.122841, 44.421848, 47.165886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649166, 44.463554, 46.710312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644119, 44.838371, 46.849903>,  <42.641090, 45.063263, 46.933659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644119, 44.838371, 46.849903>,  <42.649166, 44.463554, 46.710312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644119, 44.838371, 46.849903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100177, 0.346067, -0.932846,
		-0.994890, -0.046731, 0.089503,
		-0.012619, 0.937045, 0.348979,
		42.640335, 45.119484, 46.954597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087692, 44.832020, 46.356354>,  <42.649166, 44.463554, 46.710312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087692, 44.832020, 46.356354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.351376, 45.097862, 46.497059>,  <42.509586, 45.257370, 46.581482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.351376, 45.097862, 46.497059>,  <42.087692, 44.832020, 46.356354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351376, 45.097862, 46.497059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015742, 0.479888, -0.877189,
		-0.751792, 0.572716, 0.326810,
		0.659212, 0.664608, 0.351760,
		42.549141, 45.297245, 46.602589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801964, 45.444473, 46.194557>,  <42.087692, 44.832020, 46.356354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801964, 45.444473, 46.194557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192291, 45.516342, 46.244354>,  <42.426487, 45.559464, 46.274231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192291, 45.516342, 46.244354>,  <41.801964, 45.444473, 46.194557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192291, 45.516342, 46.244354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060628, 0.324716, -0.943867,
		-0.210007, 0.928590, 0.305971,
		0.975818, 0.179668, 0.124491,
		42.485035, 45.570244, 46.281700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889717, 46.133945, 45.937283>,  <41.801964, 45.444473, 46.194557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889717, 46.133945, 45.937283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257523, 45.976929, 45.945374>,  <42.478207, 45.882717, 45.950226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257523, 45.976929, 45.945374>,  <41.889717, 46.133945, 45.937283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257523, 45.976929, 45.945374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212055, 0.452088, -0.866400,
		0.330954, 0.800954, 0.498941,
		0.919512, -0.392542, 0.020226,
		42.533375, 45.859165, 45.951443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276558, 46.688049, 45.666565>,  <41.889717, 46.133945, 45.937283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276558, 46.688049, 45.666565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509323, 46.364838, 45.629757>,  <42.648983, 46.170910, 45.607674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509323, 46.364838, 45.629757>,  <42.276558, 46.688049, 45.666565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509323, 46.364838, 45.629757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185880, 0.242301, -0.952228,
		0.791727, 0.537006, 0.291194,
		0.581908, -0.808032, -0.092017,
		42.683895, 46.122429, 45.602150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903378, 46.867687, 45.245941>,  <42.276558, 46.688049, 45.666565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903378, 46.867687, 45.245941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835297, 46.477142, 45.192642>,  <42.794449, 46.242817, 45.160664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835297, 46.477142, 45.192642>,  <42.903378, 46.867687, 45.245941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835297, 46.477142, 45.192642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045955, 0.127207, -0.990811,
		0.984337, -0.174760, 0.023218,
		-0.170201, -0.976359, -0.133246,
		42.784237, 46.184235, 45.152668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240246, 46.679371, 44.581867>,  <42.903378, 46.867687, 45.245941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240246, 46.679371, 44.581867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944130, 46.418411, 44.646778>,  <42.766460, 46.261833, 44.685726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944130, 46.418411, 44.646778>,  <43.240246, 46.679371, 44.581867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944130, 46.418411, 44.646778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110573, -0.119936, -0.986605,
		0.663128, -0.748321, 0.016649,
		-0.740294, -0.652404, 0.162277,
		42.722042, 46.222691, 44.695461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626102, 47.192123, 44.202023>,  <43.240246, 46.679371, 44.581867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626102, 47.192123, 44.202023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443855, 47.343414, 44.524353>,  <43.334507, 47.434189, 44.717751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443855, 47.343414, 44.524353>,  <43.626102, 47.192123, 44.202023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443855, 47.343414, 44.524353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889011, 0.239574, 0.390209,
		-0.045466, 0.894174, -0.445405,
		-0.455622, 0.378228, 0.805824,
		43.307167, 47.456882, 44.766102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303402, 46.996094, 44.580883>,  <43.626102, 47.192123, 44.202023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303402, 46.996094, 44.580883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675301, 47.142769, 44.594173>,  <44.898441, 47.230774, 44.602146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675301, 47.142769, 44.594173>,  <44.303402, 46.996094, 44.580883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675301, 47.142769, 44.594173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064899, -0.252034, 0.965540,
		0.362425, -0.895555, -0.258126,
		0.929751, 0.366688, 0.033223,
		44.954227, 47.252777, 44.604141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846409, 46.496128, 44.855358>,  <44.303402, 46.996094, 44.580883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846409, 46.496128, 44.855358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965866, 46.872719, 44.917896>,  <45.037540, 47.098671, 44.955418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965866, 46.872719, 44.917896>,  <44.846409, 46.496128, 44.855358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965866, 46.872719, 44.917896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026955, -0.172072, 0.984715,
		0.953985, -0.289862, -0.076765,
		0.298641, 0.941473, 0.156341,
		45.055458, 47.155159, 44.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348358, 46.443386, 45.373386>,  <44.846409, 46.496128, 44.855358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348358, 46.443386, 45.373386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248669, 46.830376, 45.390766>,  <45.188854, 47.062569, 45.401196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248669, 46.830376, 45.390766>,  <45.348358, 46.443386, 45.373386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248669, 46.830376, 45.390766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049295, -0.032138, 0.998267,
		0.967190, 0.250934, -0.039681,
		-0.249224, 0.967470, 0.043453,
		45.173901, 47.120617, 45.403801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730640, 46.667465, 45.918427>,  <45.348358, 46.443386, 45.373386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730640, 46.667465, 45.918427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484451, 46.982018, 45.897301>,  <45.336739, 47.170750, 45.884624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484451, 46.982018, 45.897301>,  <45.730640, 46.667465, 45.918427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484451, 46.982018, 45.897301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244787, -0.127030, 0.961219,
		0.749180, 0.604534, 0.270680,
		-0.615474, 0.786385, -0.052814,
		45.299809, 47.217934, 45.881458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959221, 47.265602, 46.454967>,  <45.730640, 46.667465, 45.918427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959221, 47.265602, 46.454967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572731, 47.304016, 46.359310>,  <45.340839, 47.327065, 46.301914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572731, 47.304016, 46.359310>,  <45.959221, 47.265602, 46.454967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572731, 47.304016, 46.359310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233741, 0.064242, 0.970174,
		0.108537, 0.993303, -0.039624,
		-0.966222, 0.096038, -0.239148,
		45.282864, 47.332829, 46.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722515, 47.529747, 47.029758>,  <45.959221, 47.265602, 46.454967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722515, 47.529747, 47.029758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372459, 47.452820, 46.852154>,  <45.162426, 47.406662, 46.745590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372459, 47.452820, 46.852154>,  <45.722515, 47.529747, 47.029758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372459, 47.452820, 46.852154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455787, 0.019546, 0.889874,
		-0.162462, 0.981138, -0.104762,
		-0.875137, -0.192320, -0.444015,
		45.109917, 47.395123, 46.718948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259556, 48.076210, 47.204674>,  <45.722515, 47.529747, 47.029758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259556, 48.076210, 47.204674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075310, 47.738274, 47.095806>,  <44.964760, 47.535511, 47.030487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075310, 47.738274, 47.095806>,  <45.259556, 48.076210, 47.204674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075310, 47.738274, 47.095806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306411, -0.136434, 0.942071,
		-0.833033, 0.517330, -0.196024,
		-0.460617, -0.844840, -0.272169,
		44.937126, 47.484821, 47.014156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713032, 48.136459, 47.634281>,  <45.259556, 48.076210, 47.204674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713032, 48.136459, 47.634281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740631, 47.753387, 47.522507>,  <44.757191, 47.523544, 47.455441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740631, 47.753387, 47.522507>,  <44.713032, 48.136459, 47.634281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740631, 47.753387, 47.522507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142907, -0.286708, 0.947299,
		-0.987328, -0.025431, -0.156642,
		0.069001, -0.957680, -0.279441,
		44.761330, 47.466084, 47.438675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105343, 47.840248, 48.022331>,  <44.713032, 48.136459, 47.634281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105343, 47.840248, 48.022331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346016, 47.529526, 47.947975>,  <44.490417, 47.343094, 47.903362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346016, 47.529526, 47.947975>,  <44.105343, 47.840248, 48.022331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346016, 47.529526, 47.947975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262329, -0.412008, 0.872602,
		-0.754430, -0.476262, -0.451675,
		0.601680, -0.776804, -0.185894,
		44.526520, 47.296486, 47.892208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695774, 47.281784, 48.372906>,  <44.105343, 47.840248, 48.022331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695774, 47.281784, 48.372906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.055061, 47.129402, 48.285198>,  <44.270634, 47.037975, 48.232574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.055061, 47.129402, 48.285198>,  <43.695774, 47.281784, 48.372906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055061, 47.129402, 48.285198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061998, -0.603672, 0.794818,
		-0.435154, -0.700326, -0.565848,
		0.898219, -0.380949, -0.219271,
		44.324528, 47.015118, 48.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610600, 46.504414, 48.340950>,  <43.695774, 47.281784, 48.372906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610600, 46.504414, 48.340950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986038, 46.598160, 48.442230>,  <44.211300, 46.654408, 48.502998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986038, 46.598160, 48.442230>,  <43.610600, 46.504414, 48.340950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986038, 46.598160, 48.442230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086176, -0.551368, 0.829799,
		0.334082, -0.800666, -0.497316,
		0.938596, 0.234365, 0.253200,
		44.267616, 46.668468, 48.518188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837898, 45.974689, 48.752373>,  <43.610600, 46.504414, 48.340950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837898, 45.974689, 48.752373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132030, 46.232910, 48.834885>,  <44.308510, 46.387844, 48.884392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132030, 46.232910, 48.834885>,  <43.837898, 45.974689, 48.752373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132030, 46.232910, 48.834885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003181, -0.307658, 0.951492,
		0.677700, -0.699006, -0.228285,
		0.735332, 0.645552, 0.206277,
		44.352631, 46.426575, 48.896767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379932, 45.519421, 49.102493>,  <43.837898, 45.974689, 48.752373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379932, 45.519421, 49.102493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423126, 45.905380, 49.198254>,  <44.449043, 46.136955, 49.255711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423126, 45.905380, 49.198254>,  <44.379932, 45.519421, 49.102493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423126, 45.905380, 49.198254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036901, -0.244538, 0.968937,
		0.993467, -0.095799, -0.062012,
		0.107987, 0.964896, 0.239405,
		44.455521, 46.194847, 49.270077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890507, 45.435261, 49.559952>,  <44.379932, 45.519421, 49.102493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890507, 45.435261, 49.559952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719307, 45.789688, 49.631172>,  <44.616589, 46.002346, 49.673904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719307, 45.789688, 49.631172>,  <44.890507, 45.435261, 49.559952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719307, 45.789688, 49.631172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036000, -0.213563, 0.976266,
		0.903062, 0.411430, 0.123303,
		-0.427998, 0.886068, 0.178049,
		44.590908, 46.055508, 49.684586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551464, 45.638561, 49.649769>,  <44.890507, 45.435261, 49.559952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551464, 45.638561, 49.649769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861076, 45.424881, 49.785717>,  <46.046844, 45.296673, 49.867287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861076, 45.424881, 49.785717>,  <45.551464, 45.638561, 49.649769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861076, 45.424881, 49.785717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449838, 0.086226, -0.888938,
		0.445565, 0.840949, 0.307045,
		0.774027, -0.534200, 0.339872,
		46.093285, 45.264622, 49.887680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039425, 45.812035, 49.182636>,  <45.551464, 45.638561, 49.649769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039425, 45.812035, 49.182636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218033, 45.503555, 49.364128>,  <46.325199, 45.318470, 49.473022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218033, 45.503555, 49.364128>,  <46.039425, 45.812035, 49.182636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218033, 45.503555, 49.364128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631906, -0.087226, -0.770121,
		0.633492, 0.630594, 0.448375,
		0.446523, -0.771196, 0.453733,
		46.351990, 45.272198, 49.500248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.855076, 45.876625, 49.211357>,  <46.039425, 45.812035, 49.182636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.855076, 45.876625, 49.211357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747849, 45.492065, 49.236202>,  <46.683514, 45.261330, 49.251110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747849, 45.492065, 49.236202>,  <46.855076, 45.876625, 49.211357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747849, 45.492065, 49.236202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435485, -0.178428, -0.882336,
		0.859357, -0.209476, 0.466504,
		-0.268065, -0.961397, 0.062110,
		46.667427, 45.203648, 49.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470165, 45.417912, 48.916328>,  <46.855076, 45.876625, 49.211357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470165, 45.417912, 48.916328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.138130, 45.194984, 48.908813>,  <46.938908, 45.061230, 48.904305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.138130, 45.194984, 48.908813>,  <47.470165, 45.417912, 48.916328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.138130, 45.194984, 48.908813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274217, -0.378632, -0.883993,
		0.485548, -0.738944, 0.467123,
		-0.830089, -0.557314, -0.018787,
		46.889103, 45.027790, 48.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639984, 44.813343, 48.716908>,  <47.470165, 45.417912, 48.916328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639984, 44.813343, 48.716908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.250664, 44.777351, 48.632446>,  <47.017071, 44.755756, 48.581768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.250664, 44.777351, 48.632446>,  <47.639984, 44.813343, 48.716908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.250664, 44.777351, 48.632446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229476, -0.400025, -0.887311,
		-0.004629, -0.912077, 0.409993,
		-0.973303, -0.089976, -0.211151,
		46.958672, 44.750359, 48.569099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605297, 44.195312, 48.384491>,  <47.639984, 44.813343, 48.716908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605297, 44.195312, 48.384491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.278008, 44.399506, 48.278725>,  <47.081635, 44.522022, 48.215263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.278008, 44.399506, 48.278725>,  <47.605297, 44.195312, 48.384491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278008, 44.399506, 48.278725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204483, -0.171443, -0.963739,
		-0.537302, -0.842625, 0.035895,
		-0.818226, 0.510479, -0.264419,
		47.032539, 44.552650, 48.199398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234039, 43.644394, 47.947212>,  <47.605297, 44.195312, 48.384491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234039, 43.644394, 47.947212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098839, 44.009651, 47.856060>,  <47.017719, 44.228806, 47.801369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098839, 44.009651, 47.856060>,  <47.234039, 43.644394, 47.947212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098839, 44.009651, 47.856060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118517, -0.281499, -0.952214,
		-0.933653, -0.294842, 0.203369,
		-0.338001, 0.913141, -0.227878,
		46.997437, 44.283592, 47.787697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709606, 43.496677, 47.466965>,  <47.234039, 43.644394, 47.947212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709606, 43.496677, 47.466965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826767, 43.875069, 47.411331>,  <46.897064, 44.102104, 47.377953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826767, 43.875069, 47.411331>,  <46.709606, 43.496677, 47.466965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826767, 43.875069, 47.411331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113432, -0.110059, -0.987431,
		-0.949391, 0.304994, 0.075067,
		0.292899, 0.945974, -0.139085,
		46.914635, 44.158859, 47.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177780, 43.794331, 47.066299>,  <46.709606, 43.496677, 47.466965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177780, 43.794331, 47.066299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.495941, 44.030846, 47.013058>,  <46.686836, 44.172756, 46.981113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.495941, 44.030846, 47.013058>,  <46.177780, 43.794331, 47.066299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495941, 44.030846, 47.013058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074351, -0.122760, -0.989647,
		-0.601507, 0.797062, -0.053680,
		0.795400, 0.591289, -0.133103,
		46.734562, 44.208233, 46.973125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057713, 44.240749, 46.478870>,  <46.177780, 43.794331, 47.066299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057713, 44.240749, 46.478870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453728, 44.238914, 46.535172>,  <46.691338, 44.237812, 46.568954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453728, 44.238914, 46.535172>,  <46.057713, 44.240749, 46.478870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453728, 44.238914, 46.535172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139681, -0.095356, -0.985594,
		0.017945, 0.995433, -0.093765,
		0.990034, -0.004589, 0.140754,
		46.750736, 44.237537, 46.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381149, 44.551781, 45.910419>,  <46.057713, 44.240749, 46.478870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381149, 44.551781, 45.910419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.705742, 44.388275, 46.077469>,  <46.900497, 44.290173, 46.177700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.705742, 44.388275, 46.077469>,  <46.381149, 44.551781, 45.910419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705742, 44.388275, 46.077469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413326, -0.103733, -0.904655,
		0.413112, 0.906726, 0.084775,
		0.811480, -0.408764, 0.417627,
		46.949184, 44.265644, 46.202759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895145, 44.896576, 45.568932>,  <46.381149, 44.551781, 45.910419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895145, 44.896576, 45.568932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.032913, 44.546188, 45.704018>,  <47.115574, 44.335957, 45.785069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.032913, 44.546188, 45.704018>,  <46.895145, 44.896576, 45.568932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032913, 44.546188, 45.704018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367253, -0.205348, -0.907170,
		0.864003, 0.436475, 0.250977,
		0.344419, -0.875969, 0.337718,
		47.136238, 44.283398, 45.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.568417, 44.837002, 53.474941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749138, 44.498199, 53.362900>,  <44.857571, 44.294918, 53.295673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749138, 44.498199, 53.362900>,  <44.568417, 44.837002, 53.474941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749138, 44.498199, 53.362900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520911, 0.505364, -0.687938,
		0.724242, 0.164902, 0.669538,
		0.451803, -0.847003, -0.280107,
		44.884678, 44.244099, 53.278870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150101, 45.181507, 53.064404>,  <44.568417, 44.837002, 53.474941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150101, 45.181507, 53.064404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114243, 44.799446, 52.951519>,  <45.092728, 44.570210, 52.883789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114243, 44.799446, 52.951519>,  <45.150101, 45.181507, 53.064404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114243, 44.799446, 52.951519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444418, 0.215215, -0.869583,
		0.891323, -0.203373, 0.405195,
		-0.089646, -0.955155, -0.282208,
		45.087349, 44.512901, 52.866856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860519, 45.041382, 52.886524>,  <45.150101, 45.181507, 53.064404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860519, 45.041382, 52.886524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650414, 44.754944, 52.702652>,  <45.524349, 44.583080, 52.592327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650414, 44.754944, 52.702652>,  <45.860519, 45.041382, 52.886524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650414, 44.754944, 52.702652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598578, 0.073021, -0.797730,
		0.604817, -0.694172, 0.390284,
		-0.525263, -0.716096, -0.459680,
		45.492836, 44.540115, 52.564747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280220, 44.665085, 52.502083>,  <45.860519, 45.041382, 52.886524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280220, 44.665085, 52.502083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925323, 44.605301, 52.327515>,  <45.712383, 44.569431, 52.222775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925323, 44.605301, 52.327515>,  <46.280220, 44.665085, 52.502083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925323, 44.605301, 52.327515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443229, -0.013988, -0.896299,
		0.127858, -0.988668, 0.078657,
		-0.887243, -0.149462, -0.436418,
		45.659149, 44.560463, 52.196590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442192, 44.074558, 51.999043>,  <46.280220, 44.665085, 52.502083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442192, 44.074558, 51.999043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092796, 44.242043, 51.899693>,  <45.883160, 44.342533, 51.840084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092796, 44.242043, 51.899693>,  <46.442192, 44.074558, 51.999043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092796, 44.242043, 51.899693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312955, 0.092144, -0.945287,
		-0.372919, -0.903431, -0.211526,
		-0.873493, 0.418713, -0.248371,
		45.830750, 44.367657, 51.825180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203339, 43.708050, 51.355846>,  <46.442192, 44.074558, 51.999043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203339, 43.708050, 51.355846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024078, 44.064987, 51.377361>,  <45.916523, 44.279148, 51.390270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024078, 44.064987, 51.377361>,  <46.203339, 43.708050, 51.355846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024078, 44.064987, 51.377361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380049, 0.244639, -0.892028,
		-0.809151, -0.379318, -0.448767,
		-0.448148, 0.892340, 0.053790,
		45.889633, 44.332687, 51.393497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781166, 43.822060, 50.672050>,  <46.203339, 43.708050, 51.355846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781166, 43.822060, 50.672050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840813, 44.172859, 50.854759>,  <45.876602, 44.383339, 50.964386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840813, 44.172859, 50.854759>,  <45.781166, 43.822060, 50.672050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840813, 44.172859, 50.854759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347052, 0.386136, -0.854666,
		-0.925915, 0.285971, -0.246782,
		0.149118, 0.876994, 0.456776,
		45.885548, 44.435959, 50.991791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273643, 44.303574, 50.354767>,  <45.781166, 43.822060, 50.672050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273643, 44.303574, 50.354767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577591, 44.512779, 50.509197>,  <45.759960, 44.638302, 50.601856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577591, 44.512779, 50.509197>,  <45.273643, 44.303574, 50.354767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577591, 44.512779, 50.509197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027001, 0.567991, -0.822592,
		-0.649515, 0.635487, 0.417477,
		0.759870, 0.523013, 0.386077,
		45.805553, 44.669682, 50.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254196, 44.981022, 49.987099>,  <45.273643, 44.303574, 50.354767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254196, 44.981022, 49.987099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626244, 44.979332, 50.133987>,  <45.849472, 44.978317, 50.222122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626244, 44.979332, 50.133987>,  <45.254196, 44.981022, 49.987099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626244, 44.979332, 50.133987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305329, 0.564535, -0.766860,
		-0.204071, 0.825398, 0.526377,
		0.930123, -0.004224, 0.367224,
		45.905281, 44.978065, 50.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887890, 45.496403, 50.275856>,  <45.254196, 44.981022, 49.987099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887890, 45.496403, 50.275856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674492, 45.826729, 50.202740>,  <44.546452, 46.024925, 50.158871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674492, 45.826729, 50.202740>,  <44.887890, 45.496403, 50.275856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674492, 45.826729, 50.202740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181903, 0.099033, 0.978317,
		0.826009, 0.555180, 0.097384,
		-0.533498, 0.825813, -0.182791,
		44.514442, 46.074474, 50.147903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081059, 45.998783, 50.767372>,  <44.887890, 45.496403, 50.275856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081059, 45.998783, 50.767372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718369, 46.120247, 50.650322>,  <44.500755, 46.193127, 50.580090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718369, 46.120247, 50.650322>,  <45.081059, 45.998783, 50.767372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718369, 46.120247, 50.650322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271815, 0.109701, 0.956076,
		0.322425, 0.946443, -0.016929,
		-0.906729, 0.303662, -0.292628,
		44.446350, 46.211346, 50.562534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877056, 46.366917, 51.336624>,  <45.081059, 45.998783, 50.767372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877056, 46.366917, 51.336624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545597, 46.334778, 51.115036>,  <44.346722, 46.315495, 50.982082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545597, 46.334778, 51.115036>,  <44.877056, 46.366917, 51.336624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545597, 46.334778, 51.115036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558695, 0.057429, 0.827382,
		-0.034662, 0.995111, -0.092477,
		-0.828648, -0.080345, -0.553973,
		44.297001, 46.310673, 50.948845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446835, 46.986809, 51.535019>,  <44.877056, 46.366917, 51.336624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446835, 46.986809, 51.535019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228527, 46.687370, 51.384422>,  <44.097542, 46.507710, 51.294064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228527, 46.687370, 51.384422>,  <44.446835, 46.986809, 51.535019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228527, 46.687370, 51.384422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510874, -0.058874, 0.857637,
		-0.664185, 0.660412, -0.350304,
		-0.545770, -0.748592, -0.376491,
		44.064796, 46.462791, 51.271477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697121, 47.117027, 51.640118>,  <44.446835, 46.986809, 51.535019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697121, 47.117027, 51.640118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704926, 46.719604, 51.595474>,  <43.709610, 46.481152, 51.568687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704926, 46.719604, 51.595474>,  <43.697121, 47.117027, 51.640118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704926, 46.719604, 51.595474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690062, -0.094163, 0.717599,
		-0.723488, 0.063015, -0.687455,
		0.019514, -0.993561, -0.111610,
		43.710781, 46.421535, 51.561993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041363, 46.900894, 51.771748>,  <43.697121, 47.117027, 51.640118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041363, 46.900894, 51.771748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212654, 46.539902, 51.790321>,  <43.315430, 46.323307, 51.801464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212654, 46.539902, 51.790321>,  <43.041363, 46.900894, 51.771748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212654, 46.539902, 51.790321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756982, -0.330177, 0.563880,
		-0.493558, -0.276619, -0.824550,
		0.428227, -0.902478, 0.046434,
		43.341122, 46.269157, 51.804253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463261, 46.389511, 51.724037>,  <43.041363, 46.900894, 51.771748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463261, 46.389511, 51.724037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770309, 46.185211, 51.878899>,  <42.954540, 46.062630, 51.971813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770309, 46.185211, 51.878899>,  <42.463261, 46.389511, 51.724037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770309, 46.185211, 51.878899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612015, -0.404873, 0.679349,
		-0.190229, -0.758429, -0.623376,
		0.767626, -0.510748, 0.387152,
		43.000599, 46.031986, 51.995045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319008, 45.669258, 51.897518>,  <42.463261, 46.389511, 51.724037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319008, 45.669258, 51.897518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634071, 45.669945, 52.143959>,  <42.823109, 45.670357, 52.291824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634071, 45.669945, 52.143959>,  <42.319008, 45.669258, 51.897518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634071, 45.669945, 52.143959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574324, -0.359943, 0.735251,
		0.223027, -0.932973, -0.282526,
		0.787662, 0.001720, 0.616106,
		42.870369, 45.670460, 52.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503101, 44.961605, 52.186874>,  <42.319008, 45.669258, 51.897518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503101, 44.961605, 52.186874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618126, 45.238907, 52.451210>,  <42.687141, 45.405289, 52.609810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618126, 45.238907, 52.451210>,  <42.503101, 44.961605, 52.186874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618126, 45.238907, 52.451210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494324, -0.483547, 0.722375,
		0.820336, -0.534395, 0.203644,
		0.287562, 0.693257, 0.660835,
		42.704395, 45.446884, 52.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712688, 44.617634, 52.734596>,  <42.503101, 44.961605, 52.186874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712688, 44.617634, 52.734596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649658, 44.978912, 52.894302>,  <42.611839, 45.195679, 52.990128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649658, 44.978912, 52.894302>,  <42.712688, 44.617634, 52.734596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649658, 44.978912, 52.894302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473191, -0.423937, 0.772248,
		0.866753, -0.067243, 0.494184,
		-0.157575, 0.903192, 0.399268,
		42.602386, 45.249870, 53.014084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755646, 44.495674, 53.435307>,  <42.712688, 44.617634, 52.734596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755646, 44.495674, 53.435307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568626, 44.849144, 53.426208>,  <42.456413, 45.061226, 53.420750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568626, 44.849144, 53.426208>,  <42.755646, 44.495674, 53.435307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568626, 44.849144, 53.426208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505317, -0.246069, 0.827106,
		0.725296, 0.398205, 0.561585,
		-0.467547, 0.883675, -0.022747,
		42.428364, 45.114246, 53.419384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892826, 44.746346, 54.036060>,  <42.755646, 44.495674, 53.435307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892826, 44.746346, 54.036060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564590, 44.938774, 53.912636>,  <42.367649, 45.054230, 53.838581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564590, 44.938774, 53.912636>,  <42.892826, 44.746346, 54.036060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564590, 44.938774, 53.912636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459805, -0.235056, 0.856346,
		0.339432, 0.844584, 0.414082,
		-0.820588, 0.481068, -0.308559,
		42.318413, 45.083096, 53.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767990, 45.289379, 54.427521>,  <42.892826, 44.746346, 54.036060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767990, 45.289379, 54.427521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401840, 45.210289, 54.287239>,  <42.182152, 45.162834, 54.203072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401840, 45.210289, 54.287239>,  <42.767990, 45.289379, 54.427521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401840, 45.210289, 54.287239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369412, 0.066169, 0.926907,
		-0.160070, 0.978021, -0.133612,
		-0.915376, -0.197728, -0.350701,
		42.127228, 45.150970, 54.182030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315163, 45.649307, 54.863831>,  <42.767990, 45.289379, 54.427521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315163, 45.649307, 54.863831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048157, 45.401978, 54.697891>,  <41.887955, 45.253578, 54.598328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048157, 45.401978, 54.697891>,  <42.315163, 45.649307, 54.863831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048157, 45.401978, 54.697891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575144, 0.074314, 0.814669,
		-0.472902, 0.782400, -0.405232,
		-0.667512, -0.618326, -0.414850,
		41.847904, 45.216480, 54.573437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.570965, 37.569687, 53.740395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.637730, 37.963974, 53.731377>,  <42.677788, 38.200546, 53.725967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.637730, 37.963974, 53.731377>,  <42.570965, 37.569687, 53.740395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637730, 37.963974, 53.731377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054731, -0.013564, -0.998409,
		-0.984452, 0.167876, 0.051685,
		0.166908, 0.985715, -0.022541,
		42.687801, 38.259689, 53.724613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048573, 37.813530, 53.265614>,  <42.570965, 37.569687, 53.740395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048573, 37.813530, 53.265614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.338337, 38.087692, 53.295139>,  <42.512196, 38.252190, 53.312855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.338337, 38.087692, 53.295139>,  <42.048573, 37.813530, 53.265614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338337, 38.087692, 53.295139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057509, 0.166788, -0.984314,
		-0.686969, 0.708800, 0.160239,
		0.724408, 0.685409, 0.073816,
		42.555660, 38.293316, 53.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719769, 38.497036, 53.032673>,  <42.048573, 37.813530, 53.265614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719769, 38.497036, 53.032673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.115124, 38.483063, 52.973515>,  <42.352337, 38.474678, 52.938019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.115124, 38.483063, 52.973515>,  <41.719769, 38.497036, 53.032673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115124, 38.483063, 52.973515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124300, 0.374009, -0.919057,
		0.087417, 0.926767, 0.365324,
		0.988386, -0.034932, -0.147892,
		42.411640, 38.472584, 52.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834969, 39.014877, 52.707100>,  <41.719769, 38.497036, 53.032673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834969, 39.014877, 52.707100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188457, 38.833023, 52.662670>,  <42.400551, 38.723911, 52.636013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188457, 38.833023, 52.662670>,  <41.834969, 39.014877, 52.707100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188457, 38.833023, 52.662670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096164, 0.408670, -0.907602,
		0.458021, 0.791389, 0.404872,
		0.883725, -0.454635, -0.111076,
		42.453575, 38.696632, 52.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258301, 39.472954, 52.300880>,  <41.834969, 39.014877, 52.707100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258301, 39.472954, 52.300880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.463463, 39.131584, 52.263775>,  <42.586559, 38.926762, 52.241512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.463463, 39.131584, 52.263775>,  <42.258301, 39.472954, 52.300880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463463, 39.131584, 52.263775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160121, 0.201269, -0.966360,
		0.843382, 0.480795, 0.239882,
		0.512902, -0.853421, -0.092761,
		42.617332, 38.875557, 52.235947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832039, 39.716404, 51.968899>,  <42.258301, 39.472954, 52.300880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832039, 39.716404, 51.968899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811600, 39.321533, 51.908398>,  <42.799335, 39.084610, 51.872097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811600, 39.321533, 51.908398>,  <42.832039, 39.716404, 51.968899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811600, 39.321533, 51.908398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271994, 0.131966, -0.953207,
		0.960941, -0.089849, 0.261762,
		-0.051101, -0.987174, -0.151250,
		42.796268, 39.025379, 51.863022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543610, 39.560772, 51.717289>,  <42.832039, 39.716404, 51.968899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543610, 39.560772, 51.717289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301125, 39.264381, 51.601727>,  <43.155632, 39.086548, 51.532391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301125, 39.264381, 51.601727>,  <43.543610, 39.560772, 51.717289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301125, 39.264381, 51.601727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425346, 0.004875, -0.905018,
		0.672003, -0.671516, 0.312214,
		-0.606212, -0.740974, -0.288903,
		43.119263, 39.042088, 51.515057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936954, 39.319874, 51.227577>,  <43.543610, 39.560772, 51.717289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936954, 39.319874, 51.227577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.586349, 39.155098, 51.127949>,  <43.375988, 39.056232, 51.068172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.586349, 39.155098, 51.127949>,  <43.936954, 39.319874, 51.227577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586349, 39.155098, 51.127949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243439, 0.067048, -0.967596,
		0.415290, -0.908742, 0.041514,
		-0.876511, -0.411939, -0.249068,
		43.323395, 39.031517, 51.053230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052177, 38.752903, 50.700134>,  <43.936954, 39.319874, 51.227577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052177, 38.752903, 50.700134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675499, 38.883331, 50.666958>,  <43.449490, 38.961590, 50.647053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675499, 38.883331, 50.666958>,  <44.052177, 38.752903, 50.700134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675499, 38.883331, 50.666958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155223, 0.202321, -0.966940,
		-0.298511, -0.923441, -0.241140,
		-0.941699, 0.326073, -0.082944,
		43.392990, 38.981152, 50.642075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678890, 38.425499, 50.022552>,  <44.052177, 38.752903, 50.700134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678890, 38.425499, 50.022552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443531, 38.740173, 50.097279>,  <43.302315, 38.928978, 50.142117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443531, 38.740173, 50.097279>,  <43.678890, 38.425499, 50.022552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443531, 38.740173, 50.097279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112707, 0.308592, -0.944494,
		-0.800675, -0.534686, -0.270242,
		-0.588402, 0.786690, 0.186819,
		43.267010, 38.976181, 50.153324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183689, 38.469471, 49.509239>,  <43.678890, 38.425499, 50.022552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183689, 38.469471, 49.509239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.200798, 38.840439, 49.657867>,  <43.211063, 39.063019, 49.747044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.200798, 38.840439, 49.657867>,  <43.183689, 38.469471, 49.509239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200798, 38.840439, 49.657867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117465, 0.364664, -0.923700,
		-0.992155, 0.083154, -0.093342,
		0.042771, 0.927419, 0.371571,
		43.213631, 39.118664, 49.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914162, 38.865917, 49.002670>,  <43.183689, 38.469471, 49.509239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914162, 38.865917, 49.002670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.078571, 39.156586, 49.222855>,  <43.177219, 39.330986, 49.354965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.078571, 39.156586, 49.222855>,  <42.914162, 38.865917, 49.002670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078571, 39.156586, 49.222855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215592, 0.509218, -0.833197,
		-0.885763, 0.461142, 0.052639,
		0.411027, 0.726667, 0.550465,
		43.201878, 39.374584, 49.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599617, 39.466991, 48.757214>,  <42.914162, 38.865917, 49.002670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599617, 39.466991, 48.757214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.953545, 39.564316, 48.916161>,  <43.165901, 39.622711, 49.011528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.953545, 39.564316, 48.916161>,  <42.599617, 39.466991, 48.757214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953545, 39.564316, 48.916161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294693, 0.368359, -0.881741,
		-0.360910, 0.897280, 0.254229,
		0.884817, 0.243310, 0.397366,
		43.218990, 39.637310, 49.035370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675144, 40.047974, 48.393833>,  <42.599617, 39.466991, 48.757214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675144, 40.047974, 48.393833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.040894, 39.953163, 48.525127>,  <43.260342, 39.896275, 48.603905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.040894, 39.953163, 48.525127>,  <42.675144, 40.047974, 48.393833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040894, 39.953163, 48.525127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393515, 0.329590, -0.858206,
		0.095237, 0.913886, 0.394642,
		0.914372, -0.237030, 0.328238,
		43.315205, 39.882053, 48.623600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718670, 40.748993, 48.687504>,  <42.675144, 40.047974, 48.393833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718670, 40.748993, 48.687504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.375202, 40.929932, 48.591118>,  <42.169121, 41.038494, 48.533287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.375202, 40.929932, 48.591118>,  <42.718670, 40.748993, 48.687504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375202, 40.929932, 48.591118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390892, -0.273905, 0.878738,
		0.331496, 0.848737, 0.412014,
		-0.858670, 0.452351, -0.240966,
		42.117599, 41.065636, 48.518829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607937, 41.347279, 49.227421>,  <42.718670, 40.748993, 48.687504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607937, 41.347279, 49.227421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.253212, 41.232201, 49.082756>,  <42.040379, 41.163155, 48.995956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.253212, 41.232201, 49.082756>,  <42.607937, 41.347279, 49.227421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253212, 41.232201, 49.082756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366289, -0.039618, 0.929658,
		-0.281786, 0.956902, -0.070246,
		-0.886808, -0.287695, -0.361666,
		41.987171, 41.145893, 48.974255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153423, 41.732964, 49.546608>,  <42.607937, 41.347279, 49.227421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153423, 41.732964, 49.546608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.944702, 41.419426, 49.411964>,  <41.819469, 41.231304, 49.331181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.944702, 41.419426, 49.411964>,  <42.153423, 41.732964, 49.546608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944702, 41.419426, 49.411964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420325, -0.107118, 0.901029,
		-0.742325, 0.611646, -0.273576,
		-0.521805, -0.783846, -0.336607,
		41.788162, 41.184273, 49.310982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548889, 41.973930, 49.728065>,  <42.153423, 41.732964, 49.546608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548889, 41.973930, 49.728065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.530888, 41.576714, 49.684525>,  <41.520088, 41.338383, 49.658398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.530888, 41.576714, 49.684525>,  <41.548889, 41.973930, 49.728065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530888, 41.576714, 49.684525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419963, -0.080063, 0.904003,
		-0.906425, 0.086396, -0.413437,
		-0.045001, -0.993039, -0.108854,
		41.517387, 41.278801, 49.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872379, 41.835724, 49.760197>,  <41.548889, 41.973930, 49.728065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872379, 41.835724, 49.760197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039886, 41.481621, 49.841141>,  <41.140388, 41.269157, 49.889709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039886, 41.481621, 49.841141>,  <40.872379, 41.835724, 49.760197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039886, 41.481621, 49.841141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497544, -0.037253, 0.866638,
		-0.759661, -0.463604, -0.456056,
		0.418766, -0.885259, 0.202364,
		41.165516, 41.216042, 49.901852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306965, 41.358677, 49.932632>,  <40.872379, 41.835724, 49.760197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306965, 41.358677, 49.932632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.641327, 41.216225, 50.099693>,  <40.841946, 41.130753, 50.199928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.641327, 41.216225, 50.099693>,  <40.306965, 41.358677, 49.932632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641327, 41.216225, 50.099693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435886, 0.031712, 0.899443,
		-0.333561, -0.933899, -0.128722,
		0.835907, -0.356127, 0.417651,
		40.892097, 41.109386, 50.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060635, 40.908669, 50.409405>,  <40.306965, 41.358677, 49.932632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060635, 40.908669, 50.409405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438446, 40.924377, 50.539833>,  <40.665134, 40.933804, 50.618092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438446, 40.924377, 50.539833>,  <40.060635, 40.908669, 50.409405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438446, 40.924377, 50.539833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312343, -0.199494, 0.928786,
		0.101525, -0.979112, -0.176162,
		0.944529, 0.039272, 0.326073,
		40.721806, 40.936157, 50.637653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282322, 40.221085, 50.879597>,  <40.060635, 40.908669, 50.409405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282322, 40.221085, 50.879597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561592, 40.493233, 50.968719>,  <40.729156, 40.656521, 51.022194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561592, 40.493233, 50.968719>,  <40.282322, 40.221085, 50.879597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561592, 40.493233, 50.968719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092126, -0.223244, 0.970399,
		0.709971, -0.698038, -0.093184,
		0.698179, 0.680371, 0.222804,
		40.771046, 40.697346, 51.035561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855705, 39.855938, 51.322704>,  <40.282322, 40.221085, 50.879597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855705, 39.855938, 51.322704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846802, 40.251938, 51.378414>,  <40.841461, 40.489540, 51.411839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846802, 40.251938, 51.378414>,  <40.855705, 39.855938, 51.322704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846802, 40.251938, 51.378414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063669, -0.140430, 0.988041,
		0.997723, 0.013124, 0.066158,
		-0.022258, 0.990004, 0.139275,
		40.840126, 40.548939, 51.420197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316555, 39.924160, 51.908356>,  <40.855705, 39.855938, 51.322704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316555, 39.924160, 51.908356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080021, 40.246643, 51.900902>,  <40.938099, 40.440132, 51.896431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080021, 40.246643, 51.900902>,  <41.316555, 39.924160, 51.908356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080021, 40.246643, 51.900902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118788, -0.064225, 0.990840,
		0.797627, 0.588135, 0.133747,
		-0.591337, 0.806209, -0.018636,
		40.902618, 40.488506, 51.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544930, 40.319099, 52.519382>,  <41.316555, 39.924160, 51.908356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544930, 40.319099, 52.519382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194702, 40.482361, 52.416008>,  <40.984566, 40.580318, 52.353985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194702, 40.482361, 52.416008>,  <41.544930, 40.319099, 52.519382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194702, 40.482361, 52.416008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232015, 0.113948, 0.966015,
		0.423733, 0.905773, -0.005071,
		-0.875568, 0.408156, -0.258436,
		40.932034, 40.604809, 52.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437988, 40.941494, 52.963776>,  <41.544930, 40.319099, 52.519382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437988, 40.941494, 52.963776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073463, 40.834351, 52.838707>,  <40.854748, 40.770065, 52.763664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073463, 40.834351, 52.838707>,  <41.437988, 40.941494, 52.963776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073463, 40.834351, 52.838707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362197, 0.160451, 0.918188,
		-0.195775, 0.950004, -0.243238,
		-0.911310, -0.267859, -0.312676,
		40.800072, 40.753994, 52.744904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979752, 41.440853, 53.257896>,  <41.437988, 40.941494, 52.963776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979752, 41.440853, 53.257896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.758858, 41.121506, 53.161858>,  <40.626320, 40.929897, 53.104233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.758858, 41.121506, 53.161858>,  <40.979752, 41.440853, 53.257896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758858, 41.121506, 53.161858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356676, -0.034058, 0.933607,
		-0.753538, 0.601208, -0.265950,
		-0.552234, -0.798367, -0.240101,
		40.593189, 40.881996, 53.089828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261269, 41.600803, 53.497326>,  <40.979752, 41.440853, 53.257896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261269, 41.600803, 53.497326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295433, 41.202278, 53.494114>,  <40.315933, 40.963161, 53.492188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295433, 41.202278, 53.494114>,  <40.261269, 41.600803, 53.497326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295433, 41.202278, 53.494114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379894, -0.040020, 0.924164,
		-0.921079, -0.075883, -0.381911,
		0.085412, -0.996313, -0.008034,
		40.321056, 40.903385, 53.491703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493496, 41.572220, 53.255959>,  <40.261269, 41.600803, 53.497326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493496, 41.572220, 53.255959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418404, 41.939507, 53.395466>,  <39.373348, 42.159878, 53.479168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418404, 41.939507, 53.395466>,  <39.493496, 41.572220, 53.255959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418404, 41.939507, 53.395466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546357, 0.392696, -0.739786,
		-0.816242, 0.051669, -0.575395,
		-0.187731, 0.918216, 0.348765,
		39.362083, 42.214970, 53.500095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155174, 41.943424, 52.752747>,  <39.493496, 41.572220, 53.255959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155174, 41.943424, 52.752747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312515, 42.242012, 52.967430>,  <39.406918, 42.421165, 53.096241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312515, 42.242012, 52.967430>,  <39.155174, 41.943424, 52.752747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312515, 42.242012, 52.967430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351569, 0.417275, -0.838022,
		-0.849515, 0.518326, -0.098301,
		0.393350, 0.746471, 0.536709,
		39.430519, 42.465954, 53.128441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994587, 42.538593, 52.379261>,  <39.155174, 41.943424, 52.752747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994587, 42.538593, 52.379261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297958, 42.627785, 52.624229>,  <39.479980, 42.681301, 52.771210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297958, 42.627785, 52.624229>,  <38.994587, 42.538593, 52.379261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297958, 42.627785, 52.624229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504826, 0.393347, -0.768394,
		-0.412232, 0.891941, 0.185759,
		0.758429, 0.222981, 0.612425,
		39.525486, 42.694679, 52.807957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120224, 43.276566, 52.189102>,  <38.994587, 42.538593, 52.379261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120224, 43.276566, 52.189102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446030, 43.151154, 52.384354>,  <39.641514, 43.075909, 52.501503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446030, 43.151154, 52.384354>,  <39.120224, 43.276566, 52.189102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446030, 43.151154, 52.384354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579502, 0.479263, -0.659155,
		-0.027278, 0.819761, 0.572056,
		0.814514, -0.313527, 0.488127,
		39.690384, 43.057095, 52.530792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473186, 43.829548, 52.394493>,  <39.120224, 43.276566, 52.189102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473186, 43.829548, 52.394493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751015, 43.541817, 52.389816>,  <39.917709, 43.369179, 52.387009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751015, 43.541817, 52.389816>,  <39.473186, 43.829548, 52.394493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751015, 43.541817, 52.389816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495150, 0.489773, -0.717599,
		0.521921, 0.492630, 0.696358,
		0.694569, -0.719331, -0.011697,
		39.959385, 43.326015, 52.386307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120880, 44.172321, 52.447620>,  <39.473186, 43.829548, 52.394493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120880, 44.172321, 52.447620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.173134, 43.809517, 52.287491>,  <40.204487, 43.591835, 52.191414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.173134, 43.809517, 52.287491>,  <40.120880, 44.172321, 52.447620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173134, 43.809517, 52.287491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560846, 0.400572, -0.724565,
		0.817549, -0.129868, 0.561024,
		0.130632, -0.907015, -0.400323,
		40.212322, 43.537411, 52.167393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933258, 44.028851, 52.402687>,  <40.120880, 44.172321, 52.447620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933258, 44.028851, 52.402687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731792, 43.820175, 52.127251>,  <40.610912, 43.694969, 51.961987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731792, 43.820175, 52.127251>,  <40.933258, 44.028851, 52.402687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731792, 43.820175, 52.127251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597749, 0.365021, -0.713762,
		0.623710, -0.771106, 0.127987,
		-0.503668, -0.521685, -0.688595,
		40.580692, 43.663670, 51.920673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457783, 44.010815, 51.915646>,  <40.933258, 44.028851, 52.402687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457783, 44.010815, 51.915646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154037, 43.824829, 51.733582>,  <40.971790, 43.713238, 51.624344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154037, 43.824829, 51.733582>,  <41.457783, 44.010815, 51.915646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154037, 43.824829, 51.733582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487799, 0.056121, -0.871150,
		0.430597, -0.883549, 0.184192,
		-0.759367, -0.464964, -0.455160,
		40.926228, 43.685341, 51.597034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750893, 43.506538, 51.549789>,  <41.457783, 44.010815, 51.915646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750893, 43.506538, 51.549789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.407196, 43.596184, 51.365841>,  <41.200977, 43.649971, 51.255470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.407196, 43.596184, 51.365841>,  <41.750893, 43.506538, 51.549789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407196, 43.596184, 51.365841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511523, 0.388932, -0.766209,
		0.007144, -0.893592, -0.448823,
		-0.859240, 0.224109, -0.459871,
		41.149426, 43.663418, 51.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760784, 43.222416, 50.826328>,  <41.750893, 43.506538, 51.549789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760784, 43.222416, 50.826328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.477821, 43.505074, 50.820435>,  <41.308044, 43.674667, 50.816898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.477821, 43.505074, 50.820435>,  <41.760784, 43.222416, 50.826328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477821, 43.505074, 50.820435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253454, 0.234157, -0.938580,
		-0.659796, -0.667697, -0.344748,
		-0.707412, 0.706648, -0.014735,
		41.265598, 43.717068, 50.816013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277695, 43.057076, 50.242794>,  <41.760784, 43.222416, 50.826328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277695, 43.057076, 50.242794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256611, 43.445038, 50.337872>,  <41.243961, 43.677814, 50.394917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256611, 43.445038, 50.337872>,  <41.277695, 43.057076, 50.242794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256611, 43.445038, 50.337872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327867, 0.241635, -0.913299,
		-0.943253, 0.029794, -0.330737,
		-0.052707, 0.969910, 0.237692,
		41.240799, 43.736012, 50.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911167, 43.514797, 49.723286>,  <41.277695, 43.057076, 50.242794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911167, 43.514797, 49.723286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130489, 43.786842, 49.917938>,  <41.262081, 43.950069, 50.034729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130489, 43.786842, 49.917938>,  <40.911167, 43.514797, 49.723286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130489, 43.786842, 49.917938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326744, 0.361421, -0.873277,
		-0.769808, 0.637823, -0.024056,
		0.548302, 0.680116, 0.486629,
		41.294979, 43.990875, 50.063927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901009, 44.151333, 49.270100>,  <40.911167, 43.514797, 49.723286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901009, 44.151333, 49.270100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218414, 44.226631, 49.501583>,  <41.408859, 44.271809, 49.640472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218414, 44.226631, 49.501583>,  <40.901009, 44.151333, 49.270100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218414, 44.226631, 49.501583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402574, 0.550760, -0.731162,
		-0.456367, 0.813158, 0.361253,
		0.793514, 0.188247, 0.578705,
		41.456467, 44.283104, 49.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891335, 44.828964, 49.208534>,  <40.901009, 44.151333, 49.270100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891335, 44.828964, 49.208534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251007, 44.680107, 49.300606>,  <41.466808, 44.590794, 49.355850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251007, 44.680107, 49.300606>,  <40.891335, 44.828964, 49.208534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251007, 44.680107, 49.300606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359805, 0.329432, -0.872935,
		0.249032, 0.867745, 0.430119,
		0.899179, -0.372147, 0.230180,
		41.520760, 44.568462, 49.369659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.601341, 45.891911, 55.058514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534428, 45.522690, 54.919956>,  <41.494282, 45.301155, 54.836823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534428, 45.522690, 54.919956>,  <41.601341, 45.891911, 55.058514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534428, 45.522690, 54.919956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582246, -0.191034, 0.790250,
		-0.795617, 0.333879, -0.505488,
		-0.167282, -0.923055, -0.346390,
		41.484241, 45.245773, 54.816040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866531, 45.791622, 55.205170>,  <41.601341, 45.891911, 55.058514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866531, 45.791622, 55.205170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025505, 45.427406, 55.159611>,  <41.120888, 45.208878, 55.132275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025505, 45.427406, 55.159611>,  <40.866531, 45.791622, 55.205170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025505, 45.427406, 55.159611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635712, -0.362710, 0.681404,
		-0.661755, -0.198405, -0.722991,
		0.397430, -0.910537, -0.113897,
		41.144733, 45.154243, 55.125443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391350, 45.400955, 55.009068>,  <40.866531, 45.791622, 55.205170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391350, 45.400955, 55.009068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.628334, 45.107079, 55.141262>,  <40.770523, 44.930752, 55.220577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.628334, 45.107079, 55.141262>,  <40.391350, 45.400955, 55.009068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628334, 45.107079, 55.141262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734383, -0.323906, 0.596462,
		-0.331202, -0.596042, -0.731464,
		0.592442, -0.734724, 0.330444,
		40.806072, 44.886669, 55.240406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020107, 44.755569, 54.906296>,  <40.391350, 45.400955, 55.009068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020107, 44.755569, 54.906296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284470, 44.705772, 55.202324>,  <40.443089, 44.675896, 55.379940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284470, 44.705772, 55.202324>,  <40.020107, 44.755569, 54.906296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284470, 44.705772, 55.202324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692817, -0.480249, 0.537927,
		0.288450, -0.868253, -0.403650,
		0.660909, -0.124491, 0.740068,
		40.482742, 44.668427, 55.424343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899578, 44.115669, 55.206581>,  <40.020107, 44.755569, 54.906296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899578, 44.115669, 55.206581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116890, 44.304390, 55.484360>,  <40.247276, 44.417622, 55.651028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116890, 44.304390, 55.484360>,  <39.899578, 44.115669, 55.206581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116890, 44.304390, 55.484360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464649, -0.519955, 0.716762,
		0.699251, -0.712073, -0.063256,
		0.543277, 0.471805, 0.694443,
		40.279873, 44.445930, 55.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014488, 43.548149, 55.545017>,  <39.899578, 44.115669, 55.206581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014488, 43.548149, 55.545017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076412, 43.865959, 55.779884>,  <40.113567, 44.056644, 55.920803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076412, 43.865959, 55.779884>,  <40.014488, 43.548149, 55.545017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076412, 43.865959, 55.779884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417792, -0.485924, 0.767677,
		0.895256, -0.364157, 0.256720,
		0.154809, 0.794523, 0.587169,
		40.122856, 44.104317, 55.956036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273560, 43.262169, 56.082027>,  <40.014488, 43.548149, 55.545017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273560, 43.262169, 56.082027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101322, 43.610077, 56.178429>,  <39.997978, 43.818821, 56.236271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101322, 43.610077, 56.178429>,  <40.273560, 43.262169, 56.082027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101322, 43.610077, 56.178429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553898, -0.465492, 0.690300,
		0.712588, 0.163751, 0.682205,
		-0.430598, 0.869772, 0.241003,
		39.972141, 43.871010, 56.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167973, 43.227070, 56.708233>,  <40.273560, 43.262169, 56.082027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167973, 43.227070, 56.708233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922897, 43.540154, 56.664448>,  <39.775852, 43.728004, 56.638176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922897, 43.540154, 56.664448>,  <40.167973, 43.227070, 56.708233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922897, 43.540154, 56.664448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596997, -0.367587, 0.713074,
		0.517893, 0.502238, 0.692490,
		-0.612683, 0.782711, -0.109464,
		39.739094, 43.774967, 56.631607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093704, 43.433945, 57.435520>,  <40.167973, 43.227070, 56.708233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093704, 43.433945, 57.435520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797230, 43.628754, 57.250717>,  <39.619347, 43.745640, 57.139835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797230, 43.628754, 57.250717>,  <40.093704, 43.433945, 57.435520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797230, 43.628754, 57.250717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602156, -0.178126, 0.778254,
		0.296735, 0.855030, 0.425290,
		-0.741186, 0.487026, -0.462006,
		39.574875, 43.774860, 57.112114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832966, 43.827255, 57.937088>,  <40.093704, 43.433945, 57.435520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832966, 43.827255, 57.937088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538666, 43.767776, 57.672798>,  <39.362087, 43.732090, 57.514225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538666, 43.767776, 57.672798>,  <39.832966, 43.827255, 57.937088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538666, 43.767776, 57.672798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556107, -0.424182, 0.714713,
		-0.386548, 0.893285, 0.229398,
		-0.735748, -0.148701, -0.660729,
		39.317940, 43.723167, 57.474579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199562, 44.054741, 58.267662>,  <39.832966, 43.827255, 57.937088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199562, 44.054741, 58.267662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113708, 43.784981, 57.985069>,  <39.062199, 43.623123, 57.815514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113708, 43.784981, 57.985069>,  <39.199562, 44.054741, 58.267662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113708, 43.784981, 57.985069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598143, -0.481066, 0.640938,
		-0.772113, 0.560143, -0.300136,
		-0.214632, -0.674401, -0.706482,
		39.049320, 43.582661, 57.773125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604023, 43.788139, 58.541771>,  <39.199562, 44.054741, 58.267662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604023, 43.788139, 58.541771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674431, 43.525330, 58.248558>,  <38.716675, 43.367645, 58.072628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674431, 43.525330, 58.248558>,  <38.604023, 43.788139, 58.541771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674431, 43.525330, 58.248558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412532, -0.725350, 0.551075,
		-0.893776, 0.205404, -0.398715,
		0.176015, -0.657021, -0.733036,
		38.727234, 43.328224, 58.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906303, 43.551891, 58.242844>,  <38.604023, 43.788139, 58.541771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906303, 43.551891, 58.242844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220192, 43.303978, 58.246643>,  <38.408524, 43.155231, 58.248920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220192, 43.303978, 58.246643>,  <37.906303, 43.551891, 58.242844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220192, 43.303978, 58.246643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525398, -0.656931, 0.540739,
		-0.328902, -0.429316, -0.841137,
		0.784717, -0.619781, 0.009496,
		38.455608, 43.118042, 58.249493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605076, 42.964409, 57.958305>,  <37.906303, 43.551891, 58.242844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605076, 42.964409, 57.958305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903965, 42.910568, 58.218628>,  <38.083298, 42.878265, 58.374821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903965, 42.910568, 58.218628>,  <37.605076, 42.964409, 57.958305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903965, 42.910568, 58.218628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527068, -0.716510, 0.456960,
		0.404800, -0.684468, -0.606334,
		0.747219, -0.134602, 0.650805,
		38.128132, 42.870186, 58.413868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235218, 42.197678, 58.167885>,  <37.605076, 42.964409, 57.958305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235218, 42.197678, 58.167885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216011, 41.799690, 58.203053>,  <37.204487, 41.560898, 58.224152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216011, 41.799690, 58.203053>,  <37.235218, 42.197678, 58.167885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216011, 41.799690, 58.203053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147940, -0.094133, -0.984506,
		0.987830, -0.034269, 0.151716,
		-0.048020, -0.994970, 0.087918,
		37.201607, 41.501198, 58.229427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862717, 41.915680, 57.882877>,  <37.235218, 42.197678, 58.167885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862717, 41.915680, 57.882877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543102, 41.678375, 57.843746>,  <37.351334, 41.535992, 57.820267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543102, 41.678375, 57.843746>,  <37.862717, 41.915680, 57.882877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543102, 41.678375, 57.843746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229572, -0.150642, -0.961563,
		0.555725, -0.790787, 0.256566,
		-0.799041, -0.593265, -0.097827,
		37.303391, 41.500397, 57.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078312, 41.373161, 57.487106>,  <37.862717, 41.915680, 57.882877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078312, 41.373161, 57.487106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681477, 41.330582, 57.460499>,  <37.443375, 41.305035, 57.444534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681477, 41.330582, 57.460499>,  <38.078312, 41.373161, 57.487106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681477, 41.330582, 57.460499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074202, -0.069958, -0.994786,
		0.101247, -0.991853, 0.077304,
		-0.992090, -0.106455, -0.066514,
		37.383850, 41.298645, 57.440544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870342, 40.791550, 57.061172>,  <38.078312, 41.373161, 57.487106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870342, 40.791550, 57.061172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536423, 41.010162, 57.034584>,  <37.336071, 41.141331, 57.018631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536423, 41.010162, 57.034584>,  <37.870342, 40.791550, 57.061172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536423, 41.010162, 57.034584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067102, -0.018826, -0.997569,
		-0.546458, -0.837224, -0.020958,
		-0.834794, 0.546535, -0.066467,
		37.285984, 41.174122, 57.014645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612240, 40.592739, 56.365181>,  <37.870342, 40.791550, 57.061172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612240, 40.592739, 56.365181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399158, 40.916260, 56.464844>,  <37.271309, 41.110371, 56.524639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399158, 40.916260, 56.464844>,  <37.612240, 40.592739, 56.365181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399158, 40.916260, 56.464844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065340, 0.332830, -0.940720,
		-0.843779, -0.484841, -0.230145,
		-0.532699, 0.808797, 0.249155,
		37.239349, 41.158897, 56.539589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138767, 40.687428, 55.844490>,  <37.612240, 40.592739, 56.365181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138767, 40.687428, 55.844490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215042, 41.035248, 56.026711>,  <37.260807, 41.243938, 56.136044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215042, 41.035248, 56.026711>,  <37.138767, 40.687428, 55.844490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215042, 41.035248, 56.026711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324295, 0.382208, -0.865303,
		-0.926536, 0.312738, -0.209106,
		0.190692, 0.869547, 0.455549,
		37.272251, 41.296112, 56.163376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801117, 41.254002, 55.455803>,  <37.138767, 40.687428, 55.844490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801117, 41.254002, 55.455803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.072342, 41.443756, 55.680370>,  <37.235077, 41.557610, 55.815109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.072342, 41.443756, 55.680370>,  <36.801117, 41.254002, 55.455803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072342, 41.443756, 55.680370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235380, 0.583454, -0.777289,
		-0.696297, 0.659195, 0.283956,
		0.678061, 0.474387, 0.561419,
		37.275761, 41.586071, 55.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766361, 41.835999, 55.160542>,  <36.801117, 41.254002, 55.455803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766361, 41.835999, 55.160542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104668, 41.845123, 55.373772>,  <37.307652, 41.850597, 55.501709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104668, 41.845123, 55.373772>,  <36.766361, 41.835999, 55.160542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104668, 41.845123, 55.373772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453692, 0.495051, -0.741004,
		-0.280804, 0.868564, 0.408344,
		0.845761, 0.022814, 0.533073,
		37.358395, 41.851967, 55.533695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131420, 42.474903, 55.059013>,  <36.766361, 41.835999, 55.160542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131420, 42.474903, 55.059013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421577, 42.226822, 55.178444>,  <37.595673, 42.077972, 55.250103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421577, 42.226822, 55.178444>,  <37.131420, 42.474903, 55.059013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421577, 42.226822, 55.178444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633808, 0.432616, -0.641194,
		0.268502, 0.654361, 0.706908,
		0.725392, -0.620206, 0.298581,
		37.639194, 42.040760, 55.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713928, 42.818928, 55.140678>,  <37.131420, 42.474903, 55.059013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713928, 42.818928, 55.140678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873528, 42.453072, 55.114666>,  <37.969288, 42.233559, 55.099060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873528, 42.453072, 55.114666>,  <37.713928, 42.818928, 55.140678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873528, 42.453072, 55.114666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675932, 0.341302, -0.653168,
		0.619612, 0.216653, 0.754415,
		0.398995, -0.914644, -0.065032,
		37.993225, 42.178677, 55.095158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461472, 42.823437, 55.314819>,  <37.713928, 42.818928, 55.140678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461472, 42.823437, 55.314819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.455318, 42.461586, 55.144451>,  <38.451626, 42.244476, 55.042233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.455318, 42.461586, 55.144451>,  <38.461472, 42.823437, 55.314819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455318, 42.461586, 55.144451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866901, 0.200192, -0.456515,
		0.498243, -0.376251, 0.781146,
		-0.015385, -0.904631, -0.425917,
		38.450703, 42.190197, 55.016678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044697, 42.499538, 55.497459>,  <38.461472, 42.823437, 55.314819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044697, 42.499538, 55.497459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891457, 42.356133, 55.156940>,  <38.799511, 42.270088, 54.952629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891457, 42.356133, 55.156940>,  <39.044697, 42.499538, 55.497459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891457, 42.356133, 55.156940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881058, 0.134981, -0.453340,
		0.277437, -0.923715, 0.264158,
		-0.383101, -0.358512, -0.851295,
		38.776527, 42.248577, 54.901550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673592, 42.356010, 55.180344>,  <39.044697, 42.499538, 55.497459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673592, 42.356010, 55.180344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393501, 42.317390, 54.897400>,  <39.225445, 42.294220, 54.727634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393501, 42.317390, 54.897400>,  <39.673592, 42.356010, 55.180344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393501, 42.317390, 54.897400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697048, 0.121652, -0.706629,
		0.154280, -0.987865, -0.017881,
		-0.700230, -0.096555, -0.707358,
		39.183434, 42.288425, 54.685192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993950, 41.930149, 54.628143>,  <39.673592, 42.356010, 55.180344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993950, 41.930149, 54.628143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705925, 42.141632, 54.448376>,  <39.533112, 42.268520, 54.340515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705925, 42.141632, 54.448376>,  <39.993950, 41.930149, 54.628143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705925, 42.141632, 54.448376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659434, 0.319766, -0.680365,
		-0.216006, -0.786267, -0.578900,
		-0.720061, 0.528709, -0.449420,
		39.489906, 42.300243, 54.313549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872082, 41.424377, 54.108753>,  <39.993950, 41.930149, 54.628143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872082, 41.424377, 54.108753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023422, 41.074348, 53.988026>,  <40.114227, 40.864330, 53.915588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023422, 41.074348, 53.988026>,  <39.872082, 41.424377, 54.108753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023422, 41.074348, 53.988026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270832, -0.416434, 0.867890,
		-0.885157, -0.246625, -0.394556,
		0.378350, -0.875077, -0.301816,
		40.136929, 40.811825, 53.897480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383240, 40.913971, 54.299561>,  <39.872082, 41.424377, 54.108753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383240, 40.913971, 54.299561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725395, 40.711403, 54.256008>,  <39.930687, 40.589863, 54.229877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725395, 40.711403, 54.256008>,  <39.383240, 40.913971, 54.299561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725395, 40.711403, 54.256008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196974, -0.512416, 0.835841,
		-0.479076, -0.693522, -0.538065,
		0.855388, -0.506416, -0.108881,
		39.982010, 40.559479, 54.223343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215580, 40.262321, 54.424908>,  <39.383240, 40.913971, 54.299561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215580, 40.262321, 54.424908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608036, 40.297653, 54.493679>,  <39.843510, 40.318851, 54.534943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608036, 40.297653, 54.493679>,  <39.215580, 40.262321, 54.424908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608036, 40.297653, 54.493679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118511, -0.427784, 0.896078,
		0.152701, -0.899554, -0.409249,
		0.981141, 0.088332, 0.171930,
		39.902378, 40.324154, 54.545258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496300, 39.611908, 54.586178>,  <39.215580, 40.262321, 54.424908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496300, 39.611908, 54.586178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 39.880409, 54.734177>,  <39.907360, 40.041508, 54.822975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 39.880409, 54.734177>,  <39.496300, 39.611908, 54.586178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753212, 39.880409, 54.734177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048569, -0.446114, 0.893657,
		0.764928, -0.591950, -0.253929,
		0.642282, 0.671250, 0.369995,
		39.945896, 40.081783, 54.845177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002708, 39.206585, 54.882175>,  <39.496300, 39.611908, 54.586178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002708, 39.206585, 54.882175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.042244, 39.572891, 55.037926>,  <40.065964, 39.792675, 55.131374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.042244, 39.572891, 55.037926>,  <40.002708, 39.206585, 54.882175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042244, 39.572891, 55.037926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054677, -0.395696, 0.916752,
		0.993600, -0.069321, -0.089181,
		0.098838, 0.915762, 0.389373,
		40.071896, 39.847618, 55.154739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393612, 39.037350, 55.490955>,  <40.002708, 39.206585, 54.882175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393612, 39.037350, 55.490955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.272972, 39.412743, 55.558228>,  <40.200588, 39.637978, 55.598591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.272972, 39.412743, 55.558228>,  <40.393612, 39.037350, 55.490955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272972, 39.412743, 55.558228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260535, -0.250803, 0.932319,
		0.917147, 0.237371, 0.320150,
		-0.301600, 0.938484, 0.168180,
		40.182491, 39.694286, 55.608681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708183, 39.131729, 56.097965>,  <40.393612, 39.037350, 55.490955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708183, 39.131729, 56.097965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401176, 39.385551, 56.061642>,  <40.216972, 39.537846, 56.039848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401176, 39.385551, 56.061642>,  <40.708183, 39.131729, 56.097965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401176, 39.385551, 56.061642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314441, -0.249252, 0.915970,
		0.558603, 0.731580, 0.390837,
		-0.767522, 0.634559, -0.090806,
		40.170921, 39.575920, 56.034401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420868, 39.120068, 56.148125>,  <40.708183, 39.131729, 56.097965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420868, 39.120068, 56.148125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763725, 38.980713, 56.299881>,  <41.969440, 38.897099, 56.390934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763725, 38.980713, 56.299881>,  <41.420868, 39.120068, 56.148125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763725, 38.980713, 56.299881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429767, 0.077719, -0.899589,
		0.283919, 0.934123, 0.216341,
		0.857141, -0.348387, 0.379390,
		42.020866, 38.876198, 56.413696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882507, 39.499485, 55.839611>,  <41.420868, 39.120068, 56.148125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882507, 39.499485, 55.839611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.084579, 39.171387, 55.946930>,  <42.205822, 38.974529, 56.011322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.084579, 39.171387, 55.946930>,  <41.882507, 39.499485, 55.839611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084579, 39.171387, 55.946930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388428, -0.061512, -0.919424,
		0.770657, 0.568694, 0.287532,
		0.505184, -0.820246, 0.268301,
		42.236134, 38.925312, 56.027420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623524, 39.633816, 55.648186>,  <41.882507, 39.499485, 55.839611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623524, 39.633816, 55.648186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572121, 39.237419, 55.663288>,  <42.541279, 38.999580, 55.672348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572121, 39.237419, 55.663288>,  <42.623524, 39.633816, 55.648186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572121, 39.237419, 55.663288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328994, -0.078517, -0.941062,
		0.935548, -0.108508, 0.336119,
		-0.128504, -0.990990, 0.037757,
		42.533569, 38.940121, 55.674614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238888, 39.269928, 55.327389>,  <42.623524, 39.633816, 55.648186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238888, 39.269928, 55.327389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.954205, 38.989098, 55.317924>,  <42.783394, 38.820599, 55.312244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.954205, 38.989098, 55.317924>,  <43.238888, 39.269928, 55.327389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954205, 38.989098, 55.317924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345509, -0.320520, -0.881981,
		0.611636, -0.635887, 0.470691,
		-0.711706, -0.702079, -0.023663,
		42.740692, 38.778473, 55.310825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490921, 38.776798, 55.008694>,  <43.238888, 39.269928, 55.327389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490921, 38.776798, 55.008694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108147, 38.662689, 54.987167>,  <42.878483, 38.594223, 54.974251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108147, 38.662689, 54.987167>,  <43.490921, 38.776798, 55.008694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108147, 38.662689, 54.987167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165607, -0.384192, -0.908279,
		0.238434, -0.878075, 0.414890,
		-0.956935, -0.285274, -0.053811,
		42.821068, 38.577106, 54.971024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509247, 38.073318, 54.740051>,  <43.490921, 38.776798, 55.008694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509247, 38.073318, 54.740051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.165573, 38.248947, 54.634972>,  <42.959370, 38.354324, 54.571922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.165573, 38.248947, 54.634972>,  <43.509247, 38.073318, 54.740051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165573, 38.248947, 54.634972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203856, -0.177167, -0.962837,
		-0.469295, -0.880811, 0.062713,
		-0.859188, 0.439071, -0.262703,
		42.907818, 38.380669, 54.556160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024639, 37.600414, 54.374310>,  <43.509247, 38.073318, 54.740051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024639, 37.600414, 54.374310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.900597, 37.964142, 54.263340>,  <42.826172, 38.182381, 54.196758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.900597, 37.964142, 54.263340>,  <43.024639, 37.600414, 54.374310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900597, 37.964142, 54.263340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081951, -0.316292, -0.945116,
		-0.947163, -0.270351, 0.172604,
		-0.310106, 0.909324, -0.277425,
		42.807564, 38.236938, 54.180111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.237999, 41.059689, 57.712116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.919048, 41.225739, 57.536911>,  <40.727676, 41.325371, 57.431789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.919048, 41.225739, 57.536911>,  <41.237999, 41.059689, 57.712116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919048, 41.225739, 57.536911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585263, 0.354965, -0.729018,
		-0.147156, -0.837657, -0.526000,
		-0.797378, 0.415128, -0.438014,
		40.679836, 41.350277, 57.405506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177879, 40.844112, 56.956280>,  <41.237999, 41.059689, 57.712116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177879, 40.844112, 56.956280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994148, 41.194077, 57.017662>,  <40.883907, 41.404057, 57.054489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994148, 41.194077, 57.017662>,  <41.177879, 40.844112, 56.956280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994148, 41.194077, 57.017662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583595, 0.427484, -0.690416,
		-0.669650, -0.227575, -0.706950,
		-0.459331, 0.874910, 0.153453,
		40.856350, 41.456551, 57.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146507, 41.069679, 56.323807>,  <41.177879, 40.844112, 56.956280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146507, 41.069679, 56.323807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.078274, 41.407318, 56.527138>,  <41.037334, 41.609901, 56.649136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.078274, 41.407318, 56.527138>,  <41.146507, 41.069679, 56.323807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078274, 41.407318, 56.527138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533719, 0.512808, -0.672437,
		-0.828278, 0.156594, -0.537991,
		-0.170587, 0.844101, 0.508325,
		41.027096, 41.660549, 56.679634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972595, 41.502495, 55.813538>,  <41.146507, 41.069679, 56.323807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972595, 41.502495, 55.813538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119911, 41.712883, 56.120186>,  <41.208302, 41.839115, 56.304176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119911, 41.712883, 56.120186>,  <40.972595, 41.502495, 55.813538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119911, 41.712883, 56.120186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559732, 0.532955, -0.634554,
		-0.742335, 0.662806, -0.098121,
		0.368292, 0.525973, 0.766625,
		41.230400, 41.870674, 56.350174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003738, 42.144424, 55.547512>,  <40.972595, 41.502495, 55.813538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003738, 42.144424, 55.547512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253387, 42.127571, 55.859589>,  <41.403175, 42.117458, 56.046833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253387, 42.127571, 55.859589>,  <41.003738, 42.144424, 55.547512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253387, 42.127571, 55.859589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705835, 0.458624, -0.539872,
		-0.335069, 0.887631, 0.315973,
		0.624120, -0.042130, 0.780192,
		41.440624, 42.114933, 56.093647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283516, 42.729988, 55.487629>,  <41.003738, 42.144424, 55.547512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283516, 42.729988, 55.487629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.534378, 42.505798, 55.703979>,  <41.684895, 42.371284, 55.833790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.534378, 42.505798, 55.703979>,  <41.283516, 42.729988, 55.487629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534378, 42.505798, 55.703979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778828, 0.442122, -0.444921,
		0.010236, 0.700281, 0.713794,
		0.627154, -0.560477, 0.540873,
		41.722523, 42.337654, 55.866241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786850, 43.152664, 55.697037>,  <41.283516, 42.729988, 55.487629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786850, 43.152664, 55.697037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.968437, 42.799423, 55.744431>,  <42.077389, 42.587479, 55.772865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.968437, 42.799423, 55.744431>,  <41.786850, 43.152664, 55.697037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968437, 42.799423, 55.744431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801445, 0.346595, -0.487399,
		0.389358, 0.316221, 0.865104,
		0.453966, -0.883106, 0.118484,
		42.104626, 42.534492, 55.779976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366741, 43.284092, 56.088036>,  <41.786850, 43.152664, 55.697037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366741, 43.284092, 56.088036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.439964, 42.928177, 55.920815>,  <42.483898, 42.714626, 55.820480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.439964, 42.928177, 55.920815>,  <42.366741, 43.284092, 56.088036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439964, 42.928177, 55.920815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890403, 0.330320, -0.313165,
		0.416742, -0.314912, 0.852735,
		0.183056, -0.889786, -0.418056,
		42.494881, 42.661240, 55.795399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097595, 43.302818, 56.036663>,  <42.366741, 43.284092, 56.088036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097595, 43.302818, 56.036663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006752, 42.979774, 55.818970>,  <42.952244, 42.785950, 55.688354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006752, 42.979774, 55.818970>,  <43.097595, 43.302818, 56.036663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006752, 42.979774, 55.818970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894091, 0.048607, -0.445241,
		0.386034, -0.587712, 0.711036,
		-0.227112, -0.807609, -0.544232,
		42.938618, 42.737492, 55.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744480, 42.833668, 56.044884>,  <43.097595, 43.302818, 56.036663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744480, 42.833668, 56.044884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.526917, 42.762733, 55.716805>,  <43.396378, 42.720173, 55.519958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.526917, 42.762733, 55.716805>,  <43.744480, 42.833668, 56.044884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526917, 42.762733, 55.716805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816128, 0.115566, -0.566198,
		0.195194, -0.977341, 0.081873,
		-0.543907, -0.177338, -0.820193,
		43.363743, 42.709534, 55.470745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178497, 42.281864, 55.686340>,  <43.744480, 42.833668, 56.044884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178497, 42.281864, 55.686340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928070, 42.459114, 55.429691>,  <43.777813, 42.565464, 55.275700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928070, 42.459114, 55.429691>,  <44.178497, 42.281864, 55.686340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928070, 42.459114, 55.429691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763446, 0.180840, -0.620038,
		-0.158722, -0.878031, -0.451518,
		-0.626065, 0.443123, -0.641626,
		43.740250, 42.592052, 55.237202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467365, 42.225224, 55.144848>,  <44.178497, 42.281864, 55.686340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467365, 42.225224, 55.144848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.200886, 42.490685, 55.008762>,  <44.040997, 42.649960, 54.927113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.200886, 42.490685, 55.008762>,  <44.467365, 42.225224, 55.144848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200886, 42.490685, 55.008762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647798, 0.288932, -0.704894,
		-0.369503, -0.689992, -0.622397,
		-0.666202, 0.663648, -0.340214,
		44.001026, 42.689777, 54.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377106, 41.447739, 54.903450>,  <44.467365, 42.225224, 55.144848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377106, 41.447739, 54.903450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.675949, 41.207634, 55.017654>,  <44.855255, 41.063572, 55.086178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.675949, 41.207634, 55.017654>,  <44.377106, 41.447739, 54.903450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675949, 41.207634, 55.017654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409661, -0.077541, 0.908936,
		-0.523462, -0.796035, -0.303836,
		0.747105, -0.600263, 0.285515,
		44.900082, 41.027554, 55.103310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071968, 40.910484, 55.281063>,  <44.377106, 41.447739, 54.903450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071968, 40.910484, 55.281063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.454460, 40.903740, 55.397911>,  <44.683956, 40.899693, 55.468021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.454460, 40.903740, 55.397911>,  <44.071968, 40.910484, 55.281063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454460, 40.903740, 55.397911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284356, -0.288996, 0.914124,
		0.069010, -0.957182, -0.281142,
		0.956232, -0.016861, 0.292124,
		44.741329, 40.898682, 55.485550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015427, 40.420670, 55.746284>,  <44.071968, 40.910484, 55.281063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015427, 40.420670, 55.746284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.345695, 40.629295, 55.832298>,  <44.543858, 40.754471, 55.883907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.345695, 40.629295, 55.832298>,  <44.015427, 40.420670, 55.746284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345695, 40.629295, 55.832298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183040, -0.112881, 0.976603,
		0.533637, -0.845710, 0.002266,
		0.825668, 0.521567, 0.215036,
		44.593395, 40.785767, 55.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258144, 40.146420, 56.338058>,  <44.015427, 40.420670, 55.746284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258144, 40.146420, 56.338058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.464020, 40.489204, 56.348686>,  <44.587543, 40.694878, 56.355064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.464020, 40.489204, 56.348686>,  <44.258144, 40.146420, 56.338058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464020, 40.489204, 56.348686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091512, 0.024098, 0.995513,
		0.852479, -0.514811, 0.090826,
		0.514690, 0.856965, 0.026568,
		44.618427, 40.746292, 56.356655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755524, 40.024635, 56.825245>,  <44.258144, 40.146420, 56.338058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755524, 40.024635, 56.825245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.722324, 40.421173, 56.784554>,  <44.702404, 40.659096, 56.760139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.722324, 40.421173, 56.784554>,  <44.755524, 40.024635, 56.825245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722324, 40.421173, 56.784554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055688, 0.097310, 0.993695,
		0.994993, 0.088139, 0.047129,
		-0.082997, 0.991344, -0.101731,
		44.697426, 40.718575, 56.754036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138401, 40.285908, 57.461094>,  <44.755524, 40.024635, 56.825245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138401, 40.285908, 57.461094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.940529, 40.599060, 57.310158>,  <44.821804, 40.786953, 57.219597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.940529, 40.599060, 57.310158>,  <45.138401, 40.285908, 57.461094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940529, 40.599060, 57.310158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277521, 0.269156, 0.922246,
		0.823573, 0.560937, 0.084120,
		-0.494681, 0.782882, -0.377341,
		44.792126, 40.833923, 57.196957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419243, 40.892204, 57.736271>,  <45.138401, 40.285908, 57.461094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419243, 40.892204, 57.736271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.039658, 40.976006, 57.641964>,  <44.811909, 41.026287, 57.585381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.039658, 40.976006, 57.641964>,  <45.419243, 40.892204, 57.736271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039658, 40.976006, 57.641964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235478, 0.026686, 0.971513,
		0.209825, 0.977444, 0.024009,
		-0.948959, 0.209501, -0.235766,
		44.754971, 41.038857, 57.571236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201954, 41.367405, 58.175735>,  <45.419243, 40.892204, 57.736271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201954, 41.367405, 58.175735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.844086, 41.240654, 58.049786>,  <44.629364, 41.164604, 57.974216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.844086, 41.240654, 58.049786>,  <45.201954, 41.367405, 58.175735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844086, 41.240654, 58.049786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379173, 0.165977, 0.910318,
		-0.236201, 0.933829, -0.268648,
		-0.894671, -0.316882, -0.314879,
		44.575684, 41.145588, 57.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707577, 41.841232, 58.440735>,  <45.201954, 41.367405, 58.175735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707577, 41.841232, 58.440735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489876, 41.523033, 58.334175>,  <44.359253, 41.332115, 58.270237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489876, 41.523033, 58.334175>,  <44.707577, 41.841232, 58.440735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489876, 41.523033, 58.334175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579463, 0.126844, 0.805067,
		-0.606636, 0.592534, -0.529997,
		-0.544257, -0.795496, -0.266403,
		44.326599, 41.284386, 58.254253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072620, 42.051483, 58.531143>,  <44.707577, 41.841232, 58.440735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072620, 42.051483, 58.531143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.043232, 41.653503, 58.558475>,  <44.025600, 41.414715, 58.574875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.043232, 41.653503, 58.558475>,  <44.072620, 42.051483, 58.531143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043232, 41.653503, 58.558475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572863, 0.098188, 0.813749,
		-0.816352, 0.020637, -0.577185,
		-0.073467, -0.994954, 0.068334,
		44.021191, 41.355019, 58.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352913, 41.916145, 58.560764>,  <44.072620, 42.051483, 58.531143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352913, 41.916145, 58.560764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.507095, 41.572952, 58.696587>,  <43.599606, 41.367039, 58.778080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.507095, 41.572952, 58.696587>,  <43.352913, 41.916145, 58.560764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507095, 41.572952, 58.696587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615608, 0.035006, 0.787275,
		-0.687353, -0.512487, -0.514687,
		0.385451, -0.857981, 0.339553,
		43.622730, 41.315559, 58.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782845, 41.604469, 58.774609>,  <43.352913, 41.916145, 58.560764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782845, 41.604469, 58.774609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.084961, 41.428047, 58.968517>,  <43.266232, 41.322193, 59.084862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.084961, 41.428047, 58.968517>,  <42.782845, 41.604469, 58.774609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084961, 41.428047, 58.968517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597125, -0.158230, 0.786387,
		-0.270142, -0.883418, -0.382879,
		0.755291, -0.441063, 0.484766,
		43.311550, 41.295731, 59.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551212, 40.991833, 59.082405>,  <42.782845, 41.604469, 58.774609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551212, 40.991833, 59.082405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.856007, 41.117203, 59.309082>,  <43.038883, 41.192425, 59.445087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.856007, 41.117203, 59.309082>,  <42.551212, 40.991833, 59.082405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856007, 41.117203, 59.309082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558269, -0.125561, 0.820104,
		0.328200, -0.941274, 0.079302,
		0.761985, 0.313430, 0.566693,
		43.084602, 41.211231, 59.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678242, 40.475178, 59.561657>,  <42.551212, 40.991833, 59.082405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678242, 40.475178, 59.561657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835640, 40.808708, 59.716518>,  <42.930080, 41.008827, 59.809437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835640, 40.808708, 59.716518>,  <42.678242, 40.475178, 59.561657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835640, 40.808708, 59.716518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502419, -0.157626, 0.850135,
		0.769893, -0.529039, 0.356906,
		0.393497, 0.833829, 0.387155,
		42.953690, 41.058857, 59.832664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586124, 39.974285, 59.048199>,  <42.678242, 40.475178, 59.561657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586124, 39.974285, 59.048199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.278267, 39.732437, 59.130257>,  <42.093552, 39.587330, 59.179493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.278267, 39.732437, 59.130257>,  <42.586124, 39.974285, 59.048199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278267, 39.732437, 59.130257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170643, -0.504411, -0.846434,
		0.615247, -0.616446, 0.491391,
		-0.769644, -0.604618, 0.205145,
		42.047375, 39.551052, 59.191799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806728, 39.282883, 58.988132>,  <42.586124, 39.974285, 59.048199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806728, 39.282883, 58.988132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412563, 39.277649, 58.920258>,  <42.176064, 39.274509, 58.879532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412563, 39.277649, 58.920258>,  <42.806728, 39.282883, 58.988132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412563, 39.277649, 58.920258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147006, -0.567813, -0.809924,
		-0.085748, -0.823053, 0.561454,
		-0.985412, -0.013088, -0.169682,
		42.116940, 39.273724, 58.869354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716030, 38.722031, 58.514599>,  <42.806728, 39.282883, 58.988132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716030, 38.722031, 58.514599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352650, 38.885590, 58.479904>,  <42.134621, 38.983723, 58.459087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352650, 38.885590, 58.479904>,  <42.716030, 38.722031, 58.514599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352650, 38.885590, 58.479904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099562, -0.413207, -0.905178,
		-0.405938, -0.813685, 0.416091,
		-0.908461, 0.408873, -0.086724,
		42.080116, 39.008259, 58.453884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307858, 38.191498, 58.174747>,  <42.716030, 38.722031, 58.514599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307858, 38.191498, 58.174747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120941, 38.541222, 58.122257>,  <42.008789, 38.751057, 58.090763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120941, 38.541222, 58.122257>,  <42.307858, 38.191498, 58.174747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120941, 38.541222, 58.122257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055551, -0.177169, -0.982611,
		-0.882355, -0.451878, 0.131359,
		-0.467293, 0.874309, -0.131224,
		41.980755, 38.803513, 58.082890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598518, 38.044533, 57.838272>,  <42.307858, 38.191498, 58.174747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598518, 38.044533, 57.838272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.734741, 38.411125, 57.754295>,  <41.816475, 38.631081, 57.703911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.734741, 38.411125, 57.754295>,  <41.598518, 38.044533, 57.838272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734741, 38.411125, 57.754295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030507, -0.233943, -0.971771,
		-0.939729, 0.324539, -0.107630,
		0.340557, 0.916485, -0.209942,
		41.836906, 38.686069, 57.691311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155724, 38.342003, 57.274311>,  <41.598518, 38.044533, 57.838272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155724, 38.342003, 57.274311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.506462, 38.533958, 57.262741>,  <41.716908, 38.649132, 57.255798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.506462, 38.533958, 57.262741>,  <41.155724, 38.342003, 57.274311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506462, 38.533958, 57.262741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028823, -0.112530, -0.993230,
		-0.479899, 0.870080, -0.112504,
		0.876850, 0.479893, -0.028925,
		41.769516, 38.677925, 57.254063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125614, 38.834526, 56.729942>,  <41.155724, 38.342003, 57.274311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125614, 38.834526, 56.729942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.518265, 38.795959, 56.795799>,  <41.753857, 38.772820, 56.835316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.518265, 38.795959, 56.795799>,  <41.125614, 38.834526, 56.729942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518265, 38.795959, 56.795799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166786, 0.014532, -0.985886,
		0.092666, 0.995235, 0.030347,
		0.981629, -0.096420, 0.164644,
		41.812752, 38.767033, 56.845192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685589, 39.551723, 56.664204>,  <41.125614, 38.834526, 56.729942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685589, 39.551723, 56.664204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310089, 39.570419, 56.527634>,  <40.084789, 39.581635, 56.445690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310089, 39.570419, 56.527634>,  <40.685589, 39.551723, 56.664204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310089, 39.570419, 56.527634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343415, -0.044521, 0.938128,
		0.028646, 0.997914, 0.057844,
		-0.938747, 0.046738, -0.341423,
		40.028465, 39.584442, 56.425205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355381, 39.992985, 57.134972>,  <40.685589, 39.551723, 56.664204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355381, 39.992985, 57.134972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.037483, 39.809784, 56.975670>,  <39.846745, 39.699863, 56.880089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.037483, 39.809784, 56.975670>,  <40.355381, 39.992985, 57.134972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037483, 39.809784, 56.975670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343984, -0.200712, 0.917273,
		-0.500051, 0.865994, 0.001969,
		-0.794748, -0.458006, -0.398254,
		39.799057, 39.672382, 56.856194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905678, 40.134705, 57.558823>,  <40.355381, 39.992985, 57.134972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905678, 40.134705, 57.558823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733231, 39.833817, 57.359505>,  <39.629761, 39.653282, 57.239914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733231, 39.833817, 57.359505>,  <39.905678, 40.134705, 57.558823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733231, 39.833817, 57.359505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451079, -0.298611, 0.841047,
		-0.781449, 0.587364, -0.210573,
		-0.431121, -0.752220, -0.498296,
		39.603893, 39.608150, 57.210014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120224, 40.272278, 57.575665>,  <39.905678, 40.134705, 57.558823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120224, 40.272278, 57.575665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210564, 39.883232, 57.553696>,  <39.264767, 39.649807, 57.540516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210564, 39.883232, 57.553696>,  <39.120224, 40.272278, 57.575665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210564, 39.883232, 57.553696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596813, -0.182706, 0.781302,
		-0.769938, -0.143682, -0.621732,
		0.225853, -0.972612, -0.054921,
		39.278320, 39.591450, 57.537220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450554, 39.949394, 57.785442>,  <39.120224, 40.272278, 57.575665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450554, 39.949394, 57.785442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688057, 39.627876, 57.800247>,  <38.830559, 39.434967, 57.809132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688057, 39.627876, 57.800247>,  <38.450554, 39.949394, 57.785442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688057, 39.627876, 57.800247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515653, -0.344785, 0.784363,
		-0.617705, -0.484806, -0.619196,
		0.593753, -0.803795, 0.037016,
		38.866184, 39.386738, 57.811352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917332, 39.421604, 57.819248>,  <38.450554, 39.949394, 57.785442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917332, 39.421604, 57.819248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278473, 39.294891, 57.935532>,  <38.495155, 39.218864, 58.005302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278473, 39.294891, 57.935532>,  <37.917332, 39.421604, 57.819248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278473, 39.294891, 57.935532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393705, -0.337384, 0.855084,
		-0.172798, -0.886464, -0.429327,
		0.902850, -0.316785, 0.290706,
		38.549328, 39.199856, 58.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795891, 38.667591, 58.094158>,  <37.917332, 39.421604, 57.819248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795891, 38.667591, 58.094158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116455, 38.836899, 58.263195>,  <38.308792, 38.938484, 58.364616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116455, 38.836899, 58.263195>,  <37.795891, 38.667591, 58.094158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116455, 38.836899, 58.263195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405051, -0.135785, 0.904155,
		0.440083, -0.895771, 0.062627,
		0.801412, 0.423270, 0.422590,
		38.356880, 38.963879, 58.389973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953709, 38.300186, 58.643478>,  <37.795891, 38.667591, 58.094158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953709, 38.300186, 58.643478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153175, 38.636307, 58.728546>,  <38.272858, 38.837978, 58.779587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153175, 38.636307, 58.728546>,  <37.953709, 38.300186, 58.643478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153175, 38.636307, 58.728546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208594, -0.121802, 0.970388,
		0.841319, -0.528264, 0.114542,
		0.498669, 0.840299, 0.212667,
		38.302776, 38.888397, 58.792347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364971, 38.104603, 59.196400>,  <37.953709, 38.300186, 58.643478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364971, 38.104603, 59.196400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370564, 38.502701, 59.234955>,  <38.373920, 38.741558, 59.258087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370564, 38.502701, 59.234955>,  <38.364971, 38.104603, 59.196400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370564, 38.502701, 59.234955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068064, -0.095222, 0.993127,
		0.997583, -0.020447, 0.066409,
		0.013983, 0.995246, 0.096383,
		38.374760, 38.801273, 59.263870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.117531, 42.648617, 43.816498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.186138, 43.008392, 43.977295>,  <42.227303, 43.224258, 44.073772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.186138, 43.008392, 43.977295>,  <42.117531, 42.648617, 43.816498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186138, 43.008392, 43.977295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012633, -0.405997, 0.913787,
		0.985101, -0.161806, -0.058272,
		0.171514, 0.899436, 0.401992,
		42.237591, 43.278225, 44.097893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690277, 42.617004, 44.176094>,  <42.117531, 42.648617, 43.816498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690277, 42.617004, 44.176094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.506180, 42.924141, 44.354351>,  <42.395721, 43.108421, 44.461308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.506180, 42.924141, 44.354351>,  <42.690277, 42.617004, 44.176094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506180, 42.924141, 44.354351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241951, -0.374487, 0.895108,
		0.854187, 0.519793, -0.013424,
		-0.460244, 0.767838, 0.445647,
		42.368107, 43.154491, 44.488045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107391, 42.804283, 44.746288>,  <42.690277, 42.617004, 44.176094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107391, 42.804283, 44.746288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.744511, 42.955872, 44.819355>,  <42.526783, 43.046825, 44.863194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.744511, 42.955872, 44.819355>,  <43.107391, 42.804283, 44.746288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744511, 42.955872, 44.819355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068842, -0.294614, 0.953133,
		0.415026, 0.877259, 0.241185,
		-0.907201, 0.378972, 0.182665,
		42.472351, 43.069565, 44.874153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140362, 43.248844, 45.416183>,  <43.107391, 42.804283, 44.746288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140362, 43.248844, 45.416183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.759895, 43.145912, 45.347988>,  <42.531616, 43.084152, 45.307072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.759895, 43.145912, 45.347988>,  <43.140362, 43.248844, 45.416183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759895, 43.145912, 45.347988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069554, -0.359445, 0.930570,
		-0.300742, 0.896985, 0.323994,
		-0.951166, -0.257326, -0.170490,
		42.474545, 43.068714, 45.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835358, 43.418224, 46.051399>,  <43.140362, 43.248844, 45.416183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835358, 43.418224, 46.051399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.581623, 43.168938, 45.868439>,  <42.429382, 43.019367, 45.758663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.581623, 43.168938, 45.868439>,  <42.835358, 43.418224, 46.051399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581623, 43.168938, 45.868439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139060, -0.490043, 0.860535,
		-0.760449, 0.609474, 0.224186,
		-0.634334, -0.623218, -0.457406,
		42.391323, 42.981972, 45.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134869, 43.335300, 46.468243>,  <42.835358, 43.418224, 46.051399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134869, 43.335300, 46.468243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.194275, 43.003403, 46.253033>,  <42.229919, 42.804264, 46.123909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.194275, 43.003403, 46.253033>,  <42.134869, 43.335300, 46.468243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194275, 43.003403, 46.253033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303714, -0.556033, 0.773683,
		-0.941117, 0.048503, -0.334583,
		0.148513, -0.829744, -0.538023,
		42.238831, 42.754478, 46.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549206, 42.969669, 46.701275>,  <42.134869, 43.335300, 46.468243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549206, 42.969669, 46.701275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.784370, 42.698563, 46.524643>,  <41.925468, 42.535900, 46.418663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.784370, 42.698563, 46.524643>,  <41.549206, 42.969669, 46.701275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784370, 42.698563, 46.524643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339267, -0.702151, 0.626005,
		-0.734341, -0.218221, -0.642746,
		0.587912, -0.677764, -0.441583,
		41.960743, 42.495232, 46.392166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218266, 42.271576, 46.851269>,  <41.549206, 42.969669, 46.701275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218266, 42.271576, 46.851269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594307, 42.184456, 46.746372>,  <41.819931, 42.132183, 46.683434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594307, 42.184456, 46.746372>,  <41.218266, 42.271576, 46.851269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594307, 42.184456, 46.746372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004909, -0.760559, 0.649251,
		-0.340855, -0.611650, -0.713934,
		0.940103, -0.217796, -0.262243,
		41.876339, 42.119118, 46.667698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159924, 41.629292, 46.610107>,  <41.218266, 42.271576, 46.851269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159924, 41.629292, 46.610107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521152, 41.723671, 46.753654>,  <41.737892, 41.780300, 46.839783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521152, 41.723671, 46.753654>,  <41.159924, 41.629292, 46.610107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521152, 41.723671, 46.753654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125526, -0.654085, 0.745933,
		0.410731, -0.718680, -0.561069,
		0.903074, 0.235949, 0.358866,
		41.792076, 41.794456, 46.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419167, 40.994465, 46.859474>,  <41.159924, 41.629292, 46.610107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419167, 40.994465, 46.859474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.665112, 41.254669, 47.037811>,  <41.812679, 41.410793, 47.144814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.665112, 41.254669, 47.037811>,  <41.419167, 40.994465, 46.859474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665112, 41.254669, 47.037811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163900, -0.447588, 0.879091,
		0.771411, -0.613598, -0.168589,
		0.614867, 0.650509, 0.445844,
		41.849571, 41.449821, 47.171566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042454, 40.569077, 47.220440>,  <41.419167, 40.994465, 46.859474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042454, 40.569077, 47.220440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001190, 40.914635, 47.417641>,  <41.976433, 41.121967, 47.535961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001190, 40.914635, 47.417641>,  <42.042454, 40.569077, 47.220440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001190, 40.914635, 47.417641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042803, -0.499042, 0.865520,
		0.993743, 0.068188, 0.088460,
		-0.103163, 0.863891, 0.493000,
		41.970242, 41.173801, 47.565540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459839, 40.474758, 47.793030>,  <42.042454, 40.569077, 47.220440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459839, 40.474758, 47.793030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233944, 40.784340, 47.907619>,  <42.098408, 40.970089, 47.976376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233944, 40.784340, 47.907619>,  <42.459839, 40.474758, 47.793030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233944, 40.784340, 47.907619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279400, -0.505936, 0.816067,
		0.776537, 0.380820, 0.501962,
		-0.564735, 0.773954, 0.286477,
		42.064522, 41.016525, 47.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126945, 40.576187, 48.131886>,  <42.459839, 40.474758, 47.793030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126945, 40.576187, 48.131886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.368553, 40.275299, 48.237206>,  <43.513515, 40.094765, 48.300396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.368553, 40.275299, 48.237206>,  <43.126945, 40.576187, 48.131886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368553, 40.275299, 48.237206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594744, 0.205527, -0.777198,
		0.530512, 0.626034, 0.571522,
		0.604016, -0.752223, 0.263296,
		43.549759, 40.049633, 48.316193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871193, 40.859608, 48.097084>,  <43.126945, 40.576187, 48.131886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871193, 40.859608, 48.097084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.901352, 40.462616, 48.058498>,  <43.919445, 40.224422, 48.035347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.901352, 40.462616, 48.058498>,  <43.871193, 40.859608, 48.097084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901352, 40.462616, 48.058498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493481, 0.121200, -0.861271,
		0.866483, 0.017332, 0.498906,
		0.075395, -0.992477, -0.096464,
		43.923969, 40.164871, 48.029560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636646, 40.698563, 48.094517>,  <43.871193, 40.859608, 48.097084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636646, 40.698563, 48.094517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.413059, 40.411186, 47.928917>,  <44.278908, 40.238762, 47.829556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.413059, 40.411186, 47.928917>,  <44.636646, 40.698563, 48.094517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413059, 40.411186, 47.928917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566660, 0.033533, -0.823269,
		0.605353, -0.694778, 0.388369,
		-0.558966, -0.718442, -0.414003,
		44.245369, 40.195652, 47.804714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118038, 40.347649, 47.870171>,  <44.636646, 40.698563, 48.094517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118038, 40.347649, 47.870171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.806129, 40.209908, 47.661034>,  <44.618984, 40.127262, 47.535549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.806129, 40.209908, 47.661034>,  <45.118038, 40.347649, 47.870171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806129, 40.209908, 47.661034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595444, -0.149973, -0.789275,
		0.193380, -0.926783, 0.321991,
		-0.779776, -0.344357, -0.522846,
		44.572197, 40.106602, 47.504181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387161, 39.765320, 47.489994>,  <45.118038, 40.347649, 47.870171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387161, 39.765320, 47.489994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.055092, 39.924355, 47.333668>,  <44.855850, 40.019775, 47.239872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.055092, 39.924355, 47.333668>,  <45.387161, 39.765320, 47.489994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055092, 39.924355, 47.333668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376242, -0.117744, -0.919009,
		-0.411403, -0.909978, -0.051841,
		-0.830175, 0.397588, -0.390812,
		44.806038, 40.043633, 47.216423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240955, 39.434525, 46.842888>,  <45.387161, 39.765320, 47.489994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240955, 39.434525, 46.842888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.048000, 39.782799, 46.804512>,  <44.932228, 39.991764, 46.781487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.048000, 39.782799, 46.804512>,  <45.240955, 39.434525, 46.842888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048000, 39.782799, 46.804512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210138, 0.008705, -0.977633,
		-0.850378, -0.491759, -0.187163,
		-0.482389, 0.870688, -0.095935,
		44.903282, 40.044006, 46.775730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029205, 39.354481, 46.228577>,  <45.240955, 39.434525, 46.842888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029205, 39.354481, 46.228577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.013336, 39.747597, 46.300751>,  <45.003815, 39.983467, 46.344055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.013336, 39.747597, 46.300751>,  <45.029205, 39.354481, 46.228577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013336, 39.747597, 46.300751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324456, 0.183459, -0.927939,
		-0.945068, 0.021726, -0.326150,
		-0.039675, 0.982787, 0.180431,
		45.001434, 40.042435, 46.354881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871872, 39.688305, 45.544338>,  <45.029205, 39.354481, 46.228577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871872, 39.688305, 45.544338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.014343, 39.991844, 45.762436>,  <45.099827, 40.173965, 45.893295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.014343, 39.991844, 45.762436>,  <44.871872, 39.688305, 45.544338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014343, 39.991844, 45.762436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496482, 0.340639, -0.798417,
		-0.791606, 0.555085, -0.255423,
		0.356182, 0.758845, 0.545242,
		45.121197, 40.219498, 45.926010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843128, 40.191566, 45.062206>,  <44.871872, 39.688305, 45.544338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843128, 40.191566, 45.062206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.096485, 40.321793, 45.343010>,  <45.248497, 40.399929, 45.511494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.096485, 40.321793, 45.343010>,  <44.843128, 40.191566, 45.062206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096485, 40.321793, 45.343010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615766, 0.337387, -0.712041,
		-0.468668, 0.883275, 0.013223,
		0.633390, 0.325569, 0.702013,
		45.286503, 40.419464, 45.553616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081844, 40.813923, 44.737389>,  <44.843128, 40.191566, 45.062206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081844, 40.813923, 44.737389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.340599, 40.771141, 45.039410>,  <45.495853, 40.745472, 45.220623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.340599, 40.771141, 45.039410>,  <45.081844, 40.813923, 44.737389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340599, 40.771141, 45.039410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682389, 0.523172, -0.510525,
		-0.340416, 0.845489, 0.411419,
		0.646886, -0.106957, 0.755049,
		45.534664, 40.739056, 45.265923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446484, 41.344238, 44.760834>,  <45.081844, 40.813923, 44.737389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446484, 41.344238, 44.760834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.675171, 41.079567, 44.954872>,  <45.812382, 40.920765, 45.071297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.675171, 41.079567, 44.954872>,  <45.446484, 41.344238, 44.760834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675171, 41.079567, 44.954872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819385, 0.430370, -0.378669,
		0.041787, 0.613972, 0.788221,
		0.571719, -0.661679, 0.485095,
		45.846687, 40.881062, 45.100399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920841, 41.803642, 45.007698>,  <45.446484, 41.344238, 44.760834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920841, 41.803642, 45.007698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.068298, 41.433212, 44.975468>,  <46.156773, 41.210957, 44.956127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.068298, 41.433212, 44.975468>,  <45.920841, 41.803642, 45.007698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068298, 41.433212, 44.975468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791116, 0.358072, -0.495902,
		0.488094, 0.119064, 0.864632,
		0.368645, -0.926071, -0.080580,
		46.178890, 41.155392, 44.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591892, 41.718872, 45.371868>,  <45.920841, 41.803642, 45.007698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591892, 41.718872, 45.371868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.595024, 41.426376, 45.099037>,  <46.596905, 41.250877, 44.935341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.595024, 41.426376, 45.099037>,  <46.591892, 41.718872, 45.371868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595024, 41.426376, 45.099037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885763, 0.321624, -0.334637,
		0.464072, -0.601534, 0.650226,
		0.007833, -0.731242, -0.682073,
		46.597374, 41.207005, 44.894417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249546, 41.620327, 45.194351>,  <46.591892, 41.718872, 45.371868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249546, 41.620327, 45.194351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.124863, 41.412514, 44.876125>,  <47.050053, 41.287827, 44.685188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.124863, 41.412514, 44.876125>,  <47.249546, 41.620327, 45.194351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124863, 41.412514, 44.876125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841756, 0.237420, -0.484849,
		0.440779, -0.820800, 0.363318,
		-0.311705, -0.519536, -0.795564,
		47.031349, 41.256653, 44.637455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857857, 41.231274, 44.887253>,  <47.249546, 41.620327, 45.194351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857857, 41.231274, 44.887253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.594894, 41.326576, 44.601299>,  <47.437119, 41.383759, 44.429729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.594894, 41.326576, 44.601299>,  <47.857857, 41.231274, 44.887253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594894, 41.326576, 44.601299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753539, 0.208007, -0.623628,
		0.000119, -0.948666, -0.316279,
		-0.657403, 0.238254, -0.714882,
		47.397675, 41.398052, 44.386833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.480362, 41.802177, 44.896889>,  <47.857857, 41.231274, 44.887253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.480362, 41.802177, 44.896889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.334282, 42.138435, 45.056858>,  <48.246635, 42.340191, 45.152840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.334282, 42.138435, 45.056858>,  <48.480362, 41.802177, 44.896889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.334282, 42.138435, 45.056858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082744, -0.457210, 0.885502,
		0.927245, 0.290292, 0.236530,
		-0.365198, 0.840648, 0.399926,
		48.224724, 42.390629, 45.176834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.745560, 41.902939, 45.567368>,  <48.480362, 41.802177, 44.896889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.745560, 41.902939, 45.567368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.423645, 42.140320, 45.571945>,  <48.230495, 42.282749, 45.574692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.423645, 42.140320, 45.571945>,  <48.745560, 41.902939, 45.567368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.423645, 42.140320, 45.571945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126683, -0.190574, 0.973464,
		0.579887, 0.781982, 0.228552,
		-0.804787, 0.593453, 0.011448,
		48.182209, 42.318356, 45.575378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.867897, 42.411686, 46.165668>,  <48.745560, 41.902939, 45.567368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.867897, 42.411686, 46.165668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.474396, 42.437050, 46.098488>,  <48.238297, 42.452267, 46.058178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.474396, 42.437050, 46.098488>,  <48.867897, 42.411686, 46.165668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.474396, 42.437050, 46.098488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179509, -0.359421, 0.915747,
		-0.002300, 0.931019, 0.364964,
		-0.983754, 0.063408, -0.167953,
		48.179268, 42.456074, 46.048103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.564724, 42.870735, 46.636333>,  <48.867897, 42.411686, 46.165668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.564724, 42.870735, 46.636333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.244965, 42.664528, 46.512913>,  <48.053108, 42.540806, 46.438858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.244965, 42.664528, 46.512913>,  <48.564724, 42.870735, 46.636333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.244965, 42.664528, 46.512913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154833, -0.319456, 0.934866,
		-0.580507, 0.795105, 0.175555,
		-0.799399, -0.515515, -0.308555,
		48.005146, 42.509872, 46.420345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.171059, 42.921822, 47.175957>,  <48.564724, 42.870735, 46.636333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.171059, 42.921822, 47.175957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.979378, 42.629250, 46.981895>,  <47.864368, 42.453705, 46.865459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.979378, 42.629250, 46.981895>,  <48.171059, 42.921822, 47.175957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.979378, 42.629250, 46.981895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414622, -0.298539, 0.859630,
		-0.773598, 0.613091, -0.160207,
		-0.479203, -0.731433, -0.485150,
		47.835617, 42.409821, 46.836349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.483295, 42.899944, 47.397579>,  <48.171059, 42.921822, 47.175957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.483295, 42.899944, 47.397579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.548401, 42.529556, 47.261299>,  <47.587463, 42.307323, 47.179531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.548401, 42.529556, 47.261299>,  <47.483295, 42.899944, 47.397579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548401, 42.529556, 47.261299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280200, -0.374470, 0.883889,
		-0.946042, -0.048404, -0.320409,
		0.162767, -0.925974, -0.340701,
		47.597233, 42.251762, 47.159088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879772, 42.489052, 47.692223>,  <47.483295, 42.899944, 47.397579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879772, 42.489052, 47.692223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.154137, 42.214622, 47.595203>,  <47.318756, 42.049965, 47.536991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.154137, 42.214622, 47.595203>,  <46.879772, 42.489052, 47.692223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.154137, 42.214622, 47.595203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299819, -0.570160, 0.764870,
		-0.663048, -0.451912, -0.596777,
		0.685912, -0.686071, -0.242552,
		47.359909, 42.008801, 47.522438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529633, 41.855064, 47.700191>,  <46.879772, 42.489052, 47.692223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529633, 41.855064, 47.700191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.919518, 41.769249, 47.725212>,  <47.153446, 41.717758, 47.740223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.919518, 41.769249, 47.725212>,  <46.529633, 41.855064, 47.700191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919518, 41.769249, 47.725212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186899, -0.629160, 0.754471,
		-0.122506, -0.747082, -0.653345,
		0.974710, -0.214537, 0.062553,
		47.211929, 41.704887, 47.743977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510494, 41.231655, 47.804813>,  <46.529633, 41.855064, 47.700191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510494, 41.231655, 47.804813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892975, 41.294746, 47.903446>,  <47.122463, 41.332600, 47.962627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892975, 41.294746, 47.903446>,  <46.510494, 41.231655, 47.804813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892975, 41.294746, 47.903446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093275, -0.634302, 0.767437,
		0.277452, -0.756824, -0.591809,
		0.956201, 0.157726, 0.246581,
		47.179836, 41.342064, 47.977421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702629, 40.566887, 48.106838>,  <46.510494, 41.231655, 47.804813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702629, 40.566887, 48.106838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.970535, 40.832848, 48.239090>,  <47.131279, 40.992424, 48.318443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.970535, 40.832848, 48.239090>,  <46.702629, 40.566887, 48.106838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970535, 40.832848, 48.239090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063107, -0.392677, 0.917509,
		0.739887, -0.635380, -0.221041,
		0.669764, 0.664904, 0.330633,
		47.171463, 41.032318, 48.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245975, 40.169628, 48.614700>,  <46.702629, 40.566887, 48.106838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245975, 40.169628, 48.614700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.276428, 40.556908, 48.710026>,  <47.294701, 40.789276, 48.767220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.276428, 40.556908, 48.710026>,  <47.245975, 40.169628, 48.614700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276428, 40.556908, 48.710026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207810, -0.218351, 0.953487,
		0.975202, -0.122115, 0.184578,
		0.076132, 0.968200, 0.238313,
		47.299267, 40.847366, 48.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554047, 40.139095, 49.234943>,  <47.245975, 40.169628, 48.614700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554047, 40.139095, 49.234943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.407524, 40.510963, 49.219292>,  <47.319611, 40.734085, 49.209900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.407524, 40.510963, 49.219292>,  <47.554047, 40.139095, 49.234943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407524, 40.510963, 49.219292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305282, -0.080351, 0.948866,
		0.878989, 0.359522, 0.313245,
		-0.366307, 0.929671, -0.039128,
		47.297630, 40.789864, 49.207554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.931030, 40.597656, 49.684238>,  <47.554047, 40.139095, 49.234943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.931030, 40.597656, 49.684238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.569374, 40.753738, 49.614635>,  <47.352383, 40.847385, 49.572872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.569374, 40.753738, 49.614635>,  <47.931030, 40.597656, 49.684238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569374, 40.753738, 49.614635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183171, 0.013924, 0.982982,
		0.385986, 0.920623, 0.058884,
		-0.904137, 0.390203, -0.174006,
		47.298134, 40.870800, 49.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.841381, 40.977631, 50.216625>,  <47.931030, 40.597656, 49.684238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.841381, 40.977631, 50.216625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.464378, 40.973831, 50.083004>,  <47.238178, 40.971554, 50.002831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.464378, 40.973831, 50.083004>,  <47.841381, 40.977631, 50.216625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.464378, 40.973831, 50.083004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333177, 0.104392, 0.937068,
		0.025973, 0.994491, -0.101554,
		-0.942507, -0.009497, -0.334053,
		47.181625, 40.970982, 49.982788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464149, 41.485252, 50.468899>,  <47.841381, 40.977631, 50.216625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464149, 41.485252, 50.468899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149879, 41.250626, 50.390255>,  <46.961319, 41.109852, 50.343067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149879, 41.250626, 50.390255>,  <47.464149, 41.485252, 50.468899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149879, 41.250626, 50.390255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289383, 0.067561, 0.954826,
		-0.546783, 0.807081, -0.222822,
		-0.785676, -0.586563, -0.196614,
		46.914177, 41.074657, 50.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786846, 41.839649, 50.685677>,  <47.464149, 41.485252, 50.468899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786846, 41.839649, 50.685677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.701134, 41.448990, 50.679371>,  <46.649708, 41.214596, 50.675587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.701134, 41.448990, 50.679371>,  <46.786846, 41.839649, 50.685677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701134, 41.448990, 50.679371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378714, 0.068191, 0.922998,
		-0.900366, 0.203752, -0.384481,
		-0.214281, -0.976645, -0.015767,
		46.636848, 41.155998, 50.674641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.135532, 41.829857, 51.072899>,  <46.786846, 41.839649, 50.685677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.135532, 41.829857, 51.072899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.262367, 41.450714, 51.085693>,  <46.338470, 41.223228, 51.093369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.262367, 41.450714, 51.085693>,  <46.135532, 41.829857, 51.072899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262367, 41.450714, 51.085693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484385, -0.132867, 0.864706,
		-0.815367, -0.289683, -0.501258,
		0.317092, -0.947856, 0.031983,
		46.357494, 41.166359, 51.095287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513073, 41.378601, 51.278198>,  <46.135532, 41.829857, 51.072899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513073, 41.378601, 51.278198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.844963, 41.174019, 51.367615>,  <46.044098, 41.051270, 51.421265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.844963, 41.174019, 51.367615>,  <45.513073, 41.378601, 51.278198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844963, 41.174019, 51.367615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352707, -0.170027, 0.920157,
		-0.432612, -0.842321, -0.321470,
		0.829726, -0.511455, 0.223536,
		46.093880, 41.020584, 51.434677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313156, 40.736923, 51.549355>,  <45.513073, 41.378601, 51.278198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313156, 40.736923, 51.549355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.690880, 40.781578, 51.673180>,  <45.917515, 40.808369, 51.747475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.690880, 40.781578, 51.673180>,  <45.313156, 40.736923, 51.549355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690880, 40.781578, 51.673180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295604, -0.125582, 0.947020,
		0.144595, -0.985782, -0.085588,
		0.944304, 0.111634, 0.309559,
		45.974171, 40.815067, 51.766048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355320, 40.358913, 52.243069>,  <45.313156, 40.736923, 51.549355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355320, 40.358913, 52.243069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.699730, 40.561974, 52.230904>,  <45.906376, 40.683811, 52.223602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.699730, 40.561974, 52.230904>,  <45.355320, 40.358913, 52.243069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699730, 40.561974, 52.230904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106515, -0.121535, 0.986855,
		0.497282, -0.852948, -0.158717,
		0.861026, 0.507651, -0.030415,
		45.958038, 40.714268, 52.221779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885273, 39.977013, 52.617481>,  <45.355320, 40.358913, 52.243069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885273, 39.977013, 52.617481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.023598, 40.352325, 52.614876>,  <46.106590, 40.577515, 52.613312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.023598, 40.352325, 52.614876>,  <45.885273, 39.977013, 52.617481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023598, 40.352325, 52.614876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112420, -0.034541, 0.993060,
		0.931547, -0.344139, -0.117426,
		0.345807, 0.938283, -0.006511,
		46.127338, 40.633812, 52.612923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434311, 39.933590, 53.043255>,  <45.885273, 39.977013, 52.617481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434311, 39.933590, 53.043255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.302765, 40.311020, 53.027657>,  <46.223835, 40.537476, 53.018299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.302765, 40.311020, 53.027657>,  <46.434311, 39.933590, 53.043255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302765, 40.311020, 53.027657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243098, -0.044682, 0.968972,
		0.912551, 0.328143, 0.244075,
		-0.328867, 0.943571, -0.038997,
		46.204105, 40.594090, 53.015957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641842, 40.268867, 53.673565>,  <46.434311, 39.933590, 53.043255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641842, 40.268867, 53.673565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.332458, 40.479591, 53.532585>,  <46.146828, 40.606026, 53.447998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.332458, 40.479591, 53.532585>,  <46.641842, 40.268867, 53.673565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332458, 40.479591, 53.532585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303168, 0.180849, 0.935619,
		0.556638, 0.830518, 0.019834,
		-0.773462, 0.526814, -0.352454,
		46.100418, 40.637634, 53.426849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672256, 40.729828, 54.215618>,  <46.641842, 40.268867, 53.673565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672256, 40.729828, 54.215618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.331711, 40.787560, 54.013885>,  <46.127384, 40.822197, 53.892845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.331711, 40.787560, 54.013885>,  <46.672256, 40.729828, 54.215618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331711, 40.787560, 54.013885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441962, 0.320547, 0.837806,
		0.282579, 0.936173, -0.209116,
		-0.851363, 0.144325, -0.504332,
		46.076302, 40.830856, 53.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422813, 41.377792, 54.376007>,  <46.672256, 40.729828, 54.215618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422813, 41.377792, 54.376007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.091591, 41.190254, 54.253044>,  <45.892857, 41.077732, 54.179268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.091591, 41.190254, 54.253044>,  <46.422813, 41.377792, 54.376007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091591, 41.190254, 54.253044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339096, -0.017806, 0.940583,
		-0.446464, 0.883100, -0.144240,
		-0.828060, -0.468848, -0.307405,
		45.843174, 41.049599, 54.160824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833443, 41.773151, 54.587318>,  <46.422813, 41.377792, 54.376007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833443, 41.773151, 54.587318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.696198, 41.402199, 54.527668>,  <45.613850, 41.179626, 54.491879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.696198, 41.402199, 54.527668>,  <45.833443, 41.773151, 54.587318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696198, 41.402199, 54.527668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521906, 0.056223, 0.851148,
		-0.780954, 0.369870, -0.503296,
		-0.343111, -0.927381, -0.149130,
		45.593266, 41.123985, 54.482929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100388, 41.814060, 54.636086>,  <45.833443, 41.773151, 54.587318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100388, 41.814060, 54.636086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.208160, 41.436752, 54.713692>,  <45.272823, 41.210365, 54.760254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.208160, 41.436752, 54.713692>,  <45.100388, 41.814060, 54.636086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208160, 41.436752, 54.713692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499827, 0.035234, 0.865409,
		-0.823153, -0.330141, -0.461980,
		0.269430, -0.943274, 0.194016,
		45.288990, 41.153770, 54.771896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547932, 42.175972, 54.425365>,  <45.100388, 41.814060, 54.636086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547932, 42.175972, 54.425365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.370525, 42.521858, 54.519657>,  <44.264080, 42.729389, 54.576233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.370525, 42.521858, 54.519657>,  <44.547932, 42.175972, 54.425365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370525, 42.521858, 54.519657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460036, 0.445354, -0.768131,
		-0.769195, -0.232235, -0.595320,
		-0.443516, 0.864712, 0.235728,
		44.237469, 42.781273, 54.590374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176998, 42.420319, 53.844448>,  <44.547932, 42.175972, 54.425365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176998, 42.420319, 53.844448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.256050, 42.728127, 54.087357>,  <44.303482, 42.912811, 54.233101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.256050, 42.728127, 54.087357>,  <44.176998, 42.420319, 53.844448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256050, 42.728127, 54.087357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417784, 0.494295, -0.762318,
		-0.886792, 0.404364, -0.223808,
		0.197627, 0.769521, 0.607274,
		44.315338, 42.958984, 54.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015926, 42.920956, 53.454018>,  <44.176998, 42.420319, 53.844448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015926, 42.920956, 53.454018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.217453, 43.127632, 53.730915>,  <44.338367, 43.251637, 53.897053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.217453, 43.127632, 53.730915>,  <44.015926, 42.920956, 53.454018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217453, 43.127632, 53.730915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360877, 0.602200, -0.712125,
		-0.784816, 0.608596, 0.116938,
		0.503817, 0.516687, 0.692245,
		44.368599, 43.282639, 53.938587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858047, 43.547180, 53.364777>,  <44.015926, 42.920956, 53.454018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858047, 43.547180, 53.364777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.215263, 43.581078, 53.541542>,  <44.429592, 43.601418, 53.647602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.215263, 43.581078, 53.541542>,  <43.858047, 43.547180, 53.364777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215263, 43.581078, 53.541542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329802, 0.544838, -0.770962,
		-0.306110, 0.834248, 0.458615,
		0.893044, 0.084746, 0.441917,
		44.483177, 43.606503, 53.674118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015800, 44.283596, 53.447624>,  <43.858047, 43.547180, 53.364777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015800, 44.283596, 53.447624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.361908, 44.083092, 53.444717>,  <44.569572, 43.962791, 53.442974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.361908, 44.083092, 53.444717>,  <44.015800, 44.283596, 53.447624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361908, 44.083092, 53.444717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357603, 0.627316, -0.691805,
		0.351331, 0.595998, 0.722048,
		0.865267, -0.501259, -0.007265,
		44.621487, 43.932713, 53.442539>
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
