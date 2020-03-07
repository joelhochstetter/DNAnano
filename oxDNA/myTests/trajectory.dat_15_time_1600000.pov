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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<38.171391, 46.885590, 55.442158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419098, 46.679939, 55.679535>,  <38.567722, 46.556549, 55.821960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419098, 46.679939, 55.679535>,  <38.171391, 46.885590, 55.442158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419098, 46.679939, 55.679535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744038, 0.142817, -0.652695,
		0.250816, 0.845739, 0.470974,
		0.619273, -0.514129, 0.593441,
		38.604881, 46.525700, 55.857567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829762, 47.224640, 55.281513>,  <38.171391, 46.885590, 55.442158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829762, 47.224640, 55.281513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940407, 46.877060, 55.445663>,  <39.006794, 46.668510, 55.544155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940407, 46.877060, 55.445663>,  <38.829762, 47.224640, 55.281513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940407, 46.877060, 55.445663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762525, -0.061429, -0.644036,
		0.584845, 0.491071, 0.645605,
		0.276609, -0.868951, 0.410380,
		39.023388, 46.616375, 55.568779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469078, 47.368610, 55.412857>,  <38.829762, 47.224640, 55.281513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469078, 47.368610, 55.412857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457909, 46.968987, 55.426102>,  <39.451206, 46.729210, 55.434048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457909, 46.968987, 55.426102>,  <39.469078, 47.368610, 55.412857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457909, 46.968987, 55.426102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736441, -0.042959, -0.675137,
		0.675926, 0.005527, 0.736949,
		-0.027927, -0.999062, 0.033107,
		39.449532, 46.669270, 55.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165859, 47.099045, 55.450352>,  <39.469078, 47.368610, 55.412857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165859, 47.099045, 55.450352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971916, 46.772362, 55.325195>,  <39.855549, 46.576351, 55.250103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971916, 46.772362, 55.325195>,  <40.165859, 47.099045, 55.450352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971916, 46.772362, 55.325195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732626, -0.183880, -0.655323,
		0.477674, -0.546968, 0.687498,
		-0.484857, -0.816710, -0.312888,
		39.826458, 46.527348, 55.231327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616875, 46.454556, 55.534164>,  <40.165859, 47.099045, 55.450352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616875, 46.454556, 55.534164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343163, 46.372673, 55.254204>,  <40.178936, 46.323544, 55.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343163, 46.372673, 55.254204>,  <40.616875, 46.454556, 55.534164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343163, 46.372673, 55.254204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727637, -0.254934, -0.636830,
		-0.048062, -0.945041, 0.323401,
		-0.684276, -0.204711, -0.699900,
		40.137878, 46.311260, 55.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946487, 45.881916, 55.158791>,  <40.616875, 46.454556, 55.534164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946487, 45.881916, 55.158791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624512, 45.961720, 54.935265>,  <40.431328, 46.009602, 54.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624512, 45.961720, 54.935265>,  <40.946487, 45.881916, 55.158791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624512, 45.961720, 54.935265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423533, -0.466399, -0.776589,
		-0.415564, -0.861783, 0.290925,
		-0.804939, 0.199506, -0.558813,
		40.383030, 46.021572, 54.767620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732880, 45.213425, 54.885426>,  <40.946487, 45.881916, 55.158791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732880, 45.213425, 54.885426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580696, 45.501442, 54.653290>,  <40.489388, 45.674252, 54.514008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580696, 45.501442, 54.653290>,  <40.732880, 45.213425, 54.885426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580696, 45.501442, 54.653290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144619, -0.573485, -0.806350,
		-0.913422, -0.390708, 0.114053,
		-0.380455, 0.720044, -0.580337,
		40.466560, 45.717457, 54.479187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169411, 44.928005, 54.362274>,  <40.732880, 45.213425, 54.885426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169411, 44.928005, 54.362274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335014, 45.269726, 54.236568>,  <40.434376, 45.474758, 54.161144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335014, 45.269726, 54.236568>,  <40.169411, 44.928005, 54.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335014, 45.269726, 54.236568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093139, -0.383189, -0.918962,
		-0.905497, 0.351185, -0.238211,
		0.414005, 0.854304, -0.314268,
		40.459217, 45.526016, 54.142288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936077, 44.893303, 53.643833>,  <40.169411, 44.928005, 54.362274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936077, 44.893303, 53.643833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190155, 45.201786, 53.627060>,  <40.342602, 45.386875, 53.616997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190155, 45.201786, 53.627060>,  <39.936077, 44.893303, 53.643833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190155, 45.201786, 53.627060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068314, -0.110185, -0.991560,
		-0.769321, 0.626974, -0.122674,
		0.635199, 0.771209, -0.041937,
		40.380714, 45.433147, 53.614479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734459, 45.355721, 53.065609>,  <39.936077, 44.893303, 53.643833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734459, 45.355721, 53.065609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127808, 45.387123, 53.131104>,  <40.363819, 45.405964, 53.170399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127808, 45.387123, 53.131104>,  <39.734459, 45.355721, 53.065609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127808, 45.387123, 53.131104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169031, -0.066343, -0.983375,
		-0.066343, 0.994703, -0.078511,
		0.983375, 0.078511, 0.163734,
		40.422821, 45.410675, 53.180225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936470, 45.773758, 52.614639>,  <39.734459, 45.355721, 53.065609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936470, 45.773758, 52.614639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274025, 45.579311, 52.705460>,  <40.476559, 45.462643, 52.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274025, 45.579311, 52.705460>,  <39.936470, 45.773758, 52.614639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274025, 45.579311, 52.705460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092605, -0.284871, -0.954082,
		0.528472, 0.826162, -0.195382,
		0.843885, -0.486112, 0.227053,
		40.527191, 45.433479, 52.773575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407513, 45.803101, 52.000385>,  <39.936470, 45.773758, 52.614639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407513, 45.803101, 52.000385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606956, 45.533836, 52.218834>,  <40.726624, 45.372276, 52.349903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606956, 45.533836, 52.218834>,  <40.407513, 45.803101, 52.000385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606956, 45.533836, 52.218834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368035, -0.406018, -0.836481,
		0.784819, 0.618067, 0.045303,
		0.498607, -0.673159, 0.546120,
		40.756538, 45.331890, 52.382671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093777, 45.824699, 51.884415>,  <40.407513, 45.803101, 52.000385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093777, 45.824699, 51.884415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046066, 45.445606, 52.002785>,  <41.017441, 45.218151, 52.073807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046066, 45.445606, 52.002785>,  <41.093777, 45.824699, 51.884415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046066, 45.445606, 52.002785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390342, -0.318812, -0.863708,
		0.912912, 0.012495, 0.407966,
		-0.119273, -0.947736, 0.295925,
		41.010284, 45.161285, 52.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725197, 45.500603, 51.623363>,  <41.093777, 45.824699, 51.884415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725197, 45.500603, 51.623363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459564, 45.211426, 51.699623>,  <41.300182, 45.037922, 51.745380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459564, 45.211426, 51.699623>,  <41.725197, 45.500603, 51.623363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459564, 45.211426, 51.699623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325117, -0.508859, -0.797096,
		0.673268, -0.467355, 0.572966,
		-0.664085, -0.722940, 0.190654,
		41.260338, 44.994545, 51.756821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133492, 44.962231, 51.555431>,  <41.725197, 45.500603, 51.623363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133492, 44.962231, 51.555431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750038, 44.852734, 51.524223>,  <41.519966, 44.787037, 51.505497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750038, 44.852734, 51.524223>,  <42.133492, 44.962231, 51.555431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750038, 44.852734, 51.524223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155485, -0.273994, -0.949080,
		0.238425, -0.921951, 0.305222,
		-0.958633, -0.273742, -0.078022,
		41.462448, 44.770611, 51.500816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212067, 44.270771, 51.222931>,  <42.133492, 44.962231, 51.555431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212067, 44.270771, 51.222931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839531, 44.398865, 51.153580>,  <41.616009, 44.475719, 51.111969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839531, 44.398865, 51.153580>,  <42.212067, 44.270771, 51.222931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839531, 44.398865, 51.153580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019649, -0.431225, -0.902031,
		-0.363619, -0.843505, 0.395325,
		-0.931341, 0.320228, -0.173375,
		41.560127, 44.494934, 51.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000217, 43.814785, 50.845814>,  <42.212067, 44.270771, 51.222931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000217, 43.814785, 50.845814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714447, 44.083397, 50.767178>,  <41.542984, 44.244564, 50.719997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714447, 44.083397, 50.767178>,  <42.000217, 43.814785, 50.845814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714447, 44.083397, 50.767178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107864, -0.171902, -0.979191,
		-0.691351, -0.720761, 0.050376,
		-0.714423, 0.671531, -0.196589,
		41.500122, 44.284855, 50.708202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676357, 43.413269, 50.406708>,  <42.000217, 43.814785, 50.845814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676357, 43.413269, 50.406708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601723, 43.801094, 50.343292>,  <41.556942, 44.033791, 50.305244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601723, 43.801094, 50.343292>,  <41.676357, 43.413269, 50.406708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601723, 43.801094, 50.343292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075545, -0.146733, -0.986287,
		-0.979530, -0.196003, -0.045867,
		-0.186585, 0.969563, -0.158536,
		41.545746, 44.091965, 50.295731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051865, 43.451210, 49.996784>,  <41.676357, 43.413269, 50.406708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051865, 43.451210, 49.996784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270401, 43.778351, 49.924538>,  <41.401524, 43.974636, 49.881187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270401, 43.778351, 49.924538>,  <41.051865, 43.451210, 49.996784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270401, 43.778351, 49.924538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009505, -0.221690, -0.975071,
		-0.837506, 0.531008, -0.128893,
		0.546345, 0.817853, -0.180620,
		41.434303, 44.023708, 49.870350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912529, 43.673981, 49.288708>,  <41.051865, 43.451210, 49.996784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912529, 43.673981, 49.288708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229897, 43.913086, 49.334583>,  <41.420319, 44.056549, 49.362110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229897, 43.913086, 49.334583>,  <40.912529, 43.673981, 49.288708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229897, 43.913086, 49.334583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099099, 0.059051, -0.993324,
		-0.600549, 0.799492, -0.012386,
		0.793423, 0.597767, 0.114692,
		41.467922, 44.092415, 49.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783768, 44.169369, 48.847279>,  <40.912529, 43.673981, 49.288708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783768, 44.169369, 48.847279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177101, 44.211731, 48.906380>,  <41.413101, 44.237148, 48.941841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177101, 44.211731, 48.906380>,  <40.783768, 44.169369, 48.847279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177101, 44.211731, 48.906380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143850, 0.043659, -0.988636,
		-0.111157, 0.993417, 0.027696,
		0.983337, 0.105909, 0.147756,
		41.472103, 44.243504, 48.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933952, 44.746464, 48.473789>,  <40.783768, 44.169369, 48.847279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933952, 44.746464, 48.473789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231560, 44.484146, 48.524979>,  <41.410122, 44.326756, 48.555695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231560, 44.484146, 48.524979>,  <40.933952, 44.746464, 48.473789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231560, 44.484146, 48.524979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261297, 0.109292, -0.959051,
		0.614951, 0.746989, 0.252672,
		0.744016, -0.655792, 0.127977,
		41.454765, 44.287407, 48.563370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200638, 44.906296, 47.929806>,  <40.933952, 44.746464, 48.473789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200638, 44.906296, 47.929806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457855, 44.622131, 48.044216>,  <41.612186, 44.451633, 48.112862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457855, 44.622131, 48.044216>,  <41.200638, 44.906296, 47.929806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457855, 44.622131, 48.044216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434349, 0.030711, -0.900221,
		0.630741, 0.703118, 0.328314,
		0.643045, -0.710410, 0.286028,
		41.650768, 44.409008, 48.130024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913109, 45.188061, 47.642395>,  <41.200638, 44.906296, 47.929806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913109, 45.188061, 47.642395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937607, 44.791538, 47.688972>,  <41.952305, 44.553623, 47.716919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937607, 44.791538, 47.688972>,  <41.913109, 45.188061, 47.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937607, 44.791538, 47.688972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308415, -0.092163, -0.946777,
		0.949278, 0.093897, 0.300090,
		0.061242, -0.991307, 0.116447,
		41.955978, 44.494144, 47.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623142, 44.932167, 47.391224>,  <41.913109, 45.188061, 47.642395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623142, 44.932167, 47.391224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348663, 44.641403, 47.380405>,  <42.183975, 44.466946, 47.373913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348663, 44.641403, 47.380405>,  <42.623142, 44.932167, 47.391224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348663, 44.641403, 47.380405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300916, -0.249815, -0.920349,
		0.662257, -0.639679, 0.390162,
		-0.686197, -0.726913, -0.027048,
		42.142803, 44.423328, 47.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946808, 44.379818, 47.062103>,  <42.623142, 44.932167, 47.391224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946808, 44.379818, 47.062103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553505, 44.319290, 47.021481>,  <42.317524, 44.282974, 46.997105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553505, 44.319290, 47.021481>,  <42.946808, 44.379818, 47.062103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553505, 44.319290, 47.021481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121431, -0.128459, -0.984252,
		0.135889, -0.980103, 0.144682,
		-0.983254, -0.151318, -0.101558,
		42.258530, 44.273895, 46.991013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969223, 43.851276, 46.586414>,  <42.946808, 44.379818, 47.062103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969223, 43.851276, 46.586414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586617, 43.963890, 46.555923>,  <42.357052, 44.031456, 46.537628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586617, 43.963890, 46.555923>,  <42.969223, 43.851276, 46.586414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586617, 43.963890, 46.555923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021347, -0.193087, -0.980949,
		-0.290888, -0.939924, 0.178682,
		-0.956519, 0.281532, -0.076232,
		42.299660, 44.048347, 46.533054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632660, 43.393101, 46.115238>,  <42.969223, 43.851276, 46.586414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632660, 43.393101, 46.115238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419815, 43.731537, 46.127792>,  <42.292107, 43.934601, 46.135326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419815, 43.731537, 46.127792>,  <42.632660, 43.393101, 46.115238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419815, 43.731537, 46.127792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007190, 0.041583, -0.999109,
		-0.846644, -0.531412, -0.028210,
		-0.532112, 0.846092, 0.031385,
		42.260181, 43.985363, 46.137207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330898, 43.361561, 45.522469>,  <42.632660, 43.393101, 46.115238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330898, 43.361561, 45.522469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280693, 43.741451, 45.637203>,  <42.250572, 43.969383, 45.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280693, 43.741451, 45.637203>,  <42.330898, 43.361561, 45.522469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280693, 43.741451, 45.637203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092206, 0.276702, -0.956522,
		-0.987798, -0.146502, 0.052841,
		-0.125511, 0.949723, 0.286834,
		42.243038, 44.026367, 45.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791847, 43.663830, 45.089268>,  <42.330898, 43.361561, 45.522469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791847, 43.663830, 45.089268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011215, 43.971905, 45.219524>,  <42.142838, 44.156750, 45.297680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011215, 43.971905, 45.219524>,  <41.791847, 43.663830, 45.089268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011215, 43.971905, 45.219524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146279, 0.295060, -0.944215,
		-0.823307, 0.565463, 0.049156,
		0.548423, 0.770189, 0.325640,
		42.175743, 44.202961, 45.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544170, 44.357677, 44.765671>,  <41.791847, 43.663830, 45.089268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544170, 44.357677, 44.765671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927216, 44.401287, 44.872330>,  <42.157043, 44.427452, 44.936325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927216, 44.401287, 44.872330>,  <41.544170, 44.357677, 44.765671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927216, 44.401287, 44.872330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202841, 0.402056, -0.892864,
		-0.204553, 0.909101, 0.362897,
		0.957608, 0.109028, 0.266644,
		42.214497, 44.433994, 44.952324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681728, 45.042278, 44.583103>,  <41.544170, 44.357677, 44.765671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681728, 45.042278, 44.583103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034111, 44.855930, 44.616280>,  <42.245541, 44.744122, 44.636185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034111, 44.855930, 44.616280>,  <41.681728, 45.042278, 44.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034111, 44.855930, 44.616280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301370, 0.417246, -0.857369,
		0.364817, 0.780301, 0.507975,
		0.880957, -0.465871, 0.082941,
		42.298397, 44.716167, 44.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075443, 45.528774, 44.374382>,  <41.681728, 45.042278, 44.583103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075443, 45.528774, 44.374382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287163, 45.192944, 44.325462>,  <42.414196, 44.991447, 44.296112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287163, 45.192944, 44.325462>,  <42.075443, 45.528774, 44.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287163, 45.192944, 44.325462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140544, 0.228914, -0.963248,
		0.836712, 0.492662, 0.239162,
		0.529303, -0.839573, -0.122295,
		42.445953, 44.941071, 44.288773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568401, 45.721119, 43.823032>,  <42.075443, 45.528774, 44.374382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568401, 45.721119, 43.823032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571396, 45.322929, 43.860916>,  <42.573193, 45.084015, 43.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571396, 45.322929, 43.860916>,  <42.568401, 45.721119, 43.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571396, 45.322929, 43.860916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114141, -0.093244, -0.989079,
		0.993436, 0.018212, 0.112926,
		0.007484, -0.995477, 0.094711,
		42.573643, 45.024288, 43.889328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122440, 45.510944, 43.391483>,  <42.568401, 45.721119, 43.823032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122440, 45.510944, 43.391483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858223, 45.213367, 43.431953>,  <42.699692, 45.034821, 43.456234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858223, 45.213367, 43.431953>,  <43.122440, 45.510944, 43.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858223, 45.213367, 43.431953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037264, -0.102106, -0.994075,
		0.749861, -0.660402, 0.039724,
		-0.660545, -0.743938, 0.101175,
		42.660061, 44.990185, 43.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325089, 45.013138, 42.851429>,  <43.122440, 45.510944, 43.391483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325089, 45.013138, 42.851429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951714, 44.930107, 42.968464>,  <42.727688, 44.880287, 43.038685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951714, 44.930107, 42.968464>,  <43.325089, 45.013138, 42.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951714, 44.930107, 42.968464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270409, -0.128827, -0.954087,
		0.235742, -0.969698, 0.064121,
		-0.933437, -0.207579, 0.292586,
		42.671684, 44.867832, 43.056240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120670, 44.555805, 42.383282>,  <43.325089, 45.013138, 42.851429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120670, 44.555805, 42.383282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768967, 44.679478, 42.528233>,  <42.557945, 44.753681, 42.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768967, 44.679478, 42.528233>,  <43.120670, 44.555805, 42.383282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768967, 44.679478, 42.528233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426719, -0.173117, -0.887661,
		-0.211719, -0.935112, 0.284150,
		-0.879253, 0.309187, 0.362378,
		42.505192, 44.772232, 42.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588364, 43.926075, 42.175552>,  <43.120670, 44.555805, 42.383282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588364, 43.926075, 42.175552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395676, 44.272953, 42.226009>,  <42.280064, 44.481079, 42.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395676, 44.272953, 42.226009>,  <42.588364, 43.926075, 42.175552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395676, 44.272953, 42.226009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467226, -0.132377, -0.874172,
		-0.741382, -0.480043, 0.468947,
		-0.481718, 0.867199, 0.126146,
		42.251160, 44.533112, 42.263855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875858, 43.847797, 41.835064>,  <42.588364, 43.926075, 42.175552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875858, 43.847797, 41.835064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910881, 44.244339, 41.874172>,  <41.931896, 44.482262, 41.897636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910881, 44.244339, 41.874172>,  <41.875858, 43.847797, 41.835064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910881, 44.244339, 41.874172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429197, 0.126111, -0.894363,
		-0.898957, 0.036349, 0.436527,
		0.087560, 0.991350, 0.097767,
		41.937149, 44.541744, 41.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274921, 44.015202, 41.537861>,  <41.875858, 43.847797, 41.835064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274921, 44.015202, 41.537861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463234, 44.368031, 41.544872>,  <41.576221, 44.579727, 41.549080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463234, 44.368031, 41.544872>,  <41.274921, 44.015202, 41.537861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463234, 44.368031, 41.544872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263574, 0.159579, -0.951348,
		-0.841956, 0.443261, 0.307619,
		0.470785, 0.882074, 0.017527,
		41.604469, 44.632652, 41.550129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844616, 44.520496, 41.392220>,  <41.274921, 44.015202, 41.537861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844616, 44.520496, 41.392220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208092, 44.648125, 41.284538>,  <41.426178, 44.724701, 41.219929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208092, 44.648125, 41.284538>,  <40.844616, 44.520496, 41.392220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208092, 44.648125, 41.284538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292006, 0.024946, -0.956091,
		-0.298345, 0.947402, 0.115839,
		0.908693, 0.319071, -0.269205,
		41.480698, 44.743847, 41.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743938, 45.172222, 41.087841>,  <40.844616, 44.520496, 41.392220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743938, 45.172222, 41.087841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088615, 45.027012, 40.946022>,  <41.295422, 44.939888, 40.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088615, 45.027012, 40.946022>,  <40.743938, 45.172222, 41.087841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088615, 45.027012, 40.946022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333562, 0.121297, -0.934892,
		0.382392, 0.923852, -0.016570,
		0.861692, -0.363023, -0.354545,
		41.347122, 44.918106, 40.839657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915623, 45.652645, 40.563881>,  <40.743938, 45.172222, 41.087841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915623, 45.652645, 40.563881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167160, 45.353130, 40.480091>,  <41.318081, 45.173424, 40.429817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167160, 45.353130, 40.480091>,  <40.915623, 45.652645, 40.563881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167160, 45.353130, 40.480091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023750, 0.250781, -0.967753,
		0.777169, 0.613539, 0.139918,
		0.628843, -0.748785, -0.209470,
		41.355812, 45.128494, 40.417252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502796, 45.875668, 40.135754>,  <40.915623, 45.652645, 40.563881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502796, 45.875668, 40.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509399, 45.485909, 40.046066>,  <41.513363, 45.252052, 39.992252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509399, 45.485909, 40.046066>,  <41.502796, 45.875668, 40.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509399, 45.485909, 40.046066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137344, 0.224332, -0.964786,
		0.990386, -0.014867, 0.137531,
		0.016509, -0.974399, -0.224218,
		41.514351, 45.193588, 39.978802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110935, 45.779873, 39.659679>,  <41.502796, 45.875668, 40.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110935, 45.779873, 39.659679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871521, 45.461571, 39.622730>,  <41.727871, 45.270592, 39.600559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871521, 45.461571, 39.622730>,  <42.110935, 45.779873, 39.659679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871521, 45.461571, 39.622730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, 0.147813, -0.988034,
		0.799884, -0.587308, -0.123511,
		-0.598537, -0.795752, -0.092373,
		41.691959, 45.222847, 39.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443829, 45.336742, 39.143295>,  <42.110935, 45.779873, 39.659679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443829, 45.336742, 39.143295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054764, 45.245239, 39.159313>,  <41.821327, 45.190338, 39.168922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054764, 45.245239, 39.159313>,  <42.443829, 45.336742, 39.143295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054764, 45.245239, 39.159313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078765, 0.162752, -0.983518,
		0.218477, -0.959781, -0.176321,
		-0.972658, -0.228763, 0.040040,
		41.762966, 45.176613, 39.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340469, 44.903732, 38.649349>,  <42.443829, 45.336742, 39.143295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340469, 44.903732, 38.649349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973907, 45.036636, 38.738609>,  <41.753971, 45.116379, 38.792168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973907, 45.036636, 38.738609>,  <42.340469, 44.903732, 38.649349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973907, 45.036636, 38.738609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063646, 0.429477, -0.900832,
		-0.395154, -0.839732, -0.372429,
		-0.916407, 0.332264, 0.223155,
		41.698986, 45.136314, 38.805557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013039, 44.744133, 38.078972>,  <42.340469, 44.903732, 38.649349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013039, 44.744133, 38.078972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764290, 45.014439, 38.237274>,  <41.615040, 45.176620, 38.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764290, 45.014439, 38.237274>,  <42.013039, 44.744133, 38.078972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764290, 45.014439, 38.237274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206704, 0.345800, -0.915257,
		-0.755349, -0.650975, -0.075360,
		-0.621869, 0.675761, 0.395759,
		41.577728, 45.217167, 38.356003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447987, 44.587429, 37.722271>,  <42.013039, 44.744133, 38.078972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447987, 44.587429, 37.722271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410889, 44.961334, 37.859447>,  <41.388630, 45.185677, 37.941753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410889, 44.961334, 37.859447>,  <41.447987, 44.587429, 37.722271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410889, 44.961334, 37.859447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262916, 0.309212, -0.913927,
		-0.960351, -0.174924, 0.217089,
		-0.092742, 0.934767, 0.342943,
		41.383064, 45.241764, 37.962330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862576, 44.897583, 37.371960>,  <41.447987, 44.587429, 37.722271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862576, 44.897583, 37.371960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051605, 45.216137, 37.522923>,  <41.165024, 45.407269, 37.613499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051605, 45.216137, 37.522923>,  <40.862576, 44.897583, 37.371960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051605, 45.216137, 37.522923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147078, 0.493509, -0.857214,
		-0.868930, 0.349591, 0.350352,
		0.472576, 0.796389, 0.377408,
		41.193378, 45.455055, 37.636147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388618, 45.394272, 37.292664>,  <40.862576, 44.897583, 37.371960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388618, 45.394272, 37.292664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739555, 45.579449, 37.343178>,  <40.950119, 45.690556, 37.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739555, 45.579449, 37.343178>,  <40.388618, 45.394272, 37.292664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739555, 45.579449, 37.343178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156604, 0.525000, -0.836571,
		-0.453585, 0.714185, 0.533105,
		0.877346, 0.462942, 0.126288,
		41.002758, 45.718330, 37.381065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311207, 46.217255, 37.272793>,  <40.388618, 45.394272, 37.292664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311207, 46.217255, 37.272793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686943, 46.147346, 37.154743>,  <40.912384, 46.105400, 37.083912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686943, 46.147346, 37.154743>,  <40.311207, 46.217255, 37.272793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686943, 46.147346, 37.154743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188000, 0.457319, -0.869204,
		0.286877, 0.871960, 0.396721,
		0.939339, -0.174771, -0.295123,
		40.968746, 46.094913, 37.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395000, 46.767246, 36.885056>,  <40.311207, 46.217255, 37.272793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395000, 46.767246, 36.885056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696098, 46.526482, 36.778416>,  <40.876759, 46.382023, 36.714432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696098, 46.526482, 36.778416>,  <40.395000, 46.767246, 36.885056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696098, 46.526482, 36.778416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086050, 0.311540, -0.946329,
		0.652665, 0.735284, 0.182715,
		0.752744, -0.601913, -0.266603,
		40.921921, 46.345909, 36.698433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759151, 47.135300, 36.344795>,  <40.395000, 46.767246, 36.885056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759151, 47.135300, 36.344795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911308, 46.771179, 36.279499>,  <41.002602, 46.552708, 36.240322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911308, 46.771179, 36.279499>,  <40.759151, 47.135300, 36.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911308, 46.771179, 36.279499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045393, 0.194673, -0.979817,
		0.923709, 0.365308, 0.115374,
		0.380395, -0.910304, -0.163238,
		41.025425, 46.498089, 36.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364006, 47.236771, 35.946423>,  <40.759151, 47.135300, 36.344795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364006, 47.236771, 35.946423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270851, 46.852409, 35.886513>,  <41.214958, 46.621792, 35.850567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270851, 46.852409, 35.886513>,  <41.364006, 47.236771, 35.946423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270851, 46.852409, 35.886513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112418, 0.126373, -0.985592,
		0.965985, -0.246365, 0.078593,
		-0.232883, -0.960903, -0.149770,
		41.200985, 46.564140, 35.841583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901791, 46.939354, 35.511715>,  <41.364006, 47.236771, 35.946423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901791, 46.939354, 35.511715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607658, 46.674026, 35.456154>,  <41.431179, 46.514832, 35.422817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607658, 46.674026, 35.456154>,  <41.901791, 46.939354, 35.511715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607658, 46.674026, 35.456154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348700, -0.194572, -0.916815,
		0.581112, -0.722601, 0.374374,
		-0.735335, -0.663317, -0.138903,
		41.387058, 46.475033, 35.414482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265541, 46.368919, 35.282631>,  <41.901791, 46.939354, 35.511715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265541, 46.368919, 35.282631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892822, 46.289146, 35.161316>,  <41.669193, 46.241283, 35.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892822, 46.289146, 35.161316>,  <42.265541, 46.368919, 35.282631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892822, 46.289146, 35.161316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355858, -0.337140, -0.871609,
		0.071576, -0.920089, 0.385115,
		-0.931795, -0.199433, -0.303290,
		41.613285, 46.229317, 35.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229420, 45.668201, 35.031342>,  <42.265541, 46.368919, 35.282631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229420, 45.668201, 35.031342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954811, 45.898949, 34.854294>,  <41.790047, 46.037395, 34.748066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954811, 45.898949, 34.854294>,  <42.229420, 45.668201, 35.031342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954811, 45.898949, 34.854294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445285, -0.147676, -0.883127,
		-0.574809, -0.803380, -0.155486,
		-0.686525, 0.576865, -0.442619,
		41.748852, 46.072006, 34.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108631, 45.297382, 34.401161>,  <42.229420, 45.668201, 35.031342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108631, 45.297382, 34.401161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950737, 45.660049, 34.341644>,  <41.855999, 45.877647, 34.305935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950737, 45.660049, 34.341644>,  <42.108631, 45.297382, 34.401161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950737, 45.660049, 34.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263057, -0.043638, -0.963793,
		-0.880331, -0.419586, -0.221280,
		-0.394738, 0.906666, -0.148791,
		41.832317, 45.932049, 34.297009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772537, 45.273670, 33.767464>,  <42.108631, 45.297382, 34.401161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772537, 45.273670, 33.767464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793434, 45.668056, 33.830879>,  <41.805973, 45.904690, 33.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793434, 45.668056, 33.830879>,  <41.772537, 45.273670, 33.767464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793434, 45.668056, 33.830879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352032, 0.130384, -0.926862,
		-0.934529, 0.104236, -0.340281,
		0.052245, 0.985969, 0.158542,
		41.809109, 45.963848, 33.878441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549049, 45.463245, 33.198425>,  <41.772537, 45.273670, 33.767464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549049, 45.463245, 33.198425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750984, 45.777508, 33.341469>,  <41.872143, 45.966064, 33.427296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750984, 45.777508, 33.341469>,  <41.549049, 45.463245, 33.198425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750984, 45.777508, 33.341469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469124, 0.098050, -0.877672,
		-0.724615, 0.610840, -0.319072,
		0.504833, 0.785659, 0.357608,
		41.902435, 46.013206, 33.448750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679588, 45.944225, 32.639214>,  <41.549049, 45.463245, 33.198425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679588, 45.944225, 32.639214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952568, 46.100090, 32.886578>,  <42.116356, 46.193607, 33.034996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952568, 46.100090, 32.886578>,  <41.679588, 45.944225, 32.639214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952568, 46.100090, 32.886578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628410, 0.119329, -0.768676,
		-0.373317, 0.913195, -0.163431,
		0.682449, 0.389661, 0.618408,
		42.157303, 46.216988, 33.072102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831337, 46.570766, 32.282314>,  <41.679588, 45.944225, 32.639214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831337, 46.570766, 32.282314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154213, 46.456696, 32.489048>,  <42.347939, 46.388252, 32.613091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154213, 46.456696, 32.489048>,  <41.831337, 46.570766, 32.282314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154213, 46.456696, 32.489048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589678, 0.429592, -0.683908,
		-0.026992, 0.856810, 0.514925,
		0.807187, -0.285180, 0.516838,
		42.396370, 46.371143, 32.644100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213940, 47.152946, 32.325691>,  <41.831337, 46.570766, 32.282314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213940, 47.152946, 32.325691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490837, 46.890663, 32.446259>,  <42.656975, 46.733295, 32.518600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490837, 46.890663, 32.446259>,  <42.213940, 47.152946, 32.325691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490837, 46.890663, 32.446259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695986, 0.496158, -0.519067,
		0.190804, 0.569103, 0.799823,
		0.692241, -0.655705, 0.301419,
		42.698509, 46.693951, 32.536686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.220314, 44.774853, 31.497145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.885773, 44.800457, 31.714920>,  <44.685047, 44.815819, 31.845585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.885773, 44.800457, 31.714920>,  <45.220314, 44.774853, 31.497145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885773, 44.800457, 31.714920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531614, -0.147677, 0.834013,
		0.133788, 0.986962, 0.089480,
		-0.836353, 0.064012, 0.544440,
		44.634865, 44.819660, 31.878252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333950, 45.210632, 32.118706>,  <45.220314, 44.774853, 31.497145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333950, 45.210632, 32.118706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.005661, 45.003384, 32.215004>,  <44.808685, 44.879032, 32.272781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.005661, 45.003384, 32.215004>,  <45.333950, 45.210632, 32.118706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005661, 45.003384, 32.215004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359863, -0.141537, 0.922207,
		-0.443744, 0.843513, 0.302617,
		-0.820725, -0.518125, 0.240742,
		44.759445, 44.847946, 32.287228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190098, 45.411682, 32.788177>,  <45.333950, 45.210632, 32.118706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190098, 45.411682, 32.788177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.959068, 45.086937, 32.754036>,  <44.820450, 44.892090, 32.733551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.959068, 45.086937, 32.754036>,  <45.190098, 45.411682, 32.788177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959068, 45.086937, 32.754036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184287, -0.231532, 0.955213,
		-0.795263, 0.535979, 0.283343,
		-0.577577, -0.811862, -0.085355,
		44.785797, 44.843380, 32.728428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774757, 45.405106, 33.382439>,  <45.190098, 45.411682, 32.788177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774757, 45.405106, 33.382439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.788795, 45.033615, 33.234802>,  <44.797218, 44.810719, 33.146221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.788795, 45.033615, 33.234802>,  <44.774757, 45.405106, 33.382439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788795, 45.033615, 33.234802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092666, -0.364708, 0.926500,
		-0.995079, -0.066719, 0.073261,
		0.035096, -0.928729, -0.369095,
		44.799324, 44.754997, 33.124073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315063, 44.999977, 33.765949>,  <44.774757, 45.405106, 33.382439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315063, 44.999977, 33.765949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.597328, 44.754486, 33.624310>,  <44.766685, 44.607193, 33.539326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.597328, 44.754486, 33.624310>,  <44.315063, 44.999977, 33.765949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597328, 44.754486, 33.624310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131489, -0.377642, 0.916568,
		-0.696245, -0.693344, -0.185788,
		0.705658, -0.613727, -0.354099,
		44.809025, 44.570370, 33.518082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085438, 44.347794, 33.969055>,  <44.315063, 44.999977, 33.765949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085438, 44.347794, 33.969055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.476135, 44.281792, 33.914284>,  <44.710552, 44.242191, 33.881420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.476135, 44.281792, 33.914284>,  <44.085438, 44.347794, 33.969055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476135, 44.281792, 33.914284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090996, -0.259250, 0.961514,
		-0.194148, -0.951611, -0.238206,
		0.976743, -0.165000, -0.136926,
		44.769157, 44.232292, 33.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231411, 43.659393, 34.123344>,  <44.085438, 44.347794, 33.969055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231411, 43.659393, 34.123344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.569824, 43.863766, 34.184231>,  <44.772873, 43.986389, 34.220760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.569824, 43.863766, 34.184231>,  <44.231411, 43.659393, 34.123344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569824, 43.863766, 34.184231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052107, -0.363392, 0.930178,
		0.530574, -0.779032, -0.334066,
		0.846035, 0.510936, 0.152214,
		44.823635, 44.017048, 34.229897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503670, 43.353180, 34.676376>,  <44.231411, 43.659393, 34.123344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503670, 43.353180, 34.676376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.739876, 43.675533, 34.659233>,  <44.881599, 43.868946, 34.648945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.739876, 43.675533, 34.659233>,  <44.503670, 43.353180, 34.676376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739876, 43.675533, 34.659233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145759, -0.054268, 0.987831,
		0.793753, -0.589579, -0.149511,
		0.590518, 0.805886, -0.042861,
		44.917030, 43.917297, 34.646374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070786, 43.109261, 35.039215>,  <44.503670, 43.353180, 34.676376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070786, 43.109261, 35.039215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.075760, 43.508270, 35.066887>,  <45.078747, 43.747677, 35.083488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.075760, 43.508270, 35.066887>,  <45.070786, 43.109261, 35.039215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075760, 43.508270, 35.066887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150174, -0.070260, 0.986160,
		0.988581, -0.001877, -0.150676,
		0.012438, 0.997527, 0.069175,
		45.079491, 43.807529, 35.087639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593014, 43.159882, 35.440884>,  <45.070786, 43.109261, 35.039215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593014, 43.159882, 35.440884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.384468, 43.498779, 35.481586>,  <45.259338, 43.702118, 35.506008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.384468, 43.498779, 35.481586>,  <45.593014, 43.159882, 35.440884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384468, 43.498779, 35.481586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161156, -0.019337, 0.986740,
		0.837977, 0.530851, -0.126457,
		-0.521366, 0.847245, 0.101754,
		45.228058, 43.752953, 35.512112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966457, 43.626186, 35.968544>,  <45.593014, 43.159882, 35.440884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966457, 43.626186, 35.968544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.596519, 43.773888, 35.932072>,  <45.374557, 43.862507, 35.910187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.596519, 43.773888, 35.932072>,  <45.966457, 43.626186, 35.968544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596519, 43.773888, 35.932072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008655, 0.219238, 0.975633,
		0.380246, 0.903099, -0.199565,
		-0.924845, 0.369253, -0.091180,
		45.319065, 43.884663, 35.904716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947559, 44.288471, 36.314098>,  <45.966457, 43.626186, 35.968544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947559, 44.288471, 36.314098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.560898, 44.186798, 36.301643>,  <45.328899, 44.125793, 36.294170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.560898, 44.186798, 36.301643>,  <45.947559, 44.288471, 36.314098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560898, 44.186798, 36.301643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114181, 0.318953, 0.940868,
		-0.229223, 0.913049, -0.337340,
		-0.966654, -0.254186, -0.031141,
		45.270901, 44.110542, 36.292301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535500, 44.850033, 36.591949>,  <45.947559, 44.288471, 36.314098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535500, 44.850033, 36.591949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.301590, 44.527924, 36.631081>,  <45.161243, 44.334656, 36.654560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.301590, 44.527924, 36.631081>,  <45.535500, 44.850033, 36.591949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301590, 44.527924, 36.631081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169821, 0.239449, 0.955942,
		-0.793223, 0.542396, -0.276776,
		-0.584772, -0.805277, 0.097826,
		45.126160, 44.286339, 36.660427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065014, 45.043488, 37.060345>,  <45.535500, 44.850033, 36.591949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065014, 45.043488, 37.060345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.049232, 44.644093, 37.075619>,  <45.039764, 44.404453, 37.084782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.049232, 44.644093, 37.075619>,  <45.065014, 45.043488, 37.060345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049232, 44.644093, 37.075619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022991, 0.037294, 0.999040,
		-0.998957, 0.040294, 0.021485,
		-0.039454, -0.998492, 0.038181,
		45.037395, 44.344543, 37.087074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517994, 44.895329, 37.462875>,  <45.065014, 45.043488, 37.060345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517994, 44.895329, 37.462875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.747696, 44.567902, 37.457596>,  <44.885517, 44.371445, 37.454430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.747696, 44.567902, 37.457596>,  <44.517994, 44.895329, 37.462875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747696, 44.567902, 37.457596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032809, 0.006901, 0.999438,
		-0.818020, -0.574363, 0.030820,
		0.574253, -0.818571, -0.013199,
		44.919971, 44.322330, 37.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223709, 44.474220, 37.905613>,  <44.517994, 44.895329, 37.462875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223709, 44.474220, 37.905613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.597725, 44.335125, 37.877953>,  <44.822132, 44.251667, 37.861355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.597725, 44.335125, 37.877953>,  <44.223709, 44.474220, 37.905613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597725, 44.335125, 37.877953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032540, -0.110060, 0.993392,
		-0.353055, -0.931108, -0.091595,
		0.935036, -0.347741, -0.069156,
		44.878235, 44.230801, 37.857204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234734, 43.956635, 38.367676>,  <44.223709, 44.474220, 37.905613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234734, 43.956635, 38.367676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.616798, 44.055832, 38.302979>,  <44.846039, 44.115349, 38.264160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.616798, 44.055832, 38.302979>,  <44.234734, 43.956635, 38.367676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616798, 44.055832, 38.302979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204330, -0.156804, 0.966262,
		0.214266, -0.955987, -0.200446,
		0.955165, 0.247994, -0.161739,
		44.903347, 44.130230, 38.254456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606506, 43.511932, 38.777351>,  <44.234734, 43.956635, 38.367676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606506, 43.511932, 38.777351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.861824, 43.807861, 38.692268>,  <45.015015, 43.985420, 38.641216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.861824, 43.807861, 38.692268>,  <44.606506, 43.511932, 38.777351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861824, 43.807861, 38.692268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168005, 0.135781, 0.976390,
		0.751239, -0.658957, -0.037626,
		0.638290, 0.739824, -0.212712,
		45.053310, 44.029808, 38.628456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182137, 43.355865, 39.114609>,  <44.606506, 43.511932, 38.777351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182137, 43.355865, 39.114609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.179108, 43.754238, 39.078690>,  <45.177288, 43.993263, 39.057140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.179108, 43.754238, 39.078690>,  <45.182137, 43.355865, 39.114609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179108, 43.754238, 39.078690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191745, 0.089577, 0.977348,
		0.981415, -0.009814, -0.191644,
		-0.007575, 0.995931, -0.089795,
		45.176834, 44.053017, 39.051750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665096, 43.573811, 39.511078>,  <45.182137, 43.355865, 39.114609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665096, 43.573811, 39.511078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484032, 43.927113, 39.462143>,  <45.375393, 44.139091, 39.432781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484032, 43.927113, 39.462143>,  <45.665096, 43.573811, 39.511078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484032, 43.927113, 39.462143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268316, 0.265764, 0.925946,
		0.850357, 0.386311, -0.357291,
		-0.452658, 0.883251, -0.122342,
		45.348236, 44.192089, 39.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098660, 43.934418, 39.946312>,  <45.665096, 43.573811, 39.511078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098660, 43.934418, 39.946312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.779907, 44.174950, 39.923050>,  <45.588654, 44.319267, 39.909092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.779907, 44.174950, 39.923050>,  <46.098660, 43.934418, 39.946312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779907, 44.174950, 39.923050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097626, 0.223177, 0.969877,
		0.596193, 0.767201, -0.236551,
		-0.796883, 0.601327, -0.058158,
		45.540844, 44.355347, 39.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336765, 44.539307, 40.279991>,  <46.098660, 43.934418, 39.946312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336765, 44.539307, 40.279991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.938812, 44.499165, 40.284775>,  <45.700043, 44.475079, 40.287647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.938812, 44.499165, 40.284775>,  <46.336765, 44.539307, 40.279991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938812, 44.499165, 40.284775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008823, 0.031672, 0.999459,
		-0.100678, 0.994448, -0.030624,
		-0.994880, -0.100354, 0.011963,
		45.640347, 44.469059, 40.288364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019836, 45.231670, 40.681133>,  <46.336765, 44.539307, 40.279991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019836, 45.231670, 40.681133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751350, 44.936249, 40.706440>,  <45.590260, 44.758995, 40.721622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751350, 44.936249, 40.706440>,  <46.019836, 45.231670, 40.681133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751350, 44.936249, 40.706440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140568, 0.210620, 0.967409,
		-0.727813, 0.640446, -0.245189,
		-0.671215, -0.738558, 0.063266,
		45.549988, 44.714680, 40.725418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657001, 45.375290, 41.283005>,  <46.019836, 45.231670, 40.681133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657001, 45.375290, 41.283005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.498260, 45.015656, 41.209087>,  <45.403015, 44.799873, 41.164738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.498260, 45.015656, 41.209087>,  <45.657001, 45.375290, 41.283005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498260, 45.015656, 41.209087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328365, -0.048936, 0.943283,
		-0.857136, 0.435027, -0.275808,
		-0.396856, -0.899087, -0.184792,
		45.379204, 44.745930, 41.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043766, 45.384079, 41.563576>,  <45.657001, 45.375290, 41.283005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043766, 45.384079, 41.563576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.109131, 44.993446, 41.507595>,  <45.148350, 44.759068, 41.474007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.109131, 44.993446, 41.507595>,  <45.043766, 45.384079, 41.563576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109131, 44.993446, 41.507595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310586, -0.185575, 0.932254,
		-0.936393, -0.108874, -0.333638,
		0.163413, -0.976580, -0.139956,
		45.158154, 44.700474, 41.465607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357075, 45.057667, 41.665180>,  <45.043766, 45.384079, 41.563576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357075, 45.057667, 41.665180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.695259, 44.860378, 41.747082>,  <44.898170, 44.742004, 41.796223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.695259, 44.860378, 41.747082>,  <44.357075, 45.057667, 41.665180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695259, 44.860378, 41.747082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281179, -0.085173, 0.955868,
		-0.454020, -0.865721, -0.210695,
		0.845461, -0.493227, 0.204752,
		44.948898, 44.712410, 41.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138752, 44.407867, 41.910038>,  <44.357075, 45.057667, 41.665180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138752, 44.407867, 41.910038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.499512, 44.477039, 42.068367>,  <44.715965, 44.518543, 42.163364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.499512, 44.477039, 42.068367>,  <44.138752, 44.407867, 41.910038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499512, 44.477039, 42.068367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387847, -0.079179, 0.918317,
		0.190148, -0.981746, -0.004339,
		0.901897, 0.172934, 0.395823,
		44.770081, 44.528919, 42.187115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135471, 43.886082, 42.496258>,  <44.138752, 44.407867, 41.910038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135471, 43.886082, 42.496258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.456093, 44.116566, 42.560123>,  <44.648464, 44.254856, 42.598442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.456093, 44.116566, 42.560123>,  <44.135471, 43.886082, 42.496258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456093, 44.116566, 42.560123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090389, -0.147191, 0.984969,
		0.591055, -0.803935, -0.065898,
		0.801551, 0.576214, 0.159665,
		44.696560, 44.289429, 42.608025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539722, 43.469582, 42.966915>,  <44.135471, 43.886082, 42.496258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539722, 43.469582, 42.966915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.647850, 43.851944, 43.012833>,  <44.712727, 44.081360, 43.040382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.647850, 43.851944, 43.012833>,  <44.539722, 43.469582, 42.966915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647850, 43.851944, 43.012833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144188, -0.158083, 0.976842,
		0.951912, -0.247511, -0.180563,
		0.270323, 0.955902, 0.114793,
		44.728947, 44.138714, 43.047272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138439, 43.415394, 43.401779>,  <44.539722, 43.469582, 42.966915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138439, 43.415394, 43.401779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.028664, 43.799274, 43.425995>,  <44.962799, 44.029602, 43.440525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.028664, 43.799274, 43.425995>,  <45.138439, 43.415394, 43.401779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028664, 43.799274, 43.425995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104998, -0.032675, 0.993935,
		0.955856, 0.279128, -0.091799,
		-0.274436, 0.959698, 0.060540,
		44.946335, 44.087185, 43.444157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689888, 43.804501, 43.731319>,  <45.138439, 43.415394, 43.401779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689888, 43.804501, 43.731319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.358185, 44.019600, 43.792198>,  <45.159164, 44.148659, 43.828728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.358185, 44.019600, 43.792198>,  <45.689888, 43.804501, 43.731319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358185, 44.019600, 43.792198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166530, -0.022204, 0.985786,
		0.533486, 0.842812, -0.071138,
		-0.829253, 0.537749, 0.152199,
		45.109409, 44.180923, 43.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940247, 44.263145, 44.259262>,  <45.689888, 43.804501, 43.731319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940247, 44.263145, 44.259262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.540726, 44.282299, 44.263321>,  <45.301014, 44.293793, 44.265759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.540726, 44.282299, 44.263321>,  <45.940247, 44.263145, 44.259262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540726, 44.282299, 44.263321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016114, 0.125831, 0.991921,
		0.046220, 0.990895, -0.126452,
		-0.998801, 0.047884, 0.010151,
		45.241085, 44.296665, 44.266365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640495, 44.916405, 44.480381>,  <45.940247, 44.263145, 44.259262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640495, 44.916405, 44.480381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.382561, 44.626854, 44.578522>,  <45.227802, 44.453125, 44.637405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.382561, 44.626854, 44.578522>,  <45.640495, 44.916405, 44.480381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382561, 44.626854, 44.578522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131412, 0.211221, 0.968564,
		-0.752942, 0.656804, -0.041077,
		-0.644833, -0.723875, 0.245349,
		45.189110, 44.409691, 44.652126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493279, 45.181427, 45.112598>,  <45.640495, 44.916405, 44.480381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493279, 45.181427, 45.112598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.285515, 44.839806, 45.101212>,  <45.160854, 44.634834, 45.094379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.285515, 44.839806, 45.101212>,  <45.493279, 45.181427, 45.112598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285515, 44.839806, 45.101212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147139, 0.056571, 0.987497,
		-0.841760, 0.517108, -0.155048,
		-0.519414, -0.854049, -0.028468,
		45.129692, 44.583591, 45.092670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935062, 45.374313, 45.501175>,  <45.493279, 45.181427, 45.112598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935062, 45.374313, 45.501175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.966522, 44.975643, 45.509659>,  <44.985397, 44.736443, 45.514748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.966522, 44.975643, 45.509659>,  <44.935062, 45.374313, 45.501175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966522, 44.975643, 45.509659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028850, 0.023543, 0.999306,
		-0.996485, -0.077984, 0.030605,
		0.078651, -0.996676, 0.021211,
		44.990116, 44.676640, 45.516022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426624, 45.111469, 45.968060>,  <44.935062, 45.374313, 45.501175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426624, 45.111469, 45.968060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.723335, 44.844353, 45.943340>,  <44.901360, 44.684082, 45.928509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.723335, 44.844353, 45.943340>,  <44.426624, 45.111469, 45.968060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723335, 44.844353, 45.943340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049554, -0.146470, 0.987973,
		-0.668816, -0.729791, -0.141740,
		0.741775, -0.667796, -0.061797,
		44.945869, 44.644012, 45.924801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212902, 44.624935, 46.406712>,  <44.426624, 45.111469, 45.968060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212902, 44.624935, 46.406712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.607307, 44.571831, 46.366409>,  <44.843952, 44.539967, 46.342228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.607307, 44.571831, 46.366409>,  <44.212902, 44.624935, 46.406712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607307, 44.571831, 46.366409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090967, -0.077841, 0.992807,
		-0.139655, -0.988086, -0.064675,
		0.986013, -0.132767, -0.100754,
		44.903111, 44.532001, 46.336182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381477, 44.155239, 46.852486>,  <44.212902, 44.624935, 46.406712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381477, 44.155239, 46.852486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.750526, 44.296207, 46.789791>,  <44.971958, 44.380787, 46.752174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.750526, 44.296207, 46.789791>,  <44.381477, 44.155239, 46.852486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750526, 44.296207, 46.789791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192243, -0.067888, 0.978996,
		0.334376, -0.933377, -0.130385,
		0.922624, 0.352418, -0.156735,
		45.027313, 44.401932, 46.742771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888775, 43.669540, 47.158520>,  <44.381477, 44.155239, 46.852486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888775, 43.669540, 47.158520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.070557, 44.025562, 47.144234>,  <45.179626, 44.239174, 47.135662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.070557, 44.025562, 47.144234>,  <44.888775, 43.669540, 47.158520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070557, 44.025562, 47.144234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189762, -0.057560, 0.980141,
		0.870324, -0.452204, -0.195057,
		0.454451, 0.890055, -0.035715,
		45.206894, 44.292580, 47.133518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411148, 43.622845, 47.667740>,  <44.888775, 43.669540, 47.158520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411148, 43.622845, 47.667740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.360771, 44.015854, 47.612919>,  <45.330547, 44.251659, 47.580029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.360771, 44.015854, 47.612919>,  <45.411148, 43.622845, 47.667740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360771, 44.015854, 47.612919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191027, 0.159581, 0.968526,
		0.973472, 0.095796, -0.207787,
		-0.125940, 0.982526, -0.137048,
		45.322990, 44.310612, 47.571804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997864, 43.969952, 48.051407>,  <45.411148, 43.622845, 47.667740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997864, 43.969952, 48.051407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.743233, 44.275616, 48.009773>,  <45.590454, 44.459015, 47.984795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.743233, 44.275616, 48.009773>,  <45.997864, 43.969952, 48.051407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743233, 44.275616, 48.009773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207342, 0.299569, 0.931272,
		0.742816, 0.571248, -0.349141,
		-0.636579, 0.764156, -0.104081,
		45.552258, 44.504864, 47.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377327, 44.584579, 48.252396>,  <45.997864, 43.969952, 48.051407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377327, 44.584579, 48.252396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.988693, 44.676594, 48.274681>,  <45.755512, 44.731804, 48.288052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.988693, 44.676594, 48.274681>,  <46.377327, 44.584579, 48.252396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988693, 44.676594, 48.274681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131431, 0.328611, 0.935275,
		0.196841, 0.916023, -0.349508,
		-0.971586, 0.230037, 0.055709,
		45.697216, 44.745605, 48.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407154, 45.232460, 48.597885>,  <46.377327, 44.584579, 48.252396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407154, 45.232460, 48.597885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.049255, 45.055763, 48.624084>,  <45.834515, 44.949745, 48.639805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.049255, 45.055763, 48.624084>,  <46.407154, 45.232460, 48.597885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049255, 45.055763, 48.624084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098750, 0.338758, 0.935677,
		-0.435520, 0.830726, -0.346725,
		-0.894747, -0.441745, 0.065502,
		45.780830, 44.923241, 48.643734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031315, 45.721550, 48.924961>,  <46.407154, 45.232460, 48.597885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031315, 45.721550, 48.924961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.804482, 45.398979, 48.991997>,  <45.668381, 45.205437, 49.032219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.804482, 45.398979, 48.991997>,  <46.031315, 45.721550, 48.924961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804482, 45.398979, 48.991997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078804, 0.255660, 0.963550,
		-0.819880, 0.533209, -0.208532,
		-0.567086, -0.806428, 0.167592,
		45.634357, 45.157051, 49.042274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393581, 45.946529, 49.367008>,  <46.031315, 45.721550, 48.924961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393581, 45.946529, 49.367008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.507278, 45.567532, 49.425613>,  <45.575497, 45.340134, 49.460777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.507278, 45.567532, 49.425613>,  <45.393581, 45.946529, 49.367008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507278, 45.567532, 49.425613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020382, 0.158749, 0.987109,
		-0.958536, -0.277591, 0.064435,
		0.284242, -0.947492, 0.146508,
		45.592552, 45.283283, 49.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979134, 45.771355, 49.865334>,  <45.393581, 45.946529, 49.367008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979134, 45.771355, 49.865334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.272110, 45.499073, 49.860008>,  <45.447895, 45.335705, 49.856815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.272110, 45.499073, 49.860008>,  <44.979134, 45.771355, 49.865334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272110, 45.499073, 49.860008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098327, 0.086415, 0.991395,
		-0.673693, -0.727447, 0.130225,
		0.732441, -0.680701, -0.013311,
		45.491840, 45.294865, 49.856014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923866, 45.291004, 50.412537>,  <44.979134, 45.771355, 49.865334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923866, 45.291004, 50.412537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310455, 45.223774, 50.334896>,  <45.542408, 45.183437, 50.288311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310455, 45.223774, 50.334896>,  <44.923866, 45.291004, 50.412537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310455, 45.223774, 50.334896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197372, 0.002797, 0.980325,
		-0.164227, -0.985770, 0.035876,
		0.966475, -0.168077, -0.194104,
		45.600399, 45.173351, 50.276665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138294, 44.882431, 50.875423>,  <44.923866, 45.291004, 50.412537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138294, 44.882431, 50.875423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.482079, 45.035343, 50.739666>,  <45.688351, 45.127090, 50.658211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.482079, 45.035343, 50.739666>,  <45.138294, 44.882431, 50.875423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482079, 45.035343, 50.739666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352777, 0.036947, 0.934978,
		0.369963, -0.923308, -0.103105,
		0.859462, 0.382280, -0.339391,
		45.739918, 45.150028, 50.637848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613140, 44.627880, 51.350090>,  <45.138294, 44.882431, 50.875423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613140, 44.627880, 51.350090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.775475, 44.945663, 51.169361>,  <45.872875, 45.136333, 51.060925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.775475, 44.945663, 51.169361>,  <45.613140, 44.627880, 51.350090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775475, 44.945663, 51.169361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414412, 0.280664, 0.865732,
		0.814594, -0.538581, -0.215329,
		0.405831, 0.794455, -0.451822,
		45.897224, 45.183998, 51.033813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346474, 44.760292, 51.740818>,  <45.613140, 44.627880, 51.350090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346474, 44.760292, 51.740818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.258392, 45.095306, 51.540802>,  <46.205544, 45.296314, 51.420792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.258392, 45.095306, 51.540802>,  <46.346474, 44.760292, 51.740818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258392, 45.095306, 51.540802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593738, 0.521806, 0.612531,
		0.773942, -0.162011, -0.612182,
		-0.220203, 0.837539, -0.500039,
		46.192333, 45.346569, 51.390789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940861, 45.129196, 51.827049>,  <46.346474, 44.760292, 51.740818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940861, 45.129196, 51.827049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.672218, 45.400021, 51.706688>,  <46.511032, 45.562515, 51.634472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.672218, 45.400021, 51.706688>,  <46.940861, 45.129196, 51.827049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672218, 45.400021, 51.706688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469411, 0.703048, 0.534207,
		0.573239, 0.217527, -0.789987,
		-0.671603, 0.677056, -0.300905,
		46.470737, 45.603138, 51.616417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290806, 45.742107, 51.590519>,  <46.940861, 45.129196, 51.827049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290806, 45.742107, 51.590519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.921478, 45.871780, 51.672874>,  <46.699883, 45.949585, 51.722286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.921478, 45.871780, 51.672874>,  <47.290806, 45.742107, 51.590519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921478, 45.871780, 51.672874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384024, 0.782834, 0.489589,
		-0.002458, 0.531111, -0.847298,
		-0.923320, 0.324179, 0.205884,
		46.644482, 45.969032, 51.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210690, 46.533142, 51.433197>,  <47.290806, 45.742107, 51.590519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210690, 46.533142, 51.433197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.920670, 46.443886, 51.693817>,  <46.746658, 46.390331, 51.850189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.920670, 46.443886, 51.693817>,  <47.210690, 46.533142, 51.433197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920670, 46.443886, 51.693817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351110, 0.694113, 0.628433,
		-0.592476, 0.684409, -0.424918,
		-0.725047, -0.223139, 0.651549,
		46.703156, 46.376945, 51.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907341, 47.169003, 51.676888>,  <47.210690, 46.533142, 51.433197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907341, 47.169003, 51.676888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.777412, 46.903244, 51.946129>,  <46.699455, 46.743790, 52.107674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.777412, 46.903244, 51.946129>,  <46.907341, 47.169003, 51.676888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777412, 46.903244, 51.946129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128044, 0.674254, 0.727315,
		-0.937068, 0.322434, -0.133939,
		-0.324820, -0.664393, 0.673107,
		46.679966, 46.703926, 52.148060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373711, 47.486115, 52.177361>,  <46.907341, 47.169003, 51.676888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373711, 47.486115, 52.177361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.550743, 47.189163, 52.378555>,  <46.656963, 47.010990, 52.499271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.550743, 47.189163, 52.378555>,  <46.373711, 47.486115, 52.177361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550743, 47.189163, 52.378555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046532, 0.579166, 0.813881,
		-0.895522, -0.336801, 0.290871,
		0.442579, -0.742382, 0.502984,
		46.683517, 46.966450, 52.529449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079994, 47.481339, 52.874420>,  <46.373711, 47.486115, 52.177361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079994, 47.481339, 52.874420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.419563, 47.275986, 52.924660>,  <46.623302, 47.152775, 52.954803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.419563, 47.275986, 52.924660>,  <46.079994, 47.481339, 52.874420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419563, 47.275986, 52.924660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092543, 0.378358, 0.921022,
		-0.520357, -0.770250, 0.368705,
		0.848920, -0.513381, 0.125600,
		46.674240, 47.121971, 52.962341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045364, 47.289783, 53.586452>,  <46.079994, 47.481339, 52.874420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045364, 47.289783, 53.586452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.422371, 47.270470, 53.454185>,  <46.648575, 47.258881, 53.374825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.422371, 47.270470, 53.454185>,  <46.045364, 47.289783, 53.586452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422371, 47.270470, 53.454185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326666, 0.341657, 0.881226,
		0.070428, -0.938584, 0.337787,
		0.942512, -0.048281, -0.330666,
		46.705124, 47.255985, 53.354984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355934, 46.878712, 54.105309>,  <46.045364, 47.289783, 53.586452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355934, 46.878712, 54.105309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.660439, 47.078331, 53.939690>,  <46.843140, 47.198105, 53.840317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.660439, 47.078331, 53.939690>,  <46.355934, 46.878712, 54.105309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660439, 47.078331, 53.939690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357389, 0.209887, 0.910066,
		0.541073, -0.840771, -0.018578,
		0.761258, 0.499052, -0.414046,
		46.888817, 47.228046, 53.815475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882778, 46.889595, 54.599609>,  <46.355934, 46.878712, 54.105309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882778, 46.889595, 54.599609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.038666, 47.146881, 54.335976>,  <47.132198, 47.301254, 54.177795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.038666, 47.146881, 54.335976>,  <46.882778, 46.889595, 54.599609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038666, 47.146881, 54.335976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489282, 0.461692, 0.739894,
		0.780205, -0.610831, -0.134782,
		0.389723, 0.643215, -0.659083,
		47.155582, 47.339848, 54.138252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573879, 46.847782, 54.741188>,  <46.882778, 46.889595, 54.599609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573879, 46.847782, 54.741188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.472687, 47.199181, 54.579079>,  <47.411972, 47.410019, 54.481815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.472687, 47.199181, 54.579079>,  <47.573879, 46.847782, 54.741188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.472687, 47.199181, 54.579079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487822, 0.477575, 0.730721,
		0.835482, -0.012840, -0.549367,
		-0.252981, 0.878497, -0.405269,
		47.396793, 47.462730, 54.457497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.175781, 47.292229, 54.778137>,  <47.573879, 46.847782, 54.741188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.175781, 47.292229, 54.778137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.895439, 47.568390, 54.706413>,  <47.727234, 47.734085, 54.663380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.895439, 47.568390, 54.706413>,  <48.175781, 47.292229, 54.778137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.895439, 47.568390, 54.706413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412022, 0.597026, 0.688329,
		0.582276, 0.408537, -0.702888,
		-0.700851, 0.690403, -0.179308,
		47.685184, 47.775513, 54.652622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.524082, 47.840195, 54.737770>,  <48.175781, 47.292229, 54.778137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.524082, 47.840195, 54.737770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.157501, 47.983330, 54.809395>,  <47.937553, 48.069210, 54.852371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.157501, 47.983330, 54.809395>,  <48.524082, 47.840195, 54.737770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.157501, 47.983330, 54.809395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380530, 0.641039, 0.666533,
		0.123722, 0.678987, -0.723650,
		-0.916455, 0.357836, 0.179064,
		47.882565, 48.090679, 54.863113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.644428, 48.631725, 54.762516>,  <48.524082, 47.840195, 54.737770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.644428, 48.631725, 54.762516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.306465, 48.524582, 54.947723>,  <48.103687, 48.460297, 55.058849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.306465, 48.524582, 54.947723>,  <48.644428, 48.631725, 54.762516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.306465, 48.524582, 54.947723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174067, 0.680813, 0.711474,
		-0.505803, 0.681724, -0.528597,
		-0.844905, -0.267855, 0.463023,
		48.052994, 48.444225, 55.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.292614, 49.274254, 54.979271>,  <48.644428, 48.631725, 54.762516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.292614, 49.274254, 54.979271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.119240, 49.005821, 55.219864>,  <48.015217, 48.844761, 55.364220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.119240, 49.005821, 55.219864>,  <48.292614, 49.274254, 54.979271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.119240, 49.005821, 55.219864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050049, 0.684333, 0.727450,
		-0.899793, 0.285200, -0.330202,
		-0.433437, -0.671081, 0.601484,
		47.989208, 48.804497, 55.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<47.444080, 47.851723, 55.914364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.583450, 48.201103, 55.778316>,  <47.667072, 48.410732, 55.696690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.583450, 48.201103, 55.778316>,  <47.444080, 47.851723, 55.914364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583450, 48.201103, 55.778316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243214, -0.266178, -0.932736,
		-0.905232, 0.407711, 0.119692,
		0.348427, 0.873454, -0.340114,
		47.687977, 48.463139, 55.676281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889324, 48.130547, 55.687424>,  <47.444080, 47.851723, 55.914364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889324, 48.130547, 55.687424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.227654, 48.227554, 55.497368>,  <47.430653, 48.285759, 55.383335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.227654, 48.227554, 55.497368>,  <46.889324, 48.130547, 55.687424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227654, 48.227554, 55.497368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402677, -0.293941, -0.866862,
		-0.349895, 0.924545, -0.150966,
		0.845828, 0.242520, -0.475141,
		47.481403, 48.300312, 55.354824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680500, 48.505333, 55.119076>,  <46.889324, 48.130547, 55.687424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680500, 48.505333, 55.119076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.058701, 48.415314, 55.024948>,  <47.285622, 48.361301, 54.968472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.058701, 48.415314, 55.024948>,  <46.680500, 48.505333, 55.119076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058701, 48.415314, 55.024948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285955, -0.228233, -0.930666,
		0.155737, 0.947239, -0.280149,
		0.945503, -0.225049, -0.235324,
		47.342350, 48.347797, 54.954350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719158, 48.634235, 54.455326>,  <46.680500, 48.505333, 55.119076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719158, 48.634235, 54.455326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.025497, 48.384438, 54.516632>,  <47.209301, 48.234558, 54.553413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.025497, 48.384438, 54.516632>,  <46.719158, 48.634235, 54.455326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025497, 48.384438, 54.516632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226397, -0.484952, -0.844728,
		0.601851, 0.612234, -0.512782,
		0.765846, -0.624492, 0.153261,
		47.255253, 48.197090, 54.562611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138958, 48.599766, 53.857563>,  <46.719158, 48.634235, 54.455326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138958, 48.599766, 53.857563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.214912, 48.250130, 54.036407>,  <47.260487, 48.040348, 54.143715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.214912, 48.250130, 54.036407>,  <47.138958, 48.599766, 53.857563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214912, 48.250130, 54.036407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258536, -0.483839, -0.836098,
		0.947155, 0.043169, -0.317859,
		0.189886, -0.874092, 0.447109,
		47.271877, 47.987904, 54.170540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594727, 48.240231, 53.375835>,  <47.138958, 48.599766, 53.857563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594727, 48.240231, 53.375835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.432564, 47.962349, 53.613503>,  <47.335266, 47.795620, 53.756104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.432564, 47.962349, 53.613503>,  <47.594727, 48.240231, 53.375835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432564, 47.962349, 53.613503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154188, -0.588698, -0.793512,
		0.901038, -0.413311, 0.131549,
		-0.405410, -0.694701, 0.594166,
		47.310940, 47.753941, 53.791752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912502, 47.693829, 53.157051>,  <47.594727, 48.240231, 53.375835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912502, 47.693829, 53.157051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.605858, 47.543602, 53.365383>,  <47.421871, 47.453465, 53.490383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.605858, 47.543602, 53.365383>,  <47.912502, 47.693829, 53.157051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.605858, 47.543602, 53.365383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149049, -0.684882, -0.713247,
		0.624577, -0.624410, 0.469058,
		-0.766608, -0.375565, 0.520829,
		47.375877, 47.430931, 53.521633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.963696, 47.003155, 53.032791>,  <47.912502, 47.693829, 53.157051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.963696, 47.003155, 53.032791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.583412, 47.078094, 53.131630>,  <47.355244, 47.123058, 53.190933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.583412, 47.078094, 53.131630>,  <47.963696, 47.003155, 53.032791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583412, 47.078094, 53.131630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309681, -0.532423, -0.787796,
		-0.016032, -0.825485, 0.564197,
		-0.950705, 0.187351, 0.247101,
		47.298199, 47.134300, 53.205761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687572, 46.368099, 53.068340>,  <47.963696, 47.003155, 53.032791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687572, 46.368099, 53.068340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.378387, 46.620506, 53.041969>,  <47.192879, 46.771950, 53.026146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.378387, 46.620506, 53.041969>,  <47.687572, 46.368099, 53.068340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378387, 46.620506, 53.041969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415004, -0.581461, -0.699768,
		-0.479903, -0.513532, 0.711322,
		-0.772959, 0.631022, -0.065927,
		47.146500, 46.809814, 53.022190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059639, 45.916866, 53.065975>,  <47.687572, 46.368099, 53.068340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059639, 45.916866, 53.065975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.970940, 46.264458, 52.889019>,  <46.917721, 46.473011, 52.782845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.970940, 46.264458, 52.889019>,  <47.059639, 45.916866, 53.065975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970940, 46.264458, 52.889019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480537, -0.492155, -0.725856,
		-0.848476, 0.051627, 0.526710,
		-0.221749, 0.868976, -0.442390,
		46.904415, 46.525150, 52.756302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287861, 45.955303, 53.119202>,  <47.059639, 45.916866, 53.065975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287861, 45.955303, 53.119202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.416870, 46.184402, 52.817757>,  <46.494278, 46.321861, 52.636890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.416870, 46.184402, 52.817757>,  <46.287861, 45.955303, 53.119202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416870, 46.184402, 52.817757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525458, -0.553888, -0.645834,
		-0.787319, 0.604292, 0.122311,
		0.322526, 0.572746, -0.753617,
		46.513626, 46.356228, 52.591671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681728, 46.073704, 52.638573>,  <46.287861, 45.955303, 53.119202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681728, 46.073704, 52.638573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.007706, 46.170113, 52.427753>,  <46.203293, 46.227959, 52.301262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.007706, 46.170113, 52.427753>,  <45.681728, 46.073704, 52.638573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007706, 46.170113, 52.427753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389395, -0.445841, -0.805976,
		-0.429235, 0.862054, -0.269483,
		0.814941, 0.241018, -0.527049,
		46.252190, 46.242416, 52.269638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488750, 46.458996, 52.011051>,  <45.681728, 46.073704, 52.638573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488750, 46.458996, 52.011051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.838524, 46.279846, 51.936455>,  <46.048386, 46.172356, 51.891697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.838524, 46.279846, 51.936455>,  <45.488750, 46.458996, 52.011051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838524, 46.279846, 51.936455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428657, -0.533216, -0.729338,
		0.227214, 0.717695, -0.658246,
		0.874430, -0.447878, -0.186491,
		46.100853, 46.145481, 51.880508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382172, 46.256199, 51.373161>,  <45.488750, 46.458996, 52.011051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382172, 46.256199, 51.373161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.731834, 46.076324, 51.446510>,  <45.941631, 45.968399, 51.490520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.731834, 46.076324, 51.446510>,  <45.382172, 46.256199, 51.373161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731834, 46.076324, 51.446510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109513, -0.550402, -0.827687,
		0.473127, 0.703450, -0.530386,
		0.874161, -0.449685, 0.183373,
		45.994083, 45.941418, 51.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919662, 46.517887, 50.886906>,  <45.382172, 46.256199, 51.373161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919662, 46.517887, 50.886906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.994774, 46.151169, 51.027885>,  <46.039841, 45.931137, 51.112473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.994774, 46.151169, 51.027885>,  <45.919662, 46.517887, 50.886906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994774, 46.151169, 51.027885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040573, -0.365771, -0.929820,
		0.981373, 0.160300, -0.105881,
		0.187779, -0.916796, 0.352454,
		46.051109, 45.876129, 51.133621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553421, 46.186794, 50.566998>,  <45.919662, 46.517887, 50.886906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553421, 46.186794, 50.566998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336479, 45.882301, 50.709198>,  <46.206314, 45.699604, 50.794518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336479, 45.882301, 50.709198>,  <46.553421, 46.186794, 50.566998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336479, 45.882301, 50.709198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099863, -0.361724, -0.926921,
		0.834195, -0.538219, 0.120162,
		-0.542352, -0.761233, 0.355497,
		46.173775, 45.653931, 50.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767689, 45.695469, 50.099327>,  <46.553421, 46.186794, 50.566998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767689, 45.695469, 50.099327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.453445, 45.526947, 50.280579>,  <46.264900, 45.425835, 50.389328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.453445, 45.526947, 50.280579>,  <46.767689, 45.695469, 50.099327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453445, 45.526947, 50.280579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230782, -0.479977, -0.846381,
		0.574074, -0.769497, 0.279844,
		-0.785607, -0.421303, 0.453129,
		46.217762, 45.400555, 50.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815025, 44.996067, 49.905746>,  <46.767689, 45.695469, 50.099327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815025, 44.996067, 49.905746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.439590, 45.060139, 50.027992>,  <46.214329, 45.098583, 50.101337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.439590, 45.060139, 50.027992>,  <46.815025, 44.996067, 49.905746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439590, 45.060139, 50.027992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344935, -0.413282, -0.842745,
		-0.008687, -0.896404, 0.443152,
		-0.938587, 0.160179, 0.305611,
		46.158016, 45.108192, 50.119675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413387, 44.369690, 49.650841>,  <46.815025, 44.996067, 49.905746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413387, 44.369690, 49.650841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.126717, 44.637077, 49.730358>,  <45.954712, 44.797508, 49.778069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.126717, 44.637077, 49.730358>,  <46.413387, 44.369690, 49.650841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126717, 44.637077, 49.730358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454149, -0.231021, -0.860452,
		-0.529261, -0.706950, 0.469153,
		-0.716681, 0.668469, 0.198790,
		45.911713, 44.837620, 49.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733276, 43.975998, 49.633728>,  <46.413387, 44.369690, 49.650841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733276, 43.975998, 49.633728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.689476, 44.369320, 49.575592>,  <45.663197, 44.605312, 49.540710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.689476, 44.369320, 49.575592>,  <45.733276, 43.975998, 49.633728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689476, 44.369320, 49.575592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414634, -0.178072, -0.892395,
		-0.903376, -0.037453, 0.427210,
		-0.109497, 0.983305, -0.145337,
		45.656628, 44.664310, 49.531990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042088, 44.116627, 49.456764>,  <45.733276, 43.975998, 49.633728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042088, 44.116627, 49.456764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.267365, 44.415558, 49.315735>,  <45.402531, 44.594917, 49.231117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.267365, 44.415558, 49.315735>,  <45.042088, 44.116627, 49.456764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267365, 44.415558, 49.315735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314987, -0.200299, -0.927719,
		-0.763933, 0.633543, 0.122592,
		0.563196, 0.747330, -0.352573,
		45.436325, 44.639755, 49.209965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643036, 44.362270, 48.944546>,  <45.042088, 44.116627, 49.456764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643036, 44.362270, 48.944546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.002647, 44.512329, 48.854202>,  <45.218414, 44.602364, 48.799995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.002647, 44.512329, 48.854202>,  <44.643036, 44.362270, 48.944546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002647, 44.512329, 48.854202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187643, -0.135992, -0.972778,
		-0.395649, 0.916936, -0.051867,
		0.899028, 0.375146, -0.225862,
		45.272354, 44.624874, 48.786446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417419, 44.769367, 48.378021>,  <44.643036, 44.362270, 48.944546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417419, 44.769367, 48.378021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.816391, 44.761185, 48.350525>,  <45.055775, 44.756275, 48.334026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.816391, 44.761185, 48.350525>,  <44.417419, 44.769367, 48.378021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816391, 44.761185, 48.350525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068295, 0.021909, -0.997425,
		0.021909, 0.999551, 0.020456,
		0.997425, -0.020456, -0.068744,
		45.115620, 44.755047, 48.329903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592232, 45.312061, 47.888363>,  <44.417419, 44.769367, 48.378021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592232, 45.312061, 47.888363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.891563, 45.048260, 47.916801>,  <45.071163, 44.889977, 47.933865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.891563, 45.048260, 47.916801>,  <44.592232, 45.312061, 47.888363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891563, 45.048260, 47.916801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006087, -0.100345, -0.994934,
		0.663301, 0.744970, -0.071077,
		0.748328, -0.659508, 0.071093,
		45.116062, 44.850407, 47.938129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101696, 45.574558, 47.456844>,  <44.592232, 45.312061, 47.888363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101696, 45.574558, 47.456844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.182068, 45.186836, 47.513508>,  <45.230289, 44.954201, 47.547508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.182068, 45.186836, 47.513508>,  <45.101696, 45.574558, 47.456844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182068, 45.186836, 47.513508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012349, -0.147107, -0.989043,
		0.979528, 0.196979, -0.041529,
		0.200930, -0.969308, 0.141663,
		45.242348, 44.896042, 47.556007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756557, 45.456421, 46.950748>,  <45.101696, 45.574558, 47.456844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756557, 45.456421, 46.950748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.566177, 45.112740, 47.025829>,  <45.451950, 44.906528, 47.070877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.566177, 45.112740, 47.025829>,  <45.756557, 45.456421, 46.950748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566177, 45.112740, 47.025829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022092, -0.225043, -0.974099,
		0.879193, -0.459479, 0.126091,
		-0.475954, -0.859206, 0.187705,
		45.423389, 44.854977, 47.082142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095703, 45.078114, 46.513302>,  <45.756557, 45.456421, 46.950748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095703, 45.078114, 46.513302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.767982, 44.866058, 46.600666>,  <45.571350, 44.738823, 46.653084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.767982, 44.866058, 46.600666>,  <46.095703, 45.078114, 46.513302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767982, 44.866058, 46.600666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090973, -0.255905, -0.962412,
		0.566105, -0.808371, 0.161434,
		-0.819298, -0.530141, 0.218409,
		45.522194, 44.707016, 46.666187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164806, 44.375351, 46.206760>,  <46.095703, 45.078114, 46.513302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164806, 44.375351, 46.206760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.770515, 44.424511, 46.252769>,  <45.533939, 44.454006, 46.280373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.770515, 44.424511, 46.252769>,  <46.164806, 44.375351, 46.206760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770515, 44.424511, 46.252769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141554, -0.235480, -0.961515,
		-0.091085, -0.964077, 0.249517,
		-0.985731, 0.122900, 0.115020,
		45.474796, 44.461380, 46.287277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876690, 43.758160, 45.768917>,  <46.164806, 44.375351, 46.206760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876690, 43.758160, 45.768917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573303, 44.011536, 45.830215>,  <45.391273, 44.163563, 45.866993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573303, 44.011536, 45.830215>,  <45.876690, 43.758160, 45.768917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573303, 44.011536, 45.830215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206709, -0.010823, -0.978343,
		-0.618067, -0.773713, 0.139148,
		-0.758463, 0.633444, 0.153244,
		45.345764, 44.201569, 45.876190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.102757, 43.750851, 32.699501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318207, 44.087231, 32.720215>,  <44.447479, 44.289059, 32.732643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318207, 44.087231, 32.720215>,  <44.102757, 43.750851, 32.699501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318207, 44.087231, 32.720215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563510, 0.405255, -0.719878,
		-0.626367, 0.358567, 0.692166,
		0.538628, 0.840951, 0.051782,
		44.479794, 44.339516, 32.735748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655640, 44.282673, 32.630764>,  <44.102757, 43.750851, 32.699501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655640, 44.282673, 32.630764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993004, 44.468803, 32.523342>,  <44.195423, 44.580482, 32.458889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993004, 44.468803, 32.523342>,  <43.655640, 44.282673, 32.630764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993004, 44.468803, 32.523342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468234, 0.391518, -0.792131,
		-0.263458, 0.793840, 0.548095,
		0.843414, 0.465329, -0.268554,
		44.246029, 44.608402, 32.442776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525822, 44.952541, 32.566422>,  <43.655640, 44.282673, 32.630764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525822, 44.952541, 32.566422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856644, 44.885952, 32.351658>,  <44.055138, 44.845997, 32.222801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856644, 44.885952, 32.351658>,  <43.525822, 44.952541, 32.566422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856644, 44.885952, 32.351658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532107, 0.076073, -0.843252,
		0.181226, 0.983107, -0.025668,
		0.827054, -0.166477, -0.536905,
		44.104759, 44.836010, 32.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439991, 45.673710, 32.784184>,  <43.525822, 44.952541, 32.566422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439991, 45.673710, 32.784184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239006, 46.017483, 32.746452>,  <43.118416, 46.223747, 32.723812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239006, 46.017483, 32.746452>,  <43.439991, 45.673710, 32.784184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239006, 46.017483, 32.746452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474037, -0.182602, 0.861363,
		0.723062, 0.477520, 0.499155,
		-0.502465, 0.859437, -0.094329,
		43.088268, 46.275314, 32.718155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382275, 45.923717, 33.367237>,  <43.439991, 45.673710, 32.784184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382275, 45.923717, 33.367237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083435, 46.099907, 33.168106>,  <42.904133, 46.205620, 33.048630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083435, 46.099907, 33.168106>,  <43.382275, 45.923717, 33.367237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083435, 46.099907, 33.168106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552389, 0.005184, 0.833571,
		0.369743, 0.897753, 0.239438,
		-0.747099, 0.440470, -0.497825,
		42.859306, 46.232048, 33.018757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128704, 46.505947, 33.820488>,  <43.382275, 45.923717, 33.367237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128704, 46.505947, 33.820488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821495, 46.427788, 33.576534>,  <42.637169, 46.380890, 33.430161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821495, 46.427788, 33.576534>,  <43.128704, 46.505947, 33.820488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821495, 46.427788, 33.576534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634120, 0.098730, 0.766906,
		-0.089640, 0.975741, -0.199735,
		-0.768021, -0.195401, -0.609887,
		42.591087, 46.369167, 33.393570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576244, 46.960335, 34.030384>,  <43.128704, 46.505947, 33.820488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576244, 46.960335, 34.030384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373894, 46.684113, 33.823608>,  <42.252483, 46.518379, 33.699543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373894, 46.684113, 33.823608>,  <42.576244, 46.960335, 34.030384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373894, 46.684113, 33.823608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728148, 0.020549, 0.685112,
		-0.462484, 0.722989, -0.513221,
		-0.505875, -0.690554, -0.516939,
		42.222130, 46.476948, 33.668526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921051, 47.242764, 33.925827>,  <42.576244, 46.960335, 34.030384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921051, 47.242764, 33.925827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873924, 46.845581, 33.920868>,  <41.845650, 46.607269, 33.917892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873924, 46.845581, 33.920868>,  <41.921051, 47.242764, 33.925827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873924, 46.845581, 33.920868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667005, 0.069882, 0.741769,
		-0.735679, 0.095660, -0.670542,
		-0.117817, -0.992958, -0.012395,
		41.838581, 46.547695, 33.917149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135826, 47.080048, 34.045139>,  <41.921051, 47.242764, 33.925827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135826, 47.080048, 34.045139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334465, 46.741501, 34.122139>,  <41.453648, 46.538372, 34.168339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334465, 46.741501, 34.122139>,  <41.135826, 47.080048, 34.045139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334465, 46.741501, 34.122139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659222, -0.223498, 0.717966,
		-0.564641, -0.483436, -0.668932,
		0.496596, -0.846367, 0.192495,
		41.483444, 46.487591, 34.179886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700409, 46.553402, 34.160473>,  <41.135826, 47.080048, 34.045139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700409, 46.553402, 34.160473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020531, 46.432877, 34.367828>,  <41.212605, 46.360561, 34.492241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020531, 46.432877, 34.367828>,  <40.700409, 46.553402, 34.160473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020531, 46.432877, 34.367828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579384, -0.166038, 0.797964,
		-0.154327, -0.938972, -0.307432,
		0.800311, -0.301269, 0.518401,
		41.260620, 46.342484, 34.523346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423615, 46.124687, 34.626949>,  <40.700409, 46.553402, 34.160473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423615, 46.124687, 34.626949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795479, 46.139381, 34.773582>,  <41.018597, 46.148197, 34.861561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795479, 46.139381, 34.773582>,  <40.423615, 46.124687, 34.626949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795479, 46.139381, 34.773582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355811, -0.168513, 0.919240,
		0.095547, -0.985015, -0.143587,
		0.929661, 0.036740, 0.366580,
		41.074379, 46.150402, 34.883556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468357, 45.592976, 35.211933>,  <40.423615, 46.124687, 34.626949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468357, 45.592976, 35.211933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774246, 45.844879, 35.266476>,  <40.957779, 45.996021, 35.299202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774246, 45.844879, 35.266476>,  <40.468357, 45.592976, 35.211933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774246, 45.844879, 35.266476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028223, -0.178676, 0.983503,
		0.643736, -0.755960, -0.118864,
		0.764727, 0.629762, 0.136355,
		41.003666, 46.033806, 35.307381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939266, 45.318565, 35.778774>,  <40.468357, 45.592976, 35.211933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939266, 45.318565, 35.778774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070549, 45.696239, 35.767548>,  <41.149319, 45.922844, 35.760811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070549, 45.696239, 35.767548>,  <40.939266, 45.318565, 35.778774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070549, 45.696239, 35.767548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014134, 0.024802, 0.999592,
		0.944499, -0.328474, -0.005205,
		0.328211, 0.944187, -0.028068,
		41.169014, 45.979496, 35.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468529, 45.270466, 36.053009>,  <40.939266, 45.318565, 35.778774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468529, 45.270466, 36.053009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355553, 45.649841, 36.110554>,  <41.287766, 45.877464, 36.145081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355553, 45.649841, 36.110554>,  <41.468529, 45.270466, 36.053009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355553, 45.649841, 36.110554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112373, -0.116227, 0.986845,
		0.952680, 0.294891, -0.073751,
		-0.282440, 0.948436, 0.143865,
		41.270821, 45.934372, 36.153713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896034, 45.544594, 36.409889>,  <41.468529, 45.270466, 36.053009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896034, 45.544594, 36.409889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606125, 45.802479, 36.507084>,  <41.432178, 45.957211, 36.565403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606125, 45.802479, 36.507084>,  <41.896034, 45.544594, 36.409889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606125, 45.802479, 36.507084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300725, -0.021289, 0.953473,
		0.619892, 0.764126, -0.178452,
		-0.724775, 0.644715, 0.242989,
		41.388691, 45.995892, 36.579979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215942, 45.887897, 36.865620>,  <41.896034, 45.544594, 36.409889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215942, 45.887897, 36.865620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827621, 45.959980, 36.928963>,  <41.594631, 46.003227, 36.966969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827621, 45.959980, 36.928963>,  <42.215942, 45.887897, 36.865620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827621, 45.959980, 36.928963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131291, -0.153380, 0.979407,
		0.200781, 0.971597, 0.125242,
		-0.970799, 0.180203, 0.158358,
		41.536381, 46.014042, 36.976471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122986, 46.390156, 37.433800>,  <42.215942, 45.887897, 36.865620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122986, 46.390156, 37.433800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792580, 46.165688, 37.412720>,  <41.594334, 46.031006, 37.400070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792580, 46.165688, 37.412720>,  <42.122986, 46.390156, 37.433800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792580, 46.165688, 37.412720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115966, -0.260707, 0.958428,
		-0.551583, 0.785568, 0.280426,
		-0.826019, -0.561173, -0.052703,
		41.544773, 45.997337, 37.396908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881001, 46.472042, 37.986294>,  <42.122986, 46.390156, 37.433800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881001, 46.472042, 37.986294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653885, 46.157280, 37.889637>,  <41.517616, 45.968422, 37.831642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653885, 46.157280, 37.889637>,  <41.881001, 46.472042, 37.986294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653885, 46.157280, 37.889637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031050, -0.272864, 0.961552,
		-0.822589, 0.553461, 0.130495,
		-0.567789, -0.786909, -0.241639,
		41.483547, 45.921207, 37.817146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416988, 46.421001, 38.517849>,  <41.881001, 46.472042, 37.986294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416988, 46.421001, 38.517849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412575, 46.064812, 38.335888>,  <41.409927, 45.851097, 38.226711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412575, 46.064812, 38.335888>,  <41.416988, 46.421001, 38.517849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412575, 46.064812, 38.335888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016892, -0.454697, 0.890486,
		-0.999796, 0.017508, -0.010026,
		-0.011032, -0.890474, -0.454900,
		41.409264, 45.797668, 38.199417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844669, 46.100681, 38.888248>,  <41.416988, 46.421001, 38.517849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844669, 46.100681, 38.888248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067307, 45.818607, 38.712559>,  <41.200890, 45.649364, 38.607143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067307, 45.818607, 38.712559>,  <40.844669, 46.100681, 38.888248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067307, 45.818607, 38.712559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038056, -0.506492, 0.861404,
		-0.829915, -0.496165, -0.255072,
		0.556591, -0.705185, -0.439227,
		41.234283, 45.607052, 38.580791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503445, 45.513504, 39.143452>,  <40.844669, 46.100681, 38.888248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503445, 45.513504, 39.143452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861412, 45.391087, 39.013557>,  <41.076191, 45.317635, 38.935619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861412, 45.391087, 39.013557>,  <40.503445, 45.513504, 39.143452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861412, 45.391087, 39.013557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123620, -0.529221, 0.839430,
		-0.428762, -0.791367, -0.435777,
		0.894919, -0.306045, -0.324738,
		41.129887, 45.299274, 38.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499481, 44.771507, 39.183575>,  <40.503445, 45.513504, 39.143452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499481, 44.771507, 39.183575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.870346, 44.921192, 39.190857>,  <41.092865, 45.011002, 39.195229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.870346, 44.921192, 39.190857>,  <40.499481, 44.771507, 39.183575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870346, 44.921192, 39.190857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181021, -0.490004, 0.852717,
		0.328019, -0.787313, -0.522055,
		0.927165, 0.374210, 0.018210,
		41.148495, 45.033455, 39.196320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813980, 44.192993, 39.446075>,  <40.499481, 44.771507, 39.183575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813980, 44.192993, 39.446075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071274, 44.496872, 39.484280>,  <41.225651, 44.679199, 39.507202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071274, 44.496872, 39.484280>,  <40.813980, 44.192993, 39.446075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071274, 44.496872, 39.484280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314815, -0.376117, 0.871451,
		0.697960, -0.530474, -0.481092,
		0.643229, 0.759693, 0.095513,
		41.264244, 44.724781, 39.512932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418999, 43.924046, 39.801884>,  <40.813980, 44.192993, 39.446075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418999, 43.924046, 39.801884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468056, 44.316799, 39.859661>,  <41.497490, 44.552452, 39.894329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468056, 44.316799, 39.859661>,  <41.418999, 43.924046, 39.801884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468056, 44.316799, 39.859661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427189, -0.183600, 0.885325,
		0.895805, -0.046877, -0.441967,
		0.122647, 0.981883, 0.144444,
		41.504848, 44.611362, 39.902996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062691, 44.116966, 40.065353>,  <41.418999, 43.924046, 39.801884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062691, 44.116966, 40.065353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862549, 44.447044, 40.170193>,  <41.742462, 44.645092, 40.233097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862549, 44.447044, 40.170193>,  <42.062691, 44.116966, 40.065353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862549, 44.447044, 40.170193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355680, -0.080091, 0.931170,
		0.789390, 0.559138, -0.253432,
		-0.500355, 0.825197, 0.262097,
		41.712440, 44.694603, 40.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514679, 44.563362, 40.397171>,  <42.062691, 44.116966, 40.065353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514679, 44.563362, 40.397171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157066, 44.691402, 40.522549>,  <41.942501, 44.768227, 40.597775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157066, 44.691402, 40.522549>,  <42.514679, 44.563362, 40.397171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157066, 44.691402, 40.522549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352423, 0.070515, 0.933181,
		0.276608, 0.944756, -0.175852,
		-0.894028, 0.320100, 0.313448,
		41.888859, 44.787434, 40.616585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699394, 45.119850, 40.963978>,  <42.514679, 44.563362, 40.397171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699394, 45.119850, 40.963978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314171, 45.031559, 41.025688>,  <42.083038, 44.978584, 41.062714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314171, 45.031559, 41.025688>,  <42.699394, 45.119850, 40.963978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314171, 45.031559, 41.025688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123040, 0.148949, 0.981160,
		-0.239547, 0.963895, -0.116288,
		-0.963057, -0.220726, 0.154278,
		42.025253, 44.965340, 41.071972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402908, 45.600098, 41.406979>,  <42.699394, 45.119850, 40.963978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402908, 45.600098, 41.406979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154007, 45.291836, 41.461964>,  <42.004665, 45.106880, 41.494957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154007, 45.291836, 41.461964>,  <42.402908, 45.600098, 41.406979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154007, 45.291836, 41.461964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201382, 0.012107, 0.979438,
		-0.756473, 0.637138, 0.147662,
		-0.622249, -0.770655, 0.137467,
		41.967331, 45.060638, 41.503204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881195, 45.817734, 41.904018>,  <42.402908, 45.600098, 41.406979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881195, 45.817734, 41.904018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934471, 45.421307, 41.901199>,  <41.966438, 45.183453, 41.899509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934471, 45.421307, 41.901199>,  <41.881195, 45.817734, 41.904018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934471, 45.421307, 41.901199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067436, 0.001969, 0.997722,
		-0.988793, -0.133363, 0.067096,
		0.133191, -0.991065, -0.007046,
		41.974430, 45.123985, 41.899086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548923, 45.639549, 42.552422>,  <41.881195, 45.817734, 41.904018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548923, 45.639549, 42.552422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758804, 45.314049, 42.452423>,  <41.884731, 45.118748, 42.392426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758804, 45.314049, 42.452423>,  <41.548923, 45.639549, 42.552422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758804, 45.314049, 42.452423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283514, -0.109857, 0.952655,
		-0.802688, -0.570737, 0.173068,
		0.524702, -0.813751, -0.249993,
		41.916214, 45.069923, 42.377426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284504, 45.091114, 42.937477>,  <41.548923, 45.639549, 42.552422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284504, 45.091114, 42.937477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668419, 45.015125, 42.854801>,  <41.898769, 44.969532, 42.805195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668419, 45.015125, 42.854801>,  <41.284504, 45.091114, 42.937477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668419, 45.015125, 42.854801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185988, -0.121183, 0.975050,
		-0.210279, -0.974282, -0.080978,
		0.959787, -0.189972, -0.206687,
		41.956356, 44.958134, 42.792793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421135, 44.613098, 43.390450>,  <41.284504, 45.091114, 42.937477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421135, 44.613098, 43.390450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804024, 44.692406, 43.306156>,  <42.033756, 44.739990, 43.255581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804024, 44.692406, 43.306156>,  <41.421135, 44.613098, 43.390450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804024, 44.692406, 43.306156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225477, -0.054723, 0.972710,
		0.181323, -0.978620, -0.097086,
		0.957226, 0.198265, -0.210734,
		42.091190, 44.751884, 43.242935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.854641, 43.957767, 43.756607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124771, 44.237339, 43.662430>,  <42.286850, 44.405083, 43.605923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124771, 44.237339, 43.662430>,  <41.854641, 43.957767, 43.756607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124771, 44.237339, 43.662430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320326, 0.009591, 0.947259,
		0.664320, -0.715131, -0.217407,
		0.675329, 0.698924, -0.235447,
		42.327370, 44.447018, 43.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527775, 43.732098, 43.855221>,  <41.854641, 43.957767, 43.756607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527775, 43.732098, 43.855221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531303, 44.130783, 43.887444>,  <42.533421, 44.369995, 43.906776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531303, 44.130783, 43.887444>,  <42.527775, 43.732098, 43.855221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531303, 44.130783, 43.887444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365741, -0.078191, 0.927426,
		0.930675, 0.021281, -0.365228,
		0.008821, 0.996712, 0.080554,
		42.533951, 44.429798, 43.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211483, 43.907421, 44.131077>,  <42.527775, 43.732098, 43.855221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211483, 43.907421, 44.131077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952103, 44.206924, 44.186035>,  <42.796474, 44.386627, 44.219009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952103, 44.206924, 44.186035>,  <43.211483, 43.907421, 44.131077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952103, 44.206924, 44.186035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333288, 0.116966, 0.935542,
		0.684424, 0.652442, -0.325399,
		-0.648447, 0.748758, 0.137397,
		42.757568, 44.431553, 44.227253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938648, 44.187382, 44.221409>,  <43.211483, 43.907421, 44.131077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938648, 44.187382, 44.221409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330490, 44.258675, 44.258507>,  <44.565598, 44.301449, 44.280766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330490, 44.258675, 44.258507>,  <43.938648, 44.187382, 44.221409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330490, 44.258675, 44.258507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060166, 0.180197, -0.981789,
		-0.191698, 0.967348, 0.165798,
		0.979608, 0.178232, 0.092745,
		44.624374, 44.312145, 44.286331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063427, 44.901161, 44.003765>,  <43.938648, 44.187382, 44.221409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063427, 44.901161, 44.003765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387840, 44.671185, 43.960571>,  <44.582489, 44.533199, 43.934654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387840, 44.671185, 43.960571>,  <44.063427, 44.901161, 44.003765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387840, 44.671185, 43.960571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070884, 0.279822, -0.957432,
		0.580684, 0.768858, 0.267700,
		0.811037, -0.574941, -0.107988,
		44.631153, 44.498703, 43.928173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490673, 45.320763, 43.553272>,  <44.063427, 44.901161, 44.003765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490673, 45.320763, 43.553272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640427, 44.951946, 43.513916>,  <44.730278, 44.730656, 43.490303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640427, 44.951946, 43.513916>,  <44.490673, 45.320763, 43.553272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640427, 44.951946, 43.513916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071045, 0.134316, -0.988388,
		0.924550, 0.363043, 0.115792,
		0.374380, -0.922041, -0.098389,
		44.752739, 44.675335, 43.484398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990314, 45.492645, 43.203686>,  <44.490673, 45.320763, 43.553272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990314, 45.492645, 43.203686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934647, 45.099468, 43.155590>,  <44.901245, 44.863564, 43.126732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934647, 45.099468, 43.155590>,  <44.990314, 45.492645, 43.203686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934647, 45.099468, 43.155590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360860, 0.062735, -0.930507,
		0.922178, -0.172889, 0.345974,
		-0.139170, -0.982941, -0.120242,
		44.892895, 44.804585, 43.119518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684624, 45.130733, 42.895252>,  <44.990314, 45.492645, 43.203686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684624, 45.130733, 42.895252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369904, 44.904991, 42.795296>,  <45.181072, 44.769547, 42.735321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369904, 44.904991, 42.795296>,  <45.684624, 45.130733, 42.895252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369904, 44.904991, 42.795296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363113, -0.095859, -0.926801,
		0.499093, -0.819946, 0.280347,
		-0.786801, -0.564357, -0.249890,
		45.133862, 44.735683, 42.720329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983528, 44.607674, 42.519363>,  <45.684624, 45.130733, 42.895252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983528, 44.607674, 42.519363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596703, 44.592247, 42.418728>,  <45.364605, 44.582989, 42.358345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596703, 44.592247, 42.418728>,  <45.983528, 44.607674, 42.519363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596703, 44.592247, 42.418728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253965, -0.211919, -0.943712,
		-0.016916, -0.976526, 0.214736,
		-0.967066, -0.038572, -0.251588,
		45.306583, 44.580677, 42.343250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949551, 43.983219, 42.202507>,  <45.983528, 44.607674, 42.519363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949551, 43.983219, 42.202507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640602, 44.187992, 42.052109>,  <45.455235, 44.310856, 41.961872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640602, 44.187992, 42.052109>,  <45.949551, 43.983219, 42.202507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640602, 44.187992, 42.052109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316171, -0.203540, -0.926611,
		-0.550889, -0.834565, -0.004649,
		-0.772371, 0.511930, -0.375993,
		45.408890, 44.341572, 41.939312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615780, 43.533924, 41.587540>,  <45.949551, 43.983219, 42.202507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615780, 43.533924, 41.587540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441528, 43.891586, 41.546135>,  <45.336979, 44.106182, 41.521290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441528, 43.891586, 41.546135>,  <45.615780, 43.533924, 41.587540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441528, 43.891586, 41.546135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105153, -0.164766, -0.980711,
		-0.893963, -0.416342, 0.165800,
		-0.435629, 0.894154, -0.103515,
		45.310841, 44.159832, 41.515079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068413, 43.480461, 41.037453>,  <45.615780, 43.533924, 41.587540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068413, 43.480461, 41.037453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165726, 43.867752, 41.060627>,  <45.224113, 44.100124, 41.074532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165726, 43.867752, 41.060627>,  <45.068413, 43.480461, 41.037453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165726, 43.867752, 41.060627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136336, 0.093268, -0.986262,
		-0.960325, 0.232044, 0.154695,
		0.243285, 0.968223, 0.057932,
		45.238712, 44.158218, 41.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567249, 43.855766, 40.711136>,  <45.068413, 43.480461, 41.037453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567249, 43.855766, 40.711136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874725, 44.111557, 40.716427>,  <45.059212, 44.265034, 40.719601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874725, 44.111557, 40.716427>,  <44.567249, 43.855766, 40.711136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874725, 44.111557, 40.716427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137001, 0.184814, -0.973177,
		-0.624774, 0.746262, 0.229675,
		0.768693, 0.639481, 0.013228,
		45.105331, 44.303402, 40.720394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343464, 44.564217, 40.381081>,  <44.567249, 43.855766, 40.711136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343464, 44.564217, 40.381081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739471, 44.532143, 40.334724>,  <44.977077, 44.512897, 40.306911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739471, 44.532143, 40.334724>,  <44.343464, 44.564217, 40.381081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739471, 44.532143, 40.334724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082940, 0.333312, -0.939161,
		0.113936, 0.939400, 0.323335,
		0.990020, -0.080187, -0.115890,
		45.036476, 44.508087, 40.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476486, 45.150249, 39.940201>,  <44.343464, 44.564217, 40.381081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476486, 45.150249, 39.940201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788208, 44.900772, 39.915932>,  <44.975243, 44.751083, 39.901371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788208, 44.900772, 39.915932>,  <44.476486, 45.150249, 39.940201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788208, 44.900772, 39.915932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027049, 0.063257, -0.997631,
		0.626056, 0.779104, 0.032427,
		0.779309, -0.623696, -0.060676,
		45.021999, 44.713665, 39.897728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802773, 45.324066, 39.206261>,  <44.476486, 45.150249, 39.940201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802773, 45.324066, 39.206261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993042, 44.983353, 39.294083>,  <45.107204, 44.778923, 39.346775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993042, 44.983353, 39.294083>,  <44.802773, 45.324066, 39.206261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993042, 44.983353, 39.294083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269803, -0.096283, -0.958090,
		0.837224, 0.514971, 0.184015,
		0.475671, -0.851783, 0.219551,
		45.135742, 44.727818, 39.359947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392834, 45.284313, 38.768269>,  <44.802773, 45.324066, 39.206261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392834, 45.284313, 38.768269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328857, 44.901199, 38.863823>,  <45.290470, 44.671329, 38.921154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328857, 44.901199, 38.863823>,  <45.392834, 45.284313, 38.768269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328857, 44.901199, 38.863823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272148, -0.275407, -0.922001,
		0.948870, -0.082452, 0.304708,
		-0.159939, -0.957785, 0.238886,
		45.280876, 44.613865, 38.935490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828186, 44.973423, 38.294464>,  <45.392834, 45.284313, 38.768269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828186, 44.973423, 38.294464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596436, 44.670273, 38.414429>,  <45.457386, 44.488384, 38.486408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596436, 44.670273, 38.414429>,  <45.828186, 44.973423, 38.294464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596436, 44.670273, 38.414429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001706, -0.366838, -0.930283,
		0.815057, -0.539497, 0.211245,
		-0.579378, -0.757874, 0.299914,
		45.422623, 44.442909, 38.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131744, 44.470730, 37.899689>,  <45.828186, 44.973423, 38.294464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131744, 44.470730, 37.899689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766846, 44.358494, 38.019073>,  <45.547905, 44.291153, 38.090702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766846, 44.358494, 38.019073>,  <46.131744, 44.470730, 37.899689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766846, 44.358494, 38.019073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224867, -0.265998, -0.937379,
		0.342405, -0.922235, 0.179561,
		-0.912246, -0.280586, 0.298460,
		45.493172, 44.274319, 38.108612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065804, 43.696800, 37.765232>,  <46.131744, 44.470730, 37.899689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065804, 43.696800, 37.765232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707397, 43.874386, 37.762428>,  <45.492352, 43.980938, 37.760746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707397, 43.874386, 37.762428>,  <46.065804, 43.696800, 37.765232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707397, 43.874386, 37.762428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205150, -0.427937, -0.880218,
		-0.393777, -0.787256, 0.474518,
		-0.896021, 0.443957, -0.007006,
		45.438591, 44.007576, 37.760326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594051, 43.162582, 37.520561>,  <46.065804, 43.696800, 37.765232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594051, 43.162582, 37.520561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401855, 43.512688, 37.498508>,  <45.286537, 43.722752, 37.485275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401855, 43.512688, 37.498508>,  <45.594051, 43.162582, 37.520561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401855, 43.512688, 37.498508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170810, -0.155061, -0.973026,
		-0.860204, -0.458114, 0.224009,
		-0.480492, 0.875264, -0.055134,
		45.257710, 43.775269, 37.481968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961956, 43.057667, 37.059540>,  <45.594051, 43.162582, 37.520561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961956, 43.057667, 37.059540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985794, 43.456905, 37.065804>,  <45.000099, 43.696449, 37.069561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985794, 43.456905, 37.065804>,  <44.961956, 43.057667, 37.059540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985794, 43.456905, 37.065804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315018, 0.033688, -0.948487,
		-0.947212, 0.051596, 0.316428,
		0.059598, 0.998100, 0.015656,
		45.003674, 43.756336, 37.070499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318699, 43.269730, 36.649273>,  <44.961956, 43.057667, 37.059540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318699, 43.269730, 36.649273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557411, 43.590668, 36.653339>,  <44.700638, 43.783230, 36.655781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557411, 43.590668, 36.653339>,  <44.318699, 43.269730, 36.649273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557411, 43.590668, 36.653339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164108, 0.134449, -0.977237,
		-0.785444, 0.581526, 0.211907,
		0.596780, 0.802341, 0.010169,
		44.736446, 43.831371, 36.656391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055321, 43.768932, 36.117874>,  <44.318699, 43.269730, 36.649273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055321, 43.768932, 36.117874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430969, 43.888962, 36.184807>,  <44.656361, 43.960979, 36.224968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430969, 43.888962, 36.184807>,  <44.055321, 43.768932, 36.117874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430969, 43.888962, 36.184807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071907, 0.304579, -0.949769,
		-0.335966, 0.903984, 0.264461,
		0.939125, 0.300074, 0.167331,
		44.712708, 43.978985, 36.235004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119400, 44.404057, 35.792950>,  <44.055321, 43.768932, 36.117874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119400, 44.404057, 35.792950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486198, 44.247883, 35.825657>,  <44.706276, 44.154179, 35.845280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486198, 44.247883, 35.825657>,  <44.119400, 44.404057, 35.792950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486198, 44.247883, 35.825657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138058, 0.118318, -0.983332,
		0.374251, 0.912997, 0.162399,
		0.916993, -0.390434, 0.081765,
		44.761295, 44.130753, 35.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425926, 44.872330, 35.404942>,  <44.119400, 44.404057, 35.792950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425926, 44.872330, 35.404942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669373, 44.556396, 35.435268>,  <44.815441, 44.366837, 35.453465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669373, 44.556396, 35.435268>,  <44.425926, 44.872330, 35.404942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669373, 44.556396, 35.435268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268610, 0.115180, -0.956338,
		0.746613, 0.602411, 0.282257,
		0.608619, -0.789832, 0.075819,
		44.851959, 44.319447, 35.458015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017509, 45.110870, 35.115284>,  <44.425926, 44.872330, 35.404942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017509, 45.110870, 35.115284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045647, 44.712273, 35.097172>,  <45.062527, 44.473114, 35.086304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045647, 44.712273, 35.097172>,  <45.017509, 45.110870, 35.115284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045647, 44.712273, 35.097172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148304, 0.055339, -0.987392,
		0.986437, 0.062738, 0.151677,
		0.070341, -0.996495, -0.045284,
		45.066750, 44.413322, 35.083588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568558, 45.006359, 34.686829>,  <45.017509, 45.110870, 35.115284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568558, 45.006359, 34.686829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377953, 44.655006, 34.671963>,  <45.263588, 44.444195, 34.663044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377953, 44.655006, 34.671963>,  <45.568558, 45.006359, 34.686829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377953, 44.655006, 34.671963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084932, -0.003914, -0.996379,
		0.875056, -0.477943, 0.076468,
		-0.476512, -0.878382, -0.037167,
		45.235001, 44.391491, 34.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992622, 44.471348, 34.301834>,  <45.568558, 45.006359, 34.686829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992622, 44.471348, 34.301834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611427, 44.351772, 34.282040>,  <45.382710, 44.280025, 34.270164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611427, 44.351772, 34.282040>,  <45.992622, 44.471348, 34.301834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611427, 44.351772, 34.282040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046054, 0.018506, -0.998768,
		0.299488, -0.954093, -0.003869,
		-0.952988, -0.298940, -0.049482,
		45.325531, 44.262089, 34.267197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045853, 44.071758, 33.618328>,  <45.992622, 44.471348, 34.301834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045853, 44.071758, 33.618328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659615, 44.130177, 33.704388>,  <45.427872, 44.165230, 33.756023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659615, 44.130177, 33.704388>,  <46.045853, 44.071758, 33.618328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659615, 44.130177, 33.704388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202716, 0.095397, -0.974580,
		-0.162861, -0.984667, -0.062508,
		-0.965600, 0.146049, 0.215144,
		45.369934, 44.173992, 33.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562950, 43.579678, 33.084724>,  <46.045853, 44.071758, 33.618328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562950, 43.579678, 33.084724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336647, 43.883202, 33.213791>,  <45.200863, 44.065315, 33.291233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336647, 43.883202, 33.213791>,  <45.562950, 43.579678, 33.084724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336647, 43.883202, 33.213791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319118, 0.159332, -0.934225,
		-0.760315, -0.631518, 0.152007,
		-0.565761, 0.758814, 0.322671,
		45.166920, 44.110847, 33.310593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949009, 43.523384, 32.752697>,  <45.562950, 43.579678, 33.084724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949009, 43.523384, 32.752697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878738, 43.901836, 32.861496>,  <44.836578, 44.128906, 32.926777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878738, 43.901836, 32.861496>,  <44.949009, 43.523384, 32.752697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878738, 43.901836, 32.861496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620597, 0.108044, -0.776650,
		-0.764197, -0.305239, 0.568183,
		-0.175675, 0.946127, 0.271997,
		44.826035, 44.185673, 32.943096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.328117, 43.391861, 45.476570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.218346, 43.776501, 45.478245>,  <45.152481, 44.007282, 45.479248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.218346, 43.776501, 45.478245>,  <45.328117, 43.391861, 45.476570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218346, 43.776501, 45.478245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338347, -0.092488, -0.936466,
		-0.900116, -0.258411, 0.350735,
		-0.274432, 0.961598, 0.004183,
		45.136017, 44.064980, 45.479500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665585, 43.377613, 45.081261>,  <45.328117, 43.391861, 45.476570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665585, 43.377613, 45.081261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.794853, 43.755913, 45.094658>,  <44.872414, 43.982891, 45.102695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.794853, 43.755913, 45.094658>,  <44.665585, 43.377613, 45.081261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794853, 43.755913, 45.094658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383100, 0.163108, -0.909192,
		-0.865327, 0.280998, 0.415028,
		0.323176, 0.945746, 0.033492,
		44.891808, 44.039639, 45.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108555, 43.741741, 44.811363>,  <44.665585, 43.377613, 45.081261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108555, 43.741741, 44.811363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.450058, 43.942013, 44.754196>,  <44.654961, 44.062176, 44.719894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.450058, 43.942013, 44.754196>,  <44.108555, 43.741741, 44.811363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450058, 43.942013, 44.754196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183375, 0.032231, -0.982515,
		-0.487316, 0.865034, 0.119329,
		0.853755, 0.500677, -0.142919,
		44.706184, 44.092216, 44.711319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461464, 44.142700, 44.847706>,  <44.108555, 43.741741, 44.811363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461464, 44.142700, 44.847706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.117699, 44.340923, 44.797367>,  <42.911442, 44.459858, 44.767166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.117699, 44.340923, 44.797367>,  <43.461464, 44.142700, 44.847706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117699, 44.340923, 44.797367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076942, 0.117975, 0.990031,
		0.505465, 0.860525, -0.063259,
		-0.859410, 0.495559, -0.125843,
		42.859875, 44.489590, 44.759613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370663, 44.838314, 45.278484>,  <43.461464, 44.142700, 44.847706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370663, 44.838314, 45.278484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009254, 44.688541, 45.195110>,  <42.792408, 44.598679, 45.145088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009254, 44.688541, 45.195110>,  <43.370663, 44.838314, 45.278484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009254, 44.688541, 45.195110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247813, 0.059714, 0.966966,
		-0.349621, 0.925328, -0.146744,
		-0.903523, -0.374436, -0.208431,
		42.738197, 44.576210, 45.132580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878891, 45.245441, 45.696636>,  <43.370663, 44.838314, 45.278484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878891, 45.245441, 45.696636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660583, 44.929760, 45.584000>,  <42.529598, 44.740353, 45.516418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660583, 44.929760, 45.584000>,  <42.878891, 45.245441, 45.696636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660583, 44.929760, 45.584000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397546, -0.051956, 0.916110,
		-0.737629, 0.611928, -0.285390,
		-0.545766, -0.789205, -0.281594,
		42.496853, 44.692997, 45.499523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196491, 45.289631, 46.040474>,  <42.878891, 45.245441, 45.696636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196491, 45.289631, 46.040474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.187401, 44.901291, 45.945023>,  <42.181946, 44.668289, 45.887753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.187401, 44.901291, 45.945023>,  <42.196491, 45.289631, 46.040474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187401, 44.901291, 45.945023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456521, -0.202273, 0.866414,
		-0.889422, 0.128626, -0.438615,
		-0.022724, -0.970845, -0.238626,
		42.180584, 44.610039, 45.873436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569347, 45.028305, 46.300240>,  <42.196491, 45.289631, 46.040474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569347, 45.028305, 46.300240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799789, 44.705536, 46.248127>,  <41.938057, 44.511875, 46.216858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799789, 44.705536, 46.248127>,  <41.569347, 45.028305, 46.300240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799789, 44.705536, 46.248127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189943, -0.287194, 0.938851,
		-0.794997, -0.516135, -0.318724,
		0.576109, -0.806923, -0.130282,
		41.972622, 44.463459, 46.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105114, 44.570671, 46.594151>,  <41.569347, 45.028305, 46.300240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105114, 44.570671, 46.594151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467720, 44.402954, 46.574482>,  <41.685284, 44.302322, 46.562679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467720, 44.402954, 46.574482>,  <41.105114, 44.570671, 46.594151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467720, 44.402954, 46.574482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039174, -0.199526, 0.979109,
		-0.420345, -0.885654, -0.197300,
		0.906518, -0.419292, -0.049175,
		41.739677, 44.277168, 46.559731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009762, 44.040565, 47.024136>,  <41.105114, 44.570671, 46.594151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009762, 44.040565, 47.024136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404045, 44.105400, 47.005798>,  <41.640617, 44.144302, 46.994797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404045, 44.105400, 47.005798>,  <41.009762, 44.040565, 47.024136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404045, 44.105400, 47.005798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039884, 0.039853, 0.998409,
		0.163660, -0.985971, 0.032819,
		0.985710, 0.162091, -0.045846,
		41.699757, 44.154026, 46.992043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326569, 43.475582, 47.471191>,  <41.009762, 44.040565, 47.024136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326569, 43.475582, 47.471191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.597099, 43.765968, 47.421307>,  <41.759418, 43.940201, 47.391376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.597099, 43.765968, 47.421307>,  <41.326569, 43.475582, 47.471191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597099, 43.765968, 47.421307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225620, -0.042995, 0.973266,
		0.701199, -0.686382, -0.192872,
		0.676325, 0.725969, -0.124713,
		41.799995, 43.983761, 47.383892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905006, 43.137943, 47.810165>,  <41.326569, 43.475582, 47.471191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905006, 43.137943, 47.810165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.914909, 43.537392, 47.791668>,  <41.920849, 43.777061, 47.780571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.914909, 43.537392, 47.791668>,  <41.905006, 43.137943, 47.810165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914909, 43.537392, 47.791668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119913, 0.042956, 0.991855,
		0.992476, -0.030096, -0.118684,
		0.024753, 0.998624, -0.046242,
		41.922337, 43.836979, 47.777794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366249, 43.288353, 48.327454>,  <41.905006, 43.137943, 47.810165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366249, 43.288353, 48.327454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.173309, 43.633507, 48.267105>,  <42.057545, 43.840599, 48.230896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.173309, 43.633507, 48.267105>,  <42.366249, 43.288353, 48.327454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173309, 43.633507, 48.267105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043993, 0.195873, 0.979642,
		0.874872, 0.465895, -0.132440,
		-0.482352, 0.862888, -0.150868,
		42.028603, 43.892372, 48.221844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747330, 43.880589, 48.683662>,  <42.366249, 43.288353, 48.327454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747330, 43.880589, 48.683662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.357330, 43.963634, 48.651962>,  <42.123333, 44.013462, 48.632942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.357330, 43.963634, 48.651962>,  <42.747330, 43.880589, 48.683662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357330, 43.963634, 48.651962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009473, 0.395144, 0.918570,
		0.222022, 0.894851, -0.387231,
		-0.974996, 0.207611, -0.079254,
		42.064831, 44.025917, 48.628185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730679, 44.304008, 49.200634>,  <42.747330, 43.880589, 48.683662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730679, 44.304008, 49.200634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340851, 44.302849, 49.111000>,  <42.106956, 44.302155, 49.057220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340851, 44.302849, 49.111000>,  <42.730679, 44.304008, 49.200634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340851, 44.302849, 49.111000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217000, 0.262006, 0.940353,
		0.055988, 0.965062, -0.255970,
		-0.974565, -0.002897, -0.224088,
		42.048481, 44.301979, 49.043774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447216, 44.919830, 49.514160>,  <42.730679, 44.304008, 49.200634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447216, 44.919830, 49.514160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142601, 44.663013, 49.478748>,  <41.959831, 44.508923, 49.457500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142601, 44.663013, 49.478748>,  <42.447216, 44.919830, 49.514160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142601, 44.663013, 49.478748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323397, 0.258056, 0.910396,
		-0.561666, 0.721935, -0.404154,
		-0.761542, -0.642041, -0.088530,
		41.914139, 44.470402, 49.452190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947880, 45.236328, 49.746021>,  <42.447216, 44.919830, 49.514160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947880, 45.236328, 49.746021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.786682, 44.872177, 49.783543>,  <41.689964, 44.653687, 49.806053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.786682, 44.872177, 49.783543>,  <41.947880, 45.236328, 49.746021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786682, 44.872177, 49.783543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416631, 0.273749, 0.866879,
		-0.814869, 0.310270, -0.489614,
		-0.402998, -0.910381, 0.093801,
		41.665783, 44.599064, 49.811684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310280, 45.317680, 50.040470>,  <41.947880, 45.236328, 49.746021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310280, 45.317680, 50.040470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.367386, 44.931282, 50.126690>,  <41.401649, 44.699444, 50.178421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.367386, 44.931282, 50.126690>,  <41.310280, 45.317680, 50.040470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367386, 44.931282, 50.126690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505735, 0.116010, 0.854853,
		-0.850794, -0.231054, -0.471978,
		0.142763, -0.966000, 0.215553,
		41.410213, 44.641483, 50.191357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710732, 45.172935, 50.324181>,  <41.310280, 45.317680, 50.040470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710732, 45.172935, 50.324181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943405, 44.872711, 50.449596>,  <41.083012, 44.692577, 50.524845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943405, 44.872711, 50.449596>,  <40.710732, 45.172935, 50.324181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943405, 44.872711, 50.449596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419755, 0.053190, 0.906078,
		-0.696739, -0.658662, -0.284110,
		0.581687, -0.750556, 0.313536,
		41.117912, 44.647545, 50.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310787, 44.902809, 50.940983>,  <40.710732, 45.172935, 50.324181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310787, 44.902809, 50.940983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680077, 44.753178, 50.976116>,  <40.901649, 44.663399, 50.997196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680077, 44.753178, 50.976116>,  <40.310787, 44.902809, 50.940983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680077, 44.753178, 50.976116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012872, 0.258571, 0.965906,
		-0.384041, -0.890620, 0.243535,
		0.923227, -0.374082, 0.087838,
		40.957047, 44.640953, 51.002468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303436, 44.264488, 51.347237>,  <40.310787, 44.902809, 50.940983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303436, 44.264488, 51.347237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660248, 44.430664, 51.418449>,  <40.874336, 44.530369, 51.461178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660248, 44.430664, 51.418449>,  <40.303436, 44.264488, 51.347237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660248, 44.430664, 51.418449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309333, 0.273962, 0.910636,
		0.329539, -0.867385, 0.372891,
		0.892030, 0.415437, 0.178030,
		40.927856, 44.555294, 51.471859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510181, 43.930042, 52.034637>,  <40.303436, 44.264488, 51.347237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510181, 43.930042, 52.034637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740295, 44.250153, 51.966988>,  <40.878365, 44.442219, 51.926395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740295, 44.250153, 51.966988>,  <40.510181, 43.930042, 52.034637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740295, 44.250153, 51.966988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241343, 0.363638, 0.899734,
		0.781539, -0.476783, 0.402336,
		0.575283, 0.800278, -0.169129,
		40.912880, 44.490234, 51.916248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867458, 43.969063, 52.579891>,  <40.510181, 43.930042, 52.034637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867458, 43.969063, 52.579891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875267, 44.333500, 52.415195>,  <40.879951, 44.552162, 52.316380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875267, 44.333500, 52.415195>,  <40.867458, 43.969063, 52.579891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875267, 44.333500, 52.415195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190983, 0.407631, 0.892951,
		0.981399, 0.061205, 0.181960,
		0.019519, 0.911093, -0.411738,
		40.881123, 44.606827, 52.291676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272572, 44.370190, 53.051491>,  <40.867458, 43.969063, 52.579891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272572, 44.370190, 53.051491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.114143, 44.680630, 52.855209>,  <41.019085, 44.866894, 52.737442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.114143, 44.680630, 52.855209>,  <41.272572, 44.370190, 53.051491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114143, 44.680630, 52.855209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028040, 0.523937, 0.851296,
		0.917791, 0.350934, -0.185755,
		-0.396072, 0.776103, -0.490705,
		40.995323, 44.913460, 52.707996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647633, 45.027031, 53.073265>,  <41.272572, 44.370190, 53.051491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647633, 45.027031, 53.073265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258186, 45.106472, 53.028313>,  <41.024517, 45.154137, 53.001343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258186, 45.106472, 53.028313>,  <41.647633, 45.027031, 53.073265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258186, 45.106472, 53.028313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006537, 0.516541, 0.856237,
		0.228100, 0.832912, -0.504211,
		-0.973616, 0.198604, -0.112378,
		40.966103, 45.166054, 52.994598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633842, 45.522907, 53.585709>,  <41.647633, 45.027031, 53.073265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633842, 45.522907, 53.585709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262344, 45.501804, 53.438934>,  <41.039444, 45.489143, 53.350868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262344, 45.501804, 53.438934>,  <41.633842, 45.522907, 53.585709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262344, 45.501804, 53.438934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339756, 0.517109, 0.785598,
		0.148297, 0.854292, -0.498190,
		-0.928749, -0.052761, -0.366936,
		40.983719, 45.485977, 53.328854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451263, 46.210903, 53.549263>,  <41.633842, 45.522907, 53.585709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451263, 46.210903, 53.549263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117592, 45.990379, 53.543724>,  <40.917389, 45.858063, 53.540401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117592, 45.990379, 53.543724>,  <41.451263, 46.210903, 53.549263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117592, 45.990379, 53.543724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342534, 0.498281, 0.796484,
		-0.432214, 0.669156, -0.604502,
		-0.834183, -0.551314, -0.013845,
		40.867336, 45.824986, 53.539570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821106, 46.656258, 53.603706>,  <41.451263, 46.210903, 53.549263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821106, 46.656258, 53.603706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728920, 46.298805, 53.757751>,  <40.673607, 46.084335, 53.850178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728920, 46.298805, 53.757751>,  <40.821106, 46.656258, 53.603706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728920, 46.298805, 53.757751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386097, 0.447260, 0.806776,
		-0.893205, 0.037242, -0.448105,
		-0.230465, -0.893628, 0.385116,
		40.659779, 46.030716, 53.873287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138805, 46.705597, 53.739372>,  <40.821106, 46.656258, 53.603706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138805, 46.705597, 53.739372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268021, 46.404938, 53.969387>,  <40.345551, 46.224541, 54.107395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268021, 46.404938, 53.969387>,  <40.138805, 46.705597, 53.739372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268021, 46.404938, 53.969387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578339, 0.324163, 0.748627,
		-0.749112, -0.574402, -0.329991,
		0.323041, -0.751652, 0.575033,
		40.364933, 46.179443, 54.141895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507259, 46.401863, 53.789738>,  <40.138805, 46.705597, 53.739372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507259, 46.401863, 53.789738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756493, 46.273842, 54.075211>,  <39.906033, 46.197029, 54.246494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756493, 46.273842, 54.075211>,  <39.507259, 46.401863, 53.789738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756493, 46.273842, 54.075211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713166, 0.142228, 0.686415,
		-0.321194, -0.936663, -0.139632,
		0.623080, -0.320053, 0.713678,
		39.943417, 46.177826, 54.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173546, 45.879784, 54.250328>,  <39.507259, 46.401863, 53.789738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173546, 45.879784, 54.250328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470665, 46.020000, 54.478493>,  <39.648937, 46.104130, 54.615391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470665, 46.020000, 54.478493>,  <39.173546, 45.879784, 54.250328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470665, 46.020000, 54.478493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607963, -0.003665, 0.793957,
		0.280407, -0.936539, 0.210395,
		0.742801, 0.350544, 0.570409,
		39.693504, 46.125164, 54.649616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266762, 45.405891, 54.807781>,  <39.173546, 45.879784, 54.250328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266762, 45.405891, 54.807781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449913, 45.728252, 54.957909>,  <39.559803, 45.921669, 55.047985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449913, 45.728252, 54.957909>,  <39.266762, 45.405891, 54.807781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449913, 45.728252, 54.957909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532254, -0.089638, 0.841826,
		0.712074, -0.585220, 0.387903,
		0.457882, 0.805905, 0.375314,
		39.587276, 45.970024, 55.070503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254932, 45.377884, 55.496635>,  <39.266762, 45.405891, 54.807781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254932, 45.377884, 55.496635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334633, 45.769539, 55.480701>,  <39.382454, 46.004532, 55.471142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334633, 45.769539, 55.480701>,  <39.254932, 45.377884, 55.496635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334633, 45.769539, 55.480701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409386, 0.120103, 0.904422,
		0.890338, -0.163901, 0.424776,
		0.199252, 0.979138, -0.039834,
		39.394409, 46.063282, 55.468750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362404, 45.495129, 56.154797>,  <39.254932, 45.377884, 55.496635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362404, 45.495129, 56.154797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273254, 45.843288, 55.979195>,  <39.219765, 46.052185, 55.873833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273254, 45.843288, 55.979195>,  <39.362404, 45.495129, 56.154797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273254, 45.843288, 55.979195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551516, 0.258757, 0.793016,
		0.803839, 0.418862, 0.422371,
		-0.222873, 0.870402, -0.439008,
		39.206394, 46.104408, 55.847492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448212, 45.936516, 56.676888>,  <39.362404, 45.495129, 56.154797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448212, 45.936516, 56.676888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196922, 46.098442, 56.411118>,  <39.046150, 46.195599, 56.251656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196922, 46.098442, 56.411118>,  <39.448212, 45.936516, 56.676888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196922, 46.098442, 56.411118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663789, 0.166605, 0.729128,
		0.405860, 0.899092, 0.164049,
		-0.628221, 0.404817, -0.664425,
		39.008457, 46.219887, 56.211788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
